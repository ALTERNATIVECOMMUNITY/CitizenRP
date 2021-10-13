ESX = nil
TriggerEvent(Config.Callbacks["esx:getSharedObject"] or "esx:getSharedObject", function(obj) ESX = obj end)

local dbg = rdebug()
dbg.setupPrefix(GetCurrentResourceName())

--Edited version of original cron https://github.com/ESX-Org/cron/
local Jobs = {}
local LastTime = nil
local timeShowed = false

function runAt(h, m, cb)
    dbg.info('Register job at %s:%s', h, m)
    table.insert(Jobs, {
        h = h,
        m = m,
        cb = cb
    })
end

function removeJobs()
    Jobs = {}
end

function GetTime()

    local timestamp = os.time()
    local d = os.date('*t', timestamp).wday
    local h = tonumber(os.date('%H', timestamp))
    local m = tonumber(os.date('%M', timestamp))
    if timeShowed == false then
        dbg.info(string.format('Current time %sd %sh %sm ', d, h, m))
        timeShowed = true
    end
    return { d = d, h = h, m = m }

end

function OnTime(d, h, m)

    for i = 1, #Jobs, 1 do
        if Jobs[i].h == h and Jobs[i].m == m then
            Jobs[i].cb(d, h, m)
        end
    end

end

function Tick()

    local time = GetTime()

    if time.h ~= LastTime.h or time.m ~= LastTime.m then
        OnTime(time.d, time.h, time.m)
        LastTime = time
    end

    SetTimeout(60000, Tick)
end

LastTime = GetTime()

Tick()

--Send discord notification
local function sendDiscordNotification(name, message, color, footer)
    footer = footer or "rcore_billing:discord"
    color = color or SConfig.DiscordColors.Grey
    local embeds = {
        {
            ["title"] = name,
            ["description"] = message,
            ["type"] = "rich",
            ["color"] = color,
            ["footer"] = {
                ["text"] = footer,
            },
        }
    }

    PerformHttpRequest(SConfig.DiscordWebhook, function(err, text, headers)
    end, 'POST', json.encode({ username = name, embeds = embeds }), { ['Content-Type'] = 'application/json' })
end

--Send custom webhook discord notification
local function sendCustomDiscordNotification(webhook, name, message, color, footer)
    footer = footer or "rcore_billing:discord"
    color = color or SConfig.DiscordColors.Grey
    local embeds = {
        {
            ["title"] = name,
            ["description"] = message,
            ["type"] = "rich",
            ["color"] = color,
            ["footer"] = {
                ["text"] = footer,
            },
        }
    }

    PerformHttpRequest(webhook, function(err, text, headers)
    end, 'POST', json.encode({ username = name, embeds = embeds }), { ['Content-Type'] = 'application/json' })
end

function foundDiscordIdentifier(source)
    local identifier = GetPlayerIdentifiers(source)
    local discordId
    for _, id in ipairs(GetPlayerIdentifiers(source)) do
        if string.match(id, "discord:") then
            discordId = string.gsub(id, "discord:", "")
        end
    end
    return discordId
end

local activePlayers = {}
local invoiceHistory = {}

function isOnline(identifier)
    for i, v in pairs(activePlayers) do
        if v.getIdentifier() == identifier then
            return v
        end
    end
    return false
end

AddEventHandler(Config.Callbacks['esx:playerLoaded'], function(source)
    activePlayers[source] = ESX.GetPlayerFromId(source)
end)

AddEventHandler(Config.Callbacks['esx:playerDropped'], function(source)
    activePlayers[source] = nil
end)

RegisterServerEvent(Config.Callbacks['sendBill'])
AddEventHandler(Config.Callbacks['sendBill'], function(playerId, sharedAccountName, label, amount)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xTarget = ESX.GetPlayerFromId(playerId)

    if label == nil then
        print('^1[rcore_billing] invalid arguments, skipping!')
        return
    end

    if amount == nil then
        print('^1[rcore_billing] nil amount value, skipping!')
        return
    end
    amount = ESX.Math.Round(amount)

    if xPlayer == nil or xTarget == nil then
        print('^1[rcore_billing] xPlayer or xTarget is null - not valid request, skipping!')
        return
    end

    if amount > 0 and xTarget and xPlayer then
        if invoiceHistory[xPlayer.source] == nil then
            invoiceHistory[xPlayer.source] = {}
        end

        local spamInvoices = {}
        for _, inv in pairs(invoiceHistory[xPlayer.source]) do
            if (GetGameTimer() - inv.time) < SConfig.SpamDetect then
                table.insert(spamInvoices, inv)
            end
        end

        local xPlayerDiscord = foundDiscordIdentifier(xPlayer.source)
        local xTargetDiscord = foundDiscordIdentifier(xTarget.source)

        local xPlayerName = GetPlayerName(xPlayer.source)
        local xTargetName = GetPlayerName(xTarget.source)
        if xPlayerDiscord then
            xPlayerName = string.format('<@%s> [%s]', xPlayerDiscord, GetPlayerName(xPlayer.source))
        end
        if xTargetDiscord then
            xTargetName = string.format('<@%s> [%s]', xTargetDiscord, GetPlayerName(xTarget.source))
        end

        if not emptyTable(spamInvoices) then
            TriggerClientEvent('esx:showNotification', xPlayer.source, 'Spam invoice detection! Please wait until you create new invoice!')
            dbg.critical('Find %s spam invoices! Skipping next creating!', tableLength(spamInvoices))
            if SConfig.SendSpamNotification then
                local msg = string.format('\n\n**Sender**:\n\n %s (ID: %s) (Identifier: %s) just try to create invoice in short time\n\n**Invoice:**\n\n**Label**: %s\n**Amount**:%s\n\n**Target**:\n\n %s (ID: %s) (Identifier: %s)',
                        xPlayerName, xPlayer.source, xPlayer.identifier, label, amount, xTargetName, xTarget.source, xTarget.identifier)
                sendDiscordNotification('Spam detection', msg, SConfig.DiscordColors['Red'])
            end
            if SConfig.DeleteSpammedInvoices then
                for _, spam in pairs(spamInvoices) do
                    deleteSpamInvoice(spam)
                end
            end
            return
        end

        table.insert(invoiceHistory[xPlayer.source], {
            xPlayer = xPlayer,
            xTarget = xTarget,
            time = GetGameTimer(),
            label = label,
            amount = amount,
            sharedAccountName = sharedAccountName,
        })

        local allowedProperties = {
            ['{PLAYER_NAME}'] = xPlayerName,
            ['{PLAYER_ID}'] = xPlayer.source,
            ['{PLAYER_IDENTIFIER}'] = xPlayer.identifier,
            ['{TARGET_NAME}'] = xTargetName,
            ['{TARGET_ID}'] = xTarget.source,
            ['{TARGET_IDENTIFIER}'] = xTarget.identifier,
            ['{DESCRIPTION}'] = label,
            ['{PRICE}'] = amount,
        }

        if SConfig.JobSending then
            local jobWebhook = SConfig.JobWebhooks[xPlayer.job.name]
            if jobWebhook then
                local translateString = _U('job_discord_notif')
                for i, v in pairs(allowedProperties) do
                    translateString = string.gsub(translateString, i, v)
                end

                sendCustomDiscordNotification(jobWebhook, xPlayer.job.label, translateString, SConfig.DiscordColors.Blue)
            end
        end

        if SConfig.DiscordSending then
            if SConfig.DiscordSendingLimit > 0 then
                if amount >= SConfig.DiscordSendingLimit then
                    local msg = string.format('**Sender**:\n\n %s (ID: %s) (Identifier: %s) create invoice\n\n**Invoice:**\n\n**Label**: %s\n**Amount**:%s$\n\n**Target**:\n\n %s (ID: %s) (Identifier: %s)',
                            xPlayerName, xPlayer.source, xPlayer.identifier, label, amount, xTargetName, xTarget.source, xTarget.identifier)
                    sendDiscordNotification('Invoice', msg, SConfig.DiscordColors['Blue'])
                end
            else
                local msg = string.format('**Sender**:\n\n %s (ID: %s) (Identifier: %s) create invoice\n\n**Invoice:**\n\n**Label**: %s\n**Amount**:%s$\n\n**Target**:\n\n %s (ID: %s) (Identifier: %s)',
                        xPlayerName, xPlayer.source, xPlayer.identifier, label, amount, xTargetName, xTarget.source, xTarget.identifier)
                sendDiscordNotification('Invoice', msg, SConfig.DiscordColors['Blue'])
            end
        end

        TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], sharedAccountName, function(account)
            if account then
                MySQL.Async.execute('INSERT INTO billing (identifier, sender, target_type, target, label, amount) VALUES (@identifier, @sender, @target_type, @target, @label, @amount)', {
                    ['@identifier'] = xTarget.identifier,
                    ['@sender'] = xPlayer.identifier,
                    ['@target_type'] = 'society',
                    ['@target'] = sharedAccountName,
                    ['@label'] = label,
                    ['@amount'] = amount
                }, function(rowsChanged)
                    if xPlayer.source == xTarget.source then
                        TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_invoice'))
                    else
                        TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_invoice'))
                        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('send_invoice'))
                    end
                end)
            else
                MySQL.Async.execute('INSERT INTO billing (identifier, sender, target_type, target, label, amount) VALUES (@identifier, @sender, @target_type, @target, @label, @amount)', {
                    ['@identifier'] = xTarget.identifier,
                    ['@sender'] = xPlayer.identifier,
                    ['@target_type'] = 'player',
                    ['@target'] = xPlayer.identifier,
                    ['@label'] = label,
                    ['@amount'] = amount
                }, function(rowsChanged)
                    if xPlayer.source == xTarget.source then
                        TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_invoice'))
                    else
                        TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_invoice'))
                        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('send_invoice'))
                    end
                end)
            end
        end)
    end
end)

function deleteSpamInvoice(invoice)
    dbg.info('Trying to delete spam invoice from player %s', invoice.xPlayer.source)
    MySQL.Async.fetchAll('SELECT * FROM `billing` WHERE `sender`=@sender AND `label`=@label AND `amount`=@amount ORDER BY `create_date` DESC LIMIT 1', {
        ['sender'] = invoice.xPlayer.identifier,
        ['label'] = invoice.label,
        ['amount'] = tonumber(invoice.amount)
    }, function(data)
        if data ~= nil then
            for _, v in pairs(data) do
                MySQL.Async.execute('DELETE FROM billing WHERE id=@id LIMIT 1', {
                    ['id'] = v.id
                }, function(state)
                    dbg.info('Successfuly delete spam invoice id %s', v.id)
                end)
            end
        else
            dbg.info('Cannot find spam invoice to delete')
        end
    end)
end

--https://stackoverflow.com/questions/28550413/compare-dates-in-lua
function days_from_civil(y, m, d)
    if m <= 2 then
        y = y - 1
        m = m + 9
    else
        m = m - 3
    end
    local era = math.floor(y / 400)
    local yoe = y - era * 400                                           -- [0, 399]
    local doy = math.modf((153 * m + 2) / 5) + d - 1                          -- [0, 365]
    local doe = yoe * 365 + math.modf(yoe / 4) - math.modf(yoe / 100) + doy -- [0, 146096]
    return era * 146097 + doe - 719468
end

ESX.RegisterServerCallback(Config.Callbacks['getBill'], function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer == nil then
        print('^1[rcore_billing] xPlayer is null - not valid request, skipping!')
        return
    end

    MySQL.Async.fetchAll('SELECT amount, id, label,create_date FROM billing WHERE identifier = @identifier AND paid_date IS NULL', {
        ['@identifier'] = xPlayer.identifier
    }, function(result)
        local output = {}
        if result ~= nil then
            for i, v in pairs(result) do
                local actualTimestamp = tonumber(v.create_date) / 1000
                local diff = os.time() - actualTimestamp
                local diffTable = os.date('*t', diff)
                local currentData = v
                v.diffDays = days_from_civil(diffTable.year, diffTable.month, diffTable.day)
                v.create_date = os.date('%d.%m.%Y %H:%M', actualTimestamp)
                table.insert(output, currentData)
            end
        end
        cb(output)
    end)
end)

ESX.RegisterServerCallback(Config.Callbacks['getTargetBills'], function(source, cb, target)
    local xPlayer = ESX.GetPlayerFromId(target)

    if xPlayer == nil then
        print('^1[rcore_billing] xPlayer is null - not valid request, skipping!')
        return
    end

    if xPlayer then
        MySQL.Async.fetchAll('SELECT amount, id, label FROM billing WHERE identifier = @identifier AND paid_date IS NULL', {
            ['@identifier'] = xPlayer.identifier
        }, function(result)
            cb(result)
        end)
    else
        cb({})
    end
end)

ESX.RegisterServerCallback(Config.Callbacks['payBill'], function(source, cb, billId)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer == nil then
        print('^1[rcore_billing] xPlayer or xTarget is null - not valid request, skipping!')
        return
    end

    MySQL.Async.fetchAll('SELECT sender, target_type, target, amount FROM billing WHERE id = @id AND paid_date IS NULL', {
        ['@id'] = billId
    }, function(result)
        if result[1] then
            local amount = result[1].amount
            local xTarget = ESX.GetPlayerFromIdentifier(result[1].sender)

            if result[1].target_type == 'player' then
                if xTarget then
                    if Config.CanPayCash then
                        if xPlayer.getMoney() >= amount then
                            if Config.DeleteAfterPay then
                                MySQL.Async.execute('DELETE FROM `billing` WHERE `id`=@id LIMIT 1', {
                                    ['@id'] = billId
                                }, function(rowsChanged)
                                    if rowsChanged then
                                        xPlayer.removeMoney(amount)
                                        xTarget.addMoney(amount)

                                        if xPlayer.source == xTarget.source then
                                            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                        else
                                            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                            TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_payment', ESX.Math.GroupDigits(amount)))
                                        end
                                    end

                                    cb()
                                end)
                            else
                                MySQL.Async.execute('UPDATE `billing` SET `paid_date`=NOW() WHERE `id`=@id', {
                                    ['@id'] = billId
                                }, function(rowsChanged)
                                    if rowsChanged == 1 then
                                        xPlayer.removeMoney(amount)
                                        xTarget.addMoney(amount)

                                        if xPlayer.source == xTarget.source then
                                            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                        else
                                            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                            TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_payment', ESX.Math.GroupDigits(amount)))
                                        end
                                    end

                                    cb()
                                end)
                            end
                        elseif xPlayer.getAccount('bank').money >= amount then
                            MySQL.Async.execute('UPDATE `billing` SET `paid_date`=now() WHERE `id`=@id', {
                                ['@id'] = billId
                            }, function(rowsChanged)
                                if rowsChanged == 1 then
                                    xPlayer.removeAccountMoney('bank', amount)
                                    xTarget.addAccountMoney('bank', amount)

                                    if xPlayer.source == xTarget.source then
                                        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                    else
                                        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                        TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_payment', ESX.Math.GroupDigits(amount)))
                                    end
                                end

                                cb()
                            end)
                        else
                            if xPlayer.source == xTarget.source then
                                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('no_money'))
                            else
                                TriggerClientEvent('esx:showNotification', xTarget.source, _U('target_no_money'))
                                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('no_money'))
                            end
                            cb()
                        end
                    else
                        if xPlayer.getAccount('bank').money >= amount then
                            MySQL.Async.execute('UPDATE `billing` SET `paid_date`=now() WHERE `id`=@id', {
                                ['@id'] = billId
                            }, function(rowsChanged)
                                if rowsChanged == 1 then
                                    xPlayer.removeAccountMoney('bank', amount)
                                    xTarget.addAccountMoney('bank', amount)

                                    if xPlayer.source == xTarget.source then
                                        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                    else
                                        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                        TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_payment', ESX.Math.GroupDigits(amount)))
                                    end
                                end

                                cb()
                            end)
                        else
                            if xPlayer.source == xTarget.source then
                                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('no_money'))
                            else
                                TriggerClientEvent('esx:showNotification', xTarget.source, _U('target_no_money'))
                                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('no_money'))
                            end
                            cb()
                        end
                    end

                else
                    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('player_not_online'))
                    cb()
                end
            else
                TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], result[1].target, function(account)
                    if account == nil then
                        print(string.format('^1[rcore_billing] Cannot find %s shared account!', result[1].target))
                        return
                    end

                    if Config.CanPayCash then
                        if xPlayer.getMoney() >= amount then
                            local sql = 'UPDATE `billing` SET paid_date=now() WHERE id = @id'
                            if Config.DeleteAfterPay then
                                sql = 'DELETE FROM `billing` WHERE id = @id LIMIT 1'
                            end
                            MySQL.Async.execute(sql, {
                                ['@id'] = billId
                            }, function(rowsChanged)
                                if rowsChanged == 1 then
                                    if xTarget then
                                        if Config.PercentForSender[xTarget.job.name] ~= nil then
                                            local onePercent = amount / 100
                                            local targetSociety = Config.PercentForSociety[result[1].target]
                                            if targetSociety ~= nil then
                                                local userAmount = onePercent*tonumber(Config.PercentForSender[xTarget.job.name])
                                                if userAmount < 0 or userAmount > amount then
                                                    dbg.critical('User amount is not valid! Percent for sender has wrong settings! %s', xTarget.job.name)
                                                    return
                                                end

                                                local targetSocietyAmount = onePercent*tonumber(targetSociety.value)
                                                local societyAmount = amount-userAmount-targetSocietyAmount

                                                TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], targetSociety.society, function(targetAccount)
                                                    if account == nil then
                                                        print(string.format('^1[rcore_billing] Cannot find %s shared account!', targetSociety.society))
                                                        return
                                                    end

                                                    targetAccount.addMoney(targetSocietyAmount)
                                                end)

                                                xPlayer.removeMoney(amount)
                                                account.addMoney(societyAmount)

                                                xTarget.addAccountMoney('bank', userAmount)

                                                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                if xTarget and xTarget.source ~= xPlayer.source then
                                                    TriggerClientEvent('esx:showNotification', xTarget.source,
                                                            _U('received_payment_percent', ESX.Math.GroupDigits(amount), ESX.Math.GroupDigits(userAmount)))
                                                end
                                            else
                                                local userAmount = onePercent*tonumber(Config.PercentForSender[xTarget.job.name])
                                                if userAmount < 0 or userAmount > amount then
                                                    dbg.critical('User amount is not valid! Percent for sender has wrong settings! %s', xTarget.job.name)
                                                    return
                                                end

                                                local societyAmount = amount-userAmount

                                                xPlayer.removeMoney(amount)
                                                account.addMoney(societyAmount)

                                                xTarget.addAccountMoney('bank', userAmount)

                                                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                if xTarget and xTarget.source ~= xPlayer.source then
                                                    TriggerClientEvent('esx:showNotification', xTarget.source,
                                                            _U('received_payment_percent', ESX.Math.GroupDigits(amount), ESX.Math.GroupDigits(userAmount)))
                                                end
                                            end
                                        else
                                            xPlayer.removeMoney(amount)
                                            account.addMoney(amount)

                                            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                            if xTarget and xTarget.source ~= xPlayer.source then
                                                TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_payment', ESX.Math.GroupDigits(amount)))
                                            end
                                        end
                                    else
                                        getUserByIdentifier(result[1].sender, function(users)
                                            if users[1] ~= nil then
                                                local player = users[1]
                                                if Config.PercentForSender[player.job] ~= nil then
                                                    local onePercent = amount / 100
                                                    local targetSociety = Config.PercentForSociety[result[1].target]
                                                    if targetSociety ~= nil then
                                                        local userAmount = onePercent*tonumber(Config.PercentForSender[player.job])
                                                        if userAmount < 0 or userAmount > amount then
                                                            dbg.critical('User amount is not valid! Percent for sender has wrong settings! %s', player.job)
                                                            return
                                                        end

                                                        local targetSocietyAmount = onePercent*tonumber(targetSociety.value)
                                                        local societyAmount = amount-userAmount-targetSocietyAmount

                                                        TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], targetSociety.society, function(targetAccount)
                                                            if account == nil then
                                                                print(string.format('^1[rcore_billing] Cannot find %s shared account!', targetSociety.society))
                                                                return
                                                            end

                                                            targetAccount.addMoney(targetSocietyAmount)
                                                        end)

                                                        xPlayer.removeMoney(amount)
                                                        account.addMoney(societyAmount)

                                                        local accounts = nil
                                                        local playerMoney = nil
                                                        if Config.UseEXM then
                                                            accounts = json.decode(player.accounts)
                                                            playerMoney = accounts.bank
                                                        end

                                                        if Config.OldESX then
                                                            playerMoney = player.bank
                                                        else
                                                            playerMoney = player.money
                                                        end

                                                        if playerMoney == nil then
                                                            dbg.critical('Cannot get player money!')
                                                            return
                                                        end

                                                        updatePlayerBank(player.identifier, playerMoney+userAmount, accounts)

                                                        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                        if xTarget and xTarget.source ~= xPlayer.source then
                                                            TriggerClientEvent('esx:showNotification', xTarget.source,
                                                                    _U('received_payment_percent', ESX.Math.GroupDigits(amount), ESX.Math.GroupDigits(userAmount)))
                                                        end
                                                    else
                                                        local userAmount = onePercent*tonumber(Config.PercentForSender[player.job])
                                                        if userAmount < 0 or userAmount > amount then
                                                            dbg.critical('User amount is not valid! Percent for sender has wrong settings! %s', player.job)
                                                            return
                                                        end

                                                        local societyAmount = amount-userAmount

                                                        xPlayer.removeMoney(amount)
                                                        account.addMoney(societyAmount)

                                                        local accounts = nil
                                                        local playerMoney = nil
                                                        if Config.UseEXM then
                                                            accounts = json.decode(player.accounts)
                                                            playerMoney = accounts.bank
                                                        end

                                                        if Config.OldESX then
                                                            playerMoney = player.bank
                                                        else
                                                            playerMoney = player.money
                                                        end

                                                        if playerMoney == nil then
                                                            dbg.critical('Cannot get player money!')
                                                            return
                                                        end

                                                        updatePlayerBank(player.identifier, playerMoney+userAmount, accounts)

                                                        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                    end
                                                else
                                                    xPlayer.removeMoney(amount)
                                                    account.addMoney(amount)

                                                    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                end
                                            else
                                                dbg.critical('Cannot find user by identifier %s', result[1].sender)
                                            end
                                        end)
                                    end
                                else

                                end

                                cb()
                            end)
                        elseif xPlayer.getAccount('bank').money >= amount then
                            local sql = 'UPDATE `billing` SET paid_date=now() WHERE id = @id'
                            if Config.DeleteAfterPay then
                                sql = 'DELETE FROM `billing` WHERE id = @id LIMIT 1'
                            end
                            MySQL.Async.execute(sql, {
                                ['@id'] = billId
                            }, function(rowsChanged)
                                if rowsChanged == 1 then
                                    if xTarget then
                                        if Config.PercentForSender[xTarget.job.name] ~= nil then
                                            local onePercent = amount / 100
                                            local targetSociety = Config.PercentForSociety[result[1].target]
                                            if targetSociety ~= nil then
                                                local userAmount = onePercent*tonumber(Config.PercentForSender[xTarget.job.name])
                                                if userAmount < 0 or userAmount > amount then
                                                    dbg.critical('User amount is not valid! Percent for sender has wrong settings! %s', xTarget.job.name)
                                                    return
                                                end

                                                local targetSocietyAmount = onePercent*tonumber(targetSociety.value)
                                                local societyAmount = amount-userAmount-targetSocietyAmount

                                                TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], targetSociety.society, function(targetAccount)
                                                    if account == nil then
                                                        print(string.format('^1[rcore_billing] Cannot find %s shared account!', targetSociety.society))
                                                        return
                                                    end

                                                    targetAccount.addMoney(targetSocietyAmount)
                                                end)

                                                xPlayer.removeAccountMoney('bank', amount)
                                                account.addMoney(societyAmount)

                                                xTarget.addAccountMoney('bank', userAmount)

                                                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                if xTarget and xTarget.source ~= xPlayer.source then
                                                    TriggerClientEvent('esx:showNotification', xTarget.source,
                                                            _U('received_payment_percent', ESX.Math.GroupDigits(amount), ESX.Math.GroupDigits(userAmount)))
                                                end
                                            else
                                                local userAmount = onePercent*tonumber(Config.PercentForSender[xTarget.job.name])
                                                if userAmount < 0 or userAmount > amount then
                                                    dbg.critical('User amount is not valid! Percent for sender has wrong settings! %s', xTarget.job.name)
                                                    return
                                                end

                                                local societyAmount = amount-userAmount

                                                xPlayer.removeAccountMoney('bank', amount)
                                                account.addMoney(societyAmount)

                                                xTarget.addAccountMoney('bank', userAmount)

                                                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                if xTarget and xTarget.source ~= xPlayer.source then
                                                    TriggerClientEvent('esx:showNotification', xTarget.source,
                                                            _U('received_payment_percent', ESX.Math.GroupDigits(amount), ESX.Math.GroupDigits(userAmount)))
                                                end
                                            end
                                        else
                                            xPlayer.removeAccountMoney('bank', amount)
                                            account.addMoney(amount)

                                            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                            if xTarget and xTarget.source ~= xPlayer.source then
                                                TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_payment', ESX.Math.GroupDigits(amount)))
                                            end
                                        end
                                    else
                                        getUserByIdentifier(result[1].sender, function(users)
                                            if users[1] ~= nil then
                                                local player = users[1]
                                                if Config.PercentForSender[player.job] ~= nil then
                                                    local onePercent = amount / 100
                                                    local targetSociety = Config.PercentForSociety[result[1].target]
                                                    if targetSociety ~= nil then
                                                        local userAmount = onePercent*tonumber(Config.PercentForSender[player.job])
                                                        if userAmount < 0 or userAmount > amount then
                                                            dbg.critical('User amount is not valid! Percent for sender has wrong settings! %s', player.job)
                                                            return
                                                        end

                                                        local targetSocietyAmount = onePercent*tonumber(targetSociety.value)
                                                        local societyAmount = amount-userAmount-targetSocietyAmount

                                                        TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], targetSociety.society, function(targetAccount)
                                                            if account == nil then
                                                                print(string.format('^1[rcore_billing] Cannot find %s shared account!', targetSociety.society))
                                                                return
                                                            end

                                                            targetAccount.addMoney(targetSocietyAmount)
                                                        end)

                                                        xPlayer.removeAccountMoney('bank', amount)
                                                        account.addMoney(societyAmount)

                                                        local accounts = nil
                                                        local playerMoney = nil
                                                        if Config.UseEXM then
                                                            accounts = json.decode(player.accounts)
                                                            playerMoney = accounts.bank
                                                        end

                                                        if Config.OldESX then
                                                            playerMoney = player.bank
                                                        else
                                                            playerMoney = player.money
                                                        end

                                                        if playerMoney == nil then
                                                            dbg.critical('Cannot get player money!')
                                                            return
                                                        end

                                                        updatePlayerBank(player.identifier, playerMoney+userAmount, accounts)

                                                        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                        if xTarget and xTarget.source ~= xPlayer.source then
                                                            TriggerClientEvent('esx:showNotification', xTarget.source,
                                                                    _U('received_payment_percent', ESX.Math.GroupDigits(amount), ESX.Math.GroupDigits(userAmount)))
                                                        end
                                                    else
                                                        local userAmount = onePercent*tonumber(Config.PercentForSender[player.job])
                                                        if userAmount < 0 or userAmount > amount then
                                                            dbg.critical('User amount is not valid! Percent for sender has wrong settings! %s', player.job)
                                                            return
                                                        end

                                                        local societyAmount = amount-userAmount

                                                        xPlayer.removeAccountMoney('bank', amount)
                                                        account.addMoney(societyAmount)

                                                        local accounts = nil
                                                        local playerMoney = nil
                                                        if Config.UseEXM then
                                                            accounts = json.decode(player.accounts)
                                                            playerMoney = accounts.bank
                                                        end

                                                        if Config.OldESX then
                                                            playerMoney = player.bank
                                                        else
                                                            playerMoney = player.money
                                                        end

                                                        if playerMoney == nil then
                                                            dbg.critical('Cannot get player money!')
                                                            return
                                                        end

                                                        updatePlayerBank(player.identifier, playerMoney+userAmount, accounts)

                                                        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                    end
                                                else
                                                    xPlayer.removeAccountMoney('bank', amount)
                                                    account.addMoney(amount)

                                                    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                end
                                            else
                                                dbg.critical('Cannot find user by identifier %s', result[1].sender)
                                            end
                                        end)
                                    end
                                else
                                    dbg.critical('Cannot update bill id %s, SQL error', billId)
                                end

                                cb()
                            end)
                        else
                            if xTarget and xTarget.source ~= xPlayer.source then
                                TriggerClientEvent('esx:showNotification', xTarget.source, _U('target_no_money'))
                            end

                            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('no_money'))
                            cb()
                        end
                    else
                        if xPlayer.getAccount('bank').money >= amount then
                            local sql = 'UPDATE `billing` SET paid_date=now() WHERE id = @id'
                            if Config.DeleteAfterPay then
                                sql = 'DELETE FROM `billing` WHERE id = @id LIMIT 1'
                            end
                            MySQL.Async.execute(sql, {
                                ['@id'] = billId
                            }, function(rowsChanged)
                                if rowsChanged == 1 then
                                    if xTarget then
                                        if Config.PercentForSender[xTarget.job.name] ~= nil then
                                            local onePercent = amount / 100
                                            local targetSociety = Config.PercentForSociety[result[1].target]
                                            if targetSociety ~= nil then
                                                local userAmount = onePercent*tonumber(Config.PercentForSender[xTarget.job.name])
                                                if userAmount < 0 or userAmount > amount then
                                                    dbg.critical('User amount is not valid! Percent for sender has wrong settings! %s', xTarget.job.name)
                                                    return
                                                end

                                                local targetSocietyAmount = onePercent*tonumber(targetSociety.value)
                                                local societyAmount = amount-userAmount-targetSocietyAmount

                                                TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], targetSociety.society, function(targetAccount)
                                                    if account == nil then
                                                        print(string.format('^1[rcore_billing] Cannot find %s shared account!', targetSociety.society))
                                                        return
                                                    end

                                                    targetAccount.addMoney(targetSocietyAmount)
                                                end)

                                                xPlayer.removeAccountMoney('bank', amount)
                                                account.addMoney(societyAmount)

                                                xTarget.addAccountMoney('bank', userAmount)

                                                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                if xTarget and xTarget.source ~= xPlayer.source then
                                                    TriggerClientEvent('esx:showNotification', xTarget.source,
                                                            _U('received_payment_percent', ESX.Math.GroupDigits(amount), ESX.Math.GroupDigits(userAmount)))
                                                end
                                            else
                                                local userAmount = onePercent*tonumber(Config.PercentForSender[xTarget.job.name])
                                                if userAmount < 0 or userAmount > amount then
                                                    dbg.critical('User amount is not valid! Percent for sender has wrong settings! %s', xTarget.job.name)
                                                    return
                                                end

                                                local societyAmount = amount-userAmount

                                                xPlayer.removeAccountMoney('bank', amount)
                                                account.addMoney(societyAmount)

                                                xTarget.addAccountMoney('bank', userAmount)

                                                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                if xTarget and xTarget.source ~= xPlayer.source then
                                                    TriggerClientEvent('esx:showNotification', xTarget.source,
                                                            _U('received_payment_percent', ESX.Math.GroupDigits(amount), ESX.Math.GroupDigits(userAmount)))
                                                end
                                            end
                                        else
                                            xPlayer.removeAccountMoney('bank', amount)
                                            account.addMoney(amount)

                                            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                            if xTarget and xTarget.source ~= xPlayer.source then
                                                TriggerClientEvent('esx:showNotification', xTarget.source, _U('received_payment', ESX.Math.GroupDigits(amount)))
                                            end
                                        end
                                    else
                                        getUserByIdentifier(result[1].sender, function(users)
                                            if users[1] ~= nil then
                                                local player = users[1]
                                                if Config.PercentForSender[player.job] ~= nil then
                                                    local onePercent = amount / 100
                                                    local targetSociety = Config.PercentForSociety[result[1].target]
                                                    if targetSociety ~= nil then
                                                        local userAmount = onePercent*tonumber(Config.PercentForSender[player.job])
                                                        if userAmount < 0 or userAmount > amount then
                                                            dbg.critical('User amount is not valid! Percent for sender has wrong settings! %s', player.job)
                                                            return
                                                        end

                                                        local targetSocietyAmount = onePercent*tonumber(targetSociety.value)
                                                        local societyAmount = amount-userAmount-targetSocietyAmount

                                                        TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], targetSociety.society, function(targetAccount)
                                                            if account == nil then
                                                                print(string.format('^1[rcore_billing] Cannot find %s shared account!', targetSociety.society))
                                                                return
                                                            end

                                                            targetAccount.addMoney(targetSocietyAmount)
                                                        end)

                                                        xPlayer.removeAccountMoney('bank', amount)
                                                        account.addMoney(societyAmount)

                                                        local accounts = nil
                                                        local playerMoney = nil
                                                        if Config.UseEXM then
                                                            accounts = json.decode(player.accounts)
                                                            playerMoney = accounts.bank
                                                        end

                                                        if Config.OldESX then
                                                            playerMoney = player.bank
                                                        else
                                                            playerMoney = player.money
                                                        end

                                                        if playerMoney == nil then
                                                            dbg.critical('Cannot get player money!')
                                                            return
                                                        end

                                                        updatePlayerBank(player.identifier, playerMoney+userAmount, accounts)

                                                        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                        if xTarget and xTarget.source ~= xPlayer.source then
                                                            TriggerClientEvent('esx:showNotification', xTarget.source,
                                                                    _U('received_payment_percent', ESX.Math.GroupDigits(amount), ESX.Math.GroupDigits(userAmount)))
                                                        end
                                                    else
                                                        local userAmount = onePercent*tonumber(Config.PercentForSender[player.job])
                                                        if userAmount < 0 or userAmount > amount then
                                                            dbg.critical('User amount is not valid! Percent for sender has wrong settings! %s', player.job)
                                                            return
                                                        end

                                                        local societyAmount = amount-userAmount

                                                        xPlayer.removeAccountMoney('bank', amount)
                                                        account.addMoney(societyAmount)

                                                        local accounts = nil
                                                        local playerMoney = nil
                                                        if Config.UseEXM then
                                                            accounts = json.decode(player.accounts)
                                                            playerMoney = accounts.bank
                                                        end

                                                        if Config.OldESX then
                                                            playerMoney = player.bank
                                                        else
                                                            playerMoney = player.money
                                                        end

                                                        if playerMoney == nil then
                                                            dbg.critical('Cannot get player money!')
                                                            return
                                                        end

                                                        updatePlayerBank(player.identifier, playerMoney+userAmount, accounts)

                                                        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                    end
                                                else
                                                    xPlayer.removeAccountMoney('bank', amount)
                                                    account.addMoney(amount)

                                                    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice', ESX.Math.GroupDigits(amount)))
                                                end
                                            else
                                                dbg.critical('Cannot find user by identifier %s', result[1].sender)
                                            end
                                        end)
                                    end
                                else
                                    dbg.critical('Cannot update bill id %s, SQL error', billId)
                                end

                                cb()
                            end)
                        else
                            if xTarget and xPlayer.source ~= xTarget.source then
                                TriggerClientEvent('esx:showNotification', xTarget.source, _U('target_no_money'))
                            end

                            TriggerClientEvent('esx:showNotification', xPlayer.source, _U('no_money'))
                            cb()
                        end

                    end

                end)
            end
        else
            dbg.critical('Cannot find bill id %s for payment, skipping payment event from player %s', billId, source)
        end
    end)
end)

-- Update amount of invoice
function updateInvoice(id, amount)
    if id == nil or amount == nil then
        dbg.critical('Cannot update invoice, invalid arguments!')
        return
    end

    MySQL.Async.execute('UPDATE billing SET amount=@amount WHERE id=@id', {
        ['@id'] = id,
        ['@amount'] = amount
    }, function(changes)
        if changes == 0 then
            dbg.critical('Updating of %s invoice failed! SQL', id)
        end
    end)
end

--Pay invoice or delete it depends on config
function payInvoice(id)
    if Config.DeleteAfterPay then
        MySQL.Async.execute('DELETE FROM `billing` WHERE `id`=@id LIMIT 1', {
            ['@id'] = id,
        }, function(changes)
            if changes == 0 then
                dbg.info('Paying %s invoice failed! SQL', id)
            end
        end)
    else
        MySQL.Async.execute('UPDATE `billing` SET `paid_date`=now() WHERE `id`=@id', {
            ['@id'] = id,
        }, function(changes)
            if changes == 0 then
                dbg.info('Paying %s invoice failed! SQL', id)
            end
        end)
    end
end

--Update player bank account if he is offline
function updatePlayerBank(identifier, amount, accounts)
    if identifier == nil or amount == nil then
        dbg.info('Cannot update player bank, invalid arguments!')
        return
    end

    if Config.UseEXM then
        if accounts == nil then
            dbg.critical('Cannot update player bank! Accounts has wrong value!')
            return
        end

        accounts.bank = amount

        MySQL.Async.execute('UPDATE `users` SET `accounts`=@accounts WHERE `identifier`=@id LIMIT 1', {
            ['@id'] = identifier,
            ['@accounts'] = json.encode(accounts)
        }, function(changes)
            if changes == 0 then
                dbg.info('Updating player %s bank account failed! SQL', identifier)
            end
        end)
    else
        local query = 'UPDATE `user_accounts` SET `money`=@amount WHERE identifier=@id AND `name`="bank"'
        if Config.OldESX then
            query = 'UPDATE `users` SET `bank`=@amount WHERE identifier=@id'
        end
        MySQL.Async.execute(query, {
            ['@id'] = identifier,
            ['@amount'] = amount
        }, function(changes)
            if changes == 0 then
                dbg.info('Updating player %s bank account failed! SQL', identifier)
            end
        end)
    end
end

function getUserByIdentifier(identifier, cb)
    if Config.UseEXM == false and Config.OldESX == false then
        MySQL.Async.fetchAll('SELECT * FROM `users` as u LEFT JOIN user_accounts as uA WHERE `u.identifier`=@id AND `uA.name`=@bank LIMIT 1', {
            ['@id'] = identifier,
            ['@bank'] = 'bank'
        }, cb)
    else
        MySQL.Async.fetchAll('SELECT * FROM `users` WHERE `identifier`=@id LIMIT 1', {
            ['@id'] = identifier,
        }, cb)
    end
end

--Send payment to society, not implemented players still
function sendPayment(invoice, amount)
    if invoice == nil or amount == nil or tonumber(amount) < 0 then
        dbg.info('Cannot send payment, invalid arguments')
        return
    end

    local xSender = ESX.GetPlayerFromIdentifier(invoice.sender)
    amount = tonumber(amount)

    if invoice.target_type == 'society' then
        local onePercent = amount/100;

        if xSender then
            dbg.debug('Player %s is online, using xSender', invoice.sender)
            if Config.PercentForSender[xSender.job.name] ~= nil then
                dbg.debug('Found percent for sender job %s', xSender.job.name)
                local userAmount = onePercent*tonumber(Config.PercentForSender[xSender.job.name])
                dbg.debug('One percent %s, user amount %s', onePercent, userAmount)
                if userAmount > 0 and userAmount < amount then
                    local targetSociety = Config.PercentForSociety[invoice.target]
                    if targetSociety ~= nil then
                        dbg.debug('Society percent found! %s', invoice.target)
                        local targetSocietyAmount = onePercent*targetSociety.value
                        local societyMoney = amount-userAmount-targetSocietyAmount;
                        TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], invoice.target, function(account)
                            if account == nil then
                                print(string.format('^1[rcore_billing] Cannot find %s shared account!', invoice.target))
                                return
                            end

                            account.addMoney(societyMoney)
                        end)

                        TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], targetSociety.society, function(account)
                            if account == nil then
                                print(string.format('^1[rcore_billing] Cannot find %s shared account!', invoice.target))
                                return
                            end

                            account.addMoney(targetSocietyAmount)
                        end)

                        xSender.addAccountMoney('bank', userAmount)
                        TriggerClientEvent('esx:showNotification', xSender.source, _U('sender_percent', ESX.Math.GroupDigits(userAmount)))
                    else
                        local societyMoney = amount-userAmount;
                        TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], invoice.target, function(account)
                            if account == nil then
                                print(string.format('^1[rcore_billing] Cannot find %s shared account!', invoice.target))
                                return
                            end

                            account.addMoney(societyMoney)
                        end)

                        xSender.addAccountMoney('bank', userAmount)
                        TriggerClientEvent('esx:showNotification', xSender.source, _U('sender_percent', ESX.Math.GroupDigits(userAmount)))
                    end
                else
                    dbg.critical('Wrong percent for sender value! For job %s', xSender.job.name)
                end
            else
                local targetSociety = Config.PercentForSociety[invoice.target]
                if targetSociety ~= nil then
                    local targetSocietyAmount = onePercent*targetSociety.value
                    local societyMoney = amount-targetSocietyAmount;
                    TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], invoice.target, function(account)
                        if account == nil then
                            print(string.format('^1[rcore_billing] Cannot find %s shared account!', invoice.target))
                            return
                        end

                        account.addMoney(societyMoney)
                    end)

                    TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], targetSociety.society, function(account)
                        if account == nil then
                            print(string.format('^1[rcore_billing] Cannot find %s shared account!', invoice.target))
                            return
                        end

                        account.addMoney(targetSocietyAmount)
                    end)
                end
            end
        else
            getUserByIdentifier(invoice.sender, function(rows)
                if rows[1] ~= nil then
                    local player = rows[1]
                    if Config.PercentForSender[player.job] ~= nil then
                        local userAmount = onePercent*tonumber(Config.PercentForSender[player.job])
                        if userAmount > 0 and userAmount < amount then
                            local targetSociety = Config.PercentForSociety[invoice.target]
                            if targetSociety ~= nil then
                                local targetSocietyAmount = onePercent*targetSociety.value
                                local societyMoney = amount-userAmount-targetSocietyAmount;
                                TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], invoice.target, function(account)
                                    if account == nil then
                                        print(string.format('^1[rcore_billing] Cannot find %s shared account!', invoice.target))
                                        return
                                    end

                                    account.addMoney(societyMoney)
                                end)

                                TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], targetSociety.society, function(account)
                                    if account == nil then
                                        print(string.format('^1[rcore_billing] Cannot find %s shared account!', invoice.target))
                                        return
                                    end

                                    account.addMoney(targetSocietyAmount)
                                end)

                                local accounts = nil
                                local playerMoney = nil
                                if Config.UseEXM then
                                    accounts = json.decode(player.accounts)
                                    playerMoney = accounts.bank
                                end

                                if Config.OldESX then
                                    playerMoney = player.bank
                                else
                                    playerMoney = player.money
                                end

                                if playerMoney == nil then
                                    dbg.critical('Cannot get player money!')
                                    return
                                end

                                updatePlayerBank(invoice.sender, playerMoney+userAmount, accounts)
                            else
                                local societyMoney = amount-userAmount;
                                TriggerEvent(Config.Callbacks['esx_addonaccount:getSharedAccount'], invoice.target, function(account)
                                    if account == nil then
                                        print(string.format('^1[rcore_billing] Cannot find %s shared account!', invoice.target))
                                        return
                                    end

                                    account.addMoney(societyMoney)
                                end)

                                local accounts = nil
                                local playerMoney = nil
                                if Config.UseEXM then
                                    accounts = json.decode(player.accounts)
                                    playerMoney = accounts.bank
                                end

                                if Config.OldESX then
                                    playerMoney = player.bank
                                else
                                    playerMoney = player.money
                                end

                                if playerMoney == nil then
                                    dbg.critical('Cannot get player money!')
                                    return
                                end

                                updatePlayerBank(invoice.sender, playerMoney+userAmount, accounts)
                            end
                        else
                            --dbg.critical('Wrong percent for sender value! For job %s', xSender.job.name)
                        end
                    end
                else
                    dbg.critical('Cannot find user by identifier %s', invoice.sender)
                end
            end)
        end
    end
end

--Remove money :)
function removeMoney()
    local actualTime = os.time()
    local secondsDueDate = Config.DueDate * 24 * 60 * 60
    local timeBefore = actualTime - secondsDueDate
    local formattedTime = os.date('%Y-%m-%d %H:%M', timeBefore)

    local query = "SELECT b.id,b.identifier,b.sender,b.target,b.target_type,b.amount,b.create_date,u.money FROM billing as b LEFT JOIN user_accounts as u ON b.identifier = u.identifier WHERE b.paid_date IS NULL AND u.name = 'bank' AND b.create_date < (NOW() - INTERVAL @numberOfDays DAY) ORDER BY b.create_date DESC"
    if Config.OldESX then
        query = "SELECT b.id,b.identifier,b.sender,b.target,b.target_type,b.amount,b.create_date,u.bank FROM billing as b LEFT JOIN users as u ON b.identifier = u.identifier WHERE b.paid_date IS NULL AND b.create_date < (NOW() - INTERVAL @numberOfDays DAY) ORDER BY b.create_date DESC"
    end
    if Config.UseEXM then
        query = "SELECT b.id,b.identifier,b.sender,b.target,b.target_type,b.amount,b.create_date,u.accounts FROM billing as b LEFT JOIN users as u ON b.identifier = u.identifier WHERE b.paid_date IS NULL AND b.create_date < (NOW() - INTERVAL @numberOfDays DAY) ORDER BY b.create_date DESC"
    end
    MySQL.Async.fetchAll(query, {
        ['@time'] = formattedTime,
        ['@numberOfDays'] = Config.DueDate,
    }, function(results)
        local output = {}
        for _, v in pairs(results) do
            if output[v.identifier] == nil then
                output[v.identifier] = {}
            end
            table.insert(output[v.identifier], v)
        end
        if Config.Debug then
            local outputCount = tableLength(output)
            dbg.info('%s after due date', outputCount)
        end

        for identifier, data in pairs(output) do
            Citizen.Wait(1)
            local xPlayer = isOnline(identifier)
            local accounts = nil
            local playerMoney = 0
            if xPlayer then
                playerMoney = xPlayer.getAccount('bank').money
                dbg.info('Player %s is online, getting money from ESX data! Amount %s', identifier, playerMoney)
            else
                for _, b in pairs(data) do
                    if Config.UseEXM then
                        accounts = json.decode(b.accounts)
                        if accounts == nil then
                            dbg.critical('Cannot parse accounts column! Are u have EXM? Stopping payments!')
                            return
                        end

                        playerMoney = accounts.bank
                    else
                        if Config.OldESX then
                            --ESX 1.1
                            playerMoney = b.bank
                        else
                            --ESX 1.2
                            playerMoney = b.money
                        end
                    end
                    break
                end
                dbg.info('Player %s is offline, using bank amount from database! Amount: %s', identifier, playerMoney)
            end

            if playerMoney > 0 then
                dbg.info('Player has plus money at bank - calculating percent value what we can use')
                local allowedAmount = (playerMoney / 100) * Config.BankProcent
                dbg.info('Allowed amount: %s$', allowedAmount)
                if Config.PaymentMode == 'STANDARD' then
                    dbg.info('Using standard payment method')
                    for _, bill in pairs(data) do
                        dbg.info('Using bill ID %s', bill.id)
                        if bill.amount >= allowedAmount then
                            dbg.info('Player allowed amount is lower than bill amount, updating bill')
                            dbg.info('Setting player allowed money to zero and updating player bank money')
                            if xPlayer then
                                xPlayer.removeAccountMoney('bank', allowedAmount)
                                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice_due_date_part', ESX.Math.GroupDigits(bill.amount), ESX.Math.GroupDigits(allowedAmount)))
                            else
                                updatePlayerBank(identifier, math.floor(playerMoney - allowedAmount), accounts)
                            end
                            updateInvoice(bill.id, math.floor(bill.amount - allowedAmount))
                            sendPayment(bill, math.floor(allowedAmount))
                            break
                        else
                            dbg.info('Paying bill id %s', bill.id)
                            if xPlayer then
                                xPlayer.removeAccountMoney('bank', bill.amount)
                                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('paid_invoice_due_date', ESX.Math.GroupDigits(bill.amount)))
                            else
                                updatePlayerBank(identifier, playerMoney - bill.amount, accounts)
                            end
                            payInvoice(bill.id)
                            sendPayment(bill, math.floor(bill.amount))
                        end
                    end
                elseif Config.PaymentMode == 'SPREDOUT' then
                    dbg.info('My author is lazy bitch and this method is not implement, please use STANDARD method :)')
                end
            else
                dbg.info('Player has zero or minus balance! Skipping payment')
            end
        end
        dbg.info('Finish removing money in %s seconds', os.time() - actualTime)
    end)
end

RegisterCommand('duedate', function(source, cb)
    if source == 0 then
        removeMoney()
        print('[rcore_billing] Due date payments start, yeah!')
    else
		if ESX then
			local xPlayer = ESX.GetPlayerFromId(source)
			if xPlayer then
				if xPlayer.getGroup() == 'superadmin' then
					removeMoney()
					print(xPlayer.source, '[rcore_billing] Due date payments start, yeah!')
				end
			end
		end
    end
end)

function cronPayout()
    --Getting all players
    local players = ESX.GetPlayers()

    for i = 1, #players, 1 do
        local xPlayer = ESX.GetPlayerFromId(players[i])
        if xPlayer then
            activePlayers[xPlayer.source] = xPlayer
        end
    end

    if tableLength(Config.PayoutTime) == 0 then
        dbg.critical('You dont have setup correctly payout time!')
        return
    end

    --Running crons
    for i, v in pairs(Config.PayoutTime) do
        if v.d ~= nil then
            if tableLength(v.d) > 0 then
                dbg.info('Will run at %s days %s:%s', table.concat(v.d, ', '), v.h, v.m)
                runAt(v.h, v.m, function(d, h, m)
					dbg.info('Annonymous function for paying bills from cron - ' .. tableLength(v.d))
                    local foundDay = false
                    for _, allowedDay in pairs(v.d) do
                        if allowedDay == d then
                            foundDay = true
                            break
                        end
                    end

                    if foundDay then
                        removeMoney()
                    else
                        dbg.info('Not correct day!')
                    end
                end)
            else
                dbg.info('Will run at %s %s %s', v.d, v.h, v.m)
                runAt(v.h, v.m, function(d, h, m)
					dbg.info('Annonymous function for paying bills from cron - false 1')
                    removeMoney()
                end)
            end
        else
            dbg.info('Will run at %s %s %s', v.d, v.h, v.m)
            runAt(v.h, v.m, function(d, h, m)
				dbg.info('Annonymous function for paying bills from cron - false 2')
                removeMoney()
            end)
        end
    end
end

cronPayout()
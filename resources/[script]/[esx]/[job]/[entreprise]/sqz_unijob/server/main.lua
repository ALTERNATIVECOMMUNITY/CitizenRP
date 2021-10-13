local openedInventories = {}

ESX.RegisterServerCallback('sqz_unijob:CheckOpenInventory', function(playerId, cb, invType)

    if openedInventories[invType] and openedInventories[invType].Opened then
        cb(false)
    else
        cb(true)
    end

end)

RegisterNetEvent('sqz_unijob:InventoryOpenedSuccesfully')
AddEventHandler('sqz_unijob:InventoryOpenedSuccesfully', function(station)

    openedInventories[station] = {
        Opened = true,
        PlayerId = source
    }

end)

RegisterNetEvent('sqz_unijob:InventoryClosedSuccesFully')
AddEventHandler('sqz_unijob:InventoryClosedSuccesFully', function(station)

    if openedInventories[station] then
        openedInventories[station] = nil
    end

end)

RegisterServerEvent('sqz_unijob:requestarrest')
AddEventHandler('sqz_unijob:requestarrest', function(targetid, playerheading, playerCoords,  playerlocation)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    if Config.NeedItemCuffs then
        local cuffs = xPlayer.getInventoryItem(Config.CuffItemName)
        if cuffs.count >= 1 then
            TriggerClientEvent('sqz_unijob:getarrested', targetid, playerheading, playerCoords, playerlocation)
            TriggerClientEvent('sqz_unijob:doarrested', _source)
            xPlayer.removeInventoryItem(Config.CuffItemName, 1)
        else
            TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('no_cuffs'))
        end
    else
        TriggerClientEvent('sqz_unijob:getarrested', targetid, playerheading, playerCoords, playerlocation)
        TriggerClientEvent('sqz_unijob:doarrested', _source)
    end
end)


RegisterServerEvent('sqz_unijob:requestrelease')
AddEventHandler('sqz_unijob:requestrelease', function(targetid, playerheading, playerCoords,  playerlocation)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source

    TriggerClientEvent('sqz_unijob:getuncuffed', targetid, playerheading, playerCoords, playerlocation, source, Config.NeedItemCuffs)
    
end)

RegisterServerEvent("sqz_unijob:doReleasing")
AddEventHandler("sqz_unijob:doReleasing", function(_source)

    TriggerClientEvent('sqz_unijob:douncuffing', _source)

end)

RegisterNetEvent('sqz_unijob:drag')
AddEventHandler('sqz_unijob:drag', function(target)
    TriggerClientEvent('sqz_unijob:drag', target, source)
end)

RegisterNetEvent('sqz_unijob:putInVehicle')
AddEventHandler('sqz_unijob:putInVehicle', function(target)
    TriggerClientEvent('sqz_unijob:putInVehicle', target)
end)

RegisterNetEvent('sqz_unijob:OutVehicle')
AddEventHandler('sqz_unijob:OutVehicle', function(target)
    TriggerClientEvent('sqz_unijob:OutVehicle', target)
end)

RegisterServerEvent('sqz_unijob:revive')
    AddEventHandler('sqz_unijob:revive', function(target)
    TriggerClientEvent(Config.customEvents['esx_ambulancejob:revive'], target)
end)

ESX.RegisterServerCallback('sqz_unijob:buyWeapon', function(source, cb, weaponName, type, componentNum)
    local xPlayer = ESX.GetPlayerFromId(source)
    local authorizedWeapons, selectedWeapon = {}

    if Config.Jobs[xPlayer.job.name].AuthorizedWeapons.shared then
        table.insert(authorizedWeapons, Config.Jobs[xPlayer.job.name].AuthorizedWeapons.shared)
    end

    if Config.Jobs[xPlayer.job.name].AuthorizedWeapons[xPlayer.job.grade_name] then
        table.insert(authorizedWeapons, Config.Jobs[xPlayer.job.name].AuthorizedWeapons[xPlayer.job.grade_name])
    end

    for k,v in ipairs(authorizedWeapons) do
        for i=1, #v, 1 do
            if v[i].weapon == weaponName then
                selectedWeapon = v[i]
                break
            end
        end
    end

    if not selectedWeapon then
        print(('sqz_unijob: %s attempted to buy an invalid weapon.'):format(xPlayer.getIdentifier()))
        cb(false)
    else
        if not Config.Jobs[xPlayer.job.name].SocietyPayments then
            -- Weapon
            if type == 1 then
                if xPlayer.getMoney() >= selectedWeapon.price then
                    xPlayer.removeMoney(selectedWeapon.price)
                    xPlayer.addWeapon(string.upper(weaponName), 100)

                    cb(true)
                else
                    cb(false)
                end

            -- Weapon Component
            elseif type == 2 then
                local price = selectedWeapon.components[componentNum]
                local weaponNum, weapon = ESX.GetWeapon(weaponName)
                local component = weapon.components[componentNum]

                if component then
                    if xPlayer.getMoney() >= price then
                        xPlayer.removeMoney(price)
                        xPlayer.addWeaponComponent(weaponName, component.name)

                        cb(true)
                    else
                        cb(false)
                    end
                else
                    print(('sqz_unijob: %s attempted to buy an invalid weapon component.'):format(xPlayer.getIdentifier()))
                    cb(false)
                end
            end

        else

            TriggerEvent('esx_addonaccount:getSharedAccount', 'society_'..xPlayer.job.name, function(account)
        
                if type == 1 then
                    if account.money >= selectedWeapon.price then
                        account.removeMoney(selectedWeapon.price)
                        xPlayer.addWeapon(string.upper(weaponName), 100)
    
                        cb(true)
                    else
                        cb(false)
                    end
    
                -- Weapon Component
                elseif type == 2 then
                    local price = selectedWeapon.components[componentNum]
                    local weaponNum, weapon = ESX.GetWeapon(weaponName)
                    local component = weapon.components[componentNum]
    
                    if component then
                        if account.money >= price then
                            account.removeMoney(price)
                            xPlayer.addWeaponComponent(weaponName, component.name)
    
                            cb(true)
                        else
                            cb(false)
                        end
                    else
                        print(('sqz_unijob: %s attempted to buy an invalid weapon component.'):format(xPlayer.getIdentifier()))
                        cb(false)
                    end
                end
    
            end)
    
        end
    end
end)
RegisterNetEvent('sqz_unijob:handcuff')
AddEventHandler('sqz_unijob:handcuff', function(target)
    TriggerClientEvent('sqz_unijob:handcuff', target)
end)

ESX.RegisterServerCallback('sqz_unijob:getStockItems', function(source, cb, station)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local vault_station = station..'_society_'..xPlayer.job.name
        MySQL.Async.fetchAll('SELECT * FROM sqz_unijob_inventory WHERE vault = @id AND (type = @type OR type = @type2)',{["@id"] = vault_station, ["@type"] = "item", ["@type2"] = "account"}, function(items)
        cb(items)
    end)
end)

ESX.RegisterServerCallback('sqz_unijob:getPlayerInventory', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local items   = xPlayer.inventory
    local accounts = xPlayer.getAccounts()

    cb({items = items, accounts = accounts})
end)

RegisterNetEvent('sqz_unijob:putStockItems')
AddEventHandler('sqz_unijob:putStockItems', function(itemName, count, itemLabel, station, itemType, item_id)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local vault_station = station..'_society_'..xPlayer.job.name
    local sourceItem = xPlayer.getInventoryItem(itemName)
    local update
    local insert
    if itemType == 'weapon' then
        xPlayer.removeWeapon(itemName, count)
        DiscordWebhook(xPlayer, _U('deposit_to', itemName, count, xPlayer.job.label), 65280, item_id)
        MySQL.Async.execute('INSERT INTO sqz_unijob_inventory (vault, item, count, label, type, item_id) VALUES (@id, @item, @count, @label, @type, @item_id)', {['@id'] = vault_station, ['@item'] = itemName, ['@label'] = itemLabel, ['@count'] = count, ['@type'] = itemType, ['@item_id'] = item_id})
    elseif itemType == 'item' then
        if sourceItem.count >= count and count > 0 then
            xPlayer.removeInventoryItem(itemName, count)
            DiscordWebhook(xPlayer, _U('deposit_to', itemName, count, xPlayer.job.label), 65280, item_id)
            MySQL.Async.fetchAll('SELECT * FROM sqz_unijob_inventory WHERE vault = @id AND type = @type',{["@id"] = vault_station, ["@type"] = itemType}, function(result)
                if result[1] ~= nil then
                    for i=1, #result, 1 do
                        if result[i].item == itemName then
                        count = count + result[i].count
                        update = 1
                    elseif result[i].item ~= itemName then
                        insert = 1
                    end
                end
                if update == 1 then
                    MySQL.Async.execute('UPDATE sqz_unijob_inventory SET count = @count WHERE item = @item AND vault = @id AND type = @type', {['@item'] = itemName, ['@count'] = count, ['@id'] = vault_station, ["@type"] = itemType})
                elseif insert == 1 then
                    MySQL.Async.execute('INSERT INTO sqz_unijob_inventory (vault, item, count, label, type) VALUES (@id, @item, @count, @label, @type)', {['@id'] = vault_station, ['@item'] = itemName, ['@label'] = itemLabel, ['@count'] = count, ['@type'] = itemType})
                end
                else
                    MySQL.Async.execute('INSERT INTO sqz_unijob_inventory (vault, item, count, label, type) VALUES (@id, @item, @count, @label, @type)', {['@id'] = vault_station, ['@item'] = itemName, ['@label'] = itemLabel, ['@count'] = count, ['@type'] = itemType})
                end
            end)

        else
            TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('quantity_invalid'))
        end
    elseif itemType == "account" then

        if xPlayer.getAccount(itemName).money >= count then
            xPlayer.removeAccountMoney(itemName, count)
            DiscordWebhook(xPlayer, _U('deposit_to', itemName, count, xPlayer.job.label), 65280, item_id)
            MySQL.Async.fetchAll('SELECT * FROM sqz_unijob_inventory WHERE vault = @id AND type = @type',{["@id"] = vault_station, ["@type"] = itemType}, function(result)
                if result[1] ~= nil then
                    for i=1, #result, 1 do
                        if result[i].item == itemName then
                            count = count + result[i].count
                            update = 1
                        elseif result[i].item ~= itemName then
                            insert = 1
                        end
                    end

                    if update == 1 then
                        MySQL.Async.execute('UPDATE sqz_unijob_inventory SET count = @count WHERE item = @item AND vault = @id AND type = @type', {['@item'] = itemName, ['@count'] = count, ['@id'] = vault_station, ["@type"] = itemType})
                    elseif insert == 1 then
                        MySQL.Async.execute('INSERT INTO sqz_unijob_inventory (vault, item, count, label, type) VALUES (@id, @item, @count, @label, @type)', {['@id'] = vault_station, ['@item'] = itemName, ['@label'] = itemLabel, ['@count'] = count, ['@type'] = itemType})
                    end
                else
                    MySQL.Async.execute('INSERT INTO sqz_unijob_inventory (vault, item, count, label, type) VALUES (@id, @item, @count, @label, @type)', {['@id'] = vault_station, ['@item'] = itemName, ['@label'] = itemLabel, ['@count'] = count, ['@type'] = itemType})
                end
            end)

        else
            TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('no_more_account_money', itemLabel, count))
        end

    end
end)

RegisterNetEvent('sqz_unijob:getStockItem')
AddEventHandler('sqz_unijob:getStockItem', function(itemName, count, station, itemType, item_id)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local vault_station = station..'_society_'..xPlayer.job.name
    local update
    local delete
    local givecount
    local databaseitem = 'Item: '..itemName..' count: '..count
    local steamid = xPlayer.getIdentifier()
    local oocname = GetPlayerName(_source)
    local jobname = xPlayer.job.name
    local joblabel = xPlayer.job.label
    if itemType == 'weapon' then
            MySQL.Async.fetchAll('SELECT * FROM sqz_unijob_inventory WHERE vault = @id AND item = @item AND count = @count AND item_id = @item_id',{["@id"] = vault_station, ["@item"] = itemName, ["@count"] = count, ["@item_id"] = item_id}, function(result)
        
                if result[1] ~= nil then
                    xPlayer.addWeapon(string.upper(itemName), tonumber(count))
                    local databaseweapon = 'Weapon: '..itemName..' count: '..count..' weapon ID: '..item_id
                        MySQL.Async.execute('INSERT INTO sqz_unijob_log (Steam, Oocname, Target, Time, Type)VALUES (@Steam, @Oocname, @Additional, @Time, @Type) ',
                            {
                                ['@Steam']   = steamid,
                                ['@Oocname']   = oocname,
                                ['@Additional']    = databaseweapon,
                                ['@Time']  = os.date("%Y/%m/%d %X"),
                                ['@Type'] = 'Get Stock Weapon',
                            }
                        )
                    MySQL.Async.execute('DELETE FROM sqz_unijob_inventory WHERE vault = @id AND item = @item AND count = @count AND item_id = @item_id',{['@id'] = vault_station, ['@item'] = itemName, ['@count'] = count, ["@item_id"] = item_id})
                    DiscordWebhook(xPlayer,  _U('took_from', itemName, count, xPlayer.job.label), 255, item_id) 
                end
            end)
    elseif itemType == 'item' then
        if count > 0 then
            MySQL.Async.fetchAll('SELECT * FROM sqz_unijob_inventory WHERE vault = @id AND item = @itemName AND type = @itemType',{["@id"] = vault_station, ["@itemName"] = itemName, ["@itemType"] = itemType}, function(result)
                if result[1] ~= nil then
                    for i=1, #result, 1 do
                        local number = tonumber(result[i].count)
                        local countnumber = tonumber(count)
                        if number ~= countnumber then
                            givecount = result[i].count - count
                            update = 1
                        elseif number == countnumber then
                            delete = 1
                        end
                    end
                end
                TriggerEvent('sqz_unijob:Server:CanPlayerCarryItem', function(canCarryItem)
                    if canCarryItem then
                        if update == 1 then
                            MySQL.Async.execute('UPDATE sqz_unijob_inventory SET count = @count WHERE item = @item AND vault = @id AND type = @type', {['@item'] = itemName, ['@count'] = givecount, ['@id'] = vault_station, ['@type'] = itemType})
                        elseif delete == 1 then
                            MySQL.Async.execute('DELETE FROM sqz_unijob_inventory WHERE vault = @id AND item = @item AND count = @count AND type = @type', {['@id'] = vault_station, ['@item'] = itemName, ['@count'] = count, ['@type'] = itemType})
                        end
                    
                        MySQL.Async.execute('INSERT INTO sqz_unijob_log (Steam, Oocname, Target, Time, Type)VALUES (@Steam, @Oocname, @Additional, @Time, @Type) ',
                            {
                                ['@Steam']   = steamid,
                                ['@Oocname']   = oocname,
                                ['@Additional']    = databaseitem,
                                ['@Time']  = os.date("%Y/%m/%d %X"),
                                ['@Type'] = 'Get Stock Item'
                            }
                        )
                        xPlayer.addInventoryItem(itemName, tonumber(count))
                        DiscordWebhook(xPlayer,  _U('took_from', itemName, count, xPlayer.job.label), 255, item_id)
                    else
                        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('player_cannot_hold'))
                    end
                end, _source, itemName, tonumber(count))

            end)
        else
            TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('quantity_invalid'))
        end

    elseif itemType == "account" then
        xPlayer.addAccountMoney(itemName, count)


        MySQL.Async.fetchAll('SELECT * FROM sqz_unijob_inventory WHERE vault = @id AND item = @itemName AND type = @itemType',{["@id"] = vault_station, ["@itemName"] = itemName, ["@itemType"] = itemType}, function(result)
            if result[1] ~= nil then
                for i=1, #result, 1 do
                    local number = tonumber(result[i].count)
                    local countnumber = tonumber(count)
                    if number ~= countnumber then
                        givecount = result[i].count - count
                        update = 1
                    elseif number == countnumber then
                        delete = 1
                    end
                end
            end

            if update == 1 then
                MySQL.Async.execute('UPDATE sqz_unijob_inventory SET count = @count WHERE item = @item AND vault = @id AND type = @type', {['@item'] = itemName, ['@count'] = givecount, ['@id'] = vault_station, ['@type'] = itemType})
            elseif delete == 1 then
                MySQL.Async.execute('DELETE FROM sqz_unijob_inventory WHERE vault = @id AND item = @item AND count = @count AND type = @type', {['@id'] = vault_station, ['@item'] = itemName, ['@count'] = count, ['@type'] = itemType})
            end
        
            MySQL.Async.execute('INSERT INTO sqz_unijob_log (Steam, Oocname, Target, Time, Type)VALUES (@Steam, @Oocname, @Additional, @Time, @Type) ',
                {
                    ['@Steam']   = steamid,
                    ['@Oocname']   = oocname,
                    ['@Additional']    = databaseitem,
                    ['@Time']  = os.date("%Y/%m/%d %X"),
                    ['@Type'] = 'Get Stock Item'
                }
            )
            DiscordWebhook(xPlayer,  _U('took_from', itemName, count, xPlayer.job.label), 255, item_id)

        end)

    end
end)

ESX.RegisterServerCallback('sqz_unijob:getArmoryWeapons', function(source, cb, station)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local vault_station = station..'_society_'..xPlayer.job.name
        MySQL.Async.fetchAll('SELECT * FROM sqz_unijob_inventory WHERE vault = @id AND type = @type',{["@id"] = vault_station, ["@type"] = "weapon"}, function(weapons)
        cb(weapons)
    end)
end)

RegisterNetEvent('sqz_unijob:confiscatePlayerItem')
AddEventHandler('sqz_unijob:confiscatePlayerItem', function(target, itemType, itemName, amount)
    local _source = source
    local sourceXPlayer = ESX.GetPlayerFromId(_source)
    local targetXPlayer = ESX.GetPlayerFromId(target)

    if itemType == 'item_standard' then
        local targetItem = targetXPlayer.getInventoryItem(itemName)
        local sourceItem = sourceXPlayer.getInventoryItem(itemName)

        if targetItem.count > 0 and targetItem.count <= amount then

            TriggerEvent('sqz_unijob:Server:CanPlayerCarryItem', function(canCarryItem)
                if canCarryItem then
                    targetXPlayer.removeInventoryItem(itemName, amount)
                    sourceXPlayer.addInventoryItem   (itemName, amount)
                    TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('you_confiscated', amount, sourceItem.label, targetXPlayer.name))
                    TriggerEvent('sqz_unijob:Server:ShowNotification', target, _U('got_confiscated', amount, sourceItem.label, sourceXPlayer.name))
                else
                    TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('quantity_invalid'))
                end
            end, _source, itemName, tonumber(amount))

        else
            TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('quantity_invalid'))
        end

    elseif itemType == 'item_account' then
        targetXPlayer.removeAccountMoney(itemName, amount)
        sourceXPlayer.addAccountMoney   (itemName, amount)

        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('you_confiscated_account', amount, itemName, targetXPlayer.name))
        TriggerEvent('sqz_unijob:Server:ShowNotification', target, _U('got_confiscated_account', amount, itemName, sourceXPlayer.name))

    elseif itemType == 'item_weapon' then
        if amount == nil then amount = 0 end
        targetXPlayer.removeWeapon(itemName, amount)
        sourceXPlayer.addWeapon(string.upper(itemName), amount)

        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('you_confiscated_weapon', ESX.GetWeaponLabel(itemName), targetXPlayer.name, amount))
        TriggerEvent('sqz_unijob:Server:ShowNotification', target, _U('got_confiscated_weapon', ESX.GetWeaponLabel(itemName), amount, sourceXPlayer.name))
    end
end)

ESX.RegisterServerCallback('sqz_unijob:getOtherPlayerData', function(source, cb, target)
    local xPlayer = ESX.GetPlayerFromId(target)


    if xPlayer then
        local data = {
            name = xPlayer.getName(),
            inventory = xPlayer.getInventory(),
            accounts = xPlayer.getAccounts(),
            weapons = xPlayer.getLoadout()
        }
            data.dob = xPlayer.get('dateofbirth')
            data.height = xPlayer.get('height')

            if xPlayer.get('sex') == 'm' then data.sex = 'male' else data.sex = 'female' end
        cb(data)
    end
end)


RegisterServerEvent('sqz_unijob:buyItem')
AddEventHandler('sqz_unijob:buyItem', function(itemName, amount, price)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    amount = ESX.Math.Round(amount)

    if amount < 0 then
        print('sqz_unijob: ' .. xPlayer.getIdentifier() .. ' attempted to exploit the shop!')
        return
    end

    local cash = xPlayer.getMoney()
    local bank = xPlayer.getAccount('bank').money
    
    if not Config.Jobs[xPlayer.job.name].SocietyPayments then

        if cash > bank then
            if xPlayer.getMoney() >= price then
                TriggerEvent('sqz_unijob:Server:CanPlayerCarryItem', function(canCarryItem)
                    if canCarryItem then
                        xPlayer.removeMoney(price)
                        xPlayer.addInventoryItem(itemName, amount)
                        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('bought', amount, itemName, ESX.Math.GroupDigits(price)))
                    else
                        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('player_cannot_hold'))
                    end
                end, _source, itemName, tonumber(amount))

            else
                local missingMoney = price - xPlayer.getMoney()
                TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('not_enough', ESX.Math.GroupDigits(missingMoney)))
            end
        elseif bank >= cash then
            if xPlayer.getAccount('bank').money >= price then

                TriggerEvent('sqz_unijob:Server:CanPlayerCarryItem', function(canCarryItem)
                    if canCarryItem then
                        xPlayer.removeAccountMoney('bank', price)
                        xPlayer.addInventoryItem(itemName, amount)
                        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('bought', amount, itemName, ESX.Math.GroupDigits(price)))
                    else
                        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('player_cannot_hold'))
                    end
                end, _source, itemName, tonumber(amount))

            else
                print('Missing money')
                local missingMoney = price - xPlayer.getAccount('bank').money
                TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('not_enough', ESX.Math.GroupDigits(missingMoney)))
            end
        end

    else

        TriggerEvent('esx_addonaccount:getSharedAccount', 'society_'..xPlayer.job.name, function(account)

            if account.money >= price then

                TriggerEvent('sqz_unijob:Server:CanPlayerCarryItem', function(canCarryItem)
                    if canCarryItem then
                        account.removeMoney(price)
                        xPlayer.addInventoryItem(itemName, amount)
                        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('bought', amount, itemName, ESX.Math.GroupDigits(price)))
                    else
                        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('player_cannot_hold'))
                    end
                end, _source, itemName, tonumber(amount))

            else

                local missingMoney = price - account.money
                TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('not_enough_society', ESX.Math.GroupDigits(missingMoney)))

            end
        end)

    end
end)

RegisterServerEvent('sqz_unijob:db_log')
AddEventHandler('sqz_unijob:db_log', function(type, target, isDiscord)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xTarget = ESX.GetPlayerFromId(target)
    local targetID = ''
    if xTarget then
        targetID = xTarget.identifier
    else
        targetID = ''
    end
    local steamid = xPlayer.getIdentifier()
    local playername = GetPlayerName(source)

    if isDiscord and SConfig.Webhooks[xPlayer.job.name] then
        local connect
        if not xTarget then
            connect = {
                {
                    ["color"] = 3066993,
                    ["title"] = xPlayer.getName()..', SteamID: '..xPlayer.getIdentifier(),
                    ["description"] = 'Action: '..type,
                    ["footer"] = {
                        ["text"] = os.date("%Y/%m/%d %X"),
                    },
                }
            }
        else
            connect = {
                {
                    ["color"] = 3066993,
                    ["title"] = xPlayer.getName()..', SteamID: '..xPlayer.getIdentifier(),
                    ["description"] = 'Action: '..type..', target: '..xTarget.getName()..' '..xTarget.getIdentifier(),
                    ["footer"] = {
                        ["text"] = os.date("%Y/%m/%d %X"),
                    },
                }
            }
        end

        PerformHttpRequest(SConfig.Webhooks[xPlayer.job.name], function(err, text, headers) end, 'POST', json.encode({embeds = connect}), { ['Content-Type'] = 'application/json' })
    end

    MySQL.Async.execute('INSERT INTO sqz_unijob_log (Steam, Oocname, Target, Time, Type)VALUES (@Steam, @OOCname, @Additional, @Time, @Type) ',
        {
            ['@Steam']   = steamid,
            ['@OOCname']   = playername,
            ['@Additional']    = targetID,
            ['@Time']  = os.date("%Y/%m/%d %X"),
            ['@Type'] = type,
        }
    )
end)

function DiscordWebhook(xPlayer, text, color, item_id, jobName)
    if SConfig.Webhooks[jobName and jobName or xPlayer.job.name] then
        if item_id then
            item_id = item_id
        else
            item_id = 'none'
        end
        
        local connect = {
            {
                ["color"] = color,
                ["title"] = xPlayer.getName()..', SteamID: '..xPlayer.getIdentifier(),
                ["description"] = text..' and item ID is: '..item_id,
                ["footer"] = {
                    ["text"] = os.date("%Y/%m/%d %X"),
                },
            }
        }
        PerformHttpRequest(SConfig.Webhooks[jobName and jobName or xPlayer.job.name], function(err, text, headers) end, 'POST', json.encode({embeds = connect}), { ['Content-Type'] = 'application/json' })
    end
end

local processPoints = {}

Citizen.CreateThread(function()
    Wait(250)
    for k, v in pairs(Config.Jobs) do

        if not processPoints[k] then
            processPoints[k] = {}
        end
        
        if v.CollectPoints and #v.CollectPoints > 0 then
            for i=1, #v.CollectPoints do
                table.insert(processPoints[k], {
                    used = v.CollectPoints[i].isUsed,
                    position = v.CollectPoints[i].pos,
                    job = k,
                    id = i
                })
            end
        end

    end

end)

RegisterNetEvent("sqz_unijob:getCollectPoints")
AddEventHandler("sqz_unijob:getCollectPoints", function(jobName)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local returnData = {}

    if processPoints[jobName and jobName or xPlayer.job.name] and #processPoints[jobName and jobName or xPlayer.job.name] > 0 then
        if not jobName then
            for k, v in pairs(processPoints[xPlayer.job.name]) do
                if not v.used then
                    table.insert(returnData, v)
                end
            end
        end
        if jobName then
            for l, m in pairs(Config.NonJobActions.Jobs) do
                for k, v in pairs(processPoints[l]) do
                    if not v.used then
                        table.insert(returnData, v)
                    end
                end
            end
        end
    end
    TriggerClientEvent("sqz_unijob:SetPointsData", _source, returnData, Config.Jobs[jobName] and jobName or Config.Jobs[xPlayer.job.name] and xPlayer.job.name)

end)

local function ResetPointData(time, job, index, int)


    Citizen.SetTimeout(time, function()
        
        processPoints[job][index].used = false

        local returnData = {}
        if not int then
            for k, v in pairs(processPoints[job]) do
                if not v.used then
                    table.insert(returnData, v)
                end
            end
        else
            for l, m in pairs(Config.NonJobActions.Jobs) do
                for k, v in pairs(processPoints[l]) do
                    if not v.used then
                        table.insert(returnData, v)
                    end
                end
            end
        end
        TriggerClientEvent("sqz_unijob:SetPointsData", -1, returnData, job)

    end)


end

RegisterNetEvent("sqz_unijob:onPickup")
AddEventHandler("sqz_unijob:onPickup", function(data, coords, jobName)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local ConfigData = Config.Jobs[data.value.job].CollectPoints[data.value.id]
    local giveItem = ConfigData.getItem
    local rand = math.random(ConfigData.getMin, ConfigData.getMax)

    if #(coords - ConfigData.pos) < 5.0 or jobName then

        TriggerEvent('sqz_unijob:Server:CanPlayerCarryItem', function(canCarryItem)
            if canCarryItem then
                xPlayer.addInventoryItem(giveItem, rand)
                processPoints[data.value.job][data.value.id].used = true

                local returnData = {}
                if not jobName then
                    for k, v in pairs(processPoints[data.value.job]) do
                        if not v.used then
                            table.insert(returnData, v)
                        end
                    end
                else
                    for l, m in pairs(Config.NonJobActions.Jobs) do
                        for k, v in pairs(processPoints[l]) do
                            if not v.used then
                                table.insert(returnData, v)
                            end
                        end
                    end
                end
                TriggerClientEvent("sqz_unijob:SetPointsData", -1, returnData, data.value.job)
                ResetPointData(Config.Jobs[data.value.job].CollectPoints.ResetPointsTime, data.value.job, data.value.id, jobName)
            else
                TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('player_cannot_hold'))
            end

        end, _source, giveItem, tonumber(rand))

    else
        print('[sqz_unijob] Possible hacker detected, tried to give himself item, his identifier = '..xPlayer.identifier)
    end

end)

ESX.RegisterServerCallback('sqz_unijob:CheckForItems', function(playerId, cb, items)

    local xPlayer = ESX.GetPlayerFromId(playerId)

    local canProcedure = true

    for i=1, #items do

        if xPlayer.getInventoryItem(items[i].itemName).count >= items[i].count then

        else
            canProcedure = false
        end

    end

    if canProcedure then

        for i=1, #items do

            if items[i].removeItem then
                xPlayer.removeInventoryItem(items[i].itemName, items[i].count)
            end

        end

    end

    cb(canProcedure)

end)


RegisterNetEvent("sqz_unijob:StartedPickup")
AddEventHandler("sqz_unijob:StartedPickup", function(coords, item, itemCount, jobName)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local found = false

    for l, m in pairs(Config.Jobs[jobName and jobName or xPlayer.job.name].Zones) do

        local dist = #(coords - vector3(m.Pos.x, m.Pos.y, m.Pos.z))

        if dist < Config.DrawDistance then
            found = true
        end
            

    end

    if not found then

        print('[sqz_unijob]: Player: '..xPlayer.name..' tried making himself rich and executing event for crafting items take a look :). His SteamID is: '..xPlayer.identifier)

    else
        TriggerEvent('sqz_unijob:Server:CanPlayerCarryItem', function(canCarryItem)
            if canCarryItem then
                xPlayer.addInventoryItem(item, itemCount)
                DiscordWebhook(xPlayer, _U('craft_items', item, itemCount, coords, xPlayer.name, xPlayer.identifier), 65280, item, jobName)
            else
                TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('can_not_carry'))
            end
        end, _source, item, itemCount)

    end

end)

local playerSelling = {}

local function StartSelling(_source, data, jobName)
    if playerSelling[_source] then
        local xPlayer = ESX.GetPlayerFromId(_source)
        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('started_selling'))
        if xPlayer.getInventoryItem(data.Item).count > 0 then
            xPlayer.removeInventoryItem(data.Item, 1)
            local randMoney = math.random(data.MinCash, data.MaxCash)
            if Config.Jobs[jobName and jobName or xPlayer.job.name].SocietyPayments then
                if not Config.TchajTaxes then

                    TriggerEvent('esx_addonaccount:getSharedAccount', jobName and 'society_'..jobName or 'society_'..xPlayer.job.name, function(account)
                        account.addMoney(math.floor(randMoney/100*Config.Jobs[jobName and jobName or xPlayer.job.name].PercentToSociety))
                        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('earned_money_society', math.floor(randMoney/100*Config.Jobs[jobName and jobName or xPlayer.job.name].PercentToSociety)))
                        randMoney = randMoney - (math.floor(randMoney/100*Config.Jobs[jobName and jobName or xPlayer.job.name].PercentToSociety))
                        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('earned_money', randMoney))
                        xPlayer.addMoney(randMoney)
                    end)

                else

                    local getDPHBank = exports.tchaj_dph:setDphPercentageMoney(randMoney, true)
                    exports.tchaj_dph:addMoneyGov(getDPHBank)
                    randMoney = math.floor(randMoney - getDPHBank)
                    TriggerEvent('esx_addonaccount:getSharedAccount', jobName and 'society_'..jobName or 'society_'..xPlayer.job.name, function(account)
                        account.addMoney(math.floor(randMoney/100*Config.Jobs[jobName and jobName or xPlayer.job.name].PercentToSociety))
                        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('earned_money_society', math.floor(randMoney/100*Config.Jobs[jobName and jobName or xPlayer.job.name].PercentToSociety)))
                        randMoney = randMoney - (math.floor(randMoney/100*Config.Jobs[jobName and jobName or xPlayer.job.name].PercentToSociety))
                        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('earned_money', randMoney))
                        xPlayer.addMoney(randMoney)
                    end)

                end
            else
                xPlayer.addMoney(randMoney)
                TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('earned_money', randMoney))
            end
            Citizen.SetTimeout(data.Delay, function()
                StartSelling(_source, data, jobName)
            end)

        else
            TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('all_sold'))
            TriggerClientEvent("sqz_drugs:StopSelling", _source)
        end
    end

end


RegisterNetEvent("sqz_unijob:SellItem")
AddEventHandler("sqz_unijob:SellItem", function(data, job)
    local _source = source

    if not playerSelling[_source] then
        playerSelling[_source] = true
        StartSelling(_source, data.data, job)
    else
        TriggerEvent('sqz_unijob:Server:ShowNotification', _source, _U('already_selling'))
    end

end)

RegisterNetEvent("sqz_unijob:StopSelling")
AddEventHandler("sqz_unijob:StopSelling", function()
    local _source = source

    playerSelling[_source] = nil
    
end)

ESX.RegisterServerCallback('sqz_unijob:checkItemCount', function(source, cb, item)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.getInventoryItem(item).count >= 1 then
        cb('has')
    else
        cb('hasn')
    end
end)

RegisterNetEvent('sqz_unijob:removeItem')
AddEventHandler('sqz_unijob:removeItem', function(itemName)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        xPlayer.removeInventoryItem(itemName, 1)
    end

end)

ESX.RegisterServerCallback('sqz_unijob:GetPlayerDressing', function(source, cb)
    local xPlayer  = ESX.GetPlayerFromId(source)
  
    TriggerEvent('esx_datastore:getDataStore', 'property', xPlayer.identifier, function(store)
      local count    = store.count('dressing')
      local labels   = {}
  
      for i=1, count, 1 do
        local entry = store.get('dressing', i)
        table.insert(labels, entry.label)
      end
  
      cb(labels)
    end)
end)

ESX.RegisterServerCallback('sqz_unijob:GetPlayerOutfit', function(source, cb, num)
    local xPlayer  = ESX.GetPlayerFromId(source)
  
    TriggerEvent('esx_datastore:getDataStore', 'property', xPlayer.identifier, function(store)
      local outfit = store.get('dressing', num)
      cb(outfit.skin)
    end)
end)
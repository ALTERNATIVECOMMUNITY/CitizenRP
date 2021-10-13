------------------------------------------------------------------------------------------------------
------------------------------------------ NOTIFICATIONS ---------------------------------------------
------------------------------------------------------------------------------------------------------
function Notification(source, notif_type, message)
    if source ~= nil and notif_type ~= nil and message ~= nil then
        if Config.NotificationType.server == 'chat' then
            TriggerClientEvent('chatMessage', source, message)

        elseif Config.NotificationType.server == 'mythic_old' then
            if notif_type == 1 then
                TriggerClientEvent('mythic_notify:client:SendAlert:custom', source, { type = 'success', text = message, length = 10000})
            elseif notif_type == 2 then
                TriggerClientEvent('mythic_notify:client:SendAlert:custom', source, { type = 'inform', text = message, length = 10000})
            elseif notif_type == 3 then
                TriggerClientEvent('mythic_notify:client:SendAlert:custom', source, { type = 'error', text = message, length = 10000})
            end

        elseif Config.NotificationType.server == 'mythic_new' then
            if notif_type == 1 then
                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = message, style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
            elseif notif_type == 2 then
                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = message, style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
            elseif notif_type == 3 then
                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = message, style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
            end

        elseif Config.NotificationType.server == 'esx' then
            TriggerClientEvent('esx:showNotification', source, message)

        elseif Config.NotificationType.server == 'custom' then
            --enter custom notification here

        end
    end
end
------------------------------------------------------------------------------------------------------
-------------------------------------- FRAMEWORK FUNCTIONS -------------------------------------------
------------------------------------------------------------------------------------------------------
function CheckMoney(source, amount)
    if Config.UseESX then
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer.getAccount('bank').money >= amount then
            xPlayer.removeAccountMoney('bank', amount)
            return true
        else
            return false
        end
    else
        return --add your non esx money checks here - (return true if the player has enough money and you have removed the money or return false if the player does not have enough money).
    end
end

function RemoveMoney(source, amount)
    if Config.UseESX then
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeAccountMoney('bank', amount)
    else
        --add your non esx remove money here - (remove the money).
    end
end

function GetJob(source)
    if Config.UseESX then
        local xPlayer = ESX.GetPlayerFromId(source)
        return xPlayer.job.name
    else
        return --add your non esx job checks here - (return the jobname).
    end
end

function GetIdentifier(source)
    if Config.UseESX then
        local xPlayer = ESX.GetPlayerFromId(source)
        return xPlayer.identifier
    else
        return GetPlayerIdentifiers(source)[1]
    end
end
------------------------------------------------------------------------------------------------------
----------------------------------------- SERVER EXPORTS ---------------------------------------------
------------------------------------------------------------------------------------------------------
function GetMaxHealth(plate)
    if AdvStatsTable[plate] ~= nil then
        if AdvStatsTable[plate].maxhealth ~= nil then
            return AdvStatsTable[plate].maxhealth
        else
            return 1000.0
        end
    else
        return 1000.0
    end
end

function GetAdvStats(plate)
    if AdvStatsTable[plate] ~= nil then
        local ServerTable = {plate = AdvStatsTable[plate].plate, mileage = AdvStatsTable[plate].mileage, maxhealth = AdvStatsTable[plate].maxhealth}
        return ServerTable
    else
        local result = DatabaseQuery('SELECT adv_stats FROM owned_vehicles WHERE plate="'..plate..'"')
        if result ~= nil and result[1] ~= nil and result[1].adv_stats ~= nil then
            return json.decode(result[1].adv_stats)
        else
            return false
        end
    end
end

function GetGarageCount(source, garage_type)
    if garage_type == nil then
        garage_type = 'car'
    end
    local Result = DatabaseQuery('SELECT owner FROM owned_vehicles WHERE owner="'..GetIdentifier(source)..'" and garage_type="'..garage_type..'"')
    if Result ~= nil then
        return #Result
    else
        return 0
    end
end

function GetGarageLimit(source)
    local Result = DatabaseQuery('SELECT garage_limit FROM users WHERE identifier="'..GetIdentifier(source)..'"')
    if Result ~= nil and Result[1] ~= nil and Result[1].garage_limit ~= nil then
        return tonumber(Result[1].garage_limit)
    else
        if Config.UseGarageSpace then
            return 1000
        else
            return #Config.GarageSpace
        end
    end
end

function GetVehicleOwner(source, plate)
    local Result = DatabaseQuery('SELECT owner FROM owned_vehicles WHERE plate="'..plate..'"')
    if Result ~= nil and Result[1] ~= nil and Result[1].owner ~= nil then
        if Result[1].owner == GetIdentifier(source) then
            return true
        else
            return false
        end
    else
        return false
    end
end
------------------------------------------------------------------------------------------------------
------------------------------------------ CHAT COMMANDS ---------------------------------------------
------------------------------------------------------------------------------------------------------
RegisterServerEvent('cd_garage:TransferVehicle')
AddEventHandler('cd_garage:TransferVehicle', function(plate, target, garage_type, label, fromUI)
    local _source = source
    if GetPlayerName(target) ~= nil then
        if target ~= _source then
            local source_identifier = GetIdentifier(_source)
            local target_identifier = GetIdentifier(target)

            local car_count = GetGarageCount(target, garage_type)
            local car_limit = GetGarageLimit(target)
            if car_count < car_limit or not Config.UseGarageSpace then
                if GetVehicleOwner(_source, plate) then
                    DatabaseQuery('UPDATE owned_vehicles SET owner="'..target_identifier..'" WHERE plate="'..plate..'"')
                    Notif(_source, 1, 'transfer_vehicle', plate, target)
                    Notif(target, 1, 'recieve_vehicle', plate, _source)
                    if fromUI then
                        TriggerClientEvent('cd_garage:TransferVehicle:Callback', _source, true, L('transfer_success'))
                    end
                    TransferVehicleLogs(_source, target, plate, label)
                else
                    Notif(_source, 3, 'dont_own_vehicle')
                end
            else
                if fromUI then
                    TriggerClientEvent('cd_garage:TransferVehicle:Callback', _source, false, L('garage_full'))
                else
                    Notif(_source, 3, 'garage_full')
                end
            end
        else
            if fromUI then
                TriggerClientEvent('cd_garage:TransferVehicle:Callback', _source, false, L('cant_transfer_yourself'))
            else
                Notif(_source, 3, 'cant_transfer_yourself')
            end
        end
    else
        if fromUI then
            TriggerClientEvent('cd_garage:TransferVehicle:Callback', _source, false, L('incorrect_id'))
        else
            Notif(_source, 3, 'incorrect_id')
        end
    end
end)

if Config.UseGarageSpace and (Config.GarageSpaceCommand ~= 'FALSE' or Config.GarageSpaceCommand ~= nil) then
    RegisterCommand(Config.GarageSpaceCommand, function(source, args)
        local _source = source
        local identifier = GetIdentifier(_source)

        if args[1] == nil then
            local result = DatabaseQuery('SELECT garage_limit FROM users WHERE identifier="'..identifier..'"')
            if result[1] ~= nil then
                local limit = tonumber(result[1].garage_limit)
                Notif(_source, 1, 'garage_space_check', limit)
            end

        elseif args[1] == 'add' then
            local MyJob = GetJob(_source)
            if Config.GarageSpaceJobs[MyJob] ~= nil then
                if args[2] ~= nil then
                    local target = args[2]
                    local identifier = GetIdentifier(target)
                    if GetPlayerName(target) ~= nil then
                        local result = DatabaseQuery('SELECT firstname, lastname, garage_limit FROM users WHERE identifier="'..identifier..'"')
                        if result[1] ~= nil then
                            local rpname = result[1].firstname..' '..result[1].lastname
                            local limit = tonumber(result[1].garage_limit)
                            local price
                            if Config.GarageSpace ~= nil then
                                if limit < #Config.GarageSpace then
                                    for i=1, #Config.GarageSpace do
                                        if i == limit then
                                            price = Config.GarageSpace[i]
                                            break
                                        end
                                    end
                                    
                                    if CheckMoney(_source, Config.ReturnVehiclePrice) then
                                        local new_limit = limit+1
                                        DatabaseQuery('UPDATE users SET garage_limit="'..new_limit..'" WHERE identifier="'..identifier..'"')
                                        Notif(_source, 1, 'add_garageslot', rpname)
                                        Notif(target, 1, 'recieve_garageslot', new_limit)
                                    else
                                        Notif(_source, 3, 'not_enough_cash')
                                    end
                                else
                                    Notif(_source, 3, 'garage_full')
                                end
                            end
                        end
                    else
                        Notif(_source, 3, 'incorrect_id')
                    end
                else
                    Notif(_source, 3, 'enter_playerid_here')
                end
            else
                Notif(_source, 3, 'no_permissions')
            end
        else
            Notif(_source, 3, 'invalid_action')
        end
    end)
end

RegisterServerEvent('cd_garage:VehicleManagement')
AddEventHandler('cd_garage:VehicleManagement', function(action, plate, target, props, garage_type)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local perms = xPlayer.getGroup()
    if perms == 'superadmin' or perms == 'admin' then
        if action == 'add' then
            if GetPlayerName(target) then
                local identifier = GetIdentifier(_source)
                local result = DatabaseQuery('SELECT plate FROM owned_vehicles WHERE plate="'..plate..'"')
                if result[1] == nil then
                    DatabaseQuery('INSERT INTO owned_vehicles (owner, plate, vehicle, garage_type, in_garage) VALUES (@owner, @plate, @vehicle, @garage_type, @in_garage)',
                    {
                        ['@owner'] = identifier,
                        ['@plate'] = plate,
                        ['@vehicle'] = json.encode(props),
                        ['@garage_type'] = garage_type,
                        ['@in_garage'] = 0,
                    })
                    Notif(_source, 1, 'vehmanagment_added', plate, target)
                    VehicleManagmentLogs(_source, action, plate, target, garage_type)
                else
                    Notif(_source, 3, 'owned_vehicle', plate)
                end
            else
                Notif(_source, 3, 'incorrect_id')
            end
        elseif action == 'delete' then
            local result = DatabaseQuery('SELECT plate FROM owned_vehicles WHERE plate="'..plate..'"')
            if result[1] ~= nil then
                DatabaseQuery('DELETE FROM owned_vehicles WHERE plate="'..plate..'"')
                Notif(_source, 1, 'vehmanagment_deleted')
                VehicleManagmentLogs(_source, action, plate)
            else
                Notif(_source, 3, 'not_owned_vehicle')
            end

        elseif action == 'plate' then
            local new_plate = target
            local result = DatabaseQuery('SELECT plate, vehicle FROM owned_vehicles WHERE plate="'..plate..'"')
            if result[1] ~= nil then
                local result2 = DatabaseQuery('SELECT plate FROM owned_vehicles WHERE plate="'..new_plate..'"')
                if result2[1] == nil then
                    local props = json.decode(result[1].vehicle)
                    props.plate = new_plate
                    DatabaseQuery('UPDATE owned_vehicles SET plate=@new_plate, vehicle=@vehicle WHERE plate=@old_plate', {
                        ['@old_plate'] = plate,
                        ['@new_plate'] = new_plate,
                        ['@vehicle'] = json.encode(props),
                    })
                    Notif(_source, 1, 'vehmanagment_platechanged', plate, new_plate)
                    TriggerClientEvent('cd_garage:VehicleManagement', _source, new_plate)
                    VehicleManagmentLogs(_source, action, plate, target)
                else
                    Notif(_source, 3, 'owned_vehicle', new_plate)
                end
            else
                Notif(_source, 3, 'not_owned_vehicle')
            end
        end
    else
        Notif(_source, 3, 'vehmanagment_noperms')
    end
end)
------------------------------------------------------------------------------------------------------
--------------------------------------------- GARAGE TAX ---------------------------------------------
------------------------------------------------------------------------------------------------------
RegisterServerEvent('cd_garage:GarageTax')
AddEventHandler('cd_garage:GarageTax', function(serverid)
    if serverid == nil then
        _source = source
    elseif type(serverid) == 'number' then
        _source = serverid
    end
    local identifier = GetIdentifier(_source)
    if GarageTaxCheck[_source] == nil then
        local result = DatabaseQuery('SELECT phone_number FROM users WHERE identifier="'..identifier..'"')
        if result[1] ~= nil then
            local cantax = true
            if  PhoneNumbers ~= nil then
                for k, v in pairs (PhoneNumbers) do
                    if v ~= nil and v == result[1].phone_number then
                        cantax = false
                        break
                    end
                end
            end

            if cantax then
                GarageTaxCheck[_source] = true
                table.insert(PhoneNumbers, result[1].phone_number)
                local TaxDisShit = DatabaseQuery('SELECT vehicle FROM owned_vehicles WHERE owner="'..identifier..'"')
                if TaxDisShit ~= nil and TaxDisShit[1] ~= nil and TaxDisShit[1].vehicle ~= nil then
                    for i=1, #TaxDisShit do
                        if TaxDisShit[i].vehicle ~= nil then
                            TriggerClientEvent('cd_garage:GarageTax', _source, json.decode(TaxDisShit[i].vehicle).model)
                        end
                    end
                end
            end
            cantax = nil
        end
    end
end)

RegisterServerEvent('cd_garage:PayTax')
AddEventHandler('cd_garage:PayTax', function(amount, garagecount)
    local _source = source
    RemoveMoney(_source, amount)
    DatabaseQuery('UPDATE users SET garage_tax=1 WHERE identifier="'..GetIdentifier(_source)..'"')
    Notif(_source, 2, 'pay_tax', garagecount, math.ceil(amount))
end)
------------------------------------------------------------------------------------------------------
----------------------------------------------- OTHER ------------------------------------------------
------------------------------------------------------------------------------------------------------
RegisterServerEvent('cd_garage:DeleteVehicleADV')
AddEventHandler('cd_garage:DeleteVehicleADV', function(net)
    TriggerClientEvent('cd_garage:DeleteVehicleADV', source, net)
end)

RegisterServerEvent('cd_garage:SaveAllMiles')
AddEventHandler('cd_garage:SaveAllMiles', function()
    TriggerClientEvent('cd_garage:SaveAllMiles_2', -1)
end)

RegisterServerEvent('cd_garage:SaveAllMiles_2')
AddEventHandler('cd_garage:SaveAllMiles_2', function(AdvStatsTableClient)
    for k, v in pairs (AdvStatsTableClient) do
        DatabaseQuery('UPDATE owned_vehicles SET adv_stats="'..json.encode(v)..'" WHERE plate="'..v.plate..'"')
    end
end)

RegisterServerEvent('cd_garage:Callback')
AddEventHandler('cd_garage:Callback', function(id, plate)
    local _source = source
    local result = GetAdvStats(plate)
    TriggerClientEvent('cd_garage:Callback', _source, id, result)
end)

RegisterServerEvent('cd_garage:UpdateGarageType')
AddEventHandler('cd_garage:UpdateGarageType', function(garage_type, plate)
    DatabaseQuery('UPDATE owned_vehicles SET garage_type="'..garage_type..'" WHERE plate="'..plate..'"')
end)

RegisterServerEvent('cd_garage:SetJobOwnedVehicle')
AddEventHandler('cd_garage:SetJobOwnedVehicle', function(action, plate)
    local _source = source
    if action == 'personal' then
        DatabaseQuery('UPDATE owned_vehicles SET job_personalowned=1 WHERE plate="'..plate..'"')
    elseif action == 'society' then
        DatabaseQuery('UPDATE owned_vehicles SET owner="'..GetJob(_source)..'" WHERE plate="'..plate..'"')
    end
end)

function L(l)
    return Locales[Config.Language][l]
end
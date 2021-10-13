------------------------------------------------------------------------------------------------------
-------------------------------------------- WEBHOOK URLS --------------------------------------------
------------------------------------------------------------------------------------------------------
--These are disabled by default, until you enter your discord webhook. 'FALSE' will disable them.
ExploitLogWebhook = 'FALSE' --If a player is found using cheat engine to change the hash of a vehicle, this will send a message on discord and kick them from the game.
ImpoundLogWebhook = 'FALSE' --When a player impounds/unimpounds a vehicle it will send a message on discord.
TransferVehicleLogWebhook = 'FALSE' --When a player transfers a vehicle to another player it will send a message on discord.
VehicleManagementLogWebhook = 'FALSE' --When a staff member uses the vehiclemanagment commands it will send a message on discord.
------------------------------------------------------------------------------------------------------
---------------------------------------------- WEBHOOKS ----------------------------------------------
------------------------------------------------------------------------------------------------------
function ExploitAlertLogs(source, plate, newmodel, oldmodel, identifier)
    if ExploitLogWebhook ~= nil and ExploitLogWebhook ~= 'FALSE' then
        local message = string.format(L('logs_exploit_message'), GetPlayerName(source), plate, newmodel, oldmodel, identifier)
        PerformHttpRequest(ExploitLogWebhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end

function ImpoundVehicleLogs(source, action, vehiclelabel, vehicleplate, impoundlocation)
    if ImpoundLogWebhook ~= nil and ImpoundLogWebhook ~= 'FALSE' then
        local message, color
        if action == 'impound' then
            message = string.format(L('logs_impound_message'), vehicleplate, vehiclelabel, impoundlocation, GetPlayerName(source), source, GetIdentifier(source))
            color = 16711680
        elseif action == 'unimpound' then
            message = string.format(L('logs_unimpound_message'), vehicleplate, vehiclelabel, GetPlayerName(source), source, GetIdentifier(source))
            color = 56108
        end
        local data = {{
            ['color'] = color,
            ['title'] = action:sub(1,1):upper()..action:sub(2),
            ['description'] = message,
            ['footer'] = {
                ['text'] = os.date('%c'),
                ['icon_url'] = 'https://i.imgur.com/DPk4AxP.png',
            },
        }}
        PerformHttpRequest(ImpoundLogWebhook, function(err, text, headers) end, 'POST', json.encode({username = L('garage_title'), embeds = data}), { ['Content-Type'] = 'application/json' })
    end
end

function TransferVehicleLogs(source, target, plate, label)
    if TransferVehicleLogWebhook ~= 'FALSE' and TransferVehicleLogWebhook ~= nil then
        local message = string.format(L('logs_transfer_message'), plate, label, GetPlayerName(source), source, GetIdentifier(source), GetPlayerName(target), target, GetIdentifier(target))
        local data = {{
            ['color'] = '2061822',
            ['title'] = 'Transfer-Vehicle',
            ['description'] = message,
            ['footer'] = {
                ['text'] = os.date('%c'),
                ['icon_url'] = 'https://i.imgur.com/DPk4AxP.png',
            },
        }}
        PerformHttpRequest(TransferVehicleLogWebhook, function(err, text, headers) end, 'POST', json.encode({username = L('garage_title'), embeds = data}), { ['Content-Type'] = 'application/json' })
    end
end

function VehicleManagmentLogs(source, action, plate, target, garage_type)
    if VehicleManagementLogWebhook ~= 'FALSE' and VehicleManagementLogWebhook ~= nil then
        local message, color
        if action == 'add' then
            message = string.format(L('logs_vehiclemanagment_add'), plate, garage_type, GetPlayerName(source), source, GetIdentifier(source), GetPlayerName(target), target, GetIdentifier(target))
            color = '56108'
        elseif action == 'delete' then
            message = string.format(L('logs_vehiclemanagment_delete'), plate, GetPlayerName(source), source, GetIdentifier(source))
            color = '16711680'
        elseif action == 'plate' then
            message = string.format(L('logs_vehiclemanagment_plate'), plate, target, GetPlayerName(source), source, GetIdentifier(source))
            color = '2061822'
        end
        local data = {{
            ['color'] = color,
            ['title'] = string.format(L('logs_vehiclemanagment_title'), string.upper(action)),
            ['description'] = message,
            ['footer'] = {
                ['text'] = os.date('%c'),
                ['icon_url'] = 'https://i.imgur.com/DPk4AxP.png',
            },
        }}
        PerformHttpRequest(VehicleManagementLogWebhook, function(err, text, headers) end, 'POST', json.encode({username = L('garage_title'), embeds = data}), { ['Content-Type'] = 'application/json' })
    end
end
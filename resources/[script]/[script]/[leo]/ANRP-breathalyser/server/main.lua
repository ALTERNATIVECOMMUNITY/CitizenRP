
if Config.ESXLegacy == false and ESX == nil then
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
end


ESX.RegisterServerCallback('ANRP-breathalyser:getOtherPlayerData', function(source, cb, target, notify)
    local xPlayer = ESX.GetPlayerFromId(target)

    if xPlayer then
        local data = {}

        local status = xPlayer.get('status')

        for k, v in pairs(status) do
            if v.name == "drunk" then
                data.drunk = v.percent
                break
            end
        end

        cb(data)
    end
end)

ESX.RegisterUsableItem('breathalyser', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerClientEvent("ANRP-breathalyser:client:openDevice", source)

end)


RegisterServerEvent("ANRP-breathalyser:server:askToBlow")
AddEventHandler("ANRP-breathalyser:server:askToBlow", function(target, askedby)
    if target ~= nil and ESX.GetPlayerFromId(target) ~= nil then
        TriggerClientEvent("ANRP-breathalyser:client:askToBlow", target, target, askedby)
    else
        print("[ANRP-breathalyser] :  Unsafe Event Called by : "..source)
    end
end)

RegisterServerEvent("ANRP-breathalyser:server:open")
AddEventHandler("ANRP-breathalyser:server:open", function(police, bool)
    if police ~= nil and bool ~= nil then
        TriggerClientEvent("ANRP-breathalyser:client:open", police, source, bool)
    else
        print("[ANRP-breathalyser] :  Unsafe Event Called by : "..source)
    end
end)

RegisterServerEvent("ANRP-breathalyser:server:show")
AddEventHandler("ANRP-breathalyser:server:show", function(drunk, target)
    if target ~= nil then
        TriggerClientEvent("ANRP-breathalyser:client:show", target, drunk)
    else
        print("[ANRP-breathalyser] :  Unsafe Event Called by : "..source)
    end
end)

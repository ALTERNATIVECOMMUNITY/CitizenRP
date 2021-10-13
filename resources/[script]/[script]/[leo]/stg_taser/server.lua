ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('stg_taser:show')
AddEventHandler('stg_taser:show',function(v, y)
    if not v then
    TriggerClientEvent('stg_taser:client:show', -1, false, y)
    else
    TriggerClientEvent('stg_taser:client:show', -1, v)
    end
end)

ESX.RegisterServerCallback('stg_taser:getCartridge', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer ~= nil then
    local item = xPlayer.getInventoryItem("cartridge")
    if item then
    cb({cartridge = item.count})
    else
    cb({cartridge = 0})
    end
end
end)

RegisterServerEvent('stg_taser:remove')
AddEventHandler('stg_taser:remove',function()
    local xPlayer = ESX.GetPlayerFromId(source)
   xPlayer.removeInventoryItem('cartridge', 1)
end)


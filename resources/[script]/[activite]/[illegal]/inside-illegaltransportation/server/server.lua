-- Leaked By: Leaking Hub | J. Snow | leakinghub.com

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
-- Leaked By: Leaking Hub | J. Snow | leakinghub.com
AddEventHandler('playerDropped', function()
    TriggerClientEvent('inside-illegaltransportation:playerdropped', source)
end)
-- Leaked By: Leaking Hub | J. Snow | leakinghub.com
RegisterServerEvent('inside-illegaltransportation:PoliceNotfiy')
AddEventHandler('inside-illegaltransportation:PoliceNotfiy', function(coords)
    TriggerClientEvent('inside-illegaltransportation:PoliceNotifyC', -1, coords)
end)
-- Leaked By: Leaking Hub | J. Snow | leakinghub.com
ESX.RegisterServerCallback('inside-illegaltransportation:payout', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
    local money = 15000
	xPlayer.addMoney(money)
    cb(money)
end)

-- Leaked By: Leaking Hub | J. Snow | leakinghub.com

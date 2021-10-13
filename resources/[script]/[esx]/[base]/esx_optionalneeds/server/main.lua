ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

-- ESX.RegisterUsableItem('beer', function(source)
--
-- 	local xPlayer = ESX.GetPlayerFromId(source)
--
-- 	xPlayer.removeInventoryItem('beer', 1)
--
-- 	TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
-- 	TriggerClientEvent('esx_optionalneeds:onDrink', source)
-- 	TriggerClientEvent('esx:showNotification', source, _U('used_beer'))
--
-- end)
--


ESX.RegisterUsableItem('beer', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('beer', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 210000)
    TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_items:onBeer', source)

end)

ESX.RegisterUsableItem('wine', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('wine', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 230000)
    TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_items:onWine', source)

end)



ESX.RegisterUsableItem('whiskey', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('whiskey', 1)

		TriggerClientEvent('esx_status:add', source, 'drunk', 330000)
    TriggerClientEvent('esx_status:remove', source, 'thirst', 50000)
	TriggerClientEvent('esx_items:onWhiskey', source)

end)

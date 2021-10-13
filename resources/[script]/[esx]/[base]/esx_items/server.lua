ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterUsableItem('beer', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('beer', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_items:onBeer', source)
	exports["gamz-skillsystem"]:UpdateSkill(Stamina, -0.4)
		exports["gamz-skillsystem"]:UpdateSkill(Strength, -0.2)
		--	exports["gamz-skillsystem"]:UpdateSkill(Lung Capacity, -0.2)
end)

ESX.RegisterUsableItem('wine', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('wine', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_items:onWine', source)

	--		exports["gamz-skillsystem"]:UpdateSkill(Lung Capacity, -0.2)
end)

ESX.RegisterUsableItem('whiskey', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('whiskey', 1)

    TriggerClientEvent('esx_status:remove', source, 'thirst', 50000)
	TriggerClientEvent('esx_items:onWhiskey', source)

	--		exports["gamz-skillsystem"]:UpdateSkill(Lung Capacity, -0.2)
end)

ESX.RegisterUsableItem('sandwich', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sandwich', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 10000)
		TriggerClientEvent('esx_status:remove', source, 'thirst', 1000)
	TriggerClientEvent('esx_items:onSandwich', source)
end)



--------------------- PEARL ------------------------


ESX.RegisterUsableItem('pearl_bouillabaisse', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pearl_bouillabaisse', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 500000)
				TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_items:onBouillabaisse', source)
end)

ESX.RegisterUsableItem('pearl_poissonpane', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pearl_poissonpane', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
				TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_items:onPoissonPane', source)
end)

ESX.RegisterUsableItem('pearl_saumonfume', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pearl_saumonfume', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
				TriggerClientEvent('esx_status:remove', source, 'thirst', 1000)
	TriggerClientEvent('esx_items:onSaumonfume', source)
end)

ESX.RegisterUsableItem('pearl_filedepoisson', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pearl_filedepoisson', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
				TriggerClientEvent('esx_status:remove', source, 'thirst', 100)
	TriggerClientEvent('esx_items:onFiledepoisson', source)
end)


--------------------- DINER ------------------------



ESX.RegisterUsableItem('diner_bacon', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('diner_bacon', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
				TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_items:onDinerBacon', source)
end)



ESX.RegisterUsableItem('diner_hamburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('diner_hamburger', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 500000)
				TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_items:onDinerBurger', source)
end)

ESX.RegisterUsableItem('diner_veggiewrap', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('diner_veggiewrap', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
				TriggerClientEvent('esx_status:remove', source, 'thirst', 100)
	TriggerClientEvent('esx_items:onVeggieWrap', source)
end)


ESX.RegisterUsableItem('diner_frite', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('diner_frite', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 9000)
				TriggerClientEvent('esx_status:remove', source, 'thirst', 100)
	TriggerClientEvent('esx_items:onDinerFrite', source)
end)

ESX.RegisterUsableItem('diner_potatoes', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('diner_potatoes', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 9000)
				TriggerClientEvent('esx_status:remove', source, 'thirst', 100)
	TriggerClientEvent('esx_items:onDinerFrite', source)
end)

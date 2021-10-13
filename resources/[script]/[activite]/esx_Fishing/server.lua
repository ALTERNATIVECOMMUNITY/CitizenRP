ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterUsableItem('fishingrod', function(source)
	local _source = source
	xPlayer = ESX.GetPlayerFromId(_source)
	local FBait = xPlayer.getInventoryItem('bait').count

	if FBait > 0 then
		TriggerClientEvent('fishing:fishstart', _source)
		xPlayer.removeInventoryItem('bait', 1)
	else
		TriggerClientEvent('okokNotify:Alert', source, "Citizen-V", "Vous n'avez pas d'appât", 5000, 'error')
	end
end)



RegisterNetEvent('fishing:catch')
AddEventHandler('fishing:catch', function()

	_source = source
	local rnd = math.random(25,150)
	xPlayer = ESX.GetPlayerFromId(_source)

	if rnd >= 25 then

		if xPlayer.canCarryItem("fish", 1) then
			TriggerClientEvent('fishing:message', _source, "Vous avez attrapé un petit poisson")
			xPlayer.addInventoryItem('fish', 1)
		else
			TriggerClientEvent('fishing:message', _source, "Tu ne peux plus porter")
		end

	else
		if rnd >= 50 then

			if xPlayer.canCarryItem("fish2", 1) then

				TriggerClientEvent('fishing:message', _source, "Vous avez attrapé un poisson de taille moyenne")
				xPlayer.addInventoryItem('fish2', 1)
			else
				TriggerClientEvent('fishing:message', _source, "Tu ne peux plus porter")
			end

		else
			if rnd >= 75 then

				if xPlayer.canCarryItem("fish3", 1) then

					TriggerClientEvent('fishing:message', _source, "You caught a huge fish")
					xPlayer.addInventoryItem('fish3', 1)
				else
					TriggerClientEvent('fishing:message', _source, "You cant carry anymore")
				end
			else
				if rnd >= 100 then

					if xPlayer.canCarryItem("boot", 1) then

						TriggerClientEvent('fishing:message', _source, "You caught a boot")
						xPlayer.addInventoryItem('boot', 1)
					else
						TriggerClientEvent('fishing:message', _source, "You cant carry anymore")
					end
				end
			end
		end
	end
end)

RegisterServerEvent("fishing:lowmoney")
AddEventHandler("fishing:lowmoney", function(model)
    local _source = source
	local myModel = model
	local xPlayer = ESX.GetPlayerFromId(_source)
	for k, v in ipairs(Config.RentalBoats) do
		if GetHashKey(v.model) == myModel then
			xPlayer.removeMoney(v.price)
		end
	end
end)

RegisterServerEvent("fishing:returnDeposit")
AddEventHandler("fishing:returnDeposit", function(model)
	local _source = source
	local myModel = model
	local xPlayer = ESX.GetPlayerFromId(_source)
	for k, v in ipairs(Config.RentalBoats) do
		if GetHashKey(v.model) == myModel then
			xPlayer.addMoney(v.price / 2)
		end
	end
end)

RegisterServerEvent('fishing:startSelling')
AddEventHandler('fishing:startSelling', function(item)

	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(_source)

	local Fish1 = xPlayer.getInventoryItem('fish').count
	local Fish2 = xPlayer.getInventoryItem('fish2').count
	local Fish3 = xPlayer.getInventoryItem('fish3').count
	local Boot = xPlayer.getInventoryItem('boot').count

	local payment = math.random(Config.FishPrice.a, Config.FishPrice.b)


	if Fish1 > 0 then
		xPlayer.removeInventoryItem('fish', 1)
		xPlayer.addMoney(payment)
	else
		TriggerClientEvent('fishing:message', _source, "Vous n'avez plus de petits poissons")
	end

	if Fish2 > 0 then
		xPlayer.removeInventoryItem('fish2', 1)
		xPlayer.addMoney(payment + 10)
	else
		TriggerClientEvent('fishing:message', _source, "Vous n'avez plus de poisson moyen")
	end

	if Fish3 > 0 then
		xPlayer.removeInventoryItem('fish3', 1)
		xPlayer.addMoney(100)
	else
		TriggerClientEvent('fishing:message', _source, "Vous n'avez plus d'énormes poissons")
	end

	if Boot > 0 then
		xPlayer.removeInventoryItem('boot', 1)
		xPlayer.addMoney(1)
	else
		TriggerClientEvent('fishing:message', _source, "Tu n'as plus de bottes")
	end
end)

ESX = nil
local hasAlreadyEnteredMarker, lastZone
local currentAction, currentActionMsg, currentActionData = nil, nil, {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(5000)
end)

function OpenShopMenu(zone)
    local items = {}
    for i=1, #Config.Shops[zone].Items, 1 do
        local item = Config.Shops[zone].Items[i]

        table.insert(items, {
            type = item.type,
            name = item.name,
            price = item.price,
			blackMoney = item.blackMoney
        })
    end

    TriggerEvent('inventory:openShop', tostring(zone), 'Superette - <b>' .. tostring(zone) .. '</b>', items)
end

AddEventHandler('shops:hasEnteredMarker', function(zone)
	currentAction     = 'shop_menu'
currentActionMsg  = ''
	    exports['okokTextUI']:Open('<i>Superette</i> Appuyez sur <b><u>E</u></b> pour accéder au <b>' .. tostring(zone) .. '', 'darkgreen', 'right')
	currentActionData = {zone = zone}
end)

AddEventHandler('shops:hasExitedMarker', function(zone)
	currentAction = nil
exports['okokTextUI']:Close()
end)

Citizen.CreateThread(function(zone)
	for k,v in pairs(Config.Shops) do
		for i = 1, #v.Pos, 1 do
			if v.ShowBlip then
				local blip = AddBlipForCoord(v.Pos[i])

				SetBlipSprite(blip, v.Type)
				SetBlipScale(blip, v.Size)
				SetBlipColour(blip, v.Color)

				SetBlipAsShortRange(blip, true)
				BeginTextCommandSetBlipName('STRING')
				AddTextComponentSubstringPlayerName(v.MarkerLabel)
				EndTextCommandSetBlipName(blip)
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)

		local isInMarker, letSleep, currentZone = false, false
		for k,v in pairs(Config.Shops) do
			for i = 1, #v.Pos, 1 do
				local distance = GetDistanceBetweenCoords(v.Pos[i], GetEntityCoords(PlayerPedId()), true)

				if distance < 10.0 then
					if v.ShowMarker then
						DrawMarker(2, v.Pos[i].x, v.Pos[i].y, v.Pos[i].z - 0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 125, 255, 125, 100, false, true, 0, false)
				  	end

					letSleep = false

					if distance < 2.0 then
						isInMarker  = true
						currentZone = k
						lastZone    = k
					end
				end
			end
		end

		if isInMarker and not hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = true
			TriggerEvent('shops:hasEnteredMarker', currentZone)
		end

		if not isInMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
			TriggerEvent('shops:hasExitedMarker', lastZone)
		end

		if letSleep then
			Citizen.Wait(500)
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if currentAction then
			ESX.ShowHelpNotification(currentActionMsg)

			if IsControlJustReleased(0, 38) then
				if currentAction == 'shop_menu' then
					OpenShopMenu(currentActionData.zone)
				end

				currentAction = nil
			end
		else
			Citizen.Wait(500)
		end
	end
end)

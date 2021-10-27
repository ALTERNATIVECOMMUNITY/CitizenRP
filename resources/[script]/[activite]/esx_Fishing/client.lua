ESX = nil
Citizen.CreateThread(function()
	while true do
		Wait(5)
		if ESX ~= nil then

		else
			ESX = nil
			TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		end
	end
end)

local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local fishing = false
local lastInput = 0
local pause = false
local pausetimer = 0
local correct = 0

for _, v in ipairs(Config.Sell) do
	local blip = AddBlipForCoord(v.pos)
	SetBlipSprite (blip, v.blip)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 0.8)
	SetBlipColour (blip, v.colour)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(v.sellText)
	EndTextCommandSetBlipName(blip)
end

for _, info in pairs(Config.MarkerZones) do
	info.blip = AddBlipForCoord(info.Marker)
	SetBlipSprite(info.blip, 84)
	SetBlipDisplay(info.blip, 4)
	SetBlipScale(info.blip, 0.8)
	SetBlipColour(info.blip, 0)
	SetBlipAsShortRange(info.blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Location de bateaux")
	EndTextCommandSetBlipName(info.blip)
end

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(0)
			local ped = PlayerPedId()
			local pedCoords = GetEntityCoords(ped)

			-- Rental Markers
			for k, v in pairs(Config.MarkerZones) do
				if #(pedCoords - v.Marker) < 100.0 then
					DrawMarker(1, v.Marker, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, 1.0, 255, 255, 0, 100, 0, 0, 0, 0)
				end
				if #(pedCoords - v.Return) < 100.0 and IsPedInAnyVehicle(ped) then
					DrawMarker(1, v.Return, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 2.0, 2.0, 1.0, 255, 0, 0, 100, false, true, 2, false, false, false, false)
					if #(pedCoords - v.Return) < 5.0 then
						if DoesEntityExist(veh) and GetVehiclePedIsIn(ped) == veh then
							DisplayHelpText('Press ~INPUT_CONTEXT~ to return the boat')
							if IsControlJustReleased(0, Keys['E']) then
								for _, q in pairs(Config.RentalBoats) do
									if GetEntityModel(veh) == GetHashKey(q.model) then
										local deposit = math.floor(q.price / 2)
										TriggerServerEvent('fishing:returnDeposit', GetHashKey(q.model))
										--ESX.ShowNotification("You have been returned your deposit of ~g~$" .. deposit)
										exports['mythic_notify']:SendAlert('inform', "You have been returned your deposit of $" .. deposit)
									end
								end
								SetEntityAsMissionEntity(veh)
								DeleteEntity(veh)
								TriggerServerEvent("deleteThisEntity", NetworkGetNetworkIdFromEntity(veh))
								SetEntityCoords(ped, v.Marker)
							end
						else
							DisplayHelpText('This is not a rented vehicle')
						end
					end
				end
			end

			-- Sell markers
			for k, v in ipairs(Config.Sell) do
				if #(pedCoords - v.pos) < 100.0 then
					DrawMarker(1, v.pos, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 2.0, 2.0, 1.0, 0, 255, 0, 100, false, true, 2, false, false, false, false)
				end
				if #(pedCoords - v.pos) < 3.0 and not SellWait then
					DrawMarker(1, v.pos, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 2.0, 2.0, 1.0, 0, 255, 0, 100, false, true, 2, false, false, false, false)
					TriggerServerEvent('fishing:startSelling')
					SellWait = true
				end
			end
		end
	end)

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(0)
			if SellWait then
				Citizen.Wait(4000)
				SellWait = false
			end
		end
	end)

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

Citizen.CreateThread(function()
	while true do
		Wait(600)
		if pause and fishing then
			pausetimer = pausetimer + 1
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(5)
		if fishing then

			HideHudComponentThisFrame(19) -- hide weapon wheel

		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(5)
		if fishing then

			if IsControlJustReleased(0, Keys['1']) then
				 input = 1
			end
			if IsControlJustReleased(0, Keys['2']) then
				input = 2
			end
			if IsControlJustReleased(0, Keys['3']) then
				input = 3
			end
			if IsControlJustReleased(0, Keys['4']) then
				input = 4
			end

			if IsControlJustReleased(0, Keys['X']) then
				fishing = false
				--ESX.ShowNotification("~r~Stopped fishing")
				--exports['mythic_notify']:SendAlert('error', "Stopped fishing")
				exports['okokNotify']:Alert("Citizen-V", "Tu arrete la peche ...", 5000, 'error')
				ClearPedTasks(GetPlayerPed(-1))
			end
			if fishing then

				playerPed = GetPlayerPed(-1)
				local pos = GetEntityCoords(GetPlayerPed(-1))
				if pos.y >= 7700 or pos.y <= -4000 or pos.x <= -3700 or pos.x >= 4300 or IsPedInAnyVehicle(GetPlayerPed(-1)) then

				else
					fishing = false
					--ESX.ShowNotification("~r~Stopped fishing")
					--exports['mythic_notify']:SendAlert('error', "Stopped fishing")
					exports['okokNotify']:Alert("Citizen-V", "Tu arrete la peche ...", 5000, 'error')
				end
				if IsEntityDead(playerPed) or IsEntityInWater(playerPed) then
					--ESX.ShowNotification("~r~Stopped fishing")
				--	exports['mythic_notify']:SendAlert('error', "Stopped fishing")
					exports['okokNotify']:Alert("Citizen-V", "Tu arrete la peche", 5000, 'error')
				end
			end



			if pausetimer > 5 then
				input = 99
			end

			if pause and input ~= 0 then
				pause = false
				if input == correct then
					TriggerServerEvent('fishing:catch')
					TriggerEvent('esx_status:remove', 'stress', 100000)
				else
				--	ESX.ShowNotification("")
					exports['okokNotify']:Alert("Citizen-V", "Le poissons s'est barré ...", 5000, 'error')
					--exports['mythic_notify']:SendAlert('error', "")
				end
			end
		end
	end
end)



Citizen.CreateThread(function()
	while true do
		local wait = math.random(Config.FishTime.a , Config.FishTime.b)
		Wait(wait)

		if fishing then

			exports.rprogress:Start("Peche", wait)

			pause = true
			correct = math.random(1,4)
			ESX.ShowNotification("Tu as une touche !")
			exports['okokNotify']:Alert("Peche", "Appuis sur <span color='red'>" .. correct .. "</span> pour l'attraper", 5000, 'success')
			--exports['mythic_notify']:SendAlert('success', "")
		--	exports['mythic_notify']:SendAlert('inform', "Appuis sur " .. correct .. " pour l'attraper")

			input = 0
			pausetimer = 0
		end
	end
end)

RegisterNetEvent('fishing:message')
AddEventHandler('fishing:message', function(message)
	ESX.ShowNotification(message)

	--exports['mythic_notify']:SendAlert('inform', message)
end)
RegisterNetEvent('fishing:break')
AddEventHandler('fishing:break', function()
	fishing = false
	ClearPedTasks(GetPlayerPed(-1))
end)

RegisterNetEvent('fishing:fishstart')
AddEventHandler('fishing:fishstart', function()



	playerPed = GetPlayerPed(-1)
	local pos = GetEntityCoords(GetPlayerPed(-1))
	--print('started fishing' .. pos)
	if IsPedInAnyVehicle(playerPed) then
		ESX.ShowNotification("Vous ne pouvez pas pêcher depuis un véhicule")
	--	exports['mythic_notify']:SendAlert('error', "Vous ne pouvez pas pêcher depuis un véhicule")
	else
		if pos.y >= 7700 or pos.y <= -4000 or pos.x <= -3700 or pos.x >= 4300 then
			ESX.ShowNotification("La peche commence")
			--exports['mythic_notify']:SendAlert('success', "Fishing started")
			TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_STAND_FISHING", 0, true)
			fishing = true
		else
			ESX.ShowNotification("Tu dois allez plus au large !")
			--exports['mythic_notify']:SendAlert('error', "You need to go further away from the shore")
		end
	end

end, false)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k, v in pairs(Config.MarkerZones) do
        	local ped = PlayerPedId()
			local pedc = GetEntityCoords(ped, false)
            local distance = #(pedc - v.Marker)
            if distance <= 1.40 then
				DisplayHelpText('Appuis sur ~INPUT_CONTEXT~ Pour louer un bateau')

				if IsControlJustPressed(0, Keys['E']) and IsPedOnFoot(ped) then
					OpenBoatsMenu(v.Spawn, v.SpawnHeading)
				end
			elseif distance < 1.45 then
				ESX.UI.Menu.CloseAll()
            end
        end
    end
end)

function OpenBoatsMenu(xyz, h)
	local ped = PlayerPedId()
	PlayerData = ESX.GetPlayerData()
	local elements = {}

	for k, v in ipairs(Config.RentalBoats) do
		table.insert(elements, {
			label = ('%s - $%s'):format(GetLabelText(GetDisplayNameFromVehicleModel(v.model)), ESX.Math.GroupDigits(v.price)),
			value = v.model
		})
	end

	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'client',
    {
		title    = 'Rent a boat',
		align    = 'right',
		elements = elements,
    },

	function(data, menu)

	for k, v in ipairs(Config.RentalBoats) do
		if data.current.value == v.model then
			ESX.UI.Menu.CloseAll()
			TriggerServerEvent("fishing:lowmoney", GetHashKey(v.model))
			RequestTheModel(v.model)
			veh = CreateVehicle(v.model, xyz, h, true, false)
			SetPedIntoVehicle(ped, veh, -1)
			TriggerEvent("ls:newVehicle", GetVehicleNumberPlateText(veh), veh, 0)

			local plate = GetVehicleNumberPlateText(veh)
			TriggerServerEvent('garage:addKeys', plate)

			exports["LegacyFuel"]:SetFuel(veh, 100)

			DecorSetInt(veh, "ControlCar", 1)
			local deposit = math.floor(v.price / 2)
			ESX.ShowNotification("Tu as payé $" .. deposit .. " frai de location $" .. deposit .. " deposé.")
			--exports['mythic_notify']:SendAlert('inform', "Tu as payé $" .. deposit .. " frai de location $" .. deposit .. " deposé.")
			ESX.ShowNotification("Rendre le batteau" .. GetLabelText(GetDisplayNameFromVehicleModel(v.model)) .. "Pour recupérer votre caution")
			--exports['mythic_notify']:SendAlert('inform', "Return the " .. GetLabelText(GetDisplayNameFromVehicleModel(v.model)) .. " to get your deposit back")
            SetModelAsNoLongerNeeded(v.model)
		end
	end

	ESX.UI.Menu.CloseAll()

    end,
	function(data, menu)
		menu.close()
		end
	)
end
function RequestTheModel(model)
	RequestModel(model)
	while not HasModelLoaded(model) do
		Citizen.Wait(0)
	end
end


local anchored = false
local boat = nil

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

		local ped = GetPlayerPed(-1)

		if IsPedInAnyBoat(ped) then
			boat  = GetVehiclePedIsIn(ped, true)
		end
	end
end)

RegisterCommand("anchor", function(source)

	local ped = GetPlayerPed(-1)

	if not IsPedInAnyVehicle(ped) and boat ~= nil then
		if not anchored then
			TaskStartScenarioInPlace(ped, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
			exports.rprogress:Start("Jeter l'Ancre", 10000)
			--Citizen.Wait(10000)
			SetBoatAnchor(boat, true)
			FreezeEntityPosition(boat, true)
		else
			TaskStartScenarioInPlace(ped, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
			exports.rprogress:Start("Lever l'Ancre", 10000)
			--Citizen.Wait(10000)
			SetBoatAnchor(boat, false)
			FreezeEntityPosition(boat, false)
		end
		anchored = not anchored
	end
end)

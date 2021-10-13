ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

--------------------------------------------------------------------------------
local Shipments, PickupBlip, GatePoint
local PlayerData = {}
local JobStarted,Gate,work,haspackage,TrunkOpen = false,false,false,false,false
local custormersdone = 0

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

Citizen.CreateThread(function()
	local StartJobBlip = AddBlipForCoord(Config.Courier['Jobstart'].Pos.x, Config.Courier['Jobstart'].Pos.y, Config.Courier['Jobstart'].Pos.z)


	SetBlipSprite (StartJobBlip, 408)
	SetBlipDisplay(StartJobBlip, 4)
	SetBlipScale  (StartJobBlip, 0.8)
	SetBlipColour (StartJobBlip, 0)
	SetBlipAsShortRange(StartJobBlip, true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Poste')
	EndTextCommandSetBlipName(StartJobBlip)
end)


--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

Citizen.CreateThread(function()
	while true do
		local sleep = 500
		local ped = PlayerPedId()
		local coords = GetEntityCoords(ped)

		if PlayerData.job ~= nil and PlayerData.job.grade_name == 'courier' then
			if(GetDistanceBetweenCoords(coords, Config.Courier['Jobstart'].Pos.x, Config.Courier['Jobstart'].Pos.y, Config.Courier['Jobstart'].Pos.z, true) < 8.0) then
				sleep = 5

				DrawMarker(Config.Courier['Jobstart'].Type, Config.Courier['Jobstart'].Pos.x, Config.Courier['Jobstart'].Pos.y, Config.Courier['Jobstart'].Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.Courier['Jobstart'].Size.x, Config.Courier['Jobstart'].Size.y, Config.Courier['Jobstart'].Size.z, Config.Courier['Jobstart'].Color.r, Config.Courier['Jobstart'].Color.g, Config.Courier['Jobstart'].Color.b, 100, false, true, 2, false, false, false, false)
				DrawMarker(29, Config.Courier['Jobstart'].Pos.x, Config.Courier['Jobstart'].Pos.y, Config.Courier['Jobstart'].Pos.z+0.90, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, 143, 235, 77, 100, false, true, 2, false, false, false, false)
				if(GetDistanceBetweenCoords(coords, Config.Courier['Jobstart'].Pos.x, Config.Courier['Jobstart'].Pos.y, Config.Courier['Jobstart'].Pos.z, true) < 1.5) then
					if not JobStarted then
						DrawText3Ds(Config.Courier['Jobstart'].Pos.x, Config.Courier['Jobstart'].Pos.y, Config.Courier['Jobstart'].Pos.z+1.4, 'Pour commencer le travail, appuyez sur [E]')
						if IsControlJustReleased(0, Keys['E']) and not IsPedInAnyVehicle(ped, false) then
							exports.pNotify:SendNotification({text = '<b>Courier</b></br>Job started, go to loading station!', timeout = 1500})
							JobStarted = true
							CreatePickupBlip()
						elseif IsControlJustReleased(0, Keys['E']) and IsPedInAnyVehicle(ped, false) then
							exports.pNotify:SendNotification({text = '<b>Courier</b></br>Leave the vehicle!', timeout = 1500})
						end
					else
						DrawText3Ds(Config.Courier['Jobstart'].Pos.x, Config.Courier['Jobstart'].Pos.y, Config.Courier['Jobstart'].Pos.z+1.4, 'Pour terminer le travail, appuyez sur [E]')
						if IsControlJustReleased(0, Keys['E']) and not IsPedInAnyVehicle(ped, false) then
							exports.pNotify:SendNotification({text = '<b>Poste</b></br>Travail terminé', timeout = 1500})
							ESX.Game.DeleteVehicle(Vehicle)
							JobStarted = false
							Gate = false
							haspackage = false
							TrunkOpen = false
							Shipments = nil
							PickupBlip = nil
							GatePoint = nil
							Vehicle = nil
							custormersdone = 0
							RemoveBlip(PickupBlip)
							RemoveBlip(GateBlip)
							for i, v in pairs(Config.Courier['Customers']) do
								RemoveBlip(v.blip)
								v.done = false
								ClearPedTasksImmediately(v.ped)
								DeletePed(v.ped)
							end

							ClearPedTasks(ped)
							DeleteEntity(pack)
							DeleteEntity(pack2)
						elseif IsControlJustReleased(0, Keys['E']) and IsPedInAnyVehicle(ped, false) then
							exports.pNotify:SendNotification({text = '<b>Poste</b></br>Quitter le véhicule!', timeout = 1500})
								 exports['t1ger_keys']:GiveJobKeys('POSTE', 'Camion Poste', false, {'courier'})
						end
					end
				end
			elseif(GetDistanceBetweenCoords(coords, Config.Courier['Pickup'].Pos.x, Config.Courier['Pickup'].Pos.y, Config.Courier['Pickup'].Pos.z, true) < 8.0) and JobStarted and not Shipments then
				sleep = 5

				DrawMarker(Config.Courier['Pickup'].Type, Config.Courier['Pickup'].Pos.x, Config.Courier['Pickup'].Pos.y, Config.Courier['Pickup'].Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.Courier['Pickup'].Size.x, Config.Courier['Pickup'].Size.y, Config.Courier['Pickup'].Size.z, Config.Courier['Pickup'].Color.r, Config.Courier['Pickup'].Color.g, Config.Courier['Pickup'].Color.b, 100, false, true, 2, false, false, false, false)
				DrawMarker(30, Config.Courier['Pickup'].Pos.x, Config.Courier['Pickup'].Pos.y, Config.Courier['Pickup'].Pos.z+0.90, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 255, 255, 100, false, true, 2, false, false, false, false)
				if(GetDistanceBetweenCoords(coords, Config.Courier['Pickup'].Pos.x, Config.Courier['Pickup'].Pos.y, Config.Courier['Pickup'].Pos.z, true) < 1.5) then
					DrawText3Ds(Config.Courier['Pickup'].Pos.x, Config.Courier['Pickup'].Pos.y, Config.Courier['Pickup'].Pos.z+1.4, 'To pick up the parcels, press [E]')
					if IsControlJustReleased(0, Keys['E']) and not IsPedInAnyVehicle(ped, false) then
						if ESX.Game.IsSpawnPointClear(Config.Courier['Carspawn'].Pos, 2) then
							Shipments = math.random(Config.MinShipments,Config.MaxShipments)
							exports.pNotify:SendNotification({text = '<b>Courier</b></br>Les envois reçus, aujourd\'hui doivent être chargés '..Shipments..' colis!', timeout = 1500})
							RemoveBlip(PickupBlip)
							SpawnVehicle()
						else
							exports.pNotify:SendNotification({text = "<b>Courier</b></br>Le point de réapparition du véhicule est bloqué", timeout = 1500})
						end
					elseif IsControlJustReleased(0, Keys['E']) and IsPedInAnyVehicle(ped, false) then
						exports.pNotify:SendNotification({text = '<b>Courier</b></br>Quitter le véhicule!', timeout = 1500})
					end
				end
			end
		end
	Citizen.Wait(sleep)
	end
end)

function CreatePickupBlip()
	PickupBlip = AddBlipForCoord(Config.Courier['Pickup'].Pos.x, Config.Courier['Pickup'].Pos.y, Config.Courier['Pickup'].Pos.z)

	SetBlipSprite (PickupBlip, 478)
	SetBlipDisplay(PickupBlip, 4)
	SetBlipScale  (PickupBlip, 0.8)
	SetBlipColour (PickupBlip, 0)
	SetBlipAsShortRange(PickupBlip, true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Ramassage')
	EndTextCommandSetBlipName(PickupBlip)
end

function SpawnVehicle()
	Wait(1500)
	if not Vehicle then
		ESX.Game.SpawnVehicle(Config.Courier['Carspawn'].Model, Config.Courier['Carspawn'].Pos, Config.Courier['Carspawn'].Heading, function(vehicle)
			Vehicle = vehicle
			exports.pNotify:SendNotification({text = "<b>Courier</b></br>Votre véhicule est arrivé, entrez-y et conduisez jusqu'à la porte d'où vous recevrez des colis", timeout = 4500})
			CreateGate()
			ESX.Game.SetVehicleProperties(vehicle, {
			 plate = 'POSTE',
	 })
exports['t1ger_keys']:SetVehicleLocked(vehicle, 0)
	 exports['t1ger_keys']:GiveJobKeys('POSTE', 'Camion Poste', true, {'courier'})


		end)
	else
		CreateGate()
	end
end


function CreateGate()
	Gate = true
	GatePoint = Randomize(Config.Courier['Gate'])

	GateBlip = AddBlipForCoord(GatePoint.x, GatePoint.y, GatePoint.z)
	SetBlipSprite (GateBlip, 478)
	SetBlipDisplay(GateBlip, 4)
	SetBlipScale  (GateBlip, 0.8)
	SetBlipColour (GateBlip, 0)
	SetBlipAsShortRange(GateBlip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Gate')
	EndTextCommandSetBlipName(GateBlip)
end

Citizen.CreateThread(function()
	while true do
		local sleep = 500
		local ped = PlayerPedId()
		local coords = GetEntityCoords(ped)

		if PlayerData.job ~= nil and PlayerData.job.grade_name == 'courier' then
			if Gate and JobStarted then
				if(GetDistanceBetweenCoords(coords, GatePoint.x, GatePoint.y, GatePoint.z, true) < 12.0) then
					sleep = 5

					DrawMarker(21, GatePoint.x, GatePoint.y, GatePoint.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 255, 255, 100, false, true, 2, false, false, false, false)
					if(GetDistanceBetweenCoords(coords, GatePoint.x, GatePoint.y, GatePoint.z, true) < 3.0) then
						DrawText3Ds(GatePoint.x, GatePoint.y, GatePoint.z+1.4, 'Pour récupérer la cargaison, appuyez sur [E]')
						if IsControlJustReleased(0, Keys['E']) and IsPedInAnyVehicle(ped, false) then
							local veh = GetVehiclePedIsIn(ped, false)
							local vheading = GetEntityHeading(veh)
							local namecar = GetDisplayNameFromVehicleModel(GetEntityModel(veh))
							if namecar == 'MULE' then
								if (GatePoint.h<361 and GatePoint.h>340) or (GatePoint.h<21 and GatePoint.h>=0) then
									if (vheading<361 and vheading>340) or (vheading<21 and vheading>=0) then
										Gate = false
										TrunkOpen = true
										exports.rprogress:Custom({
											Duration = Shipments*1500,
											Label = "Chargement de colis dans le véhicule...",
											Animation = {
												scenario = "", -- https://pastebin.com/6mrYTdQv
												animationDictionary = "", -- https://alexguirre.github.io/animations-list/
											},
											DisableControls = {
												Mouse = false,
												Player = true,
												Vehicle = true
											}
										})
										Citizen.Wait(Shipments*1500)
										exports.pNotify:SendNotification({text = '<b>Courier</b></br>Le véhicule a été chargé, rendez-vous chez les clients!', timeout = 1500})
										RemoveBlip(GateBlip)
										StartWork()
									else
										exports.pNotify:SendNotification({text = '<b>Courier</b></br>Tenez le véhicule droit, dos au portail!', timeout = 1500})
									end
								else
									if (vheading<GatePoint.h and vheading>GatePoint.h-20.0) or (vheading>GatePoint.h and vheading<GatePoint.h+20.0) then
										Gate = false
										TrunkOpen = true
										exports.rprogress:Custom({
											Duration = Shipments*1500,
											Label = "Chargement de colis dans le véhicule...",
											Animation = {
												scenario = "", -- https://pastebin.com/6mrYTdQv
												animationDictionary = "", -- https://alexguirre.github.io/animations-list/
											},
											DisableControls = {
												Mouse = false,
												Player = true,
												Vehicle = true
											}
										})
										Citizen.Wait(Shipments*1500)
										exports.pNotify:SendNotification({text = '<b>Courier</b></br>Le véhicule a été chargé, rendez-vous chez les clients!', timeout = 1500})
										RemoveBlip(GateBlip)
										StartWork()
									else
										exports.pNotify:SendNotification({text = '<b>Courier</b></br>Tenez le véhicule droit, dos au portail!', timeout = 1500})
									end
								end
							else
								exports.pNotify:SendNotification({text = '<b>Courier</b></br>Ce n\'est pas un véhicule de livraison!', timeout = 1500})
							end
						elseif IsControlJustReleased(0, Keys['E']) and not IsPedInAnyVehicle(ped, false) then
							exports.pNotify:SendNotification({text = '<b>Courier</b></br>Montez dans le véhicule!', timeout = 1500})
						end
					end
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)

function StartWork()
	for i, v in pairs(Config.Courier['Customers']) do
		if Shipments and i > Shipments then break end
		v.blip = AddBlipForCoord(v.x, v.y, v.z)
		SetBlipSprite (v.blip, 128)
		SetBlipDisplay(v.blip, 4)
		SetBlipScale  (v.blip, 0.8)
		SetBlipColour (v.blip, 5)
		SetBlipAsShortRange(v.blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString('Client')
		EndTextCommandSetBlipName(v.blip)

		local ped_hash = GetHashKey(Config.Courier['Peds'][math.random(1,#Config.Courier['Peds'])].ped)
		RequestModel(ped_hash)
		while not HasModelLoaded(ped_hash) do
			Citizen.Wait(1)
		end
		v.ped = CreatePed(1, ped_hash, v.x, v.y, v.z-0.5, v.h, false, true)
		SetBlockingOfNonTemporaryEvents(v.ped, true)
		SetPedDiesWhenInjured(v.ped, false)
		SetPedCanPlayAmbientAnims(v.ped, true)
		SetPedCanRagdollFromPlayerImpact(v.ped, false)
		SetEntityInvincible(v.ped, true)
  		FreezeEntityPosition(v.ped, true)
	end
	work = true
end

Citizen.CreateThread(function()
	while true do
		local sleep = 500
		local ped = PlayerPedId()
		local coords = GetEntityCoords(ped)
			if PlayerData.job ~= nil and PlayerData.job.grade_name == 'courier' then
				if Vehicle and not IsPedInAnyVehicle(ped, false) and JobStarted and Shipments and TrunkOpen then
					local trunkpos = GetOffsetFromEntityInWorldCoords(Vehicle, 0, -3.8, 0)
						if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, trunkpos.x, trunkpos.y, trunkpos.z, true) < 2.5 then
							sleep = 5
							if not haspackage then
								DrawText3Ds(trunkpos.x, trunkpos.y, trunkpos.z + 0.15, "Pour récupérer le colis dans le camion, appuyez sur [E]")
							else
								DrawText3Ds(trunkpos.x, trunkpos.y, trunkpos.z + 0.15, "Pour mettre un colis dans un camion, appuyez sur [E]")
							end
							if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, trunkpos.x, trunkpos.y, trunkpos.z, true) < 1.5 then
								if IsControlJustReleased(0, Keys["E"]) and not haspackage then
									haspackage = true
									SetVehicleDoorsLocked(Vehicle, 2)
									RequestAnimDict("anim@heists@box_carry@")
									while (not HasAnimDictLoaded("anim@heists@box_carry@")) do
										Citizen.Wait(7)
									end
									TaskPlayAnim(GetPlayerPed(-1), "anim@heists@box_carry@" ,"idle", 5.0, -1, -1, 50, 0, false, false, false)
									pack = CreateObject(GetHashKey('prop_cs_cardbox_01'), coords.x, coords.y, coords.z,  true,  true, true)
									AttachEntityToEntity(pack, ped, GetPedBoneIndex(ped, 57005), 0.05, 0.1, -0.3, 300.0, 250.0, 20.0, true, true, false, true, 1, true)
									Citizen.Wait(500)
								elseif IsControlJustReleased(0, Keys["E"]) and haspackage then
									haspackage = false
									SetVehicleDoorsLocked(Vehicle, 1)
									ClearPedTasks(ped)
									TaskPlayAnim(ped, 'anim@heists@box_carry@', "exit", 3.0, 1.0, -1, 49, 0, 0, 0, 0)
									DeleteEntity(pack)
									Citizen.Wait(500)
								end
							end
						end
				end
			end
		Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function()
	while true do
		local sleep = 500
		if AnimLoop then
			sleep = 5
			TaskPlayAnim(GetPlayerPed(-1), "anim@heists@box_carry@" ,"idle", 5.0, -1, -1, 50, 0, false, false, false)
		end
	Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function()
	while true do
		local sleep = 500
		local ped = PlayerPedId()
		local coords = GetEntityCoords(ped)
			if PlayerData.job ~= nil and PlayerData.job.grade_name == 'courier' then
				if work then
					sleep = 5
					for i, v in ipairs(Config.Courier['Customers']) do
						if Shipments and i > Shipments then break end
						if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < 2) and not v.done then
							DrawText3Ds(v.x, v.y, v.z+0.5, 'Pour donner le paquet, appuyez sur [E]')
							if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < 1.5) and not v.done then
								if IsControlJustReleased(0, Keys['E']) and not IsPedInAnyVehicle(ped, false) and haspackage then
									v.done = true
									time = math.random(1000,2100)
									exports.rprogress:Custom({
										Duration = time,
										Label = "Remise d'un colis...",
										Animation = {
											scenario = "", -- https://pastebin.com/6mrYTdQv
											animationDictionary = "", -- https://alexguirre.github.io/animations-list/
										},
										DisableControls = {
											Mouse = false,
											Player = true,
											Vehicle = true
										}
									})
									Citizen.Wait(time)


										haspackage = false
										SetVehicleDoorsLocked(Vehicle, 1)
										ClearPedTasks(ped)
										TaskPlayAnim(ped, 'anim@heists@box_carry@', "exit", 3.0, 1.0, -1, 49, 0, 0, 0, 0)
										DeleteEntity(pack)

										FreezeEntityPosition(v.ped, false)
										TaskTurnPedToFaceEntity(v.ped, PlayerPedId(), 0.2)
										local coordsPED = GetEntityCoords(v.ped)
										startAnim(v.ped, 'anim@heists@box_carry@', 'idle')
										pack2 = CreateObject(GetHashKey('prop_cs_cardbox_01'), coordsPED.x, coordsPED.y, coordsPED.z,  true,  true, true)
										AttachEntityToEntity(pack2, v.ped, GetPedBoneIndex(v.ped, 57005), 0.05, 0.1, -0.3, 300.0, 250.0, 20.0, true, true, false, true, 1, true)
										Citizen.Wait(1000)

										TaskGoStraightToCoord(v.ped, v.gotoX, v.gotoY, v.gotoZ, 1.0, 1.0, v.gotoH, 1)
										local displaying = true
										local RandomText = Config.Courier['Text'][math.random(1,#Config.Courier['Text'])].text
										Citizen.CreateThread(function()
											Wait(5000)
											displaying = false
										end)
										while displaying do
											Wait(0)
											local coordsPed = GetEntityCoords(v.ped, false)
											local coords = GetEntityCoords(PlayerPedId(), false)
											local dist = Vdist2(coordsPed, coords)
											if dist < 150 then
												DrawText3Ds(coordsPed['x'], coordsPed['y'], coordsPed['z'] + 1.2, RandomText)
											end
										end
										ClearPedTasksImmediately(v.ped)
										DeleteEntity(pack2)
										DeletePed(v.ped)

									RemoveBlip(v.blip)
									ESX.TriggerServerCallback('inside-Courier:payout', function(money)
										exports.pNotify:SendNotification({text = '<b>Courier</b></br>Vous avez gagné '..money..'$', timeout = 1500})
									end)
									custormersdone = custormersdone + 1
									if custormersdone >= Shipments then
										haspackage = false
										ClearPedTasks(ped)
										DeleteEntity(pack)
										work = false
										custormersdone = 0

										RemoveBlip(PickupBlip)
										RemoveBlip(GateBlip)
										for i, v in pairs(Config.Courier['Customers']) do
											RemoveBlip(v.blip)
											v.done = false
										end

										Shipments = nil
										Gate = false
										TrunkOpen = false
										CreatePickupBlip()
										Citizen.Wait(1000)
										exports.pNotify:SendNotification({text = '<b>Courier</b></br>Vous les avez tous livrés, rendez-vous à la base après la ligne de commande', timeout = 3500})
									else
										Citizen.Wait(1000)
										exports.pNotify:SendNotification({text = '<b>Courier</b></br>Aller au prochain client ('..custormersdone..'/'..Shipments..')', timeout = 1500})
									end
								elseif IsControlJustReleased(0, Keys['E']) and not IsPedInAnyVehicle(ped, false) and not haspackage then
									exports.pNotify:SendNotification({text = '<b>Courier</b></br>Sortez le premier colis du camion', timeout = 1500})
								end
							end
						end
					end
				end
			end
		Citizen.Wait(sleep)
	end
end)

function Randomize(tb)
	local keys = {}
	for k in pairs(tb) do table.insert(keys, k) end
	return tb[keys[math.random(#keys)]]
end

function startAnim(ped, dictionary, anim)
	Citizen.CreateThread(function()
	  RequestAnimDict(dictionary)
	  while not HasAnimDictLoaded(dictionary) do
		Citizen.Wait(0)
	  end
		TaskPlayAnim(ped, dictionary, anim ,8.0, -8.0, -1, 50, 0, false, false, false)
	end)
end

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

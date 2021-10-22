Config                 = {}
Config.DrawDistance    = 100.0
Config.MaxErrors       = 5
Config.SpeedMultiplier = 3.6
Config.Locale          = 'fr'

Config.Prices = {
	dmv         = 500,
	drive       = 2500,
	drive_bike  = 3000,
	drive_truck = 5000
}

Config.VehicleModels = {
	drive       = 'asbo',
	drive_bike  = 'pcj',
	drive_truck = 'pounder2'
}

Config.SpeedLimits = {
	residence = 80,
	town      = 80,
	freeway   = 150,
}

Config.Zones = {

	DMVSchool = { -- ,,
		Pos   = {x = 1158.6180419922, y = -450.0322265625, z = 66.990310668945},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1
	},

	VehicleSpawnPoint = {
		Pos   = {x = 1156.9884033203, y = -475.23049926758, z = 66.399635314941, h = 247.76},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = -1
	}

}

Config.CheckPoints = {

	--{
	--	Pos = {x = 250.13, y = 380.25, z = 120,05},
	--	Action = function(playerPed, vehicle, setCurrentZoneType)
	--		DrawMissionText(_U('next_point_speed', Config.SpeedLimits['residence']), 5000)
	--	end
	--},

	{ -- ,,
		Pos = {x = 1161.2358398438, y = -476.87445068359, z = 65.511253356934},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{

		Pos = {x = 1084.9195556641, y = -515.07293701172, z = 62.816177368164},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_for_ped'), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(4000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_lets_cont'), 5000)
			end)
		end
	},

	{
		Pos = {x = 922.11779785156, y = -586.04754638672, z = 57.317771911621},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')

			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_look_left', Config.SpeedLimits['town']), 5000)
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Citizen.Wait(6000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_turn_right'), 5000)
			end)
		end
	},

	{  -- ,-
		Pos = {x = 1189.7210693359, y = -371.37118530273, z = 68.770431518555},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('watch_traffic_lightson'), 5000)
		end
	},

	{ -- ,,
		Pos = {x = 811.26013183594, y = -64.622184753418, z = 80.465843200684},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{ -- ,,
		Pos = {x = 714.61431884766, y = 1.768655538559, z = 83.815376281738},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('stop_for_passing'), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
			FreezeEntityPosition(vehicle, true)
			Citizen.Wait(6000)
			FreezeEntityPosition(vehicle, false)
		end
	},

	{ -- ,,
		Pos = {x = 510.61376953125, y = -131.35252380371, z = 59.510108947754},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{ -- ,,
		Pos = {x = 484.42849731445, y = -292.19314575195, z = 46.735324859619},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{ -- ,,
		Pos = {x = 518.13439941406, y = -363.45190429688, z = 43.402431488037},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('freeway')

			DrawMissionText(_U('hway_time', Config.SpeedLimits['freeway']), 5000)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
		end
	},

	{

		-- ,
		Pos = {x = 849.74407958984, y = -721.61346435547, z = 42.374912261963},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{ -- ,,
		Pos = {x = 1013.8765258789, y = -822.74157714844, z = 47.924034118652},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')

			DrawMissionText(_U('hway_time', Config.SpeedLimits['town']), 5000)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{ -- ,,
		Pos = {x = 1150.0520019531, y = -838.56201171875, z = 54.419300079346},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{ -- ,,
		Pos = {x = 1186.5129394531, y = -644.86584472656, z = 62.202117919922},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{ -- ,5,
		Pos = {x = 1210.6569824219, y = -389.372070312, z = 68.282745361328},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{ -- ,
		Pos = {x = 1178.7886962891, y = -475.86560058594, z = 65.788215637207},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},



	--{
		--Pos = {x = 1225.759, y = -1948.792, z = 38.718},
		--Action = function(playerPed, vehicle, setCurrentZoneType)
			--setCurrentZoneType('town')
			--DrawMissionText(_U('in_town_speed', Config.SpeedLimits['town']), 5000)
		--end
	--},

	--{
		--Pos = {x = 1163.603, y = -1841.771, z = 35.679},
		--Action = function(playerPed, vehicle, setCurrentZoneType)
			--DrawMissionText(_U('gratz_stay_alert'), 5000)
			--PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
		--end
	--},

	{ --,,
		Pos = {x = 1156.7221679688, y = -471.58508300781, z = 66.345642089844},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			ESX.Game.DeleteVehicle(vehicle)
		end
	}

}

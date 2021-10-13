Config                            = {}
Config.DrawDistance               = 5.0 -- Distance in GTA units you will see the markers
Config.DrawTextDistance			  = 2.0 -- Distance in GTA units from which you will see the DrawTex3D (if is enabled)
--JobConfig
Config.Jobs						  = {}
Config.MaxInService               = -1
Config.Locale                     = 'en'
Config.UseAnimations			  = true -- Enables/Diasbles animations for fixing vehicle, writing bills and etc. ...
Config.UseMythic_Progressbar	  = false -- Enables/Diasbles opening Mythic progress bar while doing an animation
Config.NeedItemCuffs			  = true -- Enables/Diasbles requirement of handcuffs as item
Config.UseLegacyFuel			  = false -- If true, your vehicle after taking it from garage will have 100% fuel (requires LegacyFuel script)
Config.ShowImpoundNotification	  = true -- Choose, if you want to play an animation while impounding a vehicle
Config.ImpoundAnimationWaitTime	  = 10 * 1000 -- Time, how long the animation for impounding a vehicle will be
Config.EnableLicenses			  = true
Config.MenuAlign 				  = 'top-left' -- Position of ESX Menu
Config.CuffItemName				  = 'cuffs' -- The item name in database you need to have in your inventory to bee able to cuff somebody
Config.GetClientESXEvent  		  = 'esx:getSharedObject' -- Client get ESX event name
Config.FontId					  = 4 -- Config Text Font Id, which is used in DrawText3Ds, you can change it, but must be a number
Config.DiscordLoggingActionsMenu  = false -- If the actions from F6 menu should be logged to the Discord

--Armories part
Config.UseCustomOpenMenuInventory = false -- Change to true if you want to use custom function in client/edit.lua to open the deposit stock menu, leave it false if you want to use esx_menu inventory
Config.UseCustomOpenMenuWeapons = false -- Change to true if you want to use custom function in client/edit.lua to open the deposit weapons menu, leave it false if you want to use esx_menu inventory
Config.UseCustomGetItemsMenu = false -- Change to true if you want to use custom function in client/edit.lua to open the get items menu, leave it false if you want to use esx_menu inventory
Config.UseCustomGetWeaponsMenu = false -- Change to true if you want to use custom function in client/edit.lua to open the get weapons menu, leave it false if you want to use esx_menu inventory

-- Custom markers
Config.UseCustomMarkers = false -- If using custom markers editable in client/edit.lua
Config.CustomMarkerDistance = 2.0 -- Distance in GTA units you need to be close to the marker to be drawn
Config.ChangeMarkerWhenNear = true
Config.DefaultMarker = {
	Size = {x = 0.7, y = 0.7, z = 0.7}, -- Size of the marke
	Color = {r = 255, g = 0, b = 0}, -- The color of the marker
	BouncingMarker = false, -- If the marker should go UP and Down
	RotatingMarker = true, -- If the marker should rotate
	Marker = 21, -- Type of the marker
}

-- Garages
Config.UseCustomGarageEvents = false -- Enable this if you do not want to use the default, sqz_unijob menu and you want to use your custom, check edit.lua for this

Config.BossMenuOnlyBoss = true -- If the bossmenu should be visible only for the boss
Config.BossGrades = { -- Allowed grades for the bossmenu
	['boss'] = true
}

-- Custom events (edit in case you use any custom events)
Config.customEvents = {
    ['esx_billing:sendBill'] = 'esx_billing:sendBill', -- You can change the event if you for example use anticheats/you have editted event like esx_billing:sendSuperSecretEventSquizerBill
    ['esx_society:openBossMenu'] = 'esx_society:openBossMenu',
	['esx:setJob'] = 'esx:setJob',
	['esx_ambulancejob:revive'] = 'esx_ambulancejob:revive',
	['mythic_progressbar:client:progress'] = 'mythic_progbar:client:progress',
}

Config.AlloweAccountsToDeposit = { -- The account name which is allowed to be deposit to the vault
	["bank"] = true, -- Just remove any of these if you do not want to use them
	["black_money"] = true
}

Config.NonJobActions = { -- With these jobs you will be available to collect of other jobs without the job needed
	Enabled = true, -- If the non job actions should be enabled
	Jobs = {
		['vigne'] = true -- Allowed jobs that are written in the Config.Jobs
	},
	AllowedActions = {
		['Selling'] = false, -- Marker types they are allowed, for now you can only disable these, not add any more
		['Collecting'] = true,
		['Craft'] = false
	}
}

Config.Blips = {
	vignerons = {
		BlipCoords = vector3(-1888.5454101562,2050.021484375,140.98434448242), -- Coords for the blip
		Sprite = 478, -- Blips sprite (icon on the map)
		Display = 4, -- Display
		Scale = 1.0, -- Size of the blip
		Colour = 50, -- Color of the blip
		Name = 'Vigneron' -- Name of the blip
	}, --Lower you can add other blips, again as much as you want :-)
	vigne_selling = {
		BlipCoords = vector3(-1893.0803222656,1920.0615234375,161.21453857422), -- Coords for the blip
		Sprite = 478, -- Blips sprite (icon on the map)
		Display = 4, -- Display
		Scale = 1.0, -- Size of the blip
		Colour = 50, -- Color of the blip
		Name = 'Point de recolte Raisin', -- Name of the blip
		Jobs = { -- Remove the whole Jobs table to make the blip public or eventualy set it to Jobs = 'none'
			['vigne'] = true
		}
	},
	vigne_craft = {
		BlipCoords = vector3(675.33978271484,-2726.2998046875,7.1709589958191), -- Coords for the blip
		Sprite = 478, -- Blips sprite (icon on the map)
		Display = 4, -- Display
		Scale = 1.0, -- Size of the blip
		Colour = 50, -- Color of the blip
		Name = 'Traitement du raisin', -- Name of the blip
		Jobs = { -- Remove the whole Jobs table to make the blip public or eventualy set it to Jobs = 'none'
			['vigne'] = true
		}
	},
	vigne_champ = {
		BlipCoords = vector3(-45.614524841309,1918.2475585938,195.70509338379), -- Coords for the blip
		Sprite = 478, -- Blips sprite (icon on the map)
		Display = 4, -- Display
		Scale = 1.0, -- Size of the blip
		Colour = 50, -- Color of the blip
		Name = 'Traitement Champagne', -- Name of the blip
		Jobs = { -- Remove the whole Jobs table to make the blip public or eventualy set it to Jobs = 'none'
			['vigne'] = true
		}
	},
}

Config.AntiDupe = {
	Enabled = true,
	Message = 'Vous vous préparez à collecter',
	Time = math.random(1000, 3000),
	AnimN = 'shakeoff_1',
	AnimDict = 'move_m@_idles@shake_off'
}

Config.Jobs.vigne = { -- This is name of job you have in your database, change to setjob name whatever you want to
	SocietyPayments = true, -- If society payments enabled, you will get pay and pay from your society
	PercentToSociety = 90, -- The percent of money that the society will get (the remaining money will be added to player pocket)
	--NeededLockPickItem = true, -- If a player needs item for lockpinging a vehicle (if this is set to false, none of the two bellow are affected)
	--LockPickItemName = 'lockpick', -- The name of the item needed to lockpick a vehicle
--	RemoveLockPickAfterUse = true, -- If the lockpick should be removed after use

	Zones = {
		-- armory = {
		-- 	Pos = {x = 1737.55, y = 3709.25, z = 34.13}, -- Postion of the marker
		-- 	Size = {x = 0.7, y = 0.7, z = 0.7}, -- Size of the marke
		-- 	Color = {r = 204, g = 204, b = 0}, -- The color of the marker
		-- 	BouncingMarker = false, -- If the marker should go UP and Down
		-- 	RotatingMarker = true, -- If the marker should rotate
		-- 	Marker = 22, -- Type of the marker
		-- 	Type = 'Armory',
		-- 	Draw3DText = true, -- If the 3DText will be drawn on the marker
		-- 	MotionText = _U('armory_open'), -- The text which will be shown in the DrawText3D
		-- 	BuyWeapon = true, -- This allows you to buy weapons in this Armory (if you have multiple armories and you do not want to have buy weapon in all of them, simply cahnge it to false
		-- 	BuyWeaponGrade = 0, -- This is the least grade you must have to be allowed to buy weapons ( grade 0, 1, 2, 3, 4, 5, ... is now able to buy weapons)
		-- 	GetWeaponGrade = 0, -- This is the least grade you must have to be able to withdraw weapons from the armory (at some servers I have see that somebody was stealing thing from armories :D ( grade 0, 1, 2, 3, 4, 5, ... is now able to witdraw weapons) (Everybody can deposit weapons)
		-- 	GetStockGrade = 0, -- This is the least grade you must have to be able to withdraw things from the armory (at some servers I have see that somebody was stealing thing from armories :D ( grade 0, 1, 2, 3, 4, 5, ... is now able to witdraw weapons) (Everybody can deposit weapons)
		-- 	BuyItems = true,
		-- 	ShopItems = {
		-- 		shared = { -- Each job grade will see these items
		-- 			{item = 'bread', price = 3, label = 'Pain'},
		-- 			{item = 'water', price = 2, label = 'Eau'},
		-- 		},
		-- 		boss = { -- Only boss will see these items
		-- 			{item = 'phone', price = 150, label = 'Téléphone'},
		-- 		},
		-- 	},
--	},
Cloakroom = {
			Pos = { x = -1912.1329345703, y = 2072.6687011719, z = 140.38768005371 }, -- This is the place where you can change your saved clothes (you have to buy then in clotheshop)
			Size = {x = 0.7, y = 0.7, z = 0.7},
			Color = {r = 204, g = 204, b = 0},
			BouncingMarker = false,
			RotatingMarker = true,
			Marker = 22,
			Type = 'Vestiaire',
			Draw3DText = true,
			MotionText = _U('cloakroom_open'),
},
	CraftRouge = {
			Pos = { x = 678.30102539062, y = -2725.8818359375, z = 7.1710591316223 }, -- This is the place where you can change your saved clothes (you have to buy then in clotheshop)
			Size = {x = 0.7, y = 0.7, z = 0.7},
			Color = {r = 204, g = 204, b = 0},
			BouncingMarker = false,
			RotatingMarker = true,
			Marker = 22,
			Type = 'Craft',
			Draw3DText = true,
			MotionText = 'Faire du Vin Rouge',

			RequiredItems = { -- Bellow will be listed items a player will need for Collecting
				{itemName = "raisin", count = 10, removeItem = true}, -- itemName is the name from database, removeItem will remove the item from player inventory after fininished collecting
		--		{itemName = "adhesive_tape", count = 2, removeItem = true}
			},
			GiveItem = "vinewood_red", -- The item a player should get when he is done
			GiveItemCount = 1, -- The count of a item a player should get when he is done
			Animations = { -- Animation properties are listed bellow
				AnimDict = "mini@repair", -- The animation dictionary for Collecting animation
				AnimName = "fixing_a_ped", -- The animation name for Collectiong anitamtion
				Duration = 4000, -- Set to 0 to disable animations
				blendInSpeed = 8.0,
				blendOutSpeed = 8.0,
				AnimFlag = 1,
				UseMythicProggBar = false, -- If should use a mythic prog bar or not
				MythicProggbarLabel = "Tu fais du vin" -- The label which will be shown in the mythic progres bar
			}
		},
		CraftBlanc = {
				Pos = { x = 676.49102783203, y = -2725.8012695312, z = 7.1710591316223}, -- This is the place where you can change your saved clothes (you have to buy then in clotheshop)
				Size = {x = 0.7, y = 0.7, z = 0.7},
				Color = {r = 204, g = 204, b = 0},
				BouncingMarker = false,
				RotatingMarker = true,
				Marker = 22,
				Type = 'Craft',
				Draw3DText = true,
				MotionText = 'Faire du Vin Blanc',

				RequiredItems = { -- Bellow will be listed items a player will need for Collecting
					{itemName = "raisin", count = 10, removeItem = true}, -- itemName is the name from database, removeItem will remove the item from player inventory after fininished collecting
			--		{itemName = "adhesive_tape", count = 2, removeItem = true}
				},
				GiveItem = "vinewood_blanc", -- The item a player should get when he is done
				GiveItemCount = 1, -- The count of a item a player should get when he is done
				Animations = { -- Animation properties are listed bellow
					AnimDict = "mini@repair", -- The animation dictionary for Collecting animation
					AnimName = "fixing_a_ped", -- The animation name for Collectiong anitamtion
					Duration = 4000, -- Set to 0 to disable animations
					blendInSpeed = 8.0,
					blendOutSpeed = 8.0,
					AnimFlag = 1,
					UseMythicProggBar = false, -- If should use a mythic prog bar or not
					MythicProggbarLabel = "Tu fais du vin BLANC" -- The label which will be shown in the mythic progres bar
				}
			},
			CraftRockford = {
					Pos = { x = -45.631671905518, y = 1918.2208251953, z = 195.7015838623}, -- This is the place where you can change your saved clothes (you have to buy then in clotheshop)
					Size = {x = 0.7, y = 0.7, z = 0.7},
					Color = {r = 204, g = 204, b = 0},
					BouncingMarker = false,
					RotatingMarker = true,
					Marker = 22,
					Type = 'Craft',
					Draw3DText = true,
					MotionText = 'Faire du Champagne',

					RequiredItems = { -- Bellow will be listed items a player will need for Collecting
						{itemName = "raisin", count = 100, removeItem = true}, -- itemName is the name from database, removeItem will remove the item from player inventory after fininished collecting
				--		{itemName = "adhesive_tape", count = 2, removeItem = true}
					},
					GiveItem = "rockford_hill", -- The item a player should get when he is done
					GiveItemCount = 1, -- The count of a item a player should get when he is done
					Animations = { -- Animation properties are listed bellow
						AnimDict = "mini@repair", -- The animation dictionary for Collecting animation
						AnimName = "fixing_a_ped", -- The animation name for Collectiong anitamtion
						Duration = 4000, -- Set to 0 to disable animations
						blendInSpeed = 8.0,
						blendOutSpeed = 8.0,
						AnimFlag = 1,
						UseMythicProggBar = false, -- If should use a mythic prog bar or not
						MythicProggbarLabel = "Tu fais du vin" -- The label which will be shown in the mythic progres bar
					}
				},

	Selling = {
		Pos = { x = -1883.8768310547, y = 2048.5922851562, z = 140.97450256348 }, -- This is the place where you can change your saved clothes (you have to buy then in clotheshop)
		Size = {x = 0.7, y = 0.7, z = 0.7},
		Color = {r = 204, g = 204, b = 0},
		BouncingMarker = false,
		RotatingMarker = true,
		Marker = 22,
		Type = 'Selling',
		Draw3DText = true,
		MotionText = 'Point de vente',
		Item = "vinewood_red", -- The name of sold item
		MinCash = 100, -- Min cash a player will get for selling items
		MaxCash = 500, -- Max cash a player will get for selling item
		Delay = 1000 -- The delay in which the item will be sold
	},
	BossActions = {
			Pos = {x = -1880.4533691406, y = 2044.3988037109, z = 140.79180908203}, -- This is the place where you open BossMenu (only grade with name boss is allowed (depends on your esx_society edits)
			Size = {x = 0.7, y = 0.7, z = 0.7},
			Color = {r = 204, g = 204, b = 0},
			BouncingMarker = false,
			RotatingMarker = true,
			Marker = 22,
			Type = 'BossActions',
			Draw3DText = true,
			MotionText = _U('bossmenu_open'),
	},
	Vehicles = {
			Pos = {x = 1723.49, y = 3705.44, z = 34.18}, -- This is the spawnpoint where you see menu with vehicles which you can spawn
			Size = {x = 0.7, y = 0.7, z = 0.7},
			Color = {r = 204, g = 204, b = 0},
			BouncingMarker = false,
			RotatingMarker = true,
			Marker = 36,
			MotionText = _U('vehicles_open'),
			Type = 'Véhicules',
			Draw3DText = true,
			SpawnPoints = { -- Here you configure spawnpoints, where the vehicle will be spawned (Chcecks if the spawnpoint is clear), you can add as much as you want
					{coords = vector3(1722.02, 3713.56, 34.22), heading = 90.0, radius = 6.0},
					{coords = vector3(1726.88, 3716.97, 34.13), heading = 90.0, radius = 6.0}
				}
		},
	VehicleDeletePoint = { -- here you add vehicle deleter points. It can delete helicopters, car, bikes, boats...
			Pos = {x = 1731.5, y = 3709.37, z = 33.28},
			Size = {x = 3.5, y = 3.5, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			BouncingMarker = false,
			RotatingMarker = true,
			Marker = 1,
			Type = 'VehicleDeleter',
			MotionText = _U('vehicles_open_park'),
		},
-- HeliSpawn = { -- This is marker which opens you menu where you choose which plane you want to spawn.
	-- 	Pos = {x = 463.45, y = -982.62, z = 43.69},
	-- 	Size = {x = 0.7, y = 0.7, z = 0.7},
	-- 	Color = {r = 204, g = 204, b = 0},
	-- 	BouncingMarker = false,
	-- 	RotatingMarker = true,
	-- 	Marker = 36,
	-- 	MotionText = _U('aircrafts_open'),
	-- 	Type = 'Aircrafts',
	-- 	Draw3DText = true,
	-- 	SpawnPoints = { -- Here you configure spawnpoints, where the vehicle will be spawned (Chcecks if the spawnpoint is clear), you can add as much as you want, smae as vehicles
	-- 			{coords = vector3(449.84, -981.04, 43.69), heading = 93.96, radius = 6.0}
	--       }
	--   },
	},

	CollectPoints = { -- Places where a player can pickup an item
		DrawDistance = 5.0, -- The distance a marker for pickup will be drawn from
		Marker = {
			Size = {x = 0.7, y = 0.7, z = 0.7}, -- Size of the marker
			Color = {r = 0, g = 255, b = 255}, -- The RGB color of the marker
			BouncingMarker = false, -- If the marker should go up and down
			RotatingMarker = true, -- If the marker should rotate
			Marker = 22, -- Mrker ID
		},
		Animation = {
			AnimDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", -- The animation dictionary for Collecting animation
			AnimName = "machinic_loop_mechandplayer", -- The animation name for Collectiong anitamtion
			Duration = 1500, -- Set to 0 to disable animations
			blendInSpeed = 8.0,
			blendOutSpeed = 8.0,
			AnimFlag = 1,
			UseMythicProggBar = false, -- If should use a mythic prog bar or not
			MythicProggbarLabel = "Collecting grapes" -- The label which will be shown in the mythic progres bar
		},
		ResetPointsTime = 5000, -- Time in mas which the locations of pickup will be reset in
		-- It MUST be a sequenced table
		{
			pos = vector3(-1892.9141845703,1920.0670166016,161.17279052734), -- The position of the marker
			isUsed = false, -- Just do not touch it :)
			getMin = 2, -- The min count a player will get
			getMax = 4, -- The max item count a player will get
			getItem = "raisin" -- Item a player will get
		},
		{
			pos = vector3(-1901.6917724609,1925.0733642578,161.77015686035),
			isUsed = false,
			getMin = 2,
			getMax = 4,
			getItem = "raisin"
		},
		{
			pos = vector3(-1896.1350097656,1921.9448242188,161.49569702148),
			isUsed = false,
			getMin = 2,
			getMax = 4,
			getItem = "raisin"
		},
		{
			pos = vector3(-1905.8814697266,1927.2583007812,161.82382202148),
			isUsed = false,
			getMin = 2,
			getMax = 4,
			getItem = "raisin"
		},
		{
			pos = vector3(-1911.7259521484,1930.7261962891,161.94355773926),
			isUsed = false,
			getMin = 2,
			getMax = 4,
			getItem = "raisin"
		},
		{
			pos = vector3(-1916.6746826172,1933.5953369141,162.22227478027),
			isUsed = false,
			getMin = 2,
			getMax = 4,
			getItem = "raisin"
		}
	},

	DefaultClothes = {
		ReloadSkin = 'Default clothes', -- Set to false to disallow changing clothes to previous one
		["Work Outfit"] = {
			JobGrades = 'all', -- You can set it to all to make it available to all the job grades
			--[[JobGrades = {
				["job_grade1"] = true,
				["job_grade2"] = true
			},]]

			male = { -- Set the clothes for male peds
				tshirt_1 = 0,  tshirt_2 = 0, -- You can remove or add any lines,
				torso_1 = 0,   torso_2 = 0, -- That your skinchanger script supports
				decals_1 = 0,   decals_2 = 0,
				arms = 0,
				pants_1 = 0,   pants_2 = 0,
				shoes_1 = 0,   shoes_2 = 0,
				helmet_1 = 0,  helmet_2 = 0,
				chain_1 = 0,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0
			},
			female = { -- Set the clothes for female peds
				tshirt_1 = 0,  tshirt_2 = 0,
				torso_1 = 0,   torso_2 = 0,
				decals_1 = 0,   decals_2 = 0,
				arms = 0,
				pants_1 = 0,   pants_2 = 0,
				shoes_1 = 0,   shoes_2 = 0,
				helmet_1 = 0,  helmet_2 = 0,
				chain_1 = 0,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0
			}

		}
	},

	-- End of zones and start of authorized vehicles
	AuthorizedVehicles = { -- Vehicles which be shown in the menu for the defined job
		shared = { -- These vehicles will have in garage every job rank
			{
				model = 'flatbed', -- Vehicle spawn model
				label = 'Flatbed', -- Vehicle menu label
				props = {plate = 'SQZ2', modXenon = false} -- Here you can add all vehicle mods you want, documentation can be found here: https://esx-framework.github.io/es_extended/client/functions/game/setvehicleproperties/#valid-table-content
			},
			{
				model = 'slavman',
				label = 'SlawMan',
				props = {plate = 'SQZ1', modXenon = true} -- Here you can add all vehicle mods you want, documentation can be found here: https://esx-framework.github.io/es_extended/client/functions/game/setvehicleproperties/#valid-table-content
			}
		},
		boss = { -- These vehicles + Shared Vehicles will have Boss rank
			{
				model = 'adder',
				label = 'Adder',
				props = {plate = 'SQZ', modXenon = false} -- Here you can add all vehicle mods you want, documentation can be found here: https://esx-framework.github.io/es_extended/client/functions/game/setvehicleproperties/#valid-table-content
			}
		}
	},
	-- End of Authorized vehicles and start of Allowed Actions
	AllowedActions = {
		Billing = true, -- Adds "Billing" to the interaction menu, the society is society_*player_job_name* (players job is police -> society is society_police)
		HasBodyActions = false, -- Adds Body Action such as Cuffing, Dragging, Taking out of vehicle, Putting in vehicle ...
		HasMechanicActions = false, -- This allows vehicle interaction in F6 menu
		CanRevive = false, -- This adds revive possibility to F6 menu
		CanWash = false, -- This manages if the boss can wash dirty money in BossMenu
		Deposit = true, -- If the boss will be able to deposit
		Grades = true, -- If the boss will have access to grades menu
		Withdraw = true, -- If the boss will have access to withdraw
		Employees = true, -- If the boss will have access to the employyess menu
		CustomMenuElement = false, -- Possibility to add custom element to F6 Menu, the function is defined in client/edit.lua
		CanUnlock = false, -- if there should be a LockPick vehicle option in the F6 menu (affected only, if HasMechanicActions is set to false)
	},
	-- End of Authorized actions and start of authorized Weapons for the job
	AuthorizedWeapons = { -- There you configure weapons that can a job have
		shared = { -- These weapon can be bought by all the players in the job
			{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
			{weapon = 'WEAPON_KNUCKLE', price = 800},
		},
		boss = { -- This weapon can be bought only of the boss of the current job
			{weapon = 'WEAPON_KNIFE', price = 1500},
		}
	},
	-- End of authorized Weapons and Start of authorized AirCrafts
	AuthorizedAirCrafts = {
		shared = { -- These vehicles will have in garage every job rank
		}, -- These are empty, so you need to define for each rank or simply add vehicles to shared
		boss = { -- These vehicles + Shared Vehicles will have Boss rank
			{
				model = 'maverick',
				label = 'Maverick',
				props = {plate = 'SQZ1', modXenon = true} -- Here you can add all vehicle mods you want, documentation can be found here: https://esx-framework.github.io/es_extended/client/functions/game/setvehicleproperties/#valid-table-content
			}
		}
	},
}



Config.Jobs.brinks = { -- This is name of job you have in your database
	SocietyPayments = true, -- If set to `false`, players will get money and buy on themselves
	PercentToSociety = 90,
	NeededLockPickItem = false,
	Zones = {
		armory = {
			Pos = {x = -9.771336479187, y = -691.41, z = 16.130603790283},
			Size = {x = 0.7, y = 0.7, z = 0.7},
			Color = {r = 204, g = 204, b = 0},
			BouncingMarker = false,
			RotatingMarker = true,
			Marker = 22,
			Type = 'Armory',
			Draw3DText = true,
			MotionText = _U('armory_open'),
			BuyWeapon = true, -- This allows you to buy weapons in this Armory (if you have multiple armories and you do not want to have buy weapon in all of them, simply cahnge it to false
			BuyWeaponGrade = 0, -- This is the least grade you must have to be allowed to buy weapons ( grade 0, 1, 2, 3, 4, 5, ... is now able to buy weapons)
			GetWeaponGrade = 0, -- This is the least grade you must have to be able to withdraw weapons from the armory (at some servers I have see that somebody was stealing thing from armories :D ( grade 0, 1, 2, 3, 4, 5, ... is now able to witdraw weapons) (Everybody can deposit weapons)
			GetStockGrade = 0, -- This is the least grade you must have to be able to withdraw things from the armory (at some servers I have see that somebody was stealing thing from armories :D ( grade 0, 1, 2, 3, 4, 5, ... is now able to witdraw weapons) (Everybody can deposit weapons)
		},
	Cloakroom = {
			Pos = {x = 1743, y = 1743.3, z = 34.19}, -- This is the place where you can change your saved clothes (you have to buy then in clotheshop)
			Size = {x = 0.7, y = 0.7, z = 0.7},
			Color = {r = 204, g = 204, b = 0},
			BouncingMarker = false,
			RotatingMarker = true,
			Marker = 22,
			Type = 'Cloakroom',
			Draw3DText = true,
			MotionText = _U('cloakroom_open'),
		},
	BossActions = {
			Pos = {x = 1732.47, y = 3716.52, z = 34.11}, -- This is the place where you open BossMenu (only grade with name boss is allowed (depends on your esx_society edits)
			Size = {x = 0.7, y = 0.7, z = 0.7},
			Color = {r = 204, g = 204, b = 0},
			BouncingMarker = false,
			RotatingMarker = true,
			Marker = 22,
			Type = 'BossActions',
			Draw3DText = true,
			MotionText = _U('bossmenu_open'),
	},
	--Crafting = {}, -- If you do not want to use the Crafting menu, you can disable it like it is here, otherwise use it as above

	Selling = {
		Pos = { x = 6.65, y = -674.57, z = 16.10 }, -- This is the place where you can change your saved clothes (you have to buy then in clotheshop)
		Size = {x = 0.7, y = 0.7, z = 0.7},
		Color = {r = 204, g = 204, b = 0},
		BouncingMarker = false,
		RotatingMarker = true,
		Marker = 22,
		Type = 'Selling',
		Draw3DText = true,
		MotionText = 'Ranger sac d\'argent',
		Item = "sacbillets", -- The name of sold item
		MinCash = 2000, -- Min cash a player will get for selling items
		MaxCash = 5000, -- Max cash a player will get for selling item
		Delay = 1000 -- The delay in which the item will be sold
	},

	Vehicles = {
			Pos = {x = 1723.49, y = 3705.44, z = 34.18}, -- This is the spawnpoint where you see menu with vehicles which you can spawn
			Size = {x = 0.7, y = 0.7, z = 0.7},
			Color = {r = 204, g = 204, b = 0},
			BouncingMarker = false,
			RotatingMarker = true,
			Marker = 36,
			MotionText = _U('vehicles_open'),
			Type = 'Vehicles',
			Draw3DText = true,
			SpawnPoints = { -- Here you configure spawnpoints, where the vehicle will be spawned (Chcecks if the spawnpoint is clear), you can add as much as you want
					{coords = vector3(1722.02, 3713.56, 34.22), heading = 90.0, radius = 6.0},
					{coords = vector3(1726.88, 3716.97, 34.13), heading = 90.0, radius = 6.0}
		}
		},
	VehicleDeletePoint = { -- here you add vehicle deleter points. It can delete helicopters, car, bikes, boats...
			Pos = {x = 1731.5, y = 3709.37, z = 33.28},
			Size = {x = 3.5, y = 3.5, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			BouncingMarker = false,
			RotatingMarker = true,
			Marker = 1,
			Type = 'VehicleDeleter',
			Draw3DText = true,
			MotionText = _U('vehicles_open_park'),
		},
	HeliSpawn = { -- This is marker which opens you menu where you choose which plane you want to spawn.
		Pos = {x = 463.45, y = -982.62, z = 43.69},
		Size = {x = 0.7, y = 0.7, z = 0.7},
		Color = {r = 204, g = 204, b = 0},
		BouncingMarker = false,
		RotatingMarker = true,
		Marker = 36,
		MotionText = _U('aircrafts_open'),
		Type = 'Aircrafts',
		Draw3DText = true,
		SpawnPoints = { -- Here you configure spawnpoints, where the vehicle will be spawned (Chcecks if the spawnpoint is clear), you can add as much as you want, smae as vehicles
				{coords = vector3(449.84, -981.04, 43.69), heading = 93.96, radius = 6.0}
	      }
	  },
	},

	CollectPoints = {}, -- If you do not want to use Collect Points, set it like this

	--[[Clothes = {
		["Work Outfit"] = {
			JobGrades = 'all', -- You can set it to all to make it available to all the job grades
			--JobGrades = {},

			male = {
				tshirt_1 = 58,  tshirt_2 = 0,
				torso_1 = 55,   torso_2 = 0,
				decals_1 = 8,   decals_2 = 2,
				arms = 41,
				pants_1 = 25,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 0,    chain_2 = 0,
				ears_1 = 2,     ears_2 = 0
			},
			female = {
				tshirt_1 = 35,  tshirt_2 = 0,
				torso_1 = 48,   torso_2 = 0,
				decals_1 = 7,   decals_2 = 2,
				arms = 44,
				pants_1 = 34,   pants_2 = 0,
				shoes_1 = 27,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 0,    chain_2 = 0,
				ears_1 = 2,     ears_2 = 0
			}

		}
	},]]
	-- Or eventualy set it like that, comment it and keep it away

	-- End of zones and start of authorized vehicles
	AuthorizedVehicles = { -- Vehicles which be shown in the menu for the defined job
		-- shared = { -- These vehicles will have in garage every job rank
		-- 	{
		-- 		model = 'police3', -- Vehicle spawn model
		-- 		label = 'Police', -- Vehicle menu label
		-- 		props = {plate = 'COP1', modXenon = true} -- Here you can add all vehicle mods you want, documentation can be found here: https://esx-framework.github.io/es_extended/client/functions/game/setvehicleproperties/#valid-table-content
		--
		-- 	},
		-- 	{
		-- 		model = 'police',
		-- 		label = 'Police Victoria',
		-- 		props = {plate = 'COP2', modXenon = true} -- Here you can add all vehicle mods you want, documentation can be found here: https://esx-framework.github.io/es_extended/client/functions/game/setvehicleproperties/#valid-table-content
		-- 	}
		-- },
		-- boss = { -- These vehicles + Shared Vehicles will have Boss rank
		-- 	{
		-- 		model = 'riot',
		-- 		label = 'Riot',
		-- 		props = {plate = 'COP3', modXenon = true} -- Here you can add all vehicle mods you want, documentation can be found here: https://esx-framework.github.io/es_extended/client/functions/game/setvehicleproperties/#valid-table-content
		--
		-- 	}
		-- }
	},
	-- End of Authorized vehicles and start of Allowed Actions
	AllowedActions = {
		Billing = false, -- Adds "Billing" to the interaction menu, the society is society_*player_job_name* (players job is police -> society is society_police)
		HasBodyActions = false, -- Adds Body Action such as Cuffing, Dragging, Taking out of vehicle, Putting in vehicle ...
		HasMechanicActions = false, -- This allows vehicle interaction in F6 menu
		CanRevive = false, -- This adds revive possibility to F6 menu
		CanWash = false, -- This manages if the boss can wash dirty money in BossMenu
		Deposit = true, -- If the boss will be able to deposit
		Grades = true, -- If the boss will have access to grades menu
		Withdraw = true, -- If the boss will have access to withdraw
		Employees = true, -- If the boss will have access to the employyess menu
		CustomMenuElement = false, -- If there should be a custom element in the Actions menu
		CanUnlock = false, -- if there should be a LockPick vehicle option in the F6 menu (affected only, if HasMechanicActions is set to false)
	},
	-- End of Authorized actions and start of authorized Weapons for the job
	AuthorizedWeapons = { -- There you configure weapons that can a job have
		chauffeur = { -- These weapon can be bought by all the players in the job
			{weapon = 'WEAPON_PISTOL', components = {0, 0, 1000, 4000, nil}, price = 100},

		},
		secu = { -- These weapon can be bought by all the players in the job
			{weapon = 'WEAPON_PISTOL', components = {0, 0, 1000, 4000, nil}, price = 100},
			{weapon = 'WEAPON_PISTOL_MK2', price = 300},
			{weapon = 'WEAPON_SMG', price = 600},
		},
		convoyeur = { -- These weapon can be bought by all the players in the job
			{weapon = 'WEAPON_PISTOL', components = {0, 0, 1000, 4000, nil}, price = 100},
			{weapon = 'WEAPON_PISTOL_MK2', price = 300},
	--		{weapon = 'WEAPON_SMG', price = 8000},
			{weapon = 'WEAPON_PUMPSHOTGUN', price = 600},
		},
		boss = { -- These weapon can be bought by all the players in the job
			{weapon = 'WEAPON_PISTOL', components = {0, 0, 1000, 4000, nil}, price = 100},
		--	{weapon = 'WEAPON_PISTOL_MK2', price = 300},
		--	{weapon = 'WEAPON_SMG', price = 600},
		--	{weapon = 'WEAPON_PUMPSHOTGUN', price = 600},
		},
		boss = { -- This weapon can be bought only of the boss of the current job
--*			{weapon = 'WEAPON_KNIFE', price = 1500},
		}
	},
	-- End of authorized Weapons and Start of authorized AirCrafts
	AuthorizedAirCrafts = {
		shared = { -- These vehicles will have in garage every job rank
		}, -- These are empty, so you need to define for each rank or simply add vehicles to shared
		boss = { -- These vehicles + Shared Vehicles will have Boss rank
			{
				-- model = 'polmav',
				-- label = 'Police maverick',
				-- props = {plate = 'SQZ1', modXenon = true} -- Here you can add all vehicle mods you want, documentation can be found here: https://esx-framework.github.io/es_extended/client/functions/game/setvehicleproperties/#valid-table-content
			}
		}
	},
}

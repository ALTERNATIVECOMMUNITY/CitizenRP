


Config                            = {}

Config.DrawDistance               = 20.0 -- How close do you need to be in order for the markers to be drawn (in GTA units).

Config.Marker                     = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}

Config.ReviveReward               = 150  -- Revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- Enable anti-combat logging? (Removes Items when a player logs back after intentionally logging out while dead.)
Config.LoadIpl                    = false -- Disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'fr'

Config.EarlyRespawnTimer          = 60000 * 5  -- time til respawn is available
Config.BleedoutTimer              = 60000 * 5 -- time til the player bleeds out

Config.EnablePlayerManagement     = true -- Enable society managing (If you are using esx_society).

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 2000

Config.RespawnPoint = {coords = vector3(297.30163574219,-583.03143310547,43.132095336914), heading = 162.7}
Config.RespawnSkins = {
	male = {
		tshirt_1 = 15,  tshirt_2 = 0,
		torso_1 = 15,   torso_2 = 0,
		decals_1 = 0,   decals_2 = 0,
		arms = 7,
		pants_1 = 14,   pants_2 = 0,
		shoes_1 = 34,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 0,    chain_2 = 0,
		ears_1 = -1,     ears_2 = 0,
		bags_1 = 0,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 15,  tshirt_2 = 3,
		torso_1 = 15,   torso_2 = 0,
		decals_1 = 0,   decals_2 = 0,
		arms = 15,
		pants_1 = 15,   pants_2 = 0,
		shoes_1 = 35,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 0,    chain_2 = 0,
		ears_1 = -1,     ears_2 = 0,
		bags_1 = 0,	bags_2 = 0,
	}
}

Config.retrieveClothesCoords = vector3(312.5195, -592.4033, 43.2841)
Config.retrieveClothesText = "~INPUT_PICKUP~ pour récupérer vos habits"

Config.Hospitals = {

	CentralLosSantos = {


		Blip = {
			coords = vector3(319.3713684082,-591.82012939453,43.28409576416),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			vector3(335.905, -593.113, 43.284),
			vector3(298.548, -598.478, 43.284),
			vector3(-1693.315, 67.791, 65.012),
			vector3(-1680.258, 65.233, 68.804)

		},

		Pharmacies = {
	--	vector3(343.836, -592.341, 43.284)
		},

		Vehicles = {},


		Helicopters = {
			},


		FastTravels = {

		}

	},
}

Config.AuthorizedVehicles = {
	car = {
				recrue = {
		{ model = '20ramambo', label = 'ambulance', price = 10},
		{ model = 'stretcher', label = 'Brancard', price = 10},

	},

   fdrecrue = {
	{ model = '20ramambo', label = 'ambulance', price = 10},
{ model = 'stretcher', label = 'Brancard', price = 10},
	},

		ambulance = {
		{ model = '20ramambo', label = 'ambulance', price = 10},
{ model = 'stretcher', label = 'Brancard', price = 10},
	},

   fdpompier = {
	{ model = '20ramambo', label = 'ambulance', price = 10},
{ model = 'stretcher', label = 'Brancard', price = 10},
	},


	caporal = {
		{ model = '20ramambo', label = 'ambulance', price = 10},
{ model = 'stretcher', label = 'Brancard', price = 10},
	},

   fdcaporal = {
	{ model = '20ramambo', label = 'ambulance', price = 10},
{ model = 'stretcher', label = 'Brancard', price = 10},
	},


	sergent = {
		{ model = '20ramambo', label = 'ambulance', price = 10},
{ model = 'stretcher', label = 'Brancard', price = 10},
	},

   fdsergeant = {
	{ model = '20ramambo', label = 'ambulance', price = 10},
{ model = 'stretcher', label = 'Brancard', price = 10},
	},


	lieutenant = {
		{ model = '20ramambo', label = 'ambulance', price = 10},
{ model = 'stretcher', label = 'Brancard', price = 10},
	},

   fdlieutenant = {
	{ model = '20ramambo', label = 'ambulance', price = 10},
{ model = 'stretcher', label = 'Brancard', price = 10},
	},


	capitaine = {
	{ model = '20ramambo', label = 'ambulance', price = 10},
	{ model = '20ramambo', label = 'Capitaine', price = 10},
	{ model = 'stretcher', label = 'Brancard', price = 10},
	},

	fdcapitaine = {
		{ model = 'fireburb', label = 'Capitaine', price = 10},
		{ model = '20ramambo', label = 'ambulance', price = 10},
		{ model = 'ramfire', label = 'Chef Bataillon', price = 10},
		{ model = 'stretcher', label = 'Brancard', price = 10},
	},

	boss = {
		{ model = '20ramambo', label = 'ambulance', price = 10},
		{ model = '16fire', label = 'Chef', price = 10},
		{ model = 'stretcher', label = 'Brancard', price = 10},
	}
},
	helicopter = {
		ambulance = {},

		doctor = {
			{model = 'buzzard2', price = 0}
		},

		chief_doctor = {
			{model = 'buzzard2', price = 0},
			{model = 'seasparrow', price = 0}
		},

		boss = {
			{model = 'buzzard2', price = 10000},
			{model = 'seasparrow', price = 250000}
		}
	}
}



Config.Uniforms = {


urgent = {
male = {
	--	tshirt_1 = 73,  tshirt_2 = 3,
		torso_1 = 73,   torso_2 = 2,
		decals_1 = 0,   decals_2 = 0,
		arms = 85,
		pants_1 = 49,   pants_2 = 0,
		shoes_1 = 97,   shoes_2 = 0,
	--	helmet_1 = 123,  helmet_2 = 0,
		chain_1 = 126,    chain_2 = 0,
						},
	female = {
		tshirt_1 = 159,  tshirt_2 = 0,
		torso_1 = 14,   torso_2 = 2,
		decals_1 = 0,   decals_2 = 0,
		arms = 109,
		pants_1 = 51,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = 121,  helmet_2 = 0,
		chain_1 = 96,    chain_2 = 0,
							}
						},



operation = {
male = {
--	tshirt_1 = 126,  tshirt_2 = 0,
	torso_1 = 271,   torso_2 = 0,
		decals_1 = 0,   decals_2 = 0,
		arms = 85,
		pants_1 = 104,   pants_2 = 0,
		shoes_1 = 101,   shoes_2 = 0,
	--	helmet_1 = 123,  helmet_2 = 0,
		chain_1 = 126,    chain_2 = 0,
						},
	female = {
		tshirt_1 = 159,  tshirt_2 = 0,
		torso_1 = 14,   torso_2 = 2,
		decals_1 = 0,   decals_2 = 0,
		arms = 109,
		pants_1 = 51,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = 120,  helmet_2 = 0,
		chain_1 = 96,    chain_2 = 0,
							}
},


	offcasque = {
		male = {
			helmet_1 = -1,  helmet_2 = 0
		},
		female = {
			helmet_1 = -1,  helmet_2 = 0
		}
	},

	offgil = {
		male = {
			bproof_1 = 0,  bproof_2 = 0
		},
		female = {
			bproof_1 = 0,  bproof_2 = 0
		}
	},
	radio = {
		male = {
			bproof_1 = 13,  bproof_2 = 0
		},
		female = {
			bproof_1 = 14,  bproof_2 = 0
		}
	},


	giletjaune = {
		male = {
			bproof_1 = 10,  bproof_2 = 0
		},
		female = {
			bproof_1 = 19,  bproof_2 = 4
		}
	},


-- GILETs PAR BALLES



--CASQUE /./ CASQUETTES

 casquette = {
	male = {
						helmet_1 = 123, helmet_2 = 0
				 },
	female = {
						helmet_1 = 121, helmet_2 = 0
				 	 }
						},

 ecg = {
	male = {
						bags_1 = 83, bags_2 = 0
				 },
						},

}

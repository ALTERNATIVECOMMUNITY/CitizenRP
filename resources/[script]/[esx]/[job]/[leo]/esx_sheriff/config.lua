Config                            = {}

Config.DrawDistance               = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
Config.MarkerType                 = {Cloakrooms = 27, Armories = 27, BossActions = 27, Vehicles = 36, Helicopters = 34}
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagement     = true -- Enable if you want society managing.
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true -- Enable if you're using esx_identity.
Config.EnableLicenses             = true -- Enable if you're using esx_license.

Config.EnableHandcuffTimer        = true -- Enable handcuff timer? will unrestrain player after the time ends.
Config.HandcuffTimer              = 10 * 60000 -- 10 minutes.

Config.EnableJobBlip              = true -- Enable blips for cops on duty, requires esx_society.
Config.EnableCustomPeds           = false -- Enable custom peds in cloak room? See Config.CustomPeds below to customize peds.

Config.EnableESXService           = false -- Enable esx service?
Config.MaxInService               = -1 -- How much people can be in service at once?

Config.Locale                     = 'fr'

Config.sheriffStations = {

	sheriff = {

		Blip = {
			Coords  = vector3(374.13052368164,-1603.9444580078,29.287836074829),
			Sprite  = 622,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(367.65390014648,-1600.9372558594,28.409704208374),
			vector3(368.85620117188,-1601.9461669922,28.292074203491),
			vector3(369.68756103516,-1602.6458740234,28.292062759399)
		},

		Armories = {
			vector3(364.4323425293,-1608.4835205078,28.292055130005)
		},

		Vehicles = {	},

		Helicopters = {	},

		BossActions = {
			vector3(362.4514465332,-1585.5555419922,33.356437683105)
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, 0, nil}, price = 0},

		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
			{weapon = 'WEAPON_FLARE', price = 0},

	{weapon = 'WEAPON_SMOKEGRENADE', price = 0},

		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, nil}, price = 0},
			{weapon = 'WEAPON_PUMPSHOTGUN', price = 0},
			{weapon = 'WEAPON_FBIARb', price = 0},
		{weapon = 'WEAPON_M700', price = 0},
	},

	officer = {
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, 0, nil}, price = 0},

		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
			{weapon = 'WEAPON_FLARE', price = 0},

	{weapon = 'WEAPON_SMOKEGRENADE', price = 0},

		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, nil}, price = 0},
			{weapon = 'WEAPON_PUMPSHOTGUN', price = 0},
			{weapon = 'WEAPON_FBIARb', price = 0},
		{weapon = 'WEAPON_M700', price = 0},
	},

	sergeant = {
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, 0, nil}, price = 0},

		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
			{weapon = 'WEAPON_FLARE', price = 0},

	{weapon = 'WEAPON_SMOKEGRENADE', price = 0},

		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, nil}, price = 0},
			{weapon = 'WEAPON_PUMPSHOTGUN', price = 0},
			{weapon = 'WEAPON_FBIARb', price = 0},
		{weapon = 'WEAPON_M700', price = 0},
	},

	lieutenant = {
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, 0, nil}, price = 0},

		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
			{weapon = 'WEAPON_FLARE', price = 0},

	{weapon = 'WEAPON_SMOKEGRENADE', price = 0},

		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, nil}, price = 0},
			{weapon = 'WEAPON_PUMPSHOTGUN', price = 0},
			{weapon = 'WEAPON_FBIARb', price = 0},
		{weapon = 'WEAPON_M700', price = 0},
	},

	boss = {
		{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, 0, nil}, price = 0},

		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
			{weapon = 'WEAPON_FLARE', price = 0},

	{weapon = 'WEAPON_SMOKEGRENADE', price = 0},

		{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, nil}, price = 0},
			{weapon = 'WEAPON_PUMPSHOTGUN', price = 0},
			{weapon = 'WEAPON_FBIARb', price = 0},
		{weapon = 'WEAPON_M700', price = 0},
	}
}

Config.AuthorizedVehicles = {
	car = {
		recruit = {},

		officer = {
			{model = 'police3', price = 20000}
		},

		sergeant = {
			{model = 'policet', price = 18500},
			{model = 'policeb', price = 30500}
		},

		lieutenant = {
			{model = 'riot', price = 70000},
			{model = 'fbi2', price = 60000}
		},

		boss = {}
	},

	helicopter = {
		recruit = {},

		officer = {},

		sergeant = {},

		lieutenant = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},

		boss = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		}
	}
}

Config.CustomPeds = {
	shared = {
		{label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
		{label = 'Police Ped', maleModel = 's_m_y_cop_01', femaleModel = 's_f_y_cop_01'}
	},

	recruit = {},

	officer = {},

	sergeant = {},

	lieutenant = {},

	boss = {
		{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms = {
	recruit = {
		male = {
			tshirt_1 = 40,  tshirt_2 = 2,
			torso_1 = 31,   torso_2 = 0,
			decals_1 = 18,   decals_2 = 0,
			arms = 190,
			pants_1 = 25,   pants_2 = 2,
			shoes_1 = 54,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = -1,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0,
			bags_1 = -1,	bags_2 = 0,
		},

		female = {
			tshirt_1 = 30,  tshirt_2 = 0,
			torso_1 = 265,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 3,   pants_2 = 0,
			shoes_1 = 64,   shoes_2 = 0,
			helmet_1 = -1,   helmet_2 = 0,
			chain_1 = 9,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0,
			bags_1 = -1,	bags_2 = 0,
			}
		},


			pat = {
				male = {
					tshirt_1 = 40,  tshirt_2 = 2,
					torso_1 = 32,   torso_2 = 1,
					decals_1 = 19,   decals_2 = 0,
					arms = 190,
					pants_1 = 25,   pants_2 = 1,
					shoes_1 = 54,   shoes_2 = 0,
					helmet_1 = -1,  helmet_2 = 0,
					chain_1 = -1,    chain_2 = 0,
					ears_1 = -1,     ears_2 = 0,
					bags_1 = -1,	bags_2 = 0,
				},

				female = {
					tshirt_1 = 30,  tshirt_2 = 2,
						torso_1 = 265,   torso_2 = 1,
					decals_1 = 0,   decals_2 = 0,
					arms = 44,
					pants_1 = 105,   pants_2 = 1,
					shoes_1 = 27,   shoes_2 = 0,
					helmet_1 = -1,   helmet_2 = 0,
					ears_1 = -1,     ears_2 = 0,
					bags_1 = -1,	bags_2 = 0,
				}
			},
			capo = {
					male = {
						tshirt_1 = 40,  tshirt_2 = 2,
						torso_1 = 32,   torso_2 = 2,
						decals_1 = 19,   decals_2 = 0,
						arms = 190,
						pants_1 = 25,   pants_2 = 1,
						shoes_1 = 54,   shoes_2 = 0,
						helmet_1 = -1,  helmet_2 = 0,
						chain_1 = -1,    chain_2 = 0,
						ears_1 = -1,     ears_2 = 0,
						bags_1 = 73,	bags_2 = 0,
					},

					female = {
						tshirt_1 = 30,  tshirt_2 = 2,
							torso_1 = 265,   torso_2 = 1,
						decals_1 = 0,   decals_2 = 0,
						arms = 44,
						pants_1 = 105,   pants_2 = 0,
						shoes_1 = 27,   shoes_2 = 0,
						helmet_1 = -1,   helmet_2 = 0,
						ears_1 = -1,     ears_2 = 0,
						bags_1 = -1,	bags_2 = 0,
					}
				},


	sergeant = {
		male = {
			tshirt_1 = 40,  tshirt_2 = 2,
			torso_1 = 32,   torso_2 = 3,
			decals_1 = 19,   decals_2 = 0,
			arms = 190,
			pants_1 = 25,   pants_2 = 1,
			shoes_1 = 54,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = -1,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0,
			bags_1 = -1,	bags_2 = 0,
		},
		female = {
			tshirt_1 = 30,  tshirt_2 = 2,
			torso_1 = 265,   torso_2 = 3,
			decals_1 = 10,   decals_2 = 0,
			arms = 44,
			pants_1 = 105,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
		helmet_1 = -1,   helmet_2 = 0,
		ears_1 = -1,     ears_2 = 0,
		bags_1 = -1,	bags_2 = 0,
		}
	},

	det = {
		male = {
			tshirt_1 = 40,  tshirt_2 = 2,
			torso_1 = 32,   torso_2 = 4,
			decals_1 = 19,   decals_2 = 0,
			arms = 190,
			pants_1 = 25,   pants_2 = 1,
			shoes_1 = 54,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = -1,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0,
			bags_1 = -1,	bags_2 = 0,
		},
		female = {
			tshirt_1 = 30,  tshirt_2 = 2,
			torso_1 = 265,   torso_2 = 4,
			decals_1 = 10,   decals_2 = 0,
			arms = 44,
			pants_1 = 105,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,   helmet_2 = 0,
			chain_1 = 3,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0,
			bags_1 = -1,	bags_2 = 0,
		}
	},

	lieutenant = {
		male = {
			tshirt_1 = 40,  tshirt_2 = 2,
			torso_1 = 32,   torso_2 = 5,
			decals_1 = 19,   decals_2 = 0,
			arms = 190,
			pants_1 = 25,   pants_2 = 1,
			shoes_1 = 54,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = -1,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0,
			bags_1 = -1,	bags_2 = 0,
		},
		female = {
			tshirt_1 = 30,  tshirt_2 = 2,
			torso_1 = 265,   torso_2 = 5,
			decals_1 = 10,   decals_2 = 0,
			arms = 44,
			pants_1 = 105,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,   helmet_2 = 0,
			chain_1 = 3,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0,
			bags_1 = -1,	bags_2 = 0,
		}
	},
	--
	boss = {
		male = {
			tshirt_1 = 40,  tshirt_2 = 2,
			torso_1 = 32,   torso_2 = 6,
			decals_1 = 19,   decals_2 = 0,
			arms = 190,
			pants_1 = 25,   pants_2 = 1,
			shoes_1 = 54,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = -1,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0,
			bags_1 = 73,	bags_2 = 0,
		},
		female = {
			tshirt_1 = 30,  tshirt_2 = 2,
			torso_1 = 265,   torso_2 =6,
			decals_1 = 10,   decals_2 = 0,
			arms = 44,
			pants_1 = 105,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,   helmet_2 = 0,
		ears_1 = -1,     ears_2 = 0,
		bags_1 = -1,	bags_2 = 0,
		}
	},



-----------------------





	jacket_jaune = {
		male = {
			tshirt_1 = 136,  tshirt_2 = 1,
			torso_1 = 49,   torso_2 = 0,
			decals_1 = 19,   decals_2 = 0,
			arms = 37,
			pants_1 = 25,   pants_2 = 1,
			shoes_1 = 54,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = -1,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0,
			bags_1 = -1,	bags_2 = 0,
		},
		-- female = {
		-- 	tshirt_1 = 30,  tshirt_2 = 2,
		-- 	torso_1 = 168,   torso_2 =2,
		-- 	decals_1 = 10,   decals_2 = 0,
		-- 	arms = 44,
		-- 	pants_1 = 3,   pants_2 = 0,
		-- 	shoes_1 = 27,   shoes_2 = 0,
		-- helmet_1 = 13,   helmet_2 = 0,
		-- 	chain_1 = 0,    chain_2 = 0,
		-- 	ears_1 = 2,     ears_2 = 0
		-- }
	},

	jacket_norm = {
		male = {
			tshirt_1 = 136,  tshirt_2 = 1,
			torso_1 = 103,   torso_2 = 0,
			decals_1 = 19,   decals_2 = 0,
			arms = 37,
			pants_1 = 25,   pants_2 = 1,
			shoes_1 = 54,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = -1,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0,
			bags_1 = -1,	bags_2 = 0,
		},
		-- female = {
		-- 	tshirt_1 = 30,  tshirt_2 = 2,
		-- 	torso_1 = 168,   torso_2 =2,
		-- 	decals_1 = 10,   decals_2 = 0,
		-- 	arms = 44,
		-- 	pants_1 = 3,   pants_2 = 0,
		-- 	shoes_1 = 27,   shoes_2 = 0,
		-- helmet_1 = 13,   helmet_2 = 0,
		-- 	chain_1 = 0,    chain_2 = 0,
		-- 	ears_1 = 2,     ears_2 = 0
		-- }
	},





	tshirt_pat = {
		male = {
			tshirt_1 = 40,  tshirt_2 = 2,
			torso_1 = 38,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 30,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 54,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = -1,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0,
			bags_1 = 73,	bags_2 = 0,
		},
		female = {
			tshirt_1 = 30,  tshirt_2 = 2,
			torso_1 = 266,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 3,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
		helmet_1 = 13,   helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

		tshirt_narco = {
			male = {
				tshirt_1 = 40,  tshirt_2 = 2,
				torso_1 = 38,   torso_2 = 1,
				decals_1 = 0,   decals_2 = 0,
				arms = 30,
				pants_1 = 25,   pants_2 = 0,
				shoes_1 = 54,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = -1,    chain_2 = 0,
				ears_1 = -1,     ears_2 = 0,
				bags_1 = 73,	bags_2 = 0,
			},
			female = {
				tshirt_1 = 30,  tshirt_2 = 2,
				torso_1 = 266,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
				arms = 44,
				pants_1 = 3,   pants_2 = 0,
				shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = 13,   helmet_2 = 0,
				chain_1 = 0,    chain_2 = 0,
				ears_1 = 2,     ears_2 = 0
			}
		},


			tshirt_canine = {
				male = {
					tshirt_1 = 40,  tshirt_2 = 2,
					torso_1 = 38,   torso_2 = 1,
					decals_1 = 0,   decals_2 = 0,
					arms = 30,
					pants_1 = 25,   pants_2 = 0,
					shoes_1 = 54,   shoes_2 = 0,
					helmet_1 = -1,  helmet_2 = 0,
					chain_1 = -1,    chain_2 = 0,
					ears_1 = -1,     ears_2 = 0,
					bags_1 = 73,	bags_2 = 0,
				},
				female = {
					tshirt_1 = 30,  tshirt_2 = 2,
					torso_1 = 266,   torso_2 = 1,
					decals_1 = 0,   decals_2 = 0,
					arms = 44,
					pants_1 = 3,   pants_2 = 0,
					shoes_1 = 27,   shoes_2 = 0,
				helmet_1 = 13,   helmet_2 = 0,
					chain_1 = 0,    chain_2 = 0,
					ears_1 = 2,     ears_2 = 0
				}
			},


						tshirt_crime = {
							male = {
								tshirt_1 = 40,  tshirt_2 = 2,
								torso_1 = 38,   torso_2 = 4,
								decals_1 = 0,   decals_2 = 0,
								arms = 30,
								pants_1 = 25,   pants_2 = 0,
								shoes_1 = 54,   shoes_2 = 0,
								helmet_1 = -1,  helmet_2 = 0,
								chain_1 = -1,    chain_2 = 0,
								ears_1 = -1,     ears_2 = 0,
								bags_1 = 73,	bags_2 = 0,
						 },
							-- female = {
							-- 	tshirt_1 = 30,  tshirt_2 = 2,
							-- 	torso_1 = 266,   torso_2 =2,
							-- 	decals_1 = 0,   decals_2 = 0,
							-- 	arms = 44,
							-- 	pants_1 = 3,   pants_2 = 0,
							-- 	shoes_1 = 27,   shoes_2 = 0,
							-- helmet_1 = 13,   helmet_2 = 0,
							-- 	chain_1 = 0,    chain_2 = 0,
							-- 	ears_1 = 2,     ears_2 = 0
							-- }
						},









----------------------------------------





	giletjaune = {
		male = {
				bproof_1 = 10, bproof_2 = 2
		},
		female = {
			bproof_1 = 19,  bproof_2 = 0
		}
	},

	bullet_wear = {
		male = {
			bproof_1 = 12,  bproof_2 = 1
		},
		female = {
			bproof_1 = 7,  bproof_2 = 1
		}
	},

	gilet_wear = {
		male = {
			bproof_1 = 7,  bproof_2 = 1
		},
		female = {
			bproof_1 = 34,  bproof_2 = 0
		}
	},

		offgil = {
			male = {
				bproof_1 = -1,  bproof_2 = 0
			},
			female = {
				bproof_1 = -1,  bproof_2 = 0
			}
		},


	radio = {
		male = {
			bproof_1 = 19,  bproof_2 = 0
		},
		-- female = {
		-- 	bproof_1 = 21,  bproof_2 = 0
		-- }
	},

			ceint = {
			male = {
				tshirt_1 = 41,    tshirt_2 = 0,
				},
			female = {
				tshirt_1 = 27,    tshirt_2 = 0,
				 }
			},
			ceint2 = {
			male = {
				tshirt_1 = 40,    tshirt_2 = 2,
				},
			female = {
				tshirt_1 = 30,    tshirt_2 = 2,
				 }
			},



			holster1 = {
				male = {
					chain_1 = 2,
					},
				female = {
					chain_1 = 2,
					 }
			},

			holster2 = {
				male = {
					chain_1 = 6,
				},
				female = {
					chain_1 = 2,
					 }

			},

			holster3 = {
			male = {
				chain_1 = 3,
				},
				female = {
					chain_1 = 1,
					 }
			},
			badge = {
				male = {
						bags_1 = 48,	bags_2 = 0,
				},
				female = {
						bags_2 = 72,
					 }

			},

			badge_cou = {
				male = {
						bags_1 = 58,	bags_2 = 0,
				},
				female = {
						bags_2 = 58,
					 }

			},

			badge_cuisse = {
				male = {
						bags_1 = 69,	bags_2 = 0,
				},
				female = {
						bags_2 = 72,
					 }

			},
			bonet = {
				male = {
									helmet_1 = 2, helmet_2 = 0
							 },
				female = {
									helmet_1 = 119, helmet_2 = 0
							 	 }
									},

			 moto = {
				male = {
									helmet_1 = 48, helmet_2 = 0
							 },
				female = {
									helmet_1 = 48, helmet_2 = 0
							 	 }
									},


			 helico = {
				male = {
									helmet_1 = 79, helmet_2 = 0
							 },
				female = {
									helmet_1 = 78, helmet_2 = 0
							 	 }
									},
			 emeute = {
				male = {
									helmet_1 = 126, helmet_2 = 0
							 },
				female = {
									helmet_1 = 125, helmet_2 = 0
							 	 }
									},
			 casquette = {
				male = {
									helmet_1 = 9, helmet_2 = 1
							 },
				female = {
									helmet_1 = 38, helmet_2 = 1
							 	 }
									},
									offcasquette = {
									 male = {
														 helmet_1 = -1, helmet_2 = 0
													},
														},
			casquette2 = {
				male = {
								 	helmet_1 = 9, helmet_2 = 3
								 		},
				female = {
								helmet_1 = 38, helmet_2 = 3
								 }
										},
										cask9 = {
										 male = {
															 helmet_1 = 9, helmet_2 = 4
														},
														female = {
																		 helmet_1 = 38, helmet_2 = 2
																	 },
															 },
			 chapo = {
				 male = {
									 helmet_1 = 5, helmet_2 = 0
										 },
				 female = {
								 helmet_1 = 5, helmet_2 = 0
									}
										 },



}

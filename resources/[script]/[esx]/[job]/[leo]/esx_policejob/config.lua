Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 27
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 180, g = 180, b = 255}

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = false -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 300 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for cops on duty, requires esx_society
Config.EnableCustomPeds           = false -- enable custom peds in cloak room? See Config.CustomPeds below to customize peds

Config.EnableESXService           = false -- enable esx service?
Config.MaxInService               = -1

Config.Locale                     = 'fr'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(437.8815612793,-981.52215576172,30.689582824707),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(623.99761962891,4.0410208702087,75.64),
			vector3(625.61242675781,3.7563529014587,75.64),
			vector3(626.40368652344,4.6390681266785,75.64),
			vector3(624.43988037109,4.9861340522766,75.64),
			vector3(628.66864013672,4.2394785881042,75.64),
			vector3(630.23217773438,3.9637877941132,75.64),
			vector3(629.90734863281,1.992805480957,75.64),
			vector3(625.69445800781,0.65912240743637,75.64),
	--	vector3(-548.69616699219,-112.97608184814,36.859664916992)

		},

		Armories = {
			vector3(482.60873413086,-995.26501464844,30.689805984497),
			--		vector3( -1066.7313232422,-813.76013183594,15.64423084259),

		},

		Vehicles = {
--[[			{
				Spawner = vector3(460.002, -986.552, 25.7),
				InsideShop = vector3(459.215, -993.449, 25.7),

				SpawnPoints = {
					{coords = vector3(449.945, -976.205, 25.7), heading = 88.6, radius = 10.0}
				}
			}--]]
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0}
				}
			}
		},

		BossActions = {
			vector3( 620.95056152344,-27.625177383423,90.507392883301),
			vector3( -567.90960693359,-131.23886108398,47.518154144287)
		}

	}

}

Config.AuthorizedWeapons = {


shared = {
	{weapon = 'WEAPON_COMBATPISTOL', components = {0, 0, 0, 0, 0, nil}, price = 0},
	{weapon = 'WEAPON_PISTOL', components = {0, 0, 0, 0, 0, nil}, price = 0},
		{weapon = 'WEAPON_SNSPISTOL', components = {0, 0, 0, 0, 0, nil}, price = 0},
	{weapon = 'WEAPON_STUNGUN', price = 0},
	{weapon = 'WEAPON_NIGHTSTICK', price = 0},
	{weapon = 'WEAPON_FLASHLIGHT', price = 0},
		{weapon = 'WEAPON_FLARE', price = 0},

--{weapon = 'WEAPON_SMOKEGRENADE', price = 0},

	--{weapon = 'WEAPON_SMG', components = {0, 0, 0, 0, 0, nil}, price = 0},
	--	{weapon = 'WEAPON_PUMPSHOTGUN', price = 0},
--		{weapon = 'WEAPON_FBIARb', price = 0},
--	{weapon = 'WEAPON_M700', price = 0},

	},

}





Config.AuthorizedVehicles = {
	Shared = {



},

	}

Config.AuthorizedHelicopters = {

}

Config.CustomPeds = {
	shared = {
	},

}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms = {

---CADET
recruit = {
	male = {
		tshirt_1 = 41,  tshirt_2 = 0,
		torso_1 = 101,   torso_2 = 2,
		decals_1 = 0,   decals_2 = 0,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = 83,  helmet_2 = 6,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 36,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 30,  tshirt_2 = 0,
		torso_1 = 92,   torso_2 = 2,
		decals_1 = 0,   decals_2 = 0,
		arms = 44,
		pants_1 = 54,   pants_2 = 0,
		shoes_1 = 64,   shoes_2 = 0,
		helmet_1 = 82,  helmet_2 = 6,
		chain_1 = 6,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 36,	bags_2 = 0,
		}
	},

--Patrouilleur
patc = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 101,   torso_2 = 3,
		decals_1 = 0,   decals_2 = 0,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 31,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 30,  tshirt_2 = 0,
		torso_1 = 92,   torso_2 = 3,
		decals_1 = 0,   decals_2 = 0,
		arms = 44,
		pants_1 = 54,   pants_2 = 0,
		shoes_1 = 64,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 6,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 31,	bags_2 = 0,
		}
	},


patl = {
			male = {
				tshirt_1 = 40,  tshirt_2 = 0,
				torso_1 = 102,   torso_2 = 0,
				decals_1 = 0,   decals_2 = 0,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 31,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 3,
				decals_1 = 0,   decals_2 = 0,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 6,
				chain_1 = 6,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 31,	bags_2 = 0,
				}
			},


			patlb = {
			male = {
				tshirt_1 = 66,  tshirt_2 = 1,
				torso_1 = 102,   torso_2 = 1,
				decals_1 = 0,   decals_2 = 0,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 31,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 1,
				decals_1 = 0,   decals_2 = 0,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 6,
				chain_1 = 6,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 31,	bags_2 = 0,
				}
			},


patprin = {
			male = {
				tshirt_1 = 40,  tshirt_2 = 0,
				torso_1 = 92,   torso_2 = 0,
				decals_1 = 0,   decals_2 = 0,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 31,	bags_2 = 0,

			}
		},




--Brigadier

p3c = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 101,   torso_2 = 3,
		decals_1 = 15,   decals_2 = 0,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 31,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 30,  tshirt_2 = 0,
		torso_1 = 92,   torso_2 = 3,
		decals_1 = 0,   decals_2 = 0,
		arms = 44,
		pants_1 = 54,   pants_2 = 0,
		shoes_1 = 64,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 3,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 31,	bags_2 = 0,
		}
	},

p3l = {
			male = {
				tshirt_1 = 40,  tshirt_2 = 0,
				torso_1 = 102,   torso_2 = 0,
				decals_1 = 12,   decals_2 = 0,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 31,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 3,
				decals_1 = 0,   decals_2 = 0,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 6,
				chain_1 = 6,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 31,	bags_2 = 0,
				}
			},

			p3b = {
			male = {
				tshirt_1 = 66,  tshirt_2 = 1,
				torso_1 = 102,   torso_2 = 1,
				decals_1 = 12,   decals_2 = 0,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 31,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 1,
				decals_1 = 0,   decals_2 = 0,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 6,
				chain_1 = 6,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 31,	bags_2 = 0,
				}
			},


			p3k9c = {
						male = {
							tshirt_1 = 40,  tshirt_2 = 0,
							torso_1 = 101,   torso_2 = 0,
							decals_1 = 15,   decals_2 = 0,
							arms = 37,
							pants_1 = 52,   pants_2 = 0,
							shoes_1 = 25,   shoes_2 = 0,
							helmet_1 = -1,  helmet_2 = 0,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 31,	bags_2 = 0,

						},
						female = {
							tshirt_1 = 30,  tshirt_2 = 0,
							torso_1 = 92,   torso_2 = 0,
							decals_1 = 0,   decals_2 = 0,
							arms = 44,
							pants_1 = 54,   pants_2 = 0,
							shoes_1 = 64,   shoes_2 = 0,
							helmet_1 = -1,  helmet_2 = 0,
							chain_1 = 6,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 31,	bags_2 = 0,
							}
					},

					p3k9l = {
								male = {
									tshirt_1 = 40,  tshirt_2 = 0,
									torso_1 = 102,   torso_2 = 0,
									decals_1 = 12,   decals_2 = 0,
									arms = 42,
									pants_1 = 52,   pants_2 = 0,
									shoes_1 = 25,   shoes_2 = 0,
									helmet_1 = -1,  helmet_2 = 0,
									chain_1 = 9,    chain_2 = 0,
									ears_1 = 0,     ears_2 = 0,
									bags_1 = 31,	bags_2 = 0,

								},
								female = {
									tshirt_1 = 30,  tshirt_2 = 0,
									torso_1 = 93,   torso_2 = 0,
									decals_1 = 0,   decals_2 = 0,
									arms = 24,
									pants_1 = 54,   pants_2 = 0,
									shoes_1 = 64,   shoes_2 = 0,
									helmet_1 = -1,  helmet_2 = 6,
									chain_1 = 6,    chain_2 = 0,
									ears_1 = 0,     ears_2 = 0,
									bags_1 = 31,	bags_2 = 0,
									}
							},


------------------





p31c = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 101,   torso_2 = 3,
		decals_1 = 15,   decals_2 = 1,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 31,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 30,  tshirt_2 = 0,
		torso_1 = 92,   torso_2 = 3,
		decals_1 = 0,   decals_2 = 0,
		arms = 44,
		pants_1 = 54,   pants_2 = 0,
		shoes_1 = 64,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 3,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 31,	bags_2 = 0,
		}
	},

p31l = {
			male = {
				tshirt_1 = 40,  tshirt_2 = 0,
				torso_1 = 102,   torso_2 = 0,
				decals_1 = 12,   decals_2 = 1,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 31,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 3,
				decals_1 = 0,   decals_2 = 0,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 6,
				chain_1 = 6,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 31,	bags_2 = 0,
				}
			},

			p31b = {
			male = {
				tshirt_1 = 66,  tshirt_2 = 1,
				torso_1 = 102,   torso_2 = 1,
				decals_1 = 12,   decals_2 = 1,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 31,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 1,
				decals_1 = 0,   decals_2 = 0,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 6,
				chain_1 = 6,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 31,	bags_2 = 0,
				}
			},

			p31k9c = {
						male = {
							tshirt_1 = 40,  tshirt_2 = 0,
							torso_1 = 101,   torso_2 = 0,
							decals_1 = 15,   decals_2 = 1,
							arms = 37,
							pants_1 = 52,   pants_2 = 0,
							shoes_1 = 25,   shoes_2 = 0,
							helmet_1 = -1,  helmet_2 = 0,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 31,	bags_2 = 0,

						},
						female = {
							tshirt_1 = 30,  tshirt_2 = 0,
							torso_1 = 92,   torso_2 = 0,
							decals_1 = 0,   decals_2 = 0,
							arms = 44,
							pants_1 = 54,   pants_2 = 0,
							shoes_1 = 64,   shoes_2 = 0,
							helmet_1 = -1,  helmet_2 = 0,
							chain_1 = 6,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 31,	bags_2 = 0,
							}
					},

					p31k9l = {
								male = {
									tshirt_1 = 40,  tshirt_2 = 0,
									torso_1 = 102,   torso_2 = 0,
									decals_1 = 12,   decals_2 = 1,
									arms = 42,
									pants_1 = 52,   pants_2 = 0,
									shoes_1 = 25,   shoes_2 = 0,
									helmet_1 = -1,  helmet_2 = 0,
									chain_1 = 9,    chain_2 = 0,
									ears_1 = 0,     ears_2 = 0,
									bags_1 = 31,	bags_2 = 0,

								},
								female = {
									tshirt_1 = 30,  tshirt_2 = 0,
									torso_1 = 93,   torso_2 = 0,
									decals_1 = 0,   decals_2 = 0,
									arms = 24,
									pants_1 = 54,   pants_2 = 0,
									shoes_1 = 64,   shoes_2 = 0,
									helmet_1 = -1,  helmet_2 = 6,
									chain_1 = 6,    chain_2 = 0,
									ears_1 = 0,     ears_2 = 0,
									bags_1 = 31,	bags_2 = 0,
									}
							},




--Brigadier chef

sgtc = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 101,   torso_2 = 3,
		decals_1 = 15,   decals_2 = 2,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 31,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 30,  tshirt_2 = 0,
		torso_1 = 92,   torso_2 = 3,
		decals_1 = 0,   decals_2 = 0,
		arms = 44,
		pants_1 = 54,   pants_2 = 0,
		shoes_1 = 64,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 3,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 31,	bags_2 = 0,
		}
	},


brcl = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 102,   torso_2 = 0,
		decals_1 = 12,   decals_2 = 2,
		arms = 42,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 31,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 30,  tshirt_2 = 0,
		torso_1 = 93,   torso_2 = 3,
		decals_1 = 0,   decals_2 = 0,
		arms = 24,
		pants_1 = 54,   pants_2 = 0,
		shoes_1 = 64,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 6,
		chain_1 = 6,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 31,	bags_2 = 0,
		}
			},

			sgtk9c = {
				male = {
					tshirt_1 = 40,  tshirt_2 = 0,
					torso_1 = 102,   torso_2 = 0,
					decals_1 = 12,   decals_2 = 2,
					arms = 42,
					pants_1 = 52,   pants_2 = 0,
					shoes_1 = 25,   shoes_2 = 0,
					helmet_1 = -1,  helmet_2 = 0,
					chain_1 = 9,    chain_2 = 0,
					ears_1 = 0,     ears_2 = 0,
					bags_1 = 31,	bags_2 = 0,

				},
				female = {
					tshirt_1 = 30,  tshirt_2 = 0,
					torso_1 = 93,   torso_2 = 0,
					decals_1 = 0,   decals_2 = 0,
					arms = 24,
					pants_1 = 54,   pants_2 = 0,
					shoes_1 = 64,   shoes_2 = 0,
					helmet_1 = -1,  helmet_2 = 6,
					chain_1 = 6,    chain_2 = 0,
					ears_1 = 0,     ears_2 = 0,
					bags_1 = 31,	bags_2 = 0,
					}
							},
							sgtk9l = {
								male = {
									tshirt_1 = 40,  tshirt_2 = 0,
									torso_1 = 102,   torso_2 = 0,
									decals_1 = 12,   decals_2 = 2,
									arms = 42,
									pants_1 = 52,   pants_2 = 0,
									shoes_1 = 25,   shoes_2 = 0,
									helmet_1 = -1,  helmet_2 = 0,
									chain_1 = 9,    chain_2 = 0,
									ears_1 = 0,     ears_2 = 0,
									bags_1 = 31,	bags_2 = 0,

								},
								female = {
									tshirt_1 = 30,  tshirt_2 = 0,
									torso_1 = 93,   torso_2 = 0,
									decals_1 = 0,   decals_2 = 0,
									arms = 24,
									pants_1 = 54,   pants_2 = 0,
									shoes_1 = 64,   shoes_2 = 0,
									helmet_1 = -1,  helmet_2 = 6,
									chain_1 = 6,    chain_2 = 0,
									ears_1 = 0,     ears_2 = 0,
									bags_1 = 31,	bags_2 = 0,
									}
											},



--Major

majc = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 101,   torso_2 = 3,
		decals_1 = 15,   decals_2 = 3,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 30,  tshirt_2 = 0,
		torso_1 = 92,   torso_2 = 3,
		decals_1 = 0,   decals_2 = 0,
		arms = 44,
		pants_1 = 54,   pants_2 = 0,
		shoes_1 = 64,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 3,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 31,	bags_2 = 0,
		}
	},


		majormoto = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 159,   torso_2 = 0,
		decals_1 = 15,   decals_2 = 3,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
	},
	},


majl = {
			male = {
				tshirt_1 = 40,  tshirt_2 = 0,
				torso_1 = 102,   torso_2 = 0,
				decals_1 = 12,   decals_2 = 3,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
			bags_1 = 35,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 0,
				decals_1 = 10,   decals_2 = 3,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = 83,  helmet_2 = 6,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
				}
			},
			majlb = {
			male = {
				tshirt_1 = 66,  tshirt_2 = 1,
				torso_1 = 102,   torso_2 = 1,
				decals_1 = 12,   decals_2 = 3,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
			bags_1 = 35,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 1,
				decals_1 = 10,   decals_2 = 3,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = 83,  helmet_2 = 6,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
				}
			},

			sgt2k9c = {
						male = {
							tshirt_1 = 40,  tshirt_2 = 0,
							torso_1 = 101,   torso_2 = 0,
							decals_1 = 15,   decals_2 = 3,
							arms = 37,
							pants_1 = 52,   pants_2 = 0,
							shoes_1 = 25,   shoes_2 = 0,
							helmet_1 = -1,  helmet_2 = 0,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 35,	bags_2 = 0,

						}
					},

					sgt2k9l = {
								male = {
									tshirt_1 = 40,  tshirt_2 = 0,
									torso_1 = 102,   torso_2 = 0,
									decals_1 = 12,   decals_2 = 3,
									arms = 42,
									pants_1 = 52,   pants_2 = 0,
									shoes_1 = 25,   shoes_2 = 0,
									helmet_1 = -1,  helmet_2 = 0,
									chain_1 = 9,    chain_2 = 0,
									ears_1 = 0,     ears_2 = 0,
									bags_1 = 35,	bags_2 = 0,

								}
							},


--lieutenant





sgt3c = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 101,   torso_2 = 3,
		decals_1 = 15,   decals_2 = 4,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 30,  tshirt_2 = 0,
		torso_1 = 92,   torso_2 = 0,
		decals_1 = 0,   decals_2 = 0,
		arms = 44,
		pants_1 = 54,   pants_2 = 0,
		shoes_1 = 64,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
		}
	},

			sgt3moto = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 159,   torso_2 = 0,
		decals_1 = 15,   decals_2 = 4,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 31,	bags_2 = 0,
	}
	},
sgt3l = {
			male = {
				tshirt_1 = 40,  tshirt_2 = 0,
				torso_1 = 102,   torso_2 = 0,
				decals_1 = 12,   decals_2 = 4,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 0,
				decals_1 = 10,   decals_2 = 4,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = 83,  helmet_2 = 6,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
				}
			},

			sgt3b = {
			male = {
				tshirt_1 = 66,  tshirt_2 = 1,
				torso_1 = 102,   torso_2 = 1,
				decals_1 = 12,   decals_2 = 4,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 0,
				decals_1 = 10,   decals_2 = 4,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = 83,  helmet_2 = 6,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
				}
			},

			sgt3k9c = {
						male = {
							tshirt_1 = 40,  tshirt_2 = 0,
							torso_1 = 101,   torso_2 = 0,
							decals_1 = 15,   decals_2 = 4,
							arms = 37,
							pants_1 = 52,   pants_2 = 0,
							shoes_1 = 25,   shoes_2 = 0,
							helmet_1 = -1,  helmet_2 = 0,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 35,	bags_2 = 0,

						}
					},

					sgt3k9l = {
								male = {
									tshirt_1 = 40,  tshirt_2 = 0,
									torso_1 = 102,   torso_2 = 0,
									decals_1 = 12,   decals_2 = 4,
									arms = 42,
									pants_1 = 52,   pants_2 = 0,
									shoes_1 = 25,   shoes_2 = 0,
									helmet_1 = -1,  helmet_2 = 0,
									chain_1 = 9,    chain_2 = 0,
									ears_1 = 0,     ears_2 = 0,
									bags_1 = 35,	bags_2 = 0,

								}
							},


det1c = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 101,   torso_2 = 3,
		decals_1 = 15,   decals_2 = 5,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 30,  tshirt_2 = 0,
		torso_1 = 92,   torso_2 = 0,
		decals_1 = 0,   decals_2 = 0,
		arms = 44,
		pants_1 = 54,   pants_2 = 0,
		shoes_1 = 64,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
		}
	},

det1l = {
			male = {
				tshirt_1 = 40,  tshirt_2 = 0,
				torso_1 = 102,   torso_2 = 0,
				decals_1 = 12,   decals_2 = 5,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 0,
				decals_1 = 10,   decals_2 = 4,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = 83,  helmet_2 = 6,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
				}
			},

	det1b = {
			male = {
				tshirt_1 = 66,  tshirt_2 = 1,
				torso_1 = 102,   torso_2 = 1,
				decals_1 = 12,   decals_2 = 5,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 0,
				decals_1 = 10,   decals_2 = 5,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = 83,  helmet_2 = 6,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
				}
			},

--Capitaine

det2c = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 101,   torso_2 = 3,
		decals_1 = 15,   decals_2 = 6,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 30,  tshirt_2 = 0,
		torso_1 = 92,   torso_2 = 0,
		decals_1 = 0,   decals_2 = 0,
		arms = 44,
		pants_1 = 54,   pants_2 = 0,
		shoes_1 = 64,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
		}
	},
	det2b = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 101,   torso_2 = 1,
		decals_1 = 15,   decals_2 = 6,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 30,  tshirt_2 = 0,
		torso_1 = 92,   torso_2 = 0,
		decals_1 = 0,   decals_2 = 0,
		arms = 44,
		pants_1 = 54,   pants_2 = 0,
		shoes_1 = 64,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
		}
	},

det2l = {
			male = {
				tshirt_1 = 40,  tshirt_2 = 0,
				torso_1 = 102,   torso_2 = 0,
				decals_1 = 12,   decals_2 = 6,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 0,
				decals_1 = 10,   decals_2 = 6,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = 83,  helmet_2 = 6,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
				}
			},

			det2b = {
			male = {
				tshirt_1 = 66,  tshirt_2 = 1,
				torso_1 = 102,   torso_2 = 1,
				decals_1 = 12,   decals_2 = 6,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 1,
				decals_1 = 10,   decals_2 = 6,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = 83,  helmet_2 = 6,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
				}
			},


--Commandant

det3c = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 101,   torso_2 = 3,
		decals_1 = 15,   decals_2 = 7,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 30,  tshirt_2 = 0,
		torso_1 = 92,   torso_2 = 0,
		decals_1 = 0,   decals_2 = 0,
		arms = 44,
		pants_1 = 54,   pants_2 = 0,
		shoes_1 = 64,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
		}
	},


det3l = {
			male = {
				tshirt_1 = 40,  tshirt_2 = 0,
				torso_1 = 102,   torso_2 = 0,
				decals_1 = 12,   decals_2 = 7,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 0,
				decals_1 = 10,   decals_2 = 7,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = 83,  helmet_2 = 6,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
				}
			},
			det3b = {
			male = {
				tshirt_1 = 66,  tshirt_2 = 1,
				torso_1 = 102,   torso_2 = 1,
				decals_1 = 12,   decals_2 = 7,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 1,
				torso_1 = 93,   torso_2 = 1,
				decals_1 = 10,   decals_2 = 7,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = 83,  helmet_2 = 6,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
				}
			},


--LT

ltc = {
	male = {
		tshirt_1 = 40,  tshirt_2 = 0,
		torso_1 = 74,   torso_2 = 3,
		decals_1 = 0,   decals_2 = 0,
		arms = 37,
		pants_1 = 52,   pants_2 = 0,
		shoes_1 = 25,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
	},

	female = {
		tshirt_1 = 30,  tshirt_2 = 0,
		torso_1 = 92,   torso_2 = 0,
		decals_1 = 0,   decals_2 = 0,
		arms = 44,
		pants_1 = 54,   pants_2 = 0,
		shoes_1 = 64,   shoes_2 = 0,
		helmet_1 = -1,  helmet_2 = 0,
		chain_1 = 9,    chain_2 = 0,
		ears_1 = 0,     ears_2 = 0,
		bags_1 = 35,	bags_2 = 0,
		}
	},

ltl = {
			male = {
				tshirt_1 = 40,  tshirt_2 = 0,
				torso_1 = 75,   torso_2 = 3,
				decals_1 = 0,   decals_2 = 0,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
			},

			female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 0,
				decals_1 = 0,   decals_2 = 0,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 64,   shoes_2 = 0,
				helmet_1 = 83,  helmet_2 = 6,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
				}
			},
ltb = {
		male = {
				tshirt_1 = 66,  tshirt_2 = 1,
				torso_1 = 102,   torso_2 = 1,
				decals_1 = 0,   decals_2 = 0,
				arms = 42,
				pants_1 = 52,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = -1,  helmet_2 = 0,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
			},

		female = {
				tshirt_1 = 30,  tshirt_2 = 0,
				torso_1 = 93,   torso_2 = 1,
				decals_1 = 0,   decals_2 = 0,
				arms = 24,
				pants_1 = 54,   pants_2 = 0,
				shoes_1 = 25,   shoes_2 = 0,
				helmet_1 = 83,  helmet_2 = 6,
				chain_1 = 9,    chain_2 = 0,
				ears_1 = 0,     ears_2 = 0,
				bags_1 = 35,	bags_2 = 0,
				}
			},
ltmoto = {
		 male = {
					tshirt_1 = 40,  tshirt_2 = 0,
					torso_1 = 159,   torso_2 = 0,
					decals_1 = 0,   decals_2 = 0,
					arms = 37,
					pants_1 = 52,   pants_2 = 0,
					shoes_1 = 25,   shoes_2 = 0,
					helmet_1 = -1,  helmet_2 = 0,
					chain_1 = 9,    chain_2 = 0,
					ears_1 = 0,     ears_2 = 0,
					bags_1 = 31,	bags_2 = 0,
		}
	},



	capc = {
		male = {
			tshirt_1 = 40,  tshirt_2 = 0,
			torso_1 = 74,   torso_2 = 4,
			decals_1 = 0,   decals_2 = 0,
			arms = 37,
			pants_1 = 52,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 9,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			bags_1 = 35,	bags_2 = 0,
		},

		female = {
			tshirt_1 = 30,  tshirt_2 = 0,
			torso_1 = 92,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 54,   pants_2 = 0,
			shoes_1 = 64,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 9,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			bags_1 = 35,	bags_2 = 0,
			}
		},

	capl = {
				male = {
					tshirt_1 = 40,  tshirt_2 = 0,
					torso_1 = 75,   torso_2 = 4,
					decals_1 = 0,   decals_2 = 0,
					arms = 42,
					pants_1 = 52,   pants_2 = 0,
					shoes_1 = 25,   shoes_2 = 0,
					helmet_1 = -1,  helmet_2 = 0,
					chain_1 = 9,    chain_2 = 0,
					ears_1 = 0,     ears_2 = 0,
					bags_1 = 35,	bags_2 = 0,
				},

				female = {
					tshirt_1 = 30,  tshirt_2 = 0,
					torso_1 = 93,   torso_2 = 0,
					decals_1 = 0,   decals_2 = 0,
					arms = 24,
					pants_1 = 54,   pants_2 = 0,
					shoes_1 = 64,   shoes_2 = 0,
					helmet_1 = 83,  helmet_2 = 6,
					chain_1 = 9,    chain_2 = 0,
					ears_1 = 0,     ears_2 = 0,
					bags_1 = 35,	bags_2 = 0,
					}
				},
	capb = {
			male = {
					tshirt_1 = 66,  tshirt_2 = 1,
					torso_1 = 102,   torso_2 = 1,
					decals_1 = 0,   decals_2 = 0,
					arms = 42,
					pants_1 = 52,   pants_2 = 0,
					shoes_1 = 25,   shoes_2 = 0,
					helmet_1 = -1,  helmet_2 = 0,
					chain_1 = 9,    chain_2 = 0,
					ears_1 = 0,     ears_2 = 0,
					bags_1 = 35,	bags_2 = 0,
				},

			female = {
					tshirt_1 = 30,  tshirt_2 = 0,
					torso_1 = 93,   torso_2 = 1,
					decals_1 = 0,   decals_2 = 0,
					arms = 24,
					pants_1 = 54,   pants_2 = 0,
					shoes_1 = 25,   shoes_2 = 0,
					helmet_1 = 83,  helmet_2 = 6,
					chain_1 = 9,    chain_2 = 0,
					ears_1 = 0,     ears_2 = 0,
					bags_1 = 35,	bags_2 = 0,
					}
				},






					bossc = {
						male = {
							tshirt_1 = 40,  tshirt_2 = 0,
							torso_1 = 74,   torso_2 = 5,
							decals_1 = 0,   decals_2 = 0,
							arms = 37,
							pants_1 = 52,   pants_2 = 0,
							shoes_1 = 25,   shoes_2 = 0,
							helmet_1 = -1,  helmet_2 = 0,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 35,	bags_2 = 0,
						},

						female = {
							tshirt_1 = 30,  tshirt_2 = 0,
							torso_1 = 92,   torso_2 = 0,
							decals_1 = 0,   decals_2 = 0,
							arms = 44,
							pants_1 = 54,   pants_2 = 0,
							shoes_1 = 64,   shoes_2 = 0,
							helmet_1 = -1,  helmet_2 = 0,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 35,	bags_2 = 0,
							}
						},

					bossl = {
								male = {
									tshirt_1 = 40,  tshirt_2 = 0,
									torso_1 = 75,   torso_2 = 5,
									decals_1 = 0,   decals_2 = 0,
									arms = 42,
									pants_1 = 52,   pants_2 = 0,
									shoes_1 = 25,   shoes_2 = 0,
									helmet_1 = -1,  helmet_2 = 0,
									chain_1 = 9,    chain_2 = 0,
									ears_1 = 0,     ears_2 = 0,
									bags_1 = 35,	bags_2 = 0,
								},

								female = {
									tshirt_1 = 30,  tshirt_2 = 0,
									torso_1 = 93,   torso_2 = 0,
									decals_1 = 0,   decals_2 = 0,
									arms = 24,
									pants_1 = 54,   pants_2 = 0,
									shoes_1 = 64,   shoes_2 = 0,
									helmet_1 = 83,  helmet_2 = 6,
									chain_1 = 9,    chain_2 = 0,
									ears_1 = 0,     ears_2 = 0,
									bags_1 = 35,	bags_2 = 0,
									}
								},
					boosb = {
							male = {
									tshirt_1 = 66,  tshirt_2 = 1,
									torso_1 = 102,   torso_2 = 1,
									decals_1 = 0,   decals_2 = 0,
									arms = 42,
									pants_1 = 52,   pants_2 = 0,
									shoes_1 = 25,   shoes_2 = 0,
									helmet_1 = -1,  helmet_2 = 0,
									chain_1 = 9,    chain_2 = 0,
									ears_1 = 0,     ears_2 = 0,
									bags_1 = 35,	bags_2 = 0,
								},

							female = {
									tshirt_1 = 30,  tshirt_2 = 0,
									torso_1 = 93,   torso_2 = 1,
									decals_1 = 0,   decals_2 = 0,
									arms = 24,
									pants_1 = 54,   pants_2 = 0,
									shoes_1 = 25,   shoes_2 = 0,
									helmet_1 = 83,  helmet_2 = 6,
									chain_1 = 9,    chain_2 = 0,
									ears_1 = 0,     ears_2 = 0,
									bags_1 = 35,	bags_2 = 0,
									}
								},






-- Commun Non officier
polonoir = {
				male = {
							tshirt_1 = 40,  tshirt_2 = 0,
							torso_1 = 2,   torso_2 = 0,
							decals_1 = 0,   decals_2 = 0,
							arms = 41,
							pants_1 = 52,   pants_2 = 0,
							shoes_1 = 25,   shoes_2 = 0,
							helmet_1 = -1,  helmet_2 = 0,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 74,	bags_2 = 0,
						},
	female = {
							tshirt_1 = 30,  tshirt_2 = 0,
							torso_1 = 14,   torso_2 = 0,
							decals_1 = 0,   decals_2 = 0,
							arms = 44,
							pants_1 = 54,   pants_2 = 0,
							shoes_1 = 64,   shoes_2 = 0,
							helmet_1 = 83,  helmet_2 = 6,
							chain_1 = 2,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 74,	bags_2 = 0,
							}
						},


prin = {
							male = {
										tshirt_1 = 40,  tshirt_2 = 0,
										torso_1 = 92,   torso_2 = 0,
										decals_1 = 0,   decals_2 = 0,
										arms = 42,
										pants_1 = 52,   pants_2 = 0,
										shoes_1 = 25,   shoes_2 = 0,
										helmet_1 = -1,  helmet_2 = 0,
										chain_1 = 9,    chain_2 = 0,
										ears_1 = 0,     ears_2 = 0,
										bags_1 = 74,	bags_2 = 0,

									},
										},
patchaud = {
						male = {
							tshirt_1 = 40,  tshirt_2 = 0,
							torso_1 = 81,   torso_2 = 0,
							decals_1 = 0,   decals_2 = 0,
							arms = 42,
							pants_1 = 52,   pants_2 = 0,
							shoes_1 = 25,   shoes_2 = 0,
							helmet_1 = -1,  helmet_2 = 0,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 74,
						},

						female = {
							tshirt_1 = 30,  tshirt_2 = 0,
							torso_1 = 74,   torso_2 = 0,
							decals_1 = 0,   decals_2 = 0,
							arms = 53,
							pants_1 = 54,   pants_2 = 0,
							shoes_1 = 64,   shoes_2 = 0,
							helmet_1 = 83,  helmet_2 = 6,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 74,
							}
						},


-- Commun  officier
polonoiroff = {
				male = {
							tshirt_1 = 40,  tshirt_2 = 0,
							torso_1 = 2,   torso_2 = 0,
							decals_1 = 0,   decals_2 = 0,
							arms = 41,
							pants_1 = 52,   pants_2 = 0,
							shoes_1 = 25,   shoes_2 = 0,
							helmet_1 = -1,  helmet_2 = 0,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 74,	bags_2 = 1,
						},
	female = {
							tshirt_1 = 30,  tshirt_2 = 0,
							torso_1 = 14,   torso_2 = 0,
							decals_1 = 0,   decals_2 = 0,
							arms = 44,
							pants_1 = 54,   pants_2 = 0,
							shoes_1 = 64,   shoes_2 = 0,
							helmet_1 = 83,  helmet_2 = 6,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 74,	bags_2 = 1,
							}
						},
polograyoff = {
				male = {
							tshirt_1 = 40,  tshirt_2 = 0,
							torso_1 = 2,   torso_2 = 1,
							decals_1 = 0,   decals_2 = 0,
							arms = 41,
							pants_1 = 52,   pants_2 = 0,
							shoes_1 = 25,   shoes_2 = 0,
							helmet_1 = -1,  helmet_2 = 0,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 74,	bags_2 = 1,
						},
	female = {
							tshirt_1 = 30,  tshirt_2 = 0,
							torso_1 = 14,   torso_2 = 1,
							decals_1 = 0,   decals_2 = 0,
							arms = 44,
							pants_1 = 54,   pants_2 = 0,
							shoes_1 = 64,   shoes_2 = 0,
							helmet_1 = 83,  helmet_2 = 6,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 74,	bags_2 = 1,
							}
						},
prinoff = {
													male = {
																tshirt_1 = 40,  tshirt_2 = 0,
																torso_1 = 92,   torso_2 = 0,
																decals_1 = 0,   decals_2 = 0,
																arms = 42,
																pants_1 = 52,   pants_2 = 0,
																shoes_1 = 25,   shoes_2 = 0,
																helmet_1 = -1,  helmet_2 = 0,
																chain_1 = 9,    chain_2 = 0,
																ears_1 = 0,     ears_2 = 0,
																bags_1 = 74,	bags_2 = 1,

															},
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
			bproof_1 = 19,  bproof_2 = 0
		},
		female = {
			bproof_1 = 21,  bproof_2 = 0
		}
	},


	giletjaune = {
		male = {
			bproof_1 = 10,  bproof_2 = 1
		},
		female = {
			bproof_1 = 10,  bproof_2 = 1
		}
	},
chaudoff = {
						male = {
							tshirt_1 = 40,  tshirt_2 = 0,
							torso_1 = 81,   torso_2 = 1,
							decals_1 = 0,   decals_2 = 0,
							arms = 42,
							pants_1 = 52,   pants_2 = 0,
							shoes_1 = 25,   shoes_2 = 0,
							helmet_1 = -1,  helmet_2 = 0,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 74,
						},

						female = {
							tshirt_1 = 30,  tshirt_2 = 0,
							torso_1 = 74,   torso_2 = 1,
							decals_1 = 0,   decals_2 = 0,
							arms = 53,
							pants_1 = 54,   pants_2 = 0,
							shoes_1 = 64,   shoes_2 = 0,
							helmet_1 = 83,  helmet_2 = 6,
							chain_1 = 9,    chain_2 = 0,
							ears_1 = 0,     ears_2 = 0,
							bags_1 = 74,
							}
						},

						chaudcom = {
							male = {
								tshirt_1 = 40,  tshirt_2 = 0,
								torso_1 = 81,   torso_2 = 2,
								decals_1 = 0,   decals_2 = 0,
								arms = 42,
								pants_1 = 52,   pants_2 = 0,
								shoes_1 = 25,   shoes_2 = 0,
								helmet_1 = -1,  helmet_2 = 0,
								chain_1 = 9,    chain_2 = 0,
								ears_1 = 0,     ears_2 = 0,
								bags_1 = 74,
							},

							female = {
								tshirt_1 = 30,  tshirt_2 = 0,
								torso_1 = 74,   torso_2 = 1,
								decals_1 = 0,   decals_2 = 0,
								arms = 53,
								pants_1 = 54,   pants_2 = 0,
								shoes_1 = 64,   shoes_2 = 0,
								helmet_1 = 83,  helmet_2 = 6,
								chain_1 = 9,    chain_2 = 0,
								ears_1 = 0,     ears_2 = 0,
								bags_1 = 74,
								}
							},

-- GILETs PAR BALLES




						swat = {
							male = {
								tshirt_1 = 122,  tshirt_2 = 0,
								torso_1 = 110,   torso_2 = 0,
								decals_1 = 0,   decals_2 = 0,
								arms = 17,
								pants_1 = 52,   pants_2 = 1,
								shoes_1 = 25,   shoes_2 = 0,
								helmet_1 = 2,  helmet_2 = 0,
								bproof_1 = 11, bproof_2 = 0,
								chain_1 = 4,    chain_2 = 0,
								ears_1 = 0,     ears_2 = 0,
								bags_1 = 74,
							},
							female = {
								tshirt_1 = 65,  tshirt_2 = 0,
								torso_1 = 99,   torso_2 = 5	,
								decals_1 = 0,   decals_2 = 0,
								arms = 57,
								pants_1 = 54,   pants_2 = 1,
								shoes_1 = 25,   shoes_2 = 0,
								helmet_1 = 149,  helmet_2 = 0,
								bproof_1 = 10, bproof_2 = 0,
								chain_1 = 1,    chain_2 = 0,
								ears_1 = 0,     ears_2 = 0,
								glasses_1 = 27,   glasses_2 = 4,
								bags_1 = 74,
							},


							},

						swatoff = {
							male = {
								tshirt_1 = 122,  tshirt_2 = 0,
								torso_1 = 110,   torso_2 = 0,
								decals_1 = 0,   decals_2 = 0,
								arms = 17,
								pants_1 = 52,   pants_2 = 1,
								shoes_1 = 25,   shoes_2 = 0,
								helmet_1 = 1,  helmet_2 = 0,
								bproof_1 = 11, bproof_2 = 0,
								chain_1 = 4,    chain_2 = 0,
								ears_1 = 0,     ears_2 = 0,
								bags_1 = 74,  bags_2 = 1,
							},

							},



parballe1 = {
	male = {
						bproof_1 = 7, bproof_2 = 0
				 },
	female = {
						bproof_1 = 19,  bproof_2 = 0
				 	 }
						},
						parballe2 = {
	male = {
							tshirt_1 = 40,    tshirt_2 = 0,
						bproof_1 = 12, bproof_2 = 0
				 },
	female = {
						bproof_1 = 19,  bproof_2 = 0
				 	 }
						},

						parballe3 = {
	male = {
						bproof_1 = 11, bproof_2 = 0
				 }
						},


--CASQUE /./ CASQUETTES
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
						helmet_1 = 83, helmet_2 = 1
				 },
	female = {
						helmet_1 = 82, helmet_2 = 1
				 	 }
						},
						casquette2 = {
	male = {
					 	helmet_1 = 83, helmet_2 = 0
					 		},
	female = {
					 helmet_1 = 82, helmet_2 = 0
					 }
							},
							cask9 = {
							 male = {
												 helmet_1 = 83, helmet_2 = 4
											},
											female = {
															 helmet_1 = 82, helmet_2 = 4
														 },
												 },
	holster1 = {
		male = {
			chain_1 = 2,    chain_2 = 0,
			},
		female = {
			chain_1 = 2,    chain_2 = 0,
			 }
		},


		holster2 = {
			male = {
				chain_1 = 3,    chain_2 = 0,
				},
			female = {
				chain_1 = 3,    chain_2 = 0,
				 }
			},

badge = {
		male = {
			bags_1 = 33,    bags_2 = 0,
			},
		female = {
			bags_1 = 33,    bags_2 = 0,
			 }
		},
badgeoff = {
		male = {
			bags_1 = 33,    bags_2 = 1,
			},
		female = {
			bags_1 = 33,    bags_2 = 1,
			 }
		},



		ceint = {
		male = {
			tshirt_1 = 41,    tshirt_2 = 0,
			},
		female = {
			tshirt_1 = 30,    tshirt_2 = 0,
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

		ceint2 = {
		male = {
			tshirt_1 = 40,    tshirt_2 = 0,
			},
		female = {
			tshirt_1 = 27,    tshirt_2 = 0,
			 }
		},

}









-- CODE 10

Config.TenCodes = {
	{ code = '7', codeText = '~r~Hors service'},
	{ code = '8', codeText = '~g~En Service'},
	{ code = '11', codeText = '~g~Control Routier'},
	{ code = '12', codeText = '~g~Patrouille Lincolm'},
	{ code = '19', codeText = '~y~Retour QG'},
	{ code = '23', codeText = '~g~Arrivé sur les lieux'},
	{ code = '26', codeText = '~y~Arrestation'},
	{ code = '24', codeText = '~r~BESOIN DE RENFORT'},
	{ code = '39', codeText = '~y~En code 3'},
	{ code = '40', codeText = '~y~En code 2'},
	{ code = '31', codeText = '~y~Délit en cours'},
	{ code = '50', codeText = '~y~Accident de la route'},
	{ code = '52', codeText = '~r~Besoin EMS'},
	{ code = '65', codeText = '~y~Escorte de Prisonier'},
	{ code = '70', codeText = '~y~Poursuite à pied'},
	{ code = '71', codeText = '~y~Besoin superviseur'},
	{ code = '76', codeText = '~y~En Route'},
	{ code = '78', codeText = '~y~Besoin d\'aide'},
	{ code = '80', codeText = '~r~Poursuite Véhicule'},
	{ code = '91', codeText = '~y~Prend prisonier'},
	{ code = '99', codeText = '~r~TOUTES LES UNITÉ EN RENFORT'}
}

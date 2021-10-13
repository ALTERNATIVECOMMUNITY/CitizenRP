-- Script Made By Aljunier | Made For ESX Framework --

Config = {}

Config.MarkerType = 25 --https://docs.fivem.net/game-references/markers/

----NOTE: There is not a need to lower your 'Z' value by 1 anymore, the script handles that by itself!----
Config.RentalLocations = {

    -- Car Rentals

    ['Job Centre'] = {
        ['Marker'] = {
            ['Type'] = 'Location De Voiture',
            ['x'] = -269.7,
            ['y'] = -981.309,
            ['z'] = 31.215,
        },
        ['VehicleReturn'] = {
            ['x'] = -301.208,
            ['y'] = -988.797,
            ['z'] = 31.081,
        },
        ['VehicleSpawn'] = {
            ['x'] = -297.547,
            ['y'] = -989.99,
            ['z'] = 30.474,
            ['Heading'] = 338.75
        }
    },


--[[    Example

    ['Whatever Name Your Want'] = {                 -- Name (Doesn't Matter What Name)
        ['Marker'] = {                              -- Keep as 'Marker'
            ['Type'] = 'Rental Type',               -- Enter The Type Of Rental. Available Types: Car Rental    OR    Commercial Rental
            ['x'] = x,                              -- X Coordinate for where you want people to go to to rent vehicles
            ['y'] = y,                              -- Y Coordinate for where you want people to go to to rent vehicles
            ['z'] = z,                              -- Z Coordinate for where you want people to go to to rent vehicles
        },
        ['VehicleReturn'] = {                       -- Keep as 'VehicleReturn'
            ['x'] = x,                              -- X Coordinate for where you want the vehicle return to be at
            ['y'] = y,                              -- Y Coordinate for where you want the vehicle return to be at
            ['z'] = z,                              -- Z Coordinate for where you want the vehicle return to be at
        },
        ['VehicleSpawn'] = {                        -- Keep as 'VehicleSpawn'
            ['x'] = x,                              -- X Coordinate for where you want the vehicle spawn to be at (Make sure it's a place where cars wont spawn naturally)
            ['y'] = y,                              -- Y Coordinate for where you want the vehicle spawn to be at (Make sure it's a place where cars wont spawn naturally)
            ['z'] = z,                              -- Z Coordinate for where you want the vehicle spawn to be at (Make sure it's a place where cars wont spawn naturally)
            ['Heading'] = heading                   -- Heading value that you want the vehicle to face upon spawning
        }
    },

]]
}

--Rental Cars
Config.RentalCars = {
    ['Asea'] = {
        ['Infos Sur la Location'] = {
            ['model'] = 'asea',
            ['information'] = 'Asea 100$',
            ['price'] = 100
        }
    },
    ['Rocoto'] = {
        ['Infos Sur la Location'] = {
            ['model'] = 'rocoto',
            ['information'] = 'Rocoto 100$',
            ['price'] = 100
        }
    },
    ['Felon'] = {
        ['Infos Sur la Location'] = {
            ['model'] = 'felon',
            ['information'] = 'Felon 100$',
            ['price'] = 100
        }
    },

--[[    Example

    ['Name'] = {                                        -- Name (Doesn't Matter What Name)
        ['Rental Info'] = {                             -- Keep As 'Rental Info'
            ['model'] = 'modelname',                    -- Here goes the vehicle model name you want to spawn
            ['information'] = 'Vehicle Name price$',    -- Here is what will be displayed in the menu. Ex: 'Panto $150'
            ['price'] = price                           -- Here goes the price you want the vehicle to go for. Also mark this price down in ['information'] so that the price appears in the menu
        }
    },

]]

}

Config.CommercialRentals = {
    ['Taco'] = {
        ['Rental Info'] = {
            ['model'] = 'taco',
            ['information'] = 'Taco Truck 275$',
            ['price'] = 450
        }
    },
    ['Pounder'] = {
        ['Rental Info'] = {
            ['model'] = 'pounder',
            ['information'] = 'Pounder 600$',
            ['price'] = 600
        }
    },
    ['Phantom'] = {
        ['Rental Info'] = {
            ['model'] = 'phantom',
            ['information'] = 'Phantom 900$',
            ['price'] = 900
        }
    },
    ['Packer'] = {
        ['Rental Info'] = {
            ['model'] = 'packer',
            ['information'] = 'Packer $900',
            ['price'] = 900
        }
    },
    ['Hauler'] = {
        ['Rental Info'] = {
            ['model'] = 'hauler',
            ['information'] = 'Hauler 900$',
            ['price'] = 900
        }
    },
    ['Mule'] = {
        ['Rental Info'] = {
            ['model'] = 'mule',
            ['information'] = 'Mule $350',
            ['price'] = 350
        }
    },
    ['Mule3'] = {
        ['Rental Info'] = {
            ['model'] = 'mule3',
            ['information'] = 'Mule With Pushbar $450',
            ['price'] = 450
        }
    },
    ['Benson'] = {
        ['Rental Info'] = {
            ['model'] = 'benson',
            ['information'] = 'Benson $450',
            ['price'] = 450
        }
    },
    ['Bus'] = {
        ['Rental Info'] = {
            ['model'] = 'bus',
            ['information'] = 'Bus $1050',
            ['price'] = 1050
        }
    },
    ['Coach Bus'] = {
        ['Rental Info'] = {
            ['model'] = 'coach',
            ['information'] = 'Coach Bus $1050',
            ['price'] = 1050
        }
    },
    ['Tour Bus'] = {
        ['Rental Info'] = {
            ['model'] = 'tourbus',
            ['information'] = 'Tour Bus $550',
            ['price'] = 550
        }
    },
    ['Brickade'] = {
        ['Rental Info'] = {
            ['model'] = 'brickade',
            ['information'] = 'Brickade $1450 Including Fees',
            ['price'] = 1450
        }
    },

--[[    Example

    ['Name'] = {                                        -- Name (Doesn't Matter What Name)
        ['Rental Info'] = {                             -- Keep As 'Rental Info'
            ['model'] = 'modelname',                    -- Here goes the vehicle model name you want to spawn
            ['information'] = 'Vehicle Name price$',    -- Here is what will be displayed in the menu. Ex: 'Panto $150'
            ['price'] = price                           -- Here goes the price you want the vehicle to go for. Also mark this price down in ['information'] so that the price appears in the menu
        }
    },

]]
}

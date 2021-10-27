Config = Config or {}

-- Enables the version checher on resource start (if enabled and the resource is out of date it will print in server console)
Config.EnableVersionChecker = true

-- The derailCard position on the top of the screen (0 = right, 1 = left)
Config.detailCardMenuPosition = 0

-- The cash amount position on the top of the screen (0 = right, 1 = left)
Config.cashPosition = 0

-- If this turned off every mechanic position will be able to to cosmetics and upgrades otherwise only whitelist job can do upgrades
Config.IsUpgradesOnlyForWhitelistJobPoints = true

-- The key to access the mechanic menu, the key code and the name can be found here: https://docs.fivem.net/docs/game-references/controls/
Config.Keys = {
    action = {key = 38, label = 'E', name = '~INPUT_PICKUP~'}
}

-- Enable this to save the vehicle properties (on apply) in database in the table `owned_vehicles` in field `vehicle`
-- by default you will need `mysql-async` (https://github.com/brouznouf/fivem-mysql-async) for the database connection (uncomment the '@mysql-async/lib/MySQL.lua' in file `fxmanifest.lua`)
-- if you want to use another library for your database connection you should modify the function `saveVehicleProperties` in file `config/server_functions.lua`
Config.AutoSaveVehiclePropertiesOnApply = false

-- The default values access disrance from position if "Config.Positions" misses the value actionDistance
Config.DefaultActionDistance = 8.0

-- The default values for the blip if "Config.Positions" misses the value "blip = {}"
Config.DefaultBlip = {
    enable = true,
    type = 72,
    color = 0,
    title = 'REDLINE PERFORMANCE',
    scale = 0.5
}

-- The default values for the marker if "Config.Positions" misses the value "marker = {}"
-- The marker will only display while you are insade a vehicle and inside the `drawDistance` of each position
--      drawDistance: the dinstance from the player that the marker will draw
--      enable: if marker will draw at all or not
--      type: the type of the marker (https://docs.fivem.net/docs/game-references/markers/)
--      positionOffset: offset from the position pos
--      direction: component of the direction vector for the marker
--      rotation: rotation for the marker. Only used if the direction vector is 0.0
--      scale: the scale for the marker
--      color: marker color r: red, g: green, b: blue, a: alpha (opacity)
--      bobUpAndDownAlways: whether or not the marker should slowly animate up/down always
--      bobUpAndDownOnAccess: whether or not the marker should slowly animate up/down only if you are in range for action
--      faceCamera: if should constantly face the camera
--      rotating: if should constantly rotating
Config.DefaultMarker = {
    drawDistance = 20.0,
    enable = false,
    type = 36,
    positionOffset = {x = 0.0, y = 0.0, z = 1.0},
    direction = {x = 0.0, y = 0.0, z = 0.0},
    rotation = {x = 0.0, y = 0.0, z = 0.0},
    scale = {x = 2.0, y = 3.0, z = 2.0},
    color = {r = 255, g = 255, b = 255, a = 100},
    bobUpAndDownAlways = false,
    bobUpAndDownOnAccess = true,
    faceCamera = false,
    rotating = true
}

-- Add or remove position for mechanic access points
-- if any position miss the property "whitelistJobName" will be open for anyone and the price will have the multiple of "Config.PriceMultiplierWithoutTheJob" in "config/prices.lua"
-- if any position miss the property "societyName" will use player cash, otherwise will use society account money (this only can be used if this point has the property "whitelistJobName") (https://github.com/esx-framework/esx_society)
-- if any position miss the property "blip = {}" will be the default as seen above "Config.DefaultBlip"
-- if any position miss the property "actionDistance" will be the default as seen above "Config.DefaultActionDistance"
Config.Positions = {
    { -- bennys




  --  pos = {x =   -583.15979003906, y = -917.96343994141, z = 23.88818359375},
--pos = {x =   440.7665, y = -1015.3730, z = 28.6879},
-- pos = {x = 914.26531982422, y = -162.77877807617, z = 74.614074707031}, --Taxi
pos = {x = 135.5724, y = -3200.2683, z = 5.8576},

  --    pos = {x = 329.60983276367, y= -573.9482421875, z = 28.796850204468}, -- Garage EMS
  --pos = {x = 392.30551147461, y =-1607.1636962891, z = 29.292039871216}, -- sheriff

        whitelistJobName = 'taxi',
      societyName = 'society_redline', -- uncomment this to enable society account for this point (only for whitelist points)
        blip = {
            enable = true,
            type = 80,
            color = 0,
            title = 'Los Santos Custom',
            scale = 0.8
        },
        marker = {
            enable = false,
            type = 30,
            positionOffset = {x = 0.0, y = 0.0, z = 0.3},
            scale = {x = 1.0, y = 1.0, z = 1.0},
            color = {r = 0, g = 0, b = 0, a = 150},
        },
        actionDistance = 7.0
    },
    { -- Pos 2
    whitelistJobName = 'redline',
    societyName = 'society_redline',
    blip = {
        enable = false,
        type = 72,
        color = 0,
        title = 'RedLine Performance',
        scale = 0.5
    },
          pos = {x = -583.26477050781, y = -924.58746337891, z = 23.886638641357},
    },
    { -- Pos 3
    whitelistJobName = 'redline',
    societyName = 'society_redline',
    blip = {
        enable = false,
        type = 72,
        color = 0,
        title = 'RedLine Performance',
        scale = 0.5
    },
        pos = {x = -583.39312744141, y = -932.08538818359, z = 23.88663482666}
    },
    { -- Peinture
    whitelistJobName = 'redline',
    societyName = 'society_redline',
    blip = {
        enable = false,
        type = 72,
        color = 0,
        title = 'RedLine Performance',
        scale = 0.5
    },
        pos = {x = -559.35717773438, y = -914.46728515625, z = 23.886646270752}
    }
    -- { -- ls customs
    --     pos = {x = -586.72, y = -114.94, z = 33.69},
    --     whitelistJobName = 'police',
    --     marker = {
    --         enable = true
    --     },
    -- },
    -- { -- paleto
    --       pos = {x = -583.26477050781, y = -924.58746337891, z = 23.886638641357},
    -- },
    -- { -- root 68
    --     pos = {x = 1174.93, y = 2639.62, z = 37.07}
    -- }
}

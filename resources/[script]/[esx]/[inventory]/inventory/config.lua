Config = {} -- do not edit

-- Version / Important
Config.PlayerWeight = true -- only works if you are using ESX 1.2 and above.

-- General
Config.DefaultOpenKey = "F2" -- default open key (users can change in their settings) | FiveM Keys
Config.DropTimeout = 600 -- change the amount of time that drops will stay on the ground (seconds)
Config.CloseOnUse = {"breathalyser", "mechanic_tools", "toolbox", "towing_rope"} -- all items in this array will close the inventory when used
Config.ClickOutsideToClose = true -- when the user clicks outside of the inventory it will close
Config.MiddleClickToUse = true -- uses item when middle click is pressed over an item
Config.Blur = true -- blurs background
Config.SoundEffects = true -- toggle sound effects on/off

-- Discord
Config.Discord = false -- enables discord logs
Config.WebhookURL = "" -- discord webhook url

-- Inventory
Config.Items = true -- toggle items on/off
Config.Weapons = true -- toggle weapon on/off
Config.Cash = true -- toggle cash on/off
Config.DirtyCash = 'black_money' -- toggle dirty cash on/off (put your black_money `id` here from esx or put `false` if you dont want dirty cash)

-- Hotbar
Config.Hotbar = true -- toggle hotbar on/off
Config.HotbarKey = 'tab' -- shows your current hotbar for a few seconds
Config.HotbarTimeout = 3000 -- change the amount of time the hotbar is on the screen (milliseconds)
Config.HotbarKeys = {157, 158, 160, 164} -- hotbar keys (1,2,3,4) (FiveM Keys)
Config.HotbarSave = true -- saves to database
Config.HotbarSlots = 4 -- hotbar slots (4 recommended)

Config.Bags = {86, 85, 82, 81, 45, 44, 41, 40, 23, 22, 21}
-- Only applies for Weapons and Cash if Config.PlayerWeight is enabled.
Config.Weights = {
    ["cash"] = 0.0001,
    ["black_money"] = 0.00015,
    ["marlborocig"] = 0.2,
    ["redwcig"] = 0.2,
    ["weapon_bat"] = 0.5,
  ["weapon_bottle"] = 0.2,
  ["weapon_crowbar"] = 0.5,
  ["weapon_unarmed"] = 0,
  ["weapon_flashlight"] = 0.5,
  ["weapon_golfclub"] = 0.6,
  ["weapon_hammer"] = 0.5,
  ["weapon_hatchet"] = 0.8,
  ["weapon_knuckle"] = 0.2,
  ["weapon_knife"] = 0.5,
  ["weapon_machete"] = 0.6,
  ["weapon_switchblade"] = 0.2,
  ["weapon_nightstick"] = 0.5,
  ["weapon_wrench"] = 0.9,
  ["weapon_battleaxe"] = 1,
  ["weapon_poolcue"] = 0.9,
  ["weapon_stone_hatchet"] = 1,
  ["weapon_pistol"] = 2,
  ["weapon_pistol_mk2"] = 2,
  ["weapon_combatpistol"] = 2,
  ["weapon_appistol"] = 2,
  ["weapon_stungun"] = 2,
  ["weapon_pistol50"] = 2,
  ["weapon_snspistol"] = 1,
  ["weapon_snspistol_mk2"] = 1,
  ["weapon_heavypistol"] = 2,
  ["weapon_vintagepistol"] = 2,
  ["weapon_flaregun"] = 1,
  ["vweapon_marksmanpistol"] = 2,
  ["weapon_revolver"] = 3,
  ["weapon_revolver_mk2"] = 3,
  ["weapon_doubleaction"] = 3,
  ["weapon_raypistol"] = 2,
  ["weapon_ceramicpistol"] = 2,
  ["weapon_navyrevolver"] = 3,
  ["weapon_gadgetpistol"] = 2,
  ["weapon_g19"] = 2,
  ["weapon_microsmg"] = 5,
  ["weapon_smg"] = 6,
  ["weapon_smg_mk2"] = 6,
  ["weapon_assaultsmg"] = 7,
  ["weapon_combatpdw"] = 7,
  ["weapon_machinepistol"] = 5,
  ["weapon_minismg"] = 5,
  ["weapon_raycarbine"] = 8,
  ["weapon_pumpshotgun"] = 8,
  ["weapon_pumpshotgun_mk2"] = 8,
  ["weapon_sawnoffshotgun"] = 7,
  ["weapon_assaultshotgun"] = 9,
  ["weapon_bullpupshotgun"] = 9,
  ["weapon_musket"] = 9,
  ["weapon_heavyshotgun"] = 10,
  ["weapon_dbshotgun"] = 6,
  ["weapon_autoshotgun"] = 7,
  ["weapon_combatshotgun"] = 8,
  ["weapon_assaultrifle"] = 10,
  ["weapon_assaultrifle_mk2"] = 10,
  ["weapon_carbinerifle"] = 10,
  ["weapon_carbinerifle_mk2"] = 10,
  ["weapon_advancedrifle"] = 10,
  ["weapon_specialcarbine"] = 10,
  ["weapon_hk416b"] = 10,
  ["weapon_mk18b"] = 10,
  ["weapon_m700"] = 10,
  ["weapon_fbiarb"] = 10,
  ["weapon_specialcarbine_mk2"] = 10,
  ["weapon_bullpuprifle"] = 10,
  ["weapon_bullpuprifle_mk2"] = 10,
  ["weapon_compactrifle"] = 9,
  ["weapon_militaryrifle"] = 12,
  ["weapon_mg"] = 15,
  ["weapon_combatmg"] = 15,
  ["weapon_combatmg_mk2"] = 15,
  ["weapon_gusenberg"] = 11,
  ["weapon_sniperrifle"] = 15,
  ["weapon_heavysniper"] = 15,
  ["weapon_heavysniper_mk2"] = 15,
  ["weapon_marksmanrifle"] = 14,
  ["weapon_marksmanrifle_mk2"] = 14,
  ["weapon_rpg"] = 20,
  ["weapon_grenadelauncher"] = 21,
  ["weapon_grenadelauncher_smoke"] = 21,
  ["weapon_minigun"] = 25,
  ["weapon_firework"] = 19,
  ["weapon_railgun"] = 18,
  ["weapon_hominglauncher"] = 25,
  ["weapon_compactlauncher"] = 9,
  ["weapon_rayminigun"] = 25,
  ["weapon_grenade"] = 0.3,
  ["weapon_bzgas"] = 0.6,
  ["weapon_molotov"] = 1,
  ["weapon_stickybomb"] = 5,
  ["weapon_proxmine"] = 5,
  ["weapon_snowball"] = 0.5,
  ["weapon_pipebomb"] = 5,
  ["weapon_ball"] = 0.5,
  ["weapon_smokegrenade"] = 1,
  ["weapon_flare"] = 1,
  ["weapon_petrolcan"] = 5,
  ["gadget_parachute"] = 5,
  ["weapon_fireextinguisher"] = 5,
  ["weapon_hazardcan"] = 5,
}


Config.JobWeight = 5000 --Set Weight Here.  Since it's for storage, probably set it really high.
Config.Jobs = {
    {
        job = 'police',
        label = 'LSPD',
        rank = {'boss', 'recruit', 'p2', 'p3', 'p3plus1', 'sgt', 'sgt2', 'sgt3', 'det1', 'det2', 'det3', 'lieutenant', 'capitaine'}
    },
    {
        job = 'job_2_name',
        label = 'Job 2 Label',
        rank = {'boss', 'other_rank'}
    },
    {
        job = 'job_3_name',
        label = 'Job 3 Label',
        rank = {'boss', 'other_rank'}
    }
}



-- Plugins
Config.Player = true -- toggle player plugin on/off
Config.Glovebox = true -- toggle glovebox on/off
Config.Trunk = true -- toggle trunk plugin on/off
Config.Rob = true -- toggle rob plugin on/off

-- Rob
Config.HandsupKey = "x" -- default handsup key (users can change in their settings) | FiveM Keys
Config.RobTimeout = 3000 -- amount of time it takes for the Robbery to load (server loading wont be affected) (milliseconds)
Config.BlacklistedItems = {"", "", ""} -- will not allow the robber to remove items that are put in this array

-- Glovebox
Config.GloveboxWeight = 30 -- weight of glovebox
Config.GloveboxTimeout = 1000 -- amount of time it takes for the Glovebox to load (server loading wont be affected) (milliseconds)
Config.GloveboxSave = true -- saves glovebox to database (owned_vehicles required in database)
Config.BlacklistedVehicleTypesGB = {13, 8} -- vehicle types that should not have a glovebox

-- Trunk
Config.TrunkKey = "k" -- default trunk open key (users can change in their settings) | FiveM Keys
Config.TrunkSave = true -- must have a owned_vehicles table in your database
Config.TrunkTimeout = 1000 -- amount of time it takes for the Trunk to load (server loading wont be affected) (milliseconds)
Config.BlacklistedVehicleTypes = {13, 8} -- Cycles and Motorcycles
Config.TrunkWeights = {
    [0] = 150, --Compact
    [1] = 200, --Sedan
    [2] = 500, --SUV
    [3] = 200, --Coupes
    [4] = 300, --Muscle
    [5] = 200, --Sports Classics
    [6] = 200, --Sports
    [7] = 150, --Super
    [8] = 0, --Motorcycles
    [9] = 500, --Off-road
    [10] = 5000, --Industrial
    [11] = 2000, --Utility
    [12] = 1000, --Vans
    [13] = 0, --Cycles
    [14] = 300, --Boats
    [15] = 0, --Helicopters
    [16] = 0, --Planes
    [17] = 300, --Service
    [18] = 300, --Emergency
    [19] = 300, --Military
    [20] = 600, --Commercial
    [21] = 0 --Trains
}

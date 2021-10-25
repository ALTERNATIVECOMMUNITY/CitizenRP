Config = {}

Config.ResupplyCommand = "ammo"
Config.UnrackCommand = "unrack"
Config.RackCommand = "rack"
Config.VestCommand = "vest"

Config.PistolAmmoGiven = 60 -- amount of pistol rounds given on kit collection
Config.RifleAmmoGiven = 200 -- amount of rifle rounds given on kit collection
Config.ShotgunAmmoGivem = 60 -- amount of shotgun rounds given on kit collection

Config.PistolRefilGiven = 60 -- amount of pistol ammo given when player uses /ammo command
Config.RifleRefilGiven = 100 -- amount of rifle ammo given when player uses /ammo command
Config.ShotgunRefilGiven = 30 -- amount of shotgun ammo fiven when player uses /ammo command

Config.RefilTimes = 3 -- Amount of times an officer can use the /refil command to replenish ammo from vehicle

Config.WeaponsGiven = {
    ["pistol"] = { -- Pistol hash and components given on kit checkout
        weapon = "WEAPON_COMBATPISTOL",
        components = {
            "COMPONENT_AT_PI_FLSH",
        }
    },
    ["rifle"] = { -- rifle hash and components given on unrack rifle
        weapon = "WEAPON_FBIARb",
        components = {
            "COMPONENT_AT_AR_FLSH",
            "COMPONENT_AT_SCOPE_MEDIUM",
            "COMPONENT_AT_AR_AFGRIP",
        }
    },
    ["shotgun"] = { -- shotgun hash and components given on unrack shotgun
        weapon = "WEAPON_PUMPSHOTGUN",
        components = {
            "COMPONENT_AT_AR_FLSH",
        }
    },
    ["standard"] = { -- Other weapons given on kit checkout
        weapons = {
            "WEAPON_STUNGUN",
            "WEAPON_FLASHLIGHT",
            "WEAPON_NIGHTSTICK",
        }
    }
}

Config.Vests = {
    {label = "Porte Plaque LSPD", armor = 150, componentId = 12, textureId = 0},
    {label = "Porte Plaque SAST", armor = 150, componentId = 12, textureId = 1},
}

Config.Locations = {

    {label = "Paleto", x = -430.36602783203, y = 5999.1669921875, z = 31.716550827026},
    {label = "VPD", x = 608.86798095703, y = -14.44837474823, z = 76.628059387207},
    {label = "MRPD", x = 479.15325927734, y = -996.39184570313, z = 30.691963195801},
}

Config.Locales = {
                -- // HUD Text Entries \\ --
    ["checkout"] = "~r~[E] ~w~ pour ~g~ récupérer~w~ votre Kit",
    ["checkin"] = "~r~[E]~w~ pour ~b~ranger~w~ Kit",
    ["alreadyhas"] = "~r~ Le véhicule a déjà un kit à l'intérieur",
    ["getkit"] = "~r~[E]~w~ Pour Obtenir Le Kit",
    ["storekit"] = "~r~[E]~w~ Pour Ranger Le Kit",

              -- // Notification Entries \\ --
    ["invalidusage"] = "Invalid input~w~. ~b~Usage: ~g~/unrack [ ~h~~o~rifle~w~ | ~h~~o~shotgun~w~~g~ ]",
    ["alreadyunracked"] = "~Vous avez déjà une arme longue unrack",
    ["unrackedrifle"] = "Tu as sorti ton fusil",
    ["unrackedshotgun"] = "Tu as sorti le fufil à pompe",
    ["notcloseenough"] = "Tu n'est pas assez prèt du véhicule",
    ["novehiclewithkit"] = "Pas de véhicule avec d'équipement détecté",
    ["novehicle"] = "Aucun véhicule détecté",

    ["rackrifle"] = "Vous avez soutiré votre fusil",
    ["rackshotgun"] = "Vous avez soutiré votre fusil de chasse",
    ["nounrackedgun"] = "Vous n'avez pas une arme longue",

    ["noammo"] = "Il n'y a pas de munitions dans cette voiture",

    ["collectedammo"] = "~h~Collected:~w~\n~p~${pistolammo} ~b~Sidearm Rounds~w~\n~p~${rifleammo} ~b~Rifle Rounds\n~p~${shotgunammo} ~b~Shotgun Slugs",
    --[[ ^^ Possible Variables:
        ${pistolammo} = Amount of pistol ammo collected
        ${rifleammo} = Amount of rifle ammo collected
        ${shotgunammo} = Amount of shotgun ammo collected
        ${remaining} = Amount of refils remaining for that vehicle
    ]]

    ["alreadyhasvest"] = "Vous portez déjà un gilet",
    ["takenoffvest"] = "Vous avez enlevé votre gilet",
    ["noveston"] = "Vous n' avez pas de gilet",
    ["vestinvalid"] = "~r~That is not a valid vest input.\nRange: ${range}",
    --[[ ^^ Possible Variables:
        ${range} = Returns the range of vests available based on the config
    ]]

    ["equippedvest"] = "Équiper ${vest}",
    --[[ ^^ Possible Variables:
        ${vest} = Label for vest
        ${armor} = Amount of armor given
        ${component} = Component ID for vest
        ${texture} = Texutre ID for vest
    ]]

}

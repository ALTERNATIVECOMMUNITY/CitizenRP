------------------------------------------------------------
-- CIOT- A Simple FiveM Script, Made By Rocket Development --
-------------------------------------------------------------

-------------------------------------------------------
--           CONFIG YOUR PERIPHERALS HERE!           --
-------------------------------------------------------
Config = {
    SeatbeltKey = 311,
    BucklePrompt = '~q~[CT-V] ~w~ Appuyez sur ~b~K~w~pour ~y~ boucler ~w~ votre ceinture de sécurité.', -- The prompt displayed when they are not wearing their seatbelt
    Notification = 'UpMap', -- Choose how you would like to display your notificaiton | **Options: pNotify: Will utilize pNotify (MUST INSTALL FROM FORUMS), UpMap: Will display above minimap, InChat: Will display in chat** | Examples: LINK TO DOCS
    CarColor = true, -- Display the car color in the warning | true = Yes | false = No (VARIABLES MUST BE LOWERCASE)
    Plate = true, -- Display the vehicles plate number
    CarName = true, -- Display the car model name in the warning | true = Yes | false = No (VARIABLES MUST BE LOWERCASE) | NOTE: FOR ADDON CARS YOU MUST HAVE A veh_names.lua FOR IT TO NOT SHOW NULL | https://github.com/Jordan2139/How-To-FiveM/blob/main/cfx-server-data-master/resources/%5Bcars%5D/veneno/veh_names.lua
    DetectRate = 1, -- The chance that the script will have of sending and alert to the nearby LEO's | 1 - 1000 (1 = 1/1 chance, 1000 = 1/1000 chance)
    Dings = false, -- Do you want it to ding when the seatbelt is off? | true = Yes | false = No (VARIABLES MUST BE LOWERCASE)
    VehSpeedType = "kph", -- Do you want to use MPH or KPH for VehSpeed? | Options are "mph" or "kph"
    VehSpeed = 20, -- The speed before the vehicle will trigger the dings | Speed is in VehSpeedType
    Distance = 19.999, -- The distance at which LEO can see the alert (radius)
    CheckTime = 25, -- How often would you like the alerts to send in seconds
    UseAcePerms = false, -- Use ace permissions to decide if they can or cannot see alerts (CIOT.SeeAlerts)
    blacklistalrt = { -- Array of vehicles that are not available to recieve an alert (Only needs to be cars from the emergency class that you don't want to get alerts) | Spawncodes go here | Don't forget the comma!
    "FIRETRUK",
    "LGUARD",
    "PBUS",
    "POLMAV",
    "POLICET",
    "PRANGER",
    "PREDATOR",
    "RIOT",
    "RIOT2",
    "AMBULAN"
    },
    blacklisttrigger = { -- Array of cars that will not trigger the alert | Spawncodes go here | Don't forget the comma!
    "SALEEN",
    'taxi2'
    },
    seatbeltException = { -- Array of cars that are exempt from using a seatbelt (won't have the option to put on a seatbelt either)
        "bike1",
        "bike2",
        "blazer",
        "blazer2",
        "blazer3",
        "blazer4",
        "blazer5",
        "rcbandito",
        "foxbent1",
    },
}
--------------------------
-- ^^^ DO THAT HERE ^^^ --
--------------------------

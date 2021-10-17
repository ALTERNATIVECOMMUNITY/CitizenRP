Config = {}
------------------------------------------------------------------------------------------------------
----------------------------------------------- MAIN -------------------------------------------------
------------------------------------------------------------------------------------------------------
Config.Database = 'mysql' --[ 'mysql' / 'ghmattimysql' ] Choose your sql database script.
Config.Language = 'FR' --[ 'EN' / 'FR' / 'ES' / 'CZ' / 'PT' / 'RO' ] You can add your own locales to the Locales.lua. But make sure to add it here.

Config.UseESX = true --Do you use es_extended?
Config.ESXTriggers = { --You can change the esx events (IF NEEDED).
    main = 'esx:getSharedObject',
    load = 'esx:playerLoaded',
    job = 'esx:setJob',
}

Config.NotificationType = { --[ 'chat' / 'mythic_old' / 'mythic_new' / 'esx' / 'custom' ].
    server = 'esx',
    client = 'esx',
}
------------------------------------------------------------------------------------------------------
---------------------------------------------- MISC --------------------------------------------------
------------------------------------------------------------------------------------------------------
Config.UniqueGarages = true --Do you want to only be able to get your car from the garage you last put it in?
Config.ReturnVehiclePrice = 500 --This is the price players pay for their vehicle to be returned to their garage if it has despawned.
Config.QuickChoose_Key = 38 --The key to open the quick garage. (default E).
Config.EnterGarage_Key = 74 --The key to open the inside garage. (default H).
Config.SaveCarHealth = true --Do you want to save the poped tyres and broken doors and re-apply them all when spawning a vehicle?
Config.DisableOwnership = false --Do you want players to be able to store vehicles that are not owned by anyone else, they will automatically saved to their garage?
------------------------------------------------------------------------------------------------------
------------------------------------- VEHICLES DATABASE TABLE ----------------------------------------
------------------------------------------------------------------------------------------------------
Config.UseDatabaseVehiclesTable = true --Do you want to allow the script to grab data from the 'vehicles' table in the database? (If disabled the vehicle class or vehicle price will not show on the UI and garage tax will be disabled).
Config.GarageTax = false --Do you want to enable the Vehicle tax system? You can edit each vehicle's tax cost individually in database (vehicles -> garage_tax)?
Config.VehicleDatabase_TableNames = { --The 'vehicles' database table is a common in esx servers, but we will repurpose this to store information for us to use on the garage UI's.
    [1] = 'vehicles',
    --[2] = 'vehicles2', --We were made aware that some people use multiple vehicles tables for donator vehicles / emergency vehicles etc, so this is optional for those people.
    --[3] = 'vehicles3',
}
------------------------------------------------------------------------------------------------------
--------------------------------------------- IMPOUND ------------------------------------------------
------------------------------------------------------------------------------------------------------
Config.UseImpound = true --Do you want to use the built in impound system?
Config.ImpoundCommand = 'impound' --Customise the chat command to impound vehicles.
Config.ImpoundTime = 10 --How long it takes to impound a vehicle. (in seconds).
Config.AnyoneCanImpound = false --Do you want anyone to be able to go to the impound and pay a set fee (CivImpoundFee below), to get their vehicle out of the impound?
Config.CivImpoundFee = 1000 --^^^
Config.AllowedJobsImpound = { --Only jobs inside this table can impound vehicles or unimpound vehicles.
    ['police'] = true,
    ['sheriff'] = true,
    ['mechanic'] = true,
    --['add_more_here'] = true,
}
------------------------------------------------------------------------------------------------------
------------------------------------------ TRANSFER VEHICLE ------------------------------------------
------------------------------------------------------------------------------------------------------
Config.UseTransferVehicle = true --Do you want to use the built in command to transfer vehicles to another player?
Config.TransferVehicleCommand = 'transfervehicle' --Customise the chat command to transfer vehicles.
Config.Blasklist_transfer = { --Vehicles inside this table will not be able to be transfered to another player. Use the vehicles spawn name. eg., 'adder'.
    --[GetHashKey('adder')] = true,
}
------------------------------------------------------------------------------------------------------
--------------------------------------------- MILEAGE ------------------------------------------------
------------------------------------------------------------------------------------------------------
Config.UseMileage = true --Do you want to use the built in vehicle mileage system? The higher the miles the lower the vehicles max health will be. (or you can repurpose this for any other use).
Config.CheckMilesCommand = 'checkmiles' --Customise the chat command to check your vehicles miles and max health.
Config.MileageMultiplier = 1.0 --If you increase this number it will increase how fast vehicles gain miles. (decrease to lower).
Config.SpeedMetrics = 'kilometers' --(miles/kilometers) Choose what you want the mileage to display as.
Config.ShowMaxHealth = false --Do you want to show the max health of the vehicle you are in when you use the /checkmiles command?
------------------------------------------------------------------------------------------------------
-------------------------------------------- PROPERTY ------------------------------------------------
------------------------------------------------------------------------------------------------------
Config.UsePropertys = false --Do you want to use built in property garages?
------------------------------------------------------------------------------------------------------
------------------------------------------- GARAGE SPACE ---------------------------------------------
------------------------------------------------------------------------------------------------------
Config.UseGarageSpace = false --Do you want to limit the amount of cars each player can hold?
Config.GarageSpaceCommand = 'garagespace' --Customise the chat command to purchase extra garage space.
Config.GarageSpace = { --If Config.UseGarageSpace is enabled, this is the max amount of cars each player can own. To allow people to own more vehicles, add them to the table.
    [1] = 0,
    [2] = 0,
    [3] = 0,
    [4] = 0,
    [5] = 0,
    [6] = 0,
    [7] = 0,
    [8] = 25000,
    [9] = 50000,
    [10] = 75000,
    --[11] = 100000, --The number 11 would be the 11th garage slot, and the 100000 number would be the price for the 11th garage slot.
}
Config.GarageSpaceJobs = { --Only jobs inside this table can sell extra garage slots to players.
    ['cardealer'] = true,
    --['add_more_here'] = true,
}
------------------------------------------------------------------------------------------------------
------------------------------------------ INSIDE GARAGE ---------------------------------------------
------------------------------------------------------------------------------------------------------
Config.MaxVehiclesInsideGarage = 10 --This is the max number of vehicles that we allow into the inside garage (we are limited by the space inside the garage).
Config.Shell_Zaxis = 30 --This is how low under the ground the garage shell will spawn, you could use math.random(10,50) to make it random each time so players dont see each other in their garage.
Config.ShellTimeScript = 'easytime' --Choose which time script you are using so we can set the time when you enter the shell. [ 'easytime' / 'vsync' / 'other' ].
Config.EnginesOn = false --Do you want the vehicles engine will be turned on when you enter the inside garage?
Config.LightsOn = false --Do you want the vehicles headlights will be turned on when you enter the inside garage?
Config.UseSpotlight = true --Do you want the spotlight to shine on the closest vehicle?
Config.InsideLoopWait = 100 --The wait timer of the loop to refresh the UI. (shorter times will be mor optimised client side but longer times means more delay when moving to the next car).
Config.OnlyShowCarsInThisGarage = false --Do you want the inside garage to only show the vehicles which are currently stored at that garage.  (this works for inside garage only, even with this enabled all the cars will show in the outside UI).
Config.Blacklisted_insidegarage = { --Vehicles inside this table will not be spawned inside the garage, this is used for large vehicles that will not fit.
    [GetHashKey('flatbed')] = true,
    --[GetHashKey('add_more_here')] = true,
}
Config.CarOffsets = { --This is the offsets of the vehicles inside the garage.
    [1] = {x = -4, y = 6.5, z = -99.43, h = 135.00},--1
    [2] = {x = -4, y = 10.8, z = -99.43, h = 135.00},--2
    [3] = {x = -4, y = 15.1, z = -99.43, h = 135.00},--3
    [4] = {x = -4, y = 19.4, z = -99.43, h = 135.00},--4
    [5] = {x = -4, y = 23.7, z = -99.42, h = 135.00},--5

    [6] = {x = -12, y = 23.7, z = -99.43, h = 225.00},--6
    [7] = {x = -12, y = 19.4, z = -99.42, h = 225.00},--7
    [8] = {x = -12, y = 15.1, z = -99.42, h = 225.00},--8
    [9] = {x = -12, y = 10.8, z = -99.43, h = 225.00},--9
    [10] = {x = -12, y = 6.5, z = -99.42, h = 225.00},--10
}
------------------------------------------------------------------------------------------------------
------------------------------------------- JOB VEHICLES ---------------------------------------------
------------------------------------------------------------------------------------------------------
Config.UseJobVehicles = true ---Do you want players with defined jobs (below) to be able to use the garage ui to spawn job vehicles? (if disabled none of the options below will be used).
Config.ChooseLiverys = true ---Do you want players to be able to change liverys when they spawn a vehicle at a job garage?
Config.JobVehicles_SpawnLocations = {
    --coords: This is the area where players with defined jobs can spawn/store job vehicles.
    --distance: If the player is within the 'distance' of these coords, they can interact with the job garage.
    --method: There are 3 different methods you can use (all 3 are explained below).

        --'regular' = This will use the vehicles from the Config.JobVehicles_RegularMethod table below. These are spawned in vehicles and are not owned by anyone.
        --'personalowned' = This will use your personal job vehicles that you have purchased from the cardealer and only you can only access from your job spawn location. Vehicles in your owned_vehicles database table which have job_personalowned set to 1 will be classed as personal owned job vehicles.
        --'societyowned' = This will use society owned vehicles. This will search for your job instead of your steam/license identifier in the owned_vehicles database table and allow you to use all of the vehicles your job owns.

    ['police'] = { --If you choose to add more tables here for more jobs, they must be the jobs name, not the label.
        --MISSION ROW PD
        [1] = {coords = vector3(458.46331787109,-992.78717041016,25.699995040894), distance = 5, garage_type = 'car', method = 'societyowned'},
          [2] = {coords = vector3(449.88580322266,-976.92633056641,25.699974060059), distance = 5, garage_type = 'car', method = 'societyowned'},

         --MISSION ROW PD (cars)
      --  [3] = {coords = vector3(-1095.4829101562,-835.21295166016,37.675624847412), distance = 5, garage_type = 'air', method = 'societyowned'}, --MISSION ROW PD (helipad)
        --SANDY PD
      --  [4] = {coords = vector3(1859.16, 3678.11, 33.68), distance = 10, garage_type = 'car', method = 'societyowned'}, --SANDY PD (cars)
      --  [5] = {coords = vector3(1842.81, 3634.76, 33.32), distance = 10, garage_type = 'air', method = 'societyowned'}, --SANDY PD (helipad)
        --PALETO PD
      --  [6] = {coords = vector3(-440.03, 6031.02, 31.34), distance = 10, garage_type = 'car', method = 'societyowned'}, --PALETO PD (cars)
    --    [7] = {coords = vector3(-475.38, 5988.49, 31.34), distance = 10, garage_type = 'air', method = 'societyowned'}, --PALETO PD (helipad)
        --BOATS
        [8] = {coords = vector3(-1608.69, -1210.25, -0.42), distance = 20, garage_type = 'boat', method = 'societyowned'}, --VESPUCCI BEACH (boats)
  --      [9] = {coords = vector3(1430.31, 3776.28, 29.9), distance = 20, garage_type = 'boat', method = 'societyowned'}, --SANDY LAKE (boats)
    },

    ['sheriff'] = { --If you choose to add more tables here for more jobs, they must be the jobs name, not the label.
        --MISSION ROW PD
        [1] = {coords = vector3(916.65466308594,-165.95205688477,74.562469482422), distance = 5, garage_type = 'car', method = 'societyowned'},
    --      [2] = {coords = vector3(449.88580322266,-976.92633056641,25.699974060059), distance = 10, garage_type = 'car', method = 'societyowned'},

         --MISSION ROW PD (cars)
      [2] = {coords = vector3(362.85665893555,-1598.5958251953,36.948661804199), distance = 5, garage_type = 'air', method = 'societyowned'}, --MISSION ROW PD (helipad)
        --SANDY PD
        [3] = {coords = vector3(1859.16, 3678.11, 33.68), distance = 10, garage_type = 'car', method = 'societyowned'}, --SANDY PD (cars)
        [7] = {coords = vector3(1842.81, 3634.76, 33.32), distance = 10, garage_type = 'air', method = 'societyowned'}, --SANDY PD (helipad)
        --PALETO PD
        [5] = {coords = vector3(-440.03, 6031.02, 31.34), distance = 10, garage_type = 'car', method = 'societyowned'}, --PALETO PD (cars)
        [6] = {coords = vector3(-475.38, 5988.49, 31.34), distance = 10, garage_type = 'air', method = 'societyowned'}, --PALETO PD (helipad)
        --BOATS
--        [8] = {coords = vector3(-1608.69, -1210.25, -0.42), distance = 20, garage_type = 'boat', method = 'regular'}, --VESPUCCI BEACH (boats)
        [7] = {coords = vector3(1430.31, 3776.28, 29.9), distance = 20, garage_type = 'boat', method = 'societyowned'}, --SANDY LAKE (boats)
    },
    ['ambulance'] = {
        --PILLBOX HOSPITAL
        [1] = {coords = vector3(335.91409301758,-579.34185791016,28.796855926514), distance = 10, garage_type = 'car', method = 'societyowned'}, --PILLBOX HOSPITAL (cars)
        [2] = {coords = vector3(350.97, -587.9, 74.16), distance = 10, garage_type = 'air', method = 'societyowned'}, --PILLBOX HOSPITAL (helipad)
        --SANDY MEDICAL
        [3] = {coords = vector3(294.59, -608.86, 43.33), distance = 10, garage_type = 'car', method = 'regular'}, --SANDY MEDICAL (cars)
        [4] = {coords = vector3(1842.81, 3634.76, 33.32), distance = 10, garage_type = 'air', method = 'regular'}, --SANDY MEDICAL (helipad)
    },

    ['mechanic'] = {
        --PILLBOX HOSPITAL
        [1] = {coords = vector3(-1403.5891113281,-462.71307373047,34.482082366943), distance = 15, garage_type = 'car', method = 'regular'}, --PILLBOX HOSPITAL (cars)

    },
    ['taxi'] = {
        --PILLBOX HOSPITAL
        [1] = {coords = vector3(-1403.5891113281,-462.71307373047,34.482082366943), distance = 15, garage_type = 'car', method = 'regular'}, --PILLBOX HOSPITAL (cars)

    },
    ['brinks'] = {
        --PILLBOX HOSPITAL
        [1] = {coords = vector3(-5.4772505760193,-668.89593505859,32.338066101074), distance = 5, garage_type = 'car', method = 'societyowned'}, --PILLBOX HOSPITAL (cars)

    },
}

Config.JobVehicles_RegularMethod = { --This will only be used if any of the 'method'(s) in the table above is set to use 'regular' job vehicle.
    --The script fills in the rest of the plate characters with random numbers, so for example 'PD' would be 'PD425424'.
    ['police'] = {
        [1] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 0, garage_type = 'car', model = '11cvpiw'},
        [2] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 1, garage_type = 'car', model = '06tahoew'},
        [3] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 1, garage_type = 'car', model = '13capricew'},
        [4] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 2, garage_type = 'car', model = '16fpiuw'},
        [5] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 3, garage_type = 'car', model = '14chargerw'},
        [6] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 3, garage_type = 'car', model = '18chargerw'},
        [7] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 4, garage_type = 'car', model = '18f150w'},
        [8] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 4, garage_type = 'car', model = '18tahoew'},
        [9] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 6, garage_type = 'car', model = '18taurusw'},
        [10] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 6, garage_type = 'car', model = 'modelsleo'},
        [11] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 4, garage_type = 'car', model = 'amggtrleo'},
        [12] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 6, garage_type = 'car', model = 'viperleo'},


        [13] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 0, garage_type = 'air', model = 'b'},

        [14] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 0, garage_type = 'boat', model = 'predator'},
          [15] = {job = 'police', spawn_max = true, plate = 'PD', job_grade = 6, garage_type = 'car', model = 'policet'},
    },
    ['ambulance'] = {
        [1] = {job = 'ambulance', spawn_max = true, plate = 'EMS', job_grade = 0, garage_type = 'car', model = 'ambulance'},
        [2] = {job = 'ambulance', spawn_max = true, plate = 'EMS', job_grade = 0, garage_type = 'air', model = 'polmav'},
    },
    ['mechanic'] = {
        [1] = {job = 'mechanic', spawn_max = true, plate = 'MECA', job_grade = 0, garage_type = 'car', model = 'flatbed'},
        [2] = {job = 'mechanic', spawn_max = true, plate = 'MECA', job_grade = 0, garage_type = 'car', model = 'hdwrecker'},
        [2] = {job = 'mechanic', spawn_max = true, plate = 'MECA', job_grade = 0, garage_type = 'car', model = 'f250dot'},
    },

}
------------------------------------------------------------------------------------------------------916.65466308594,-165.95205688477,74.562469482422
--------------------------------------------- BLIPS --------------------------------------------------
------------------------------------------------------------------------------------------------------
Config.BlipNames = true --Do you want each garage to be named by its unique id, for example: 'Garage A'? (If disabled all garages will be called 'Garage').
Config.Blip = {
    ['car'] = {
        sprite = 357, --Icon of the blip.
        scale = 0.6, --Size of the blip.
        colour = 9, --Colour of the blip.
        name = Locales[Config.Language]['garage']..' ' --You dont need to change this.
    },

    ['boat'] = {
        sprite = 357,
        scale = 0.6,
        colour = 9,
        name = Locales[Config.Language]['harbor']..' '
    },

    ['air'] = {
        sprite = 357,
        scale = 0.6,
        colour = 9,
        name = Locales[Config.Language]['hangar']..' '
    },
}
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
-------------------------------------- GARAGE LOCATIONS ----------------------------------------------
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
Config.Locations = {
    {
        Garage_ID = 'A', --You can change the garage id's to what ever you like - as long as they are strings, not numbers. (but make sure to also change the default garage_id in the database).
        Type = 'car', --The type of vehicles which use this garage. ('car'/'boat'/'air').
        Dist = 10, --The distance that you can use this garage.
        x_1 = 215.09, y_1 = -805.17, z_1 = 30.81, --This is the location of the garage, where you press e to open for example.
        EventName1 = 'cd_garage:QuickChoose', --DONT CHANGE THIS.
        EventName2 = 'cd_garage:EnterGarage', --DONT CHANGE THIS.
        Name = '<b>'..Locales[Config.Language]['garage']..'</b></p>'..Locales[Config.Language]['open_garage_1']..'</p>'..Locales[Config.Language]['open_garage_2'], --You dont need to change this.
        x_2 = 212.42, y_2 = -798.77, z_2 = 30.88, h_2 = 336.61, --This is the location where the vehicle spawns.
        EnableBlip = true, --If disabled, this garage blip will not show on the map.
        JobRestricted = nil, --This will allow only players with certain jobs to use this. This is not a job garage, its still a normal garage. (SINGLE JOB EXAMPLE:  JobRestricted = {'police'},  MULTIPLE JOBS EXAMPLE:  JobRestricted = {'police', 'ambulance'}, )
    },

    {
        Garage_ID = 'B', --PINK MOTEL
        Type = 'car',
        Dist = 10,
        x_1 = 273.0, y_1 = -343.85, z_1 = 44.91,
        EventName1 = 'cd_garage:QuickChoose',
        EventName2 = 'cd_garage:EnterGarage',
        Name = '<b>'..Locales[Config.Language]['garage']..'</b></p>'..Locales[Config.Language]['open_garage_1']..'</p>'..Locales[Config.Language]['open_garage_2'],
        x_2 = 270.75, y_2 = -340.51, z_2 = 44.92, h_2 = 342.03,
        EnableBlip = true,
        JobRestricted = nil,
    },

    {
        Garage_ID = 'C', --GROVE
        Type = 'car',
        Dist = 10,
        x_1 = -71.46, y_1 = -1821.83, z_1 = 26.94,
        EventName1 = 'cd_garage:QuickChoose',
        EventName2 = 'cd_garage:EnterGarage',
        Name = '<b>'..Locales[Config.Language]['garage']..'</b></p>'..Locales[Config.Language]['open_garage_1']..'</p>'..Locales[Config.Language]['open_garage_2'],
        x_2 = -66.51, y_2 = -1828.01, z_2 = 26.94, h_2 = 235.64,
        EnableBlip = true,
        JobRestricted = nil,
    },

    {
        Garage_ID = 'D', --MIRROR
        Type = 'car',
        Dist = 10,
        x_1 = 1032.84, y_1 = -765.1, z_1 = 58.18,
        EventName1 = 'cd_garage:QuickChoose',
        EventName2 = 'cd_garage:EnterGarage',
        Name = '<b>'..Locales[Config.Language]['garage']..'</b></p>'..Locales[Config.Language]['open_garage_1']..'</p>'..Locales[Config.Language]['open_garage_2'],
        x_2 = 1023.2, y_2 = -764.27, z_2 = 57.96, h_2 = 319.66,
        EnableBlip = true,
        JobRestricted = nil,
    },

    {
        Garage_ID = 'E', --BEACH
        Type = 'car',
        Dist = 10,
        x_1 = -1248.69, y_1 = -1425.71, z_1 = 4.32,
        EventName1 = 'cd_garage:QuickChoose',
        EventName2 = 'cd_garage:EnterGarage',
        Name = '<b>'..Locales[Config.Language]['garage']..'</b></p>'..Locales[Config.Language]['open_garage_1']..'</p>'..Locales[Config.Language]['open_garage_2'],
        x_2 = -1244.27, y_2 = -1422.08, z_2 = 4.32, h_2 = 37.12,
        EnableBlip = true,
        JobRestricted = nil,
    },

    {
        Garage_ID = 'F', --G O HIGHWAY
        Type = 'car',
        Dist = 10,
        x_1 = -2961.58, y_1 = 375.93, z_1 = 15.02,
        EventName1 = 'cd_garage:QuickChoose',
        EventName2 = 'cd_garage:EnterGarage',
        Name = '<b>'..Locales[Config.Language]['garage']..'</b></p>'..Locales[Config.Language]['open_garage_1']..'</p>'..Locales[Config.Language]['open_garage_2'],
        x_2 = -2964.96, y_2 = 372.07, z_2 = 14.78, h_2 = 86.07,
        EnableBlip = true,
        JobRestricted = nil,
    },

    {
        Garage_ID = 'G', --SANDY WEST
        Type = 'car',
        Dist = 10,
        x_1 = 217.33, y_1 = 2605.65, z_1 = 46.04,
        EventName1 = 'cd_garage:QuickChoose',
        EventName2 = 'cd_garage:EnterGarage',
        Name = '<b>'..Locales[Config.Language]['garage']..'</b></p>'..Locales[Config.Language]['open_garage_1']..'</p>'..Locales[Config.Language]['open_garage_2'],
        x_2 = 216.94, y_2 = 2608.44, z_2 = 46.33, h_2 = 14.07,
        EnableBlip = true,
        JobRestricted = nil,
    },

    {
        Garage_ID = 'H', --SANDY MAIN
        Type = 'car',
        Dist = 10,
        x_1 = 1878.44, y_1 = 3760.1, z_1 = 32.94,
        EventName1 = 'cd_garage:QuickChoose',
        EventName2 = 'cd_garage:EnterGarage',
        Name = '<b>'..Locales[Config.Language]['garage']..'</b></p>'..Locales[Config.Language]['open_garage_1']..'</p>'..Locales[Config.Language]['open_garage_2'],
        x_2 = 1880.14, y_2 = 3757.73, z_2 = 32.93, h_2 = 215.54,
        EnableBlip = true,
        JobRestricted = nil,
    },

    {
        Garage_ID = 'I', --VINEWOOD
        Type = 'car',
        Dist = 10,
        x_1 = 365.21, y_1 = 295.65, z_1 = 103.46,
        EventName1 = 'cd_garage:QuickChoose',
        EventName2 = 'cd_garage:EnterGarage',
        Name = '<b>'..Locales[Config.Language]['garage']..'</b></p>'..Locales[Config.Language]['open_garage_1']..'</p>'..Locales[Config.Language]['open_garage_2'],
        x_2 = 364.84, y_2 = 289.73, z_2 = 103.42, h_2 = 164.23,
        EnableBlip = true,
        JobRestricted = nil,
    },

    {
        Garage_ID = 'J', --GRAPESEED
        Type = 'car',
        Dist = 10,
        x_1 = 1713.06, y_1 = 4745.32, z_1 = 41.96,
        EventName1 = 'cd_garage:QuickChoose',
        EventName2 = 'cd_garage:EnterGarage',
        Name = '<b>'..Locales[Config.Language]['garage']..'</b></p>'..Locales[Config.Language]['open_garage_1']..'</p>'..Locales[Config.Language]['open_garage_2'],
        x_2 = 1710.64, y_2 = 4746.94, z_2 = 41.95, h_2 = 90.11,
        EnableBlip = true,
        JobRestricted = nil,
    },

    {
        Garage_ID = 'K', --PALETO
        Type = 'car',
        Dist = 10,
        x_1 = 107.32, y_1 = 6611.77, z_1 = 31.98,
        EventName1 = 'cd_garage:QuickChoose',
        EventName2 = 'cd_garage:EnterGarage',
        Name = '<b>'..Locales[Config.Language]['garage']..'</b></p>'..Locales[Config.Language]['open_garage_1']..'</p>'..Locales[Config.Language]['open_garage_2'],
        x_2 = 110.84, y_2 = 6607.82, z_2 = 31.86, h_2 = 265.28,
        EnableBlip = true,
        JobRestricted = nil,
    },








    {   --THIS IS AN BOAT GARAGE, YOU CAN REMOVE OR ADD NEW BOAT GARAGES IF YOU WISH.
        Garage_ID = 'A',
        Type = 'boat',
        Dist = 10,
        x_1 = -806.22, y_1 = -1496.7, z_1 = 1.6,
        EventName1 = 'cd_garage:QuickChoose',
        Name = '<b>'..Locales[Config.Language]['harbor']..'</b></p>'..Locales[Config.Language]['open_garage_3'],
        x_2 = -811.54, y_2 = -1509.42, z_2 = -0.47, h_2 = 130.14,
        EnableBlip = true,
        JobRestricted = nil,
    },

    {   --THIS IS AN AIR GARAGE, YOU CAN REMOVE OR ADD NEW AIR GARAGES IF YOU WISH.
        Garage_ID = 'A',
        Type = 'air',
        Dist = 10,
        x_1 = -982.55, y_1 = -2993.94, z_1 = 13.95,
        EventName1 = 'cd_garage:QuickChoose',
        Name = '<b>'..Locales[Config.Language]['hangar']..'</b></p>'..Locales[Config.Language]['open_garage_4'],
        x_2 = -989.59, y_2 = -3004.93, z_2 = 13.94, h_2 = 58.15,
        EnableBlip = true,
        JobRestricted = nil,
    },
}
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
-------------------------------------- IMPOUND LOCATIONS ---------------------------------------------
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
Config.Impound = { --DO NOT CHANGE THE TABLE IDENTIFIERSs, for example - ['car_2'], if you wish to add more, then name the next one ['car_3']. It must have either car/boat/air in the name.
    ['car_1'] = {
        ImpoundID = 1, --The unique id of the impound.
        coords = {x = 401.28, y = -1631.44, z = 29.29}, --This is the location of the garage, where you press e to open for example.
        spawnpoint = {x = 404.66, y = -1642.03, z = 29.29, h = 225.5}, --This is the location where the vehicle spawns.
        blip = {
            sprite = 357, --Icon of the blip.
            scale = 0.5, --Size of the blip.
            colour = 3, --Colour of the blip.
            name = Locales[Config.Language]['car_city_impound'], --This can be changed in the Locales.
        }
    },

    ['car_2'] = {
        ImpoundID = 2,
        coords = {x = 1893.48, y = 3713.50, z = 32.77},
        spawnpoint = {x = 1887.123, y = 3710.348, z = 31.92, h = 212.0},
        blip = {
            sprite = 357,
            scale = 0.5,
            colour = 3,
            name = Locales[Config.Language]['car_sandy_impound'],
        }
    },

    ['boat_1'] = {
        ImpoundID = 3,
        coords = {x = -848.8, y = -1368.42, z = 1.6},
        spawnpoint = {x = -848.4, y = -1362.8, z = -0.47, h = 113.0},
        blip = {
            sprite = 357,
            scale = 0.5,
            colour = 3,
            name = Locales[Config.Language]['boat_impound'],
        }
    },

    ['air_1'] = {
        ImpoundID = 4,
        coords = {x = -956.49, y = -2919.74, z = 13.96},
        spawnpoint = {x = -960.22, y = -2934.4, z = 13.95, h = 153.0},
        blip = {
            sprite = 357,
            scale = 0.5,
            colour = 3,
            name = Locales[Config.Language]['air_impound'],
        }
    },
}

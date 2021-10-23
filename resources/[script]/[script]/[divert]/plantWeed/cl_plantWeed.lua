local table = table
local plantingTargetOffset = vector3(0,2,-3)
local plantingSpaceAbove = vector3(0,0,Config.Distance.Above)
local rayFlagsLocation = 17
local rayFlagsObstruction = 273
local activePlants = {}

local registerStrings = {
    'status_active',
    'status_passive',
}

for i,entry in ipairs(registerStrings) do
    AddTextEntry('plantWeed_'..entry, _U(entry))
end

function interactHelp(stage,action)
    BeginTextCommandDisplayHelp('plantWeed_status_active')
    -- AddTextComponentInteger(stage)
    -- AddTextComponentInteger(#Growth)
    AddTextComponentSubstringPlayerName(action)
    EndTextCommandDisplayHelp(0, false, false, 1)
end
function passiveHelp(stage,status)
    BeginTextCommandDisplayHelp('plantWeed_status_passive')
    -- AddTextComponentInteger(stage)
    -- AddTextComponentInteger(#Growth)
    AddTextComponentSubstringPlayerName(status)
    EndTextCommandDisplayHelp(0, false, false, 1)
end

function makeToast(subject,message)
    local dict = 'bkr_prop_weed'
    local icon = 'prop_cannabis_leaf_dprop_cannabis_leaf_a'
    if not HasStreamedTextureDictLoaded(dict) then
        RequestStreamedTextureDict(dict)
        while not HasStreamedTextureDictLoaded(dict) do
            Citizen.Wait(0)
        end
    end

    -- BeginTextCommandThefeedPost("STRING")
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName(message)
    --EndTextCommandThefeedPostMessagetext(
    SetNotificationMessage(
        dict, -- texture dict
        icon, -- texture name
        true, -- fade
        0, -- icon type
        'Weed', -- Sender
        subject
    )
    --EndTextCommandThefeedPostTicker(
    DrawNotification(
        false, -- important
        false -- has tokens
    )
    SetStreamedTextureDictAsNoLongerNeeded(icon)
end

function serverlog(...)
    TriggerServerEvent('plantWeed:log',...)
end

RegisterNetEvent('plantWeed:make_toast')
AddEventHandler ('plantWeed:make_toast', function(subject,message)
    makeToast(subject, message)
end)


function flatEnough(surfaceNormal)
    local x = math.abs(surfaceNormal.x)
    local y = math.abs(surfaceNormal.y)
    local z = math.abs(surfaceNormal.z)
    return (
        x <= Config.MaxGroundAngle
        and
        y <= Config.MaxGroundAngle
        and
        z >= 1.0 - Config.MaxGroundAngle
    )
end

function getPlantingLocation(visible)

    -- TODO: Refactor this *monster*, plx!
    local ped = PlayerPedId()

    if IsPedInAnyVehicle(ped) then
        return false, 'planting_in_vehicle' -- The rest can all nil out
    end

    local playerCoord = GetEntityCoords(ped)
    local target = GetOffsetFromEntityInWorldCoords(ped, plantingTargetOffset)
    local testRay = StartShapeTestRay(playerCoord, target, rayFlagsLocation, ped, 7) -- This 7 is entirely cargo cult. No idea what it does.
    local _, hit, hitLocation, surfaceNormal, material, _ = GetShapeTestResultEx(testRay)

    if hit == 1 then
        if Config.Soil[material] then
            if flatEnough(surfaceNormal) then
                local plantDistance = #(playerCoord - hitLocation)
                if plantDistance <= Config.Distance.Interact then
                    local hits = cropstate.octree:searchSphere(hitLocation, Config.Distance.Space)
                    if #hits > 0 then
                        if visible then
                            for i, hit in ipairs(hits) do
                                DrawLine(hitLocation, hit.bounds.location, 255, 0, 255, 100)
                            end
                            DrawLine(playerCoord, hitLocation, 255, 0, 255, 100)
                        end
                        return false, 'planting_too_close', hitLocation, surfaceNormal, material
                    else
                        if visible then
                            DrawLine(playerCoord, hitLocation, 0, 255, 0, 100)
                        end
                        local aboveTarget = hitLocation + plantingSpaceAbove
                        local aboveRay = StartShapeTestRay(hitLocation, aboveTarget, rayFlagsObstruction, ped, 7)
                        local _,hitAbove,hitAbovePoint = GetShapeTestResult(aboveRay)
                        if hitAbove == 1 then
                            if visible then
                                DrawLine(hitLocation, hitAbovePoint, 255, 0, 0, 100)
                            end
                            return false, 'planting_obstructed', hitLocation, surfaceNormal, material
                        else
                            if visible then
                                DrawLine(hitLocation, aboveTarget, 0, 255, 0, 100)
                            end
                            return true,'planting_ok', hitLocation, surfaceNormal, material
                        end
                    end
                else
                    if visible then
                        DrawLine(playerCoord, hitLocation, 0, 128, 0, 100)
                    end
                    return false, 'planting_too_far', hitLocation, surfaceNormal, material
                end
            else
                if visible then
                    DrawLine(playerCoord, hitLocation, 0, 0, 255, 100)
                end
                return false, 'planting_too_steep', hitLocation, surfaceNormal, material
            end
        else
            if visible then
                DrawLine(playerCoord, hitLocation, 255, 255, 0, 100)
            end
            return false, 'planting_not_suitable_soil', hitLocation, surfaceNormal, material
        end
    else
        if visible then
            DrawLine(playerCoord, target, 255, 0, 0, 255)
        end
        return false, 'planting_too_steep', hitLocation, surfaceNormal, material
    end

end

Citizen.CreateThread(function()

    -- RAT AEROPORT
    local hash = GetHashKey("a_c_rat")
    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
    end
    ped = CreatePed(28, "a_c_rat", -1043.7443, -2736.5996, 20.6629-1.02, 231.5914, false, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetPedEnveffScale(ped, 1)
    Citizen.Wait(200)
    SetBlockingOfNonTemporaryEvents(ped, true)   


    -- PED WEED
    hash = GetHashKey("a_m_y_acult_02")
    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
    end
    ped = CreatePed(28, "a_m_y_acult_02", 1909.2181, 611.5259, 177.3980, 237.6938, false, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetPedEnveffScale(ped, 1)
    Citizen.Wait(200)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    local plant1 = CreateObject(
		"bkr_prop_weed_lrg_01a", 
		1907.8402, 611.5296, 174.6187,
		false, 
		false, 
		0
	)
    local plant2 = CreateObject(
		"bkr_prop_weed_lrg_01a", 
		1908.7699, 612.6195, 174.5950,
		false, 
		false, 
		0
	)


    -- PED WEAPONS
    hash = GetHashKey("s_m_y_ammucity_01")
    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
    end
    ped = CreatePed(28, "s_m_y_ammucity_01", -2079.8945, 2611.6050, 3.0840-1.0, 108.0751, false, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetPedEnveffScale(ped, 1)
    Citizen.Wait(200)
    SetBlockingOfNonTemporaryEvents(ped, true)

    -- WEAPONS CASE BOAT
    local weaponcrate1 = CreateObject(
		"gr_prop_gr_crates_weapon_mix_01b", 
		-2076.8361, 2611.7778, 2.0, 
		false, 
		false, 
		0
	)

    local weaponcrate2 = CreateObject(
		"p_secret_weapon_02", 
		-2077.5550, 2613.7213, 2.3,
		false, 
		false, 
		0
	)

    SetEntityHeading(weaponcrate1, 200.3576)
    SetEntityHeading(weaponcrate2, 110.3576)


    -- PED COKE
    hash = GetHashKey("a_m_y_acult_02")
    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
    end
    ped = CreatePed(28, "a_m_y_acult_02", -1797.0706, 1835.7410, 151.9745, 215.2683, false, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetPedEnveffScale(ped, 1)
    Citizen.Wait(200)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_PICNIC", 0, 1)

    -- PED REVENDEUR COKE
    hash = GetHashKey("ig_avery")
    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
    end
    ped = CreatePed(28, "ig_avery", 993.0463, -2195.3433, 30.5878, 85.8273, false, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetPedEnveffScale(ped, 1)
    Citizen.Wait(200)
    SetBlockingOfNonTemporaryEvents(ped, true)

    local coketable = CreateObject(
		"prop_rub_table_02", 
		992.1797, -2195.2393, 30.5878,
		false, 
		false, 
		0
	)
    
    local case1 =  CreateObject(
		"hei_prop_hei_drug_case", 
        992.0518, -2194.6033, 31.3878,
		false, 
		false, 
		0
    )

    local case2 =  CreateObject(
		"prop_cash_case_01", 
        992.1081, -2195.9165, 31.3878,
		false, 
		false, 
		0
    )

    SetEntityHeading(coketable, 90.7240)
    SetEntityHeading(case1, 0.0)
    SetEntityHeading(case2, 270.0)
    FreezeEntityPosition(coketable, true)
    FreezeEntityPosition(case1, true)
    FreezeEntityPosition(case2, true)

    -- PED REVENDEUR WEED
    hash = GetHashKey("u_m_m_streetart_01")
    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
    end
    ped = CreatePed(28, "u_m_m_streetart_01", 1532.4819, 3587.7068, 37.7665, 256.3172, false, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetPedEnveffScale(ped, 1)
    Citizen.Wait(200)
    SetBlockingOfNonTemporaryEvents(ped, true)

    local weedtable = CreateObject(
		"bkr_prop_weed_table_01a", 
		1533.8093, 3587.4341, 37.8713,
		false, 
		false, 
		0
	)

    local moneyBag = CreateObject(
        "bkr_prop_money_counter",
        1533.8093, 3587.6341, 38.703,
		false, 
		false, 
		0
    )

    local money = CreateObject(
        "bkr_prop_money_unsorted_01",
        1533.6093, 3587.3341, 38.683,
		false, 
		false, 
		0
    )
    
    SetEntityHeading(weedtable, 257.9138)
    FreezeEntityPosition(weedtable, true)
    SetEntityHeading(moneyBag, -45.0)
    FreezeEntityPosition(moneyBag, true)
    FreezeEntityPosition(money, true)
    SetEntityHeading(money, -45.0)

     -- PED ILLEGAL OBJECT
     hash = GetHashKey("cs_mrs_thornhill")
     while not HasModelLoaded(hash) do
         RequestModel(hash)
         Wait(20)
     end
     ped = CreatePed(28, "cs_mrs_thornhill", -764.0354, -690.4615, 10.6004, 111.8663, false, true)
     FreezeEntityPosition(ped, true)
     SetEntityInvincible(ped, true)
     SetPedEnveffScale(ped, 1)
     Citizen.Wait(200)
     SetBlockingOfNonTemporaryEvents(ped, true)

     local bag = CreateObject(
		"ch_prop_heist_drill_bag_01a", 
		-764.0413, -691.0548, 10.6048,
		false, 
		false, 
		0
	)
    FreezeEntityPosition(bag, true)


    -- PED RESSELER
    hash = GetHashKey("cs_floyd")
    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
    end
    ped = CreatePed(28, "cs_floyd", 1018.8940, -3033.1567, 4.9010, 177.5410, false, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetPedEnveffScale(ped, 1)
    Citizen.Wait(200)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_LEANING", 0, 1)

    local trolley = CreateObject(
		"prop_rub_trolley03a", 
		1017.3044, -3033.1138, 4.9010,
		false, 
		false, 
		0
	)
    FreezeEntityPosition(trolley, true)

    -- PEDS BLANCHIMENT
    local blanchs = {
        vector4(-1101.5243, -1090.4635, 2.1504, 25.9650),
        vector4(-1193.2874, 301.7695, 69.8821, 30.6273),
        vector4(2746.2935, 1541.2489, 50.6870, 42.2678),
        vector4(-1421.3163, 6748.7744, 11.9090, 6.4497),
    }

    hash = GetHashKey("ig_bestmen")
     while not HasModelLoaded(hash) do
         RequestModel(hash)
         Wait(20)
     end

     for k,v in ipairs(blanchs) do 
        ped = CreatePed(28, "ig_bestmen", v.x, v.y, v.z-1, v.w, false, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetPedEnveffScale(ped, 1)
        Citizen.Wait(200)
        SetBlockingOfNonTemporaryEvents(ped, true)

        local case1 = CreateObject(
            "prop_suitcase_01d", 
            v.x+0.5, v.y+0.5, v.z-1,
            false, 
            false, 
            0
        )
        SetEntityHeading(case1, v.w+90)
        FreezeEntityPosition(case1, true)

        local case2 = CreateObject(
            "ch_prop_ch_security_case_02a", 
            v.x-0.5, v.y-0.3, v.z-1,
            false, 
            false, 
            0
        )
        SetEntityHeading(case2, v.w-60)
        FreezeEntityPosition(case2, true)
    end
end)

function GetHeadingFromPoints(a, b)

    if not a or not b then
        return 0.0
    end
    if a.x == b.x and a.y == b.y then
        return 0.0
    end
    if #(a - b) < 1 then
        return 0.0
    end

    local theta = math.atan(b.x - a.x,a.y - b.y)
    if theta < 0.0 then
        theta = theta + (math.pi * 2)
    end
    return math.deg(theta) + 180 % 360
end

local inScenario = false
local WEAPON_UNARMED = `WEAPON_UNARMED`
local lastAction = 0
function RunScenario(name, facing)
    local playerPed = PlayerPedId()
    ClearPedTasks(playerPed)
    SetCurrentPedWeapon(playerPed, WEAPON_UNARMED)
    if facing then
        local heading = GetHeadingFromPoints(GetEntityCoords(playerPed), facing)
        SetEntityHeading(playerPed, heading)
        Citizen.Wait(0) -- So it syncs before we start the scenario!
    end
    TaskStartScenarioInPlace(playerPed, name, 0, true)
    inScenario = true
end

RegisterNetEvent('plantWeed:do')
AddEventHandler ('plantWeed:do', function(scenarioName, location)
    if Config.Scenario[scenarioName] then
        Citizen.CreateThread(function()
            local begin = GetGameTimer()
            RunScenario(Config.Scenario[scenarioName], location)
            while GetGameTimer() <= begin + Config.ScenarioTime do
                Citizen.Wait(0)
            end
            if inScenario then
                ClearPedTasks(PlayerPedId())
            end
            inScenario = false
        end)
    else
    end
end)

RegisterNetEvent('plantWeed:attempt_plant')
AddEventHandler ('plantWeed:attempt_plant', function()
    local plantable, message, location, _, soil = getPlantingLocation()
    if plantable then
        TriggerServerEvent('plantWeed:success_plant', location, soil)
        lastAction = GetGameTimer()
    else
        makeToast(_U('planting_text'), _U(message))
    end
end)

function DrawIndicator(location, color)
    local range = 1.0
    DrawMarker(
        6, -- type (6 is a vertical and 3D ring)
        location,
        0.0, 0.0, 0.0, -- direction (?)
        -90.0, 0.0, 0.0, -- rotation (90 degrees because the right is really vertical)
        range, range, range, -- scale
        color[1], color[2], color[3], color[4],
        false, -- bob
        false, -- face camera
        2, -- dunno, lol, 100% cargo cult
        false, -- rotates
        0, 0, -- texture
        false -- Projects/draws on entities
    )
end

Citizen.CreateThread(function()
    local drawDistance = Config.Distance.Draw
    drawDistance = drawDistance * 1.01 -- So they don't fight about it, culling is at a slightly longer range
    while true do
        local now = GetGameTimer()
        local playerPed = PlayerPedId()

        if inScenario then
        end

        if #activePlants > 0 then
            local myLocation = GetEntityCoords(playerPed)
            local closestDistance
            local closestPlant
            local closestIndex
            for i,plant in ipairs(activePlants) do
                local distance = #(plant.at - myLocation)
                if not DoesEntityExist(plant.object) then
                    table.remove(activePlants, i)
                elseif distance > drawDistance then
                    DeleteObject(plant.object)
                    plant.node.data.object = nil
                    table.remove(activePlants, i)
                elseif not closestDistance or distance < closestDistance then
                    closestDistance = distance
                    closestPlant = plant
                    closestIndex = i
                end
            end
            if closestDistance and not IsPedInAnyVehicle(playerPed) then
                if closestDistance <= Config.Distance.Interact then
                    local stage = Growth[closestPlant.stage]
                    DrawIndicator(closestPlant.at + stage.marker.offset, stage.marker.color)
                    DisableControlAction(0, 44, true) -- Disable INPUT_COVER, as it's used to destroy plants
                    if now >= lastAction + Config.ActionTime then
                        if IsDisabledControlJustPressed(0, 44) then
                            lastAction = now
                            table.remove(activePlants, closestIndex)
                            DeleteObject(closestPlant.object)
                            TriggerServerEvent('plantWeed:remove', closestPlant.id, myLocation)
                        else
                            if stage.interact then
                                interactHelp(closestPlant.stage, _U(stage.label))
                                if IsControlJustPressed(0, 38) then
                                    lastAction = now
                                    TriggerServerEvent('plantWeed:frob', closestPlant.id, myLocation)
                                end
                            else
                                passiveHelp(closestPlant.stage, _U(stage.label))
                            end
                        end
                    end
                end
            end
            Citizen.Wait(0)
        else
            Citizen.Wait(500)
        end
    end
end)

Citizen.CreateThread(function()
    local drawDistance = Config.Distance.Draw
    while true do
        local here = GetEntityCoords(PlayerPedId())
        cropstate.octree:searchSphereAsync(here, drawDistance, function(entry)
            if not entry.data.object and not entry.data.deleted then
                local stage = entry.data.stage or 1
                local model = Growth[stage].model
                if not model or not IsModelValid(model) then
                    Citizen.Trace(tostring(model).." is not a valid model!\n")
                    model = `prop_mp_cone_01`
                end
                if not HasModelLoaded(model) then
                    RequestModel(model)
                    local begin = GetGameTimer()
                    while not HasModelLoaded(model) and GetGameTimer() < begin + 2500 do
                        Citizen.Wait(0)
                    end
                end
                if not HasModelLoaded(model) then
                    Citizen.Trace("Failed to load model for growth stage " .. stage ..", but will retry shortly!\n")
                    Citizen.Wait(2500)
                else
                    local offset = Growth[stage].offset or vector3(0,0,0)
                    local weed = CreateObject(model, entry.bounds.location + offset, false, false, false)
                    local heading = math.random(0,359) * 1.0
                    SetEntityHeading(weed, heading)
                    FreezeEntityPosition(weed, true)
                    SetEntityCollision(weed, false, true)
                    if Config.SetLOD then
                        SetEntityLodDist(weed, math.floor(drawDistance))
                    end
                    table.insert(activePlants, {node=entry, object=weed, at=entry.bounds.location, stage=stage, id=entry.data.id})
                    entry.data.object = weed
                    SetModelAsNoLongerNeeded(model)
                end
            end
        end, true)
        Citizen.Wait(1500)
    end
end)


function deleteActivePlants()
    for i,plant in ipairs(activePlants) do
        if DoesEntityExist(plant.object) then
            DeleteObject(plant.object)
        end
    end
    activePlants = {}
end


AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        deleteActivePlants()
        if inScenario then
            ClearPedTasksImmediately(PlayerPedId())
        end
    end
end)

RegisterNetEvent('plantWeed:toggle_debug')
AddEventHandler ('plantWeed:toggle_debug', function()
    if not debug.active then
        serverlog('enabled debugging')
        debug.active = true
    else
        serverlog('disabled debugging')
        debug.active = false
    end
end)

RegisterNetEvent('plantWeed:pyromaniac')
AddEventHandler ('plantWeed:pyromaniac',function(location)
    if Config.Burn.Enabled then
        local myLocation = GetEntityCoords(PlayerPedId())
        if not location then
            location = myLocation + vector3(0,0,-1) -- Because the ped location is one meter off the ground.
        end
        if #(location - myLocation) <= Config.Distance.Draw then
            Citizen.CreateThread(function()
                local begin = GetGameTimer()
                if not HasNamedPtfxAssetLoaded(Config.Burn.Effect) then
                    RequestNamedPtfxAsset(Config.Burn.Collection)
                    while not HasNamedPtfxAssetLoaded(Config.Burn.Collection) and GetGameTimer() <= begin + Config.Burn.Duration do
                        Citizen.Wait(0)
                    end
                    if not HasNamedPtfxAssetLoaded(Config.Burn.Collection) then
                    end
                end
                UseParticleFxAsset(Config.Burn.Collection)
                local handle = StartParticleFxLoopedAtCoord(Config.Burn.Effect, location + Config.Burn.Offset, Config.Burn.Rotation, Config.Burn.Scale * 1.0, false, false, false)
                while GetGameTimer() <= begin + Config.Burn.Duration do
                    Citizen.Wait(0)
                end
                StopParticleFxLooped(handle, 0)
                RemoveNamedPtfxAsset(Config.Burn.Collection)
            end)
        end
    end
end)

Citizen.CreateThread(function()
    local ready = false
    while true do
        if ready then
            if debug.active then
                local plantable, message, where, normal, material = getPlantingLocation(true)
                if message then
                end
            end
            Citizen.Wait(0)
        else
            if NetworkIsSessionStarted() then
                ready = true
                cropstate:bulkData()
            else
                Citizen.Wait(100)
            end
        end
    end
end)

RegisterNetEvent('plantWeed:groundmat')
AddEventHandler ('plantWeed:groundmat', function()
    local plantable, message, where, normal, material = getPlantingLocation(true)
    TriggerEvent("chat:addMessage", {args={'Ground material', material}})
    serverlog('Ground material:',material)

    if Config.Soil[material] then
        local quality = Config.Soil[material]
        TriggerEvent("chat:addMessage", {args={'Soil quality', quality}})
        serverlog('Soil quality:', quality)
    else
        TriggerEvent("chat:addMessage", {args={'Material not whitelisted'}})
        serverlog('Material not whitelisted')
    end
end)

RegisterNetEvent('plantWeed:test_forest')
AddEventHandler ('plantWeed:test_forest',function(count, randomStage)
    local origin = GetEntityCoords(PlayerPedId())
    
    TriggerEvent("chat:addMessage", {args={'plantWeed','Target forest size: '..count}})
    local column = math.ceil(math.sqrt(count))
    TriggerEvent("chat:addMessage", {args={'plantWeed','Column size: '..column}})

    local offset = (column * Config.Distance.Space)/2
    offset = vector3(-offset, -offset, 5)
    local cursor = origin + offset
    local planted = 0
    local forest = {}
    while planted < count do
        local found, Z = GetGroundZFor_3dCoord(cursor.x, cursor.y, cursor.z, false)
        if found then
            local stage = (planted % #Growth) + 1
            if randomStage then
                stage = math.random(#Growth)
            end
            table.insert(forest, {location=vector3(cursor.x, cursor.y, Z), stage=stage})
        end
        cursor = cursor + vector3(0, Config.Distance.Space, 0)
        planted = planted + 1
        if planted % column == 0 then
            Citizen.Wait(0)
            cursor = cursor + vector3(Config.Distance.Space, -(Config.Distance.Space * column), 0)
        end
    end
    TriggerEvent("chat:addMessage", {args={'plantWeed', 'Actual viable locations: '..#forest}})
    TriggerServerEvent('plantWeed:test_forest', forest)
end)

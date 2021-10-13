DecorRegister("haskit", false)
DecorRegister("vehhaskit", false)
DecorRegister("hasvest", false)
DecorRegister("kitbelongsto", 3)
DecorRegister("unracked", 3)
DecorRegister("ammo", 3)

range = 0

Citizen.CreateThread(function()
    while true do

        ped = PlayerPedId()
        local weapon = GetSelectedPedWeapon(ped)
        local x,y,z = table.unpack(GetEntityCoords(ped))

        if DecorGetBool(ped, "haskit") and weapon ~= GetHashKey("WEAPON_GARBAGEBAG") then
            GiveWeapon("WEAPON_GARBAGEBAG")
        end


        for k,location in pairs(Config.Locations) do
            local distance = GetDistanceBetweenCoords(location.x, location.y, location.z, x, y, z, true)

            if distance < 0.8 then
                if not DecorGetBool(ped, "haskit") then
                    DrawTxt(Config.Locales["checkout"])
                    if IsControlJustPressed(0, 38) then
                        DecorSetBool(ped, "haskit", true)
                        GiveWeapon("weapon_garbagebag")
                        GiveLoadoutToPed(ped)
                        Citizen.Wait(200)
                        AddPropToPlayer("prop_big_bag_01", 18905, 0.32, 0.0, 0.0, 0.0, 266.0, 125.0)
                        AddPropToPlayer("w_sg_pumpshotgun", 57005, 0.10, 0.0, 0.0, 0.10, 266.0, 125.0)
                    end
                else
                    DrawTxt(Config.Locales["checkin"])
                    if IsControlJustPressed(0, 38) then
                        DecorSetBool(ped, "haskit", false)
                        RemoveLoadoutFromPed(ped)
                        GiveWeapon("weapon_unarmed")
                        DestroyAllProps()
                    end
                end
            end
        end

        local coords = GetEntityCoords(ped)
        local entityWorld = GetOffsetFromEntityInWorldCoords(ped, 0.0, 20.0, 0.0)
        a, b, c, d, closestVehicle = GetRaycastResult(CastRayPointToPoint(coords.x, coords.y, coords.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, ped, 0))
        distance = GetDistanceBetweenCoords(c.x, c.y, c.z, coords.x, coords.y, coords.z, false);
        vehicleCoords = GetEntityCoords(closestVehicle)


        if distance < 1 then
            if DecorGetBool(closestVehicle, "vehhaskit") and DecorGetInt(ped, "kitbelongsto") == GetPlayerServerId(PlayerId()) then
                if DecorGetBool(ped, "haskit") then
                    DrawTxt(Config.Locales["alreadyhas"])
                else
                    DrawTxt(Config.Locales["getkit"])
                    if IsControlJustPressed(0, 38) then
                        DecorSetBool(closestVehicle, "vehhaskit", false)
                        DecorSetBool(ped, "haskit", true)
                        SetVehicleDoorOpen(closestVehicle, 5, false, false)
                        GiveWeapon("weapon_garbagebag")
                        Citizen.Wait(200)
                        AddPropToPlayer("prop_big_bag_01", 18905, 0.32, 0.0, 0.0, 0.0, 266.0, 125.0)
                        AddPropToPlayer("w_sg_pumpshotgun", 57005, 0.10, 0.0, 0.0, 0.10, 266.0, 125.0)
                        Citizen.Wait(1000)
                        SetVehicleDoorShut(closestVehicle, 5, false)
                    end
                end
            else
                if DecorGetBool(ped, "haskit") then
                    DrawTxt(Config.Locales["storekit"])
                    if IsControlJustPressed(0, 38) then
                        DecorSetBool(closestVehicle, "vehhaskit", true)
                        DecorSetInt(closestVehicle, "ammo", Config.RefilTimes)
                        DecorSetBool(ped, "haskit", false)
                        DecorSetInt(ped, "kitbelongsto", GetPlayerServerId(PlayerId()))
                        SetVehicleDoorOpen(closestVehicle, 5, false, false)
                        GiveWeapon("weapon_unarmed")
                        DestroyAllProps()

                        --table.insert(vehiclecontents, "ammo")
                        --table.insert(vehiclecontents, "longun")
                        Citizen.Wait(1000)
                        SetVehicleDoorShut(closestVehicle, 5, false)
                    end
                end
            end
        end

        DisablePlayerVehicleRewards(ped)
        Citizen.Wait(1)

    end
end)

RegisterCommand("unrack", function(source, args, raw)
    if closestVehicle then
        if DecorGetBool(closestVehicle, "vehhaskit") and DecorGetInt(ped, "kitbelongsto") == GetPlayerServerId(PlayerId()) then
            if distance < 5 then
                if not args[1] then
                    Alert(Config.Locales['invalidusage'])
                elseif DecorGetInt(ped, "unracked") == 1 or DecorGetInt(ped, "unracked") == 2 then
                    Alert(Config.Locales['alreadyunracked'])
                else
                    if args[1] == "rifle" then
                        Alert(Config.Locales['unrackedrifle'])
                        GiveConfiguredWeapon(ped, 2)
                        DecorSetInt(ped, "unracked", 1)
                        SetVehicleDoorOpen(closestVehicle, 5, false, false)
                        Citizen.Wait(1000)
                        SetVehicleDoorShut(closestVehicle, 5, false)
                    elseif args[1] == "shotgun" then
                        Alert(Config.Locales['unrackedshotgun'])
                        GiveConfiguredWeapon(ped, 3)
                        DecorSetInt(ped, "unracked", 2)
                        SetVehicleDoorOpen(closestVehicle, 5, false, false)
                        Citizen.Wait(1000)
                        SetVehicleDoorShut(closestVehicle, 5, false)
                    else
                        Alert(Config.Locales['invalidusage'])
                    end
                end
            else
                Alert(Config.Locales['notcloseenought'])
            end
        else
            Alert(Config.Locales['novehiclewithkit'])
        end
    else
        Alert(Config.Locales['novehicle'])
    end
end)

RegisterCommand("rack", function(source, args, raw)
    if DecorGetInt(ped, "unracked") == 1 then
        Alert(Config.Locales['rackrifle'])
        RemoveWeapon(Config.WeaponsGiven['rifle'].weapon)
        DecorSetInt(ped, "unracked", 0)
        GiveWeapon("weapon_unarmed")
        SetVehicleDoorOpen(closestVehicle, 5, false, false)
        Citizen.Wait(1000)
        SetVehicleDoorShut(closestVehicle, 5, false)
    elseif DecorGetInt(ped, "unracked") == 2 then
        Alert(Config.Locales['rackshotgun'])
        RemoveWeapon(Config.WeaponsGiven['shotgun'].weapon)
        DecorSetInt(ped, "unracked", 0)
        GiveWeapon("weapon_unarmed")
        SetVehicleDoorOpen(closestVehicle, 5, false, false)
        Citizen.Wait(1000)
        SetVehicleDoorShut(closestVehicle, 5, false)
    else
        Alert(Config.Locales['nounrackedgun'])
    end
end)

RegisterCommand("ammo", function(source, args, raw)
    if DecorGetInt(closestVehicle, "ammo") == 0 then
        Alert(Config.Locales['noammo'])
    else
        SetVehicleDoorOpen(closestVehicle, 5, false, false)
        for i,weapon in pairs(Config.WeaponsGiven) do
            if i == "pistol" then
                AddAmmoToPed(ped, GetHashKey(weapon.weapon), Config.PistolRefilGiven)
            elseif i == "rifle" then
                AddAmmoToPed(ped, GetHashKey(weapon.weapon), Config.RifleRefilGiven)
            elseif i == "shotgun" then
                AddAmmoToPed(ped, GetHashKey(weapon.weapon), Config.ShotgunRefilGiven)
            end
        end
        DecorSetInt(closestVehicle, "ammo", DecorGetInt(closestVehicle, "ammo") - 1)
        Alert(Config.Locales['collectedammo'] % {rifleammo = Config.RifleRefilGiven, pistolammo = Config.RifleRefilGiven, shotgunammo = Config.ShotgunRefilGiven, remaining = DecorGetInt(closestVehicle, "ammo")})
        Citizen.Wait(1000)
        SetVehicleDoorShut(closestVehicle, 5, false)
    end
end)

RegisterCommand("vest", function(source, args, raw)
    local ped = PlayerPedId()
    if args[1] == "" then
        for i,vest in pairs(Config.Vests) do
            range = range + 1
        end
        Alert(Config.Locales['vestinvalid'] % {range = "[1-" .. range .. "]"})
    elseif args[1] == "index" then
        TriggerEvent("chatMessage", "~b~Available Vests:")
        for i,vest in pairs(Config.Vests) do
            TriggerEvent("chatMessage", "~p~ID:~w~ " .. i .. " ~b~| ~p~Name: ~w~ " .. vest.label)
        end
    elseif args[1] == "off" and DecorGetBool(ped, "hasvest") == false then
        Alert(Config.Locales['noveston'])
    elseif args[1] == "off" and DecorGetBool(ped, "hasvest") == 1 then
        DecorSetBool(ped, "hasvest", false)
        Alert(Config.Locales['takenoffvest'])
        LoadAnimDict("skydive@parachute@")
        TaskPlayAnim(ped, "skydive@parachute@", "chute_off", 2.0, 2.0, -1, 48, 0, 0, 0)
        Citizen.Wait(500)
        SetPedComponentVariation(ped, 9, 0, 0, 0)
        SetPedArmour(ped, 0)
        SetVehicleDoorOpen(closestVehicle, 5, false, false)
        Citizen.Wait(1000)
        SetVehicleDoorShut(closestVehicle, 5, false)
    elseif DecorGetBool(ped, "hasvest") then
        Alert(Config.Locales['alreadyhasvest'])
    else
        if Config.Vests[tonumber(args[1])] ~= nil then
            if distance < 5 then
                if DecorGetBool(closestVehicle, "vehhaskit") then
                    DecorSetBool(ped, "hasvest", true)
                    LoadAnimDict("oddjobs@basejump@ig_15")
                    TaskPlayAnim(ped, "oddjobs@basejump@ig_15", "puton_parachute", 2.0, 2.0, -1, 48, 0, 0, 0)
                    Citizen.Wait(500)
                    SetPedComponentVariation(ped, 9, tonumber(Config.Vests[tonumber(args[1])].componentId), tonumber(Config.Vests[tonumber(args[1])].textureId), 0)
                    SetPedArmour(ped, tonumber(Config.Vests[tonumber(args[1])].armor))
                    Alert(Config.Locales['equippedvest'] % {vest = Config.Vests[tonumber(args[1])].label, armor = Config.Vests[tonumber(args[1])].armor, component = Config.Vests[tonumber(args[1])].componentId, texture = Config.Vests[tonumber(args[1])].textureId})
                    SetVehicleDoorOpen(closestVehicle, 5, false, false)
                    Citizen.Wait(1000)
                    SetVehicleDoorShut(closestVehicle, 5, false)
                else
                    Alert(Config.Locales["novehiclewithkit"])
                end
            else
                Alert(Config.Locales["notcloseenough"])
            end
        else
            for i,vest in pairs(Config.Vests) do
                range = range + 1
            end
            Alert(Config.Locales['vestinvalid'] % {range = "[1-" .. range .. "]"})
        end
    end

end)

RegisterCommand("printdecors", function(source, args, raw)
    Alert("PID: " .. GetPlayerServerId(PlayerId()) .. "\nHasKit: " .. tostring(DecorGetBool(ped, "haskit")) .. "\nVehHasKit: " .. tostring(DecorGetBool(closestVehicle, "vehhaskit")) .. "\nKitBelongsTo: " .. DecorGetInt(ped, "kitbelongsto") .. "\nUnracked: " .. DecorGetInt(ped, "unracked") .. "\nHasVest: " .. tostring(DecorGetBool(ped, "hasvest")))
end)

function Alert(string)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(string)
    DrawNotification(true, false)
end

function GiveConfiguredWeapon(ped, weapon)
    if weapon == 1 then
        GiveWeapon(Config.WeaponsGiven['pistol'].weapon)
        SetPedAmmo(ped, GetHashKey(Config.WeaponsGiven['pistol'].weapon), Config.PistolAmmoGiven)
        for i,attachment in pairs(Config.WeaponsGiven['pistol'].components) do
            GiveWeaponComponentToPed(ped, GetHashKey(Config.WeaponsGiven['pistol'].weapon), GetHashKey(attachment))
        end
        MakePedReload(ped)
    elseif weapon == 2 then
        GiveWeapon(Config.WeaponsGiven['rifle'].weapon)
        SetPedAmmo(ped, GetHashKey(Config.WeaponsGiven['rifle'].weapon), Config.RifleAmmoGiven)
        for i,attachment in pairs(Config.WeaponsGiven['rifle'].components) do
            GiveWeaponComponentToPed(ped, GetHashKey(Config.WeaponsGiven['rifle'].weapon), GetHashKey(attachment))
        end
        MakePedReload(ped)
    elseif weapon == 3 then
        GiveWeapon(Config.WeaponsGiven['shotgun'].weapon)
        SetPedAmmo(ped, GetHashKey(Config.WeaponsGiven['shotgun'].weapon), Config.ShotgunAmmoGiven)
        for i,attachment in pairs(Config.WeaponsGiven['shotgun'].components) do
            GiveWeaponComponentToPed(ped, GetHashKey(Config.WeaponsGiven['shotgun'].weapon), GetHashKey(attachment))
        end
        MakePedReload(ped)
    end
end

function GiveWeapon(hash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hash), 1, false, true)
end

function GiveLoadoutToPed(ped)
    GiveConfiguredWeapon(ped, 1)
    for i,weapon in pairs(Config.WeaponsGiven['standard'].weapons) do
        GiveWeaponToPed(ped, GetHashKey(weapon), 1, false, true)
    end
end

function RemoveLoadoutFromPed(ped)
    for i,weapon in pairs(Config.WeaponsGiven['standard'].weapons) do
        RemoveWeaponFromPed(ped, GetHashKey(weapon))
    end
    RemoveWeaponFromPed(ped, GetHashKey(Config.WeaponsGiven['shotgun'].weapon))
    RemoveWeaponFromPed(ped, GetHashKey(Config.WeaponsGiven['rifle'].weapon))
    RemoveWeaponFromPed(ped, GetHashKey(Config.WeaponsGiven['pistol'].weapon))
    DecorSetInt(ped, "unracked", 0)
end

function RemoveWeapon(hash)
    RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey(hash))
end

function LoadAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		RequestAnimDict(dict)
		Citizen.Wait(0)
	end
end

local PlayerProps = {}
local PlayerHasProp = false

function DestroyAllProps()
	for _,v in pairs(PlayerProps) do
	  DeleteEntity(v)
	end
	PlayerHasProp = false
end

function AddPropToPlayer(prop1, bone, off1, off2, off3, rot1, rot2, rot3)
	local Player = PlayerPedId()
	local x,y,z = table.unpack(GetEntityCoords(Player))

	if not HasModelLoaded(prop1) then
	  LoadPropDict(prop1)
	end

	prop = CreateObject(GetHashKey(prop1), x, y, z+0.2,  true,  true, true)
	AttachEntityToEntity(prop, Player, GetPedBoneIndex(Player, bone), off1, off2, off3, rot1, rot2, rot3, true, true, false, true, 1, true)
	table.insert(PlayerProps, prop)
	PlayerHasProp = true
	SetModelAsNoLongerNeeded(prop1)
  end

function LoadPropDict(model)
    while not HasModelLoaded(GetHashKey(model)) do
        RequestModel(GetHashKey(model))
        Wait(10)
    end
end

function DrawTxt(text)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(0.0, 0.45)
    SetTextDropshadow(1, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)

    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(0.400, 0.855)
end

function interp(s, tab)
    return (s:gsub('($%b{})', function(w) return tab[w:sub(3, -2)] or w end))
end
getmetatable("").__mod = interp

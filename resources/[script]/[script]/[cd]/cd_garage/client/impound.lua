if Config.UseImpound then
    Citizen.CreateThread(function()
        for k, v in pairs (Config.Impound) do
            local blip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
            SetBlipSprite (blip, v.blip.sprite)
            SetBlipDisplay(blip, 4)
            SetBlipScale  (blip, v.blip.scale)
            SetBlipColour (blip, v.blip.colour)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName(v.blip.name)
            EndTextCommandSetBlipName(blip)

            table.insert(Config.Locations, {Dist = 5, ImpoundName = k, x_1 = v.coords.x, y_1 = v.coords.y, z_1 = v.coords.z, EventName1 = 'cd_garage:OpenImpound', Name = '<b>'..Locales[Config.Language]['impound']..'</b></p> '..Locales[Config.Language]['open_impound']})
        end
    end)
end

RegisterNetEvent('cd_garage:OpenImpound')
AddEventHandler('cd_garage:OpenImpound', function()
    ImpoundData = nil
    while ImpoundData == nil and not ServerReplied do Wait(0) end
    if IsAllowed() then
        ShowImpound_UI(ImpoundData)
    elseif Config.AnyoneCanImpound then
        ShowImpound_UI(ImpoundData, Locales[Config.Language]['impound_fee_return']..''..Config.CivImpoundFee)
    end
    ServerReplied = false
end)

RegisterNetEvent('cd_garage:CivUnimpound')
AddEventHandler('cd_garage:CivUnimpound', function(action, data, plate, impound, label)
    if action == 'spawn' then
        TriggerServerEvent('cd_garage:ChangeImpoundState', plate, impound, label)
        ImpoundData = nil
        SpawnVehicle(data)
    elseif action == 'return' then
        TriggerServerEvent('cd_garage:ChangeImpoundState', plate, impound, label)
        ImpoundData[tonumber(data.id)+1] = nil
        Wait(500)
        ShowImpound_UI(ImpoundData)
    elseif action == 'disablenui' then
        NUI_status = false
    end
end)

RegisterNetEvent('cd_garage:ImpoundVehicle')
AddEventHandler('cd_garage:ImpoundVehicle', function(chosen_vehicle)
    local ped = PlayerPedId()
    local VehicleTable = {}
    if chosen_vehicle == nil then
        VehicleTable = GetClosestVehicle(GetEntityCoords(ped), 5)
    else
        VehicleTable.vehicle = chosen_vehicle
    end
    if not IsPedInAnyVehicle(ped, false) then
        if VehicleTable.state or chosen_vehicle ~= nil then
            TaskTurnPedToFaceEntity(ped, VehicleTable.vehicle, 1500)
            local values = {}
            for k, v in pairs (Config.Impound) do
                table.insert(values, {impound = k, name = v.blip.name, vehicle = VehicleTable.vehicle})
            end
            ChooseImpound_UI(values)
        else
            Notif(3, 'no_vehicle_found')
        end
    else
        Notif(3, 'get_out_veh')
    end
end)

function ImpoundAnimation(ped)
    TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_CLIPBOARD', 0, true)
    --You can add a progress bar here.
    Wait(Config.ImpoundTime*1000)
    ClearPedTasksImmediately(ped)
end

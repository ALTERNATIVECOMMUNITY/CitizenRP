local tiempo = 4000 -- 1000 ms = 1s
local isTaz = false
local teaser = false
local show = false
local showed = false
local onTeaser = false
local coord = nil
local gener4l_cw = 0
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsPedBeingStunned(PlayerPedId()) then
            teaser = true
            TeaserMode()
        end

        -- if IsPedBeingStunned(PlayerPedId()) then
        -- 	Holo()
        -- end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsPedBeingStunned(PlayerPedId()) then
            Holo()
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        while teaser do
            Citizen.Wait(40000)
            teaser = false
        end

    end
end)

function Holo()
    if not showed then
        showed = true
        Citizen.Wait(6000)
        TriggerServerEvent('stg_taser:show', GetEntityCoords(PlayerPedId()))
        coord = GetEntityCoords(PlayerPedId())
        Citizen.Wait(10000)
        showed = false
    end
end
function TeaserMode()
    while teaser do
        Citizen.Wait(100)
        SetPedToRagdoll(PlayerPedId(), 5000, 5000, 0, 0, 0, 0)
    end
end

RegisterNetEvent('stg_taser:client:show')
AddEventHandler('stg_taser:client:show', function(v, y)
    if not v then
        if teaser and y == coord then
            teaser = false
            show = false
        else
            show = false
        end
    else
        show = true
        while show do
            Citizen.Wait(0)
            if not teaser then
                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v, true)
                -- if distance < 2 then
                -- DrawText3Ds(v.x, v.y, v.z+0.20, "[E] Supprimer Cable")
                -- 	if IsControlJustPressed(0, 38) then
                -- 			exports['mythic_progbar']:Progress({
                --             name = "unique_action_name",
                --             duration = 10000,
                --             label = "Removing the cartridge",
                --             useWhileDead = false,
                --             canCancel = false,
                --             controlDisables = {
                -- 			disableMovement = true,
                -- 			disableCarMovement = true,
                -- 			disableMouse = false,
                -- 			disableCombat = true,
                --             },
                --             animation = {
                --                 animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
                --                 anim = "machinic_loop_mechandplayer",
                --             }
                --         }, function(status)
                -- 		ClearPedTasksImmediately(PlayerPedId())
                -- 		TriggerServerEvent('stg_taser:show', false, v)
                -- 	end)
                -- end
                -- end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
        local playerPed = PlayerPedId()
        local nothing, weapon = GetCurrentPedWeapon(playerPed, true)
        local blacklisted, name = CheckStungun(weapon)
        if not IsPedInAnyVehicle(PlayerPedId(), true) and blacklisted then
            gener4l_cw = 0
        else
            gener4l_cw = 1000
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        ESX.TriggerServerCallback('stg_taser:getCartridge', function(data)
            local playerPed = PlayerPedId()
            local nothing, weapon = GetCurrentPedWeapon(playerPed, true)
            local blacklisted, name = CheckStungun(weapon)

            if blacklisted then
                if not IsPedInAnyVehicle(PlayerPedId(), true) then
                    if data.cartridge == 0 then
                        if Config.Mythic then
                            exports['mythic_notify']:DoHudText('error', Config.need, {
                                ['background-color'] = '#b50505',
                                ['color'] = '#ffffff'
                            })
                        else
                            ESX.ShowNotification(Config.need, false, false, r)
                        end
                        GiveWeaponToPed(PlayerPedId(), 0xA2719263, 0, 1, 1)
                    else
                        onTeaser = true
                    end

                end
            else
                onTeaser = false
            end

        end)

    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(gener4l_cw)
        local playerPed = PlayerPedId()
        local nothing, weapon = GetCurrentPedWeapon(playerPed, true)
        local blacklisted, name = CheckStungun(weapon)
        if blacklisted then
            if IsPedShooting(playerPed) then
                SendNUIMessage({
                    type = "sound"
                })
                TriggerServerEvent('stg_taser:remove')
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(3000)
        ESX.TriggerServerCallback('stg_taser:getCartridge', function(data)
            if onTeaser then
                SendNUIMessage({
                    type = "open",
                    ammo = data.cartridge
                })
            else
                SendNUIMessage({
                    type = "close"
                })
            end
        end)
    end
end)

function CheckStungun(model)
    if model == GetHashKey("WEAPON_STUNGUN") then
        return true, blacklistedWeapon
    end

    return false, nil
end

function DrawText3Ds(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())

    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 425
    DrawRect(_x, _y + 0.0125, 0.0002 + factor, 0.025, 0, 0, 0, 50)
end

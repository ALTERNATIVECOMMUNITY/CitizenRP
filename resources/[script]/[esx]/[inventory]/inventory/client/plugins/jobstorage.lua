ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(100)
    end

    PlayerLoaded = true
    ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = xPlayer
    PlayerLoaded = true
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)

RegisterNetEvent('inventory:openJobInventory')
AddEventHandler('inventory:openJobInventory', function ()
    for k,l in pairs(Config.Jobs) do
    if ESX.PlayerData.job.name == l.job then
        for k,v in pairs(l.rank) do
            if v == ESX.PlayerData.job.grade_name then
                OpenInventory({
                type = l.job,
                title = l.label,
                id = l.job,
                weight = Config.JobWeight,
                save = true
                })
            end
        end
    end
    end
end)

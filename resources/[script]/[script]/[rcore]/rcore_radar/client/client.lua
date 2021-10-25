--===============================================--===============================================
--= stationary radars based on  https://github.com/DreanorGTA5Mods/StationaryRadar           =
-- Edited ESX version and rewrite for rcore and add additional config and rework code base.
-- Author of edit Isigar <info@relisoft.cz>
--===============================================--===============================================
ESX = nil
Citizen.CreateThread(function()
    local breaker = 0
    while ESX == nil do
        TriggerEvent(Config.Events['esx:getSharedObject'], function(obj)
            ESX = obj
        end)

        breaker = breaker + 1
        if breaker > 250 then
            print('[CRITICAL] You dont setup right ESX event!')
            break
        end
        Citizen.Wait(0)
    end
end)

local PlayerData = {}
local currentRadar
local currentRadarTime = Config.WaitTimeBetweenPictures
local blips = {}

function dprint(msg, ...)
    if Config.Debug then
        print('[rcore_radars] ' .. string.format(msg, ...))
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        if currentRadar ~= nil then
            if currentRadarTime <= 0 then
                currentRadar = nil
                currentRadarTime = Config.WaitTimeBetweenPictures
            else
                currentRadarTime = currentRadarTime - 1
            end
        end
    end
end)

function deleteBlips()
    for i, v in pairs(blips) do
        if DoesBlipExist(v) then
            RemoveBlip(v)
        end
    end
end

AddEventHandler('onClientResourceStop', function(name)
    if name == GetCurrentResourceName() then
        deleteBlips()
    end
end)

--Create blips
Citizen.CreateThread(function()
    if Config.ShowBlips then
        for i, v in pairs(Config.Radars) do
            local blip = createBlip(Config.DefaultBlipOptions.name or 'bad config', Config.DefaultBlipOptions.sprite or 1, vector3(v.x, v.y, v.z), {
                type = Config.DefaultBlipOptions.type or 4,
                color = Config.DefaultBlipOptions.color or 1,
                shortRange = Config.DefaultBlipOptions.shortRange or true,
                scale = Config.DefaultBlipOptions.scale or 1.0
            })
            table.insert(blips, blip)
        end
    end
end)

RegisterNetEvent(Config.Events['esx:playerLoaded'])
AddEventHandler(Config.Events['esx:playerLoaded'], function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent(Config.Events['esx:setJob'])
AddEventHandler(Config.Events['esx:setJob'], function(job)
    if PlayerData then
        PlayerData.job = job
    end
end)

local function onResourceStart(name)
    if name == GetCurrentResourceName() then
        Citizen.CreateThread(function()
            Wait(500)
            if ESX and ESX.IsPlayerLoaded() then
                PlayerData = ESX.GetPlayerData()
            end
        end)
    end
end

AddEventHandler('onRemoteResourceStart', onResourceStart)
AddEventHandler('onResourceStart', onResourceStart)

function isInWhitelistedJob(xPlayer)
    if xPlayer ~= nil and xPlayer.job ~= nil then
        local job = xPlayer.job.name
        for k, v in pairs(Config.WhitelistedJobs) do
            if job == v then
                return true
            end
        end
        return false
    else
        return false
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.RadarFPS)
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)
        local vehicle = GetVehiclePedIsIn(player, false)
        local model = GetEntityModel(vehicle)
        for k, v in pairs(Config.Radars) do
            if vehicle ~= 0 then
                if #(vector3(v.x, v.y, v.z) - coords) < Config.RadarDistance then
                    if not isInWhitelistedJob(PlayerData) then
                        if tableLength(Config.AllowedVehicles) > 0 then
                            local allowedVehicle = false
                            for _, allowedModel in pairs(Config.AllowedVehicles) do
                                if GetHashKey(allowedModel) == model then
                                    allowedVehicle = true
                                    dprint('Found allowed vehicle! Model %s', allowedModel)
                                    break
                                end
                            end
                            if allowedVehicle == false then
                                checkSpeed(v, k, vehicle)
                            end
                        else
                            checkSpeed(v, k, vehicle)
                        end
                    end
                end
            end
        end
    end
end)

function checkSpeed(radar, radarKey, vehicle)
    if currentRadar == radarKey then
        return ;
    end

    local pP = PlayerPedId()
    local speed = GetEntitySpeed(pP)
    local plate = GetVehicleNumberPlateText(vehicle)

    local mphspeed = math.ceil(speed * 2.236936)
    local kmhspeed = math.ceil(speed * 3.6)
    local truespeed = mphspeed
    local mphString = 'MPH'
    if Config.KMH then
        truespeed = kmhspeed
        mphString = 'KMH'
    end

 
    if truespeed > radar.maxSpeed and isDriver(pP, vehicle) then
        Citizen.Wait(250)
        ESX.TriggerServerCallback("rcore_radars:checkowner", function(owner)
            if owner ~= "unknow"  then
                local fineType = 0

                if truespeed > radar.maxSpeed and truespeed <= (radar.maxSpeed + 10) then
                    fineType = 1
                end
                if truespeed > (radar.maxSpeed + 10) and truespeed <= (radar.maxSpeed + 20) then
                    fineType = 2
                end
                if truespeed > (radar.maxSpeed + 20) and truespeed <= (radar.maxSpeed + 30) then
                    fineType = 3
                end
                if truespeed > (radar.maxSpeed + 30) then
                    fineType = 4
                end

                if owner == PlayerData.identifier then
                    local exceed = truespeed - radar.maxSpeed
                    if Config.SendDirectlyToBilling then
                        TriggerServerEvent(Config.Events['esx_billing:sendBill'], GetPlayerServerId(PlayerId()), Config.InvoiceSociety, Config.Strings['fine'] .. ESX.Math.Round(exceed) .. mphString, Config.Fines[fineType], true)
                    end
            
                    TriggerServerEvent('rcore_radars:makeBill', fineType, truespeed, plate, Config.Fines[fineType])

                    currentRadar = radarKey
                    currentRadarTime = Config.WaitTimeBetweenPictures
                    local mugshot, mugshotStr = ESX.Game.GetPedMugshot(pP)
                    ESX.ShowAdvancedNotification('Radar', Config.Strings['title'], Config.Strings['body'] .. plate, mugshotStr, 1)
                    UnregisterPedheadshot(mugshot)
                else
                    local exceed = truespeed - radar.maxSpeed
                    if Config.SendDirectlyToBilling then
                        TriggerServerEvent(Config.Events['esx_billing:sendBill'], GetPlayerServerId(PlayerId()), Config.InvoiceSociety, Config.Strings['fine'] .. ESX.Math.Round(exceed) .. mphString, Config.Fines[fineType], true)
                    end
            
                    TriggerServerEvent('rcore_radars:makeBill', fineType, truespeed, plate, Config.Fines[fineType])

                    currentRadar = radarKey
                    currentRadarTime = Config.WaitTimeBetweenPictures
                    local mugshot, mugshotStr = ESX.Game.GetPedMugshot(pP)
                    ESX.ShowAdvancedNotification('Radar', Config.Strings['title'], Config.Strings['body'] .. plate, mugshotStr, 1)
                    UnregisterPedheadshot(mugshot)
                end
            end
        end, plate)
    end
end

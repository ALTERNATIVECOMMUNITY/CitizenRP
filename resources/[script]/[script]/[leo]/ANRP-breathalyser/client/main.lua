if Config.ESXLegacy ==  false and ESX == nil then
    Citizen.CreateThread(function()
        while ESX == nil do
          TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
          Citizen.Wait(100)
        end
    end)
end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	ESX.PlayerLoaded = false
	ESX.PlayerData = {}

end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

local showButton = false

local Timer = nil
local TimeToBlow = Config.BlowTime

local askedBy = nil

RegisterNetEvent("ANRP-breathalyser:client:openDevice")
AddEventHandler("ANRP-breathalyser:client:openDevice", function()
    local PlayerJob = ESX.PlayerData.job.name
    if Config.Jobs.restrict then
        local k, v = table.find(Config.Jobs.jobs, PlayerJob)
        if v ~= nil then
            SendNUIMessage({ ['action'] = 'open' })
            SetNuiFocus(true, true)
            SetCursorLocation(0.915, 0.91)
        else
            ESX.ShowNotification(_U('job_restricted'))
        end
    else
        SendNUIMessage({ ['action'] = 'open' })
        SetNuiFocus(true, true)
    end

end)

RegisterNetEvent("ANRP-breathalyser:client:askToBlow")
AddEventHandler("ANRP-breathalyser:client:askToBlow", function(check, askedby)
    if check == GetPlayerServerId(PlayerId()) then
        ESX.ShowNotification(_U('requesting_blow'))
        askedBy = askedby
        showButton = true
    end
end)

RegisterNUICallback("Close", function()
    SetNuiFocus(false, false)
    SendNUIMessage({ ['action'] = 'close' })
end)

RegisterNUICallback("check", function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    if closestPlayer ~= -1 and closestDistance < 2.0 then
        TriggerServerEvent("ANRP-breathalyser:server:askToBlow", GetPlayerServerId(closestPlayer), GetPlayerServerId(PlayerId()))
    else
        SendNUIMessage({
            ['action'] = "close"
        })
        SetNuiFocus(false, false)
        ESX.ShowNotification(_U('no_players'))
    end
end)

RegisterNetEvent("ANRP-breathalyser:client:open")
AddEventHandler("ANRP-breathalyser:client:open", function(target, bool)
    if bool then
        ESX.TriggerServerCallback('ANRP-breathalyser:getOtherPlayerData', function(data)
            SendNUIMessage({
                ['action'] = "update",
                ['data'] = data.drunk
            })
            
            TriggerServerEvent("ANRP-breathalyser:server:show", data.drunk, target)
        end, target, false)
    else
        SendNUIMessage({
            ['action'] = "close"
        })
        SetNuiFocus(false, false)
        ESX.ShowNotification(_U('rejected'))
    end
end)

RegisterNetEvent("ANRP-breathalyser:client:show")
AddEventHandler("ANRP-breathalyser:client:show", function(drunk)
    if drunk then
        SetNuiFocus(true, true)
        SendNUIMessage({
            ['action'] = "show",
            ['data'] = drunk
        })
    end
end)

Citizen.CreateThread(function()
    local instructionalButtonsScaleform = Scaleform.NewAsync('INSTRUCTIONAL_BUTTONS')
    local currPer = 0
    local soundPlayed = false
    local bool = true

    while true do
        local sleep = 1000
        if showButton then
            sleep = 1
            instructionalButtonsScaleform:call('CLEAR_ALL')
            instructionalButtonsScaleform:call('SET_DATA_SLOT', 0, Config.BlowKey.AcceptCode, _U('blow'))
            instructionalButtonsScaleform:call('SET_DATA_SLOT', 1, Config.BlowKey.CancelCode, _U('reject'))
            instructionalButtonsScaleform:call('DRAW_INSTRUCTIONAL_BUTTONS')

            instructionalButtonsScaleform:renderFullscreen()

            if not Timer then
                Timer = TimeToBlow
            end

            currPer = (TimeToBlow - Timer) / 5000

            if IsControlPressed(0, Config.BlowKey.AcceptKey) and Timer then
                if Config.InteractSound then
                    if currPer >=0 and soundPlayed == false then
                        TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 1.0, 'blow', 1.0)
                        soundPlayed = true
                    end
                end
				Timer = Timer - 50
			end

            

            if IsControlJustPressed(0, Config.BlowKey.CancelKey) and Timer then
                bool = false
                Timer = 0
            end

            if Timer > 0 then
                instructionalButtonsScaleform:renderFullscreen()
                Gui.DrawProgressBar('BLOW', currPer, 2, Color.RED)
            else
                instructionalButtonsScaleform:call('CLEAR_ALL')
                TriggerServerEvent("ANRP-breathalyser:server:open", askedBy, bool)
                askedBy = nil
                showButton = false
            end
        else
            Timer = nil
            currPer = 0
            bool = true
        end

        Citizen.Wait(sleep)
    end
end)
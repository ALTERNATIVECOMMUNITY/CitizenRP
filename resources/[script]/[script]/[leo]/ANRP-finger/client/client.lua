ESX             = nil
local PlayerData            = {}

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end

  while ESX.GetPlayerData().job == nil do
    Citizen.Wait(10)
  end

  PlayerData = ESX.GetPlayerData()

  isPlayerWhitelisted = refreshPlayerWhitelisted()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  ESX.PlayerData.job = job

  isPlayerWhitelisted = refreshPlayerWhitelisted()
end)

function refreshPlayerWhitelisted() 
  if not ESX.PlayerData then
    return false
  end

  if not ESX.PlayerData.job then
    return false
  end

  if PoliceJob == ESX.PlayerData.job.name then
    return true
  end

  return false
end

---------------------------------------------------------------------------------

local inScanner = false

local computerData = {}

RegisterCommand("nuifalse", function(source, args)   -- Failsafe command in case mouse stuck on screen
    SetNuiFocus(false, false)
end, false)

function openScanner(bool)
    inScanner = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        action = "scanner",
        toggle = bool,
        details = data 
    })
	ESX.ShowNotification('Hold your finger for 5 seconds.')
end

RegisterNUICallback('scanner-exit', function()
    openScanner(false)
    SetNuiFocus(false, false)
    inScanner = false
end)

RegisterNUICallback('details', function(data, cb)
    ESX.TriggerServerCallback('ANRP-finger:fetchData', function(data)
		computerData = data
        PlaySound()
        
        cb(data)
		local id = PlayerPedId()
		TriggerServerEvent("ANRP-finger:server:showComputer", computerData, id)
    end)
end)

function PlaySound()
    local coords = GetEntityCoords(PlayerPedId())

    local sid = GetSoundId() 

    PlaySoundFromCoord(sid, "Beep_Green", coords.x , coords.y, coords.z, "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1 , 10, 0)
    Citizen.Wait(100)
    PlaySoundFromCoord(sid, "Beep_Red", coords.x , coords.y, coords.z, "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1 , 10, 0)
    Citizen.Wait(100)
    PlaySoundFromCoord(sid, "Beep_Green", coords.x , coords.y, coords.z, "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1 , 10, 0)
    Citizen.Wait(100)
    PlaySoundFromCoord(sid, "Beep_Red", coords.x , coords.y, coords.z, "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1 , 10, 0)
    Citizen.Wait(100)
end

local AlertActive = false

RegisterNetEvent('ANRP-finger:client:showComputer')
AddEventHandler('ANRP-finger:client:showComputer', function(data, id)

  
	if id ~= PlayerPedId() then
		local dist = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), Scanner.x, Scanner.y, Scanner.z, true)
		if dist < 5 then	
      SendNUIMessage({
        action = "computer",
        data = data
      })
	  SetNuiFocus(true, true)
      AlertActive = true
		end
	end

end)

RegisterNUICallback('computer-exit', function()
    SetNuiFocus(false, false)
    AlertActive = false
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        if not inScanner then
            local PedCoords = GetEntityCoords(PlayerPedId())
                local dist = GetDistanceBetweenCoords(PedCoords, Scanner.x, Scanner.y, Scanner.z, true)
                if dist < 1 then
                    DrawText3Ds(Scanner.x, Scanner.y, Scanner.z, '~g~E~w~ - Use Scanner')
                    if IsControlJustPressed(0, Keys["E"]) then
                        openScanner(true)
                    end
                else
                  Citizen.Wait(2500)
                end
        else
            Citizen.Wait(2500)
        end
    end
end)

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end


ESX = nil
local food, water,dirty ,  cash = 0
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end
    ESX.PlayerData = ESX.GetPlayerData()
end)

local toghud = true
local toghud2 = true

RegisterCommand('hud', function(source, args, rawCommand)

    if toghud then
        toghud = false
    else
        toghud = true
    end

end)

Citizen.CreateThread(function()
    while true do
        local hour = {
            hour = GetClockHours(),
            minute = GetClockMinutes()
        }

        if hour.hour < 10 then hour.hour = "0" .. hour.hour end
        if hour.minute < 10 then hour.minute = "0" .. hour.minute end
        SendNUIMessage({
            action = "updateHour",
            value = hour.hour .. ':' .. hour.minute
        })
        Citizen.Wait(1000)
    end
end)


local useMph = false -- if false, it will display speed in kph

Citizen.CreateThread(function()
  local resetSpeedOnEnter = true
  while true do
    Citizen.Wait(0)
    local playerPed = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(playerPed,false)
    if GetPedInVehicleSeat(vehicle, -1) == playerPed and IsPedInAnyVehicle(playerPed, false) then

      -- This should only happen on vehicle first entry to disable any old values
      if resetSpeedOnEnter then
        maxSpeed = GetVehicleHandlingFloat(vehicle,"CHandlingData","fInitialDriveMaxFlatVel")
        SetEntityMaxSpeed(vehicle, maxSpeed)
        resetSpeedOnEnter = false
      end
      -- Disable speed limiter
      if IsControlJustReleased(0,246) and IsControlPressed(0,131) then
        maxSpeed = GetVehicleHandlingFloat(vehicle,"CHandlingData","fInitialDriveMaxFlatVel")
        SetEntityMaxSpeed(vehicle, maxSpeed)
        showHelpNotification("Speed limiter disabled")
      -- Enable speed limiter
      elseif IsControlJustReleased(0,246) then
        cruise = GetEntitySpeed(vehicle)
        SetEntityMaxSpeed(vehicle, cruise)
        if useMph then
          cruise = math.floor(cruise * 2.23694 + 0.5)
          showHelpNotification("Speed limiter set to "..cruise.." mph. ~INPUT_VEH_SUB_ASCEND~ + ~INPUT_MP_TEXT_CHAT_TEAM~ to disable.")
        else
          cruise = math.floor(cruise * 3.6 + 0.5)
          showHelpNotification("Limiteur de vitesse activé: "..cruise.." km/h. ~INPUT_VEH_SUB_ASCEND~ + ~INPUT_MP_TEXT_CHAT_TEAM~ pour le désactiver.")
        end
      end
    else
      resetSpeedOnEnter = true
    end
  end
end)

function showHelpNotification(msg)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, 0, 1, -1)
end













RegisterCommand('hud2', function(source, args, rawCommand)

    if toghud2 then
        toghud2 = false
        TriggerEvent('es:setMoneyDisplay', 0.0)
        ESX.UI.HUD.SetDisplay(0.0)
    else
        toghud2 = true
        TriggerEvent('es:setMoneyDisplay', 1.0)
        ESX.UI.HUD.SetDisplay(1.0)
    end

end)

RegisterNetEvent('hud:toggleui')
AddEventHandler('hud:toggleui', function(show)

    if show == true then
        toghud = true
    else
        toghud = false
    end

end)

RegisterNetEvent("esx_status:onTick")
AddEventHandler("esx_status:onTick", function(Status)
    TriggerEvent('esx_status:getStatus', 'hunger', function(status)
        hunger= status.val / 10000
    end)

    TriggerEvent('esx_status:getStatus', 'thirst', function(status)
        thirst = status.val / 10000
    end)

    TriggerEvent('esx_status:getStatus', 'stress', function(status)
        stress = status.val / 10000
    end)
end)

local lungs = 0.0

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(150)
        local player = PlayerPedId()
        local health = (GetEntityHealth(player) - 100)
        local armor = GetPedArmour(player)
        local playerTalking = NetworkIsPlayerTalking(PlayerId())

        if IsEntityInWater(player) then
            lungs =  GetPlayerUnderwaterTimeRemaining(PlayerId()) * 10
        else
            lungs = GetPlayerSprintTimeRemaining(PlayerId()) * 10
        end

        if IsPedSittingInAnyVehicle(PlayerPedId()) then
            DisplayRadar(true)
        else
            DisplayRadar(false)
        end

        SendNUIMessage({
            action = 'updateStatusHud',
            pauseMenu = IsPauseMenuActive(),
            show = toghud,
            health = health,
            armour = armor,
            oxygen = lungs,
            hunger = hunger,
	        thirst = thirst,
            stress = stress,
            voice = playerTalking
        })
    end
end)

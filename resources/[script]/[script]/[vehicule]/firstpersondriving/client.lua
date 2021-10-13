local forceFirstPerson = true

Citizen.CreateThread(function()
	SetBlackout(false)

	while true do
		Wait(1)

		if forceFirstPerson then
			SetFollowVehicleCamViewMode(4)
		      	end
	end
end)
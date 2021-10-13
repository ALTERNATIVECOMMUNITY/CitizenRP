ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_outlawalert:carJackInProgress')
AddEventHandler('esx_outlawalert:carJackInProgress', function(targetCoords, streetName, vehicleLabel, playerGender, licenseplate)
	if playerGender == 0 then
		playerGender = _U('male')
	else
		playerGender = _U('female')
	end

	 TriggerEvent(
                        "core_dispach:addCall",
                        "03-18",
                        "Vol de véhicule en cours",
                        {{icon = "fa-venus-mars", info = playerGender}, {icon = "fa-car", info = vehicleLabel}, {icon = "fa-road", info = streetName}, {icon = "fa-align-left", info = licenseplate}},
                        {targetCoords.x, targetCoords.y, targetCoords.z},
                        "police",
                        5000,
                        225,
                        47
                    )


end)

RegisterServerEvent('esx_outlawalert:combatInProgress')
AddEventHandler('esx_outlawalert:combatInProgress', function(targetCoords, streetName, playerGender)
	if playerGender == 0 then
		playerGender = _U('male')
	else
		playerGender = _U('female')
	end

	 TriggerEvent(
                        "core_dispach:addCall",
                        "11-00",
                        "Combat in progress",
                        {{icon = "fa-venus-mars", info = playerGender}, {icon = "fa-road", info = streetName}},
                        {targetCoords.x, targetCoords.y, targetCoords.z},
                        "police",
                        5000,
                        154,
                        7
                    )
end)

RegisterServerEvent('esx_outlawalert:gunshotInProgress')
AddEventHandler('esx_outlawalert:gunshotInProgress', function(targetCoords, streetName, playerGender)
	if playerGender == 0 then
		playerGender = _U('male')
	else
		playerGender = _U('female')
	end

	 TriggerEvent(
                        "core_dispach:addCall",
                        "02-03",
                        "Coup de feu entendue",
                        {{icon = "fa-venus-mars", info = playerGender}, {icon = "fa-road", info = streetName}},
                        {targetCoords.x, targetCoords.y, targetCoords.z},
                        "police",
                        5000,
                        110,
                        49
                    )
end)

ESX.RegisterServerCallback('esx_outlawalert:isVehicleOwner', function(source, cb, plate)
	local identifier = GetPlayerIdentifier(source, 0)

	MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
		['@owner'] = identifier,
		['@plate'] = plate
	}, function(result)
		if result[1] then
			cb(result[1].owner == identifier)
		else
			cb(false)
		end
	end)
end)

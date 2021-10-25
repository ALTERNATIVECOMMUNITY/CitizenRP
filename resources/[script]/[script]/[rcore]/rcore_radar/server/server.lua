ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('rcore_radars:makeBill')
AddEventHandler('rcore_radars:makeBill', function(level, speed, vehPlate)
    local _source = source
    if Config.PrintToServer then
        print(string.format('Player %s get bill from radar, speeding %sMPH with vehicle plate %s - get fine level %s', GetPlayerName(_source), speed, vehPlate, level))
    end
end)

ESX.RegisterServerCallback("rcore_radars:checkowner", function(source, cb, plate)
    MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function(result)
        if #result == 0 then
            cb("unknow")
        else
            cb(result[1].owner)
        end
    end)
end)
RegisterNetEvent('rcore_radars:makeBill')
AddEventHandler('rcore_radars:makeBill', function(level, speed, vehPlate)
    local _source = source
    if Config.PrintToServer then
        print(string.format('Player %s get bill from radar, speeding %sMPH with vehicle plate %s - get fine level %s', GetPlayerName(_source), speed, vehPlate, level))
    end
end)


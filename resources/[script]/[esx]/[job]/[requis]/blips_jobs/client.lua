local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

     {title="Salle de gym", colour=26, id=311, x = 258.99130249023, y = -269.96960449219, z = 53.963539123535}
  --   {title="Example 2", colour=30, id=108, x = 260.130, y = 204.308, z = 109.287}
  }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

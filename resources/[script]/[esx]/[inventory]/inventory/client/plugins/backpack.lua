RegisterNetEvent('inventory:openInventoryBag')
AddEventHandler('inventory:openInventoryBag', function (player, identifier)
    for k,v in pairs(Config.Bags) do
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
      if not IsPlayerDead(PlayerId()) then --This prevent that the player can't open his bag when is died
            if skin.bags_1 == v then
                OpenInventory({ type = 'bag', title = '🎒 '..player, id = skin.bags_1..':'..identifier, maxWeight = 150, save = true})
            else
                ESX.ShowNotification("You need a bag to open your bag!")
            end
else
ESX.ShowNotification("If you are dead, how can you open your backpack?")
end
        end)
    end
end)

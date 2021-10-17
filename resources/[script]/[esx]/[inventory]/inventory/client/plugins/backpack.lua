local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

RegisterNetEvent('inventory:openInventoryBag')
AddEventHandler('inventory:openInventoryBag', function (player, identifier)
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
        if not IsPlayerDead(PlayerId()) then --This prevent that the player can't open his bag when is died
            if has_value(Config.Bags, skin.bags_1) then
                OpenInventory({ type = 'bag', title = '🎒 '..player, id = skin.bags_1..':'..identifier, maxWeight = 150, save = true})
            else
                ESX.ShowNotification("Vous n'avez pas de sac à dos !")
            end
        else
            ESX.ShowNotification("Si vous êtes dans le coma, comment voulez-vous regarder dans votre sac ?")
        end
    end)
end)
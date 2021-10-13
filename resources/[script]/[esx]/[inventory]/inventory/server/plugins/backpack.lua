RegisterCommand('openbag', function (src)
        TriggerClientEvent('inventory:openInventoryBag', src, GetPlayerName(src), GetPlayerIdentifier(src, 0))
end, false)

RegisterNetEvent('lg_machinestore:ConfirmPayment')
AddEventHandler('lg_machinestore:ConfirmPayment', function(data)
	local idJ = source    
    
    if config.use_weight_system then
        if not canCarryItem(idJ, data.product.weight) then
            showNotification(idJ, translate.TR_NOT_WEIGHT)
			TriggerClientEvent('lg_machinestore:ConfirmPayment', idJ)
            return
        end
    else
		if not canCarryItem(idJ, data.product.name, 1) then
			showNotification(idJ, translate.TR_NOT_WEIGHT)
			TriggerClientEvent('lg_machinestore:ConfirmPayment', idJ)
			return
		end
    end

    local price = data.product.price
    local my_money = getWalletMoney(idJ)

    if tonumber(my_money) < tonumber(price) then
        showNotification(idJ, translate.TR_NOT_MONEY)
		TriggerClientEvent('lg_machinestore:ConfirmPayment', idJ)
        return
    end
    
	removeWalletMoney(idJ, price)
	addInventoryItem(idJ, data.product.name, 1)

	TriggerClientEvent('lg_machinestore:ConfirmPayment', idJ)
end)
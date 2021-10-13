ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('inside-illegalordersType1:payout', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
    local money = Config.PayoutForFirstOrder
	xPlayer.addMoney(money)
    cb(money)
end)

ESX.RegisterServerCallback('inside-illegalordersType2:payout', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
    local money = Config.PayoutForSecondOrder
	xPlayer.addMoney(money)
    cb(money)
end)

ESX.RegisterServerCallback('inside-illegalordersType3:payout', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
    local money = Config.PayoutForThirdOrder
	xPlayer.addMoney(money)
    cb(money)
end)

ESX.RegisterServerCallback('inside-illegalordersType4:payout', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
    local money = Config.PayoutForFourthOrder
	xPlayer.addMoney(money)
    cb(money)
end)

ESX.RegisterServerCallback('inside-illegalordersType5:payout', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
    local money = Config.PayoutForFifthOrder
	xPlayer.addMoney(money)
    cb(money)
end)

ESX.RegisterServerCallback('inside-illegalordersType6:payout', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
    local money = Config.PayoutForSixthOrder
	xPlayer.addMoney(money)
    cb(money)
end)

ESX.RegisterServerCallback('inside-illegalordersType7:payout', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
    local money = Config.PayoutForSeventhOrder
	xPlayer.addMoney(money)
    cb(money)
end)

AddEventHandler('playerDropped', function()
    TriggerClientEvent('inside-illegalorders:removecars', source)
end)

local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('ANRP-finger:fetchData', function(source, cb , data)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local data = {}
	GetData(source, function(PlayerData)
		if PlayerData ~= nil then
			data.firstname = PlayerData.firstname ~= nil and PlayerData.firstname or "UNKNOWN"
			data.lastname = PlayerData.lastname ~= nil and PlayerData.lastname or "UNKNOWN"
			data.dob = PlayerData.dob ~= nil and PlayerData.dob or "UNKNOWN"
			data.sex = (PlayerData.sex):upper() ~= nil and (PlayerData.sex):upper() or "UNKNOWN"
			data.phone = PlayerData.phone ~= nil and PlayerData.phone or "UNKNOWN"
			cb(data)
		else
			print('[ANRP-finger] Data is Nil')
		end
	end)
end)

RegisterServerEvent('ANRP-finger:server:showComputer')
AddEventHandler('ANRP-finger:server:showComputer', function(data, id)

	TriggerClientEvent("ANRP-finger:client:showComputer", -1, data, id)

end)


function GetData(source, callback)
	local xPlayer = ESX.GetPlayerFromId(source)
	local identifier = xPlayer.identifier
	MySQL.Async.fetchAll('SELECT * FROM `users` WHERE `identifier` = @identifier', {
		['@identifier'] = identifier
	}, function(result)
		local data = {}
		if result[1] and result[1].firstname and result[1].lastname and result[1].dateofbirth and result[1].phone_number  then
			data.firstname = result[1].firstname
			data.lastname = result[1].lastname
			data.dob = result[1].dateofbirth
			data.sex = result[1].sex
			data.phone = result[1].phone_number
			callback(data)
		else
			print('[ANRP-finger] -  Your database has some nil values in user table (firstname / lastname / dateofbirth / phone_number / sex')
		end
	end)


end
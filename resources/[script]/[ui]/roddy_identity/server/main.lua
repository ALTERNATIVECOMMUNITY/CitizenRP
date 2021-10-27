ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local playerIdentity = {}
local alreadyRegistered = {}
local multichar = ESX.GetConfig().Multichar

	
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerId, xPlayer)
	MySQL.Async.fetchAll('SELECT firstname FROM users WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.getIdentifier(),
	}, function(result)
		if result[1] then
			if result[1].firstname == "" then
				TriggerClientEvent('esx_identity:showRegisterIdentity', xPlayer.source)
			end
		end
	end)
end)

ESX.RegisterServerCallback('esx_identity:registerIdentity', function(source, cb, data)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.setName(('%s %s'):format(data.firstname, data.lastname))
	xPlayer.set('firstName', data.firstname)
	xPlayer.set('lastName', data.lastname)
	xPlayer.set('dateofbirth', data.dateofbirth)
	xPlayer.set('sex', data.sex)
	xPlayer.set('height', data.height)

	saveIdentityToDatabase(xPlayer.getIdentifier(), data)
	cb(true)
end)
					



function deleteIdentity(xPlayer)
	if alreadyRegistered[xPlayer.identifier] then
		xPlayer.setName(('%s %s'):format(nil, nil))
		xPlayer.set('firstName', nil)
		xPlayer.set('lastName', nil)
		xPlayer.set('dateofbirth', nil)
		xPlayer.set('sex', nil)
		xPlayer.set('height', nil)

		deleteIdentityFromDatabase(xPlayer)
	end
end

function saveIdentityToDatabase(identifier, identity)
	MySQL.Sync.execute('UPDATE users SET firstname = @firstname, lastname = @lastname, dateofbirth = @dateofbirth, sex = @sex, height = @height WHERE identifier = @identifier', {
		['@identifier']  = identifier,
		['@firstname'] = identity.firstname,
		['@lastname'] = identity.lastname,
		['@dateofbirth'] = identity.dateofbirth,
		['@sex'] = identity.sex,
		['@height'] = identity.height
	})
end

function deleteIdentityFromDatabase(xPlayer)
	MySQL.Sync.execute('UPDATE users SET firstname = @firstname, lastname = @lastname, dateofbirth = @dateofbirth, sex = @sex, height = @height , skin = @skin WHERE identifier = @identifier', {
		['@identifier']  = xPlayer.identifier,
		['@firstname'] = NULL,
		['@lastname'] = NULL,
		['@dateofbirth'] = NULL,
		['@sex'] = NULL,
		['@height'] = NULL,
		['@skin'] = NULL
	})

	if Config.FullCharDelete then
		MySQL.Sync.execute('UPDATE addon_account_data SET money = 0 WHERE account_name = @account_name AND owner = @owner', {
			['@account_name'] = 'bank_savings',
			['@owner'] = xPlayer.identifier
		})

		MySQL.Sync.execute('UPDATE addon_account_data SET money = 0 WHERE account_name = @account_name AND owner = @owner', {
			['@account_name'] = 'caution',
			['@owner'] = xPlayer.identifier
		})

		MySQL.Sync.execute('UPDATE datastore_data SET data = @data WHERE name = @name AND owner = @owner', {
			['@data'] = '\'{}\'',
			['@name'] = 'user_ears',
			['@owner'] = xPlayer.identifier
		})

		MySQL.Sync.execute('UPDATE datastore_data SET data = @data WHERE name = @name AND owner = @owner', {
			['@data'] = '\'{}\'',
			['@name'] = 'user_glasses',
			['@owner'] = xPlayer.identifier
		})

		MySQL.Sync.execute('UPDATE datastore_data SET data = @data WHERE name = @name AND owner = @owner', {
			['@data'] = '\'{}\'',
			['@name'] = 'user_helmet',
			['@owner'] = xPlayer.identifier
		})

		MySQL.Sync.execute('UPDATE datastore_data SET data = @data WHERE name = @name AND owner = @owner', {
			['@data'] = '\'{}\'',
			['@name'] = 'user_mask',
			['@owner'] = xPlayer.identifier
		})
	end
end

function checkNameFormat(name)
	if not checkAlphanumeric(name) then
		if not checkForNumbers(name) then
			local stringLength = string.len(name)
			if stringLength > 0 and stringLength < Config.MaxNameLength then
				return true
			else
				return false
			end
		else
			return false
		end
	else
		return false
	end
end

function checkDOBFormat(dob)
	local date = tostring(dob)
	if checkDate(date) then
		return true
	else
		return false
	end
end

function checkSexFormat(sex)
	if sex == "m" or sex == "M" or sex == "f" or sex == "F" then
		return true
	else
		return false
	end
end

function checkHeightFormat(height)
	local numHeight = tonumber(height)
	if numHeight < Config.MinHeight or numHeight > Config.MaxHeight then
		return false
	else
		return true
	end
end

function formatName(name)
	local loweredName = convertToLowerCase(name)
	local formattedName = convertFirstLetterToUpper(loweredName)
	return formattedName
end

function convertToLowerCase(str)
	return string.lower(str)
end

function convertFirstLetterToUpper(str)
	return str:gsub("^%l", string.upper)
end

function checkAlphanumeric(str)
	return (string.match(str, "%W"))
end

function checkForNumbers(str)
	return (string.match(str,"%d"))
end

function checkDate(str)
	if string.match(str, '(%d%d%d%d)/(%d%d)/(%d%d)') ~= nil then
		local y, m, d = string.match(str, '(%d+)/(%d+)/(%d+)')
		y = tonumber(y)
		m = tonumber(m)
		d = tonumber(d)
		if ((d <= 0) or (d > 31)) or ((m <= 0) or (m > 12)) or ((y <= Config.LowestYear) or (y > Config.HighestYear)) then
			return false
		elseif m == 4 or m == 6 or m == 9 or m == 11 then
			if d > 30 then
				return false
			else
				return true
			end
		elseif m == 2 then
			if y%400 == 0 or (y%100 ~= 0 and y%4 == 0) then
				if d > 29 then
					return false
				else
					return true
				end
			else
				if d > 28 then
					return false
				else
					return true
				end
			end
		else
			if d > 31 then
				return false
			else
				return true
			end
		end
	else
		return false
	end
end

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_skin:save')
AddEventHandler('esx_skin:save', function(skin)
	local xPlayer = ESX.GetPlayerFromId(source)
	local defaultMaxWeight = ESX.GetConfig().MaxWeight
	local backpackModifier = Config.BackpackWeight[skin.bags_1]

	if backpackModifier then
		xPlayer.setMaxWeight(defaultMaxWeight + backpackModifier)
	else
		xPlayer.setMaxWeight(defaultMaxWeight)
	end

	MySQL.Async.execute('UPDATE users SET skin = @skin WHERE identifier = @identifier', {
		['@skin'] = json.encode(skin),
		['@identifier'] = xPlayer.identifier
	})
end)

RegisterServerEvent('esx_skin:responseSaveSkin')
AddEventHandler('esx_skin:responseSaveSkin', function(skin)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getGroup() == 'admin' then
		local file = io.open('resources/admin_save/skins.txt', "a")

		file:write(json.encode(skin) .. "\n\n")
		file:flush()
		file:close()
	else
		print(('esx_skin: %s attempted saving skin to file'):format(xPlayer.getIdentifier()))
	end
end)

ESX.RegisterServerCallback('esx_skin:getPlayerSkin', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    --local steamID = GetPlayerIdentifiers(source)[1] -- If you use ESX 1.1 or lower enable this and disable the line below
    local steamID = string.gsub(GetPlayerIdentifiers(source)[2], "license:", "") -- If you use ESX 1.2 or higher enable this
    
	print(xPlayer)
    if xPlayer == nil then
		print('xPlayer is nil')
		print('Select where identifier = ' .. steamID)
        MySQL.Async.fetchAll('SELECT skin FROM users WHERE identifier = @identifier', {
            ['@identifier'] = steamID
        }, function(users)
            local user, skin = users[1]
    
            local jobSkin = {
                --skin_male   = xPlayer.job.skin_male,
                --skin_female = xPlayer.job.skin_female
            }
    
            if user.skin then
                skin = json.decode(user.skin)
            end
            
            cb(skin, jobSkin)
        end)
    else
		print('xPlayer not nil')
        MySQL.Async.fetchAll('SELECT skin FROM users WHERE identifier = @identifier', {
            ['@identifier'] = xPlayer.identifier
        }, function(users)
            local user, skin = users[1]
    
            local jobSkin = {
                skin_male   = xPlayer.job.skin_male,
                skin_female = xPlayer.job.skin_female
            }
    
            if user.skin then
                skin = json.decode(user.skin)
            end
            
            cb(skin, jobSkin)
        end)
    end

end)

ESX.RegisterCommand('skin', 'admin', function(xPlayer, args, showError)
	xPlayer.triggerEvent('esx_skin:openSaveableMenu')
end, false, {help = _U('skin')})

ESX.RegisterCommand('skinsave', 'admin', function(xPlayer, args, showError)
	xPlayer.triggerEvent('esx_skin:requestSaveSkin')
end, false, {help = _U('saveskin')})

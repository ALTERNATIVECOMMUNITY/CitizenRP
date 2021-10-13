ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
ESX.RegisterUsableItem('standart_wallet', function(source) 
    local Player = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier=@identifier', {
        ['@identifier'] = Player.identifier
    }, function(user)
    MySQL.Async.fetchAll('SELECT * FROM user_licenses WHERE owner=@owner', {
        ['@owner'] = Player.identifier
    }, function(result)
        if json.encode(result) ~= "[]" then
            
        ehliyet_Stat = true
        else
            
        ehliyet_Stat = false
        end
        TriggerClientEvent('stg_wallet:open', source, Player.job.name, ehliyet_Stat, "standart", user[1].firstname..' '..user[1].lastname, user[1].dateofbirth, user[1].sex, user[1].height, Player.getMoney())
    end)
    end)
end)


ESX.RegisterUsableItem('green_wallet', function(source) 
    local Player = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier=@identifier', {
        ['@identifier'] = Player.identifier
    }, function(user)
    MySQL.Async.fetchAll('SELECT * FROM user_licenses WHERE owner=@owner', {
        ['@owner'] = Player.identifier
    }, function(result)
        if json.encode(result) ~= "[]" then
            
        ehliyet_Stat = true
        else
            
        ehliyet_Stat = false
        end
        TriggerClientEvent('stg_wallet:open', source, Player.job.name, ehliyet_Stat, "green", user[1].firstname..' '..user[1].lastname, user[1].dateofbirth, user[1].sex, user[1].height, Player.getMoney())
    end)
    end)
    end)


ESX.RegisterUsableItem('black_wallet', function(source) 
local Player = ESX.GetPlayerFromId(source)
MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier=@identifier', {
    ['@identifier'] = Player.identifier
}, function(user)
MySQL.Async.fetchAll('SELECT * FROM user_licenses WHERE owner=@owner', {
    ['@owner'] = Player.identifier
}, function(result)
    if json.encode(result) ~= "[]" then
        
	ehliyet_Stat = true
	else
        
	ehliyet_Stat = false
	end
TriggerClientEvent('stg_wallet:open', source, Player.job.name, ehliyet_Stat, "black", user[1].firstname..' '..user[1].lastname, user[1].dateofbirth, user[1].sex, user[1].height, Player.getMoney())
end)
end)
end)


ESX.RegisterUsableItem('gray_wallet', function(source) 
    local Player = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier=@identifier', {
        ['@identifier'] = Player.identifier
    }, function(user)
    MySQL.Async.fetchAll('SELECT * FROM user_licenses WHERE owner=@owner', {
        ['@owner'] = Player.identifier
    }, function(result)
        if json.encode(result) ~= "[]" then
        ehliyet_Stat = true
        else
        ehliyet_Stat = false
        end
        TriggerClientEvent('stg_wallet:open', source, Player.job.name, ehliyet_Stat, "gray", user[1].firstname..' '..user[1].lastname, user[1].dateofbirth, user[1].sex, user[1].height, Player.getMoney())
    end)
    end)
    end)
    


RegisterServerEvent('stg_wallet:show')
AddEventHandler('stg_wallet:show',function(v,y)
    src = ESX.GetPlayerFromId(v).source
    local Player = ESX.GetPlayerFromId(source)
print("asd")
    MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier=@identifier', {
        ['@identifier'] = Player.identifier
    }, function(user)
    TriggerClientEvent('stg_wallet:show', src, Player.job.name, ehliyet_Stat, "gray", user[1].firstname..' '..user[1].lastname, user[1].dateofbirth, user[1].sex, user[1].height, y)

end)
end)
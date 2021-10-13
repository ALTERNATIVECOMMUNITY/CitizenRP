TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- ESX.RegisterServerCallback('RubyMenu:getUsergroup', function(source, cb)
-- 	local xPlayer = ESX.GetPlayerFromId(source)
-- 	local group = xPlayer.getGroup()
-- 	print(GetPlayerName(source).." - "..group)
-- 	cb(group)
-- end)
--





RegisterServerEvent('txadmin_menu:open_permission')
AddEventHandler('txadmin_menu:open_permission', function()
  ESX.RegisterServerCallback('RubyMenu:getUsergroup', function(source, cb)
  	local xPlayer = ESX.GetPlayerFromId(source)
  	local group = xPlayer.getGroup()
    local source = source
    if group == "admin" then
        TriggerClientEvent("open_menu", source)
    else
        TriggerClientEvent("no-perms", source)
    end
  end)
end)

local ESX  = nil
local show = false
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)


RegisterNetEvent('stg_wallet:open')
AddEventHandler('stg_wallet:open', function(v, z, c, fn, d, s, h, m)
	SetNuiFocus(true,true)
	SendNUIMessage({type = "open", job = v, license = z, color = c, fullname = fn, dateofbirth = d, sex = s, height = h, money = m})
end)

RegisterNUICallback("close", function(data)
	SetNuiFocus(false, false)
end)

RegisterNetEvent('stg_wallet:show')
AddEventHandler('stg_wallet:show', function(v, z, c, fn, d, s, h, t)
	print("asd")
	SendNUIMessage({type = "show", job = v, license = z, color = c, fullname = fn, dateofbirth = d, sex = s, height = h, typ = t})
	show = true
	showf()
end)

function showf()
while show do
Citizen.Wait(0)
if IsControlJustPressed(0, 306) then
	SendNUIMessage({type = "show_close"})
	show = false
end
end
end

RegisterNUICallback("share", function(data)
	local player, distance = ESX.Game.GetClosestPlayer()
	if distance ~= -1 and distance <= 3.0 then
	   TriggerServerEvent('stg_wallet:show', GetPlayerServerId(player), data.show)
	   ESX.ShowNotification('Envoyé')
	   else
	   ESX.ShowNotification('Pas de joueur a proximité')
	   end
   end, false)
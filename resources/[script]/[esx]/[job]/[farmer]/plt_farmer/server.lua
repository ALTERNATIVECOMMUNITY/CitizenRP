local PLT = plt_farmer
if PLT.UseEsxFramework then
  ESX = nil
  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
  Citizen.CreateThread(function(...) while not ESX do Citizen.Wait(10)TriggerEvent('esx:getSharedObject', function(obj) ESX = obj; end) end end)
else
  --shouldbeintegrated If you are using other frameworks, you should fix it here.
  QBCore = nil
  Citizen.CreateThread(function(...)  while QBCore == nil do Citizen.Wait(1000)   QBCore = exports['qb-core']:GetSharedObject() end end)
end


local Info = {}
local Objeler = {}
Citizen.CreateThread(function()
  for k,v in pairs(PLT.Area) do 
    table.insert(Info,{number = k , source = nil })
    Objeler[k] = {}
  end
end)


RegisterNetEvent("plt_farmer:CheckAvailableArea")
AddEventHandler("plt_farmer:CheckAvailableArea", function()
  TriggerClientEvent("plt_farmer:OpenAvailableAreaMenu",source,Info)
end)

RegisterNetEvent("plt_farmer:CanISelecetThis")
AddEventHandler("plt_farmer:CanISelecetThis", function(arg)
  local src = source
  for k,v in pairs(Info) do 
    if v.source == src then
        TriggerClientEvent('plt_farmer:SendNotify', src, "error",PLT.U["cancel"],9000)
      return
    end
  end
  for k,v in pairs(Info) do 
    if v.number == arg then
      if v.source == nil then 
        v.source = src
        TriggerClientEvent("plt_farmer:Startjob",src,v.number)
      else
        TriggerClientEvent('plt_farmer:SendNotify', src, "error",PLT.U["cant_select"],9000)
      end
      break
    end
  end
end) 

RegisterNetEvent("plt_farmer:CancelWork")
AddEventHandler("plt_farmer:CancelWork", function()
  local src = source
  for k,v in pairs(Info) do 
    if v.source == src then 
      Entitydeleter(k)
      v.source = nil
      break 
    end
  end
end)

RegisterNetEvent("plt_farmer:MissionComplate")
AddEventHandler("plt_farmer:MissionComplate", function(money)
  local src = source
  for k,v in pairs(Info) do 
    if v.source == src then 
      Entitydeleter(k)
      v.source = nil
      break 
    end
  end
    if PLT.UseEsxFramework then
      local xPlayer = ESX.GetPlayerFromId(src)
      if PLT.PaymentMethodWithBank  then 
        xPlayer.addAccountMoney('bank', money)
      else
        xPlayer.addMoney(money)
      end   
    else --shouldbeintegrated If you are using other frameworks, you should fix it here.
      local xPlayer = QBCore.Functions.GetPlayer(src)
      while xPlayer == nil do Wait(10) end
      if PLT.PaymentMethodWithBank  then 
        xPlayer.Functions.AddMoney('bank', tonumber(money), 'farmerjob-payment')
      else
        xPlayer.Functions.AddMoney('cash', tonumber(money), 'farmerjob-payment')
      end 
    end   
    -- if you have you can add here log system
    --TriggerEvent('plt_soygunlog',xPlayer.source,"meslekloglari","Çiftçilik",money,"1")
    TriggerClientEvent('plt_farmer:SendNotify', src, "error",money..PLT.U["won"],9000)
end) 

AddEventHandler("playerDropped", function()
  local src = source
  for k,v in pairs(Info) do 
    if v.source == src then 
      Entitydeleter(k)
      v.source = nil
      break 
    end
  end
end)

function Entitydeleter(area)
  for k,v in pairs(Objeler[area]) do 
    if DoesEntityExist(v) then 
      DeleteEntity(v)
    end
  end
  Objeler[area] = {}
end

RegisterNetEvent("plt_farmer:AddEntity")
AddEventHandler("plt_farmer:AddEntity", function(arg1,arg2)
  local objeaydi = arg1
  local area = arg2
	for i = 1, 10, 1 do Citizen.Wait(0)
    if NetworkGetEntityFromNetworkId(objeaydi) ~= 0 then
      table.insert(Objeler[area], NetworkGetEntityFromNetworkId(objeaydi))
      break 
    end
    Citizen.Wait(100)
  end
end)

RegisterServerEvent("plt_farmer:DeleteEntity", function(id)
  local ent = NetworkGetEntityFromNetworkId(id)
  if DoesEntityExist(ent) then
      DeleteEntity(ent)
  end
end)
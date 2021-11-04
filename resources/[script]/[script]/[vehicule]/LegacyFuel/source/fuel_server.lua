ESX = nil

if Config.UseESX then
    TriggerEvent('esx:getSharedObject', function(obj)
        ESX = obj
    end)

    RegisterServerEvent('fuel:pay')
    AddEventHandler('fuel:pay', function(price)
        local xPlayer = ESX.GetPlayerFromId(source)
        local amount = ESX.Math.Round(price)

        if price > 0 then
            xPlayer.removeMoney(amount)
        end
    end)

    RegisterServerEvent('fuel:giveJerrican')
    AddEventHandler('fuel:giveJerrican', function()
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.addWeapon("WEAPON_PETROLCAN", 4500)
    end)
end

local amount = 0
local garagecount = 0
local hasSentOnce = false

RegisterNetEvent('cd_garage:GarageTax')
AddEventHandler('cd_garage:GarageTax', function(model)
    maths = GetTaxAmount(model)
    amount = amount + maths
    garagecount = garagecount + 1
    if not hasSentOnce then
        hasSentOnce = true
        TriggerEvent('cd_garage:PayTax')
    end
end)

RegisterNetEvent('cd_garage:PayTax')
AddEventHandler('cd_garage:PayTax', function()
    if hasSentOnce then
        Wait(5000)
        TriggerServerEvent('cd_garage:PayTax', amount, math.ceil(garagecount))
        amount = 0
        garagecount = 0
        hasSentOnce = false
    end
end)

function GetTaxAmount(model)
    if Config.UseDatabaseVehiclesTable then
        if PriceData and PriceData[model] and PriceData[model].garage_tax then
            return PriceData[model].garage_tax
        else
            return 0
        end
    else
        return 0
    end   
end
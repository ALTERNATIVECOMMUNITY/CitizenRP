ESX = nil
Vehicles = {}
VehicleCategories = {}

TriggerEvent(
    "esx:getSharedObject",
    function(obj)
        ESX = obj
    end
)

MySQL.ready(
    function()
        MySQL.Async.fetchAll(
            "SELECT * FROM vehicles WHERE 1 ",
            {},
            function(data)
                for _, v in ipairs(data) do
                    Vehicles[v.model] = v
                end
            end
        )
        MySQL.Async.fetchAll(
            "SELECT * FROM vehicle_categories WHERE 1 ",
            {},
            function(data)
                for _, v in ipairs(data) do
                    VehicleCategories[v.name] = v.label
                end
            end
        )
    end
)

ESX.RegisterServerCallback(
    "core_insurance:getOwnedVehicles",
    function(source, cb)
        local xPlayer = ESX.GetPlayerFromId(source)

        MySQL.Async.fetchAll(
            "SELECT * FROM owned_vehicles WHERE owner = @identifier ",
            {["@identifier"] = xPlayer.identifier},
            function(data)
                if data then
                    local vehicles = {}

                    for _, v in ipairs(data) do
                        v.vehicle = json.decode(v.vehicle)

                        table.insert(vehicles, v)
                    end

                    cb(vehicles, Vehicles, VehicleCategories, os.time())
                end
            end
        )
    end
)

ESX.RegisterServerCallback(
    "core_insurance:payCredits",
    function(source, cb, credits)
        local xPlayer = ESX.GetPlayerFromId(source)

        MySQL.Async.fetchScalar(
            "SELECT `credits` FROM users WHERE identifier = @identifier",
            {["@identifier"] = xPlayer.identifier},
            function(amount)
                if tonumber(amount) >= credits then
                    MySQL.Async.execute(
                        "UPDATE `users` SET `credits`= `credits` - @credits WHERE `identifier` = @identifier",
                        {["@credits"] = credits, ["@identifier"] = xPlayer.identifier},
                        function()
                            TriggerClientEvent("core_insurance:SendTextMessage", source, Config.Text["credits_updated"])
                            cb(true)
                        end
                    )
                else
                    TriggerClientEvent("core_insurance:SendTextMessage", source, Config.Text["not_enough_credits"])
                    cb(false)
                end
            end
        )
    end
)

ESX.RegisterServerCallback(
    "core_insurance:payFranchise",
    function(source, cb, franchise)
        local xPlayer = ESX.GetPlayerFromId(source)

        if franchise > 0 then
            if xPlayer.getAccount("bank").money >= franchise then
                xPlayer.removeAccountMoney("bank", franchise)
                cb(true)
            else
                TriggerClientEvent("core_insurance:SendTextMessage", source, Config.Text["not_enough_money"])
                cb(false)
            end
        else
            cb(true)
        end
    end
)

ESX.RegisterServerCallback(
    "core_insurance:payInsurance",
    function(source, cb, price)
        local xPlayer = ESX.GetPlayerFromId(source)

        if price > 0 then
            if xPlayer.getAccount("bank").money >= price then
                xPlayer.removeAccountMoney("bank", price)
                cb(true)
            else
                TriggerClientEvent("core_insurance:SendTextMessage", source, Config.Text["inverval_payment_error"])

                cb(false)
            end
        else
            cb(true)
        end
    end
)

RegisterServerEvent("core_insurance:removePlan")
AddEventHandler(
    "core_insurance:removePlan",
    function(plate)
        local src = source

        MySQL.Async.execute(
            "UPDATE `owned_vehicles` SET `insurance`= @plan WHERE `plate` = @plate",
            {["@plan"] = "none", ["@plate"] = plate},
            function()
            end
        )
    end
)

RegisterServerEvent("core_insurance:changePlan")
AddEventHandler(
    "core_insurance:changePlan",
    function(plate, plan)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)

        local planInfo = Config.InsurancePlans[plan]

        if planInfo.oneTimePrice > 0 then
            if xPlayer.getAccount("bank").money < planInfo.oneTimePrice then
                TriggerClientEvent("core_insurance:SendTextMessage", src, Config.Text["not_enough_money"])
                return
            else
                xPlayer.removeAccountMoney("bank", planInfo.oneTimePrice)
            end
        end

        MySQL.Async.execute(
            "UPDATE `owned_vehicles` SET `insurance`= @plan WHERE `plate` = @plate",
            {["@plan"] = plan, ["@plate"] = plate},
            function()
                TriggerClientEvent("core_insurance:SendTextMessage", src, Config.Text["plan_changed"])
            end
        )
    end
)

RegisterServerEvent("core_insurance:setCooldown")
AddEventHandler(
    "core_insurance:setCooldown",
    function(plate, time)
        local cooldown = os.time() + time

        MySQL.Async.execute(
            "UPDATE `owned_vehicles` SET `cooldown`= @cooldown WHERE `plate` = @plate",
            {["@cooldown"] = cooldown, ["@plate"] = plate},
            function()
            end
        )
    end
)

function setCraftingLevel(identifier, level)
    MySQL.Async.execute(
        "UPDATE `users` SET `crafting_level`= @xp WHERE `identifier` = @identifier",
        {["@xp"] = level, ["@identifier"] = identifier},
        function()
        end
    )
end

function getCraftingLevel(identifier)
    return tonumber(
        MySQL.Sync.fetchScalar(
            "SELECT `crafting_level` FROM users WHERE identifier = @identifier ",
            {["@identifier"] = identifier}
        )
    )
end

function giveCraftingLevel(identifier, level)
    MySQL.Async.execute(
        "UPDATE `users` SET `crafting_level`= `crafting_level` + @xp WHERE `identifier` = @identifier",
        {["@xp"] = level, ["@identifier"] = identifier},
        function()
        end
    )
end

RegisterServerEvent("core_crafting:setExperiance")
AddEventHandler(
    "core_crafting:setExperiance",
    function(identifier, xp)
        setCraftingLevel(identifier, xp)
    end
)

RegisterServerEvent("core_crafting:giveExperiance")
AddEventHandler(
    "core_crafting:giveExperiance",
    function(identifier, xp)
        giveCraftingLevel(identifier, xp)
    end
)

function craft(src, item, retrying)
    local xPlayer = ESX.GetPlayerFromId(src)
    local cancraft = true

    local count = Config.Recipes[item].Amount

    if not retrying then
        for k, v in pairs(Config.Recipes[item].Ingredients) do
            if xPlayer.getInventoryItem(k).count < v then
                cancraft = false
            end
        end
    end

    if Config.Recipes[item].isGun then
        if cancraft then
            for k, v in pairs(Config.Recipes[item].Ingredients) do
                if not Config.PermanentItems[k] then
                    xPlayer.removeInventoryItem(k, v)
                end
            end

            TriggerClientEvent("core_crafting:craftStart", src, item, count)
        else
            TriggerClientEvent("core_crafting:sendMessage", src, Config.Text["not_enough_ingredients"])
        end
    else
        if Config.UseLimitSystem then
            local xItem = xPlayer.getInventoryItem(item)

            if xItem.count + count <= xItem.limit then
                if cancraft then
                    for k, v in pairs(Config.Recipes[item].Ingredients) do
                        xPlayer.removeInventoryItem(k, v)
                    end

                    TriggerClientEvent("core_crafting:craftStart", src, item, count)
                else
                    TriggerClientEvent("core_crafting:sendMessage", src, Config.Text["not_enough_ingredients"])
                end
            else
                TriggerClientEvent("core_crafting:sendMessage", src, Config.Text["you_cant_hold_item"])
            end
        else
            if xPlayer.canCarryItem(item, count) then
                if cancraft then
                    for k, v in pairs(Config.Recipes[item].Ingredients) do
                        xPlayer.removeInventoryItem(k, v)
                    end

                    TriggerClientEvent("core_crafting:craftStart", src, item, count)
                else
                    TriggerClientEvent("core_crafting:sendMessage", src, Config.Text["not_enough_ingredients"])
                end
            else
                TriggerClientEvent("core_crafting:sendMessage", src, Config.Text["you_cant_hold_item"])
            end
        end
    end
end

RegisterServerEvent("core_crafting:itemCrafted")
AddEventHandler(
    "core_crafting:itemCrafted",
    function(item, count)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)

        if Config.Recipes[item].SuccessRate > math.random(0, Config.Recipes[item].SuccessRate) then
            if Config.UseLimitSystem then
                local xItem = xPlayer.getInventoryItem(item)

                if xItem.count + count <= xItem.limit then
                    if Config.Recipes[item].isGun then
                        xPlayer.addWeapon(item, 0)
                    else
                        xPlayer.addInventoryItem(item, count)
                    end
                    TriggerClientEvent("core_crafting:sendMessage", src, Config.Text["item_crafted"])
                    giveCraftingLevel(xPlayer.identifier, Config.ExperiancePerCraft)
                else
                    TriggerEvent("core_crafting:craft", item)
                    TriggerClientEvent("core_crafting:sendMessage", src, Config.Text["inv_limit_exceed"])
                end
            else
                if xPlayer.canCarryItem(item, count) then
                    if Config.Recipes[item].isGun then
                        xPlayer.addWeapon(item, 0)
                    else
                        xPlayer.addInventoryItem(item, count)
                    end
                    TriggerClientEvent("core_crafting:sendMessage", src, Config.Text["item_crafted"])
                    giveCraftingLevel(xPlayer.identifier, Config.ExperiancePerCraft)
                else
                    TriggerClientEvent("core_crafting:sendMessage", src, Config.Text["inv_limit_exceed"])
                end
            end
        else
            TriggerClientEvent("core_crafting:sendMessage", src, Config.Text["crafting_failed"])
        end
    end
)

RegisterServerEvent("core_crafting:craft")
AddEventHandler(
    "core_crafting:craft",
    function(item, retrying)
        local src = source
        craft(src, item, retrying)
    end
)

ESX.RegisterServerCallback(
    "core_crafting:getXP",
    function(source, cb)
        local xPlayer = ESX.GetPlayerFromId(source)

        cb(getCraftingLevel(xPlayer.identifier))
    end
)

ESX.RegisterServerCallback(
    "core_crafting:getItemNames",
    function(source, cb)
        local names = {}

        MySQL.Async.fetchAll(
            "SELECT * FROM items WHERE 1",
            {},
            function(info)
                for _, v in ipairs(info) do
                    names[v.name] = v.label
                end

                cb(names)
            end
        )
    end
)

RegisterCommand(
    "givecraftingxp",
    function(source, args, rawCommand)
        if source ~= 0 then
            local xPlayer = ESX.GetPlayerFromId(source)

            if xPlayer.getGroup() == "admin" or xPlayer.getGroup() == "superadmin" then
                if args[1] ~= nil then
                    local xTarget = ESX.GetPlayerFromId(tonumber(args[1]))
                    if xTarget ~= nil then
                        if args[2] ~= nil then
                            giveCraftingLevel(xTarget.identifier, tonumber(args[2]))
                        else
                            TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
                        end
                    else
                        TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
                    end
                else
                    TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
                end
            else
                TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
            end
        end
    end,
    false
)

RegisterCommand(
    "setcraftingxp",
    function(source, args, rawCommand)
        if source ~= 0 then
            local xPlayer = ESX.GetPlayerFromId(source)

            if xPlayer.getGroup() == "admin" or xPlayer.getGroup() == "superadmin" then
                if args[1] ~= nil then
                    local xTarget = ESX.GetPlayerFromId(tonumber(args[1]))
                    if xTarget ~= nil then
                        if args[2] ~= nil then
                            setCraftingLevel(xTarget.identifier, tonumber(args[2]))
                        else
                            TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
                        end
                    else
                        TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
                    end
                else
                    TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
                end
            else
                TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
            end
        end
    end,
    false
)

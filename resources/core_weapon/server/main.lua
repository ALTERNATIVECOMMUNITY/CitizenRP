ESX = nil

TriggerEvent(
    "esx:getSharedObject",
    function(obj)
        ESX = obj
    end
)

RegisterServerEvent("core_weapon:removeItem")
AddEventHandler(
    "core_weapon:removeItem",
    function(itemName)
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem(itemName, 1)
    end
)

RegisterServerEvent("core_weapon:getComponent")
AddEventHandler(
    "core_weapon:getComponent",
    function(itemName)
        local xPlayer = ESX.GetPlayerFromId(source)

        xPlayer.addInventoryItem(itemName, 1)
    end
)

ESX.RegisterServerCallback(
    "core_weapon:canReload",
    function(source, cb, wtype)
        local xPlayer = ESX.GetPlayerFromId(source)

        local item = nil

        if wtype == "submachine" then
            item = "smg_clip"
        end
        if wtype == "pistol" then
            item = "pistol_clip"
        end
        if wtype == "shotgun" then
            item = "shotgun_clip"
        end
        if wtype == "assault" then
            item = "rifle_clip"
        end
        if wtype == "sniper" then
            item = "sniper_clip"
        end
        if wtype == "lightmachine" then
            item = "lightsmg_clip"
        end

        if item ~= nil then
            if xPlayer.getInventoryItem(item).count > 0 then
                xPlayer.removeInventoryItem(item, 1)
                cb(true, false)
            end
        end

        cb(false, false)
    end
)

ESX.RegisterServerCallback(
    "core_weapon:buyItem",
    function(source, cb, item, price)
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer.getMoney() >= price then
            if xPlayer.canCarryItem(item, 1) then
                xPlayer.addInventoryItem(item, 1)
                xPlayer.removeMoney(price)
                cb(true)
            else
                cb(false)
            end
        else
            cb(false)
        end
    end
)

ESX.RegisterUsableItem(
    "weapon_clip_extended",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "weapon_clip_extended")
    end
)
ESX.RegisterUsableItem(
    "m4a1_pmag30",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "m4a1_pmag30")
    end
)

ESX.RegisterUsableItem(
    "m4a1_stanag60",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "m4a1_stanag60")
    end
)

ESX.RegisterUsableItem(
    "m4a1_pmag60",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "m4a1_pmag60")
    end
)

ESX.RegisterUsableItem(
    "m4a1_scope1",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "m4a1_scope1")
    end
)

ESX.RegisterUsableItem(
    "m4a1_scope2",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "m4a1_scope2")
    end
)

ESX.RegisterUsableItem(
    "m4a1_scope3",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "m4a1_scope3")
    end
)


ESX.RegisterUsableItem(
    "m4a1_supp_1",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "m4a1_supp_1")
    end
)

ESX.RegisterUsableItem(
    "ak_supp_1",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "ak_supp_1")
    end
)


ESX.RegisterUsableItem(
    "m18_clip_21",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "m18_clip_21")
    end
)

ESX.RegisterUsableItem(
    "m18_rmr",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "m18_rmr")
    end
)


ESX.RegisterUsableItem(
    "m18_supp_1",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "m18_supp_1")
    end
)

ESX.RegisterUsableItem(
    "m18_supp_2",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "m18_supp_2")
    end
)




ESX.RegisterUsableItem(
    "glock19_clip_21",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "glock19_clip_21")
    end
)

ESX.RegisterUsableItem(
    "glock19_supp_1",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "glock19_supp_1")
    end
)




ESX.RegisterUsableItem(
    "glock_clip_21",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "glock_clip_21")
    end
)

ESX.RegisterUsableItem(
    "glock_clip_30",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "glock_clip_30")
    end
)


ESX.RegisterUsableItem(
    "glock_clip_50",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "glock_clip_50")
    end
)

ESX.RegisterUsableItem(
    "glock_culasse_2",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "glock_culasse_2")
    end
)

ESX.RegisterUsableItem(
    "glock_culasse_3",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "glock_culasse_3")
    end
)

ESX.RegisterUsableItem(
    "glock_culasse_4",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "glock_culasse_4")
    end
)



ESX.RegisterUsableItem(
    "glock_culasse_5",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "glock_culasse_5")
    end
)

ESX.RegisterUsableItem(
    "glock_supp_1",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "glock_supp_1")
    end
)

ESX.RegisterUsableItem(
    "glock_supp_2",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "glock_supp_2")
    end
)

ESX.RegisterUsableItem(
    "glock_supp_3",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "glock_supp_3")
    end
)





ESX.RegisterUsableItem(
    "weapon_tint_green",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "weapon_tint_green")
    end
)

ESX.RegisterUsableItem(
    "weapon_tint_gold",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "weapon_tint_gold")
    end
)

ESX.RegisterUsableItem(
    "weapon_tint_pink",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "weapon_tint_pink")
    end
)

ESX.RegisterUsableItem(
    "weapon_tint_army",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "weapon_tint_army")
    end
)

ESX.RegisterUsableItem(
    "weapon_tint_lspd",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "weapon_tint_lspd")
    end
)

ESX.RegisterUsableItem(
    "weapon_tint_orange",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "weapon_tint_orange")
    end
)

ESX.RegisterUsableItem(
    "weapon_tint_platinum",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "weapon_tint_platinum")
    end
)

ESX.RegisterUsableItem(
    "armor",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "armor")
    end
)

ESX.RegisterUsableItem(
    "armor2",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "armor2")
    end
)
ESX.RegisterUsableItem(
    "armor3",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "armor3")
    end
)

ESX.RegisterUsableItem(
    "weapon_luxary_finish",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "weapon_luxary_finish")
    end
)

ESX.RegisterUsableItem(
    "pistol_clip",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "pistol_clip")
    end
)

ESX.RegisterUsableItem(
    "weapon_flashlight",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "weapon_flashlight")
    end
)

ESX.RegisterUsableItem(
    "weapon_suppressor",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "weapon_suppressor")
    end
)

ESX.RegisterUsableItem(
    "weapon_scope",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "weapon_scope")
    end
)

ESX.RegisterUsableItem(
    "smg_clip",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "smg_clip")
    end
)

ESX.RegisterUsableItem(
    "lightsmg_clip",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "lightsmg_clip")
    end
)

ESX.RegisterUsableItem(
    "rifle_clip",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "rifle_clip")
    end
)

ESX.RegisterUsableItem(
    "shotgun_clip",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "shotgun_clip")
    end
)

ESX.RegisterUsableItem(
    "sniper_clip",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "sniper_clip")
    end
)

ESX.RegisterUsableItem(
    "sniper_clip_unmarked",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "sniper_clip", true)
    end
)

ESX.RegisterUsableItem(
    "shotgun_clip_unmarked",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "shotgun_clip", true)
    end
)

ESX.RegisterUsableItem(
    "rifle_clip_unmarked",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "rifle_clip", true)
    end
)

ESX.RegisterUsableItem(
    "pistol_clip_unmarked",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "pistol_clip", true)
    end
)

ESX.RegisterUsableItem(
    "smg_clip_unmarked",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "smg_clip", true)
    end
)

ESX.RegisterUsableItem(
    "lightsmg_clip_unmarked",
    function(source)
        TriggerClientEvent("core_weapon:useItem", source, "lightsmg_clip", true)
    end
)

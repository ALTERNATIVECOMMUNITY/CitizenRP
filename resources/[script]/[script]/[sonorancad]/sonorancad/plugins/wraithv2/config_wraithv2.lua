--[[
    Sonoran Plugins

    Plugin Configuration

    Put all needed configuration in this file.
]]
local config = {
    enabled = true,
    pluginName = "wraithv2", -- name your plugin here
    pluginAuthor = "SonoranCAD", -- author
    configVersion = "1.5"

    -- use vehicle registration expirations, or not
    ,useExpires = true
     -- use middle initials?
    ,useMiddleInitial = true
    -- alert if no registration was found on scan?
    ,alertNoRegistration = true
    -- if your custom vehicle record is different, change the below
    ,statusUid = "status"
    ,expiresUid = "expiration"
    -- statuses to flag on when scanned
    ,flagOnStatuses = {"STOLEN", "EXPIRED", "PENDING", "SUSPENDED"}
}

if config.enabled then
    Config.RegisterPluginConfig(config.pluginName, config)
end

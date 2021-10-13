function tableLength(table)
    local count = 0
    if table and type(table) == "table" then
        for _ in pairs(table) do
            count = count + 1
        end
    end
    return count
end

function emptyTable(table)
    if isTable(table) then
        if next(table) == nil then
            return true
        else
            return false
        end
    else
        return true
    end
end

function isTable(table)
    if table ~= nil then
        if type(table) == "table" then
            return true
        end
        return false
    else
        return false
    end
end
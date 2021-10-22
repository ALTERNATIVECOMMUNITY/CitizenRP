local TireSpikeLastId = 0
local TireSpikes = {}

RegisterNetEvent("mmtirespikes:CreateSpike", function(data)
    local id = GetNewSpikeId()
    TireSpikes[id] = data
    TriggerClientEvent("mmtirespikes:CreateSpike", -1, id, data)
end)

RegisterNetEvent("mmtirespikes:RemoveSpike", function(id)
    TireSpikes[id] = nil
    TriggerClientEvent("mmtirespikes:RemoveSpike", -1, id)
end)

RegisterNetEvent("mmtirespikes:GetMissingSpikes", function()
	TriggerClientEvent("mmtirespikes:GetMissingSpikes", source, TireSpikes)
end)

function GetNewSpikeId()
	if TireSpikeLastId < 65535 then
		TireSpikeLastId = TireSpikeLastId + 1
		return tostring(TireSpikeLastId)
	else
		TireSpikeLastId = 0
		return tostring(TireSpikeLastId)
	end
end
------- Add appartments and their positions here

appartements = {
	{
		ext = {name = "Hopital", x = 332.306, y = -595.706, z = 42.284, h = 39.06, h = 39.06},
		appts = {
			{name = "-1 Accueil", x = 344.364, y = -586.257, z = 27.797, h = 39.06},
			{name = "-1 Garage", x = 340.038, y = -584.826, z = 27.797, h = 39.06},

			{name = "6 Heliport", x = 338.403, y = -584.381, z = 73.162, h = 39.06},

		},
	},
	{ -- ,, ,
		ext = {name = "Brinks", x = 4.6822934150696, y = -656.60961914063, z = 32.450305938721, h = 32.06},
		appts = {
		--	{name = "Garage", x = 4.6822934150696, y = -656.60961914063, z = 33.450305938721, h = 39.06},
			{name = "Coffres", x = 5.565661907196, y= -709.04797363281, z = 15.131042480469, h = 32.06},

		}
	},

	{
		ext = {name = "Héliport", x = 565.68768310547, y = 4.9530363082886, z = 102.23313903809, h = 32.06},
		appts = {
		--	{name = "Garage", x = 4.6822934150696, y = -656.60961914063, z = 33.450305938721, h = 39.06},
			{name = "Escalier", x = 605.08563232422, y= 5.3621172904968, z = 96.872459411621, h = 32.06},

		}
	}
}

--,,,,

local nameTimer = 0
local nameOnScreen = false
local nameText = ""

function ShowHelp(text)
	Citizen.InvokeNative(0x8509B634FBE7DA11, "STRING")
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandDisplayHelp(0, false, 1, 0)
end

function DrawSub(text)
	SetTextFont(1)
	SetTextScale(0.7, 0.7)
	SetTextColour(255, 255, 255, 255)
	SetTextWrap(0.2,  0.8)
	SetTextCentre(1)
	SetTextOutline(true)
	BeginTextCommandDisplayText("STRING")
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandDisplayText(0.8, 0.9)
end

function Teleport(x, y, z, h)
	local e = GetPlayerPed(-1)
	DoScreenFadeOut(800)
	while not IsScreenFadedOut() do
		Wait(10)
	end
	SetEntityCoordsNoOffset(e, x + 0.0, y + 0.0, z + 1.5, 0, 0, 1)
	SetEntityHeading(e, h + 0.0)
	Wait(500)
	DoScreenFadeIn(800)
	while not IsScreenFadedIn() do
		Wait(10)
	end
end

function ShowName(name)
	nameText = name
	nameTimer = GetGameTimer() + 5000
	nameOnScreen = true
end


AddEventHandler("appt:teleport", function(apid, id)
	Teleport(appartements[apid].appts[id].x, appartements[apid].appts[id].y, appartements[apid].appts[id].z, appartements[apid].appts[id].h)
	ShowName(appartements[apid].appts[id].name)
end)

Citizen.CreateThread(function()

	while true do
		Citizen.Wait(1)
		local pedPos = GetEntityCoords(GetPlayerPed(-1), 0)
		for id=1, #appartements do

			-- Immeuble

			local dist_ext = GetDistanceBetweenCoords(appartements[id].ext.x + 0.0, appartements[id].ext.y + 0.0, appartements[id].ext.z + 0.5, pedPos, true)
			if dist_ext < 15 then-- Test de distance pour afficher le marqueur. (Qu'on ne le voit pas de loin)
				if dist_ext <= 0.9 then -- Distance Interne Marqueur pour déclencher la téléportation
					ShowHelp("Press ~INPUT_VEH_HORN~ to entrer.")
					if IsControlJustReleased(0, 86) then
						if #appartements[id].appts == 1 then
							Teleport(appartements[id].appts[1].x, appartements[id].appts[1].y, appartements[id].appts[1].z, appartements[id].appts[1].h)
							ShowName(appartements[id].appts[1].name)
						else
							ShowMenu(id, appartements[id].appts)
						end
					end
				end
				-- Affiche le marqueur. (A commenter si pas besoin du marqueur affiché.)
				DrawMarker(1, appartements[id].ext.x + 0.0, appartements[id].ext.y + 0.0, appartements[id].ext.z + 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 0.5, 0, 160, 255, 60, 0, 0, 2, 0, 0, 0, 0)
			end

			if dist_ext < 1.9 and dist_ext > 1.2 then
				CloseMenu()
			end
			-- Etages d'immeuble

			local appts = appartements[id].appts
			for appt=1, #appts do
				local dist_in = GetDistanceBetweenCoords(appts[appt].x + 0.0, appts[appt].y + 0.0, appts[appt].z + 0.5, pedPos, true)
				if dist_in < 8 then -- Test de distance pour afficher le marqueur. (Qu'on ne le voit pas de loin)
					if dist_in <= 1.3 then -- Distance Interne Marqueur pour déclencher la téléportation
						ShowHelp("Press ~INPUT_VEH_HORN~ to go to Main Hall")
						if IsControlJustReleased(0, 86) then
							Teleport(appartements[id].ext.x, appartements[id].ext.y, appartements[id].ext.z, appartements[id].ext.h)
							ShowName(appartements[id].ext.name)
						end
					end
					-- Affiche le marqueur. (A commenter si pas besoin du marqueur affiché.)
					DrawMarker(1, appts[appt].x + 0.0, appts[appt].y + 0.0, appts[appt].z + 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.4, 2.4, 0.5, 0, 160, 255, 90, 0, 0, 2, 0, 0, 0, 0)
				end
			end
		end

		if nameOnScreen then
			if GetGameTimer() < nameTimer then
				DrawSub(nameText)
			else
				nameOnScreen = false
			end
		end

	end

end)

---------------------------------------------------------------------------
-----------------------------------------------------------------leave this
local call = {}
function call.tick()
-----------------------------------------------------------------leave this
---------------------------------------------------------------------------
local playerPed = PLAYER.PLAYER_PED_ID()
local player = PLAYER.GET_PLAYER_PED(playerPed)






--this version includes dlc weapons
--please not that im absolutely not include all weapon
--i only list ammo ed weapon
--not too long maybe 1 or 2 daysit will be released so you can follow to get updated
--i made this for you so you can easily change max weapon as you like it without editing weapon meta files
--please if you like it at least you Like it on the web an put comments
--that will be meanful to me

--edit only the value and leave "()" unedited
--and no stealing you can ask me for permition



--------------------------------------------------pistol
local maxbeceng			= (100)

--------------------------------------------------combat pistol
local maxbeceng1		= (100)

--------------------------------------------------ap pistol
local maxbeceng2		= (100)

--------------------------------------------------pistol 50 cal
local maxbeceng3		= (80)

--------------------------------------------------micro smg
local maxroyco			= (360)

--------------------------------------------------smg
local maxroyco1			= (360)

--------------------------------------------------assault smg
local maxroyco2			= (360)

--------------------------------------------------assault rifle
local maxAr			= (360)

--------------------------------------------------carbine rifle
local maxcarbine		= (360)

--------------------------------------------------advanced rifle
local maxadvanced		= (360)

--------------------------------------------------machine gun
local maxMg			= (900)

--------------------------------------------------combat machine gun
local maxCombatMg		= (900)

--------------------------------------------------pump shotgun
local maxshotgun		= (60)

--------------------------------------------------sawn off shotgun
local maxshotgun1		= (60)

--------------------------------------------------assault shotgun
local maxshotgun2		= (60)

--------------------------------------------------bullpup shotgun
local maxshotgun3		= (100)

--------------------------------------------------sniper rifle
local maxtembakjitu		= (25)

--------------------------------------------------heavy sniper
local maxtembakjitu1		= (45)

--------------------------------------------------remote sniper
local maxtembakjitu2		= (45)

--------------------------------------------------granade launcher
local maxpelontargranat		= (6)

--------------------------------------------------granade launcher smoke
local maxpelontargranat1	= (6)

--------------------------------------------------rpg
local maxmeriam			= (2)

--------------------------------------------------stinger
local maxlebah			= (1)

--------------------------------------------------minigun
local maxugunkecil		= (250)

--------------------------------------------------granade
local maxgranat			= (3)

--------------------------------------------------stickybomb
local maxtempeljelegur		= (3)

--------------------------------------------------smoke grenade
local maxgranatasap		= (5)

--------------------------------------------------bz gas
local maxgastepar		= (8)

--------------------------------------------------molotov
local maxbomintisari		= (3)

--------------------------------------------------fire extinguisher
local maxpemadamkelaparan	= (1)

--------------------------------------------------jerry can
local maxjerigen		= (1)




----------------------------------------------------------------------------
-----------------------------------------------------------------dlc weapons
----------------------------------------------------------------------------

--------------------------------------------------special carbine
local maxspcarbine		= (280)

--------------------------------------------------heavy pistol
local maxheavypistol		= (50)

--------------------------------------------------sns pistol
local maxsns			= (50)

--------------------------------------------------bullpup rifle
local maxbull			= (280)

--------------------------------------------------vintage pistol
local maxvin			= (50)

--------------------------------------------------heavy shotgun
local maxheasgn			= (25)

--------------------------------------------------marksman rifle
local maxmarksrif		= (180)

--------------------------------------------------proximity mine
local maxproxmine		= (5)

--------------------------------------------------combat pdw
local maxcompdw			= (50)

--------------------------------------------------marksman pistol
local maxmarkspis		= (50)





-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-----------------------------------------end---------------------------------------
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
























































------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
-----------------------cross this and you are at your own risk----------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------















































	if
	(PED.IS_PED_MODEL(playerPed, GAMEPLAY.GET_HASH_KEY("player_zero"))) then model = 0 elseif
	(PED.IS_PED_MODEL(playerPed, GAMEPLAY.GET_HASH_KEY("player_one"))) then model = 1 elseif
	(PED.IS_PED_MODEL(playerPed, GAMEPLAY.GET_HASH_KEY("player_two"))) then model = 2 end
	local statname = "SP"..model.."_TOTAL_CASH"
	local hash = GAMEPLAY.GET_HASH_KEY(statname)
	local bool, val = STATS.STAT_GET_INT(hash, 0, -1)

	aR = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_ASSAULTRIFLE"))
		if (aR > maxAr) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_ASSAULTRIFLE"), maxAr)
		end


	carbine = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_CARBINERIFLE"))
		if (carbine > maxcarbine) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_CARBINERIFLE"), maxcarbine)
		end

	advanced = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_ADVANCEDRIFLE"))
		if (advanced > maxadvanced) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_ADVANCEDRIFLE"), maxadvanced)
		end


	mG = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_MG"))
		if (mG > maxMg) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_COMBATMG"), maxMg)
		end

	combatMg = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_COMBATMG"))
		if (combatMg > maxCombatMg) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_COMBATMG"), maxCombatMg)
		end

	beceng = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_PISTOL"))
		if (beceng > maxbeceng) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_PISTOL"), maxbeceng)
		end

	beceng1 = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_COMBATPISTOL"))
		if (beceng1 > maxbeceng1) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_COMBATPISTOL"), maxbeceng1)
		end

	beceng2 = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_APPISTOL"))
		if (beceng2 > maxbeceng2) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_APPISTOL"), maxbeceng2)
		end

	beceng3 = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_PISTOL50"))
		if (beceng3 > maxbeceng3) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_PISTOL50"), maxbeceng3)
		end

	royco = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_MICROSMG"))
		if (royco > maxroyco) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_MICROSMG"), maxroyco)
		end

	royco1 = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_SMG"))
		if (royco1 > maxroyco1) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_SMG"), maxroyco1)
		end

	royco2 = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_ASSAULTSMG"))
		if (royco2 > maxroyco2) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_ASSAULTSMG"), maxroyco2)
		end


	shotgun = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_PUMPSHOTGUN"))
		if (shotgun > maxshotgun) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_PUMPSHOTGUN"), maxshotgun)
		end

	shotgun1 = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_SAWNOFFSHOTGUN"))
		if (shotgun1 > maxshotgun1) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_SAWNOFFSHOTGUN"), maxshotgun1)
		end

	shotgun2 = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_ASSAULTSHOTGUN"))
		if (shotgun2 > maxshotgun2) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_ASSAULTSHOTGUN"), maxshotgun2)
		end

	shotgun3 = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_BULLPUPSHOTGUN"))
		if (shotgun3 > maxshotgun3) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_BULLPUPSHOTGUN"), maxshotgun3)
		end

	tembakjitu = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_SNIPERRIFLE"))
		if (tembakjitu > maxtembakjitu) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_BULLPUPSHOTGUN"), maxtembakjitu)
		end

	tembakjitu1 = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_HEAVYSNIPER"))
		if (tembakjitu1 > maxtembakjitu1) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_HEAVYSNIPER"), maxtembakjitu1)
		end

	tembakjitu2 = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_REMOTESNIPER"))
		if (tembakjitu2 > maxtembakjitu2) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_REMOTESNIPER"), maxtembakjitu2)
		end

	pelontargranat = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_GRENADELAUNCHER"))
		if (pelontargranat > maxpelontargranat) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_GRENADELAUNCHER"), maxpelontargranat)
		end

	pelontargranat1 = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_GRENADELAUNCHER_SMOKE"))
		if (pelontargranat1 > maxpelontargranat1) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_GRENADELAUNCHER"), maxpelontargranat1)
		end

	meriam = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_RPG"))
		if (meriam > maxmeriam) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_RPG"), '2')
		end

	lebah = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_STINGER"))
		if (lebah > maxlebah) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_STINGER"), maxlebah)
		end

	ugunkecil = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_MINIGUN"))
		if (ugunkecil> maxugunkecil) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_MINIGUN"), maxugunkecil)
		end

	granat = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_GRENADE"))
		if (granat> maxgranat) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_GRENADE"), maxgranat)
		end

	tempeljelegur = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_STICKYBOMB"))
		if (tempeljelegur> maxtempeljelegur) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_STICKYBOMB"), maxtempeljelegur)
		end

	granatasap = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_SMOKEGRENADE"))
		if (granatasap> maxgranatasap) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_SMOKEGRENADE"), maxgranatasap)
		end

	gastepar = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_BZGAS"))
		if (gastepar> maxgastepar) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_BZGAS"), maxgastepar)
		end

	bomintisari = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_MOLOTOV"))
		if (bomintisari> maxbomintisari) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_MOLOTOV"), maxbomintisari)
		end

	pemadamkelaparan = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_FIREEXTINGUISHER"))
		if (pemadamkelaparan> maxpemadamkelaparan) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_FIREEXTINGUISHER"), maxpemadamkelaparan)
		end

	jerigen = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_PETROLCAN"))
		if (jerigen> maxjerigen) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_PETROLCAN"), maxjerigen)
		end

	spcarbine = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_SPECIALCARBINE"))
		if (spcarbine> maxspcarbine) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_SPECIALCARBINE"), maxspcarbine)
		end

	heavypistol = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_HEAVYPISTOL"))
		if (heavypistol> maxheavypistol) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_HEAVYPISTOL"), maxheavypistol)
		end

	sns = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_SNSPISTOL"))
		if (sns> maxsns) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_SNSPISTOL"), maxsns)
		end

	bull = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_BULLPUPRIFLE"))
		if (bull> maxbull) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_BULLPUPRIFLE"), maxbull)
		end

	vin = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_VINTAGEPISTOL"))
		if (vin> maxvin) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_VINTAGEPISTOL"), maxvin)
		end

	heasgn = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_HEAVYSHOTGUN"))
		if (heasgn> maxheasgn) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_HEAVYSHOTGUN"), maxheasgn)
		end

	marksrif = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_MARKSMANRIFLE"))
		if (marksrif> maxmarksrif) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_MARKSMANRIFLE"), maxmarksrif)
		end

	proxmine = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_PROXMINE"))
		if (proxmine> maxproxmine) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_PROXMINE"), maxproxmine)
		end

	compdw = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_COMBATPDW"))
		if (compdw> maxcompdw) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_COMBATPDW"), maxcompdw)
		end

	markspis = WEAPON.GET_AMMO_IN_PED_WEAPON(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_MARKSMANPISTOL"))
		if (markspis> maxmarkspis) then
		WEAPON.SET_PED_AMMO(playerPed, GAMEPLAY.GET_HASH_KEY("WEAPON_MARKSMANPISTOL"), maxmarkspis)
		end
















	end



function pop(msg)
	UI._SET_NOTIFICATION_TEXT_ENTRY("STRING")
	UI._ADD_TEXT_COMPONENT_STRING(msg)
	Note = UI._DRAW_NOTIFICATION(FALSE, true)
end

function clearpop(x)
  UI._REMOVE_NOTIFICATION(x)
end



function call.pesan4(text, x, y, scale)
  UI.SET_TEXT_FONT(6)
  UI.SET_TEXT_SCALE(scale, scale)
  UI.SET_TEXT_COLOUR(255, 1, 1, 200)
  UI.SET_TEXT_WRAP(0.0, 1.0)
  UI.SET_TEXT_CENTRE(true)
  UI.SET_TEXT_DROPSHADOW(0, 0, 0, 0, 0)
  UI.SET_TEXT_EDGE(1, 0, 0, 0, 205)
  UI._SET_TEXT_ENTRY("STRING")
  UI._ADD_TEXT_COMPONENT_STRING(text)
  UI._DRAW_TEXT(y, x)
end

function call.pesan5(text, x, y, scale)
  UI.SET_TEXT_FONT(6)
  UI.SET_TEXT_SCALE(scale, scale)
  UI.SET_TEXT_COLOUR(255, 255, 255, 200)
  UI.SET_TEXT_WRAP(0.0, 1.0)
  UI.SET_TEXT_CENTRE(true)
  UI.SET_TEXT_DROPSHADOW(2, 2, 0, 0, 0)
  UI.SET_TEXT_EDGE(1, 0, 0, 0, 205)
  UI._SET_TEXT_ENTRY("STRING")
  UI._ADD_TEXT_COMPONENT_STRING(text)
  UI._DRAW_TEXT(y, x)
end




return call

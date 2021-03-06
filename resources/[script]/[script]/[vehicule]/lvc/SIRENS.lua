--[[
---------------------------------------------------
LUXART VEHICLE CONTROL V3 (FOR FIVEM)
---------------------------------------------------
Coded by Lt.Caine
ELS Clicks by Faction
Additions by TrevorBarns
---------------------------------------------------
FILE: SIRENS.lua
PURPOSE: Associate specific sirens with specific
vehicles. Siren assignments.
---------------------------------------------------
SIREN TONE TABLE:
	ID- Generic Name	(SIREN STRING)									[vehicles.awc name]
	1 - Airhorn 		(SIRENS_AIRHORN)								[AIRHORN_EQD]
	2 - Wail 			(VEHICLES_HORNS_SIREN_1)						[SIREN_PA20A_WAIL]
	3 - Yelp 			(VEHICLES_HORNS_SIREN_2)						[SIREN_2]
	4 - Priority 		(VEHICLES_HORNS_POLICE_WARNING)					[POLICE_WARNING]
	5 - CustomA* 		(RESIDENT_VEHICLES_SIREN_WAIL_01)				[SIREN_WAIL_01]
	6 - CustomB* 		(RESIDENT_VEHICLES_SIREN_WAIL_02)				[SIREN_WAIL_02]
	7 - CustomC* 		(RESIDENT_VEHICLES_SIREN_WAIL_03)				[SIREN_WAIL_03]
	8 - CustomE* 		(RESIDENT_VEHICLES_SIREN_QUICK_01)				[SIREN_QUICK_01]
	9 - CustomF* 		(RESIDENT_VEHICLES_SIREN_QUICK_02)				[SIREN_QUICK_02]
	10 - CustomG* 		(RESIDENT_VEHICLES_SIREN_QUICK_03)				[SIREN_QUICK_03]
	11 - Powercall 		(VEHICLES_HORNS_AMBULANCE_WARNING)				[AMBULANCE_WARNING]
	12 - FireHorn	 	(VEHICLES_HORNS_FIRETRUCK_WARNING)				[FIRE_TRUCK_HORN]
	13 - Firesiren 		(RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01)		[SIREN_FIRETRUCK_WAIL_01]
	14 - Firesiren2 	(RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01)	[SIREN_FIRETRUCK_QUICK_01]
]]
-- CHANGE SIREN NAMES, AUDIONAME, AUDIOREF

RequestScriptAudioBank("DLC_WMSIRENS\\SIRENPACK_ONE", false)

SIRENS = {
--[[1]]	{ Name = "AirHorn", 	String = "SIREN_FOXTROT", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --1
	--[[2]]	  { Name = "Wail", 			String = "VEHICLES_HORNS_SIREN_1", 						Ref = 0 }, --2
	--[[3]]	  { Name = "Yelp", 			String = "VEHICLES_HORNS_SIREN_2", 						Ref = 0 }, --3
	--[[4]]	  { Name = "Priority", 		String = "VEHICLES_HORNS_POLICE_WARNING", 				Ref = 0 }, --4
	--[[5]]	  { Name = "Futura", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_01", 			Ref = 0 }, --5
	--[[6]]	  { Name = "Hetro", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_02", 			Ref = 0 }, --6
	--[[7]]	  { Name = "Sweep-1", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_03", 			Ref = 0 }, --7
	--[[8]]	  { Name = "Sweep-2", 		String = "RESIDENT_VEHICLES_SIREN_QUICK_01", 			Ref = 0 }, --8
	--[[9]]	  { Name = "Hi-Low",		String = "RESIDENT_VEHICLES_SIREN_QUICK_02",			Ref = 0 }, --9
	--[[10]]  { Name = "Whine Down",	String = "RESIDENT_VEHICLES_SIREN_QUICK_03", 			Ref = 0 }, --10
	--[[11]]  { Name = "Powercall", 	String = "VEHICLES_HORNS_AMBULANCE_WARNING", 			Ref = 0 }, --11
	--[[12]]  { Name = "Fire Horn", 	String = "VEHICLES_HORNS_FIRETRUCK_WARNING", 			Ref = 0 }, --12
	--[[13]]  { Name = "Fire Yelp", 	String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01", 	Ref = 0 }, --13
	--[[14]]  { Name = "Fire Wail", 	String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01", 	Ref = 0 }, --14

--- POLICE
--[[16]]  { Name = "Siren", 	String = "SIREN_BRAVO", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --17
--[[18]]  { Name = "Priority", 	        String = "SIREN_DELTA", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --16
--[[15]] { Name = "Wail", 	String = "SIREN_ALPHA", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --15

--[[17]]  { Name = "Yelp", 	        String = "SIREN_CHARLIE", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --18
--[[21]]  { Name = "RUMBLER - YELP", 	        String = "SIREN_ECHO", 	        Ref = "DLC_WMSIRENS_SOUNDSET" }, --19
--[[20]]  { Name = "RUMBLER - SIREN", 	        String = "SIREN_GOLF", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --20


}

--ASSIGN SIRENS TO VEHICLES
SIREN_ASSIGNMENTS = {
	--['<gameName>'] = {tones},
	['DEFAULT'] = { 1, 2, 3, 4 },
	['FIRETRUK'] = { 12, 13, 14, 11 },
	['AMBULAN'] = { 1, 2, 3, 4, 11 },
	['LGUARD'] = { 1, 2, 3, 4, 11 },
['F150'] = {1, 15, 16, 17, 18, 19, 20 },
	['code3bmw'] = {1, 15, 16, 17, 18, 19, 20 },
	['code3harley'] = {1, 15, 16, 17, 18, 19, 20 },
	['code3boat'] = {1, 15, 16, 17, 18, 19, 20 },
	['code3camero'] = {1, 15, 16, 17, 18, 19, 20 },
	['code3mustang'] = {1, 15, 16, 17, 18, 19, 20 },
	['code3cap'] = {1, 15, 16, 17, 18, 19, 20 },
	['code3cvpi'] = {1, 15, 16, 17, 18, 19, 20 },
	['code3durango'] = {1, 15, 16, 17, 18, 19, 20 },
['code3f150'] = {1, 15, 16, 17, 18, 19 },
  ['code3f250'] = {1, 15, 16, 17, 18, 19, 20 },
	  ['code3fpis'] = {1, 15, 16, 17, 18, 19, 20 },
		 ['code3gator'] = {1, 15, 16, 17, 18, 19, 20 },
		 ['code3mustang'] = {1, 15, 16, 17, 18, 19, 20 },
		 	 ['code3ram'] = {1, 15, 16, 17, 18, 19, 20 },
			 	 ['code3silverado'] = {1, 15, 16, 17, 18, 19, 20 },
				 	 ['code310charg'] = {1, 15, 16, 17, 18, 19, 20 },
					  ['code314charg'] = {1, 15, 16, 17, 18, 19, 20 },
						['code318charg'] = {1, 15, 16, 17, 18, 19, 20 },
						['code314tahoe'] = {1, 15, 16, 17, 18, 19, 20 },
						['code316fpiu'] = {1, 15, 16, 17, 18, 19, 20 },
						['code316impala'] = {1, 15, 16, 17, 18, 19, 20 },
						['code318chargk9'] = {1, 15, 16, 17, 18, 19, 20 },
						['code318tahoek9'] = {1, 15, 16, 17, 18, 19, 20 },
						['code319silv'] = {1, 15, 16, 17, 18, 19, 20 },
						['code320exp'] = {1, 15, 16, 17, 18, 19, 20 },

						['14Chgr'] = {1, 15, 16, 17, 18, 19, 20 },
						['16Exp'] = {1, 15, 16, 17, 18, 19, 20 },
						['18Chgr'] = {1, 15, 16, 17, 18, 19, 20 },
						['19Hoe'] = {1, 15, 16, 17, 18, 19, 20 },
						['Cap'] = {1, 15, 16, 17, 18, 19, 20 },
						['Tau'] = {1, 15, 16, 17, 18, 19, 20 },
						['Vic'] = {1, 15, 16, 17, 18, 19, 20 },
		
	--	 ['code3'] = {1, 0, 0, 0, 0}

}

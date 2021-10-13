Config = {}
Config.ShowUnlockedText = false
Config.CheckVersion = true
Config.CheckVersionDelay = 60 -- Minutes


Config.DoorList = {
------------------------------------------
--	MISSION ROW POLICE DEPARTMENT		--
------------------------------------------
	-- gabz_mrpd	FRONT DOORS
	{
		authorizedJobs = { ['police']=0, ['offpolice']=0 },
		locked = false,
		maxDistance = 2.0,
		doors = {
			{objHash = -1547307588, objHeading = 90.0, objCoords = vector3(434.7444, -983.0781, 30.8153)},
			{objHash = -1547307588, objHeading = 270.0, objCoords = vector3(434.7444, -980.7556, 30.8153)}
		},
		lockpick = true,

	},

	-- gabz_mrpd	NORTH DOORS
	{
		authorizedJobs = { ['police']=0, ['offpolice']=0 },
		locked = true,
		autoLock = 10000,
		maxDistance = 2.0,
		doors = {
			{objHash = -1547307588, objHeading = 180.0, objCoords = vector3(458.2087, -972.2543, 30.8153)},
			{objHash = -1547307588, objHeading = 0.0, objCoords = vector3(455.8862, -972.2543, 30.8153)}
		},

	},

	-- gabz_mrpd	SOUTH DOORS
	{
		authorizedJobs = { ['police']=0, ['offpolice']=0 },
		locked = true,
		autoLock = 10000,
		maxDistance = 2.0,
		doors = {
			{objHash = -1547307588, objHeading = 0.0, objCoords = vector3(440.7392, -998.7462, 30.8153)},
			{objHash = -1547307588, objHeading = 180.0, objCoords = vector3(443.0618, -998.7462, 30.8153)}
		},

	},

	-- gabz_mrpd	LOBBY LEFT


	{
		authorizedJobs = {['police']=0},
		objHash = -1406685646,
		objHeading = 0.0,
		objCoords = vector3(441.13, -977.93, 30.82319),
		locked = true,
		maxDistance = 2.0,
		fixText = true,
		autoLock = 10000,

	},

	-- gabz_mrpd	LOBBY RIGHT
	{
		objHash = -96679321,
		objHeading = 180.0,
		objCoords = vector3(440.5201, -986.2335, 30.82319),
		authorizedJobs = { ['police']=0, ['offpolice']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
	},

	-- gabz_mrpd	GARAGE ENTRANCE 1
	{
		objHash = 1830360419,
		objHeading = 269.78,
		objCoords = vector3(464.1591, -974.6656, 26.3707),
		authorizedJobs = { ['police']=0, ['offpolice']=0 },
		locked = true,
		maxDistance = 2.0,
		fixText = true,
		autoLock = 10000,
	},

	-- gabz_mrpd	GARAGE ENTRANCE 2
	{
		objHash = 1830360419,
		objHeading = 89.87,
		objCoords = vector3(464.1566, -997.5093, 26.3707),
		authorizedJobs = { ['police']=0, ['offpolice']=0 },
		locked = true,
		maxDistance = 2.0,
		fixText = true,
		autoLock = 10000,
	},

	-- gabz_mrpd	GARAGE ROLLER DOOR 1
	{
		objHash = 2130672747,
		objHeading = 0.0,
		objCoords = vector3(431.4119, -10000.772, 26.69661),
		authorizedJobs = { ['police']=0, ['offpolice']=0 },
		locked = true,
		maxDistance = 6,
		garage = true,
		slides = true,
		audioRemote = true,
		autoLock = 10000,
	},

	-- gabz_mrpd	GARAGE ROLLER DOOR 2
	{
		objHash = 2130672747,
		objHeading = 0.0,
		objCoords = vector3(452.3005, -10000.772, 26.69661),
		authorizedJobs = { ['police']=0, ['offpolice']=0 },
		locked = true,
		maxDistance = 6,
		garage = true,
		slides = true,
		audioRemote = true,
		autoLock = 10000,
	},

	-- gabz_mrpd	BACK GATE
	{
		objHash = -1603817716,
		objHeading = 90.0,
		objCoords = vector3(488.8948, -1017.212, 27.14935),
		authorizedJobs = { ['police']=0, ['offpolice']=0 },
		locked = true,
		maxDistance = 6,
		slides = true,
		audioRemote = true,
		autoLock = 10000,
	},

	-- gabz_mrpd	BACK DOORS
	{
		authorizedJobs = { ['police']=0, ['offpolice']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
		doors = {
			{objHash = -692649124, objHeading = 0.0, objCoords = vector3(467.3686, -1014.406, 26.48382)},
			{objHash = -692649124, objHeading = 180.0, objCoords = vector3(469.7743, -1014.406, 26.48382)}
		},

	},

	-- gabz_mrpd	MUGSHOT
	{
		objHash = -1406685646,
		objHeading = 180.0,
		objCoords = vector3(475.9539, -1010.819, 26.40639),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
	},

	-- gabz_mrpd	CELL ENTRANCE 1
	{
		objHash = -53345114,
		objHeading = 270.0,
		objCoords = vector3(476.6157, -1008.875, 26.48005),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.35},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	CELL ENTRANCE 2
	{
		objHash = -53345114,
		objHeading = 180.0,
		objCoords = vector3(481.0084, -1004.118, 26.48005),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.35},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	CELL 1
	{
		objHash = -53345114,
		objHeading = 0.0,
		objCoords = vector3(477.9126, -1012.189, 26.48005),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.35},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	CELL 2
	{
		objHash = -53345114,
		objHeading = 0.0,
		objCoords = vector3(480.9128, -1012.189, 26.48005),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.35},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	CELL 3
	{
		objHash = -53345114,
		objHeading = 0.0,
		objCoords = vector3(483.9127, -1012.189, 26.48005),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.35},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	CELL 4
	{
		objHash = -53345114,
		objHeading = 0.0,
		objCoords = vector3(486.9131, -1012.189, 26.48005),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.35},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	CELL 5
	{
		objHash = -53345114,
		objHeading = 180.0,
		objCoords = vector3(484.1764, -1007.734, 26.48005),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.35},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	LINEUP
	{
		objHash = -288803980,
		objHeading = 90.0,
		objCoords = vector3(479.06, -1003.173, 26.4065),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
		fixText = true
	},

	-- gabz_mrpd	OBSERVATION I
	{
		objHash = -1406685646,
		objHeading = 270.0,
		objCoords = vector3(482.6694, -983.9868, 26.40548),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
		fixText = true
	},

	-- gabz_mrpd	INTERROGATION I
	{
		objHash = -1406685646,
		objHeading = 270.0,
		objCoords = vector3(482.6701, -987.5792, 26.40548),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
		fixText = true
	},

	-- gabz_mrpd	OBSERVATION II
	{
		objHash = -1406685646,
		objHeading = 270.0,
		objCoords = vector3(482.6699, -992.2991, 26.40548),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		autoLock = 10000,
		fixText = true
	},

	-- gabz_mrpd	INTERROGATION II
	{
		objHash = -1406685646,
		autoLock = 10000,
		objHeading = 270.0,
		objCoords = vector3(482.6703, -995.7285, 26.40548),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		fixText = true
	},

	-- gabz_mrpd	EVIDENCE
	{
		objHash = -692649124,
		autoLock = 10000,
		objHeading = 134.7,
		objCoords = vector3(475.8323, -990.4839, 26.40548),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		fixText = true
	},

	-- gabz_mrpd	ARMOURY 1
	{
		objHash = -692649124,
		autoLock = 10000,
		objHeading = 90.0,
		objCoords = vector3(479.7507, -999.629, 30.78927),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		fixText = true
	},

	-- gabz_mrpd	ARMOURY 2
	{
		objHash = -692649124,
		autoLock = 10000,
		objHeading = 181.28,
		objCoords = vector3(487.4378, -10000.189, 30.78697),
		authorizedJobs = { ['police']=0 },
		locked = true,
		maxDistance = 2.0,
		fixText = true
	},

	-- gabz_mrpd	SHOOTING RANGE
	{
		authorizedJobs = { ['police']=0 },
		autoLock = 10000,
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -692649124, objHeading = 0.0, objCoords = vector3(485.6133, -1002.902, 30.78697)},
			{objHash = -692649124, objHeading = 180.0, objCoords = vector3(488.0184, -1002.902, 30.78697)}
		},

	},

	-- gabz_mrpd	ROOFTOP
	{
		objCoords = vector3(464.3086, -984.5284, 43.77124),
		authorizedJobs = { ['police']=0 },
		objHeading = 90.000465393066,
		slides = false,
		lockpick = false,
		audioRemote = false,
		maxDistance = 2.0,
		garage = false,
		objHash = -692649124,
		locked = true,
		fixText = true,
		autoLock = 10000,
	}

}


-- Prison
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	maxDistance = 6.0,
	objHash = 741314661,
	lockpick = false,
	objHeading = 89.949600219727,
	locked = true,
	fixText = false,
	audioRemote = false,
	objCoords = vector3(1818.543, 2604.813, 44.611),
	slides = true,
	garage = false,
	autoLock = 10000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- Prison
table.insert(Config.DoorList, {
	garage = false,
	slides = true,
	objHash = 741314661,
	fixText = false,
	audioRemote = false,
	authorizedJobs = { ['police']=0 },
	lockpick = false,
	objCoords = vector3(1818.543, 2604.813, 44.611),
	maxDistance = 6.0,
	objHeading = 90.0,
	locked = true,
	autoLock = 10000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})



-- ambuext1
table.insert(Config.DoorList, {
	objCoords = vector3(337.2777, -564.432, 29.77529),
	objHash = -820650556,
	locked = true,
	maxDistance = 2.0,
	garage = false,
	objHeading = 160.00607299805,
	fixText = false,
	slides = false,
	authorizedJobs = { ['ambulance']=0 },
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})


-- hostoexte
table.insert(Config.DoorList, {
	objHash = -820650556,
	lockpick = false,
	maxDistance = 6.0,
	garage = true,
	authorizedJobs = { ['ambulance']=0 },
	locked = true,
	slides = 6.0,
	audioRemote = false,
	fixText = false,
	objCoords = vector3(337.2777, -564.432, 29.77529),
	objHeading = 160.00607299805,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- ambuexte3
table.insert(Config.DoorList, {
	objHash = -820650556,
	lockpick = false,
	maxDistance = 6.0,
	garage = true,
	authorizedJobs = { ['ambulance']=0 },
	locked = true,
	slides = 6.0,
	audioRemote = false,
	fixText = false,
	objCoords = vector3(330.1349, -561.8331, 29.77529),
	objHeading = 160.00605773926,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- closethosto
table.insert(Config.DoorList, {
	fixText = false,
	slides = false,
	authorizedJobs = { ['ambulance']=0 },
	locked = true,
	maxDistance = 2.0,
	audioRemote = false,
	garage = false,
	lockpick = false,
	objHash = 854291622,
	objCoords = vector3(303.9596, -572.5579, 43.43391),
	objHeading = 70.01732635498,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- AileC
table.insert(Config.DoorList, {
	slides = false,
	doors = {
		{objHash = -1700911976, objHeading = 249.98275756836, objCoords = vector3(348.4333, -588.745, 43.43391)},
		{objHash = -434783486, objHeading = 249.98275756836, objCoords = vector3(349.3138, -586.326, 43.43391)}
 },
	audioRemote = false,
	authorizedJobs = { ['ambulance']=0, ['police']=0 },
	lockpick = false,
	maxDistance = 2.5,
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- pharmacie
table.insert(Config.DoorList, {
	fixText = false,
	slides = false,
	authorizedJobs = { ['ambulance']=0 },
	locked = true,
	maxDistance = 2.0,
	audioRemote = false,
	garage = false,
	lockpick = false,
	objHash = 854291622,
	objCoords = vector3(346.8855, -593.6, 43.43391),
	objHeading = 70.01732635498,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- doubleascmain
table.insert(Config.DoorList, {
	lockpick = false,
	audioRemote = false,
	locked = true,
	doors = {
		{objHash = -434783486, objHeading = 249.98275756836, objCoords = vector3(328.1364, -592.7761, 43.43391)},
		{objHash = -1700911976, objHeading = 249.98275756836, objCoords = vector3(327.256, -595.195, 43.43391)}
 },
	slides = false,
	authorizedJobs = { ['ambulance']=0, ['police']=0 },
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- garageentréehosto
table.insert(Config.DoorList, {
	lockpick = false,
	audioRemote = false,
	locked = true,
	doors = {
		{objHash = -434783486, objHeading = 70.006050109863, objCoords = vector3(338.4467, -590.053, 28.94709)},
		{objHash = -1700911976, objHeading = 70.006050109863, objCoords = vector3(339.3266, -587.6345, 28.94709)}
 },
	slides = false,
	authorizedJobs = { ['ambulance']=0 },
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- mainasc0
table.insert(Config.DoorList, {
	lockpick = false,
	audioRemote = false,
	locked = true,
	doors = {
		{objHash = -434783486, objHeading = 70.006057739258, objCoords = vector3(345.7898, -592.7227, 28.94709)},
		{objHash = -1700911976, objHeading = 70.006057739258, objCoords = vector3(346.669, -590.3027, 28.94709)}
 },
	slides = false,
	authorizedJobs = { ['ambulance']=0, ['police']=0 },
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- mainentree01
table.insert(Config.DoorList, {
	lockpick = false,
	audioRemote = false,
	locked = true,
	doors = {
		{objHash = -1700911976, objHeading = 70.006057739258, objCoords = vector3(349.8607, -581.5305, 28.94709)},
		{objHash = -434783486, objHeading = 70.006057739258, objCoords = vector3(348.9818, -583.9498, 28.94709)}
 },
	slides = false,
	authorizedJobs = { ['ambulance']=0, ['police']=0 },
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- mainentree001
table.insert(Config.DoorList, {
	lockpick = false,
	fixText = false,
	objHash = 854291622,
	audioRemote = false,
	maxDistance = 2.0,
	objHeading = 250.00610351563,
	locked = true,
	garage = false,
	slides = false,
	authorizedJobs = { ['ambulance']=0 },
	objCoords = vector3(348.5467, -585.1584, 28.94709),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- recephosto
table.insert(Config.DoorList, {
	lockpick = false,
	fixText = false,
	objHash = 854291622,
	audioRemote = false,
	maxDistance = 2.0,
	objHeading = 249.98275756836,
	locked = true,
	garage = false,
	slides = false,
	authorizedJobs = { ['ambulance']=0 },
	objCoords = vector3(313.4801, -595.4583, 43.43391),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- garagedoublextehosto
table.insert(Config.DoorList, {
	slides = false,
	doors = {
		{objHash = -1421582160, objHeading = 25.005989074707, objCoords = vector3(321.0148, -559.9127, 28.94724)},
		{objHash = 1248599813, objHeading = 205.0061340332, objCoords = vector3(318.6656, -561.0086, 28.94724)}
 },
	maxDistance = 2.5,
	lockpick = false,
	audioRemote = false,
	locked = true,
	authorizedJobs = { ['ambulance']=0, ['police']=0 },
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- extremain01
table.insert(Config.DoorList, {
	slides = false,
	maxDistance = 2.5,
	doors = {
		{objHash = -434783486, objHeading = 340.00003051758, objCoords = vector3(302.8031, -581.4246, 43.43391)},
		{objHash = -1700911976, objHeading = 340.00003051758, objCoords = vector3(305.2219, -582.3056, 43.43391)}
 },
	lockpick = false,
	audioRemote = false,
	authorizedJobs = { ['ambulance']=0, ['police']=0 },
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- mainexte01
table.insert(Config.DoorList, {
	slides = false,
	maxDistance = 2.5,
	doors = {
		{objHash = -1700911976, objHeading = 340.00003051758, objCoords = vector3(326.655, -590.1066, 43.43391)},
		{objHash = -434783486, objHeading = 340.00003051758, objCoords = vector3(324.236, -589.2262, 43.43391)}
 },
	lockpick = false,
	audioRemote = false,
	authorizedJobs = { ['ambulance']=0, ['police']=0 },
	locked = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

--
table.insert(Config.DoorList, {
	garage = true,
	maxDistance = 6.0,
	objHeading = 43.01594543457,
	lockpick = false,
	audioRemote = false,
	slides = 6.0,
	objHash = -822900180,
	items = { 'blacklist' },
	fixText = false,
	locked = true,
	objCoords = vector3(963.1593, -117.3219, 75.24942),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

--
table.insert(Config.DoorList, {
	garage = true,
	maxDistance = 6.0,
	objHeading = 43.01594543457,
	lockpick = false,
	audioRemote = false,
	slides = 6.0,
	objHash = -822900180,
	items = { 'blacklist' },
	fixText = false,
	locked = true,
	objCoords = vector3(968.7536, -112.1022, 75.24942),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

--
table.insert(Config.DoorList, {
	garage = false,
	maxDistance = 2.0,
	objHeading = 43.01594543457,
	lockpick = false,
	audioRemote = false,
	slides = false,
	objHash = 1335311341,
	items = { 'blacklist' },
	fixText = false,
	locked = true,
	objCoords = vector3(959.3823, -120.4512, 75.16158),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

--
table.insert(Config.DoorList, {
	garage = false,
	maxDistance = 2.0,
	objHeading = 42.65185546875,
	lockpick = false,
	audioRemote = false,
	slides = false,
	objHash = 190770132,
	items = { 'blacklist' },
	fixText = false,
	locked = true,
	objCoords = vector3(981.1505, -103.2552, 74.99358),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

--
table.insert(Config.DoorList, {
	garage = true,
	maxDistance = 6.0,
	objHeading = 239.42889404297,
	lockpick = false,
	audioRemote = false,
	slides = 6.0,
	objHash = -197537718,
	items = { 'blacklist' },
	fixText = false,
	locked = true,
	objCoords = vector3(982.3875, -125.371, 74.99313),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

--
table.insert(Config.DoorList, {
	items = { 'blacklist' },
	maxDistance = 6.0,
	locked = true,
	objHash = -930593859,
	slides = true,
	objCoords = vector3(956.4541, -137.8409, 73.57489),
	fixText = false,
	lockpick = false,
	audioRemote = false,
	objHeading = 148.19989013672,
	garage = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- cappolice
table.insert(Config.DoorList, {
	garage = false,
	objCoords = vector3(458.6543, -990.6498, 30.82319),
	fixText = false,
	locked = true,
	maxDistance = 2.0,
	lockpick = false,
	objHash = -96679321,
	authorizedJobs = { ['police']=8 },
	audioRemote = false,
	objHeading = 270.00003051758,
	slides = false,
	-- oldMethod = true,
	autoLock = 10000,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})


-- mechanic









-- mechanic
table.insert(Config.DoorList, {
	lockpick = false,
	objCoords = vector3(-356.0905, -134.7714, 40.01295),
	locked = true,
	objHash = -550347177,
	garage = true,
	authorizedJobs = { ['mechanic']=0 },
	audioRemote = false,
	slides = 6.0,
	fixText = false,
	objHeading = 249.99995422363,
	maxDistance = 6.0,
	autoLock = 10000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- ambuchef
table.insert(Config.DoorList, {
	audioRemote = false,
	objHash = 854291622,
	locked = true,
	garage = false,
	slides = false,
	lockpick = false,
	maxDistance = 2.0,
	fixText = false,
	authorizedJobs = { ['ambulance']=0 },
	objCoords = vector3(336.8665, -592.5788, 43.43391),
	objHeading = 340.00003051758,
	autoLock = 10000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- policegarage
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objHash = -190780785,
	objCoords = vector3(459.5504, -1019.699, 29.08874),
	garage = false,
	objHeading = 270.00003051758,
	fixText = false,
	authorizedJobs = { ['police']=0 },
	autoLock = 10000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- policegarage2
table.insert(Config.DoorList, {
	locked = true,
	slides = 6.0,
	audioRemote = false,
	lockpick = false,
	maxDistance = 6.0,
	objHash = -190780785,
	objCoords = vector3(459.5504, -1014.646, 29.10957),
	garage = true,
	objHeading = 270.00003051758,
	fixText = false,
	authorizedJobs = { ['police']=0 },
	autoLock = 10000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- police
table.insert(Config.DoorList, {
	locked = true,
	slides = 6.0,
	audioRemote = false,
	lockpick = false,
	maxDistance = 6.0,
	objHash = 741314661,
	objCoords = vector3(1818.543, 2604.813, 44.611),
	garage = true,
	objHeading = 90.0,
	fixText = false,
	authorizedJobs = { ['police']=0 },
	autoLock = 10000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- police
table.insert(Config.DoorList, {
	locked = true,
	slides = 6.0,
	audioRemote = false,
	lockpick = false,
	maxDistance = 6.0,
	objHash = 741314661,
	objCoords = vector3(1844.998, 2604.813, 44.63978),
	garage = true,
	objHeading = 90.0,
	fixText = false,
	authorizedJobs = { ['police']=0 },
	autoLock = 100000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 100000
})

-- police
table.insert(Config.DoorList, {
	objHash = 741314661,
	audioRemote = false,
	garage = false,
	slides = false,
	authorizedJobs = { ['police']=0 },
	objHeading = 179.99998474121,
	lockpick = false,
	fixText = false,
	locked = true,
	objCoords = vector3(1799.608, 2616.975, 44.60325),
	maxDistance = 2.0,
	autoLock = 100000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 100000
})

-- police
table.insert(Config.DoorList, {
	objHash = 741314661,
	audioRemote = false,
	garage = false,
	slides = false,
	authorizedJobs = { ['police']=0 },
	objHeading = 289.16897583008,
	lockpick = false,
	fixText = false,
	locked = true,
	objCoords = vector3(1830.134, 2703.499, 44.4467),
	maxDistance = 2.0,
	autoLock = 100000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 100000
})

-- police
table.insert(Config.DoorList, {
	objHash = 741314661,
	audioRemote = false,
	garage = false,
	slides = false,
	authorizedJobs = { ['police']=0 },
	objHeading = 110.00004577637,
	lockpick = false,
	fixText = false,
	locked = true,
	objCoords = vector3(1835.285, 2689.104, 44.4467),
	maxDistance = 2.0,
	autoLock = 100000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 100000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	lockpick = false,
	slides = false,
	doors = {
		{objHash = 458025182, objHeading = 1.1952830391238e-05, objCoords = vector3(1691.348, 2468.744, 45.88342)},
		{objHash = 458025182, objHeading = 180.00001525879, objCoords = vector3(1693.922, 2468.744, 45.88342)}
 },
	authorizedJobs = { ['police']=0 },
	audioRemote = false,
	maxDistance = 2.5,
	autoLock = 100000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 100000
})

-- prison
table.insert(Config.DoorList, {
	objCoords = vector3(1799.608, 2616.975, 44.60325),
	locked = true,
	authorizedJobs = { ['police']=0 },
	audioRemote = false,
	fixText = false,
	lockpick = false,
	objHash = 741314661,
	objHeading = 179.99998474121,
	slides = 6.0,
	garage = true,
	maxDistance = 6.0,
	autoLock = 100000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 100000
})

-- test
table.insert(Config.DoorList, {
	objCoords = vector3(1905.117, 2604.783, 45.78228),
	locked = true,
	authorizedJobs = { ['police']=0 },
	audioRemote = false,
	fixText = false,
	lockpick = false,
	objHash = -1184516519,
	objHeading = 270.0,
	slides = 6.0,
	garage = true,
	maxDistance = 6.0,
	autoLock = 100000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 100000
})

-- test
table.insert(Config.DoorList, {
	objCoords = vector3(1905.117, 2604.783, 45.78228),
	locked = true,
	authorizedJobs = { ['police']=0 },
	audioRemote = false,
	fixText = false,
	lockpick = false,
	objHash = -1184516519,
	objHeading = 270.0,
	slides = true,
	garage = false,
	maxDistance = 6.0,
	autoLock = 100000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 100000
})





-- bennys
table.insert(Config.DoorList, {
	objHeading = 359.98760986328,
	objCoords = vector3(-205.6828, -1310.683, 30.29572),
	slides = 6.0,
	lockpick = false,
	audioRemote = false,
	fixText = false,
	authorizedJobs = { ['bennys']=0 },
	maxDistance = 6.0,
	objHash = -427498890,
	garage = true,
	locked = true,
	autoLock = 100000,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 100000
})

-- Eglise
table.insert(Config.DoorList, {
	lockpick = false,
	doors = {
		{objHash = -185772748, objHeading = 234.00003051758, objCoords = vector3(-1680.951, -289.6421, 52.51565)},
		{objHash = -185772748, objHeading = 54.0, objCoords = vector3(-1682.468, -291.6299, 52.51565)}
 },
	audioRemote = false,
	slides = false,
	maxDistance = 2.5,
	authorizedJobs = { ['bishops']=0 },
	locked = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 100000
})

-- mechanic
table.insert(Config.DoorList, {
	slides = false,
	locked = true,
	fixText = false,
	garage = false,
	objHeading = 31.999956130981,
	authorizedJobs = { ['mechanic']=0 },
	objHash = -634936098,
	objCoords = vector3(-1434.155, -448.5861, 36.05923),
	maxDistance = 2.0,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 100000
})

-- mechanic
table.insert(Config.DoorList, {
	slides = 6.0,
	locked = true,
	fixText = false,
	garage = true,
	objHeading = 32.000011444092,
	authorizedJobs = { ['mechanic']=0 },
	objHash = 1715394473,
	objCoords = vector3(-1427.326, -444.1516, 34.90352),
	maxDistance = 6.0,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 100000
})

-- mechanic
table.insert(Config.DoorList, {
	slides = 6.0,
	locked = true,
	fixText = false,
	garage = true,
	objHeading = 31.999959945679,
	authorizedJobs = { ['mechanic']=0 },
	objHash = 1715394473,
	objCoords = vector3(-1421.118, -440.2721, 34.90352),
	maxDistance = 6.0,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 100000
})

-- mechanic
table.insert(Config.DoorList, {
	slides = 6.0,
	locked = true,
	fixText = false,
	garage = true,
	objHeading = 31.999959945679,
	authorizedJobs = { ['mechanic']=0 },
	objHash = 1715394473,
	objCoords = vector3(-1414.869, -436.3675, 34.90352),
	maxDistance = 6.0,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- VillaReacher
table.insert(Config.DoorList, {
	items = { 'clereacher' },
	locked = true,
	fixText = false,
	lockpick = false,
	objHeading = 185.57386779785,
	audioRemote = false,
	slides = false,
	garage = false,
	objCoords = vector3(-2588.85, 1910.29, 167.6243),
	maxDistance = 2.0,
	objHash = 308207762,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- VillaReacher
table.insert(Config.DoorList, {
	items = { 'clereacher' },
	locked = true,
	fixText = false,
	lockpick = false,
	objHeading = 5.9738731384277,
	audioRemote = false,
	slides = false,
	garage = false,
	objCoords = vector3(-2599.442, 1917.331, 167.4809),
	maxDistance = 2.0,
	objHash = 224975209,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- VillaReacher
table.insert(Config.DoorList, {
	items = { 'clereacher' },
	locked = true,
	fixText = false,
	lockpick = false,
	objHeading = 185.97386169434,
	audioRemote = false,
	slides = 6.0,
	garage = true,
	objCoords = vector3(-2597.113, 1926.659, 167.5685),
	maxDistance = 6.0,
	objHash = -2013148850,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- VillaFalcon
table.insert(Config.DoorList, {
	items = { 'clefalcon' },
	locked = true,
	fixText = false,
	lockpick = false,
	objHeading = 134.99998474121,
	audioRemote = false,
	slides = 6.0,
	garage = true,
	objCoords = vector3(-139.2957, 899.7606, 235.7069),
	maxDistance = 6.0,
	objHash = -523969184,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- VillaFalcon
table.insert(Config.DoorList, {
	items = { 'clefalcon' },
	locked = true,
	fixText = false,
	lockpick = false,
	objHeading = 44.999973297119,
	audioRemote = false,
	slides = false,
	garage = false,
	objCoords = vector3(-150.8611, 910.7306, 235.8687),
	maxDistance = 2.0,
	objHash = -818130264,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- Falcon
table.insert(Config.DoorList, {
	lockpick = false,
	items = { 'clefalcon' },
	locked = true,
	maxDistance = 2.5,
	doors = {
		{objHash = -1512455213, objHeading = 44.999973297119, objCoords = vector3(-168.2459, 914.7102, 236.0474)},
		{objHash = -1512455213, objHeading = 225.0, objCoords = vector3(-166.4308, 916.5253, 236.0474)}
 },
	slides = false,
	audioRemote = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- Falcon
table.insert(Config.DoorList, {
	locked = true,
	lockpick = false,
	audioRemote = false,
	items = { 'clefalcon' },
	slides = false,
	maxDistance = 2.5,
	doors = {
		{objHash = -349730013, objHeading = 98.366653442383, objCoords = vector3(-123.9024, 898.0499, 235.9783)},
		{objHash = -1918480350, objHeading = 98.366653442383, objCoords = vector3(-124.7022, 903.4881, 235.9783)}
 },
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- reacher
table.insert(Config.DoorList, {
	audioRemote = false,
	objHeading = 185.57386779785,
	slides = false,
	maxDistance = 2.0,
	objCoords = vector3(-2588.85, 1910.29, 167.6243),
	locked = true,
	garage = false,
	items = { 'clereacher' },
	lockpick = false,
	objHash = 308207762,
	fixText = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- Reacher
table.insert(Config.DoorList, {
	audioRemote = false,
	objHeading = 185.97386169434,
	slides = 6.0,
	maxDistance = 6.0,
	objCoords = vector3(-2597.113, 1926.659, 167.5685),
	locked = true,
	garage = true,
	items = { 'clereacher' },
	lockpick = false,
	objHash = -2013148850,
	fixText = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- reacher
table.insert(Config.DoorList, {
	fixText = false,
	slides = 6.0,
	locked = true,
	objHash = -2013148850,
	lockpick = false,
	audioRemote = false,
	objCoords = vector3(-2597.113, 1926.659, 167.5685),
	garage = true,
	objHeading = 185.97386169434,
	maxDistance = 6.0,
	items = { 'clereacher' },
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- karting
table.insert(Config.DoorList, {
	objHeading = 109.58599853516,
	maxDistance = 6.0,
	authorizedJobs = { ['karting']=0 },
	fixText = false,
	lockpick = false,
	locked = true,
	garage = false,
	objCoords = vector3(-160.5756, -2142.185, 16.40423),
	objHash = 1909141499,
	audioRemote = false,
	slides = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- karting
table.insert(Config.DoorList, {
	objHeading = 289.77450561523,
	maxDistance = 6.0,
	authorizedJobs = { ['karting']=0 },
	fixText = false,
	lockpick = false,
	locked = true,
	garage = false,
	objCoords = vector3(-162.6399, -2143.796, 15.69064),
	objHash = 1411103374,
	audioRemote = false,
	slides = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- karting
table.insert(Config.DoorList, {
	objHeading = 289.77450561523,
	maxDistance = 6.0,
	authorizedJobs = { ['karting']=0 },
	fixText = false,
	lockpick = false,
	locked = true,
	garage = true,
	objCoords = vector3(-162.6399, -2143.796, 15.69064),
	objHash = 1411103374,
	audioRemote = false,
	slides = 6.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- FouriPOrte


-- Fourr
table.insert(Config.DoorList, {
	garage = true,
	objHash = 1286535678,
	objCoords = vector3(397.8851, -1607.386, 28.34166),
	maxDistance = 6.0,
	audioRemote = false,
	objHeading = 140.00001525879,
	fixText = false,
	lockpick = false,
	slides = 6.0,
	authorizedJobs = { ['sheriff']=0 },
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- 603
table.insert(Config.DoorList, {
	fixText = false,
	slides = 6.0,
	items = { 'clekoba' },
	objCoords = vector3(-719.8082, 501.241, 109.6751),
	maxDistance = 6.0,
	objHeading = 25.064321517944,
	garage = true,
	lockpick = false,
	audioRemote = false,
	locked = true,
	objHash = -1939670839,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- Koba
table.insert(Config.DoorList, {
	fixText = false,
	slides = 6.0,
	items = { 'clekoba' },
	objCoords = vector3(-716.4476, 502.8127, 109.6751),
	maxDistance = 6.0,
	objHeading = 25.064321517944,
	garage = true,
	lockpick = false,
	audioRemote = false,
	locked = true,
	objHash = -1939670839,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- koba
table.insert(Config.DoorList, {
	maxDistance = 6.0,
	lockpick = false,
	locked = true,
	doors = {
		{objHash = -533948079, objHeading = 204.97071838379, objCoords = vector3(-723.8158, 490.1025, 108.6384)},
		{objHash = -721607029, objHeading = 25.064323425293, objCoords = vector3(-721.8962, 491.0047, 108.6374)}
 },
	items = { 'clekoba' },
	audioRemote = false,
	slides = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- koba
table.insert(Config.DoorList, {
	maxDistance = 6.0,
	lockpick = false,
	locked = true,
	doors = {
		{objHash = -721607029, objHeading = 294.80523681641, objCoords = vector3(-740.75, 484.4879, 108.7304)},
		{objHash = -533948079, objHeading = 115.06461334229, objCoords = vector3(-741.6517, 486.4066, 108.7294)}
 },
	items = { 'clekoba' },
	audioRemote = false,
	slides = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- koba
table.insert(Config.DoorList, {
	fixText = false,
	slides = false,
	items = { 'clekoba' },
	objCoords = vector3(-732.8707, 500.6649, 109.905),
	maxDistance = 2.0,
	objHeading = 205.06440734863,
	garage = false,
	lockpick = false,
	audioRemote = false,
	locked = true,
	objHash = 1051049560,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- koba
table.insert(Config.DoorList, {
	fixText = false,
	slides = false,
	items = { 'clekoba' },
	objCoords = vector3(-724.1792, 503.2117, 109.905),
	maxDistance = 2.0,
	objHeading = 115.06418609619,
	garage = false,
	lockpick = false,
	audioRemote = false,
	locked = true,
	objHash = 1051049560,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- rapace
table.insert(Config.DoorList, {
	fixText = false,
	slides = false,
	items = { 'clerapace' },
	objCoords = vector3(-2798.666, 1431.542, 101.0826),
	maxDistance = 2.0,
	objHeading = 145.39640808105,
	garage = false,
	lockpick = false,
	audioRemote = false,
	locked = true,
	objHash = 224975209,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- rapace
table.insert(Config.DoorList, {
	fixText = false,
	slides = false,
	items = { 'clerapace' },
	objCoords = vector3(-2805.211, 1433.881, 97.47396),
	maxDistance = 2.0,
	objHeading = 325.19644165039,
	garage = false,
	lockpick = false,
	audioRemote = false,
	locked = true,
	objHash = 1927676967,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- Gibbs
table.insert(Config.DoorList, {
	objCoords = vector3(945.9343, -985.5709, 41.1689),
	lockpick = false,
	garage = true,
	slides = 6.0,
	authorizedJobs = { ['import']=0 },
	fixText = false,
	objHeading = 3.6506202220917,
	audioRemote = false,
	maxDistance = 6.0,
	objHash = -983965772,
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})

-- gibbs
table.insert(Config.DoorList, {
	objCoords = vector3(948.5289, -965.3519, 39.64355),
	lockpick = false,
	garage = false,
	slides = false,
	authorizedJobs = { ['import']=0 },
	fixText = false,
	objHeading = 93.65064239502,
	audioRemote = false,
	maxDistance = 2.0,
	objHash = 1289778077,
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})


-- import
table.insert(Config.DoorList, {
	slides = 6.0,
	fixText = false,
	garage = true,
	authorizedJobs = { ['import']=0 },
	objHash = -305065920,
	maxDistance = 6.0,
	lockpick = false,
	audioRemote = false,
	objCoords = vector3(946.23, -984.6905, 41.51043),
	objHeading = 3.7015635967255,
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 10000
})


-- import
table.insert(Config.DoorList, {
	objHash = -1458889440,
	slides = false,
	locked = true,
	objHeading = 0.0,
	lockpick = false,
	audioRemote = false,
	authorizedJobs = { ['import']=0 },
	fixText = false,
	objCoords = vector3(548.4612, -201.9603, 55.49275),
	garage = true,
	maxDistance = 2.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})


-- import
table.insert(Config.DoorList, {
	garage = false,
	locked = true,
	objHash = 1497823487,
	lockpick = false,
	audioRemote = false,
	fixText = false,
	authorizedJobs = { ['import']=0 },
	maxDistance = 2.0,
	slides = false,
	objHeading = 315.00003051758,
	objCoords = vector3(545.2166, -194.251, 54.64055),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- import
table.insert(Config.DoorList, {
	garage = false,
	locked = true,
	objHash = -1309543596,
	lockpick = false,
	audioRemote = false,
	fixText = false,
	authorizedJobs = { ['import']=0 },
	maxDistance = 2.0,
	slides = false,
	objHeading = 270.00003051758,
	objCoords = vector3(540.942, -195.9651, 54.88403),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- import
table.insert(Config.DoorList, {
	garage = false,
	locked = true,
	objHash = -733661186,
	lockpick = false,
	audioRemote = false,
	fixText = false,
	authorizedJobs = { ['import']=0 },
	maxDistance = 2.0,
	slides = false,
	objHeading = 179.99998474121,
	objCoords = vector3(551.4139, -179.619, 54.64393),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- import


-- import
table.insert(Config.DoorList, {
	garage = true,
	locked = true,
	objHash = -1218332211,
	lockpick = false,
	audioRemote = false,
	fixText = false,
	authorizedJobs = { ['import']=0 },
	maxDistance = 6.0,
	slides = 6.0,
	objHeading = 360.0,
	objCoords = vector3(537.1796, -171.4599, 55.50363),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- import
table.insert(Config.DoorList, {
	garage = true,
	locked = true,
	objHash = -1458889440,
	lockpick = false,
	audioRemote = false,
	fixText = false,
	authorizedJobs = { ['import']=0 },
	maxDistance = 6.0,
	slides = 6.0,
	objHeading = 270.00003051758,
	objCoords = vector3(541.3351, -179.2411, 55.50628),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- import
table.insert(Config.DoorList, {
	garage = true,
	locked = true,
	objHash = -1218332211,
	lockpick = false,
	audioRemote = false,
	fixText = false,
	authorizedJobs = { ['import']=0 },
	maxDistance = 6.0,
	slides = 6.0,
	objHeading = 270.00003051758,
	objCoords = vector3(541.3297, -189.3748, 55.5144),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- import
table.insert(Config.DoorList, {
	garage = false,
	locked = true,
	objHash = -1309543596,
	lockpick = false,
	audioRemote = false,
	fixText = false,
	authorizedJobs = { ['import']=0 },
	maxDistance = 2.0,
	slides = false,
	objHeading = 89.999977111816,
	objCoords = vector3(552.0873, -193.4602, 54.88621),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})


-- import
table.insert(Config.DoorList, {
	lockpick = false,
	maxDistance = 2.0,
	authorizedJobs = { ['import']=0 },
	objHash = 141631573,
	locked = true,
	objHeading = 270.00003051758,
	objCoords = vector3(534.4017, -166.2986, 50.98633),
	slides = false,
	garage = false,
	audioRemote = false,
	fixText = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})


-- pearl+
table.insert(Config.DoorList, {
	objHash = 1870406214,
	authorizedJobs = { ['pearls']=0 },
	maxDistance = 2.0,
	objCoords = vector3(-1840.114, -1181.332, 14.74435),
	audioRemote = false,
	fixText = false,
	slides = false,
	locked = true,
	lockpick = false,
	garage = false,
	objHeading = 58.730335235596,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

--
table.insert(Config.DoorList, {
	objHash = -1285189121,
	authorizedJobs = { ['pearls']=0 },
	maxDistance = 2.0,
	objCoords = vector3(-1847.271, -1189.992, 14.47118),
	audioRemote = false,
	fixText = false,
	slides = false,
	locked = true,
	lockpick = false,
	garage = false,
	objHeading = 329.1047668457,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Garage RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 221022919,
	fixText = false,
	objHeading = 112.70540618896,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-561.4951, -117.6512, 33.77761),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Front_Service_Gauche_RPD
table.insert(Config.DoorList, {
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = 1549769529, objHeading = 202.78143310547, objCoords = vector3(-556.9109, -127.5117, 38.12629)},
		{objHash = 1549769529, objHeading = 22.781433105469, objCoords = vector3(-558.7602, -128.2884, 38.12629)}
 },
	maxDistance = 2.5,
	authorizedJobs = { ['police']=0 },
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Front_Service_Droite_RPD
table.insert(Config.DoorList, {
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = 1549769529, objHeading = 202.78143310547, objCoords = vector3(-566.0972, -131.3824, 38.12545)},
		{objHash = 1549769529, objHeading = 22.781433105469, objCoords = vector3(-567.9474, -132.1594, 38.12545)}
 },
	maxDistance = 2.5,
	authorizedJobs = { ['police']=0 },
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Service_RPD
table.insert(Config.DoorList, {
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = -1769315713, objHeading = 202.78143310547, objCoords = vector3(-541.9681, -131.5677, 39.06738)},
		{objHash = -1769315713, objHeading = 22.781433105469, objCoords = vector3(-543.8152, -132.3434, 39.06738)}
 },
	maxDistance = 2.5,
	authorizedJobs = { ['police']=0 },
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- ServiceSAS_RPD
table.insert(Config.DoorList, {
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = -2064001666, objHeading = 22.781433105469, objCoords = vector3(-547.1499, -124.9086, 38.91911)},
		{objHash = -2064001666, objHeading = 202.78143310547, objCoords = vector3(-544.9734, -123.9945, 38.9193)}
 },
	maxDistance = 2.5,
	authorizedJobs = { ['police']=0 },
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- ServiceTONormal_RPD
table.insert(Config.DoorList, {
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = 1704966541, objHeading = 292.78146362305, objCoords = vector3(-553.8362, -124.2104, 37.99709)},
		{objHash = 1704966541, objHeading = 112.7813949585, objCoords = vector3(-554.7492, -122.0364, 37.99709)}
 },
	maxDistance = 2.5,
	authorizedJobs = { ['police']=0 },
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Armurie_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 414947735,
	fixText = false,
	objHeading = 202.70544433594,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-545.1948, -119.6691, 38.00937),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Pris_RPD
table.insert(Config.DoorList, {
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = -532799551, objHeading = 202.70542907715, objCoords = vector3(-552.1359, -118.8422, 37.82435)},
		{objHash = -532799551, objHeading = 22.705430984497, objCoords = vector3(-549.7645, -117.85, 37.82435)}
 },
	maxDistance = 2.5,
	authorizedJobs = { ['police']=0 },
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAS_Service_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 221022919,
	fixText = false,
	objHeading = 22.705430984497,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-553.9464, -119.584, 37.9666),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAS_Esca_RPD


-- SAS_Esca_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 221022919,
	fixText = false,
	objHeading = 202.78146362305,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-559.624, -121.9719, 37.93237),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Mugshot_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = -494865855,
	fixText = false,
	objHeading = 22.705430984497,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-555.8336, -110.9917, 38.00558),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Evidence_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = -494865855,
	fixText = false,
	objHeading = 202.70542907715,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-559.2142, -102.9053, 37.99502),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Inté1_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = -494865855,
	fixText = false,
	objHeading = 22.705430984497,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-557.2209, -98.66168, 38.0078),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Inté2_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = -494865855,
	fixText = false,
	objHeading = 22.705430984497,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-555.3602, -103.0579, 38.00442),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- MainCellule_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = -1363479831,
	fixText = false,
	objHeading = 22.705430984497,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-552.8749, -100.4604, 34.53616),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Cell1_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 826454619,
	fixText = false,
	objHeading = 202.70544433594,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-553.1238, -104.6985, 34.53774),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Cell2_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 826454619,
	fixText = false,
	objHeading = 202.70544433594,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-555.5571, -105.7151, 34.53774),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Cell3_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 826454619,
	fixText = false,
	objHeading = 202.70544433594,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-557.8742, -106.6861, 34.53774),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Cell4_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 826454619,
	fixText = false,
	objHeading = 22.705430984497,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-558.608, -101.8208, 34.53774),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Cell5_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 826454619,
	fixText = false,
	objHeading = 22.705430984497,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-556.2692, -100.8422, 34.53774),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Cell6_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 826454619,
	fixText = false,
	objHeading = 22.705430984497,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-553.9536, -99.87328, 34.53774),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Cloackroom_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 1261273959,
	fixText = false,
	objHeading = 292.70544433594,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-549.5275, -117.0296, 38.00237),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- MainGate_RPD
table.insert(Config.DoorList, {
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = 1549769529, objHeading = 202.78143310547, objCoords = vector3(-561.1132, -130.4042, 38.70152)},
		{objHash = 1549769529, objHeading = 22.781433105469, objCoords = vector3(-562.9608, -131.1802, 38.70152)}
 },
	maxDistance = 2.5,
	authorizedJobs = { ['police']=0 },
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Esca1er_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 221022919,
	fixText = false,
	objHeading = 22.781433105469,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-555.67, -120.3257, 42.47773),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Double_1er_RPD
table.insert(Config.DoorList, {
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = 307589252, objHeading = 112.78141784668, objCoords = vector3(-553.89, -124.2431, 42.54634)},
		{objHash = 307589252, objHeading = 292.78146362305, objCoords = vector3(-554.8091, -122.0547, 42.54634)}
 },
	maxDistance = 2.5,
	authorizedJobs = { ['police']=0 },
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Esca_Service_1er_Double_RPD
table.insert(Config.DoorList, {
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = 1759654192, objHeading = 22.781433105469, objCoords = vector3(-544.9461, -124.0616, 42.72324)},
		{objHash = 1759654192, objHeading = 202.78146362305, objCoords = vector3(-547.1159, -124.9728, 42.72324)}
 },
	maxDistance = 2.5,
	authorizedJobs = { ['police']=0 },
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Esca_Second_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 221022919,
	fixText = false,
	objHeading = 22.781433105469,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-555.6792, -120.3755, 48.01009),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Esca_Second2_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 221022919,
	fixText = false,
	objHeading = 292.78146362305,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-559.7373, -121.9483, 47.98299),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Chef_RPD
table.insert(Config.DoorList, {
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = -1505966119, objHeading = 202.78146362305, objCoords = vector3(-562.8491, -124.9265, 47.60046)},
		{objHash = -1505966119, objHeading = 22.781433105469, objCoords = vector3(-565.0218, -125.8389, 47.60046)}
 },
	maxDistance = 2.5,
	authorizedJobs = { ['police']=0 },
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Meet_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = false,
	audioRemote = false,
	slides = false,
	objHash = 560614910,
	fixText = false,
	objHeading = 203.21002197266,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-570.9387, -124.5003, 47.85001),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Sergent_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 1022848365,
	fixText = false,
	objHeading = 112.7813949585,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-545.3186, -119.8005, 48.01394),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Lt_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 1022848365,
	fixText = false,
	objHeading = 112.7813949585,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-547.2919, -115.1264, 47.99907),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Cap_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 1022848365,
	fixText = false,
	objHeading = 112.7813949585,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-549.1879, -110.5803, 48.00644),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- OpenSpace_RPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	audioRemote = false,
	slides = false,
	objHash = 1022848365,
	fixText = false,
	objHeading = 297.78143310547,
	garage = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(-557.5776, -103.2363, 50.52614),
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- RPD
table.insert(Config.DoorList, {
	audioRemote = false,
	doors = {
		{objHash = 1704966541, objHeading = 112.7813949585, objCoords = vector3(-554.7492, -122.0364, 37.99709)},
		{objHash = 1704966541, objHeading = 292.78146362305, objCoords = vector3(-553.8362, -124.2104, 37.99709)}
 },
	authorizedJobs = { ['police']=0 },
	lockpick = false,
	slides = false,
	locked = true,
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Garage1
table.insert(Config.DoorList, {
	audioRemote = false,
	objCoords = vector3(-584.9671, -126.4386, 34.63924),
	authorizedJobs = { ['police']=0 },
	objHash = 1519044441,
	maxDistance = 6.0,
	fixText = false,
	objHeading = 22.705430984497,
	lockpick = false,
	garage = true,
	locked = true,
	slides = 6.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Garage2
table.insert(Config.DoorList, {
	audioRemote = false,
	objCoords = vector3(-579.6682, -124.209, 34.63332),
	authorizedJobs = { ['police']=0 },
	objHash = 1519044441,
	maxDistance = 6.0,
	fixText = false,
	objHeading = 22.705430984497,
	lockpick = false,
	garage = true,
	locked = true,
	slides = 6.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- police
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = -1215222675, objHeading = 270.0, objCoords = vector3(434.7479, -980.6184, 30.83926)},
		{objHash = 320433149, objHeading = 270.0, objCoords = vector3(434.7479, -983.2151, 30.83926)}
 },
	locked = true,
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- PressLSPD
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = 1227626004, objHeading = 37.000637054443, objCoords = vector3(-1092.47, -810.3749, 19.89291)},
		{objHash = -1134363268, objHeading = 37.000637054443, objCoords = vector3(-1090.182, -808.6475, 19.89291)}
 },
	locked = true,
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- PressLSPD
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = 717675074, objHeading = 37.000637054443, objCoords = vector3(-1092.486, -810.4553, 19.89291)},
		{objHash = -1587394945, objHeading = 37.000637054443, objCoords = vector3(-1094.739, -812.1642, 19.89291)}
 },
	locked = true,
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- AccLSPD
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = -66364649, objHeading = 37.586929321289, objCoords = vector3(-1112.459, -826.5454, 19.71749)},
		{objHash = -645818876, objHeading = 37.586929321289, objCoords = vector3(-1110.191, -824.7943, 19.71749)}
 },
	locked = false,
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- AccLSPD
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = -180615231, objHeading = 37.73755645752, objCoords = vector3(-1107.192, -844.207, 19.71706)},
		{objHash = -424809819, objHeading = 37.479595184326, objCoords = vector3(-1108.946, -841.9341, 19.71706)}
 },
	locked = false,
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- AccLSPD
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	slides = false,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = 560486745, objHeading = 37.257690429688, objCoords = vector3(-1105.407, -846.5293, 19.71706)},
		{objHash = -868602114, objHeading = 36.952461242676, objCoords = vector3(-1107.141, -844.2384, 19.71706)}
 },
	locked = false,
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- EscaPressLSPD


-- PressLSPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	authorizedJobs = { ['police']=0 },
	slides = false,
	audioRemote = false,
	doors = {
		{objHash = -489692994, objHeading = 216.36010742188, objCoords = vector3(-1060.804, -828.9276, 19.77528)},
		{objHash = -819054213, objHeading = 216.36010742188, objCoords = vector3(-1062.476, -826.6566, 19.77528)}
 },
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- PressLSPD
table.insert(Config.DoorList, {
	objHeading = 218.0,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1083.518, -831.2094, 19.46877),
	maxDistance = 2.0,
	objHash = -1878745668,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- StaffOnlyLSPD
table.insert(Config.DoorList, {
	objHeading = 308.00003051758,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1080.576, -828.9236, 19.4707),
	maxDistance = 2.0,
	objHash = 2017843016,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- StaffOnlyLSPD
table.insert(Config.DoorList, {
	objHeading = 127.99996185303,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1090.592, -818.2119, 19.44526),
	maxDistance = 2.0,
	objHash = 2017843016,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- ParkLSPD
table.insert(Config.DoorList, {
	objHeading = 36.801280975342,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1069.574, -827.8103, 15.79469),
	maxDistance = 2.0,
	objHash = 452874391,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- ParkLSPDSAS
table.insert(Config.DoorList, {
	objHeading = 216.80128479004,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1073.735, -824.4003, 15.79502),
	maxDistance = 2.0,
	objHash = 452874391,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- ArmeLSPD
table.insert(Config.DoorList, {
	objHeading = 306.80130004883,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1073.938, -819.7708, 15.79331),
	maxDistance = 2.0,
	objHash = 1786439300,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- InteroLSPD
table.insert(Config.DoorList, {
	objHeading = 306.80133056641,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1086.453, -822.574, 15.73609),
	maxDistance = 2.0,
	objHash = -1259801187,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- InteroLSPD
table.insert(Config.DoorList, {
	objHeading = 306.80133056641,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1090.874, -816.6857, 15.7361),
	maxDistance = 2.0,
	objHash = -1259801187,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Cell1
table.insert(Config.DoorList, {
	objHeading = 36.801280975342,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1084.852, -812.4702, 15.97978),
	maxDistance = 2.0,
	objHash = -1024341091,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Cell2
table.insert(Config.DoorList, {
	objHeading = 36.801280975342,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1081.861, -810.2329, 15.97978),
	maxDistance = 2.0,
	objHash = -1024341091,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Cell3
table.insert(Config.DoorList, {
	objHeading = 36.801280975342,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1078.816, -807.955, 15.97978),
	maxDistance = 2.0,
	objHash = -1024341091,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Cell_GardeavUE
table.insert(Config.DoorList, {
	objHeading = 216.80131530762,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1079.218, -811.425, 15.97978),
	maxDistance = 2.0,
	objHash = -1024341091,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- CellLSPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	authorizedJobs = { ['police']=0 },
	slides = false,
	audioRemote = false,
	doors = {
		{objHash = 1083279016, objHeading = 36.801280975342, objCoords = vector3(-1080.692, -815.8298, 15.75093)},
		{objHash = 1083279016, objHeading = 216.80128479004, objCoords = vector3(-1078.785, -814.403, 15.75093)}
 },
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Parking
table.insert(Config.DoorList, {
	objHeading = 216.80128479004,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1072.252, -823.2388, 9.923202),
	maxDistance = 2.0,
	objHash = 452874391,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- DoubleBalconLSPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	authorizedJobs = { ['police']=0 },
	slides = false,
	audioRemote = false,
	doors = {
		{objHash = -829783256, objHeading = 218.00001525879, objCoords = vector3(-1092.038, -831.837, 23.60754)},
		{objHash = -829783256, objHeading = 37.999996185303, objCoords = vector3(-1090.439, -833.8826, 23.60754)}
 },
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})


-- ServerLSPD
table.insert(Config.DoorList, {
	objHeading = 218.00001525879,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1087.057, -830.1775, 26.9969),
	maxDistance = 2.0,
	objHash = 1786439300,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- EscaOpenSpaceLSPD
table.insert(Config.DoorList, {
	objHeading = 218.00001525879,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1096.909, -848.1675, 27.26977),
	maxDistance = 2.0,
	objHash = -458674557,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- DoubleOpenSpaceLSPD
table.insert(Config.DoorList, {
	objHeading = 218.00001525879,
	authorizedJobs = { ['police']=0 },
	slides = false,
	objCoords = vector3(-1099.839, -835.8091, 26.99793),
	maxDistance = 2.0,
	objHash = -829783256,
	fixText = false,
	locked = true,
	garage = false,
	audioRemote = false,
	lockpick = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- DoubleOpenSpaceLSPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	authorizedJobs = { ['police']=0 },
	slides = false,
	audioRemote = false,
	doors = {
		{objHash = -829783256, objHeading = 218.00001525879, objCoords = vector3(-1099.839, -835.8091, 26.99793)},
		{objHash = -829783256, objHeading = 37.999996185303, objCoords = vector3(-1098.256, -837.835, 26.99793)}
 },
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- DoubleGympLSPD
table.insert(Config.DoorList, {
	lockpick = false,
	locked = true,
	authorizedJobs = { ['police']=0 },
	slides = false,
	audioRemote = false,
	doors = {
		{objHash = -829783256, objHeading = 218.00001525879, objCoords = vector3(-1079.077, -819.5721, 26.99755)},
		{objHash = -829783256, objHeading = 37.999988555908, objCoords = vector3(-1077.491, -821.601, 26.99755)}
 },
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})


-- Boos_RedLine
table.insert(Config.DoorList, {
	garage = false,
	audioRemote = false,
	objCoords = vector3(-598.0977, -923.0229, 24.03777),
	slides = false,
	objHash = -1687047623,
	locked = true,
	maxDistance = 2.0,
	authorizedJobs = { ['redline']=0 },
	lockpick = false,
	fixText = false,
	objHeading = 270.00003051758,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Cloack_RedLine
table.insert(Config.DoorList, {
	garage = false,
	audioRemote = false,
	objCoords = vector3(-598.1012, -917.8035, 24.03777),
	slides = false,
	objHash = -1687047623,
	locked = true,
	maxDistance = 2.0,
	authorizedJobs = { ['redline']=0 },
	lockpick = false,
	fixText = false,
	objHeading = 270.00003051758,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Double_Garage_RedLine
table.insert(Config.DoorList, {
	authorizedJobs = { ['redline']=0 },
	doors = {
		{objHash = 1387498002, objHeading = 269.99993896484, objCoords = vector3(-588.0795, -935.5467, 22.88852)},
		{objHash = 1693396617, objHeading = 270.00009155273, objCoords = vector3(-588.0789, -938.5585, 22.88852)}
 },
	locked = false,
	audioRemote = false,
	lockpick = false,
	slides = false,
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Garage_RedLine
table.insert(Config.DoorList, {
	garage = true,
	audioRemote = false,
	objCoords = vector3(-561.1066, -930.1593, 25.58847),
	slides = 6.0,
	objHash = -610223133,
	locked = true,
	maxDistance = 6.0,
	authorizedJobs = { ['redline']=0 },
	lockpick = false,
	fixText = false,
	objHeading = 89.999977111816,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Staff_RedLine
table.insert(Config.DoorList, {
	garage = false,
	audioRemote = false,
	objCoords = vector3(-587.9936, -936.8436, 28.29335),
	slides = false,
	objHash = 634417522,
	locked = true,
	maxDistance = 2.0,
	authorizedJobs = { ['redline']=0 },
	lockpick = false,
	fixText = false,
	objHeading = 89.999977111816,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- secret_redline
table.insert(Config.DoorList, {
	garage = false,
	audioRemote = false,
	objCoords = vector3(-590.1835, -925.5635, 27.1431),
	slides = true,
	objHash = -1264687887,
	locked = true,
	maxDistance = 6.0,
	authorizedJobs = { ['redline']=0 },
	lockpick = false,
	fixText = false,
	objHeading = 179.99998474121,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Garage_Show_RedLine
table.insert(Config.DoorList, {
	garage = true,
	audioRemote = false,
	objCoords = vector3(-532.6376, -885.9293, 26.27159),
	slides = 6.0,
	objHash = 1827434119,
	locked = true,
	maxDistance = 6.0,
	authorizedJobs = { ['redline']=0 },
	lockpick = false,
	fixText = false,
	objHeading = 0.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Double_ShowPark_RedLine
table.insert(Config.DoorList, {
	authorizedJobs = { ['redline']=0 },
	doors = {
		{objHash = 4787313, objHeading = 89.955459594727, objCoords = vector3(-589.778, -890.7513, 16.23573)},
		{objHash = 4787313, objHeading = 269.99996948242, objCoords = vector3(-589.778, -887.5874, 16.23224)}
 },
	locked = true,
	audioRemote = false,
	lockpick = false,
	slides = true,
	maxDistance = 6.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Bureau_Show1_RedL
table.insert(Config.DoorList, {
	garage = false,
	audioRemote = false,
	objCoords = vector3(-589.7733, -895.0118, 17.50802),
	slides = false,
	objHash = 1282049587,
	locked = true,
	maxDistance = 2.0,
	authorizedJobs = { ['redline']=0 },
	lockpick = false,
	fixText = false,
	objHeading = 89.999961853027,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Bureau_Show2_RedLine
table.insert(Config.DoorList, {
	garage = false,
	audioRemote = false,
	objCoords = vector3(-589.7804, -902.0204, 17.50508),
	slides = false,
	objHash = 1282049587,
	locked = true,
	maxDistance = 2.0,
	authorizedJobs = { ['redline']=0 },
	lockpick = false,
	fixText = false,
	objHeading = 89.999961853027,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- DoubleShowRoom_RedLine
table.insert(Config.DoorList, {
	authorizedJobs = { ['redline']=0 },
	doors = {
		{objHash = 4787313, objHeading = 0.06426265090704, objCoords = vector3(-594.6026, -909.2299, 16.24797)},
		{objHash = 4787313, objHeading = 180.00001525879, objCoords = vector3(-591.445, -909.2239, 16.252)}
 },
	locked = true,
	audioRemote = false,
	lockpick = false,
	slides = true,
	maxDistance = 6.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})


-- Esca1_Press_LSPD
table.insert(Config.DoorList, {
	objHash = -458674557,
	audioRemote = false,
	objHeading = 37.999996185303,
	authorizedJobs = { ['police']=0 },
	maxDistance = 2.0,
	garage = false,
	objCoords = vector3(-1067.562, -832.5189, 19.7699),
	slides = false,
	lockpick = false,
	fixText = false,
	locked = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Esca2_Press_LSPD
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	slides = false,
	garage = false,
	objHeading = 37.999996185303,
	objHash = -458674557,
	objCoords = vector3(-1067.561, -832.5526, 23.87817),
	locked = true,
	lockpick = false,
	audioRemote = false,
	maxDistance = 2.0,
	fixText = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- coridor1_lspd
table.insert(Config.DoorList, {
	maxDistance = 2.5,
	lockpick = false,
	locked = true,
	doors = {
		{objHash = -829783256, objHeading = 37.999996185303, objCoords = vector3(-1076.439, -822.9434, 23.60706)},
		{objHash = -829783256, objHeading = 218.00001525879, objCoords = vector3(-1078.035, -820.8989, 23.60706)}
 },
	authorizedJobs = { ['police']=0 },
	slides = false,
	audioRemote = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- conf_lspd
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	slides = false,
	garage = false,
	objHeading = 307.76055908203,
	objHash = 2017843016,
	objCoords = vector3(-1079.118, -815.6477, 23.60792),
	locked = true,
	lockpick = false,
	audioRemote = false,
	maxDistance = 2.0,
	fixText = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})


-- Detet_lspd
table.insert(Config.DoorList, {
	doors = {
		{objHash = -829783256, objHeading = 127.99996185303, objCoords = vector3(-1083.228, -823.9904, 23.6104)},
		{objHash = -829783256, objHeading = 308.00003051758, objCoords = vector3(-1085.274, -825.5894, 23.6104)}
 },
	audioRemote = false,
	locked = true,
	authorizedJobs = { ['police']=0 },
	lockpick = false,
	slides = false,
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})


-- PreuveLSPD
table.insert(Config.DoorList, {
	slides = false,
	maxDistance = 2.0,
	lockpick = false,
	audioRemote = false,
	objCoords = vector3(-1085.925, -831.457, 23.63276),
	fixText = false,
	objHeading = 218.00001525879,
	authorizedJobs = { ['police']=0 },
	locked = true,
	objHash = 1786439300,
	garage = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- HelicoLSPD
table.insert(Config.DoorList, {
	slides = false,
	maxDistance = 2.0,
	lockpick = false,
	audioRemote = false,
	objCoords = vector3(-1107.171, -831.603, 37.87047),
	fixText = false,
	objHeading = 36.435298919678,
	authorizedJobs = { ['police']=0 },
	locked = true,
	objHash = 1202070162,
	garage = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Parkingg
table.insert(Config.DoorList, {
	garage = true,
	authorizedJobs = { ['police']=0 },
	locked = true,
	slides = 6.0,
	fixText = false,
	objHash = 1286535678,
	lockpick = false,
	maxDistance = 6.0,
	objCoords = vector3(-1143.805, -845.5441, 13.35345),
	objHeading = 36.999996185303,
	audioRemote = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Police
table.insert(Config.DoorList, {
	objHash = -458674557,
	garage = false,
	locked = false,
	fixText = false,
	objCoords = vector3(-1067.562, -832.5189, 19.7699),
	maxDistance = 2.0,
	lockpick = false,
	slides = false,
	audioRemote = false,
	objHeading = 37.999996185303,
	authorizedJobs = { ['police']=0 },
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- police
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	audioRemote = false,
	slides = false,
	locked = true,
	fixText = false,
	objCoords = vector3(-553.9464, -119.584, 37.9666),
	objHeading = 22.705430984497,
	lockpick = false,
	garage = false,
	objHash = 221022919,
	maxDistance = 2.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- police
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	audioRemote = false,
	slides = false,
	locked = true,
	fixText = false,
	objCoords = vector3(-553.9464, -119.584, 37.9666),
	objHeading = 22.705430984497,
	lockpick = false,
	garage = false,
	objHash = 221022919,
	maxDistance = 2.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- police
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	lockpick = false,
	objHash = 1261273959,
	garage = false,
	locked = false,
	audioRemote = false,
	fixText = false,
	objHeading = 292.70544433594,
	slides = false,
	objCoords = vector3(-549.5275, -117.0296, 38.00237),
	maxDistance = 2.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- PolicePreuve
table.insert(Config.DoorList, {
	slides = false,
	fixText = false,
	objCoords = vector3(-559.2142, -102.9053, 37.99502),
	objHeading = 202.70542907715,
	locked = true,
	lockpick = false,
	audioRemote = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objHash = -494865855,
	garage = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Armurie
table.insert(Config.DoorList, {
	slides = false,
	fixText = false,
	objCoords = vector3(-545.1948, -119.6691, 38.00937),
	objHeading = 202.70544433594,
	locked = true,
	lockpick = false,
	audioRemote = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objHash = 414947735,
	garage = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Armurie
table.insert(Config.DoorList, {
	slides = false,
	fixText = false,
	objCoords = vector3(-545.1948, -119.6691, 38.00937),
	objHeading = 202.70544433594,
	locked = true,
	lockpick = false,
	audioRemote = false,
	maxDistance = 2.0,
	authorizedJobs = { ['police']=0 },
	objHash = 414947735,
	garage = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- police
table.insert(Config.DoorList, {
	slides = false,
	locked = false,
	audioRemote = false,
	doors = {
		{objHash = -2064001666, objHeading = 22.781433105469, objCoords = vector3(-547.1499, -124.9086, 38.91911)},
		{objHash = -2064001666, objHeading = 202.78143310547, objCoords = vector3(-544.9734, -123.9945, 38.9193)}
 },
	authorizedJobs = { ['police']=0 },
	lockpick = false,
	maxDistance = 2.5,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- GymHomme
table.insert(Config.DoorList, {
	objHash = 1705415488,
	items = { 'gym_membership' },
	slides = false,
	garage = false,
	objHeading = 340.0,
	locked = true,
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objCoords = vector3(273, -266.4711, 54.08076),
	fixText = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	 autoLock = 1000
})

-- GymFemme
table.insert(Config.DoorList, {
	objHash = 1705415488,
	items = { 'gym_membership' },
	slides = false,
	garage = false,
	objHeading = 340.0,
	locked = true,
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objCoords = vector3(282.5162, -269.9347, 54.0778),
	fixText = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
 autoLock = 1000
})

-- GymTop
table.insert(Config.DoorList, {
	objHash = -1119680854,
	items = { 'gym_membership' },
	slides = false,
	garage = false,
	objHeading = 160.0,
	locked = true,
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objCoords = vector3(243.3863, -272.1805, 60.08262),
	fixText = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
 autoLock = 1000
})


-- PoliceEsca0202
table.insert(Config.DoorList, {
	locked = true,
	objHeading = 292.70544433594,
	objHash = 221022919,
	lockpick = false,
	garage = false,
	fixText = false,
	objCoords = vector3(-555.5904, -119.8744, 37.95223),
	maxDistance = 2.0,
	audioRemote = false,
	authorizedJobs = { ['police']=0 },
	slides = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})


-- Sheriff_Cours_Davis
table.insert(Config.DoorList, {
	slides = false,
	objHash = -1156020871,
	objCoords = vector3(391.8602, -1636.07, 29.97438),
	maxDistance = 2.0,
	lockpick = false,
	locked = true,
	objHeading = 49.99995803833,
	authorizedJobs = { ['sheriff']=0 },
	audioRemote = false,
	fixText = true,
	garage = false,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})


-- brinks_coffre
table.insert(Config.DoorList, {
	authorizedJobs = { ['brinks']=0 },
	lockpick = false,
	objCoords = vector3(-1.727947, -686.5417, 16.68913),
	slides = false,
	objHash = -1932297301,
	locked = true,
	garage = false,
	maxDistance = 5.0,
	fixText = true,
	audioRemote = false,
	objHeading = 160.00003051758,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})


-- SAST_Entrée
table.insert(Config.DoorList, {
	maxDistance = 2.5,
	locked = true,
	authorizedJobs = { ['sheriff']=0 },
	lockpick = false,
	slides = false,
	audioRemote = false,
	doors = {
		{objHash = 1738519111, objHeading = 320.0, objCoords = vector3(369.9344, -1606.261, 29.44148)},
		{objHash = -1047370197, objHeading = 320.0, objCoords = vector3(368.2753, -1608.238, 29.44148)}
 },
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAST_Cloack
table.insert(Config.DoorList, {
	objCoords = vector3(364.647, -1601.292, 29.43974),
	garage = false,
	fixText = false,
	slides = false,
	objHash = -1925177820,
	locked = true,
	authorizedJobs = { ['sheriff']=0 },
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objHeading = 139.99998474121,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAST_Cloack2
table.insert(Config.DoorList, {
	objCoords = vector3(371.9657, -1603.393, 29.4418),
	garage = false,
	fixText = false,
	slides = false,
	objHash = -1925177820,
	locked = true,
	authorizedJobs = { ['sheriff']=0 },
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objHeading = 320.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAST_Acc
table.insert(Config.DoorList, {
	objCoords = vector3(364.7879, -1594.708, 29.44237),
	garage = false,
	fixText = false,
	slides = false,
	objHash = -1685865813,
	locked = true,
	authorizedJobs = { ['sheriff']=0 },
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objHeading = 49.999984741211,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAST_Acc2
table.insert(Config.DoorList, {
	maxDistance = 2.5,
	locked = true,
	authorizedJobs = { ['sheriff']=0 },
	lockpick = false,
	slides = false,
	audioRemote = false,
	doors = {
		{objHash = -667323357, objHeading = 230.00003051758, objCoords = vector3(370.537, -1587.883, 29.44176)},
		{objHash = -667323357, objHeading = 49.999969482422, objCoords = vector3(372.1991, -1585.902, 29.44176)}
 },
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAST_Esca
table.insert(Config.DoorList, {
	objCoords = vector3(384.3159, -1604.146, 29.4411),
	garage = false,
	fixText = false,
	slides = false,
	objHash = -1925177820,
	locked = true,
	authorizedJobs = { ['sheriff']=0 },
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objHeading = 49.999984741211,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAST_Heli
table.insert(Config.DoorList, {
	objCoords = vector3(384.2773, -1603.934, 37.11418),
	garage = false,
	fixText = false,
	slides = false,
	objHash = 2130535758,
	locked = true,
	authorizedJobs = { ['sheriff']=0 },
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objHeading = 320.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAST_MainCell
table.insert(Config.DoorList, {
	objCoords = vector3(349.4737, -1600.773, 29.6148),
	garage = false,
	fixText = true,
	slides = false,
	objHash = -1842288246,
	locked = true,
	authorizedJobs = { ['sheriff']=0 },
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objHeading = 320.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAST_Cell1
table.insert(Config.DoorList, {
	objCoords = vector3(352.2917, -1603.167, 29.61505),
	garage = false,
	fixText = true,
	slides = false,
	objHash = -1842288246,
	locked = true,
	authorizedJobs = { ['sheriff']=0 },
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objHeading = 320.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAST_Cell2
table.insert(Config.DoorList, {
	objCoords = vector3(354.4528, -1604.98, 29.61483),
	garage = false,
	fixText = true,
	slides = false,
	objHash = -1842288246,
	locked = true,
	authorizedJobs = { ['sheriff']=0 },
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objHeading = 320.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAST_Cell3
table.insert(Config.DoorList, {
	objCoords = vector3(356.5661, -1606.753, 29.61343),
	garage = false,
	fixText = false,
	slides = true,
	objHash = -1842288246,
	locked = true,
	authorizedJobs = { ['sheriff']=0 },
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objHeading = 320.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAST_Cell4
table.insert(Config.DoorList, {
	objCoords = vector3(358.6782, -1608.523, 29.61456),
	garage = false,
	fixText = true,
	slides = false,
	objHash = -1842288246,
	locked = true,
	authorizedJobs = { ['sheriff']=0 },
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objHeading = 320.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- SAST_Cell5
table.insert(Config.DoorList, {
	objCoords = vector3(361.1936, -1610.636, 29.6146),
	garage = false,
	fixText = true,
	slides = false,
	objHash = -1842288246,
	locked = true,
	authorizedJobs = { ['sheriff']=0 },
	audioRemote = false,
	lockpick = false,
	maxDistance = 2.0,
	objHeading = 320.0,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})


-- SAST_Entrée2
table.insert(Config.DoorList, {
	slides = false,
	audioRemote = false,
	doors = {
		{objHash = 471928866, objHeading = 320.0, objCoords = vector3(354.8611, -1592.875, 29.43909)},
		{objHash = -1360054856, objHeading = 320.0, objCoords = vector3(353.2121, -1594.865, 29.44267)}
 },
	maxDistance = 2.5,
	authorizedJobs = { ['sheriff']=0 },
	lockpick = false,
	locked = true,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})
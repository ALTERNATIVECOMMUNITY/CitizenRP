-- ## GABZ - NEW HUB
-- ## COORDINATES: -50.734, -1041.996, 28.163

-- Bennys Entry New location
table.insert(Config.DoorList, {
	objCoords = vector3(-44.1884, -1043.554, 27.8016),
	objHeading = 69.999923706054,
	objHash = -427498890,
	maxDistance = 6.0,
	lockpick = false,
	garage = true,
	audioRemote = false,
	fixText = false,
	authorizedJobs = { ['mechanic']=0 },
	slides = 6.0,
	locked = true,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Bennys Entry Old location
table.insert(Config.DoorList, {
	authorizedJobs = { ['mechanic']=0 },
	textCoords = vector3(-205.734,-1310.755,31.728),
	objCoords = vector3(-205.6828, -1310.682, 30.29572),
	objHeading = 0.0,
	objHash = -427498890,
	maxDistance = 10.0,		
	slides = true,
	garage = true,
	lockpick = false,
	audioRemote = false,
	locked = true,
	setText = true,
	-- fixText = true,
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Impound office room
table.insert(Config.DoorList, {
	lockpick = false,
	objHash = -952356348,
	authorizedJobs = { ['mechanic']=0 },
	maxDistance = 2.0,
	audioRemote = false,
	fixText = false,
	objCoords = vector3(-187.0614, -1162.348, 23.82124),
	garage = false,
	objHeading = 89.999961853028,
	locked = true,
	slides = false,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Impound back door
table.insert(Config.DoorList, {
	lockpick = false,
	objHash = 97297972,
	authorizedJobs = { ['mechanic']=0 },
	maxDistance = 2.0,
	audioRemote = false,
	fixText = false,
	objCoords = vector3(-189.636, -1167.884, 23.82124),
	garage = false,
	objHeading = 179.99998474122,
	locked = true,
	slides = false,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Impound Enter Gate
table.insert(Config.DoorList, {
	lockpick = false,
	objHash = 1286535678,
	authorizedJobs = { ['mechanic']=0 },
	maxDistance = 9.0,
	audioRemote = false,
	fixText = false,
	objCoords = vector3(-164.1268, -1160.678, 22.63864),
	garage = false,
	objHeading = 180.00093078614,
	locked = true,
	slides = true,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Impound Exit Gate
table.insert(Config.DoorList, {
	slides = true,
	objHeading = 180.00001525878,
	authorizedJobs = { ['mechanic']=0 },
	garage = false,
	maxDistance = 9.0,
	audioRemote = false,
	lockpick = false,
	fixText = false,
	objCoords = vector3(-225.0742, -1158.824, 22.09534),
	objHash = 1286535678,
	locked = true,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})
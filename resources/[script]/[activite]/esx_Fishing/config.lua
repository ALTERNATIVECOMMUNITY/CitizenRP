Config = {}

	--Time in miliseconds
Config.FishTime = {a = 5000, b = 20000}

Config.FishPrice = { a = 1, b = 100 }

Config.Sell = {
	{
		pos = vec3(-1846.184, -1197.719, 18.2),
		sellText = "Marché aux Poissons",
		blip = 61,
		colour = 0
	},
}

Config.MarkerZones = {
	{
		Marker = vec3(-805.955, -1496.91, 0.6 ), -- Rental Marker
		Spawn = vec3(-805.68, -1504.251, 0.292), -- Boat Spawn Point
		SpawnHeading = 111.103, -- Boat Heading
		Return = vec3(-803.213, -1485.701, 0.309) -- Boat Return Point
	},
}

Config.RentalBoats = {
	{model = "seashark", price = 100},
	{model = "dinghy", price = 500},
	{model = "marquis", price = 200},
	{model = "tropic", price = 250},
	{model = "jetmax", price = 350},
	{model = "speeder", price = 450},

}

--[[
Config.SellFish = {
	x = -1846.184, y = -1197.719, z = 19.185
}
]]
	--------------------------------------------------------
	--=====Locations where players can rent boats========--

--[[	--------------------------------------------------------
Config.MarkerZones = {

    {x = -806.093, y = -1496.939, z = 0.4, xs = -820.965, ys = -1519.193, zs = 0.327},

}
]]

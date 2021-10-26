Config = {}

-- Change menu alignment
Config.MenuAlign = "top-left"

-- Change items that can be sold at the pawnshop, the number behind = is the price
Config.PawnshopItems = {
	diamond = 2500,
	gold = 1600,
	coke_pooch = 150,
}

Config.GiveBlack = false -- give black money? if disabled it'll give regular cash.
-
Config.PawnshopLocation =  {x = 174.04669189453, y = -1321.7844238281, z = 29.363594055176}

-- Pawnshop blip
Config.PawnshopBlipText = "Pawnshop"
Config.PawnshopBlipColor = 5
Config.PawnshopBlipSprite = 272

-- Opening hours
Config.EnableOpeningHours = true -- Enable opening hours? If disabled you can always open the pawnshop.
Config.OpenHour = 21 -- From what hour should the pawnshop be open?
Config.CloseHour = 6 -- From what hour should the pawnshop be closed?

Config              = {}
Config.Locale       = 'en'
Config.Phones       = {
  "phone",
}

Config.FourDigit = false
FixePhone = {
  -- Poste de police
  ['911'] = { name =  "Central Police", coords = { x = 441.2, y = -979.7, z = 30.58 } },
  
  -- Cabine proche du poste de police
  ['008-0001'] = { name = "Cabine Telephonique", coords = { x = 372.25, y = -965.75, z = 28.58 } },
}

ShowNumberNotification = true -- Show Number or Contact Name when you receive new SMS


Config.newsJobName = "news"
Config.newsBlip = vector3(-595.67, -932.5, 28.0) -- News add blip, for news job
Config.valetPrice = 100
Config.uberPriceMultiplier = 1.5 -- Means if items price $4, 4 * 1.5 = 6
Config.uberTipMin = 30 -- If player is a lucky get min tip on deliver
Config.uberTipMax = 50 -- If player is a lucky get max tip on deliver

-- Uber delivery adress
Config.uberDelivery = {

}

-- Required uber items on deliver
Config.uberItems = {

}
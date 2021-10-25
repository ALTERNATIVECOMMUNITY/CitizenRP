Config 			= {}
Config.License = '0616cbcf9e8ed680f351af83cba10052'
--Events
Config.Events = {
  ['esx:getSharedObject'] = 'esx:getSharedObject',
  ['esx_billing:sendBill'] = 'esx_billing:sendBill',
  ['esx:playerLoaded'] = 'esx:playerLoaded',
  ['esx:setJob'] = 'esx:setJob',
}

--Blips at map
Config.ShowBlips = true
Config.DefaultBlipOptions = {
  type = 5, --Display
  shortRange = false, --Short shortRange
  sprite = 184,
  color = 69,
  name = 'Radar',
  scale = 0.8,
}

--Fines
Config.SendDirectlyToBilling = true --You dont want us to send invoice directly to billing, you have own API (check discord for documnetation)
Config.InvoiceSociety = 'society_police'
Config.Fines = {
  150, --To 10+ mph/kmh
  200, --To 20+ mph/kmh
  350, --To 30+ mph/kmh
  500  --From 30+ mph/kmh
}

--Whitelist & allow list
Config.WhitelistedJobs = {
  'police',
  'sheriff',
  'ambulance'
}
Config.AllowedVehicles = {
  'ambulance',
  'police',
  'police2',
  'police5'
}

--Others
Config.KMH = true --True if you want to measure everything in km/h
Config.RadarFPS = 100 --How often radar taking pictures and detecting players with speed
Config.RadarDistance = 20 -- How many meters radar can take picture
Config.PrintToServer = false
Config.WaitTimeBetweenPictures = 5 --In seconds, if player get photo from one radar its cannot get from same radar for time

--Radars
Config.Radars = {
  { x = 401.7, y = -957.8, z = 29.3, maxSpeed = 100},
  { x = 397.6, y = -1048.1, z = 29.3, maxSpeed = 100 },
  { x = 226.5, y = -1040.7, z = 29.2, maxSpeed = 100 },
  { x = 172.8, y = -819.36, z = 31.1, maxSpeed = 100 },
  { x = -1284.9, y = -915.07, z = 12.03, maxSpeed = 100 },
  { x = 187.53, y = -339.71, z = 44.5, maxSpeed = 100 },
  { x = 280.02, y = -83.16, z = 70.79, maxSpeed = 100 },
  { x = 202.88, y = 197.04, z = 106.11, maxSpeed = 100 },
  { x = 242.34, y = -1448.61, z = 29.78, maxSpeed = 100 },
  { x = -186.35, y = -895.34, z = 29.86, maxSpeed = 100 },
  { x = -1383.42, y = -392.28, z = 37.51, maxSpeed = 100 },
  { x = 427.34, y = -541.42, z = 27.75, maxSpeed = 100 },
}
Config.TargerSociety = 'society_police'

Config.Strings = {
  ['title'] = 'Le radar vous à flashé!',
  ['body'] = 'Radar : vous avez reçu une amende - plaque d\'immatriculation: ',
  ['fine'] = 'Dépassement de la vitesse ' --Bill text, at end come exceed speed in MPH
}

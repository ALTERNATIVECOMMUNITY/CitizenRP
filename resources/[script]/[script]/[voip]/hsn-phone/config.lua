Config = Config or {}
Config.DB = "mysql-async" -- or "mysql-async"
Config.DownloadTimer = {
    ["Twitter"] = 15000,
    ["Twitch"] = 3000,
    ["Advertisement"] = 4000,
    ["Cars"] = 5000,
    ["Finance"] = 6000
}

Config.TelfixCommand = "phonenuifix" -- or nil --

Config.CustomCryptoCurrencys = {
    ["ethereum"] = 0.00000,
    ["ggcoin"] = 0.00000,
    ["devcoin"] = 0.00000
}
Config.CryptoTransferCommission = {
    ["bitcoin"] = 5, -- 5%
    ["ethereum"] = 0.2, --0.2%
    ["ggcoin"] = 0.7, --0.7%
    ["devcoin"] = 1.4,--1.4%
}
Config.Voip = "tokovoip" -- or mumble or pma-voice
Config.Webhooks = {
    ["Camera"] = "https://discord.com/api/webhooks/887342330506514433/95n24Y56bjgUO_thQ43NQYbDHqfUiiPG-SIbwfwhwwYh3uut5MIfektoy7vU4vvgXBXj",
    ["Twitter"] = "https://discord.com/api/webhooks/887342449394090065/JEP3G8buNSHjH1e8FwJYb4R_qpz9djzEOPqZgj4jqyXQTp0udGRaeXGr1M73vDrO4eM4"
}
Config.PhoneBackgrounds = {
    "https://i.pinimg.com/474x/49/0d/cd/490dcd0a6072aeee34e49993b89c9a19.jpg",
    "http://cdn.shopify.com/s/files/1/0182/4159/files/02_05_IGStory_UniversalLove.jpg?format=jpg%20",
    "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://img.buzzfeed.com/buzzfeed-static/static/2018-04/13/12/asset/buzzfeed-prod-web-03/sub-buzz-8755-1523636113-1.jpg?output-quality=auto&output-format=auto&downsize=640:*",
    "https://wallpaper.csplague.com/wp-content/uploads/2020/02/New-painting-wallpaper-iphone-art-phone-backgrounds-ideas.jpg",
    "https://i.pinimg.com/236x/f0/40/f0/f040f07ac0ad09cc155ecc4bbface15a.jpg",
    "https://i.pinimg.com/originals/40/2f/bb/402fbbdc4cc2c7606914fa142b174a4d.jpg"
}
Config.Server = {
    Photo = "https://media.discordapp.net/attachments/881848472028971038/885874868334243840/myLogo.png?width=683&height=683",
    Name = "Citizen V"
}
Config.JobNames = {
    ["police"] = true, -- police and ambulance app
    ["ambulance"] = true
}

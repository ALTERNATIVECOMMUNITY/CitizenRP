-------------------------------------
------- Created by T1GER#9080 -------
------------------------------------- 

fx_version 'cerulean'
games {'gta5'}

author 'T1GER#9080'
discord 'https://discord.gg/FdHkq5q'
description 'T1GER Keys'
auth 'Please open a ticket on my discord to get auth & support.'
version '1.0.1'

client_scripts {
	'language.lua',
	'config.lua',
	'client/main.lua',
	'client/utils.lua'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'language.lua',
	'config.lua',
	'server/main.lua'
}

exports {
	'GiveJobKeys',
	'GiveTemporaryKeys',
	'ToggleVehicleEngine',
	'SetVehicleLocked',
	'SetVehicleHotwire',
	'SetVehicleCanSearch',
}

server_exports {
	'UpdateKeysToDatabase'
}
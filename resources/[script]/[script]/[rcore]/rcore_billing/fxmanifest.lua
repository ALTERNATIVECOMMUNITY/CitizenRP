fx_version 'bodacious'

game 'gta5'

author 'Isigar <info@rcore.cz>'
description 'Reworked esx_billing'

version '1.0.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/*.lua',
	'config.lua',
	'config_s.lua',
	'shared/*.lua',
	'server/main.lua',
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'config.lua',
	'shared/*.lua',
	'client/main.lua',
}

provide 'esx_billing'

dependencies {
	'esx_society',
}

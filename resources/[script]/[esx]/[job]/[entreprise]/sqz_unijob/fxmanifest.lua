fx_version 'cerulean'

game 'gta5'

description 'SQZ unijob'

version '1.2.1'

-- Leaking Hub | J. Snow | https://leakinghub.com

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'SConfig.lua',
	'locales.lua',
	'config.lua',
	'server/edit.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales.lua',
	'config.lua',
	'client/edit.lua',
	'client/main.lua'
}

dependencies {
	'es_extended',
	'esx_billing',
	'esx_menu_default'
}
fx_version 'cerulean'

game 'gta5'

client_scripts {
    'config.lua',
    'client.lua'
}

server_scripts {
    '@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
    'config.lua',
    'server.lua'
}

dependencies {
	'mysql-async',
}

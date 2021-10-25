fx_version 'bodacious'
games { 'gta5' }

author 'Isigar <info@rcore.cz>'
version '1.2'


server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'server/server.lua',
}


client_scripts {
    'config.lua',
    'client/lib/*.lua',
    'client/client.lua',
}

shared_scripts {
    'common.lua',
}















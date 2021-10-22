fx_version 'cerulean'
games      { 'gta5' }

author 'KuzQuality | Kuzkay'
description 'Diving Script with advanced selling mechanics for ESX'
version '1.1.4'

--
-- Server
--

server_scripts {
    '@es_extended/locale.lua',
    'locales/en.lua',
    'shared/config.lua',
    'server/server.lua',
}

--
-- Client
--

client_scripts {
    '@es_extended/locale.lua',
    'locales/en.lua',
    'shared/config.lua',
    'client/client.lua',
}

fx_version 'bodacious'
game 'gta5'
author 'Codesign#2715'
description 'Garage'
version '3.0.7'

shared_scripts {
    'configs/locales.lua',
    'configs/config.lua',
}

client_scripts {
    'configs/client_customise_me.lua',
    'client/*.lua',
    'client/*.js',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua', --REMOVE THIS LINE IF YOU USE GHMATTIMYSQL.
    'configs/server_customise_me.lua',
    'authorization.lua',
    'server/server.lua',
    'server/server.js',
    'server/version_check.lua',
    'configs/server_webhooks.lua',
}

ui_page {
    'html/index.html',
}
files {
    'configs/locales_ui.js',
    'html/index.html',
    'html/css/*.css',
    'html/js/*.js',
    'html/images/logos/*.png',
}

server_exports {
    'GetGarageLimit',
    'GetGarageCount',
    'GetMaxHealth',
    'GetVehicleOwner',
}

exports {
    'GetGarageType',
    'GetAdvStats',
}

dependencies {
    'cd_drawtextui',
    'cd_garageshell',
    'cd_easytime', --REMOVE THIS LINE IF YOU USE VSYNC.
    'mysql-async', --REMOVE THIS LINE IF YOU USE GHMATTIMYSQL.
    'es_extended', --REMOVE THIS LINE IF DO NOT USE ESX, OR IF YOU USE A MODIFIED VERSION OF ESX SIMPLY CHANGE THE NAME.
}
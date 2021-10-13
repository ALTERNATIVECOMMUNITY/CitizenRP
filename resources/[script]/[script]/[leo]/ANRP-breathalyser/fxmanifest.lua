fx_version 'adamant'

game 'gta5'

description 'ANRP Breath Analyser'

version '1.0.0'

shared_scripts{
    '@es_extended/imports.lua'
}

client_scripts {
    '@es_extended/locale.lua',
    'locales/en.lua',
    'config.lua',
    'client/functions.lua',
    'client/main.lua'

}

server_scripts {
	'@es_extended/locale.lua',
    'locales/en.lua',
    'config.lua',
    'server/main.lua'
}

ui_page "html/ui.html"

files {
    "html/*.html",
    "html/css/*.css",
    "html/js/*.js",
    "html/assets/*.png",
    "html/assets/digital.ttf"
}

dependencies {
	'es_extended',
	'esx_status',
	'esx_optionalneeds'
}

fx_version "adamant"
game "gta5"

author 'TasoAGC'
description 'A FiveM integration of the SimpleNotification.js library'
version '1.3.0'

client_scripts {
    'config.lua',
    'main.lua',
    'depreciated.lua'
}

server_script {
    'update.lua'
}

ui_page('nui/main.html')

files {
    'nui/main.html',
    'nui/SimpleNotification/notification.css',
    'nui/SimpleNotification/notification.js',
    'nui/assets/script.js',
    'nui/assets/styles.css',
    'nui/custom.css'
}

exports {
    'SendTextAlert',
    'SendAny',
    'SendImage',
    'Alert',
    'Custom',
    'Image',
    'Persist'
}

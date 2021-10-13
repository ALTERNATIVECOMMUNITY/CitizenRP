fx_version 'adamant'

game 'gta5'

ui_page('client/html/index.html') 

server_scripts {  
    '@mysql-async/lib/MySQL.lua',
	'server.lua',
    'config.lua'
}

client_scripts {
	'client/client.lua',
    'config.lua'
}

files {
	'client/html/index.html',
    'client/html/style.css',
    'client/html/app.js',
    'client/html/song/*.mp3',
    'client/html/images/*.png',
}
fx_version 'adamant'

game 'gta5'

ui_page('client/html/index.html') 

server_scripts {  
    '@mysql-async/lib/MySQL.lua',
	'server.lua'
}

client_scripts {
	'client/client.lua'
}

files {
	'client/html/index.html',
    'client/html/style.css',
    'client/html/app.js',
    'client/html/font.woff',
    'client/html/images/*.png',
}
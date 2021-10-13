-------------------------------------------------------------
-- CIOT- A Simple FiveM Script, Made By Rocket Development --
-------------------------------------------------------------

fx_version "bodacious"
game "gta5"

-- Define the resource metadata
name "Click It or Ticket"
description "A First Of It's Kind Seatbelt Script"
author "Rocket Development"
version "v2.0.9"



client_script "config.lua"
client_script "client.lua"

server_script "config.lua"
server_script "server.lua"
server_script "version_check.lua"

ui_page 'html/ui.html'
files {
	'html/*',
	'img/seatbelt.png',
	'html/index.html',
    'html/sounds/buckle.ogg',
    'html/sounds/chimes.ogg',
    'html/sounds/seatbelt.ogg',
    'html/sounds/unbuckle.ogg'

}
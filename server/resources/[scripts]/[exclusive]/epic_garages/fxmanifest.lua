fx_version 'cerulean'
game 'gta5'
lua54 'yes'
name "epic_garages"
description "Garage for Fivem"
author "Epic Store"
version "0.9.0"
ui_page "web-side/index.html"
shared_scripts {
	'shared-side/*.lua'
}
client_scripts {
	"@vrp/config/Native.lua",
	"@vrp/lib/Utils.lua",
	"@vrp/config/Vehicle.lua",
	'client-side/*.lua'
}
server_scripts {
	"@vrp/config/Item.lua",
	"@vrp/config/Vehicle.lua",
	"@vrp/lib/Utils.lua",
	'server-side/*.lua'
}
files {
	"web-side/index.html",
	"web-side/style.css",
	"web-side/app.js",
	"web-side/assets/*.png"
}
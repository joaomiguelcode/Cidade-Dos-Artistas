fx_version 'bodacious'
game 'gta5'
name "epic_gm"
description "Group System"
author "Epic Resources"
version "1.2.0"
lua54 'yes'
ui_page 'web-side/index.html'
shared_scripts {
	"@vrp/lib/Utils.lua",
	"shared-side/*.lua"
}
client_scripts {
	"client-side/*.lua"
}
server_scripts {
	"@vrp/config/Item.lua",
	"@vrp/config/Groups.lua",
	"server-side/functions.lua",
	"server-side/server.lua"
}
files {
	'web-side/*',
	'web-side/assets/*.png'
}
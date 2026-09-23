fx_version "bodacious"
game "gta5"
lua54 "yes"
author "ImagicTheCat"
creative_network "original"
creator "yes"
loadscreen 'loading/index.html'
loadscreen_manual_shutdown 'yes'
client_scripts {
	"config/*",
	"lib/Utils.lua",
	"client/*"
}
server_scripts {
	"config/*",
	"lib/Utils.lua",
	"modules/vrp.lua",
	"modules/scope.lua",
	"modules/server.lua",
	"modules/misc.lua",
	"modules/Discord.lua",
	"modules/prepare.lua"
}
files {
	"loading/*",
	"lib/*",
	"config/locales/*",
	"web/themes.js"
}
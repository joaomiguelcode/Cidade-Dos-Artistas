fx_version 'cerulean'
game 'gta5'
lua54 "yes"
version '1.2.0'
dependencies {
    '/server:4752',
}
server_scripts {
	"config.lua",
	"objectloader.lua",
	'server/framework.lua', 
	'server/utils.lua', 
	'server/stats.lua',
	'server/main.lua',
	'server/peerjsfallback.lua'
}
client_scripts {
	'client/ui/RageUI.lua', 
	'client/ui/Menu.lua', 
	'client/ui/MenuController.lua', 
	'client/ui/components/*.lua',
	'client/ui/elements/*.lua', 
	'client/ui/items/*.lua', 
	'client/ui/TimerBar.lua', 
	"config.lua",
	"objectloader.lua",
	'client/framework.lua', 
	'client/utils.lua', 
	'client/sceneped.lua', 
	'client/peerjs.lua',
	'client/stats.lua',
	'client/main.lua',
	'client/hockey.lua',
}
escrow_ignore {
	"config.lua",
	"objectloader.lua",
	'client/hockey.lua',
	'server/framework.lua', 
	'client/framework.lua',
	'client/utils.lua',
}
files {
	'client/nui/*'
}
ui_page 'client/nui/index.html'
data_file 'DLC_ITYP_REQUEST' 'stream/props/rcore_airhockey.ytyp'
dependency '/assetpacks'
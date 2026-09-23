fx_version 'cerulean'
game 'gta5'
author 'Danzo'
description 'Advanced Drone - Made by Danzo - Discord: https://discord.gg/8nFqCR4xVC'
version '1.1.3'
shared_script "config.lua"
client_scripts {
	"@vrp/lib/Utils.lua",
	'client/functions.lua',
	'client/client.lua',
}
server_scripts {
	"@vrp/lib/Utils.lua",
	'@oxmysql/lib/MySQL.lua',
	'server/server.lua',
}
escrow_ignore {
	'config.lua',
	'client/client.lua',
	'server/server.lua',
	'stream/ch_prop_casino_drone_02a.yft',
}
ui_page 'html/index.html'
files {
	'html/**/**',
}
lua54 'yes'
dependency '/assetpacks'
fx_version 'cerulean'
game 'gta5'
name "cda-utils"
description "Utils scripts for Jaguaré Roleplay"
version "1.0.0"
lua54 'yes'
dependencies {
	'/server:7290',
	'/onesync',
	'oxmysql',
	'ox_lib'
}
shared_scripts {
	'@ox_lib/init.lua',
	"@vrp/lib/Utils.lua",
	'shared/main.lua',
	'modules/**/shared/*.lua'
}
client_scripts {
	"@vrp/config/Native.lua",
	'client/main.lua',
	'modules/**/client/*.lua'
}
server_scripts {
	'@vrp/config/Item.lua',
	'server/main.lua',
	'modules/**/server/*.lua'
}
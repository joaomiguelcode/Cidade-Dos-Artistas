fx_version "bodacious"
game "gta5"
lua54 "yes"
ui_page 'web-side/index.html'
shared_scripts {
	'@ox_lib/init.lua',
	"@vrp/config/Native.lua",
	"@vrp/lib/Utils.lua",
	'shared/*.lua'
}
client_scripts {
	'client/main.lua'
}
server_scripts {
	"@vrp/config/Item.lua",
	'server/*.lua'
}
files {
	'web-side/index.html',
	'web-side/**/*',
	'web-side/*'
}
escrow_ignore {
    'client/others.lua',
    'server/*.lua',
    'shared/*.lua'
}
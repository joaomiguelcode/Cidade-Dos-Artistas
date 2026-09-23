fx_version 'cerulean'
game 'gta5'
lua54 'yes'
client_scripts {
	"@vrp/lib/Utils.lua",
	"client.lua"
}
server_scripts {
	"@vrp/lib/Utils.lua",
	"server.lua"
}
ui_page('html/index.html')
files {
    'html/listener.js',
    'html/style.css',
    'html/reset.css',
    'html/index.html'
}
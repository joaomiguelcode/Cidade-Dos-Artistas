fx_version "cerulean"
game "gta5"
lua54 "yes"

ui_page_preload 'yes'

ui_page "nui/index.html"

files {
	"nui/**",
}

client_scripts {
	"@vrp/lib/Utils.lua",
	"client_config.lua",
	"client.lua"
} 

server_scripts {
	"@vrp/lib/Utils.lua",
	"server_config.lua",
	"server.lua"
}
                            
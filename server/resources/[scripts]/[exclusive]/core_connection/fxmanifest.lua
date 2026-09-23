fx_version "cerulean"
game "gta5" 
lua54 "yes"

client_scripts {
   "client-side/*.lua"
}
server_scripts {
   "@vrp/lib/Utils.lua",
   "server-side/*.lua"
}
files {
	"web-side/*",
	"web-side/**/*"
}
ui_page "web-side/index.html"
              
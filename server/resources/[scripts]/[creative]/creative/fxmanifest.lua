-- thn_disabletrigger "yes"
thn_disabletrigger "yes"
thn_disabletrigger "yes"
fx_version "bodacious"
game "gta5"
lua54 "yes"
client_scripts {
	"@ox_lib/init.lua",
	"@vrp/config/Native.lua",
	"client-side/*"
}

server_scripts {
	"@vrp/lib/Utils.lua",
	"server-side/*"
}
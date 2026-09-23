thn_disabletrigger "yes"
fx_version "bodacious"
game "gta5"
lua54 "yes"

ui_page "web-side/index.html"

client_scripts {
	"@vrp/config/Native.lua",
	"client-side/*"
}

server_scripts {
	"@vrp/lib/Utils.lua",
	"server-side/*"
}

server_exports {
	"playSound",
	"playSoundToSource",
	"playSoundProximity",
	"playSoundCoords",
	"playSoundAll",
	"stopSound",
	"getSoundList"
}

client_exports {
	"playSound",
	"playSoundDistance",
	"stopSound"
}

files {
	"web-side/*",
	"web-side/**/*"
}
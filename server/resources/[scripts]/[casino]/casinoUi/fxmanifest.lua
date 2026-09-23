fx_version 'bodacious'
game 'gta5'
lua54 'yes'
author 'Codesign#2715'
description 'Draw screen UI replacment for 3D text'
version '1.0'
ui_page {
    'html/index.html',
}
files {
	'html/index.html',
	'html/js/script.js', 
	'html/css/stylesheet.css',
}
shared_scripts {
	'@ox_lib/init.lua',
	"@vrp/lib/Utils.lua"
}
client_scripts {
	'client/main.lua' 
}
server_scripts {
	'server/main.lua'
}
exports {
	'DrawCasinoUi',
	'HideCasinoUi',
}
server_exports {
	'DrawCasinoUi',
	'HideCasinoUi',
	'DrawCasinoUiAll',
	'HideCasinoUiAll',
} 
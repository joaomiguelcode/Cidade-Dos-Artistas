fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Cidade Dos Artistas'
description 'Sistema Tático & Administrativo de Destaque / Outline por Grupos com NUI'
version '1.0.0'

shared_scripts {
	'config/config.lua'
}

client_scripts {
	'client/client.lua'
}

server_scripts {
	'@vrp/lib/Utils.lua',
	'server/server.lua'
}

ui_page 'web/index.html'

files {
	'web/index.html',
	'web/style.css',
	'web/script.js',
	'web/images/wallpaper.png'
}

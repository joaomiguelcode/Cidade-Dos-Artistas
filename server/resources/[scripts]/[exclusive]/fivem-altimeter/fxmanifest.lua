fx_version 'cerulean'
game 'gta5'
author 'Seu Nome'
description 'Altímetro Avançado para FiveM'
version '1.0.0'
lua54 'yes'
client_scripts {
    'client.lua'
}
server_scripts {
    '@vrp/lib/Utils.lua',
    'server.lua'
}
ui_page 'html/index.html'
files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}
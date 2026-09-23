fx_version 'cerulean'
game 'gta5'
lua54 'yes'
use_experimental_fxv2_oal 'yes'
author 'rainmad <store.rainmad.com>'
version '1.5.9'
shared_scripts {
    '@ox_lib/init.lua',
    'cfg.lua',
    'bridge/notification/*.lua',
}
server_scripts {
    "@vrp/lib/Utils.lua",
    'bridge/**/server.lua',
    'server/discord_log.lua',
    'server/main.lua',
}
client_scripts {
    "@vrp/lib/Utils.lua",
    'client/sprites.lua',
    'client/main.lua',
    'client/truck_handler.lua',
    'client/editable_functions.lua',
    'bridge/textui/*.lua',
    'bridge/minigame/*.lua',
    'bridge/**/client.lua',
}
files {
    'locales/*.json',
    'assets/images/*.png',
    'assets/sprites/*.png',
    'data/*.lua',
}
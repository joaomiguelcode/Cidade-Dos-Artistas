fx_version 'cerulean'
games { 'gta5' }
author 'rcore.cz'
version '1.3.1'
dependencies {
    'rcore_pingpong_assets'
}
client_scripts {
    'config.lua',
    'init.lua',
    'locales/**/*.lua',
    'client/events.lua',
    'client/utils.lua',
    'client/peerjs.lua',
    'client/menu.lua',
    'client/physics.lua',
    'client/target.lua',
    'client/stats.lua',
    'client/client.lua'
}
server_scripts {
    'config.lua',
    'server/framework.lua',
    'server/stats.lua',
    'server/server.lua',
    'server/peerjsfallback.lua',
    'server/leaderboards.lua',
}
shared_scripts {
    'shared/*.lua',
}
escrow_ignore {
    'config.lua',
    'client/utils.lua',
    'client/target.lua',
    'server/framework.lua',
    'server/server.lua',
    'server/leaderboards.lua',
    'server/leaderboards.json',
    'locales/**/*.lua',
    'client/events.lua',
}
files {
	'client/nui/**/*',
}
ui_page 'client/nui/index.html'
lua54 "yes"
dependency '/assetpacks'
fx_version 'cerulean'
game 'gta5'
author '.Ry'
description 'Casino Script'
version '1.0.0'
lua54 'yes'

dependencies {
	'ox_lib'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

server_exports {
    'getChips',
    'giveChips',
    'takeChips',
    'hasMembership'
}

shared_scripts {
    '@ox_lib/init.lua', 
    "@vrp/lib/Utils.lua",
    'config.lua'
}
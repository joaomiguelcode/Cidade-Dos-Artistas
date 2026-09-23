fx_version 'cerulean'
game 'gta5'
author '.Ry'
description 'Casino Script'
version '1.0.0'
lua54 'yes'

client_scripts {
    'teleport_to_penthouse.lua',
    'teleport_to_lobby.lua',
}

server_scripts {
    'server.lua'
}

server_exports {
    'checkVIP',
    'checkMember',
    'giveVIP',
    'giveMember'
}

shared_scripts {
    '@ox_lib/init.lua', 
    "@vrp/lib/Utils.lua",
    'config.lua'
}
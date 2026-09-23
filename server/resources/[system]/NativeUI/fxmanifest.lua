fx_version 'cerulean'
game 'gta5'
lua54 'yes'

client_scripts {
    'NativeUI.lua'
}

server_scripts {
    'server/main.lua'
}

server_exports {
    'OpenMenu',
    'CloseMenu',
    'RegisterMenuHandler',
    'ShowNotification',
    'GetVersion'
}

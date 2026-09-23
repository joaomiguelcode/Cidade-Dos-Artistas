fx_version 'cerulean'
game 'gta5'
lua54 'yes'
shared_scripts {
    'config.lua'
}
server_scripts {
    "@vrp/lib/Utils.lua",
    'editable_server.lua',
	'server.lua'
}
client_scripts {
    "@PolyZone/client.lua",
    "@vrp/lib/Utils.lua",
    'editable_client.lua',
	'client.lua',
    'drilling.lua',
    'hack.lua',
}
data_file "DLC_ITYP_REQUEST" "stream/loq_atm.ytyp"
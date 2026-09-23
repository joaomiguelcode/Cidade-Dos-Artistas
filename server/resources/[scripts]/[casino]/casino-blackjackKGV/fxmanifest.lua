fx_version 'adamant'
game "gta5"
lua54 'yes'
shared_scripts {
    '@ox_lib/init.lua', 
    "@vrp/lib/Utils.lua",
	'coords.lua',
}
client_scripts{
	'client/*.lua'
} 
server_scripts{
	'server/*.lua'
} 
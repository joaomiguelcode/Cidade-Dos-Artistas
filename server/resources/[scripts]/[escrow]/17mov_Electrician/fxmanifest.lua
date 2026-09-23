thn_disabletrigger "yes"
thn_newnatives  "yes"
thn_triggerclient "yes"
fx_version "cerulean"
game "gta5"
author "Malizniak - 17Movement"
lua54 "yes"
files {
    "web/**/*.**",
    "web/*.**",
    "stream/*.**",
}
ui_page "web/driver.html"
server_scripts {
    "@vrp/config/Item.lua",
	"@vrp/config/Vehicle.lua",
	"@vrp/lib/Utils.lua",
    "@mysql-async/lib/MySQL.lua",
    "server/functions.lua",
    "server/server.lua",
} 
client_scripts {
    "@vrp/lib/Utils.lua",
    "client/target.lua",
    "client/functions.lua",
    "client/client.lua",
}
shared_script "Config.lua"
escrow_ignore {
    "Config.lua",
    "client/target.lua",
    "client/functions.lua",
    "server/functions.lua",
    "stream/*.**",
}
dependencies {
    'Howdy-Minigame'
}
data_file 'VEHICLE_METADATA_FILE'    'stream/vehicles.meta'
data_file 'CARCOLS_FILE'             'stream/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE'   'stream/carvariations.meta'
dependency '/assetpacks'
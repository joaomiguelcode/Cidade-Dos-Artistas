-- NÃO MEXER / DONT TOUCH --
fx_version "cerulean"
game "gta5"
author "BrennoC2N#2626"
version "1.5.0"
lua54 "yes"
shared_scripts {
    "@vrp/lib/utils.lua",
    "@vrp/lib/Utils.lua",
    "src/shared/lib/utils.lua"
}
server_scripts {
    "src/server/node.js",
    "src/server/modules/callback.lua",
    "src/server/sv_config.lua",
    "src/server/modules/framework.lua",
    "src/server/sv_main.lua",
    "src/server/sv_functions.lua",
}
client_scripts {
    "src/client/modules/callback.lua",
    "src/client/cl_config.lua",
    "src/client/cl_main.lua",
    "src/client/cl_functions.lua",
}
files {
    "stream/**.*",
}
escrow_ignore { -- NÃO MEXER
    "src/client/cl_functions.lua",
    "src/server/sv_functions.lua",
}
dependencies {
    "/onesync"
}
-- NÃO MEXER / DONT TOUCH --
dependency '/assetpacks'
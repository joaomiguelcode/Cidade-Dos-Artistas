fx_version "adamant"
game "gta5" 
lua54 "yes"

shared_scripts {
   "config.lua"
}

escrow_ignore {
   "config.lua",
   "utils.lua",
   "utilsc.lua",
   "addtokart.ogg"
}

server_scripts {
   "@vrp/lib/utils.lua",
   "server.lua",
   "utils.lua"
}

client_scripts {
   "@vrp/lib/utils.lua",
   "cam.lua",
   "utilsc.lua",
   "dyno.lua",
   "client.lua",
}

files {
   "nui/**/**/**",
}

ui_page "nui/index.html"

dependency '/assetpacks'
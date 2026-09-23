fx_version "cerulean"
game "gta5"
lua54 "yes"

client_scripts {
  "@vrp/lib/Utils.lua",
  "client.config.lua",
  "client.lua"
}

server_scripts {
  "@oxmysql/lib/MySQL.lua",
  "@vrp/lib/Utils.lua",
  "framework.lua",
  "client.config.lua",
  "server.config.lua",
  "server.lua"
}

files {
  "html/**/*"
}

ui_page "html/index.html"

exports {
  "openBank",
  "closeBank"
}
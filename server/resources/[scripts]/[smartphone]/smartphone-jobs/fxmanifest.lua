fx_version 'adamant'
game 'gta5'

shared_script '@vrp/lib/Utils.lua'

server_scripts {
  'server/core.lua',
  'server/ifood.lua',
  'server/uber.lua'
}

client_scripts {
  'client/core.lua',
  'client/ifood.lua',
  'client/uber.lua'
}

files {
  'build/**/*',
  'config.json',
}
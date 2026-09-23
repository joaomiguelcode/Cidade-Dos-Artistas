fx_version 'cerulean'
game 'gta5'
lua54 'yes'
use_experimental_fxv2_oal 'yes'
author 'rainmad <store.rainmad.com>'
version '1.1.8'
shared_scripts {
    '@ox_lib/init.lua',
    'cfg.lua',
    'bridge/inventory/*.lua',
    'tools/main.lua',
    'tools/drill.lua',
    'tools/weld.lua',
}
files {
    'assets/images/*.png',
    'assets/sounds/data/rm_tools.dat54.rel',
    'assets/sounds/audiodirectory/rm_tools.awc',
    'meta/*.meta',
}
data_file 'AUDIO_WAVEPACK' 'assets/sounds/audiodirectory'
data_file 'AUDIO_SOUNDDATA' 'assets/sounds/data/rm_tools.dat'
data_file 'WEAPON_METADATA_FILE' 'meta/weaponarchetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' 'meta/weaponanimations.meta'
data_file 'WEAPONINFO_FILE' 'meta/weapons.meta'
escrow_ignore {
    '[items]',
    'cfg.lua',
    'bridge/**.*',
    'assets/**.*',
    'meta/**.*',
    'tools/main.lua',
}
dependency '/assetpacks'
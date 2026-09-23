fx_version 'cerulean'
game 'gta5'
lua54 'yes'

escrow_ignore {
	'shared/*.lua',
	'client/*.lua',
	'server/*.lua'
}

shared_scripts {
    'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/style.css',
	'html/index.js',
	'assets/**/*.png'
}

exports {
    'displayTextUI',
    'hideTextUI',
	'changeText',
	'create3DTextUI',
	'update3DTextUI',
	'create3DTextUIOnPlayers',
	'delete3DTextUIOnPlayers',
	'delete3DTextUI',
	'create3DTextUIOnEntity'
}

server_exports {
    'displayTextUI',
    'hideTextUI',
	'changeText',
	'create3DTextUI',
	'update3DTextUI',
	'create3DTextUIOnPlayers',
	'delete3DTextUIOnPlayers',
	'delete3DTextUI',
	'create3DTextUIOnEntity'
}
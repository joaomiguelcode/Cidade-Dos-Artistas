Config = {}

Config.SQL = "oxmysql" -- Set the SQL to "oxmysql" or "mysql-async" depends on what you use on you ESX framework

-- Drone Controls
Config.Controls = { -- FiveM Controls: https://docs.fivem.net/docs/game-references/controls/
	Forward			= 32,	-- W for Qwerty / Z for Azerty
	Backward		= 33,	-- S
	Left			= 34,	-- A for Qwerty / Q for Azerty
	Right			= 35,	-- D
	Up				= 51,	-- E
	Down			= 52,	-- Q for Qwerty / A for Azerty
	Stop			= 22,	-- Space
	ZoomOut			= 16,	-- Mouse Scroll Whell Down
	ZoomIn			= 17,	-- Mouse Scroll Whell Up
	Nightvision		= 140,	-- R
	Heatvision		= 75,	-- F
	Spotlight		= 47,	-- G
	ReleaseDrone	= 168,	-- F7
	Scanner			= 24,	-- Left Mouse Button
	SoundBoard		= 29,	-- B
	Cancel			= 200,	-- ESC
}

Config.SyncDroneSound = false -- if you set it to "true" you may experience a little performance issue, test it
Config.DroneInitAnimations = true -- drone initiation animations (requested by customer)

-- Drone Scanner
Config.ScannerRange = 50.0
Config.ScannerIgnoreMask = false
Config.NoMaskComponentId = 0

-- Drone Text Font
Config.TextFont = 4 -- Text font type
Config.TextCustomFont = { -- This option for servers that use custom fonts or other languages - Used Natives: RegisterFontFile(FontName) / RegisterFontId(FontName)
	UseCustomFont = false, -- Set to "true" to enable using custom font
	FontName = '', -- Custom font file name
}

-- Drone Transition
Config.Transition = { 
	['direction']       	= 'Direção',
	['height']          	= 'Altura',
	['camera']          	= 'Câmera',
	['zoom']            	= 'Zoom',
	['nightvision']     	= 'Visão Noturna',
	['heatvision']      	= 'Visão Térmica',
	['spotlight']       	= 'Holofote',
	['scan_player']     	= 'Escanear Jogador',
	['soundboard']    	 	= 'Mesa de Som',
	['cancel']          	= 'Cancelar',
	['cant_use_drone']  	= 'Você não pode usar o drone',
	
	['release_drone']  		= 'Liberar Drone',
	['reconnect_drone']  	= 'Reconectar ao Drone',
	
	['scan_searching']  	= 'Procurando...',
	['scan_searching_db']	= 'Procurando no banco de dados...',
	['scan_unknown']		= 'Desconhecido',
	['scan_not_recognized']	= 'O alvo não pode ser reconhecido',
}

Config.UseDroneInVehicle = true

-- This two commands are made for servers that want to toggle ON/OFF the Instructional Buttons or Cam Scaleforms - Default is ON
Config.DroneCamScaleforms = "dronecamscaleforms"
Config.DroneInstructionalButtons = "droneinstructionalbuttons"


Config.SoundsRange = 50.0

Config.SoundsList = {
	{
		Text = "Encoste o carro",
		File = "car_over.ogg",
	},
	{
		Text = "POLICIA! Encoste o carro imediatamente",
		File = "pull_imm.ogg",
	},
	{
		Text = "Patrulha Rodoviária de San Andreas, pare o carro",
		File = "sahp_stop.ogg",
	},
	{
		Text = "Última chance! Pare o carro",
		File = "last_chance.ogg",
	},
	{
		Text = "Departamento de Polícia de Los Santos, pare o veículo",
		File = "los_santos.ogg",
	},
	{
		Text = "Desligue o motor do seu veículo",
		File = "engine_off.ogg",
	},
	{
		Text = "Pare o veículo e saia",
		File = "get_out.ogg",
	},
	{
		Text = "Parado! POLICIA",
		File = "freeze_lspd.ogg",
	},
	{
		Text = "Você não vai escapar tão fácil",
		File = "away_easy.ogg",
	},
	{
		Text = "O próximo aviso será uma bala, seu a******, pare",
		File = "bullet_ass.ogg",
	},
	{
		Text = "Você não pode se esconder, vamos te encontrar",
		File = "cant_hide_boi.ogg",
	},
	{
		Text = "Pare! Não me faça atirar em você, se entregue",
		File = "dont_make_me.ogg",
	},
	{
		Text = "POLICIA! Se renda",
		File = "give_up.ogg",
	},
	{
		Text = "Aqui é a Policia, dispersem agora",
		File = "disperse_now.ogg",
	},
	{
		Text = "Saia daqui agora,",
		File = "get_out_of_here_now.ogg",
	},
	{
		Text = "Limpe a área agora",
		File = "clear_the_area.ogg",
	},
	{
		Text = "Andem logo, pessoal! Não queremos problemas",
		File = "move_along_people.ogg",
	},
	{
		Text = "Vão embora agora ou haverá problemas",
		File = "this_is_the_lspd.ogg",
	},
}


Config.DevDebug = false -- Just prints few lines for test purposes
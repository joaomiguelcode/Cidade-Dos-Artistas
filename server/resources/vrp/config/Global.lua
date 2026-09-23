-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
UsableF7 = true
Whitelisted = true
SalarySeconds = 1800
BannedText = "Banido Da Melhor City"
CleanDeathInventory = true
ServerName = "Cidade Dos Artistas"
ReleaseText = "Acessa nosso discord e faça sua Allowlist -> https://discord.gg/cidadedosartistas"
SpawnCoords = vec3(1620.7,3558.12,35.38)
BackArenaPos = vec3(-1046.43,-474.55,36.78)
BackPrison = vec3(1896.15,2604.44,45.75)
BackpackWeightDefault = 50
WipeBackpackDeath = true
NewItemIdentity = true
-----------------------------------------------------------------------------------------------------------------------------------------
-- BASE
-----------------------------------------------------------------------------------------------------------------------------------------
BaseMode = "steam" -- license ou steam
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUNGER / THIRST
-----------------------------------------------------------------------------------------------------------------------------------------
ConsumeHunger = 1
ConsumeThirst = 1
CooldownHungerThrist = 60000
-----------------------------------------------------------------------------------------------------------------------------------------
-- MAINTENANCE
-----------------------------------------------------------------------------------------------------------------------------------------
Maintenance = false		
MaintenanceText = "Servidor em manutenção fique atento ao nosso discord para mais informações. https://discord.gg/cidadedosartistas"
MaintenanceLicenses = {
	["1a48fd519cbcfde759620a472f9fbe7aef36ec6a"] = true, -- SAARRADA
	["6cd285666ade101549f761d53c49743f1393c82f"] = true, -- MEC
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARENA (Itens recebidos ao entrar na arena)
-----------------------------------------------------------------------------------------------------------------------------------------
ArenaItens = {
	["WEAPON_PISTOL_MK2"] = 1,
	["WEAPON_PISTOL_AMMO"] = 1000
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHARACTERITENS (Itens recebidos ao criar o personagem)
-----------------------------------------------------------------------------------------------------------------------------------------
CharacterItens = {
	["cola"] = 6,
	["hamburger2"] = 6,
	["dollars"] = 5000,
	["cellphone"] = 1,
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- GROUPBLIPS
-----------------------------------------------------------------------------------------------------------------------------------------
GroupBlips = {
	["Rota"] = true,
	["Coe"] = true,
	["Police"] = true,
	["Caep"] = true,
	["Baep"] = true,
	["Tatica"] = true,
	["Cavpm"] = true,
	["Humaita"] = true,
	["Anchieta"] = true,
	["CPA"] = true,
	["Gcm"] = true,
	["Corregedoria"] = true,
	["Cmtg"] = true,
	["Transito"] = true,
	["Rodoviaria"] = true,
	["Militar"] = true,
	["Pc"] = true,
	["Pf"] = true,
	["Exercito"] = true,
	["Penal"] = true,
	["Receita"] = true,

	["Paramedic"] = true,
	["Bombeiro"] = true
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLIENTSTATE
-----------------------------------------------------------------------------------------------------------------------------------------
ClientState = {
	["Owner"] = true,
	["Admin"] = true,

	["Police"] = true,
	["Coe"] = true,
	["Rota"] = true,
	["Caep"] = true,
	["Baep"] = true,
	["Tatica"] = true,
	["Corregedoria"] = true,
	["Cavpm"] = true,
	["Humaita"] = true,
	["Anchieta"] = true,
	["CPA"] = true,
	["Gcm"] = true,
	["Cmtg"] = true,
	["Rodoviaria"] = true,
	["Transito"] = true,
	["Militar"] = true,
	["Penal"] = true,
	["Receita"] = true,

	["Exercito"] = true,
	["Pc"] = true,
	["Pf"] = true,

	["Paramedic"] = true,
	["Bombeiro"] = true,

	["Autosport"] = true,
	["Mcdonalds"] = true,
	["Overspeed"] = true,

	["Oab"] = true,
	["Cnn"] = true,

	["FK"] = true,
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- STARTCLOTHES
-----------------------------------------------------------------------------------------------------------------------------------------
StartClothes = {
	["mp_m_freemode_01"] = {
		["pants"] = { item = 26, texture = 0 },
		["arms"] = { item = 0, texture = 0 },
		["tshirt"] = { item = 15, texture = 0 },
		["torso"] = { item = 57, texture = 0 },
		["vest"] = { item = 0, texture = 0 },
		["shoes"] = { item = 0, texture = 2 },
		["mask"] = { item = 0, texture = 0 },
		["backpack"] = { item = 0, texture = 0 },
		["hat"] = { item = -1, texture = 0 },
		["glass"] = { item = 0, texture = 0 },
		["ear"] = { item = -1, texture = 0 },
		["watch"] = { item = -1, texture = 0 },
		["bracelet"] = { item = -1, texture = 0 },
		["accessory"] = { item = 0, texture = 0 },
		["decals"] = { item = 0, texture = 0 }
	},
	["mp_f_freemode_01"] = {
		["pants"] = { item = 157, texture = 0 },
		["arms"] = { item = 0, texture = 0 },
		["tshirt"] = { item = 1, texture = 0 },
		["torso"] = { item = 368, texture = 1 },
		["vest"] = { item = 0, texture = 0 },
		["shoes"] = { item = 1, texture = 0 },
		["mask"] = { item = 0, texture = 0 },
		["backpack"] = { item = 0, texture = 0 },
		["hat"] = { item = -1, texture = 0 },
		["glass"] = { item = 0, texture = 0 },
		["ear"] = { item = -1, texture = 0 },
		["watch"] = { item = -1, texture = 0 },
		["bracelet"] = { item = -1, texture = 0 },
		["accessory"] = { item = 0, texture = 0 },
		["decals"] = { item = 0, texture = 0 }
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- LANG
-----------------------------------------------------------------------------------------------------------------------------------------
Lang = {
	["Join"] = "Entrando...",
	["Connecting"] = "Conectando...",
	["Position"] = "Você é o %d/%d da fila, aguarde sua conexão",
	["Error"] = "Conexão perdida so abrir a steam."
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- QUEUE
-----------------------------------------------------------------------------------------------------------------------------------------
Queue = {
	["List"] = {},
	["Players"] = {},
	["Counts"] = 0,
	["Connecting"] = {},
	["Threads"] = 0,
	["Max"] = 2048
}
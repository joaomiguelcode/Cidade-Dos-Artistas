CasinoConfig = {}

-- Itens de identificação / passe
CasinoConfig.VipItem = "casino_vip" -- Ingresso Vip Cassino
CasinoConfig.MemberItem = "casino_member" -- Ingresso Cassino

-- Permissões que concedem acesso VIP automático sem necessidade do item físico
CasinoConfig.FreeAccessPermissions = {
	["Admin"] = true,
	["VIP"] = true,
	["Moderator"] = true,
	["Developer"] = true
}

-- Coordenadas de teleporte
CasinoConfig.Coordinates = {
	Lobby = vector3(930.42, 35.73, 81.09),
	Penthouse = vector3(963.62, 59.29, 111.55)
}

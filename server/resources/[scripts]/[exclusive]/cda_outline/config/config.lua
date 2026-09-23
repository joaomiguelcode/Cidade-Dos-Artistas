-----------------------------------------------------------------------------------------------------------------------------------------
-- CONFIGURAÇÕES PRINCIPAIS - CDA OUTLINE
-----------------------------------------------------------------------------------------------------------------------------------------
Config = {}

-- Comando no chat / console para abrir o painel NUI
Config.Command = "outline"

-- Comando rápido no chat para ligar/desligar imediatamente sem abrir a NUI
Config.QuickToggleCommand = "destaque"

-- Tecla padrão para abrir o painel (pode ser reconfigurada pelo jogador nas configurações do FiveM)
Config.KeyMapping = "F10"
Config.KeyMappingDescription = "Abrir Painel de Outline / Destaque"

-- Auto-ativar ao entrar ou ao iniciar o script (jogadores autorizados já começam com o destaque ativo)
Config.AutoEnableOnStart = true

-- Distâncias de visualização (em metros)
Config.DefaultDistance = 80.0
Config.MinDistance = 15.0
Config.MaxDistanceLimit = 150.0

-- Intervalo de atualização no cliente (em ms) para checagem de entidades próximas
Config.ClientCheckInterval = 250

-- Intervalo de sincronização no servidor (em ms) para enviar alvos aos observadores ativos
Config.ServerSyncInterval = 3000

-- Configurações visuais padrão
Config.DefaultColor = { 255, 255, 255 } -- Cor padrão de fallback (Branco)
Config.DefaultAlpha = 220
Config.DefaultShader = 1 -- 1: Glow / Suave | 0: Sólido

-- Modos visuais de destaque (combinados para máxima visibilidade)
Config.HighlightSelf = true  -- Se true, exibe o contorno visual também no seu próprio personagem
Config.NeonGlow = true       -- Iluminação neon dinâmica emitida ao redor do corpo na cor do grupo
Config.GroundRing = true     -- Anel / aura tática neon projetada no chão sob os pés do personagem
Config.HideInVehicle = false -- Se true, esconde contorno quando o alvo entra em veículo
Config.HideDead = false      -- Se true, esconde contorno quando o alvo está morto / em coma
Config.PulseEffect = false   -- Efeito pulsante suave no contorno

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONFIGURAÇÃO DOS GRUPOS E REGRAS DE VISIBILIDADE
-----------------------------------------------------------------------------------------------------------------------------------------
-- A ordem na tabela define a prioridade de hierarquia (do topo para baixo)
Config.Groups = {
	["Owner"] = {
		label = "Direção / Dono",
		badgeColor = "#ff0033",
		color = { 255, 0, 50 }, -- Vermelho Carmim Neon
		canView = {
			"Owner",
			"Developer",
			"Admin",
			"Super-Moderador",
			"Moderador",
			"Suporte",
			"Police",
			"Policia",
			"Paramedic"
		}
	},

	["Developer"] = {
		label = "Desenvolvedor",
		badgeColor = "#00e5ff",
		color = { 0, 229, 255 }, -- Ciano Neon
		canView = {
			"Owner",
			"Developer",
			"Admin",
			"Super-Moderador",
			"Moderador",
			"Suporte",
			"Police",
			"Policia",
			"Paramedic"
		}
	},

	["Admin"] = {
		label = "Administrador",
		badgeColor = "#e50914",
		color = { 255, 35, 35 }, -- Vermelho Vivo
		canView = {
			"Admin",
			"Super-Moderador",
			"Moderador",
			"Suporte",
			"Police",
			"Policia"
		}
	},

	["Super-Moderador"] = {
		label = "Super Moderador",
		badgeColor = "#ff7700",
		color = { 255, 120, 0 }, -- Laranja Intenso
		canView = {
			"Super-Moderador",
			"Moderador",
			"Suporte"
		}
	},

	["Moderador"] = {
		label = "Moderador",
		badgeColor = "#ff9900",
		color = { 255, 170, 0 }, -- Âmbar / Dourado
		canView = {
			"Moderador",
			"Suporte"
		}
	},

	["Suporte"] = {
		label = "Suporte",
		badgeColor = "#00e676",
		color = { 0, 230, 118 }, -- Verde Esmeralda
		canView = {
			"Suporte"
		}
	},

	["Police"] = {
		label = "Polícia",
		badgeColor = "#1e88e5",
		color = { 30, 144, 255 }, -- Azul Dodger
		canView = {
			"Police",
			"Policia"
		}
	},

	["Policia"] = {
		label = "Polícia",
		badgeColor = "#1e88e5",
		color = { 30, 144, 255 }, -- Azul Dodger
		canView = {
			"Police",
			"Policia"
		}
	},

	["Paramedic"] = {
		label = "Paramédico / SAMU",
		badgeColor = "#00e5ff",
		color = { 0, 229, 255 }, -- Ciano Neon
		canView = {
			"Paramedic"
		}
	}
}

-- Ordem de checagem prioritária para definir o grupo primário do jogador
Config.GroupPriority = {
	"Owner",
	"Developer",
	"Admin",
	"Super-Moderador",
	"Moderador",
	"Suporte",
	"Police",
	"Policia",
	"Paramedic"
}

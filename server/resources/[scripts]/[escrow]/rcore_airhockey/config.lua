Config = {
    -- send paddle position to your opponent every 33ms (30x/s)
    -- lower the value for faster sync sync between paddles
    PositionSendRate = 33,
    -- maximum time the puck can stay on one side in ms
    PenaltyTime = 10000,
    -- block these while playing
    RestrictedControls = {37, 157, 159, 160, 161, 162, 163, 164, 165, 158, 101, 337, 53, 54, 47, 140, 141, 263, 264,
                          142, 143, 24, 257, 44, 282, 283, 284, 285, 69, 70, 114, 99, 100, 102, 22, 74, 68, 25, 36, 345,
                          346, 347, 91, 92},
    BounceStrength = 0.05, -- camera bounce effect
    DrawTableScore = true, -- draw actual match score for viewers on top tables
    Framework = 0, -- 0: Standalone (no bets), 1: ESX, 2: QBCore
    EnableBets = true,
    MinBet = 1000,
    MaxBet = 10000,
    BetType = 2, -- 1: Choose the lower stake for both (P1 choose 1k, P2 choose 2k, stake will be 1k for both), 2: both can set their own stakes
    WinMultiplier = 2, -- winner gets 2x the stake
    SpawnDistance = 30.0,
    UIFontID = 0, -- fontId (used in menus)
    UIFontName = nil, -- name of the font (used in scaleforms and notifications)
    NotifySystem = 1, -- 1: native notify, 2: okokNotify, 3: esx_notify, 4: qb_notify, 5: ox_notify
    -- Enable rcore_stats? (https://store.rcore.cz/package/6273968)
    Rcore_Stats = GetResourceState("rcore_stats") ~= "missing"
}

Objects = {{
    pos = vector3(-1635.939453, -1052.837891, 12.148856),
    heading = 318.0
}, {
    pos = vector3(-1634.047485, -1054.425537, 12.148856),
    heading = 318.0
}}

Translation = {
    MATCH_SETTINGS = "Configurações da Partida",
    SLOW = "Lento",
    MEDIUM = "Médio",
    FAST = "Rápido",
    PUCK_SPEED = "Velocidade do Disco",
    PUCK_SPEED_DESC = "A velocidade máxima do disco.",
    MAX_SCORE = "Pontuação Máxima",
    MAX_SCORE_DESC = "A partida terminará após alguém atingir essa quantidade de gols.",
    START = "Iniciar",
    START_DESC = "Pressione isso para salvar as regras e iniciar a partida.",
    LATENCY_HIGH = "Parece que sua latência (%s) está muito alta. Seu jogo pode não ser tão bom.",
    LATENCY_NORMAL = "Sua latência é %s",
    END_WINNER = "vencedor.",
    END_LOSER = "perdedor.",
    END_STATS_SAVES = "%s defesas",
    END_STATS_SHOTS = "%s chutes a gol",
    END_STATS_GOALS = "%s gols",
    END_STATS_PLAYER = "%s m percorridos pelo jogador",
    END_STATS_PUCK = "%s m percorridos pelo disco",
    END_STATS_TITLE = "Hóquei de Mesa",
    TIMERBAR_PENALTY = "PENALIDADE",
    WAITING_FOR_OP = "Aguardando o oponente.",
    TABLE_USED = "Esta mesa de Hóquei de Mesa está sendo usada por outra pessoa.",
    NOT_CLOSE_ENOUGH = "Parece que você não está perto o suficiente. Afaste-se e tente novamente.",
    NOT_ENOUGH_PLAYERS = "Para começar o Hóquei de Mesa, peça para mais um jogador se aproximar da mesa.",
    WAITING_FOR_OP_TO_JOIN = "Aguardando seu oponente entrar na partida.",
    PRESS_TO_PLAY = "Pressione ~INPUT_CONTEXT~ para jogar Hóquei de Mesa.",
    MATCH_CANCELLED = "Partida Cancelada",
    MATCH_CANCELLED_DESC = "Um de vocês se desconectou ou cancelou a partida.",
    STARTING = "Aguardando jogadores...",
    WAITING_FOR_HOST = "%s está mudando as regras",
    PRESS_TO_CONFIRM_BET = "Pressione Enter para confirmar a aposta de %s na sua vitória.",
    READY = "Pronto",
    READY_DESC = "Pressione Enter se estiver pronto para jogar.",
    WAITING_FOR_OP_READY = "Por favor, aguarde até que seu oponente confirme que está pronto.",
    BETTINGS_CAPT = "Apostas",
    BETTINGS_INFOPANEL = "APOSTA: %s",
    BETTING_ACC = "Conta",
    BETTING_STAKE = "Aposta",
    BETTINGS_USE_ACC_DESC = "Use a conta '%s' para pagar a aposta. Máximo: %s",
    -- Atualização 1.1.0
    PADDLE_SKIN = "Estilo do Tacos",
    PADDLE_SKIN_DESC = "Escolha o estilo do seu taco.",
    PUCK_SKIN = "Estilo do Disco",
    PUCK_SKIN_DESC = "Escolha o estilo do disco.",
    COLOR_BLUE = "Azul",
    COLOR_GREEN = "Verde",
    COLOR_RED = "Vermelho",
    COLOR_ORANGE = "Laranja",
    COLOR_GRAY = "Cinza",
    COLOR_PURPLE = "Roxo",
    COLOR_PINK = "Rosa",
    COLOR_BLACK = "Preto",
    
    Get = function(key)
        return Translation[key] or "Missing Translation: " .. key
    end
}

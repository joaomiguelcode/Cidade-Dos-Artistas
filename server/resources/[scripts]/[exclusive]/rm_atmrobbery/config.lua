Config = {}

Config.robbery = {
    throwMoney = true,
    throwCount = 1,
    globalCooldown = false,
    cooldown = 900, -- 15 min
    discCount = 3, -- for drill
    itemList = {
        { itemName = "rope", shouldRemove = true },
        { itemName = "pendrive2", shouldRemove = true },
        { itemName = "drill", shouldRemove = true },
        { itemName = "c4", shouldRemove = true },
    },
    moneyAmounts = {
        ['rope'] = function() return math.random(11000, 13000) end,
        ['hackUsb'] = function() return math.random(7500, 9000) end,
        ['drill'] = function() return math.random(7000, 8500) end,
        ['bomb'] = function() return math.random(5500, 8000) end,
    },
    atmModels = {
        [`prop_fleeca_atm`] = {
            order = 1,
            rope = true,
            hackUsb = true,
            drill = true,
            bomb = true,
        },
        [`prop_atm_01`] = {
            order = 2,
            rope = true,
            hackUsb = true,
            drill = true,
            bomb = true,
        },
        [`prop_atm_02`] = {
            order = 3,
            rope = true,
            hackUsb = true,
            drill = true,
            bomb = true,
        },
        [`prop_atm_03`] = {
            order = 4,
            rope = true,
            hackUsb = true,
            drill = true,
            bomb = true,
        },
    },
}

Strings = {
    ['police_alert'] = 'Alerta de roubo de caixa eletrônico! Verifique seu GPS.',
    ['need_police'] = 'Não há policiais suficientes na cidade.',
    ['attach_vehicle'] = 'Pressione [E] para conectar a corda ao veículo',
    ["atm_cd"] = "Você não pode roubar este caixa eletrônico",
    ["detonate"] = "Detonar",
    ["use_rope"] = "Usar Corda",
    ["use_bomb"] = "Plantando Bomba",
    ["use_drill"] = "Usar Furadeira",
    ["use_hack"] = "Hackear Caixa Eletrônico",
    ["crack_atm"] = "Arrombar Caixa Eletrônico",
    ['need_this'] = 'Você precisa disso: %s',
}


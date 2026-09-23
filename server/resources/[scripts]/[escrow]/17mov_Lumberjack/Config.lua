Config = {}

Config.UseTarget = false                -- Change it to true if you want to use a target system. All settings about the target system are under target.lua file.
Config.UseBuiltInNotifications = true   -- Set to false if you want to use your framework notification style. Otherwise, the built in modern notifications will be used. Available only with modern UI
Config.RequiredItem = "none"                        -- Set it to anything you want, to require players to have an item in their inventory before they start the job
Config.RequireItemFromWholeTeam = true              -- If it's false, then only the host needs to have the required item, otherwise entire team needs it.
Config.RequiredJob = "none"             -- Set to "none" if you dont want to use jobs. If you are using target, you have to set "job" parameter inside every export in target.lua
Config.RequireJobAlsoForFriends = false          -- If it's false, then only the host needs to have the job, if it's true, then everybody from the group needs to have the Config.RequiredJob
Config.RequireOneFriendMinimum = false  -- Set to true if you want to force players to create teams
Config.letBossSplitReward = true                    -- If it's true, then boss can manage whole party rewards percent in menu. If set to false, then everybody will get same amount. Avalible only in modern UI
Config.multiplyRewardWhileWorkingInGroup = true     -- If it's false, then reward will stay by default. For example $1000 for completing whole job. If you set it to true, then the payout will depend on how many players is there in the group. For example, if for full job there's $1000, then if player works in a 4 member group, the reward will be $4000. (baseReward * partyCount)
Config.UseBetterPerformance = false                 -- When it's true, animations will be not be that smooth, but the resmon for clients will be much better. There's a 100 objects animation at one time, and it can't be better optimized, so if you don't like the resmon around 0.4 while processing logs, set it to true, but animations will be not that smooth.
Config.LimitLobbyToTwoMembers = false               -- Set to true to let peoples work just in group of 2

Config.EnableVehicleTeleporting = true               -- If its true, then the script will teleport the host to the company vehicle. If its false, then the company vehicle will apeear, but the whole squad will need to enter the car manually
Config.JobVehicleModel = "17mov_flatbed"

-- Legacy mode
Config.EnableVehicleLegacyMode = false               -- Enabling old system of vehicles (tractor + trailer) - it can generate some problems with FiveM trailer descync problems
Config.LegacyJobVehicleModel = "17mov_Tractor"       -- Model of the company log vehicle
Config.LegacyJobFlatbedModel = "17mov_logTrailer"    -- Model of the company flatbed trailer
Config.JobTruckModel = "17mov_LumberjackTruck"       -- Model of the company phantom
Config.JobForkliftModel = "forklift"                 -- Model of the company forklift
Config.PickupModel = "17mov_LumberJackcar2"          -- Model of the company pickup

Config.SoundsMultipler = 0.5        -- All sounds will be half of their default value. Range is 0.0-1.0

Config.ForksAttachment = {
    {
        rotation = vector3(0.0, 0.0, 90.0),
        offset = vector3(0.50, -0.4, 0.51),
    },
    {
        rotation = vector3(0.0, 0.0, 90.0),
        offset = vector3(0.50, 0.1, 0.51),
    },
    {
        rotation = vector3(0.0, 0.0, 90.0),
        offset = vector3(0.50, 0.5, 0.51),
    },
    {
        rotation = vector3(0.0, 0.0, 90.0),
        offset = vector3(0.50, -0.4, 1.01),
    },

}

Config.TreeRespawnTime = 60 * 20 * 1000             -- After this time, tree will respawn after cutting
Config.PenaltyAmount = 500                          -- Penalty that is levied when a player finishes work without a company vehicle
Config.DontPayRewardWithoutVehicle = false          -- Set to true if you want to not pay reward to players who want to end without company vehicle (accepting the penalty)
Config.DeleteVehicleWithPenalty = false             -- Delete Vehicle even if its not company vehicle
Config.JobCooldown = 0 * 60 -- 10 * 60              -- 0 minutes cooldown between making jobs (in brackets there's example for 10 minutes)
Config.GiveKeysToAllLobby = true                    -- Set to false if you want to give keys only to group creator while starting job

-- ^ Options: top-left, top-center, top-right, bottom-left, bottom-center, bottom-right

Config.RequireWorkClothes = true                   -- Set it to true, to change players clothes everytime they're starting the job.
Config.RestrictBlipToRequiredJob = false            -- Set to true, to hide job blip for players, who dont have RequiredJob. If requried job is "none", then this option will not have any effect.
Config.Blips = { -- Here you can configure Company blip.
    [1] = {
        Sprite = 516,
        Color = 0,
        Scale = 0.6,
        Pos = vector3(-552.9, 5348.58, 74.74),
        Label = '[EMPREGO] Madereira'
    },
}

Config.BlipsStyles = {
    ["treeBlip"] = {
        color = 25,
        label = "[LENHADOR] Árvore para cortar",
        sprite = 153,
        scale = 0.6
    },
    ["withdrawTruck"] = {
        color = 25,
        label = "~g~[LENHADOR]~s~ Alugar um caminhão",
        sprite = 477,
        scale = 0.7
    },
    ["sellLogs"] = {
        color = 1,
        label = "~g~[LENHADOR]~s~ Vender toras brutas",
        sprite = 272,
        scale = 1.0
    },
    ["processToPlanks"] = {
        color = 25,
        label = "~g~[LENHADOR]~s~ Processar toras em tábuas",
        sprite = 365,
        Scale = 0.6
    },
    ["processToChips"] = {
        color = 25,
        label = "~g~[LENHADOR]~s~ Processar toras em cavacos de madeira",
        sprite = 365,
        Scale = 0.6
    },
    ["rentForklift"] = {
        color = 25,
        label = "~g~[LENHADOR]~s~ Alugar uma empilhadeira para carregar tábuas",
        sprite = 88,
        scale = 0.6,
    },
    ["sellPlanks"] = {
        color = 2,
        label = "~g~[LENHADOR]~s~ Vender tábuas processadas",
        sprite = 272,
        scale = 1.0,
    },
    ["sellChips"] = {
        color = 5,
        label = "~g~[LENHADOR]~s~ Vender cavacos de madeira",
        sprite = 272,
        scale = 1.0,
    }
}

Config.MarkerSettings = {   -- used only when Config.UseTarget = false. Colors of the marker. Active = when player stands inside the marker.
    Active = {
        r = 235,
        g = 123,
        b = 54,
        a = 240,
    },
    UnActive = {
        r = 171,
        g = 91,
        b = 41,
        a = 240,
    }
}

Config.Stations = {
    ["processToPlanks"] = {
        {
            coords = vector4(-488.77, 5341.81, 84.01, 249.7),
            rotation = vec3(0, 0, -20.0),
            targetHeading = 250,
        },
        {
            coords = vector4(-487.04, 5346.5, 84.01, 249.7),
            rotation = vec3(0, 0, -20.0),
            targetHeading = 250,
        },
    },
    ["processToChips"] = {
        {
            coords = vector4(-478.6, 5320.78, 84.09, 338.44),
            rotation = vec3(0, 0, -110.0),
            targetHeading = 340.99,
        },
        {
            coords = vector4(-482.13, 5322.18, 84.09, 338.44),
            rotation = vec3(0, 0, -110.0),
            targetHeading = 340.99,
        },
    },
    ["sellChips"] = {
        {
            coords = vector4(1162.71, 2119.91, 57.08, 181.97),
            rotation = vec3(0, 0.0, 90.0),
            targetHeading = 181.97,
            pricePerPercent = math.random(8, 14),
            itemRewards = {
                -- {
                --     item_name = "water_bottle",
                --     chance = 50,
                --     amountPerPercent = 1,
                -- }
            },
        },
        {
            coords = vector4(2408.8, 4985.74, 47.67, 130.56),
            rotation = vec3(0, 0, -135.0),
            targetHeading = 137.34,
            pricePerPercent = math.random(8, 14),
            itemRewards = {
                -- {
                --     item_name = "water_bottle",
                --     chance = 50,
                --     amountPerPercent = 1,
                -- }
            },
        },
    },
    ["sellLogs"] = {
        {
            coords = vector4(1246.87, -3155.74, 7.0, 270.07),
            rotation = vec3(0, -3.0, 0.0),
            targetHeading = 270,
            pricePerLog = math.random(40, 80),
            itemRewards = {
                -- {
                --     item_name = "water_bottle",
                --     chance = 50,
                --     amountPerLog = 1,
                -- }
            },
        },
        {
            coords = vector4(165.57, -3151.59, 7.0, 272.06),
            rotation = vec3(0, 0, 0.0),
            targetHeading = 272.06,
            pricePerLog = math.random(40, 80),
            itemRewards = {
                -- {
                --     item_name = "water_bottle",
                --     chance = 50,
                --     amountPerLog = 1,
                -- }
            },
        },
    },
    ["sellPlanks"] = {
        {
            coords = vector4(119.48, -445.33, 42.33, 339.04),
            rotation = vec3(0, 0, 70.0),
            targetHeading = 339.04,
            pricePerPallete = math.random(200, 300),
            itemRewards = {
                -- {
                --     item_name = "water_bottle",
                --     chance = 50,
                --     amountPerPallete = 1,
                -- }
            },
        },
        {
            coords = vector4(-1095.58, -1638.03, 5.5, 35.11),
            rotation = vec3(0, 0, 125.0),
            targetHeading = 35.11,
            pricePerPallete = math.random(200, 300),
            itemRewards = {
                -- {
                --     item_name = "water_bottle",
                --     chance = 50,
                --     amountPerPallete = 1,
                -- }
            },
        },
        {
            coords = vector4(-477.95, -958.22, 24.99, 93.47),
            rotation = vec3(0, 0, 0.0),
            targetHeading = 93.47,
            pricePerPallete = math.random(200, 300),
            itemRewards = {
                -- {
                --     item_name = "water_bottle",
                --     chance = 50,
                --     amountPerPallete = 1,
                -- }
            },
        },
    },
}

Config.PlanksAttachments = {
    vector3(0.0, 4.0, 0.15),
    vector3(0.0, 0.1, 0.15),
    vector3(0.0, -3.9, 0.15),

    vector3(0.0, 4.0, 1.15),
    vector3(0.0, 0.1, 1.15),
    vector3(0.0, -3.9, 1.15),

    vector3(0.0, 4.0, 2.15),
    vector3(0.0, 0.1, 2.15),
    vector3(0.0, -3.9, 2.15),
}

Config.HintPlankAttachment = {
    offset = vec3(0.0, -6.9, 0.3),
    rotation = vec3(0.0, -3.5, 90.0)
}

Config.Locations = {       -- Here u can change all of the base job locations.
    DutyToggle = {
        Coords = {
            vector3(-552.8, 5348.55, 74.74),
        },
        CurrentAction = 'open_dutyToggle',
        CurrentActionMsg = 'Pressione ~INPUT_CONTEXT~ para ~y~iniciar/terminar~s~ o trabalho.',
        type = 'duty',
        scale = {x = 1.0, y = 1.0, z = 1.0},
    },
    FinishJob = {
        Coords = {
            vector3(-558.8, 5366.1, 70.3),
        },
        CurrentAction = 'finish_job',
        CurrentActionMsg = 'Pressione ~INPUT_CONTEXT~ para ~y~encerrar~s~ o trabalho.',
        scale = {x = 3.0, y = 3.0, z = 3.0},
    },
    ReturnLogCar = {
        Coords = {
            vector3(-569.05, 5336.43, 70.27),
        },
        CurrentAction = 'return_logcar',
        CurrentActionMsg = 'Pressione ~INPUT_CONTEXT~ para ~y~devolver~s~ o Carro de Toras.',
        scale = {x = 3.0, y = 3.0, z = 3.0},
    },
    WithdrawTruck = {
        Coords = {
            vector3(-566.0, 5326.07, 73.59),
        },
        CurrentAction = 'withdraw_truck',
        CurrentActionMsg = 'Pressione ~INPUT_CONTEXT~ para ~y~alugar~s~ um caminhão.',
        scale = {x = 1.0, y = 1.0, z = 1.0},
    },
    rentForklift = {
        Coords = {
            vector3(-560.8, 5282.81, 73.05),
        },
        CurrentAction = 'rent_forklift',
        CurrentActionMsg = 'Pressione ~INPUT_CONTEXT~ para ~y~alugar~s~ uma empilhadeira.',
        scale = {x = 1.0, y = 1.0, z = 1.0},
    },
}

Config.SpawnPoint = vector4(-558.8, 5366.1, 70.3, 345.66)                -- Company Tractor spawn point
Config.SpawnPoint2 = vector4(-572.32, 5374.91, 70.32, 253.07)            -- Company Tractor2 spawn point
Config.SpawnPointFlatbed = vector4(-562.06, 5356.17, 70.40, 341.15)      -- Company flatbed point
Config.SpawnPointTruck = vector4(-569.05, 5336.43, 70.27, 340.67)        -- Company truck spawn point
Config.SpawnPointForklift = vector4(-569.15, 5271.18, 70.26, 164.37)     -- Company forklift spawn point
Config.SpawnPointPickup = vector4(-572.47, 5369.57, 70.18, 253.64)       -- Company pickup spawn point

Config.EnableCloakroom = true                                            -- if false, then you can't see the Cloakroom button under Work Menu
Config.Clothes = {
    male = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 6, variation = 0},
        ["pants"] = {clotheId = 9, variation = 0},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 25, variation = 0},
        ["t-shirt"] = {clotheId = 59, variation = 1},
        ["torso"] = {clotheId = 117, variation = 2},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    },
    female = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 6, variation = 0},
        ["pants"] = {clotheId = 30, variation = 0},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 24, variation = 0},
        ["t-shirt"] = {clotheId = 15, variation = 0},
        ["torso"] = {clotheId = 109, variation = 2},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    },
}

Config.Panels = {
    ["rentTruck"] = {
        title = "Aluguel de Caminhão",
        subTitle = "O QUE É ISSO?",
        content = "Este é o local onde você pode trocar seu carregador de toras por um caminhão. O caminhão permitirá que você transporte o reboque de forma mais rápida e confortável. Para gerar o caminhão, por favor, pressione o botão Alugar abaixo.",
        confirmBtn = "Alugar Caminhão",
        closeBtn = "Fechar",
        photo = "assets/rentTruckPhoto.webp"
    },
    ["rentForklift"] = {
        title = "Aluguel de Empilhadeira",
        subTitle = "PRECISA CARREGAR SUAS PALETES?",
        content = "Bem-vindo à área de aluguel de empilhadeiras. Aqui, você pode alugar uma empilhadeira para ajudar a carregar suas paletes de tábuas processadas no seu reboque. A empilhadeira é uma ferramenta essencial para gerenciar seus produtos de madeira, projetada para tornar seu trabalho mais fácil e eficiente. Observe que a empilhadeira desaparecerá automaticamente quando sua tarefa de carregamento for concluída. Alugue uma empilhadeira agora e agilize sua operação de processamento de toras!",
        confirmBtn = "Alugar Empilhadeira",
        closeBtn = "Fechar",
        photo = "assets/rentForkliftPhoto.webp"
    },
    ["processToPlanks"] = {
        title = "Processamento de Madeira",
        subTitle = "PROCESSAR TORAS EM TÁBUAS?",
        content = "Bem-vindo ao centro de processamento de toras, onde você pode refinar suas toras coletadas em tábuas. Para criar uma única palete de tábuas, você precisará de %s toras, então neste momento você receberá %s paletes de tábuas. No entanto, seu reboque só pode acomodar até %s paletes por vez. Embora as tábuas rendam um preço mais alto, lembre-se de que o processo de conversão é demorado. Escolha sabiamente e aproveite seus esforços!",
        confirmBtn = "Processar Toras",
        closeBtn = "Fechar",
        photo = "assets/wood_process.webp"
    },
    ["processToChips"] = {
        title = "Processamento de Madeira",
        subTitle = "PROCESSAR TORAS EM CAVACOS DE MADEIRA?",
        content = "Bem-vindo ao centro de produção de cavacos de madeira, onde você pode processar suas toras coletadas em cavacos de madeira. Cada tora preencherá %s por cento do seu contêiner de cavacos. Lembre-se, seu reboque pode acomodar até %s contêineres por vez. Quando seu contêiner estiver cheio, o sistema interromperá automaticamente o processamento. Embora os cavacos de madeira possam ser mais demorados de produzir, sua demanda é alta. Escolha sabiamente e tire o máximo proveito de seus esforços!",
        confirmBtn = "Processar Toras",
        closeBtn = "Fechar",
        photo = "assets/wood_process.webp"
    },
    ["sellChips"] = {
        title = "Sandy Shores",
        subTitle = "BEM-VINDO A SANDY SHORES!",
        content = "Podemos comprar seus cavacos de madeira por <span style='color: #80FF00'> $%s </span> por porcentagem. Se você decidir vender, pressione o botão de venda. Talvez alguém ofereça um preço diferente. Escolha sabiamente!",
        confirmBtn = "Vender Cavacos",
        closeBtn = "Fechar",
        photo = "assets/sandyChips.webp"
    },
    ["sellLogs"] = {
        title = "Docks de LS",
        subTitle = "BEM-VINDO AO DEPÓSITO DE TORAS DOS DOCKS DE LS!",
        content = "Podemos comprar suas toras por <span style='color: #80FF00'> $%s </span> cada. Se você decidir vender, pressione o botão de venda. Talvez alguém ofereça um preço diferente. Escolha sabiamente!",
        confirmBtn = "Vender Toras",
        closeBtn = "Fechar",
        photo = "assets/lsdocks.webp"
    },
    ["sellPlanks"] = {
        title = "StoneSober Construtores",
        subTitle = "ENTRE NO CORAÇÃO DA CONSTRUÇÃO!",
        content = "Saudações, lenhador! A StoneSober, como uma entidade líder na indústria da construção, está pronta para adquirir suas tábuas bem trabalhadas. Nosso preço atual é de <span style='color: #80FF00'>$%s </span> por palete. Se desejar fechar negócio, basta pressionar o botão Vender Tábuas. No entanto, lembre-se de que pode haver outros dispostos a oferecer uma taxa diferente. A escolha é sua, escolha com discrição!",
        confirmBtn = "Vender Tábuas",
        closeBtn = "Fechar",
        photo = "assets/stonesober.webp"
    }
}

-- Here you can changea all translations used in client.lua, and server.lua. Dont forget to translate it also under the HTML and JS file.
Config.Lang = {
    -- Cliente
    ["no_permission"] = "Somente o dono do grupo pode fazer isso!",
    ["keybind"] = 'Interação do Marcador de Trabalho de Lenhador',
    ["too_far"] = "Seu grupo começou o trabalho, mas você está muito longe da sede.",
    ["kicked"] = "Você expulsou %s do grupo.",
    ["alreadyWorking"] = "Primeiro, complete a ordem anterior.",
    ["quit"] = "Você saiu do time.",
    ["nobodyNearby"] = "Não há ninguém por perto.",
    ["cantInvite"] = "Para convidar mais pessoas, você deve primeiro terminar o trabalho.",
    ["inviteSent"] = "Convite enviado!",
    ["spawnpointOccupied"] = "O local de spawn do carro ou trailer está ocupado.",
    
    ["startingTutorialLegacy"] = "Bem-vindo ao trabalho de Lenhador. Este trabalho oferece a liberdade de trabalhar de forma independente e no seu próprio ritmo. Inicialmente, você precisará cortar árvores e carregar a madeira no seu trailer usando o carregador. Lembre-se, para desconectar o trailer do carregador de toras, basta segurar a tecla H. Você tem a opção de processar a madeira em tábuas, cavacos ou vender troncos crus. Após terminar de recolher ou processar a madeira, você pode trocar o carregador de toras por um caminhão para vender seus produtos em vários locais do mapa. Observe que o preço do seu produto pode variar dependendo da localização.",
    ["AfterTreeFallTutorialLegacy"] = "Parabéns, você acabou de derrubar sua primeira árvore. Agora carregue-a no seu trailer usando o veículo carregador de toras. Use as teclas CTRL e SHIFT ou as teclas NUMPAD para controlar o braço.",
    ["afterLogsProcessLegacy"] = "Parabéns! Todas as suas toras foram processadas. Se ainda não fez, alugue uma empilhadeira e carregue todos os paletes no trailer. Depois, você pode vender seus paletes em alguns pontos. Todos estão marcados no mapa.",

    ["startingTutorial"] = "Bem-vindo ao trabalho de Lenhador. Este trabalho oferece a liberdade de trabalhar de forma independente e no seu próprio ritmo. Inicialmente, você precisará cortar árvores e carregar a madeira no seu trailer usando o guindaste hidráulico. Você pode controlá-lo com um controle remoto conectado ao trailer. Você tem a opção de processar a madeira em tábuas, cavacos ou vender troncos crus. Após terminar de recolher ou processar a madeira, você pode vender seus produtos em vários locais do mapa. Observe que o preço do seu produto pode variar dependendo da localização.",
    ["AfterTreeFallTutorial"] = "Parabéns, você acabou de derrubar sua primeira árvore. Agora carregue-a no seu trailer usando seu guindaste hidráulico.",
    ["afterLogsProcess"] = "Parabéns! Todas as suas toras foram processadas. Você pode carregar os paletes no seu trailer usando seu guindaste hidráulico. Depois, pode vender os paletes em alguns pontos. Todos estão marcados no mapa.",

    ["afterLoadingFullTrailer"] = "Parabéns! Você encheu seu trailer ao máximo. Agora você pode vender troncos crus ou processá-los em tábuas ou cavacos e, talvez, ganhar mais. Lembre-se de que os preços mudam dependendo da demanda.",
    ["afterSkipFullLoad"] = "Um dos seus três contêineres foi preenchido ao máximo ou todas as toras foram processadas. Transfira o contêiner cheio para o seu trailer quando estiver pronto, e o processamento continuará se você tiver mais toras.",
    ["afterChipsProcess"] = "Parabéns! Você converteu todas as suas toras em cavacos. Agora carregue o contêiner cheio no seu trailer e venda seus produtos em uma localização no mapa.",

    ["alreadyTakenControl"] = "Alguém já está usando o guindaste.",
    ["getController"] = "Pressione ~INPUT_CONTEXT~ para pegar o controle.",
    ["putDownController"] = "Pressione ~INPUT_CONTEXT~ para soltar o controle.",
    ["controlCrane"] = "Pressione ~INPUT_CONTEXT~ para controlar o guindaste.",
    ["controlingCrane"] = "Pressione ~INPUT_FRONTEND_PAUSE_ALTERNATE~ para sair\nPressione ~INPUT_MOVE_UP_ONLY~ ~INPUT_MOVE_DOWN_ONLY~ para mover para cima/baixo\nPressione ~INPUT_MOVE_LEFT_ONLY~ ~INPUT_MOVE_RIGHT_ONLY~ para girar\nPressione ~INPUT_COVER~ ~INPUT_TALK~ para dobrar/desdobrar o braço\nPressione ~INPUT_FRONTEND_LEFT~ ~INPUT_FRONTEND_RIGHT~ para girar o gancho\nPressione ~INPUT_ATTACK~ para anexar/desanexar.",
    ["failedToAttach"] = "Seu trailer está cheio ou este item não pode ser anexado.",

    ["notADriver"] = "Você precisa ser o motorista do veículo para finalizar o trabalho.",
    ["partyIsFull"] = "Falha ao enviar convite, seu grupo está cheio.",
    ["wrongReward1"] = "A porcentagem de pagamento deve estar entre 0 e 100.",
    ["wrongReward2"] = "A porcentagem total de todos os pagamentos excedeu 100%.",
    ["cut_smaller"] = "~r~[E] | ~w~Cortar",
    ["grab"] = "~r~[E] | ~w~Pegar",
    ["treeCutting"] = "Pressione ~INPUT_CONTEXT~ para começar a cortar a árvore.",
    ["useLogLoader"] = "Carregue no seu trailer usando o carregador de toras.",
    ["attachLogToLoader"] = "Pressione ~INPUT_CONTEXT~ para pegar a tora.",
    ["putLogOnLoader"] = "Pressione ~INPUT_CONTEXT~ para carregar a tora.",
    ["CantWithTrailer"] = "Você não pode devolver seu carro de toras com o trailer conectado. Segure H para desanexar.",
    ["notDriverOrValidModel"] = "Você não é o motorista ou não está no seu carregador de toras.",
    ["OpenSellingMenu"] = "Pressione ~INPUT_CONTEXT~ para abrir o menu de venda.",
    ["OpenProcessingMenu"] = "Pressione ~INPUT_CONTEXT~ para abrir o menu de processamento.",
    ["logsSellInProgress"] = "Espere até que todas as toras sejam descarregadas do trailer e volte à base para receber o pagamento.",
    ["planksSellInProgress"] = "Espere até que todos os paletes de tábuas sejam descarregados do trailer e volte à base para receber o pagamento.",
    ["chipsSellInProgress"] = "Espere até que todos os contêineres sejam descarregados do trailer e volte à base para receber o pagamento.",
    ["attachPlanksToForklift"] = "Pressione ~INPUT_CONTEXT~ para anexar o palete de tábuas ao garfo.",
    ["attachSkipToTrailer"] = "Pressione ~INPUT_CONTEXT~ para carregar o contêiner no trailer.",
    ["loadItOnFlatbed"] = "Agora vá carregar este palete no seu trailer. Cuidado, você não pode carregá-lo enquanto ainda houver toras nele.",
    ["loadPallete"] = "Pressione ~INPUT_CONTEXT~ para carregar o palete no seu trailer.",
    ["notEnoughLogs"] = "Você não tem toras suficientes no seu trailer para começar o processamento.",
    ["dontHaveLogs"] = "Você não tem toras para vender no seu trailer.",
    ["dontHavePlanks"] = "Você não tem tábuas para vender no seu trailer.",
    ["sold"] = "Você vendeu seus produtos com sucesso. Volte à base e finalize o trabalho para receber o pagamento.",
    ["fullTrailer"] = "Seu trailer não pode carregar mais material.",
    ["noSkipUnder"] = "Não há contêineres sob a saída de cavacos. Você não pode começar o processamento agora.",
    ["currentSkipIsFull"] = "O contêiner atual está cheio. Troque de contêiner ou carregue-o no trailer.",
    ["useJobTractor"] = "Use seu trator de trabalho.",
    ["useJobForklift"] = "Alugue e use sua empilhadeira de trabalho.",
    ["AttachSkip"] = "Pressione ~INPUT_CONTEXT~ para anexar o contêiner.",
    ["WaitUntilFullLoad"] = "O contêiner ainda está sendo preenchido. Aguarde um pouco.",
    ["newSkipSet"] = "Posicionamos automaticamente o seu contêiner sob a saída de cavacos. Você pode retomar o processamento de cavacos agora.",
    ["dontHaveChips"] = "Você não tem cavacos para vender.",
    ["wentWrong"] = "Algo deu errado. Tente novamente.",
    ["tooManyLogs"] = "Você já derrubou muitas toras. Primeiro, carregue-as.",
    ["cantLeaveLobby"] = "Você não pode sair do lobby enquanto estiver trabalhando. Primeiro, finalize o trabalho.",
    ["exploitFix"] = "Você não pode derrubar uma árvore enquanto alguém estiver por perto.",

    -- Servidor
    ["isAlreadyHost"] = "Este jogador já lidera seu time.",
    ["isBusy"] = "Este jogador já pertence a outro time.",
    ["hasActiveInvite"] = "Este jogador já tem um convite ativo de outra pessoa.",
    ["HaveActiveInvite"] = "Você já tem um convite ativo para entrar no time.",
    ["InviteDeclined"] = "Seu convite foi recusado.",
    ["InviteAccepted"] = "Seu convite foi aceito!",
    ["error"] = "Houve um problema ao entrar no time. Tente novamente mais tarde.",
    ["kickedOut"] = "Você foi expulso do time!",
    ["reward"] = "Você recebeu um pagamento de $",
    ["RequireOneFriend"] = "Este trabalho exige pelo menos um membro na equipe.",
    ["penalty"] = "Você pagou uma multa no valor de ",
    ["clientsPenalty"] = "O líder do time aceitou a punição. Você não recebeu o pagamento.",
    ["dontHaveReqItem"] = "Você ou alguém do seu time não tem o item necessário para começar o trabalho.",
    ["notEverybodyHasRequiredJob"] = "Nem todos os seus amigos têm o trabalho necessário.",
    ["someoneIsOnCooldown"] = "%s não pode começar o trabalho agora (tempo de espera: %s).",
    ["hours"] = "h",
    ["minutes"] = "m",
    ["seconds"] = "s",
    ["newBoss"] = "O líder do lobby anterior saiu do servidor. Você agora é o líder do time.",
    ["logCarHidden"] = "Seu carregador de toras foi devolvido. Agora você pode alugar seu caminhão.",
    ["LogCarNotHidden"] = "Você não escondeu seu carregador de toras. Precisa escondê-lo primeiro.",
    ["alreadyRentedOneTruck"] = "Você já alugou o caminhão da empresa. Não podemos lhe dar outro.",
    ["alreadyRentedOneForklift"] = "Você já alugou a empilhadeira da empresa. Não podemos lhe dar outra.",
    ["PlanksNotProcessed"] = "Você ainda não processou nenhuma tábua. Não podemos lhe dar uma empilhadeira.",
}

Config.Props = {
    tree = {
        hash = `prop_tree_cedar_02`,
        zOffset = -3.5,
    },
    logs = {
        hash = `prop_log_01`,
        height = 4.5,
    }
}

-- If you're using a Forests of SA, on our discord in snippets channels you can download a version which will not be conflicting with our map.

Config.TreeSpawningCoords = {
    vector3(-645.61, 5411.87, 47.29),
    vector3(-624.56, 5411.82, 49.45),
    vector3(-634.15, 5387.13, 53.53),
    vector3(-665.86, 5365.69, 58.91),
    vector3(-664.95, 5343.81, 62.6),
    vector3(-728.37, 5279.53, 78.79),
    vector3(-755.76, 5283.57, 83.55),
    vector3(-690.96, 5224.04, 94.91),
    vector3(-672.6, 5210.38, 95.82),
    vector3(-635.4, 5152.26, 111.67),
    vector3(-616.73, 5119.49, 120.38),
    vector3(-574.23, 5101.81, 122.5),
    vector3(-545.2, 5111.71, 112.19),
    vector3(-495.51, 5136.5, 103.01),
    vector3(-490.38, 5477.88, 82.8),
    vector3(-519.72, 5486.62, 70.91),
    vector3(-531.71, 5462.31, 70.49),
    vector3(-540.1, 5441.34, 68.05),
    vector3(-519.32, 5438.12, 72.49),
    vector3(-509.31, 5492.07, 74.33),
    vector3(-471.69, 5487.43, 84.03),
    vector3(-519.16, 5585.13, 65.9),
    vector3(-531.55, 5571.48, 62.81),
    vector3(-529.61, 5552.31, 64.9),
    vector3(-540.84, 5531.77, 61.61),
    vector3(-554.39, 5562.05, 56.39),
    vector3(-589.23, 5431.29, 57.21),
    vector3(-567.84, 5426.72, 61.0),
    vector3(-728.19, 5350.34, 63.3),
    vector3(-730.67, 5364.64, 60.48),
    vector3(-722.48, 5390.02, 55.06),
    vector3(-727.42, 5401.34, 50.97),
    vector3(-735.48, 5382.91, 55.01),
    vector3(-747.37, 5359.01, 59.81),
    vector3(-748.72, 5285.98, 80.81),
    vector3(-498.74, 5451.62, 79.77),
    vector3(-510.49, 5467.59, 76.77),
    vector3(-529.41, 5504.77, 66.24),
    vector3(-512.72, 5533.79, 70.85),
    vector3(-584.55, 5512.0, 52.62),
    vector3(-582.23, 5503.76, 54.13),
    vector3(-579.39, 5481.86, 58.13),
    vector3(-608.1, 5468.1, 56.72),
    vector3(-625.57, 5481.37, 52.83),
    vector3(-660.37, 5474.98, 51.37),
    vector3(-689.38, 5464.27, 47.12),
    vector3(-712.04, 5413.47, 49.73),
    vector3(-711.86, 5374.91, 60.19),
    vector3(-722.23, 5344.14, 65.91),
    vector3(-722.23, 5302.66, 72.62),
    vector3(-757.18, 5247.65, 95.3),
    vector3(-694.52, 5194.67, 103.17),
    vector3(-677.13, 5173.72, 108.07),
    vector3(-638.68, 5180.63, 99.24),
    vector3(-590.7, 5181.34, 95.81),
    vector3(-562.96, 5161.92, 101.71),
    vector3(-586.59, 5138.02, 111.49),
    vector3(-681.87, 5131.28, 124.55),
    vector3(-684.47, 5360.15, 65.19),
    vector3(-688.87, 4977.74, 179.36),
    vector3(-667.43, 5011.87, 164.96),
    vector3(-666.18, 5056.28, 147.76),
    vector3(-605.13, 5043.49, 140.34),
    vector3(-657.11, 5136.94, 124.69),
    vector3(-613.6, 5243.29, 72.38),
    vector3(-517.75, 5185.98, 89.79),
    vector3(-802.51, 5287.74, 86.55),
    vector3(-817.04, 5269.61, 87.95),
    vector3(-788.8, 5227.42, 104.26),
    vector3(-771.96, 5205.25, 111.4),
    vector3(-740.68, 5200.75, 104.22),
    vector3(-744.22, 5120.48, 135.0),
    vector3(-706.64, 5105.96, 132.03),
    vector3(-722.7, 5066.09, 143.12),
    vector3(-654.21, 5035.41, 154.55),
    vector3(-577.6, 5077.24, 130.64),
    vector3(-452.45, 5099.4, 130.34),
    vector3(-480.19, 5108.66, 118.7),
    vector3(-476.73, 5123.16, 113.17),
    vector3(-442.23, 5182.72, 110.59),
    vector3(-421.5, 5225.06, 124.34),
    vector3(-409.42, 5268.9, 127.09),
    vector3(-398.38, 5286.62, 125.51),
    vector3(-449.79, 5385.96, 80.44),
    vector3(-476.24, 5424.59, 68.6),
    vector3(-657.12, 5303.43, 66.9),
    vector3(-545.45, 5079.27, 123.59),
    vector3(-661.94, 5113.78, 129.96),
    vector3(-668.48, 5122.11, 127.41),
    vector3(-676.88, 5123.98, 127.41),
    vector3(-684.74, 5135.61, 122.77),
    vector3(-678.92, 5173.07, 108.17),
    vector3(-683.94, 5186.62, 105.05),
    vector3(-666.42, 5189.94, 102.1),
    vector3(-654.8, 5194.65, 96.19),
    vector3(-640.27, 5196.54, 92.35),
    vector3(-625.11, 5196.69, 89.46),
    vector3(-617.0, 5232.85, 73.87),
    vector3(-625.6, 5244.29, 73.76),
    vector3(-642.6, 5255.01, 74.94),
    vector3(-651.35, 5255.88, 75.64),
    vector3(-659.65, 5261.74, 76.39),
    vector3(-661.34, 5275.45, 74.48),
    vector3(-670.49, 5287.44, 72.19),
    vector3(-680.75, 5282.51, 72.4),
    vector3(-554.78, 5226.8, 74.85),
    vector3(-543.34, 5237.91, 74.79),
    vector3(-534.23, 5237.0, 78.31),
    vector3(-507.72, 5222.4, 87.04),
    vector3(-356.02, 5366.27, 132.39),
    vector3(-366.05, 5366.66, 125.56),
    vector3(-378.78, 5368.71, 118.62),
    vector3(-385.71, 5363.21, 115.97),
    vector3(-463.55, 5566.79, 72.87),
    vector3(-465.37, 5580.11, 71.19),
    vector3(-489.26, 5557.56, 72.94),
    vector3(-496.86, 5525.12, 75.06),
    vector3(-517.58, 5521.56, 69.58),
    vector3(-535.48, 5515.5, 64.09),
    vector3(-560.11, 5496.26, 59.52),
    vector3(-571.11, 5486.93, 58.88),
    vector3(-585.56, 5484.2, 56.46),
    vector3(-593.1, 5472.41, 57.3),
    vector3(-609.0, 5472.4, 55.09),
    vector3(-648.85, 5479.99, 51.72),
    vector3(-646.64, 5492.6, 51.28),
    vector3(-661.73, 5453.63, 50.43),
    vector3(-679.16, 5432.8, 47.39),
    vector3(-691.1, 5395.92, 53.59),
    vector3(-685.85, 5380.1, 58.06),
    vector3(-687.99, 5359.93, 65.76),
    vector3(-685.81, 5348.95, 67.62),
    vector3(-683.72, 5331.08, 68.33),
    vector3(-674.66, 5327.79, 66.42),
}

Config.Sounds = {
    TreeFallingMaxDistance = 75,            -- Tree fall will be heard up to 75 meters
    ChainsawNoiseMaxDistance = 250,         -- Chainsaw Will be heard up to 250 meters
    logRollProcessing = 60,                 -- Log to planks processing will be heard up to 250 meters
}

Config.TrailerSkipsAttachments = {
    vec3(0.0, 3.68, 0.3),
    vec3(0.0, -0.61, 0.3),
    vec3(0.0, -4.89, 0.3),
}

Config.HintSkip = {
    offset = vec3(0.0, -8.6, 1.0),
    rotation = vec3(0.0, -25.0, 90.0)
}

Config.TrailerLogsAttachments = {
    vector3(-1.03, 3.910, 0.65),
    vector3(-0.47, 3.910, 0.65),
    vector3(0.09, 3.910, 0.65),
    vector3(0.65, 3.910, 0.65),
    vector3(1.12, 3.910, 0.65),

    vector3(-1.03, -0.21, 0.65),
    vector3(-0.47, -0.21, 0.65),
    vector3(0.09, -0.21, 0.65),
    vector3(0.65, -0.21, 0.65),
    vector3(1.12, -0.21, 0.65),

    vector3(-1.03, -4.32, 0.65),
    vector3(-0.47, -4.32, 0.65),
    vector3(0.09, -4.32, 0.65),
    vector3(0.65, -4.32, 0.65),
    vector3(1.12, -4.32, 0.65),

    vector3(-1.03, 3.910, 1.18),
    vector3(-0.47, 3.910, 1.18),
    vector3(0.09, 3.910, 1.18),
    vector3(0.65, 3.910, 1.18),
    vector3(1.12, 3.910, 1.18),

    vector3(-1.03, -0.21, 1.18),
    vector3(-0.47, -0.21, 1.18),
    vector3(0.09, -0.21, 1.18),
    vector3(0.65, -0.21, 1.18),
    vector3(1.12, -0.21, 1.18),

    vector3(-1.03, -4.32, 1.18),
    vector3(-0.47, -4.32, 1.18),
    vector3(0.09, -4.32, 1.18),
    vector3(0.65, -4.32, 1.18),
    vector3(1.12, -4.32, 1.18),

    vector3(-1.03, 3.910, 1.66),
    vector3(-0.47, 3.910, 1.66),
    vector3(0.09, 3.910, 1.66),
    vector3(0.65, 3.910, 1.66),
    vector3(1.12, 3.910, 1.66),

    vector3(-1.03, -0.21, 1.66),
    vector3(-0.47, -0.21, 1.66),
    vector3(0.09, -0.21, 1.66),
    vector3(0.65, -0.21, 1.66),
    vector3(1.12, -0.21, 1.66),

    vector3(-1.03, -4.32, 1.66),
    vector3(-0.47, -4.32, 1.66),
    vector3(0.09, -4.32, 1.66),
    vector3(0.65, -4.32, 1.66),
    vector3(1.12, -4.32, 1.66),

    vector3(-1.03, 3.910, 2.19),
    vector3(-0.47, 3.910, 2.19),
    vector3(0.09, 3.910, 2.19),
    vector3(0.65, 3.910, 2.19),
    vector3(1.12, 3.910, 2.19),

    vector3(-1.03, -0.21, 2.19),
    vector3(-0.47, -0.21, 2.19),
    vector3(0.09, -0.21, 2.19),
    vector3(0.65, -0.21, 2.19),
    vector3(1.12, -0.21, 2.19),

    vector3(-1.03, -4.32, 2.19),
    vector3(-0.47, -4.32, 2.19),
    vector3(0.09, -4.32, 2.19),
    vector3(0.65, -4.32, 2.19),
    vector3(1.12, -4.32, 2.19),
}

Config.SkipsSpawnPoints = {
    {
        coords = vec3(-523.7699, 5298.66357, 73.4215),
        rotation = vec3(0.0, 0.0, 70.0),
    },
    {
        coords = vec3(-523.5898, 5285.729, 73.5347),
        rotation = vec3(0.0, 0.0, -20.0),
    },
    {
        coords = vec3(-525.6033, 5280.098, 73.5606461),
        rotation = vec3(0.0, 0.0, -20.0),
    },
}
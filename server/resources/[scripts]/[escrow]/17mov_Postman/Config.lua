Config = {}

Config.useModernUI = true               -- In March 2023 the jobs have passed huge rework, and the UI has been changed. Set it to false, to use OLD no longer supported UI.
    Config.splitReward = false          -- This option work's only when useModernUI is false. If this option is true, the payout is: (Config.OnePercentWorth * Progress ) / PartyCount, if false then: (Config.OnePercentWorth * Progress)
Config.UseBuiltInNotifications = true   -- Set to false if you want to use ur framework notification style. Otherwise, the built in modern notifications will be used.=

Config.letBossSplitReward = true                    -- If it's true, then boss can manage whole party rewards percent in menu. If you'll set it to false, then everybody will get same amount.
Config.multiplyRewardWhileWorkingInGroup = true     -- If it's false, then reward will stay by default. For example $1000 for completing whole job. If you'll set it to true, then the payout will depend on how many players is there in the group. For example, if for full job there's $1000, then if player will work in 4 member group, the reward will be $4000. (baseReward * partyCount)

Config.MailboxRenewalTime = 45000 * 60      -- Only one letter can be taken from one box. This is global, so if one player takes from one mailbox, then the next player can no longer take from it. This is the renewal time, in this case after 45 minutes you will be able to take letters from that particular mailbox again
Config.SyncMailboxStatus = true        -- If it's true, then when one player will collect letters from one box, then the second player will see information about the box is empty. If it's false, then every player has his own mailbox status. 
Config.Props = {
    --Props from which letters can be collected
    
    `prop_postbox_01a`,
    -- Add more if u want!
}

Config.UseTarget = false                        -- Change it to true if you want to use a target system. All setings about the target system are under target.lua file.
Config.RequiredJob = "none"                     -- Set to "none" if you dont want using jobs. If you are using target, you have to set "job" parameter inside every export in target.lua
Config.RequireJobAlsoForFriends = false          -- If it's false, then only host needs to have the job, if it's true then everybody from group needs to have the Config.RequiredJob
Config.RequiredItem = "none"                    -- Required Item needed to start the job. Set to "none", if you dont want to use RequiredItem
Config.RequireOneFriendMinimum = false          -- Set to true if you want to force players to create teams
Config.Scenario = "prop_human_parking_meter"    -- An animation that plays while searching a crate. Note: this must be a Scenario, not an animation
Config.JobVehicleModel = "17mov_PostmanCar"              -- Vehicle Job Model
Config.Price = 10                                -- 2$ per one letter

Config.RequireWorkClothes = true                   -- Set it to true, to change players clothes everytime when they're starting job.
Config.RequireItemFromWholeTeam = true              -- If it's false, then only host needs to have the required item, otherwise all team needs it.

Config.EnableVehicleTeleporting = true          -- If its true, then the script will teleport the host to the company vehicle. If its false, then the company vehicle will apeear, but the whole squad need to go enter the car manually
Config.PenaltyAmount = 500                      -- Penalty that is levied when a player finishes work without a company vehicle
Config.DontPayRewardWithoutVehicle = false      -- Set to true if you want to dont pay reward to players who want's to end without company vehicle (accepting the penalty)
Config.DeleteVehicleWithPenalty = false         -- Delete Vehicle even if its not company veh
Config.JobCooldown = 0 * 60 -- 10 * 60            -- 0 minutes cooldown between making jobs (in brackets there's example for 10 minutes)
Config.GiveKeysToAllLobby = true                -- Set to false if you want to give keys only for group creator while starting job
Config.ProgressBarOffset = "25px"                   -- Value in px of counter offset on screen
Config.ProgressBarAlign = "bottom-right"            -- Align of the progressbar

-- ^ Options: top-left, top-center, top-right, bottom-left, bottom-center, bottom-right

Config.RewardItemsToGive = {
    -- {
    --     item_name = "water",
    --     chance = 100,
    --     amountPerMailbox = 1,
    -- },
}

Config.RestrictBlipToRequiredJob = false            -- Set to true, to hide job blip for players, who dont have RequiredJob. If requried job is "none", then this option will not have any effect.
Config.Blips = {                                -- Here you can configure Company blip.
    [1] = {
        Sprite = 365,
        Color = 0,
        Scale = 0.6,
        Pos = vector3(-232.16, -915.15, 32.31),
        Label = '[EMPREGO] Carteiro'
    },
}

Config.MarkerSettings = {                       -- used only when Config.UseTarget = false. Colors of the marker. Active = when player stands inside the marker.
    Active = {
        r = 88, 
        g = 105,
        b = 255,
        a = 200,
    },
    UnActive = {
        r = 43,
        g = 57,
        b = 181,
        a = 200,
    }
}

Config.Locations = {                            -- Here u can change all of the base job locations. 
    DutyToggle = {
        Coords = {
            vector3(-232.16, -915.15, 32.31),
        },
        CurrentAction = 'open_dutyToggle',
        CurrentActionMsg = 'Pressione ~INPUT_CONTEXT~ para ~y~iniciar/terminar~s~ trabalho.',
        type = 'duty',
        scale = {x = 1.0, y = 1.0, z = 1.0}
    },
    FinishJob = {
        Coords = {
            vector3(-276.66, -894.68, 31.08),
        },
        CurrentAction = 'finish_job',
        CurrentActionMsg = 'Pressione ~INPUT_CONTEXT~ para ~y~end ~s~working.',
        scale = {x = 3.0, y = 3.0, z = 3.0}
    },

}

Config.SpawnPoint = vector4(-276.66, -894.68, 31.08, 337.31)  -- Vehicle spawn point
Config.EnableCloakroom = true                                 -- Set to false if you want to hide the "CLoakroom" button under WorkMenu

Config.Clothes = {
    male = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 0, variation = 0},
        ["pants"] = {clotheId = 96, variation = 0},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 54, variation = 0},
        ["t-shirt"] = {clotheId = 15, variation = 0},
        ["torso"] = {clotheId = 250, variation = 0},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    },

    female = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 14, variation = 0},
        ["pants"] = {clotheId = 6, variation = 0},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 0, variation = 0},
        ["t-shirt"] = {clotheId = 15, variation = 0},
        ["torso"] = {clotheId = 258, variation = 0},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    }
}

Config.Lang = {
    -- Cliente
    ["no_permission"] = "Apenas o proprietário da equipe pode fazer isso!",
    ["keybind"] = 'Interação com Marcador',
    ["too_far"] = "Sua equipe começou o trabalho, mas você está muito longe da sede. Você ainda pode se juntar a eles.",
    ["kicked"] = "Você expulsou %s da equipe",
    ["alreadyWorking"] = "Primeiro, complete o pedido anterior.",
    ["quit"] = "Você saiu da equipe",
    ["cantSpawnVeh"] = "O local de spawn do caminhão está ocupado.",
    ["nobodyNearby"] = "Não há ninguém por perto",
    ["pickLetter"] = "Coletar cartas",
    ["checking"] = "Você está verificando a caixa de correio",
    ["spawnpointOccupied"] = "O local de spawn do carro está ocupado",
    ["notADriver"] = "Você precisa ser o motorista do veículo para encerrar o trabalho",
    ["cantInvite"] = "Para poder convidar mais pessoas, você deve primeiro terminar o trabalho",
    ["tutorial"] = "O trabalho envolve coletar cartas das caixas de correio. Depressa, uma caixa de correio pode ser coletada apenas uma vez de vez em quando, não deixe a concorrência te ultrapassar! Você pode encontrar essas caixas de correio perto das principais estradas.",
    ["wrongReward1"] = "A porcentagem de pagamento deve estar entre 0 e 100",
    ["wrongReward2"] = "A porcentagem total de todos os pagamentos excedeu 100%",
    ["partyIsFull"] = "Falha ao enviar o convite, seu grupo está cheio",
    ["inviteSent"] = "Convite Enviado!",
    ["cantLeaveLobby"] = "Você não pode sair do lobby enquanto está trabalhando. Primeiro, encerre o trabalho.",
    ["wrongVeh"] = "Seu último veículo não é o veículo da sua empresa. Você deve dirigir o veículo da empresa",

    -- Servidor
    ["isAlreadyHost"] = "Este jogador lidera sua equipe.",
    ["isBusy"] = "Este jogador já pertence a outra equipe.",
    ["hasActiveInvite"] = "Este jogador já tem um convite ativo de alguém.",
    ["HaveActiveInvite"] = "Você já tem um convite ativo para se juntar à equipe.",
    ["InviteDeclined"] = "Seu convite foi recusado.",
    ["InviteAccepted"] = "Seu convite foi aceito!",
    ["error"] = "Houve um problema ao entrar em uma equipe. Por favor, tente novamente mais tarde.",
    ["kickedOut"] = "Você foi expulso da equipe!",
    ["reward"] = "Você recebeu um pagamento de $",
    ["RequireOneFriend"] = "Este trabalho requer pelo menos um membro da equipe",
    ["deposit"] = "Coletamos o depósito para o carro",
    ["depositReturned"] = "Devolvemos o depósito para o carro",
    ["empty"] = "Alguém já coletou cartas desta caixa de correio, tente novamente mais tarde",
    ["collected"] = "Você coletou cartas",
    ["broken"] = "A caixa de correio foi danificada. As cartas não podem ser coletadas dela",
    ["dontHaveReqItem"] = "Você ou alguém da sua equipe não tem o item necessário para começar o trabalho",
    ["penalty"] = "Você pagou uma multa no valor de ",
    ["clientsPenalty"] = "O anfitrião da equipe aceitou a punição. Você não recebeu o pagamento",
    ["notEverybodyHasRequiredJob"] = "Nem todos os seus amigos têm o trabalho necessário",
    ["someoneIsOnCooldown"] = "%s não pode começar o trabalho agora (tempo de espera: %s)",
    ["hours"] = "h",
    ["minutes"] = "m",
    ["seconds"] = "s",
    ["newBoss"] = "O chefe do lobby anterior saiu do servidor. Você agora é o líder da equipe",
}
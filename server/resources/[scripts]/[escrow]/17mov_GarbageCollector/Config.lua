Config = {}

Config.useModernUI = true               -- In March 2023 the jobs have passed huge rework, and the UI has been changed. Set it to false, to use OLD no longer supported UI.
    Config.splitReward = false          -- This option work's only when useModernUI is false. If this option is true, the payout is: (Config.OnePercentWorth * Progress ) / PartyCount, if false then: (Config.OnePercentWorth * Progress)

Config.UseBuiltInNotifications = true   -- Set to false if you want to use ur framework notification style. Otherwise, the built in modern notifications will be used.=
Config.letBossSplitReward = true                    -- If it's true, then boss can manage whole party rewards percent in menu. If you'll set it to false, then everybody will get same amount.
Config.multiplyRewardWhileWorkingInGroup = true     -- If it's false, then reward will stay by default. For example $1000 for completing whole job. If you'll set it to true, then the payout will depend on how many players is there in the group. For example, if for full job there's $1000, then if player will work in 4 member group, the reward will be $4000. (baseReward * partyCount)
Config.Price = 50            -- Price per one bag inside trashmaster. 100 is maximum so full trash = 200$ / partyCount

Config.UseTarget = false                 -- Change it to true if you want to use a target system. All setings about the target system are under target.lua file.
Config.RequiredJob = "none"             -- Set to "none" if you dont want using jobs. If you are using target, you have to set "job" parameter inside every export in target.lua
Config.RequireJobAlsoForFriends = false          -- If it's false, then only host needs to have the job, if it's true then everybody from group needs to have the Config.RequiredJob
Config.RequireOneFriendMinimum = false  -- Set to true if you want to force players to create teams
Config.EnableGamePoolDeleting = true    -- Set to false only when using old versions of FXServer. May cause bag removal errors

Config.JobVehicleModel = "trash"                -- Model of the company car
Config.VehicleBackBone = "seat_dside_r1"        -- Bone used only when Config.UseTarget = false. 3D text is displayed on the coordinates of this bone telling us to put the bag in the trunk
Config.VehicleBackBoneCenter = "brakelight_l"   -- Bone used only when Config.UseTarget = false. On the cords of this bone, a player walks up to throw the bag
Config.PenaltyAmount = 500                      -- Penalty that is levied when a player finishes work without a company vehicle
Config.DeleteVehicleWithPenalty = false         -- Delete Vehicle even if its not company veh
Config.DontPayRewardWithoutVehicle = false      -- Set to true if you want to dont pay reward to players who want's to end without company vehicle (accepting the penalty)
Config.EnableVehicleTeleporting = true          -- If its true, then the script will teleport the host to the company vehicle. If its false, then the company vehicle will apeear, but the whole squad need to go enter the car manually
Config.JobCooldown = 0 * 60 -- 10 * 60            -- 0 minutes cooldown between making jobs (in brackets there's example for 10 minutes)
Config.GiveKeysToAllLobby = true                -- Set to false if you want to give keys only for group creator while starting job
Config.ProgressBarOffset = "25px"                   -- Value in px of counter offset on screen
Config.ProgressBarAlign = "bottom-right"            -- Align of the progressbar

Config.keybindSettings = {
    bagsInteractionKey = 38,
    bagsInteractionkeyString = "~r~[E] | ~s~"
}

-- ^ Options: top-left, top-center, top-right, bottom-left, bottom-center, bottom-right

Config.RewardItemsToGive = {
    -- {
    --     item_name = "water",
    --     chance = 100,
    --     amountPerBag = 1,
    -- },
}

Config.EnableExploitFix = false                     -- If somebody is close to you, you'll not able to pick up bag. This will prevent exploit of copying bugs but will be also annoying
Config.RequiredItem = "none"                        -- Set it to anything you want, to require players to have some item in their inventory before they start the job
Config.RequireItemFromWholeTeam = true              -- If it's false, then only host needs to have the required item, otherwise all team needs it.

Config.RequireFullJob = false                       -- Set it to true, if you want players first to have 100% of progress, otherwise they'll not be able to end job.
Config.RequireWorkClothes = true                   -- Set it to true, to change players clothes everytime when they're starting job.

Config.RestrictBlipToRequiredJob = false            -- Set to true, to hide job blip for players, who dont have RequiredJob. If requried job is "none", then this option will not have any effect.
Config.Blips = { -- Here you can configure Company blip.
    [1] = {
        Sprite = 318,
        Color = 0,
        Scale = 0.6,
        Pos = vector3(-321.56, -1545.74, 30.01),
        Label = '[EMPREGO] Lixeiro'
    },
}

Config.PropsHashes = {      -- Hashes of bags that we can pick up
    `bkr_prop_fakeid_binbag_01`,
	`hei_prop_heist_binbag`,
	`prop_cs_rub_binbag_01`,
	`prop_cs_street_binbag_01`,
	`prop_ld_rub_binbag_01`,
	`prop_rub_binbag_01`,
	`prop_rub_binbag_04`,
	`prop_rub_binbag_05`,
	`prop_rub_binbag_sd_01`,
	`prop_rub_binbag_sd_02`,
	`p_binbag_01_s`,
    `p_rub_binbag_test`,
    `prop_rub_binbag_06`,
	`prop_rub_binbag_08`, 
    `prop_rub_binbag_01b`,
	`prop_rub_binbag_03`,
	`prop_rub_binbag_03b`,
}

Config.Rotations = {       -- Used with the AttachEntityToEntity() function, when you pick up a bag, it will hook onto the specified values:
    [`bkr_prop_fakeid_binbag_01`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.6, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`hei_prop_heist_binbag`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.05, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_cs_rub_binbag_01`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.04, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_cs_street_binbag_01`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_ld_rub_binbag_01`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_01`] = { boneIndex = 6286, xPos = 0.0, yPos = -0.18, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_04`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -1.0, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_05`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.64, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_sd_01`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_sd_02`] = { boneIndex = 6286, xPos = 0.0, yPos = -0.12, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`p_binbag_01_s`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
    [`p_rub_binbag_test`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
    [`prop_rub_binbag_06`] = { boneIndex = 6286, xPos = 0, yPos = -0.10, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_08`] = { boneIndex = 6286, xPos = 0, yPos = -0.10, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
    [`prop_rub_binbag_01b`] = { boneIndex = 6286, xPos = 0, yPos = -0.10, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_03`] = { boneIndex = 6286, xPos = 0, yPos = -0.10, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_03b`] = { boneIndex = 6286, xPos = 0, yPos = -0.10, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
}

Config.MarkerSettings = {   -- used only when Config.UseTarget = false. Colors of the marker. Active = when player stands inside the marker.
    Active = {
        r = 89, 
        g = 198,
        b = 100,
        a = 200,
    },
    UnActive = {
        r = 34,
        g = 117,
        b = 42,
        a = 200,
    }
}

Config.Locations = {       -- Here u can change all of the base job locations. 
    DutyToggle = {
        Coords = {
            vector3(-321.64309692383,-1545.8939208984,31.019908905029),
        },
        CurrentAction = 'open_dutyToggle',
        CurrentActionMsg = 'Pressione ~INPUT_CONTEXT~ para ~y~iniciar/terminar~s~ trabalho.',
        type = 'duty',
        scale = {x = 1.0, y = 1.0, z = 1.0}
    },
    FinishJob = {
        Coords = {
            vector3(-329.48321533203,-1522.9837646484,27.534698486328),
        },
        CurrentAction = 'finish_job',
        CurrentActionMsg = 'Pressione ~INPUT_CONTEXT~ para ~y~end ~s~working.',
        scale = {x = 3.0, y = 3.0, z = 3.0}
    },

}

Config.SpawnPoint = vector4(-316.98, -1537.58, 26.64, 338.0)  -- Company car spawn point
Config.EnableCloakroom = true                                 -- if false, then you can't see the Cloakroom button under Work Menu
Config.Clothes = {

    -- Here you can configure clothes. More information on: https://docs.fivem.net/natives/?_0xD4F7B05C. Under this link you can see what id means what component.

    male = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 30, variation = 0},
        ["pants"] = {clotheId = 36, variation = 0},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 56, variation = 1},
        ["t-shirt"] = {clotheId = 59, variation = 1},
        ["torso"] = {clotheId = 56, variation = 0},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    },

    female = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 57, variation = 0},
        ["pants"] = {clotheId = 35, variation = 0},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 59, variation = 1},
        ["t-shirt"] = {clotheId = 36, variation = 1},
        ["torso"] = {clotheId = 49, variation = 1},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    }
}

Config.Lang = {

    -- Aqui você pode alterar todas as traduções usadas no client.lua e server.lua. Não se esqueça de traduzir também os arquivos HTML e JS.

    -- Cliente
    ["no_permission"] = "Apenas o dono da equipe pode fazer isso!",
    ["keybind"] = 'Interação com Marcador de Lixo',
    ["too_far"] = "Sua equipe começou a trabalhar, mas você está muito longe da sede. Você ainda pode se juntar a eles.",
    ["kicked"] = "Você expulsou %s da equipe",
    ["alreadyWorking"] = "Primeiro, complete o pedido anterior.",
    ["quit"] = "Você saiu da equipe",
    ["pickGarbage"] = "Recolher o lixo",
    ["putGarbage"] = "Colocar o lixo",
    ["cantSpawnVeh"] = "O local de spawn do caminhão está ocupado.",
    ["full"] = "O caminhão de lixo já está cheio!",
    ["wrongCar"] = "Este não é o seu caminhão de lixo",
    ["CarNeeded"] = "Você precisa do seu caminhão de lixo para terminar o trabalho.",
    ["nobodyNearby"] = "Não há ninguém por perto",
    ["cantInvite"] = "Para convidar mais pessoas, você deve primeiro finalizar o trabalho",
    ["inviteSent"] = "Convite enviado!",
    ["spawnpointOccupied"] = "O local de spawn do carro está ocupado",
    ["notFullJob"] = "Você precisa fazer 100% de progresso antes de finalizar o trabalho",
    ["notADriver"] = "Você precisa ser o motorista do veículo para finalizar o trabalho",
    ["wrongReward1"] = "A porcentagem de pagamento deve estar entre 0 e 100",
    ["wrongReward2"] = "A porcentagem total de todos os pagamentos excedeu 100%",
    ["tutorial"] = "O trabalho envolve coletar lixo da cidade. Você pode coletar qualquer saco de lixo que estiver no chão. Após pegar o saco, coloque-o no caminhão de lixo. Você pode finalizar o trabalho a qualquer momento. Quando decidir finalizar, basta retornar à base e guardar o veículo. O pagamento depende da quantidade de sacos coletados. Alguns sacos podem não estar sincronizados entre certos jogadores.",
    ["partyIsFull"] = "Falha ao enviar o convite, seu grupo está cheio",
    ["exploit"] = "Você não pode pegar o saco enquanto alguém estiver por perto", -- Somente se Config.EnableExploitFix for verdadeiro
    ["cantLeaveLobby"] = "Você não pode sair da equipe enquanto estiver trabalhando. Primeiro, finalize o trabalho.",

    -- Servidor
    ["isAlreadyHost"] = "Este jogador já lidera sua equipe.",
    ["isBusy"] = "Este jogador já pertence a outra equipe.",
    ["hasActiveInvite"] = "Este jogador já tem um convite ativo de alguém.",
    ["HaveActiveInvite"] = "Você já tem um convite ativo para entrar na equipe.",
    ["InviteDeclined"] = "Seu convite foi recusado.",
    ["InviteAccepted"] = "Seu convite foi aceito!",
    ["error"] = "Houve um problema ao entrar na equipe. Por favor, tente novamente mais tarde.",
    ["kickedOut"] = "Você foi expulso da equipe de coleta de lixo!",
    ["reward"] = "Você recebeu um pagamento de $",
    ["RequireOneFriend"] = "Este trabalho requer pelo menos um membro da equipe",
    ["penalty"] = "Você pagou uma multa no valor de ",
    ["clientsPenalty"] = "O anfitrião da equipe aceitou a punição. Você não recebeu o pagamento",
    ["dontHaveReqItem"] = "Você ou alguém da sua equipe não tem o item necessário para começar o trabalho",
    ["notEverybodyHasRequiredJob"] = "Nem todos os seus amigos têm o trabalho necessário",
    ["someoneIsOnCooldown"] = "%s não pode começar o trabalho agora (tempo de espera: %s)",
    ["hours"] = "h",
    ["minutes"] = "m",
    ["seconds"] = "s",
    ["newBoss"] = "O líder anterior saiu do servidor. Agora você é o líder da equipe",
}
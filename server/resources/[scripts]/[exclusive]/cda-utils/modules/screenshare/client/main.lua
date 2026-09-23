local ScreenShare = {}

RegisterNetEvent('cda-utils:showScreenshare', function(suspectPlayers)
    local options = {}

    options[#options + 1] = {
        title = '1 - Adicionar Suspeito',
        description = 'Adicione um novo jogador à lista de suspeitos.',
        onSelect = function()
            ScreenShare:openDialog()
        end
    }

    options[#options + 1] = {
        title = "2 - Checar Suspeitos",
        description = 'Verifique o status de todos os suspeitos.',
        onSelect = function()
            TriggerServerEvent('cda-utils:checkAllSuspects', suspectPlayers)
        end
    }

    local function sortOptions(a, b)
        return a.citizenId < b.citizenId
    end

    for _, suspect in ipairs(suspectPlayers) do
        local suspectOptions = {
            {
                title = 'Remover Suspeito',
                description = 'Remove este jogador da lista.',
                onSelect = function()
                    TriggerServerEvent('cda-utils:RemPlayer', suspect.citizenId)
                end
            },
            {
                title = 'Voltar',
                onSelect = function()
                    lib.showContext('suspectList')
                end
            }
        }

        lib.registerContext({
            id = 'suspect_' .. suspect.citizenId,
            title = suspect.label,
            options = suspectOptions
        })

        options[#options + 1] = {
            title = suspect.label,
            description = 'ID: ' .. suspect.citizenId,
            onSelect = function()
                lib.showContext('suspect_' .. suspect.citizenId)
            end
        }
    end


    lib.registerContext({
        id = 'suspectList',
        title = 'Lista de Suspeitos',
        options = options
    })

    lib.showContext('suspectList')
end)


function ScreenShare:openDialog()
    local input = lib.inputDialog('Adicionar novo player para a lista de screenshare', {
        {type = 'number', label = 'ID do Jogador', description = 'Insira o ID do jogador', min = 1}
    })
    if input then
        local citizenId = input[1]
        TriggerServerEvent('cda-utils:AddPlayer', citizenId)
    else
        lib.notify({
            title = 'ID Inválido',
            description = 'O ID adicionado é inválido!',
            position = 'bottom',
            type = 'error'
        })
    end
end
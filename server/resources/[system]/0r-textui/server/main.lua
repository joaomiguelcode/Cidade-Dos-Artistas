local Global3DTexts = {}
local Player3DTexts = {}

--- Normaliza o alvo de envio (se nil ou -1, broadcast para todos)
local function resolveTarget(target)
    if target == nil or target == -1 or target == "-1" then
        return -1
    end
    return tonumber(target) or -1
end

--- Exibe a TextUI 2D na tela
--- @param target number|nil ID do jogador ou nil/-1 para todos
--- @param text string Texto a ser exibido
--- @param key string|nil Tecla exibida no botão
--- @param hide number|nil Tempo em ms para ocultar automaticamente
function displayTextUI(target, text, key, hide)
    local targetId = resolveTarget(target)
    TriggerClientEvent("0r-textui:client:displayTextUI", targetId, text, key, hide)
end

--- Oculta a TextUI 2D da tela
--- @param target number|nil ID do jogador ou nil/-1 para todos
function hideTextUI(target)
    local targetId = resolveTarget(target)
    TriggerClientEvent("0r-textui:client:hideTextUI", targetId)
end

--- Altera o texto e tecla da TextUI 2D ativa
--- @param target number|nil ID do jogador ou nil/-1 para todos
--- @param text string Novo texto
--- @param key string|nil Nova tecla
function changeText(target, text, key)
    local targetId = resolveTarget(target)
    TriggerClientEvent("0r-textui:client:changeText", targetId, text, key)
end

--- Cria uma interação de TextUI 3D no mundo
--- @param target number|nil ID do jogador ou nil/-1 para salvar e sincronizar globalmente
--- @param id string|number Identificador único
--- @param data table Configurações do ponto 3D (coords, text, key, displayDist, interactDist, etc.)
function create3DTextUI(target, id, data)
    local targetId = resolveTarget(target)
    if targetId == -1 then
        Global3DTexts[id] = data
    end
    TriggerClientEvent("0r-textui:client:create3DTextUI", targetId, id, data)
end

--- Remove uma interação de TextUI 3D do mundo
--- @param target number|nil ID do jogador ou nil/-1 para todos
--- @param id string|number Identificador único
function delete3DTextUI(target, id)
    local targetId = resolveTarget(target)
    if targetId == -1 then
        Global3DTexts[id] = nil
    end
    TriggerClientEvent("0r-textui:client:delete3DTextUI", targetId, id)
end

--- Atualiza o texto e tema de uma interação 3D existente
--- @param target number|nil ID do jogador ou nil/-1 para todos
--- @param id string|number Identificador único
--- @param text string Novo texto
--- @param theme string|nil "green" ou "red"
function update3DTextUI(target, id, text, theme)
    local targetId = resolveTarget(target)
    if targetId == -1 and Global3DTexts[id] then
        Global3DTexts[id].text = text
        if theme then
            Global3DTexts[id].theme = theme
        end
    end
    TriggerClientEvent("0r-textui:client:update3DTextUI", targetId, id, text, theme)
end

--- Cria uma interação 3D fixada em um jogador específico
--- @param target number|nil ID dos jogadores que verão a interação (-1 para todos)
--- @param id string|number Identificador único
--- @param data table Dados contendo o serverId em data.id, texto, tecla, etc.
function create3DTextUIOnPlayers(target, id, data)
    local targetId = resolveTarget(target)
    if data and data.id then
        local attachedPlayer = tonumber(data.id)
        if attachedPlayer then
            if not Player3DTexts[attachedPlayer] then
                Player3DTexts[attachedPlayer] = {}
            end
            Player3DTexts[attachedPlayer][id] = true
        end
    end
    TriggerClientEvent("0r-textui:client:create3DTextUIOnPlayers", targetId, id, data)
end

--- Remove a interação 3D fixada no jogador
--- @param target number|nil ID dos jogadores ou -1 para todos
--- @param id string|number Identificador único
function delete3DTextUIOnPlayers(target, id)
    local targetId = resolveTarget(target)
    -- Remove de qualquer registro de jogador
    for src, ids in pairs(Player3DTexts) do
        if ids[id] then
            ids[id] = nil
        end
    end
    TriggerClientEvent("0r-textui:client:delete3DTextUIOnPlayers", targetId, id)
end

--- Cria interação 3D sobre uma entidade
--- @param target number|nil ID dos jogadores ou -1 para todos
--- @param id string|number Identificador único
--- @param data table Dados da entidade e texto
function create3DTextUIOnEntity(target, id, data)
    local targetId = resolveTarget(target)
    TriggerClientEvent("0r-textui:client:create3DTextUIOnEntity", targetId, id, data)
end

-- ==========================================
-- REGISTRO DE EXPORTS DO SERVIDOR
-- ==========================================
exports("displayTextUI", displayTextUI)
exports("hideTextUI", hideTextUI)
exports("changeText", changeText)
exports("create3DTextUI", create3DTextUI)
exports("delete3DTextUI", delete3DTextUI)
exports("update3DTextUI", update3DTextUI)
exports("create3DTextUIOnPlayers", create3DTextUIOnPlayers)
exports("delete3DTextUIOnPlayers", delete3DTextUIOnPlayers)
exports("create3DTextUIOnEntity", create3DTextUIOnEntity)

-- ==========================================
-- EVENTOS DE REDE (SERVER-SIDE)
-- ==========================================

RegisterNetEvent("0r-textui:server:displayTextUI", function(target, text, key, hide)
    displayTextUI(target, text, key, hide)
end)
RegisterNetEvent("0r-textui:displayTextUI", function(target, text, key, hide)
    displayTextUI(target, text, key, hide)
end)

RegisterNetEvent("0r-textui:server:hideTextUI", function(target)
    hideTextUI(target)
end)
RegisterNetEvent("0r-textui:hideTextUI", function(target)
    hideTextUI(target)
end)

RegisterNetEvent("0r-textui:server:changeText", function(target, text, key)
    changeText(target, text, key)
end)
RegisterNetEvent("0r-textui:changeText", function(target, text, key)
    changeText(target, text, key)
end)

RegisterNetEvent("0r-textui:server:create3DTextUI", function(target, id, data)
    create3DTextUI(target, id, data)
end)
RegisterNetEvent("0r-textui:create3DTextUI", function(target, id, data)
    create3DTextUI(target, id, data)
end)

RegisterNetEvent("0r-textui:server:delete3DTextUI", function(target, id)
    delete3DTextUI(target, id)
end)
RegisterNetEvent("0r-textui:delete3DTextUI", function(target, id)
    delete3DTextUI(target, id)
end)

RegisterNetEvent("0r-textui:server:update3DTextUI", function(target, id, text, theme)
    update3DTextUI(target, id, text, theme)
end)
RegisterNetEvent("0r-textui:update3DTextUI", function(target, id, text, theme)
    update3DTextUI(target, id, text, theme)
end)

RegisterNetEvent("0r-textui:server:create3DTextUIOnPlayers", function(target, id, data)
    create3DTextUIOnPlayers(target, id, data)
end)
RegisterNetEvent("0r-textui:create3DTextUIOnPlayers", function(target, id, data)
    create3DTextUIOnPlayers(target, id, data)
end)

RegisterNetEvent("0r-textui:server:delete3DTextUIOnPlayers", function(target, id)
    delete3DTextUIOnPlayers(target, id)
end)
RegisterNetEvent("0r-textui:delete3DTextUIOnPlayers", function(target, id)
    delete3DTextUIOnPlayers(target, id)
end)

RegisterNetEvent("0r-textui:server:create3DTextUIOnEntity", function(target, id, data)
    create3DTextUIOnEntity(target, id, data)
end)
RegisterNetEvent("0r-textui:create3DTextUIOnEntity", function(target, id, data)
    create3DTextUIOnEntity(target, id, data)
end)

-- Sincronização inicial quando o jogador entra no servidor
RegisterNetEvent("0r-textui:server:requestSync", function()
    local src = source
    if src and src > 0 then
        TriggerClientEvent("0r-textui:client:sync3DTexts", src, Global3DTexts)
    end
end)

-- Limpeza automática quando um jogador desconectar
AddEventHandler("playerDropped", function()
    local src = source
    if Player3DTexts[src] then
        for id, _ in pairs(Player3DTexts[src]) do
            TriggerClientEvent("0r-textui:client:delete3DTextUIOnPlayers", -1, id)
        end
        Player3DTexts[src] = nil
    end
end)

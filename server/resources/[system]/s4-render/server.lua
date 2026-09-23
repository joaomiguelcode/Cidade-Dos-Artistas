-- =========================================================================
-- s4-render: Server-Side Controller & Video Manager
-- =========================================================================

local RecordedVideos = {}
local PendingCallbacks = {}

-- Integração com vRP
local vRP = nil
if type(module) == "function" then
    local Proxy = module("vrp", "lib/Proxy")
    if Proxy then
        vRP = Proxy.getInterface("vRP")
    end
end

--- Normaliza o alvo
local function resolveTarget(target)
    if target == nil then return nil end
    return tonumber(target)
end

--- Solicita a gravação de um clipe na tela de um jogador
--- @param target number ID do jogador (source)
--- @param duration number|nil Duração em milissegundos (padrão 5000ms)
--- @param callback function|nil Callback que recebe os dados do vídeo finalizado
--- @param webhook string|nil Webhook do Discord (se nil, usa Config.VideoWebhook)
--- @param embed string|nil Payload JSON de embed para o Discord
function requestVideo(target, duration, callback, webhook, embed)
    local targetId = resolveTarget(target)
    if not targetId or targetId <= 0 or not GetPlayerName(targetId) then
        print(("^1[s4-render:Server] Erro: Jogador alvo inválido ou desconectado (%s).^0"):format(tostring(target)))
        return false
    end

    local timeout = tonumber(duration) or 5000
    local unique = tostring(os.time()) .. "_" .. tostring(math.random(10000, 99999))
    local hook = (webhook and webhook ~= "") and webhook or Config.VideoWebhook

    if callback and type(callback) == "function" then
        PendingCallbacks[unique] = callback
    end

    TriggerClientEvent("s4-render:addNewTask", targetId, "s4-render:server:saveVideoData", unique, timeout, hook, embed or "")
    return unique
end

--- Obtém os dados de um vídeo renderizado pelo identificador único
--- @param unique string|number Identificador único da gravação
--- @param cb function|nil Callback opcional
function getVideoPlayer(unique, cb)
    local key = tostring(unique)
    local videoData = RecordedVideos[key] or false

    if cb and type(cb) == "function" then
        cb(videoData)
    end

    return videoData
end

--- Retorna todos os vídeos gravados
function getVideos()
    return RecordedVideos
end

--- Remove um registro de vídeo
function deleteVideo(unique)
    local key = tostring(unique)
    if RecordedVideos[key] then
        RecordedVideos[key] = nil
        return true
    end
    return false
end

-- =========================================================================
-- REGISTRO DE EXPORTS DO SERVIDOR
-- =========================================================================
exports("requestVideo", requestVideo)
exports("getVideoPlayer", getVideoPlayer)
exports("getVideos", getVideos)
exports("deleteVideo", deleteVideo)

-- =========================================================================
-- EVENTOS DE REDE
-- =========================================================================

-- Recebe o retorno do upload feito pelo NUI do client
RegisterNetEvent("s4-render:server:saveVideoData", function(data)
    local src = source
    if not data or type(data) ~= "table" then return end

    local uniqueKey = tostring(data.unique or os.time())
    local videoEntry = {
        unique = uniqueKey,
        target = src,
        player = GetPlayerName(src) or ("ID " .. src),
        video = data.video or "",
        video_proxy = data.video_proxy or "",
        timestamp = os.time(),
        webhook = data.webhook
    }

    RecordedVideos[uniqueKey] = videoEntry

    -- Executa callback pendente se houver
    if PendingCallbacks[uniqueKey] then
        local success, err = pcall(PendingCallbacks[uniqueKey], videoEntry)
        if not success then
            print(("^1[s4-render:Server] Erro no callback do vídeo %s: %s^0"):format(uniqueKey, tostring(err)))
        end
        PendingCallbacks[uniqueKey] = nil
    end

    TriggerEvent("s4-render:videoSaved", videoEntry)
    print(("^2[s4-render:Server]^0 Vídeo salvo com sucesso para o jogador %s (%d): %s"):format(videoEntry.player, src, tostring(videoEntry.video)))
end)

-- Permite solicitar gravação via TriggerServerEvent
RegisterNetEvent("s4-render:server:requestVideo", function(target, duration, webhook, embed)
    requestVideo(target, duration, nil, webhook, embed)
end)

-- =========================================================================
-- COMANDO ADMINISTRATIVO: /renderclip [id] [segundos]
-- =========================================================================
RegisterCommand("renderclip", function(source, args, rawCommand)
    local adminSource = source
    local isAllowed = false

    if adminSource == 0 then
        isAllowed = true
    elseif IsPlayerAceAllowed(adminSource, "command") or IsPlayerAceAllowed(adminSource, "group.Admin") then
        isAllowed = true
    elseif vRP then
        local passport = vRP.Passport(adminSource)
        if passport and (vRP.HasPermission(passport, "Admin") or vRP.HasPermission(passport, "Owner") or vRP.HasGroup(passport, "Admin")) then
            isAllowed = true
        end
    end

    if not isAllowed then
        if adminSource > 0 then
            TriggerClientEvent("Notify", adminSource, "vermelho", "Você não possui permissão para usar este comando.", 5000)
        end
        return
    end

    local targetId = tonumber(args[1])
    local seconds = tonumber(args[2]) or 5

    if not targetId or not GetPlayerName(targetId) then
        if adminSource > 0 then
            TriggerClientEvent("Notify", adminSource, "amarelo", "Utilize: /renderclip [id] [segundos]", 5000)
        else
            print("[s4-render] Utilize: renderclip [id] [segundos]")
        end
        return
    end

    if adminSource > 0 then
        TriggerClientEvent("Notify", adminSource, "verde", ("Iniciando gravação de <b>%ds</b> do jogador <b>%d</b>..."):format(seconds, targetId), 5000)
    else
        print(("[s4-render] Iniciando gravação de %ds do jogador %d..."):format(seconds, targetId))
    end

    requestVideo(targetId, seconds * 1000, function(videoData)
        if adminSource > 0 then
            TriggerClientEvent("Notify", adminSource, "verde", "Clipe renderizado com sucesso! Acesse o console ou link: " .. tostring(videoData.video), 15000)
        end
        print(("[s4-render] Clipe gerado pelo comando para o jogador %d: %s"):format(targetId, tostring(videoData.video)))
    end)
end)

print("^2[s4-render]^0 Camada Server inicializada com sucesso.")

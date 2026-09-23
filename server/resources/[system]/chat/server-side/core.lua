-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP & VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")

local MutedPlayers = {}
local Cooldowns = {}

-----------------------------------------------------------------------------------------------------------------------------------------
-- HELPER FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------

--- Verifica se a mensagem contém palavras proibidas da tabela Block
local function containsBlockedWord(text)
    if not Block or type(Block) ~= "table" then
        return false
    end

    local lowerText = string.lower(text)
    for _, word in ipairs(Block) do
        if string.find(lowerText, string.lower(word), 1, true) then
            return true, word
        end
    end
    return false
end

--- Remove espaços em branco nas pontas
local function trim(s)
    return (s:gsub("^%s*(.-)%s*$", "%1"))
end

--- Verifica se o jogador está mutado
function isPlayerMuted(passport)
    local p = parseInt(passport)
    if MutedPlayers[p] then
        if os.time() < MutedPlayers[p] then
            return true, MutedPlayers[p] - os.time()
        else
            MutedPlayers[p] = nil
        end
    end
    return false, 0
end

--- Muta um jogador por determinada duração em segundos
function mutePlayer(passport, seconds)
    local p = parseInt(passport)
    local sec = parseInt(seconds)
    if p > 0 and sec > 0 then
        MutedPlayers[p] = os.time() + sec
        return true
    end
    return false
end

--- Desmuta um jogador
function unmutePlayer(passport)
    local p = parseInt(passport)
    if MutedPlayers[p] then
        MutedPlayers[p] = nil
        return true
    end
    return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CHAT:SERVERMESSAGE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chat:ServerMessage")
AddEventHandler("chat:ServerMessage", function(Tag, Message)
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then
        return
    end

    -- Jogador deve estar vivo
    local ped = GetPlayerPed(source)
    if not DoesEntityExist(ped) or GetEntityHealth(ped) <= 100 then
        return
    end

    -- Validação do texto
    if not Message or type(Message) ~= "string" then
        return
    end

    Message = trim(Message)
    if Message == "" or #Message > 255 then
        return
    end

    -- Checagem de Mute
    local isMuted, timeLeft = isPlayerMuted(Passport)
    if isMuted then
        TriggerClientEvent("Notify", source, "vermelho", "Você está mutado do chat por mais <b>" .. timeLeft .. "s</b>.", 5000)
        return
    end

    -- Sistema Anti-Flood (1 segundo de intervalo)
    local currentTime = os.time()
    if Cooldowns[source] and Cooldowns[source] > currentTime then
        TriggerClientEvent("Notify", source, "amarelo", "Aguarde um momento antes de enviar outra mensagem.", 3000)
        return
    end
    Cooldowns[source] = currentTime + 1

    -- Verificação de Palavras Bloqueadas
    local blocked, forbiddenWord = containsBlockedWord(Message)
    if blocked then
        TriggerClientEvent("Notify", source, "vermelho", "Sua mensagem foi bloqueada por conter termos impróprios.", 5000)
        return
    end

    local Identity = vRP.Identity(Passport)
    if not Identity then
        return
    end

    local AuthorName = (Identity.name or "Cidadão") .. " " .. (Identity.name2 or "")
    local FullAuthor = AuthorName .. " [" .. Passport .. "]"

    -- Roteamento de Canais
    if not Tag or Tag == "chat" or Tag == "all" then
        -- Chat Geral (exibido na aba 'Todos' e na aba 'CHAT')
        TriggerClientEvent("chat:ClientMessage", -1, FullAuthor, Message, "chat")
    else
        -- Canais departamentais / específicos (ex: Police, Admin, Paramedic, etc.)
        local hasPermission = Player(source).state[Tag] or vRP.HasPermission(Passport, Tag) or vRP.HasGroup(Passport, Tag)

        if not hasPermission then
            TriggerClientEvent("Notify", source, "vermelho", "Você não possui permissão para falar neste canal.", 5000)
            return
        end

        local Players = vRP.Players()
        for targetPassport, targetSource in pairs(Players) do
            if Player(targetSource).state[Tag] or vRP.HasPermission(targetPassport, Tag) or vRP.HasGroup(targetPassport, Tag) then
                TriggerClientEvent("chat:ClientMessage", targetSource, FullAuthor, Message, Tag)
            end
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- COMANDOS DE ROLEPLAY
-----------------------------------------------------------------------------------------------------------------------------------------

-- /me [ação]
RegisterCommand("me", function(source, args, rawCommand)
    local Passport = vRP.Passport(source)
    if not Passport or not args[1] then
        return
    end

    local isMuted, timeLeft = isPlayerMuted(Passport)
    if isMuted then
        TriggerClientEvent("Notify", source, "vermelho", "Você está mutado por mais <b>" .. timeLeft .. "s</b>.", 5000)
        return
    end

    local Identity = vRP.Identity(Passport)
    if not Identity then
        return
    end

    local actionText = table.concat(args, " ")
    local blocked = containsBlockedWord(actionText)
    if blocked then
        TriggerClientEvent("Notify", source, "vermelho", "Ação contém termos impróprios.", 5000)
        return
    end

    local AuthorName = (Identity.name or "Cidadão") .. " " .. (Identity.name2 or "")
    local formattedMessage = "* " .. AuthorName .. " " .. actionText

    sendProximityMessage(source, "ME", formattedMessage, "chat", 15.0)
end)

-- /do [situação/ambiente]
RegisterCommand("do", function(source, args, rawCommand)
    local Passport = vRP.Passport(source)
    if not Passport or not args[1] then
        return
    end

    local isMuted, timeLeft = isPlayerMuted(Passport)
    if isMuted then
        TriggerClientEvent("Notify", source, "vermelho", "Você está mutado por mais <b>" .. timeLeft .. "s</b>.", 5000)
        return
    end

    local Identity = vRP.Identity(Passport)
    if not Identity then
        return
    end

    local doText = table.concat(args, " ")
    local blocked = containsBlockedWord(doText)
    if blocked then
        TriggerClientEvent("Notify", source, "vermelho", "Texto contém termos impróprios.", 5000)
        return
    end

    local AuthorName = (Identity.name or "Cidadão") .. " " .. (Identity.name2 or "")
    local formattedMessage = "[DO] " .. doText .. " (( " .. AuthorName .. " ))"

    sendProximityMessage(source, "DO", formattedMessage, "chat", 15.0)
end)

-- /gme [ação global]
RegisterCommand("gme", function(source, args, rawCommand)
    local Passport = vRP.Passport(source)
    if not Passport or not args[1] then
        return
    end

    local isMuted, timeLeft = isPlayerMuted(Passport)
    if isMuted then
        TriggerClientEvent("Notify", source, "vermelho", "Você está mutado por mais <b>" .. timeLeft .. "s</b>.", 5000)
        return
    end

    local Identity = vRP.Identity(Passport)
    if not Identity then
        return
    end

    local actionText = table.concat(args, " ")
    local blocked = containsBlockedWord(actionText)
    if blocked then
        TriggerClientEvent("Notify", source, "vermelho", "Ação contém termos impróprios.", 5000)
        return
    end

    local AuthorName = (Identity.name or "Cidadão") .. " " .. (Identity.name2 or "")
    local formattedMessage = "** " .. AuthorName .. " [" .. Passport .. "]: " .. actionText

    TriggerClientEvent("chat:ClientMessage", -1, "GME", formattedMessage, "chat")
end)

-- /anuncio [mensagem] ou /an
local function handleAnuncio(source, args)
    local Passport = vRP.Passport(source)
    if not Passport or not args[1] then
        return
    end

    local isMuted, timeLeft = isPlayerMuted(Passport)
    if isMuted then
        TriggerClientEvent("Notify", source, "vermelho", "Você está mutado por mais <b>" .. timeLeft .. "s</b>.", 5000)
        return
    end

    local Identity = vRP.Identity(Passport)
    if not Identity then
        return
    end

    local message = table.concat(args, " ")
    local blocked = containsBlockedWord(message)
    if blocked then
        TriggerClientEvent("Notify", source, "vermelho", "Anúncio contém termos impróprios.", 5000)
        return
    end

    local AuthorName = (Identity.name or "Cidadão") .. " " .. (Identity.name2 or "")
    TriggerClientEvent("chat:ClientMessage", -1, "[ANÚNCIO] " .. AuthorName, message, "chat")
end

RegisterCommand("anuncio", function(source, args, rawCommand)
    handleAnuncio(source, args)
end)
RegisterCommand("an", function(source, args, rawCommand)
    handleAnuncio(source, args)
end)

-- /adm [mensagem] ou /staff
local function handleAdmMessage(source, args)
    local Passport = vRP.Passport(source)
    if not Passport or not args[1] then
        return
    end

    if not vRP.HasPermission(Passport, "Admin") and not vRP.HasGroup(Passport, "Admin") and not Player(source).state["Admin"] then
        TriggerClientEvent("Notify", source, "vermelho", "Você não possui permissão para usar este comando.", 5000)
        return
    end

    local message = table.concat(args, " ")
    local Identity = vRP.Identity(Passport)
    local AuthorName = (Identity and Identity.name or "Staff")

    TriggerClientEvent("chat:ClientMessage", -1, "[ADMINISTRAÇÃO] " .. AuthorName, message, "chat")
end

RegisterCommand("adm", function(source, args, rawCommand)
    handleAdmMessage(source, args)
end)
RegisterCommand("staff", function(source, args, rawCommand)
    handleAdmMessage(source, args)
end)

-- /mute [passaporte] [segundos]
RegisterCommand("mute", function(source, args, rawCommand)
    local Passport = vRP.Passport(source)
    if Passport then
        if not vRP.HasPermission(Passport, "Admin") and not vRP.HasGroup(Passport, "Admin") then
            TriggerClientEvent("Notify", source, "vermelho", "Você não possui permissão.", 5000)
            return
        end
    end

    local targetPassport = parseInt(args[1])
    local seconds = parseInt(args[2]) or 300

    if targetPassport > 0 and seconds > 0 then
        mutePlayer(targetPassport, seconds)
        local targetSource = vRP.Source(targetPassport)
        if targetSource then
            TriggerClientEvent("Notify", targetSource, "vermelho", "Você foi mutado do chat por <b>" .. seconds .. " segundos</b>.", 8000)
        end
        if source > 0 then
            TriggerClientEvent("Notify", source, "verde", "Passaporte <b>" .. targetPassport .. "</b> mutado por <b>" .. seconds .. "s</b>.", 5000)
        else
            print("[CHAT] Passaporte " .. targetPassport .. " mutado por " .. seconds .. "s.")
        end
    else
        if source > 0 then
            TriggerClientEvent("Notify", source, "amarelo", "Utilize: /mute [passaporte] [segundos]", 5000)
        else
            print("[CHAT] Utilize: mute [passaporte] [segundos]")
        end
    end
end)

-- /unmute [passaporte]
RegisterCommand("unmute", function(source, args, rawCommand)
    local Passport = vRP.Passport(source)
    if Passport then
        if not vRP.HasPermission(Passport, "Admin") and not vRP.HasGroup(Passport, "Admin") then
            TriggerClientEvent("Notify", source, "vermelho", "Você não possui permissão.", 5000)
            return
        end
    end

    local targetPassport = parseInt(args[1])
    if targetPassport > 0 then
        if unmutePlayer(targetPassport) then
            local targetSource = vRP.Source(targetPassport)
            if targetSource then
                TriggerClientEvent("Notify", targetSource, "verde", "Você foi desmutado do chat.", 5000)
            end
            if source > 0 then
                TriggerClientEvent("Notify", source, "verde", "Passaporte <b>" .. targetPassport .. "</b> desmutado.", 5000)
            else
                print("[CHAT] Passaporte " .. targetPassport .. " desmutado.")
            end
        else
            if source > 0 then
                TriggerClientEvent("Notify", source, "amarelo", "O jogador não estava mutado.", 5000)
            end
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS E FUNÇÕES DE UTILIDADE
-----------------------------------------------------------------------------------------------------------------------------------------

--- Envia mensagem direta para um jogador específico
function sendServerMessage(target, author, message, mode)
    if target and target > 0 then
        TriggerClientEvent("chat:ClientMessage", target, author, message, mode or "chat")
    end
end

--- Envia mensagem para todos os jogadores online
function sendGlobalMessage(author, message, mode)
    TriggerClientEvent("chat:ClientMessage", -1, author, message, mode or "chat")
end

--- Envia mensagem para jogadores em determinado raio de proximidade
function sendProximityMessage(source, author, message, mode, distance)
    local srcPed = GetPlayerPed(source)
    if not DoesEntityExist(srcPed) then
        return
    end

    local srcCoords = GetEntityCoords(srcPed)
    local maxDist = distance or 15.0

    local players = GetPlayers()
    for _, targetStr in ipairs(players) do
        local target = tonumber(targetStr)
        if target then
            local targetPed = GetPlayerPed(target)
            if DoesEntityExist(targetPed) then
                local targetCoords = GetEntityCoords(targetPed)
                local dist = #(srcCoords - targetCoords)
                if dist <= maxDist then
                    TriggerClientEvent("chat:ClientMessage", target, author, message, mode or "chat")
                end
            end
        end
    end
end

--- Envia mensagem para jogadores com determinada permissão ou state
function sendPermissionMessage(permission, author, message, mode)
    local players = vRP.Players()
    for targetPassport, targetSource in pairs(players) do
        if Player(targetSource).state[permission] or vRP.HasPermission(targetPassport, permission) or vRP.HasGroup(targetPassport, permission) then
            TriggerClientEvent("chat:ClientMessage", targetSource, author, message, mode or permission)
        end
    end
end

exports("sendServerMessage", sendServerMessage)
exports("sendGlobalMessage", sendGlobalMessage)
exports("sendProximityMessage", sendProximityMessage)
exports("sendPermissionMessage", sendPermissionMessage)
exports("mutePlayer", mutePlayer)
exports("unmutePlayer", unmutePlayer)
exports("isPlayerMuted", isPlayerMuted)

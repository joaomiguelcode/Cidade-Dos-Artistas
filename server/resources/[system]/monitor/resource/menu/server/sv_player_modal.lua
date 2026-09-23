-- =============================================
--  txAdmin Resource: sv_player_modal.lua
-- =============================================

-- Direct Message
RegisterNetEvent("txsv:req:dmPlayer", function(targetId, message)
    local src = source
    if not CheckMenuPerm(src, "players.message") then return end

    local target = tonumber(targetId)
    if target and target > 0 then
        local author = GetPlayerName(src) or "Admin"
        TriggerClientEvent("txcl:showDirectMessage", target, message, author)
    end
end)

-- Warn Player
RegisterNetEvent("txsv:req:warnPlayer", function(targetId, reason)
    local src = source
    if not CheckMenuPerm(src, "players.warn") then return end

    local target = tonumber(targetId)
    if target and target > 0 then
        local author = GetPlayerName(src) or "Admin"
        local actionId = "warn_" .. os.time()
        TriggerClientEvent("txcl:showWarning", target, author, reason, actionId, true)
    end
end)

-- Kick Player
RegisterNetEvent("txsv:req:kickPlayer", function(targetId, reason)
    local src = source
    if not CheckMenuPerm(src, "players.kick") then return end

    local target = tonumber(targetId)
    if target and target > 0 then
        DropPlayer(target, "[txAdmin] Kickado: " .. (reason or "Sem motivo especificado."))
    end
end)

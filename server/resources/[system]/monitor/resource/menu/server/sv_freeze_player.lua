-- =============================================
--  txAdmin Resource: sv_freeze_player.lua
-- =============================================

local FrozenPlayers = {}

RegisterNetEvent("txsv:req:freezePlayer", function(targetPlayerId)
    local src = source
    if not CheckMenuPerm(src, "players.freeze") then return end

    local target = tonumber(targetPlayerId)
    if not target or target <= 0 then return end

    local isFrozen = not FrozenPlayers[target]
    FrozenPlayers[target] = isFrozen

    TriggerClientEvent("txcl:setFrozen", target, isFrozen)
    TriggerClientEvent("txcl:freezePlayerOk", src, isFrozen)
end)

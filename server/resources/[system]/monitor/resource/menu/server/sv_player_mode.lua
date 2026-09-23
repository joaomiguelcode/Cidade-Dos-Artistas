-- =============================================
--  txAdmin Resource: sv_player_mode.lua
-- =============================================

RegisterNetEvent("txsv:req:changePlayerMode", function(mode, nearbyPlayers)
    local src = source
    if not CheckMenuPerm(src, "players.playermode") then return end

    TriggerClientEvent("txcl:setPlayerMode", src, mode, true)

    if nearbyPlayers and type(nearbyPlayers) == "table" then
        for _, targetId in ipairs(nearbyPlayers) do
            local target = tonumber(targetId)
            if target and target ~= src then
                TriggerClientEvent("txcl:showPtfx", target, src)
            end
        end
    end
end)

RegisterNetEvent("txsv:req:showPlayerIDs", function(enabled)
    local src = source
    if not CheckMenuPerm(src, "menu.viewids") then return end

    TriggerClientEvent("txcl:showPlayerIDs", src, enabled)
end)

-- =============================================
--  txAdmin Resource: sv_logger.lua
-- =============================================

RegisterNetEvent("txsv:logger:deathEvent", function(killer, deathReason)
    local victim = source
    local victimName = GetPlayerName(victim) or ("ID " .. victim)
    local killerName = killer and GetPlayerName(killer) or nil

    if killerName and killer ~= victim then
        txPrint(("^3[DEATH]^0 %s was killed by %s (%s)"):format(victimName, killerName, tostring(deathReason)))
    else
        txPrint(("^3[DEATH]^0 %s died (%s)"):format(victimName, tostring(deathReason)))
    end
end)

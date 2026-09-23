-- =============================================
--  txAdmin Resource: sv_ctx.lua
-- =============================================

local serverCtx = {
    oneSync = {
        type = "on",
        status = true
    },
    projectName = GetConvar("sv_projectName", "Cidade Dos Artistas"),
    maxClients = GetConvarInt("sv_maxclients", 32),
    txAdminVersion = "8.0.1"
}

GlobalState.txAdminServerCtx = serverCtx

RegisterNetEvent("txsv:req:serverCtx", function()
    local src = source
    TriggerClientEvent("txcl:setServerCtx", src, serverCtx)
end)

RegisterNetEvent("txsv:startedWalking", function()
    -- Marker for player ready/walking
end)

RegisterNetEvent("txsv:ackWarning", function(actionId)
    local src = source
    debugPrint(("^3[WARN]^0 Player %d acknowledged warning %s^0"):format(src, tostring(actionId)))
end)

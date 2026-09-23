-- =============================================
--  txAdmin Resource: sv_initialData.lua
-- =============================================

AddEventHandler("playerJoining", function()
    local src = source
    local serverCtx = GlobalState.txAdminServerCtx
    if serverCtx then
        TriggerClientEvent("txcl:setServerCtx", src, serverCtx)
    end
end)

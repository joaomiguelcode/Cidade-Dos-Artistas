-- =============================================
--  txAdmin Resource: sv_webpipe.lua
-- =============================================

RegisterNetEvent("txsv:webpipe:req", function(id, method, path, headers, body)
    local src = source
    -- Return a safe default response so NUI does not hang
    TriggerClientEvent("txcl:webpipe:resp", src, id, 200, "{}", {})
end)

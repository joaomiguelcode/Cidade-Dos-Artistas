-- =============================================
--  txAdmin Resource: sv_spectate.lua
-- =============================================

RegisterNetEvent("txsv:req:spectate:start", function(targetId)
    local src = source
    if not CheckMenuPerm(src, "players.spectate") then return end

    local target = tonumber(targetId)
    if not target or target <= 0 or target == src then return end

    local targetPed = GetPlayerPed(target)
    if DoesEntityExist(targetPed) then
        local coords = GetEntityCoords(targetPed)
        TriggerClientEvent("txcl:spectate:start", src, target, coords)
    else
        TriggerClientEvent("txcl:spectate:cycleFailed", src)
    end
end)

RegisterNetEvent("txsv:req:spectate:cycle", function(storedTargetId, isNext)
    local src = source
    if not CheckMenuPerm(src, "players.spectate") then return end

    local players = GetPlayers()
    local validPlayers = {}
    for _, idStr in ipairs(players) do
        local id = tonumber(idStr)
        if id and id ~= src then
            validPlayers[#validPlayers + 1] = id
        end
    end

    if #validPlayers == 0 then
        TriggerClientEvent("txcl:spectate:cycleFailed", src)
        return
    end

    local currentIndex = 1
    for i, id in ipairs(validPlayers) do
        if id == storedTargetId then
            currentIndex = i
            break
        end
    end

    local nextIndex
    if isNext then
        nextIndex = currentIndex + 1
        if nextIndex > #validPlayers then nextIndex = 1 end
    else
        nextIndex = currentIndex - 1
        if nextIndex < 1 then nextIndex = #validPlayers end
    end

    local nextTarget = validPlayers[nextIndex]
    local targetPed = GetPlayerPed(nextTarget)
    if DoesEntityExist(targetPed) then
        local coords = GetEntityCoords(targetPed)
        TriggerClientEvent("txcl:spectate:start", src, nextTarget, coords)
    else
        TriggerClientEvent("txcl:spectate:cycleFailed", src)
    end
end)

RegisterNetEvent("txsv:req:spectate:end", function()
    -- Spectate ended
end)

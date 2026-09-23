-- =============================================
--  txAdmin Resource: sv_main_page.lua
-- =============================================

-- Teleport to specific coordinates
RegisterNetEvent("txsv:req:tpToCoords", function(x, y, z)
    local src = source
    if not CheckMenuPerm(src, "players.teleport") then return end

    local ped = GetPlayerPed(src)
    if DoesEntityExist(ped) then
        SetEntityCoords(ped, tonumber(x) + 0.0, tonumber(y) + 0.0, tonumber(z) + 0.0, true, false, false, false)
        TriggerClientEvent("txcl:tpToCoords", src, x, y, z)
    end
end)

-- Teleport to waypoint
RegisterNetEvent("txsv:req:tpToWaypoint", function()
    local src = source
    if not CheckMenuPerm(src, "players.teleport") then return end
    TriggerClientEvent("txcl:tpToWaypoint", src)
end)

-- Teleport to player
RegisterNetEvent("txsv:req:tpToPlayer", function(targetId)
    local src = source
    if not CheckMenuPerm(src, "players.teleport") then return end

    local targetPed = GetPlayerPed(targetId)
    if DoesEntityExist(targetPed) then
        local coords = GetEntityCoords(targetPed)
        local ped = GetPlayerPed(src)
        SetEntityCoords(ped, coords.x, coords.y, coords.z, true, false, false, false)
    end
end)

-- Bring player to admin
RegisterNetEvent("txsv:req:bringPlayer", function(targetId)
    local src = source
    if not CheckMenuPerm(src, "players.teleport") then return end

    local srcPed = GetPlayerPed(src)
    local targetPed = GetPlayerPed(targetId)
    if DoesEntityExist(srcPed) and DoesEntityExist(targetPed) then
        local coords = GetEntityCoords(srcPed)
        SetEntityCoords(targetPed, coords.x, coords.y, coords.z, true, false, false, false)
    end
end)

-- Clear area
RegisterNetEvent("txsv:req:clearArea", function(radius)
    local src = source
    if not CheckMenuPerm(src, "menu.clear_area") then return end
    TriggerClientEvent("txcl:clearArea", -1, radius)
end)

-- Heal myself
RegisterNetEvent("txsv:req:healMyself", function()
    local src = source
    if not CheckMenuPerm(src, "players.heal") then return end

    local ped = GetPlayerPed(src)
    if DoesEntityExist(ped) then
        SetEntityHealth(ped, GetEntityMaxHealth(ped))
    end
    TriggerClientEvent("txcl:heal", src)
end)

-- Heal target player
RegisterNetEvent("txsv:req:healPlayer", function(targetId)
    local src = source
    if not CheckMenuPerm(src, "players.heal") then return end

    local target = tonumber(targetId)
    if target and target > 0 then
        local ped = GetPlayerPed(target)
        if DoesEntityExist(ped) then
            SetEntityHealth(ped, GetEntityMaxHealth(ped))
        end
        TriggerClientEvent("txcl:heal", target)
    end
end)

-- Heal everyone
RegisterNetEvent("txsv:req:healEveryone", function()
    local src = source
    if not CheckMenuPerm(src, "players.heal") then return end

    for _, targetStr in ipairs(GetPlayers()) do
        local target = tonumber(targetStr)
        if target then
            local ped = GetPlayerPed(target)
            if DoesEntityExist(ped) then
                SetEntityHealth(ped, GetEntityMaxHealth(ped))
            end
            TriggerClientEvent("txcl:heal", target)
        end
    end
end)

-- Send announcement
RegisterNetEvent("txsv:req:sendAnnouncement", function(message)
    local src = source
    if not CheckMenuPerm(src, "announcement") then return end

    local author = GetPlayerName(src) or "Admin"
    TriggerClientEvent("txcl:showAnnouncement", -1, message, author)
end)

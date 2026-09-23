-- =============================================
--  txAdmin Resource: sv_trollactions.lua
-- =============================================

RegisterNetEvent("txsv:req:troll:setDrunk", function(targetId)
    local src = source
    if not CheckMenuPerm(src, "players.troll") then return end

    local target = tonumber(targetId)
    if target and target > 0 then
        TriggerClientEvent("txcl:setDrunk", target)
    end
end)

RegisterNetEvent("txsv:req:troll:setOnFire", function(targetId)
    local src = source
    if not CheckMenuPerm(src, "players.troll") then return end

    local target = tonumber(targetId)
    if target and target > 0 then
        TriggerClientEvent("txcl:setOnFire", target)
    end
end)

RegisterNetEvent("txsv:req:troll:wildAttack", function(targetId)
    local src = source
    if not CheckMenuPerm(src, "players.troll") then return end

    local target = tonumber(targetId)
    if target and target > 0 then
        TriggerClientEvent("txcl:wildAttack", target)
    end
end)

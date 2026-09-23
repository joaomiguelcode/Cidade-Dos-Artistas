-- =============================================
--  txAdmin Resource: sv_admins.lua
-- =============================================

--- Checks whether a player has administrative permissions
function IsAdmin(source)
    if not source or source <= 0 then
        return true
    end

    -- Check ACE permissions (command or txadmin.menu)
    if IsPlayerAceAllowed(source, "command") or IsPlayerAceAllowed(source, "txadmin.menu") or IsPlayerAceAllowed(source, "group.Admin") then
        return true
    end

    -- Check vRP permissions if available
    if vRP then
        local passport = vRP.Passport(source)
        if passport then
            if vRP.HasPermission(passport, "Admin") or vRP.HasPermission(passport, "Owner") or vRP.HasGroup(passport, "Admin") or vRP.HasGroup(passport, "Owner") or Player(source).state["Admin"] or Player(source).state["Owner"] then
                return true
            end
        end
    end

    return false
end

-- Net event triggered by clients when requesting admin status
RegisterNetEvent("txsv:checkIfAdmin", function()
    local src = source
    if IsAdmin(src) then
        local name = GetPlayerName(src) or "Admin"
        if vRP then
            local passport = vRP.Passport(src)
            if passport then
                local identity = vRP.Identity(passport)
                if identity and identity.name then
                    name = identity.name .. " " .. (identity.name2 or "")
                end
            end
        end

        local permissions = {
            "all_permissions",
            "menu.vehicle",
            "players.playermode",
            "menu.viewids",
            "players.teleport",
            "menu.clear_area",
            "players.heal",
            "players.spectate",
            "players.troll",
            "players.freeze",
            "players.warn",
            "players.kick",
            "players.ban",
            "players.message",
            "announcement"
        }

        TriggerClientEvent("txcl:setAdmin", src, name, permissions)
        debugPrint(("^2[AUTH] Player %s (%d) authenticated as admin.^0"):format(name, src))
    else
        TriggerClientEvent("txcl:setAdmin", src, false, false, "not_an_admin")
    end
end)

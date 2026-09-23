-- =============================================
--  txAdmin Resource: sv_playerlist.lua
-- =============================================

function GetDetailedPlayerList()
    local players = {}
    local admins = {}

    local playerIds = GetPlayers()
    for _, idStr in ipairs(playerIds) do
        local id = tonumber(idStr)
        if id then
            local ped = GetPlayerPed(id)
            local health = DoesEntityExist(ped) and GetPedHealthPercent(ped) or 100
            local name = GetPlayerName(id) or ("Player " .. id)

            if vRP then
                local passport = vRP.Passport(id)
                if passport then
                    local identity = vRP.Identity(passport)
                    if identity and identity.name then
                        name = identity.name .. " " .. (identity.name2 or "") .. " [" .. passport .. "]"
                    end
                end
            end

            players[#players + 1] = {
                id = id,
                name = name,
                health = health,
                dist = -1
            }

            if IsAdmin(id) then
                admins[#admins + 1] = id
            end
        end
    end

    return players, admins
end

RegisterNetEvent("txsv:req:plist:getDetailed", function()
    local src = source
    if not IsAdmin(src) then return end

    local players, admins = GetDetailedPlayerList()
    TriggerClientEvent("txcl:plist:setDetailed", src, players, admins)
end)

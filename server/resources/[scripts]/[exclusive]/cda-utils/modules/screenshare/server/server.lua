-----------------------------------------------------------------------------------------------------------------------------------------
-- SCREENSHARE SERVER
-----------------------------------------------------------------------------------------------------------------------------------------
local Suspects = {}

local function findSuspectIndex(citizenId)
    for i, v in ipairs(Suspects) do
        if parseInt(v.citizenId) == parseInt(citizenId) then
            return i
        end
    end
    return nil
end

RegisterCommand("screenshare", function(source, args)
    local Passport = vRP.Passport(source)
    if Passport then
        if vRP.HasGroup(Passport, "Admin") or vRP.HasGroup(Passport, "Moderator") or vRP.HasGroup(Passport, "Suporte") or vRP.HasGroup(Passport, "Developer") then
            TriggerClientEvent('cda-utils:showScreenshare', source, Suspects)
        end
    end
end)

RegisterCommand("ss", function(source, args)
    local Passport = vRP.Passport(source)
    if Passport then
        if vRP.HasGroup(Passport, "Admin") or vRP.HasGroup(Passport, "Moderator") or vRP.HasGroup(Passport, "Suporte") or vRP.HasGroup(Passport, "Developer") then
            TriggerClientEvent('cda-utils:showScreenshare', source, Suspects)
        end
    end
end)

RegisterServerEvent('cda-utils:AddPlayer')
AddEventHandler('cda-utils:AddPlayer', function(citizenId)
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return end

    if not (vRP.HasGroup(Passport, "Admin") or vRP.HasGroup(Passport, "Moderator") or vRP.HasGroup(Passport, "Suporte") or vRP.HasGroup(Passport, "Developer")) then
        return
    end

    local targetId = parseInt(citizenId)
    if targetId <= 0 then return end

    local targetSource = vRP.Source(targetId)
    local targetIdentity = vRP.Identity(targetId)
    local targetName = targetIdentity and ((targetIdentity.name or "") .. " " .. (targetIdentity.name2 or "")) or "Desconhecido"

    if not findSuspectIndex(targetId) then
        table.insert(Suspects, {
            citizenId = targetId,
            label = "[" .. targetId .. "] " .. targetName
        })

        if targetSource then
            TriggerClientEvent("Notify", targetSource, "amarelo", "Você foi puxado para ScreenShare! Entre na sala de suporte do Discord imediatamente.", 15000)
        end

        TriggerClientEvent("Notify", source, "verde", "Jogador "..targetId.." adicionado à lista de ScreenShare.", 5000)
    else
        TriggerClientEvent("Notify", source, "amarelo", "Jogador "..targetId.." já está na lista.", 5000)
    end

    TriggerClientEvent('cda-utils:showScreenshare', source, Suspects)
end)

RegisterServerEvent('cda-utils:RemPlayer')
AddEventHandler('cda-utils:RemPlayer', function(citizenId)
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return end

    if not (vRP.HasGroup(Passport, "Admin") or vRP.HasGroup(Passport, "Moderator") or vRP.HasGroup(Passport, "Suporte") or vRP.HasGroup(Passport, "Developer")) then
        return
    end

    local idx = findSuspectIndex(citizenId)
    if idx then
        table.remove(Suspects, idx)
        TriggerClientEvent("Notify", source, "verde", "Suspeito "..citizenId.." removido da lista.", 5000)
    end

    TriggerClientEvent('cda-utils:showScreenshare', source, Suspects)
end)

RegisterServerEvent('cda-utils:checkAllSuspects')
AddEventHandler('cda-utils:checkAllSuspects', function(suspectPlayers)
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return end

    if not (vRP.HasGroup(Passport, "Admin") or vRP.HasGroup(Passport, "Moderator") or vRP.HasGroup(Passport, "Suporte") or vRP.HasGroup(Passport, "Developer")) then
        return
    end

    for _, suspect in ipairs(Suspects) do
        local targetSrc = vRP.Source(suspect.citizenId)
        if targetSrc then
            TriggerClientEvent("Notify", source, "verde", "ID " .. suspect.citizenId .. " está ONLINE (Src: " .. targetSrc .. ")", 5000)
        else
            TriggerClientEvent("Notify", source, "vermelho", "ID " .. suspect.citizenId .. " está OFFLINE / DESCONECTOU!", 5000)
        end
    end
end)

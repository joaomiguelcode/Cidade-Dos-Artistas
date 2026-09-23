-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- COMMANDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("video", function(source, args)
    local Passport = vRP.Passport(source)
    if Passport and vRP.HasGroup(Passport, "Admin") then
        if args[1] == "all" then
            local display = true
            if args[2] == "off" or args[2] == "false" or args[2] == "0" then
                display = false
            end
            TriggerClientEvent("video:toggleNUI", -1, display)
            TriggerClientEvent("Notify", source, "verde", "Vídeo " .. (display and "iniciado" or "parado") .. " para todos.", 5000)
        elseif args[1] then
            local targetId = parseInt(args[1])
            local targetSource = vRP.Source(targetId)
            if targetSource then
                local display = true
                if args[2] == "off" or args[2] == "false" or args[2] == "0" then
                    display = false
                end
                TriggerClientEvent("video:toggleNUI", targetSource, display)
                TriggerClientEvent("Notify", source, "verde", "Vídeo " .. (display and "iniciado" or "parado") .. " para o passaporte " .. targetId .. ".", 5000)
            else
                TriggerClientEvent("Notify", source, "vermelho", "Jogador não encontrado.", 5000)
            end
        else
            TriggerClientEvent("video:toggleNUI", source, true)
        end
    end
end)

RegisterCommand("stopvideo", function(source, args)
    local Passport = vRP.Passport(source)
    if Passport and vRP.HasGroup(Passport, "Admin") then
        if args[1] == "all" then
            TriggerClientEvent("video:toggleNUI", -1, false)
            TriggerClientEvent("Notify", source, "verde", "Vídeo parado para todos.", 5000)
        elseif args[1] then
            local targetId = parseInt(args[1])
            local targetSource = vRP.Source(targetId)
            if targetSource then
                TriggerClientEvent("video:toggleNUI", targetSource, false)
                TriggerClientEvent("Notify", source, "verde", "Vídeo parado para o passaporte " .. targetId .. ".", 5000)
            end
        else
            TriggerClientEvent("video:toggleNUI", source, false)
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS & EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("video:toggle")
AddEventHandler("video:toggle", function(targetSource, display)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport and vRP.HasGroup(Passport, "Admin") then
        TriggerClientEvent("video:toggleNUI", targetSource or source, display)
    end
end)

exports("toggleVideo", function(targetSource, display)
    TriggerClientEvent("video:toggleNUI", targetSource or -1, display)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPC = Tunnel.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
if not ZS then
    ZS = {}
    Tunnel.bindInterface(GetCurrentResourceName(), ZS)
end
ClZS = Tunnel.getInterface(GetCurrentResourceName())

-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER STATE BAGS SETUP
-----------------------------------------------------------------------------------------------------------------------------------------
local function setupPlayerState(Passport, source)
    if not Passport or not source then return end
    local Identity = vRP.Identity(Passport)
    local charName = "Desconhecido"
    if Identity then
        charName = (Identity.name or "") .. " " .. (Identity.name2 or "")
    end

    local isStaff = vRP.HasGroup(Passport, "Admin") or vRP.HasGroup(Passport, "Moderator") or vRP.HasGroup(Passport, "Suporte")
    local isDev = vRP.HasGroup(Passport, "Developer") or vRP.HasGroup(Passport, "Owner")

    Player(source).state:set("charInfo", {
        citizenId = Passport,
        name = charName
    }, true)
    Player(source).state:set("isStaff", isStaff, true)
    Player(source).state:set("dev", isDev, true)
end

AddEventHandler("Connect", function(Passport, source)
    setupPlayerState(Passport, source)
end)

CreateThread(function()
    local Players = vRP.Players()
    for Passport, source in pairs(Players) do
        setupPlayerState(Passport, source)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- COMMANDS: WALL & LINES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("wall", function(source)
    local Passport = vRP.Passport(source)
    if Passport then
        if vRP.HasGroup(Passport, "Admin") or vRP.HasGroup(Passport, "Moderator") or vRP.HasGroup(Passport, "Suporte") or vRP.HasGroup(Passport, "Developer") then
            TriggerClientEvent("cda-utils:wall", source)
        end
    end
end)

RegisterCommand("lines", function(source)
    local Passport = vRP.Passport(source)
    if Passport then
        if vRP.HasGroup(Passport, "Admin") or vRP.HasGroup(Passport, "Moderator") or vRP.HasGroup(Passport, "Suporte") or vRP.HasGroup(Passport, "Developer") then
            TriggerClientEvent("cda-utils:lines", source)
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP / SERVER
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- TOGGLE ALTIMETER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("fivem-altimeter:toggle")
AddEventHandler("fivem-altimeter:toggle", function(state)
    local source = source
    TriggerClientEvent("fivem-altimeter:toggle", source, state)
end)

exports("toggleAltimeter", function(source, state)
    TriggerClientEvent("fivem-altimeter:toggle", source, state)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION STATUS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("core_connection:status")
AddEventHandler("core_connection:status", function(status)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        Player(source).state:set("offline", not status, true)
        local ped = GetPlayerPed(source)
        if ped and DoesEntityExist(ped) then
            FreezeEntityPosition(ped, not status)
        end
    end
end)

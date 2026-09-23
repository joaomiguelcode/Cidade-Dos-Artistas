-- =============================================
--  txAdmin Resource: sv_main.lua
-- =============================================

-- Ensure essential convars exist
if GetConvar("txAdmin-menuEnabled", "") == "" then
    SetConvarReplicated("txAdmin-menuEnabled", "true")
end

if GetConvar("txAdminServerMode", "") == "" then
    SetConvar("txAdminServerMode", "true")
end

-- vRP Integration
vRP = nil
CreateThread(function()
    while GetResourceState("vrp") ~= "started" do
        Wait(500)
    end
    local Proxy = module("vrp", "lib/Proxy")
    if Proxy then
        vRP = Proxy.getInterface("vRP")
    end
    txPrint("vRP integration initialized successfully.")
end)

txPrint("txAdmin monitor server-side main initialized.")

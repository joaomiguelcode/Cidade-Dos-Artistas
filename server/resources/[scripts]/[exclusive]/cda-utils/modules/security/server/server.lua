-----------------------------------------------------------------------------------------------------------------------------------------
-- SECURITY SERVER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("cda-utils:enterVehicles")
AddEventHandler("cda-utils:enterVehicles", function()
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return end
    -- Player vehicle entry tracking
end)

RegisterServerEvent("cda-utils:saveVehicles")
AddEventHandler("cda-utils:saveVehicles", function()
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return end
    -- Vehicle exit persistence / check
end)

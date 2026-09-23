-- =============================================
--  txAdmin Resource: sv_vehicle.lua
-- =============================================

-- Spawn vehicle
RegisterNetEvent("txsv:req:vehicle:spawn:fivem", function(model, modelType)
    local src = source
    if not CheckMenuPerm(src, "menu.vehicle") then return end

    local ped = GetPlayerPed(src)
    if not DoesEntityExist(ped) then return end

    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)

    local modelHash = type(model) == "string" and joaat(model) or model
    local veh = CreateVehicleServerSetter(modelHash, modelType or "automobile", coords.x, coords.y, coords.z, heading)

    if DoesEntityExist(veh) then
        local netId = NetworkGetNetworkIdFromEntity(veh)
        TriggerClientEvent("txcl:seatInVehicle", src, netId, -1, vector3(0.0, 0.0, 0.0))
    end
end)

-- Delete vehicle
RegisterNetEvent("txsv:req:vehicle:delete", function(vehNetId)
    local src = source
    if not CheckMenuPerm(src, "menu.vehicle") then return end

    if vehNetId and vehNetId > 0 then
        local entity = NetworkGetEntityFromNetworkId(vehNetId)
        if DoesEntityExist(entity) then
            DeleteEntity(entity)
        end
    end
end)

-- Fix vehicle
RegisterNetEvent("txsv:req:vehicle:fix", function()
    local src = source
    if not CheckMenuPerm(src, "menu.vehicle") then return end
    TriggerClientEvent("txcl:vehicle:fix", src)
end)

-- Boost vehicle
RegisterNetEvent("txsv:req:vehicle:boost", function()
    local src = source
    if not CheckMenuPerm(src, "menu.vehicle") then return end
    TriggerClientEvent("txcl:vehicle:boost", src)
end)

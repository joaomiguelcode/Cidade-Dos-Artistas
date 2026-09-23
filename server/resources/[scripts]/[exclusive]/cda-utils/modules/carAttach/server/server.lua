-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLE ATTACH SERVER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("vehicleAttach")
AddEventHandler("vehicleAttach", function(vehNet, pvehNet, maxVehicles)
    local source = source
    local vehicle = NetworkGetEntityFromNetworkId(vehNet)
    local pvehicle = NetworkGetEntityFromNetworkId(pvehNet)

    if DoesEntityExist(vehicle) and DoesEntityExist(pvehicle) then
        local attachList = Entity(vehicle).state.attach or {}
        local maxAllowed = maxVehicles or 1

        if #attachList < maxAllowed then
            local newEntry = {
                vehicle = vehNet,
                vehicleAttach = pvehNet
            }
            table.insert(attachList, newEntry)
            Entity(vehicle).state:set("attach", attachList, true)
            Entity(pvehicle).state:set("attached", true, true)
        end
    end
end)

RegisterServerEvent("vehicleDettach")
AddEventHandler("vehicleDettach", function(vehNet)
    local source = source
    local vehicle = NetworkGetEntityFromNetworkId(vehNet)

    if DoesEntityExist(vehicle) then
        local attachList = Entity(vehicle).state.attach or {}
        if #attachList > 0 then
            local lastEntry = attachList[#attachList]
            table.remove(attachList, #attachList)
            Entity(vehicle).state:set("attach", attachList, true)

            local pvehicle = NetworkGetEntityFromNetworkId(lastEntry.vehicleAttach)
            if DoesEntityExist(pvehicle) then
                Entity(pvehicle).state:set("attached", false, true)
            end
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SYNC SUSPENSION & TUNING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("zo_tuning_suspe")
AddEventHandler("zo_tuning_suspe", function(vehNet, value, suspensao)
    TriggerClientEvent("zo_tuning:syncSuspension", -1, vehNet, value, suspensao)
end)

RegisterServerEvent("zo_tuning:syncState")
AddEventHandler("zo_tuning:syncState", function(vehNet, tuningData)
    TriggerClientEvent("zo_tuning:sync", -1, vehNet, tuningData)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
exports("getVehicleTuning", function(plate)
    if plate then
        local data = zof.getSData("zo_tuning:"..plate)
        if data and data ~= "" and data ~= "{}" then
            return json.decode(data)
        end
    end
    return nil
end)

exports("setVehicleTuning", function(plate, tuningTable)
    if plate and tuningTable then
        zof.setSData("zo_tuning:"..plate, json.encode(tuningTable))
    end
end)

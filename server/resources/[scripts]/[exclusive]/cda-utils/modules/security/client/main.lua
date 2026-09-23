lib.onCache('vehicle', function(value)
    if value then TriggerServerEvent("cda-utils:enterVehicles") return end
    if (cache.seat ~= -1) then return end
    TriggerServerEvent("cda-utils:saveVehicles")
end)
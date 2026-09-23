if config.interact_sound_enable then

    RegisterNetEvent('InteractSound_SV:PlayOnOne')
    AddEventHandler('InteractSound_SV:PlayOnOne', function(clientNetId, soundFile, soundVolume)
        local target = tonumber(clientNetId)
        if target and target > 0 then
            TriggerClientEvent('InteractSound_CL:PlayOnOne', target, soundFile, soundVolume)
        end
    end)

    RegisterNetEvent('InteractSound_SV:PlayOnSource')
    AddEventHandler('InteractSound_SV:PlayOnSource', function(soundFile, soundVolume)
        local src = source
        if src and src > 0 then
            TriggerClientEvent('InteractSound_CL:PlayOnOne', src, soundFile, soundVolume)
        end
    end)

    RegisterNetEvent('InteractSound_SV:PlayOnAll')
    AddEventHandler('InteractSound_SV:PlayOnAll', function(soundFile, soundVolume)
        TriggerClientEvent('InteractSound_CL:PlayOnAll', -1, soundFile, soundVolume)
    end)

    RegisterNetEvent('InteractSound_SV:PlayWithinDistance')
    AddEventHandler('InteractSound_SV:PlayWithinDistance', function(maxDistance, soundFile, soundVolume)
        local src = source
        if src and src > 0 then
            TriggerClientEvent('InteractSound_CL:PlayWithinDistance', -1, src, maxDistance, soundFile, soundVolume)
        end
    end)

end

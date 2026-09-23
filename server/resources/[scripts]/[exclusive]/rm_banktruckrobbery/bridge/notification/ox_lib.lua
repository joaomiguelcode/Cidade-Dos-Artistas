if cfg.notification ~= 'ox_lib' then return end

local isClient = not IsDuplicityVersion()
if isClient then
    notify = function(text, type)
        lib.notify({
            description = text,
            type = type,
        })
    end

    RegisterNetEvent(('%s:client:notify'):format(cache.resource), notify)
else
    notify = function(playerId, text, type)
        TriggerClientEvent(('%s:client:notify'):format(cache.resource), playerId, text, type)
    end
end

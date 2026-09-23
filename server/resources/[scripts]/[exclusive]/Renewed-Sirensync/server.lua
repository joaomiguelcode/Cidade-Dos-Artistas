-----------------------------------------------------------------------------------------------------------------------------------------
-- RENEWED-SIRENSYNC SERVER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('Renewed-Sirensync:server:SyncState', function(netId, isAllowed)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if not DoesEntityExist(entity) then return end

    local state = Entity(entity).state
    if not state.stateEnsured then
        state:set('stateEnsured', true, true)
        state:set('lightsOn', false, true)
        state:set('sirenMode', 0, true)
        state:set('horn', false, true)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
exports('SetSirenMode', function(netId, mode)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if DoesEntityExist(entity) then
        Entity(entity).state:set('sirenMode', mode or 0, true)
    end
end)

exports('SetLightsState', function(netId, status)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if DoesEntityExist(entity) then
        Entity(entity).state:set('lightsOn', status or false, true)
    end
end)

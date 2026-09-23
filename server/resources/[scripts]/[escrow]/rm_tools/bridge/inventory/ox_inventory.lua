if cfg.inventory == 'auto' then
    -- qs-inventory fxmanifest has “provide ‘ox_inventory’” for some reason?
    if not GetResourceState('ox_inventory'):find('start') or GetResourceState('qs-inventory'):find('start') then
        return
    end
    cfg.inventory = 'ox_inventory'
elseif cfg.inventory ~= 'ox_inventory' then
    return
end

oxInv = exports.ox_inventory

if cfg.enableDurability then
    local isServer = IsDuplicityVersion()
    if isServer then
        local durabilityReduction = (cfg.durabilityReduction or 2)
        function reduceDurability(playerId, slot, item)
            local slotData = oxInv:GetSlot(playerId, slot)
            if not slotData or slotData.name ~= item then
                slotData = oxInv:GetSlotWithItem(playerId, item)
                if not slotData or slotData.name ~= item then
                    TriggerClientEvent('rm_tools:client:stopEffect', playerId, cfg.toolTypes[item])
                    return
                end
            end

            local durability = slotData.metadata.durability or 100
            local newDurability = durability - durabilityReduction
            if newDurability <= 0 then
                newDurability = 0
                TriggerClientEvent('rm_tools:client:stopEffect', playerId, cfg.toolTypes[item])
            end

            oxInv:SetDurability(playerId, slotData.slot, newDurability)
        end
    else
        local isOnESX
        if cfg.framework == 'auto' then
            if GetResourceState('es_extended'):find('start') then
                isOnESX = true
            end
        elseif cfg.framework == 'esx' then
            isOnESX = true
        end

        if isOnESX then
            RegisterNetEvent('esx:removeInventoryItem', function(name, count)
                if cfg.toolTypes[name] and count <= 0 then
                    TriggerEvent('rm_tools:client:stopEffect', cfg.toolTypes[name])
                end
            end)
        end

        AddEventHandler('ox_inventory:itemCount', function(name, count)
            if cfg.toolTypes[name] and count <= 0 then
                TriggerEvent('rm_tools:client:stopEffect', cfg.toolTypes[name])
            end
        end)

        AddEventHandler('ox_inventory:currentWeapon', function(weapon)
            if weapon and weapon.name then
                local name = weapon.name:upper()
                local type = cfg.toolTypes[name]
                if type then
                    local data = {
                        name = weapon.name,
                        slot = weapon.slot,
                        durability = weapon.metadata and weapon.metadata.durability,
                    }
                    if type == 'weld' then
                        initWeld(data)
                    elseif type == 'drill' then
                        initDrill(data)
                    end
                end
            end
        end)
    end
end

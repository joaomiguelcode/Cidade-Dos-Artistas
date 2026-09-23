if cfg.inventory == 'auto' then
    if not GetResourceState('origen_inventory'):find('start') then
        return
    end
    cfg.inventory = 'origen_inventory'
elseif cfg.inventory ~= 'origen_inventory' then
    return
end

local inv = exports.origen_inventory

if cfg.enableDurability then
    local isServer = IsDuplicityVersion()
    if isServer then
        local metadataKey
        local durabilityReduction = (cfg.durabilityReduction or 2)
        function reduceDurability(playerId, slot, item)
            local slotData = slot and inv:getSlot(playerId, slot) or nil
            if not slotData or slotData.name ~= item then
                local items = inv:getItem(playerId, item)
                if not items or items[1].name ~= item then
                    TriggerClientEvent('rm_tools:client:stopEffect', playerId, cfg.toolTypes[item])
                    return
                elseif items and items[1].name == item then
                    slotData = items[1]
                end
            end

            if slotData then
                local metadataKey
                if type(slotData.info) == 'table' then
                    metadataKey = 'info'
                elseif type(slotData.metadata) == 'table' then
                    metadataKey = 'metadata'
                end

                if metadataKey then
                    local durability = slotData[metadataKey].quality or 100
                    local newDurability = durability - durabilityReduction

                    if newDurability >= 0 then
                        slotData[metadataKey].quality = newDurability
                    else
                        slotData[metadataKey].quality = 0
                        TriggerClientEvent('rm_tools:client:stopEffect', playerId, cfg.toolTypes[item])
                    end

                    inv:setMetadata(playerId, slotData.slot, slotData[metadataKey])
                end
            end
        end
    else
        RegisterNetEvent('inventory:client:UseWeapon', function(weapon, canShoot)
            if canShoot and weapon and weapon.name then
                local name = weapon.name:upper()
                local type = cfg.toolTypes[name]
                if type then
                    local metadata = weapon.info or weapon.metadata
                    local data = {
                        name = weapon.name,
                        slot = weapon.slot,
                        durability = metadata.quality,
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

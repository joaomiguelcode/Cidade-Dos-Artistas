if cfg.inventory == 'auto' then
    if not GetResourceState('ak47_qb_inventory'):find('start') and not GetResourceState('ak47_inventory'):find('start') then
        return
    end
    cfg.inventory = 'ak47_inventory'
elseif cfg.inventory ~= 'ak47_inventory' then
    return
end

local inv = GetResourceState('ak47_qb_inventory'):find('start') and exports.ak47_qb_inventory or exports.ak47_inventory

if cfg.enableDurability then
    local isServer = IsDuplicityVersion()
    if isServer then
        local durabilityReduction = (cfg.durabilityReduction or 2)
        function reduceDurability(playerId, slot, item)
            local slotData = inv:GetSlot(playerId, slot)
            if not slotData or slotData.name ~= item then
                local slotId = inv:GetSlotIdsWithItem(playerId, item)
                if not slotId then
                    TriggerClientEvent('rm_tools:client:stopEffect', playerId, cfg.toolTypes[item])
                    return
                else
                    slotData = inv:GetSlot(playerId, slotId)
                end
            end

            local durability = slotData.info.quality or 100
            local newDurability = durability - durabilityReduction
            if newDurability <= 0 then
                newDurability = 0
                TriggerClientEvent('rm_tools:client:stopEffect', playerId, cfg.toolTypes[item])
            end

            inv:SetQuality(playerId, slotData.slot, newDurability)
        end
    else
        RegisterNetEvent('ak47_inventory:onEquipWeapon', function(weapon)
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

        RegisterNetEvent('ak47_inventory:onRemoveItem', function(name, amount, slot, count)
            if cfg.toolTypes[name] then
                TriggerEvent('rm_tools:client:stopEffect', cfg.toolTypes[name])
            end
        end)
    end
end

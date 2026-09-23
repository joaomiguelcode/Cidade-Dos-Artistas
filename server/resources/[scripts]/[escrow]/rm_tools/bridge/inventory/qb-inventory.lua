if cfg.inventory == 'auto' then
    if not GetResourceState('qb-inventory'):find('start') then
        return
    end
    cfg.inventory = 'qb-inventory'
elseif cfg.inventory ~= 'qb-inventory' then
    return
end

local QBCore = exports['qb-core']:GetCoreObject()
local inv = exports['qb-inventory']

if cfg.enableDurability then
    local isServer = IsDuplicityVersion()
    if isServer then
        local durabilityReduction = (cfg.durabilityReduction or 2)
        function reduceDurability(playerId, slot, item)
            local slotData = inv:GetItemBySlot(playerId, slot)
            if not slotData or slotData.name ~= item then
                slotData = inv:GetItemByName(playerId, item)
                if not slotData or slotData.name ~= item then
                    TriggerClientEvent('rm_tools:client:stopEffect', playerId, cfg.toolTypes[item])
                    return
                end
            end

            local durability = slotData.info.quality or 100
            local newDurability = durability - durabilityReduction
            if newDurability <= 0 then
                newDurability = 0
                TriggerClientEvent('rm_tools:client:stopEffect', playerId, cfg.toolTypes[item])
            end

            local items = QBCore.Functions.GetPlayer(playerId).PlayerData.items
            items[slotData.slot].info.quality = newDurability
            inv:SetInventory(playerId, items)
        end
    else
        RegisterNetEvent('qb-inventory:client:itemRemoved', function(name, oldCount, count)
            if cfg.toolTypes[name] and count <= 0 then
                TriggerEvent('rm_tools:client:stopEffect', cfg.toolTypes[name])
            end
        end)

        RegisterNetEvent('qb-weapons:client:UseWeapon', function(weapon, canShoot)
            if canShoot and weapon and weapon.name then
                local name = weapon.name:upper()
                local type = cfg.toolTypes[name]
                if type then
                    local data = {
                        name = weapon.name,
                        slot = weapon.slot,
                        durability = weapon.info and weapon.info.quality,
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

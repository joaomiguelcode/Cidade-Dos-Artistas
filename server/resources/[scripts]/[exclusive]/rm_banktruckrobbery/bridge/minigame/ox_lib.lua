if cfg.minigame ~= 'ox_lib' then return end

minigames = {}
minigames['placement_start'] = function()
    return lib.skillCheck('medium')
end

-- -- remove from comment lines to activate

-- minigames[cfg.items.c4] = function()
--     return lib.skillCheck('medium')
-- end

-- minigames[cfg.items.hackdevice] = function()
--     return lib.skillCheck('medium')
-- end

-- minigames[cfg.items.gastank] = function()
--     return lib.skillCheck('medium')
-- end

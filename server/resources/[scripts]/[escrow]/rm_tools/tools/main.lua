local stateBagStrictMode = GetConvar('sv_stateBagStrictMode', 'false') == 'true' and true or false

cfg.toolTypes = {}
for type, name in pairs(cfg.tools) do
    cfg.toolTypes[name] = type
end

local isClient = not IsDuplicityVersion()
if isClient then
    using, obj = nil, nil
    weaponHashes = {
        weld = joaat(cfg.tools.weld),
        drill = joaat(cfg.tools.drill),
    }

    AddTextEntry('WEAPON_WELD', 'Portable Weld')
    AddTextEntry('WEAPON_DRILL', 'Portable Drill')

    function setStatebag(key, data)
        if not stateBagStrictMode then
            LocalPlayer.state:set('rm_tools:' .. key, data, true)
        else
            TriggerServerEvent('rm_tools:server:forceState', key, data)
        end
    end

    RegisterNetEvent('rm_tools:client:stopEffect', function(type)
        if using == 'drill' and using == type then
            removeDrill()
        elseif using == 'weld' and using == type then
            removeWeld()
        end
    end)

    lib.onCache('weapon', function(value)
        if value then
            if value == weaponHashes.weld then
                Wait(500)
                initWeld()
            elseif value == weaponHashes.drill then
                Wait(500)
                initDrill()
            end
        end
    end)

    AddEventHandler('onResourceStop', function(resource)
        if resource == cache.resource then
            if using == 'drill' then
                removeDrill()
            elseif using == 'weld' then
                removeWeld()
            end
        end
    end)
else
    SetTimeout(500, function()
        if cfg.enableDurability and reduceDurability then
            players = {}

            local interval = cfg.durabilityReductionInterval or 5000
            while true do
                local time = GetGameTimer()

                for playerId, data in pairs(players) do
                    if time >= data.lastTime + interval then
                        reduceDurability(playerId, slot, data.item)
                        data.lastTime = time
                    end
                end

                Wait(interval)
            end
        end
    end)

    if stateBagStrictMode then
        RegisterNetEvent('rm_tools:server:forceState', function(key, data)
            local playerId = source
            if not key:find('Effect') then return end

            Player(playerId).state:set('rm_tools:' .. key, data, true)
        end)
    end
end

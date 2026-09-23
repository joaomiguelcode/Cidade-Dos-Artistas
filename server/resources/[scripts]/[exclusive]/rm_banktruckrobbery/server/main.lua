local GlobalTruckCooldown = 0
local PlayerCooldowns = {}
local ActiveTrucks = {}

-----------------------------------------------------------------------------------------------------------------------------------------
-- BUY ITEMS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('rm_banktruck:server:buy')
AddEventHandler('rm_banktruck:server:buy', function(item, quantity)
    local source = source
    local count = parseInt(quantity) or 1
    if count <= 0 then return end

    local priceCfg = cfg.prices and cfg.prices.buy and cfg.prices.buy[item]
    if priceCfg then
        local totalPrice = (priceCfg.price or 1000) * count
        if Framework.removeMoney(source, totalPrice, priceCfg.moneyType or "cash") then
            Framework.addItem(source, item, count)
            TriggerClientEvent('ox_lib:notify', source, {
                title = 'Loja Clandestina',
                description = 'Você comprou '..count..'x '..(priceCfg.label or item)..' por $'..parseFormat(totalPrice),
                type = 'success'
            })
        else
            TriggerClientEvent('ox_lib:notify', source, {
                title = 'Loja Clandestina',
                description = 'Dinheiro insuficiente.',
                type = 'error'
            })
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- START TRACKING CALLBACK
-----------------------------------------------------------------------------------------------------------------------------------------
lib.callback.register('rm_banktruck:server:startTrackingTruck', function(source)
    local Passport = Framework.getIdentifier(source)
    if not Passport then return false end

    -- Check Police
    local policeCount = Framework.getPoliceCount()
    if policeCount < (cfg.requiredPoliceCountForSpawn or 1) then
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Aviso',
            description = 'Não há policiais suficientes em serviço.',
            type = 'warning'
        })
        return false
    end

    -- Check Global Cooldown
    if GlobalTruckCooldown > os.time() then
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Aviso',
            description = 'Nenhum carro-forte transportando malotes no momento. Aguarde.',
            type = 'warning'
        })
        return false
    end

    -- Check Player Cooldown
    if PlayerCooldowns[Passport] and PlayerCooldowns[Passport] > os.time() then
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Aviso',
            description = 'Você precisa aguardar antes de rastrear outro carro-forte.',
            type = 'warning'
        })
        return false
    end

    -- Cost for info
    local fee = cfg.prices and cfg.prices.locationInfo or 15000
    if fee > 0 then
        if not Framework.removeMoney(source, fee, "cash") then
            TriggerClientEvent('ox_lib:notify', source, {
                title = 'Aviso',
                description = 'Você não possui $'..parseFormat(fee)..' para obter a informação.',
                type = 'error'
            })
            return false
        end
    end

    GlobalTruckCooldown = os.time() + ((cfg.manuelTruckSpawnCooldown or 15) * 60)
    PlayerCooldowns[Passport] = os.time() + ((cfg.cooldownPerPlayer or 30) * 60)

    -- Request client to spawn or obtain truck
    SetTimeout(500, function()
        local success, vehNetId = pcall(function()
            return lib.callback.await('rm_banktruck:client:spawnTruck', source)
        end)
        if success and vehNetId then
            ActiveTrucks[vehNetId] = true
        end
    end)

    return true
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- STOP TRACKING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('rm_banktruck:server:stopTracking')
AddEventHandler('rm_banktruck:server:stopTracking', function(vehNetId)
    if vehNetId then
        ActiveTrucks[vehNetId] = nil
        TriggerClientEvent('rm_banktruck:client:removeTruckBlip', -1, vehNetId)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- POLICE DISPATCH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("rm_banktruck:server:dispatch")
AddEventHandler("rm_banktruck:server:dispatch", function(coords)
    local source = source
    local Service = vRP.NumPermission("Police")
    for _, Sources in pairs(Service) do
        async(function()
            TriggerClientEvent("NotifyPush", Sources, {
                code = 31,
                title = "Alarme de Carro-Forte",
                x = coords.x,
                y = coords.y,
                z = coords.z,
                criminal = "Tentativa de assalto a carro-forte em andamento",
                time = "Recebido às "..os.date("%H:%M"),
                blipColor = 1
            })
        end)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- TRUCK SYNC EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('rm_banktruck:server:itemPlaced')
AddEventHandler('rm_banktruck:server:itemPlaced', function(vehNetId, method)
    -- State sync if required
end)

RegisterServerEvent('rm_banktruck:server:hingeBroken')
AddEventHandler('rm_banktruck:server:hingeBroken', function(vehNetId, hingeIndex)
    -- Hinge sync if required
end)

RegisterServerEvent('rm_banktruck:server:registerMoneyObjects')
AddEventHandler('rm_banktruck:server:registerMoneyObjects', function(vehNetId, moneyObjects)
    -- Register money objects
end)

RegisterServerEvent('rm_banktruck:server:reassignTaskToDriver')
AddEventHandler('rm_banktruck:server:reassignTaskToDriver', function(driverNetId, onSpawn)
    TriggerClientEvent('rm_banktruck:client:assignTaskToDriver', -1, driverNetId, onSpawn)
end)

RegisterServerEvent('rm_banktruck:server:passengerPassedToDriver')
AddEventHandler('rm_banktruck:server:passengerPassedToDriver', function(vehicleNetId)
    TriggerClientEvent('rm_banktruck:client:passPassengerToDriver', -1, vehicleNetId)
end)

RegisterServerEvent('rm_banktruck:server:registerBackPassengers')
AddEventHandler('rm_banktruck:server:registerBackPassengers', function(vehNetId, passengersTable)
    TriggerClientEvent('rm_banktruck:client:initBackPassengers', -1, passengersTable)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- COLLECT REWARDS CALLBACK
-----------------------------------------------------------------------------------------------------------------------------------------
lib.callback.register('rm_banktruck:server:collectRewards', function(source, vehNetId)
    local Passport = Framework.getIdentifier(source)
    if not Passport then return false end

    local minReward = cfg.truckReward.money[1] or 200000
    local maxReward = cfg.truckReward.money[2] or 400000
    local reward = math.random(minReward, maxReward)

    Framework.addMoney(source, reward, cfg.truckReward.moneyType or "black_money")

    -- Chance for items
    if cfg.truckReward.items and cfg.truckReward.items.chance > 0 then
        if math.random(1, 100) <= cfg.truckReward.items.chance then
            for item, itemData in pairs(cfg.truckReward.items.list or {}) do
                if math.random(1, 100) <= (itemData.chance or 50) then
                    local count = 1
                    if type(itemData.amount) == "table" then
                        count = math.random(itemData.amount[1], itemData.amount[2])
                    else
                        count = itemData.amount or 1
                    end
                    Framework.addItem(source, item, count)
                end
            end
        end
    end

    TriggerClientEvent('ox_lib:notify', source, {
        title = 'Carro-Forte Saqueado',
        description = 'Você conseguiu coletar $'..parseFormat(reward)..' dos malotes.',
        type = 'success'
    })

    DiscordLog("Carro-Forte Saqueado", "**Jogador:** "..Passport.." ("..Framework.getName(source)..")\n**Recompensa:** $"..parseFormat(reward))

    return true
end)

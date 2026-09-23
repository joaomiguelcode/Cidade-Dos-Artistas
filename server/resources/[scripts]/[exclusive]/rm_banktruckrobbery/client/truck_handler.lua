-- https://forge.plebmasters.de/vehicleflags?category=DrivingStyleFlags&value=1074268283
local rules = {
    safe = {
        style = 1074284731,
        speed = 15.0,
    },
    fast = {
        style = 1074268257,
        speed = 20.0,
    },
}
local defaultRelationshipHash = `SECURITY_GUARD`
local _, madRelationshipHash = AddRelationshipGroup('SECURITY_GUARD_MAD')
SetRelationshipBetweenGroups(5, madRelationshipHash, `PLAYER`)
SetRelationshipBetweenGroups(5, `PLAYER`, madRelationshipHash)

local math_random = math.random

local function getSpawnPos()
    -- local coords = FindRandomPointInSpace(cache.ped)
    local coords = vec3(2625.7,4312.95,43.94)

    local i = 1
    local success, pos = pcall(lib.waitFor, function()
        local retval, pos, heading = GetNthClosestVehicleNodeWithHeading(coords.x + math_random(-800, 800), coords.y + math_random(-800, 800), coords.z, i, 0, 3.0, 2.5)
        i = i + 1
        if retval and not IsSphereVisible(pos.x, pos.y, pos.z, 5.0) then
            coords = GetEntityCoords(cache.ped)
            local distance = #(coords - pos)
            if distance > 50 and distance < 4000 then
                return vec4(pos.x, pos.y, pos.z, heading)
            end
        end
    end, '', 5000)

    return success and pos
end

local function setTasks(vehicle, driver, passenger)
    SetPedRelationshipGroupHash(driver, defaultRelationshipHash)
    SetPedCombatAttributes(driver, 3, false) --CA_LEAVE_VEHICLES
    SetEntityMaxHealth(driver, cfg.truckPassengerHealth or 200)
    SetEntityHealth(driver, cfg.truckPassengerHealth or 200)
    SetPedArmour(driver, cfg.truckPassengerArmor or 100)
    SetCanAttackFriendly(driver, false, false)
    SetPedDropsWeaponsWhenDead(driver, false)
    SetDriverAbility(driver, 1.0)
    SetDriverAggressiveness(driver, 0.0)
    SetBlockingOfNonTemporaryEvents(driver, true)

    if DoesEntityExist(passenger) then
        SetPedRelationshipGroupHash(passenger, defaultRelationshipHash)
        SetPedCombatAttributes(passenger, 2, true)  --CA_DO_DRIVEBYS
        SetPedCombatAttributes(passenger, 3, false) --CA_LEAVE_VEHICLES
        SetPedCombatAttributes(passenger, 27, true) --CA_PERFECT_ACCURACY
        SetPedCombatAttributes(passenger, 46, true) --CA_CAN_FIGHT_ARMED_PEDS_WHEN_NOT_ARMED
        SetPedCombatAttributes(passenger, 83, true) --CA_REQUIRES_LOS_TO_AIM
        SetPedCombatAbility(passenger, 2)           --CA_Professional
        SetPedCombatRange(passenger, 2)             --CR_FAR
        SetEntityMaxHealth(passenger, cfg.truckPassengerHealth or 200)
        SetEntityHealth(passenger, cfg.truckPassengerHealth or 200)
        SetPedArmour(passenger, cfg.truckPassengerArmor or 100)
        SetCanAttackFriendly(passenger, false, false)
        GiveWeaponToPed(passenger, cfg.truckPassengerWeapon, 9999, true, false)
        SetCurrentPedWeapon(passenger, cfg.truckPassengerWeapon, true)
        SetPedDropsWeaponsWhenDead(passenger, false)
        SetPedConfigFlag(passenger, 14, true) -- CPED_CONFIG_FLAG_DoesntDropWeaponsWhenDead
    end

    local rule = 'safe'
    TaskVehicleDriveWander(driver, vehicle, rules[rule].speed, rules[rule].style)

    while DoesEntityExist(vehicle) and DoesEntityExist(driver) and NetworkGetEntityOwner(driver) == cache.playerId do
        if IsPedDeadOrDying(driver, false) then
            ClearVehicleTasks(vehicle)
            break
        end

        if NetworkGetEntityOwner(driver) ~= cache.playerId then
            TriggerServerEvent('rm_banktruck:server:reassignTaskToDriver', driverNetId)
            break
        end

        if passenger and DoesEntityExist(passenger) and GetEntityHealth(passenger) > 0 then
            local target = GetPedTaskCombatTarget(passenger)
            if target > 0 then
                if DoesEntityExist(target) then
                    local targetCoords = GetEntityCoords(target)
                    local vehicleCoords = GetEntityCoords(vehicle)
                    if #(targetCoords - vehicleCoords) <= 50.0 then
                        if rule ~= 'fast' then
                            rule = 'fast'
                            TaskVehicleDriveWander(driver, vehicle, rules[rule].speed, rules[rule].style)
                        end
                    else
                        ClearPedTasks(passenger)

                        if rule ~= 'safe' then
                            rule = 'safe'
                            TaskVehicleDriveWander(driver, vehicle, rules[rule].speed, rules[rule].style)
                        end
                    end
                else
                    ClearPedTasks(passenger)

                    if rule ~= 'safe' then
                        rule = 'safe'
                        TaskVehicleDriveWander(driver, vehicle, rules[rule].speed, rules[rule].style)
                    end
                end
            elseif target == 0 and rule ~= 'safe' then
                rule = 'safe'
                TaskVehicleDriveWander(driver, vehicle, rules[rule].speed, rules[rule].style)
            end
        elseif rule ~= 'safe' then
            rule = 'safe'
            TaskVehicleDriveWander(driver, vehicle, rules[rule].speed, rules[rule].style)
        end

        if GetScriptTaskStatus(driver, 0xF09B15B3) ~= 1 then
            TaskVehicleDriveWander(driver, vehicle, rules[rule].speed, rules[rule].style)
        end

        Wait(100)
    end
end

lib.callback.register('rm_banktruck:client:spawnTruck', function()
    local pos = getSpawnPos()
    if not pos then return false end

    lib.requestModel(cfg.truckModel)
    local vehicle = CreateVehicle(cfg.truckModel, pos.x, pos.y, pos.z, pos.w, true, true)
    while not DoesEntityExist(vehicle) do Wait(100) end

    lib.requestModel(cfg.truckPassengerModel)
    local driver = CreatePedInsideVehicle(vehicle, 0, cfg.truckPassengerModel, -1, true, true)
    while not DoesEntityExist(driver) do Wait(100) end

    local passenger = CreatePedInsideVehicle(vehicle, 0, cfg.truckPassengerModel, 0, true, true)
    while not DoesEntityExist(passenger) do Wait(100) end

    if onSpawn and onTruckSpawn then
        onTruckSpawn(vehicle)
    end

    CreateThread(function()
        SetModelAsNoLongerNeeded(cfg.truckModel)
        SetModelAsNoLongerNeeded(cfg.truckPassengerModel)

        setTasks(vehicle, driver, passenger)
    end)

    return {
        vehNetId = NetworkGetNetworkIdFromEntity(vehicle),
        driverNetId = NetworkGetNetworkIdFromEntity(driver),
        passengerNetId = NetworkGetNetworkIdFromEntity(passenger),
    }
end)

lib.callback.register('rm_banktruck:client:getSpawnReqs', function()
    local pos = getSpawnPos()
    if not pos then return false end

    lib.requestModel(cfg.truckModel)
    local tempVehicle = CreateVehicle(cfg.truckModel, pos.x, pos.y, pos.z, pos.w, false, false)
    local vehType = GetVehicleType(tempVehicle)
    SetModelAsNoLongerNeeded(cfg.truckModel)
    DeleteEntity(tempVehicle)

    return { pos = pos, type = vehType }
end)

RegisterNetEvent('rm_banktruck:client:assignTaskToDriver', function(driverNetId, onSpawn)
    if not NetworkDoesNetworkIdExist(driverNetId) then return end

    local driver = NetworkGetEntityFromNetworkId(driverNetId)
    if not DoesEntityExist(driver) then return end

    if NetworkGetEntityOwner(driver) ~= cache.playerId then
        TriggerServerEvent('rm_banktruck:server:reassignTaskToDriver', driverNetId, onSpawn)
        return
    end

    local vehicle = GetVehiclePedIsIn(driver, false)
    if not DoesEntityExist(vehicle) then return end

    ClearVehicleTasks(vehicle)

    if onSpawn and onTruckSpawn then
        onTruckSpawn(vehicle)
    end

    local passenger = GetPedInVehicleSeat(vehicle, 0)
    setTasks(vehicle, driver, passenger)
end)

RegisterNetEvent('rm_banktruck:client:passPassengerToDriver', function(passengerNetId)
    if not NetworkDoesNetworkIdExist(passengerNetId) then return end

    local passenger = NetworkGetEntityFromNetworkId(passengerNetId)
    if not DoesEntityExist(passenger) then return end

    if NetworkGetEntityOwner(passenger) ~= cache.playerId then return end

    local vehicle = GetVehiclePedIsIn(passenger, false)
    if not DoesEntityExist(vehicle) then return end

    ClearVehicleTasks(vehicle)
    SetBlockingOfNonTemporaryEvents(passenger, true)
    TaskShuffleToNextVehicleSeat(passenger, vehicle)

    while GetScriptTaskStatus(passenger, 0x153011FC) ~= 7 do
        if GetScriptTaskStatus(passenger, 0x153011FC) == 2 then
            TaskShuffleToNextVehicleSeat(passenger, vehicle)
        end
        Wait(1000)
    end

    ClearPedTasks(passenger)

    local vehicleNetId = NetworkGetNetworkIdFromEntity(vehicle)
    TriggerServerEvent('rm_banktruck:server:passengerPassedToDriver', vehicleNetId)

    setTasks(vehicle, passenger)
end)

local function initBackPassenger(ped)
    SetPedRelationshipGroupHash(ped, madRelationshipHash)
    SetPedCombatAttributes(ped, 2, true)  --CA_DO_DRIVEBYS
    SetPedCombatAttributes(ped, 3, false) --CA_LEAVE_VEHICLES
    SetPedCombatAttributes(ped, 27, true) --CA_PERFECT_ACCURACY
    SetPedCombatAttributes(ped, 46, true) --CA_CAN_FIGHT_ARMED_PEDS_WHEN_NOT_ARMED
    SetPedCombatAttributes(ped, 83, true) --CA_REQUIRES_LOS_TO_AIM
    SetPedCombatAbility(ped, 2)           --CA_Professional
    SetPedCombatRange(ped, 2)             --CR_FAR
    SetEntityMaxHealth(ped, cfg.truckPassengerHealth or 200)
    SetEntityHealth(ped, cfg.truckPassengerHealth or 200)
    SetPedArmour(ped, cfg.truckPassengerArmor or 100)
    SetCanAttackFriendly(ped, false, false)
    GiveWeaponToPed(ped, cfg.truckPassengerWeapon, 9999, true, false)
    SetCurrentPedWeapon(ped, cfg.truckPassengerWeapon, true)
    SetPedDropsWeaponsWhenDead(ped, false)
    SetPedConfigFlag(ped, 14, true) -- CPED_CONFIG_FLAG_DoesntDropWeaponsWhenDead
    SetBlockingOfNonTemporaryEvents(ped, true)
end

function spawnBackPassengers(vehicle, vehNetId)
    local backPassenger = CreatePedInsideVehicle(vehicle, 0, cfg.truckPassengerModel, 1, true, true)
    while not DoesEntityExist(backPassenger) do Wait(100) end

    local backPassenger2 = CreatePedInsideVehicle(vehicle, 0, cfg.truckPassengerModel, 2, true, true)
    while not DoesEntityExist(backPassenger2) do Wait(100) end

    CreateThread(function()
        SetModelAsNoLongerNeeded(cfg.truckPassengerModel)

        initBackPassenger(backPassenger)
        initBackPassenger(backPassenger2)
    end)

    TriggerServerEvent('rm_banktruck:server:registerBackPassengers', vehNetId, {
        NetworkGetNetworkIdFromEntity(backPassenger),
        NetworkGetNetworkIdFromEntity(backPassenger2),
    })
end

RegisterNetEvent('rm_banktruck:client:initBackPassengers', function(netIds)
    for i = 1, #netIds do
        local ped = NetworkGetEntityFromNetworkId(netIds[i])

        if ped > 0 then
            initBackPassenger(ped)
        end
    end
end)

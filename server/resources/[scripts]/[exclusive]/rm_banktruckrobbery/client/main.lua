local drillObj, hintObj, itemObj, bagObj

local SECOND = 1000
local MINUTE = 60 * SECOND

local _, backRelationHash = AddRelationshipGroup('SECURITY_GUARD_BACK_PASSENGERS')
SetRelationshipBetweenGroups(5, backRelationHash, `PLAYER`)
SetRelationshipBetweenGroups(5, `PLAYER`, backRelationHash)

local rm_tools = exports.rm_tools
local iconPath = 'https://cfx-nui-' .. cache.resource .. '/assets/images/'

local GetEntityCoords = GetEntityCoords
local GetEntityHeading = GetEntityHeading
local IsPlayerFreeAiming = IsPlayerFreeAiming
local GetOffsetFromEntityInWorldCoords = GetOffsetFromEntityInWorldCoords
local IsControlJustReleased = IsControlJustReleased
local DisableControlAction = DisableControlAction
local IsDisabledControlPressed = IsDisabledControlPressed
local GetScriptTaskStatus = GetScriptTaskStatus
local getHeadingFromVector_2d = GetHeadingFromVector_2d
local DrawMarker = DrawMarker
local SetEntityLocallyInvisible = SetEntityLocallyInvisible
local DisablePlayerFiring = DisablePlayerFiring
local DisableFrontendThisFrame = DisableFrontendThisFrame
local SetEntityCoords = SetEntityCoords

local math_floor = math.floor
local math_abs = math.abs
local math_random = math.random

local collectSceneData = {
    ANIMATIONS = {
        {
            CLIP_NAMES = { 'intro', 'bag_intro' },
            HOLD_LAST_FRAME = true,
            LOOPED = false,
        },
        {
            CLIP_NAMES = { 'grab', 'bag_grab' },
            HOLD_LAST_FRAME = false,
            LOOPED = true,
        },
        {
            CLIP_NAMES = { 'exit', 'bag_exit' },
            HOLD_LAST_FRAME = true,
            LOOPED = false,
        },
    },
    scenes = {},
}

local function countTableElements(t)
    local count = 0
    for _ in pairs(t) do
        count = count + 1
    end
    return count
end
local showBuyMenu = countTableElements(cfg.prices.buy) > 0

local function randomFloat(min, max)
    return min + math_random() * (max - min)
end

local function _TaskTurnPedToFaceCoord(coords)
    TaskTurnPedToFaceCoord(cache.ped, coords.x, coords.y, coords.z, 2000)

    local threshold = 5.0
    while GetScriptTaskStatus(cache.ped, 0x574BB8F5) ~= 7 do
        local pedCoords = GetEntityCoords(cache.ped)
        local pedHeading = GetEntityHeading(cache.ped)
        local targetHeading = getHeadingFromVector_2d(coords.x - pedCoords.x, coords.y - pedCoords.y)
        if math_abs(pedHeading - targetHeading) <= threshold then
            break
        end

        Wait(1)
    end
end

local function quantitySlider(label, min, max)
    min = min or 1
    max = max or 100
    local input = lib.inputDialog(label, {
        { type = 'slider', label = locale('quantity'), required = true, default = min, min = min, max = max },
    })

    if not input or not input[1] then return end

    return input[1]
end

local function buyMenu()
    local options = {}

    for item, data in pairs(cfg.prices.buy) do
        options[#options + 1] = {
            title = data.label,
            description = ('%s: %s%s'):format(locale('unit_price'), locale('currency'), data.price),
            icon = ('%s%s.png'):format(iconPath, item),
            onSelect = function()
                local quantity = quantitySlider(('%s | %s%s'):format(data.label, locale('currency'), data.price), min, max)

                if quantity then
                    TriggerServerEvent('rm_banktruck:server:buy', item, quantity)
                end
            end,
        }
    end

    lib.registerContext({
        id = 'banktruck_buy',
        title = locale('items'),
        menu = 'banktruck_main',
        options = options,
    })

    lib.showContext('banktruck_buy')
end

local function mainMenu(npc)
    local options = {}

    if showBuyMenu then
        options[#options + 1] = {
            title = locale('buy_items'),
            description = locale('menu_buy_description'),
            icon = 'fa-solid fa-cart-shopping',
            onSelect = buyMenu,
        }
    end

    local itemRequirements = {}
    if cfg.requiredItemsForManuelSpawn then
        itemRequirements = { locale('required_items') }
        for item, data in pairs(cfg.requiredItemsForManuelSpawn) do
            itemRequirements[#itemRequirements + 1] = ('%sx %s'):format(data.count, data.label)
        end
    end

    options[#options + 1] = {
        title = locale('learn_truck_location'),
        description = locale('learn_truck_location_description', locale('currency'), cfg.prices.locationInfo),
        icon = 'fa-solid fa-location-crosshairs',
        metadata = #itemRequirements > 0 and itemRequirements,
        onSelect = function()
            local status = lib.callback.await('rm_banktruck:server:startTrackingTruck')
            if not status then return end

            ClearPedTasks(npc)
            PlayFacialAnim(npc, 'mic_chatter', 'mp_facial')
            TaskStartScenarioInPlace(npc, 'WORLD_HUMAN_STAND_MOBILE', 0, true)
            Wait(cfg.locationSearchDuration or 5000)
            ClearFacialIdleAnimOverride(npc)

            notify(locale('job_start'), 'info')

            ClearPedTasks(npc)
            SetTimeout(500, function()
                TaskStartScenarioInPlace(npc, 'WORLD_HUMAN_LEANING', 0, true)
            end)
        end,
    }

    lib.registerContext({
        id = 'banktruck_main',
        title = locale('banktruck_menu'),
        options = options,
    })

    lib.showContext('banktruck_main')
end

CreateThread(function()
    for i = 1, #cfg.missionNPCs do
        local data = cfg.missionNPCs[i]
        lib.requestModel(data.model)
        data.entity = CreatePed(0, data.model, data.coords.x, data.coords.y, data.coords.z - 0.96, data.coords.w, false, true)
        FreezeEntityPosition(data.entity, true)
        SetBlockingOfNonTemporaryEvents(data.entity, true)
        SetEntityInvincible(data.entity, true)
        TaskStartScenarioInPlace(data.entity, 'WORLD_HUMAN_LEANING', 0, true)
        SetModelAsNoLongerNeeded(data.model)

        if data.blip then
            data.blipHandle = AddBlipForCoord(data.coords.x, data.coords.y, data.coords.z)
            SetBlipSprite(data.blipHandle, data.blip.sprite or 67)
            SetBlipColour(data.blipHandle, data.blip.color or 17)
            SetBlipAsShortRange(data.blipHandle, true)
            SetBlipScale(data.blipHandle, data.blip.scale or 0.6)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName(data.blip.label or 'Bank Truck')
            EndTextCommandSetBlipName(data.blipHandle)
        end
        lib.zones.sphere({
            coords = data.coords,
            radius = 1.5,
            onEnter = function()
                textUI.show('[ ' .. cfg.interaction.text .. ' ] ' .. locale('open_banktruck_menu'), { icon = 'fa-solid fa-truck-front' })
            end,
            onExit = function()
                textUI.hide()
            end,
            inside = function()
                if IsControlJustReleased(0, cfg.interaction.controlId) then
                    textUI.hide()
                    mainMenu(data.entity)
                end
            end,
        })
    end
end)

local truckBlips = {}
RegisterNetEvent('rm_banktruck:client:updateTruckLocation', function(coords, vehNetId)
    local pedCoords = GetEntityCoords(cache.ped)
    if #(coords - pedCoords) <= 10 then
        TriggerServerEvent('rm_banktruck:server:stopTracking', vehNetId)

        if truckBlips[vehNetId] and DoesBlipExist(truckBlips[vehNetId]) then
            RemoveBlip(truckBlips[vehNetId])
        end

        truckBlips[vehNetId] = nil

        notify(locale('found_the_banktruck'), 'info')
    end

    if cfg.enableBlipsForNearbyTrucks then
        local veh = NetworkDoesNetworkIdExist(vehNetId) and NetworkGetEntityFromNetworkId(vehNetId)
        if veh then
            local coords, truckCoords = GetEntityCoords(cache.ped), GetEntityCoords(veh)
            if #(coords - truckCoords) < 424.0 then
                return
            end
        end
    end

    if not truckBlips[vehNetId] then
        local data = cfg.targetTruckBlip or { sprite = 67, color = 47, scale = 0.9 }

        truckBlips[vehNetId] = AddBlipForCoord(coords.x, coords.y, coords.z)
        SetBlipSprite(truckBlips[vehNetId], data.sprite)
        SetBlipColour(truckBlips[vehNetId], data.color)
        SetBlipAsShortRange(truckBlips[vehNetId], true)
        SetBlipScale(truckBlips[vehNetId], data.scale)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(locale('truck_location_blip') or 'Bank Truck')
        EndTextCommandSetBlipName(truckBlips[vehNetId])
    end

    SetBlipCoords(truckBlips[vehNetId], coords.x, coords.y, coords.z)
    SetBlipAlpha(truckBlips[vehNetId], 255)
    SetBlipRoute(truckBlips[vehNetId], true)

    for i = 255, 1, -1 do
        SetBlipAlpha(truckBlips[vehNetId], i)
        Wait(10)
    end
end)

RegisterNetEvent('rm_banktruck:client:removeTruckBlip', function(vehNetId)
    if truckBlips[vehNetId] and DoesBlipExist(truckBlips[vehNetId]) then
        RemoveBlip(truckBlips[vehNetId])
    end

    truckBlips[vehNetId] = nil
end)

local nearbyTruckBlips = {}
local function addNearbyTruckBlip(vehicle)
    if nearbyTruckBlips[vehicle] and DoesBlipExist(nearbyTruckBlips[vehicle]) then
        RemoveBlip(nearbyTruckBlips[vehicle])
    end

    local data = cfg.targetTruckBlip or { sprite = 67, color = 47, scale = 0.9 }

    nearbyTruckBlips[vehicle] = AddBlipForEntity(vehicle)
    SetBlipSprite(nearbyTruckBlips[vehicle], data.sprite)
    SetBlipColour(nearbyTruckBlips[vehicle], data.color)
    SetBlipAsShortRange(nearbyTruckBlips[vehicle], true)
    SetBlipScale(nearbyTruckBlips[vehicle], data.scale)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(locale('truck_location_blip') or 'Bank Truck')
    EndTextCommandSetBlipName(nearbyTruckBlips[vehicle])
    return nearbyTruckBlips[vehicle]
end

local trucks = {}
AddStateBagChangeHandler('bt_truck', nil, function(bagName, key, data, reserved, replicated)
    Wait(500)
    local vehicle = GetEntityFromStateBagName(bagName)
    if not data then
        if trucks[vehicle] then
            trucks[vehicle] = nil

            if nearbyTruckBlips[vehicle] then
                if DoesBlipExist(nearbyTruckBlips[vehicle]) then
                    RemoveBlip(nearbyTruckBlips[vehicle])
                end
                nearbyTruckBlips[vehicle] = nil
            end

            local vehNetId = NetworkGetNetworkIdFromEntity(vehicle)
            if truckBlips[vehNetId] then
                if DoesBlipExist(truckBlips[vehNetId]) then
                    RemoveBlip(truckBlips[vehNetId])
                end
                truckBlips[vehNetId] = nil
            end
        end
        return
    end

    local vehicleState = Entity(vehicle).state.bt_data
    if vehicleState and vehicleState.opened then return end

    local truckBlip
    if cfg.enableBlipsForNearbyTrucks then
        local vehNetId = NetworkGetNetworkIdFromEntity(vehicle)

        if truckBlips[vehNetId] then
            if DoesBlipExist(truckBlips[vehNetId]) then
                RemoveBlip(truckBlips[vehNetId])
            end
            truckBlips[vehNetId] = nil
        end

        addNearbyTruckBlip(vehicle)
    end

    if cfg.driverKillDispatchChance or giveKeys or truckBlip then
        local driver = GetPedInVehicleSeat(vehicle, -1)
        if driver == 0 or IsPedDeadOrDying(driver) or IsPedAPlayer(driver) then
            local passenger = GetPedInVehicleSeat(vehicle, 0)
            if passenger == 0 or IsPedDeadOrDying(passenger) or IsPedAPlayer(passenger) then
                RemoveBlip(nearbyTruckBlips[vehicle])
                nearbyTruckBlips[vehicle] = nil
            end

            return
        end

        trucks[vehicle] = true
        while DoesEntityExist(vehicle) and trucks[vehicle] do
            local coords = GetEntityCoords(cache.ped)
            if not cfg.serversideSpawn then
                local vehicleCoords = GetEntityCoords(vehicle)
                if #(vehicleCoords - coords) > 424.0 then
                    if nearbyTruckBlips[vehicle] then
                        RemoveBlip(nearbyTruckBlips[vehicle])
                        nearbyTruckBlips[vehicle] = nil
                    end
                else
                    if nearbyTruckBlips[vehicle] then
                        if not DoesBlipExist(nearbyTruckBlips[vehicle]) then
                            addNearbyTruckBlip(vehicle)
                        end
                    else
                        addNearbyTruckBlip(vehicle)
                    end
                end

                if entState and entState.opened then
                    RemoveBlip(nearbyTruckBlips[vehicle])
                    nearbyTruckBlips[vehicle] = nil

                    return
                end
            end

            if IsPedDeadOrDying(driver) then
                Wait(500)
                local killer = GetPedSourceOfDeath(driver)
                if killer == cache.ped then
                    TriggerServerEvent("rm_banktruck:server:dispatch",coords)

                    if giveKeys then
                        giveKeys(vehicle)
                    end
                    break
                end
            end
            Wait(2000)
        end
        trucks[vehicle] = nil

        local driver = GetPedInVehicleSeat(vehicle, -1)
        if driver == 0 or IsPedDeadOrDying(driver) or IsPedAPlayer(driver) then
            local passenger = GetPedInVehicleSeat(vehicle, 0)
            if passenger == 0 or IsPedDeadOrDying(passenger) or IsPedAPlayer(passenger) then
                RemoveBlip(nearbyTruckBlips[vehicle])
                nearbyTruckBlips[vehicle] = nil
            end
        end
    end
end)

local usedItem
RegisterNetEvent('rm_banktruck:client:itemUsed', function(data)
    if not data?.name or usedItem == data.name then return end

    local coords = GetEntityCoords(cache.ped)
    local vehicle = lib.getClosestVehicle(coords, 5.0)
    if not vehicle then
        notify(locale('no_vehicles_nearby'), 'error')
        return
    end

    local model = GetEntityModel(vehicle)
    if model ~= cfg.truckModel then
        notify(locale('no_banktruck_nearby'), 'error')
        return
    end

    if not NetworkGetEntityIsNetworked(vehicle) then return end
    local vehicleState = Entity(vehicle).state.bt_data
    if not vehicleState or vehicleState.opened then return end

    local attachData = cfg.truckAttachments[data.name]
    if not attachData?.model then return end

    usedItem = data.name
    Wait(500)

    local hintOffset = type(attachData.pos) == 'table' and attachData.pos[1] or attachData.pos
    local hintRot = attachData.rot or vec3(0, 0, 0)
    local hintCoords = GetOffsetFromEntityInWorldCoords(vehicle, hintOffset.x, hintOffset.y, hintOffset.z)

    lib.requestModel(attachData.model)
    hintObj = CreateObject(attachData.model, hintCoords.x, hintCoords.y, hintCoords.z, false, false, false)
    SetEntityAlpha(hintObj, 100, false)
    AttachEntityToEntity(hintObj, vehicle, nil, hintOffset.x, hintOffset.y, hintOffset.z, hintRot.x, hintRot.y, hintRot.z, true, true, false, false, 1, true)

    local color = cfg.interaction.colors.background
    SetEntityDrawOutlineShader(1)
    SetEntityDrawOutlineColor(color.r, color.g, color.b, 180)
    SetEntityDrawOutline(hintObj, true)

    local vehicleCoords = GetEntityCoords(vehicle)
    local directionVector = hintCoords - vehicleCoords
    local normalizedDirection = directionVector / #(directionVector)
    local placementCoords = hintCoords + (normalizedDirection * 0.5)

    notify(locale('move_for_placement'), 'info')

    local placement = false
    local shownTextUI = false
    while not placement and usedItem == data.name do
        if not cache.vehicle then
            coords = GetEntityCoords(cache.ped)
            local currentVehicleCoords = GetEntityCoords(vehicle)
            if #(vehicleCoords - currentVehicleCoords) > 1.0 then
                vehicleCoords = currentVehicleCoords
                hintCoords = GetOffsetFromEntityInWorldCoords(vehicle, hintOffset.x, hintOffset.y, hintOffset.z)

                directionVector = hintCoords - vehicleCoords
                normalizedDirection = directionVector / #(directionVector)
                placementCoords = hintCoords + (normalizedDirection * 0.5)
            end

            local currentDistance = #(placementCoords - coords)
            if currentDistance < 1 then
                if not shownTextUI then
                    shownTextUI = true
                    textUI.show('[ ' .. cfg.interaction.text .. ' ] - ' .. locale('start_placing'))
                else
                    if IsControlJustReleased(0, cfg.interaction.controlId) then
                        if not minigames or not minigames['placement_start'] or minigames['placement_start']() then
                            textUI.hide()
                            shownTextUI = false
                            placement = true

                            break
                        end
                    end
                end
            elseif shownTextUI then
                textUI.hide()
                shownTextUI = false
            elseif currentDistance >= 25.0 then
                textUI.hide()
                shownTextUI = false

                break
            else
                DrawMarker(2, placementCoords.x, placementCoords.y, placementCoords.z, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 0.15, 0.15, 0.15, color.r, color.g, color.b, 255, false, true, 2, false)
            end
        end
        Wait(0)
    end

    if not placement or usedItem ~= data.name then
        if hintObj and DoesEntityExist(hintObj) then
            SetEntityDrawOutline(hintObj, false)
            SetEntityAsMissionEntity(hintObj, false, false)
            DeleteEntity(hintObj)
            hintObj = nil

            SetModelAsNoLongerNeeded(attachData.model)
        end

        return
    end

    local objOffset = type(attachData.pos) == 'table' and attachData.pos[2] or attachData.pos
    local objCoords = GetOffsetFromEntityInWorldCoords(vehicle, objOffset.x, objOffset.y, objOffset.z)
    itemObj = CreateObject(attachData.model, objCoords.x, objCoords.y, objCoords.z, true, true, false)

    local objRot = GetEntityRotation(hintObj, 1)
    SetEntityCoords(itemObj, objCoords.x, objCoords.y, objCoords.z, false, false, false)
    SetEntityRotation(itemObj, objRot.x, objRot.y, objRot.z, 1)
    FreezeEntityPosition(itemObj, true)
    SetEntityNoCollisionEntity(itemObj, vehicle, false)

    local camCoords = hintCoords + (normalizedDirection * 1.0)
    local camOffset = GetOffsetFromEntityGivenWorldCoords(vehicle, camCoords.x, camCoords.y, camCoords.z)
    local cam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)
    AttachCamToEntity(cam, vehicle, camOffset.x, camOffset.y, camOffset.z, true)
    PointCamAtCoord(cam, hintCoords.x, hintCoords.y, hintCoords.z)

    textUI.show(
        locale('w_forward') .. '  \n' ..
        locale('s_backward') .. '  \n' ..
        locale('a_left') .. '  \n' ..
        locale('d_right') .. '  \n' ..
        locale('q_up') .. '  \n' ..
        locale('e_down') .. '  \n' ..
        locale('backspace_cancel') .. ''
    )

    _TaskTurnPedToFaceCoord(hintCoords)
    FreezeEntityPosition(cache.ped, true)

    lib.requestAnimDict('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
    TaskPlayAnim(cache.ped, 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 'machinic_loop_mechandplayer', 3.0, 3.0, -1, 1 | 16, 0, false, false, false)

    SetTimeout(100, function()
        SetCamActive(cam, true)
        RenderScriptCams(true, true, 500, true, true)
    end)

    local currentOffset = objOffset
    while placement do
        SetEntityLocallyInvisible(cache.ped)

        DisableFrontendThisFrame()
        DisablePlayerFiring(cache.playerId, true)
        DisableControlAction(0, 8, true)         -- S
        DisableControlAction(0, 9, true)         -- D
        DisableControlAction(0, 30, true)        -- D
        DisableControlAction(0, 31, true)        -- S
        DisableControlAction(0, 32, true)        -- W
        DisableControlAction(0, 33, true)        -- S
        DisableControlAction(0, 34, true)        -- A
        DisableControlAction(0, 35, true)        -- D
        DisableControlAction(0, 38, true)        -- E
        DisableControlAction(0, 44, true)        -- Q
        DisableControlAction(0, 46, true)        -- E
        DisableControlAction(0, 177, true)       -- BACKSPACE / ESC / RIGHT MOUSE
        DisableControlAction(0, 200, true)       -- ESC
        DisableControlAction(0, 202, true)       -- BACKSPACE / ESC

        if IsDisabledControlPressed(0, 177) then -- BACKSPACE / ESC / RIGHT MOUSE
            Wait(10)
            placement = false
            SetEntityAsMissionEntity(itemObj, false, false)
            DeleteEntity(itemObj)
            itemObj = nil

            break
        end

        if IsDisabledControlPressed(0, 32) then -- W
            currentOffset = vec3(currentOffset.x, currentOffset.y - 0.001, currentOffset.z)
        end
        if IsDisabledControlPressed(0, 33) then -- S
            currentOffset = vec3(currentOffset.x, currentOffset.y + 0.001, currentOffset.z)
        end
        if IsDisabledControlPressed(0, 34) then -- A
            currentOffset = vec3(currentOffset.x - 0.001, currentOffset.y, currentOffset.z)
        end
        if IsDisabledControlPressed(0, 35) then -- D
            currentOffset = vec3(currentOffset.x + 0.001, currentOffset.y, currentOffset.z)
        end
        if IsDisabledControlPressed(0, 44) then -- Q
            currentOffset = vec3(currentOffset.x, currentOffset.y, currentOffset.z + 0.001)
        end
        if IsDisabledControlPressed(0, 46) then -- E
            currentOffset = vec3(currentOffset.x, currentOffset.y, currentOffset.z - 0.001)
        end

        if #(currentOffset - objOffset) > 0.001 then
            objOffset = currentOffset
            objCoords = GetOffsetFromEntityInWorldCoords(vehicle, objOffset.x, objOffset.y, objOffset.z)
            SetEntityCoords(itemObj, objCoords.x, objCoords.y, objCoords.z, false, false, false)

            objRot = GetEntityRotation(hintObj, 1)
            SetEntityRotation(itemObj, objRot.x, objRot.y, objRot.z, 1)

            local hintCoords = GetEntityCoords(hintObj)
            if #(hintCoords - objCoords) <= 0.02 then
                if minigames and minigames[data.name] then
                    Wait(500)

                    if not minigames[data.name]() then
                        notify(locale('you_failed'), 'error')

                        SetEntityAsMissionEntity(itemObj, false, false)
                        DeleteEntity(itemObj)
                        itemObj = nil
                        break
                    end
                end
                placement = false

                AttachEntityToEntity(itemObj, vehicle, nil, hintOffset.x, hintOffset.y, hintOffset.z, hintRot.x, hintRot.y, hintRot.z, true, true, false, false, 1, true)

                TriggerServerEvent('rm_banktruck:server:itemPlaced', NetworkGetNetworkIdFromEntity(vehicle), usedItem, NetworkGetNetworkIdFromEntity(itemObj))
                break
            end
        end

        Wait(0)
    end

    RenderScriptCams(false, true, 750, true, true)
    SetCamActive(cam, false)
    DestroyCam(cam, false)

    textUI.hide()
    SetEntityDrawOutline(hintObj, false)
    SetEntityAsMissionEntity(hintObj, false, false)
    DeleteEntity(hintObj)
    hintObj = nil
    usedItem = nil

    ClearPedTasks(cache.ped)
    RemoveAnimDict('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
    FreezeEntityPosition(cache.ped, false)
    SetModelAsNoLongerNeeded(attachData.model)
end)

AddEventHandler('rm_tools:usageStarted', function(item)
    if item == 'drill' then
        drillObj = rm_tools:getDrillObject()
    end
end)

AddEventHandler('rm_tools:usageFinished', function(item)
    if item == 'drill' then
        drillObj = nil
    end
end)

local bagModel = `hei_p_m_bag_var22_arm_s`
local grabAnimDict = 'anim@heists@ornate_bank@grab_cash'
local collecting = false

local trucks = {}
AddStateBagChangeHandler('bt_data', nil, function(bagName, key, data, reserved, replicated)
    Wait(500)
    local vehicle = GetEntityFromStateBagName(bagName)

    if not data then
        trucks[vehicle] = nil
        return
    end

    local vehNetId = NetworkGetNetworkIdFromEntity(vehicle)
    if not trucks[vehicle] then
        trucks[vehicle] = {
            opened = data.opened,
            method = data.method,
            hinges = {},
        }

        for i = 1, #data.offsets do
            local offset = cfg.truckDrillOffsets[i]
            trucks[vehicle].hinges[i] = {
                progress = 0,
                offset = offset,
                broken = false,
            }
            trucks[vehicle].hinges[i].sprite = createSprite({
                entity = vehicle,
                text = '0%',
            })
        end

        local vehSizeMin, vehSizeMax = GetModelDimensions(cfg.truckModel)
        local length                 = vehSizeMax.y - vehSizeMin.y
        local collectOffset          = vec3(0.0, -(length / 2), 0.4)

        local shownTextUI            = false
        local color                  = cfg.interaction.colors.background

        while trucks[vehicle] and DoesEntityExist(vehicle) and not trucks[vehicle].robbed do
            local coords = GetEntityCoords(cache.ped)
            local vehicleCoords = GetEntityCoords(vehicle)
            local dist = #(coords - vehicleCoords)
            if dist <= 10 then
                if not trucks[vehicle].opened then
                    if trucks[vehicle].method == 'drilling' then
                        if drillObj then
                            for i = 1, #trucks[vehicle].hinges do
                                local hinge = trucks[vehicle].hinges[i]
                                if not hinge.broken then
                                    local hingeCoord = GetOffsetFromEntityInWorldCoords(vehicle, hinge.offset.x, hinge.offset.y, hinge.offset.z)
                                    hinge.sprite:draw(coords, { targetCoords = hingeCoord })

                                    if IsPlayerFreeAiming(cache.playerId) and IsDisabledControlPressed(0, 24) then
                                        local drillCoord = GetOffsetFromEntityInWorldCoords(drillObj, 0.619507, 0.003998, -0.132999)
                                        local dist = #(drillCoord - hingeCoord)
                                        if dist <= 0.3 then
                                            if hinge.progress < 100 then
                                                hinge.progress += (cfg.drillingSpeed or 0.03)
                                                hinge.sprite.text = math_floor(hinge.progress) .. '%'
                                            else
                                                -- rm_tools:removeDrill()
                                                trucks[vehicle].hinges[i].broken = true
                                                TriggerServerEvent('rm_banktruck:server:hingeBroken', vehNetId, i)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end

                    if NetworkGetEntityOwner(vehicle) == cache.playerId then
                        if GetVehicleDoorAngleRatio(vehicle, 2) > 0.0 or GetVehicleDoorAngleRatio(vehicle, 3) > 0.0 then
                            SetVehicleDoorShut(vehicle, 2, true)
                            SetVehicleDoorShut(vehicle, 3, true)
                        end
                    end
                elseif not collecting and not trucks[vehicle].collecting then
                    local collectCoords = GetOffsetFromEntityInWorldCoords(vehicle, collectOffset.x, collectOffset.y, collectOffset.z)
                    local collectDist = #(coords - collectCoords)
                    if collectDist < 1 then
                        if not shownTextUI then
                            shownTextUI = true
                            textUI.show('[ ' .. cfg.interaction.text .. ' ] - ' .. locale('start_collecting'))
                        else
                            if IsControlJustReleased(0, cfg.interaction.controlId) then
                                textUI.hide()
                                shownTextUI = false

                                local status = lib.callback.await('rm_banktruck:server:collectRewards', false, vehNetId)
                                if status then
                                    collecting = true

                                    FreezeEntityPosition(cache.ped, true)
                                    if onMoneyCollect then
                                        onMoneyCollect()
                                    end

                                    lib.requestModel(bagModel)
                                    bagObj = CreateObject(bagModel, coords.x, coords.y, coords.z, true, true, false)

                                    lib.requestAnimDict(grabAnimDict)
                                    local scenePos, sceneRot = GetOffsetFromEntityInWorldCoords(vehicle, collectOffset.x + randomFloat(-0.5, 0.5), collectOffset.y, collectOffset.z), GetEntityRotation(vehicle) + vec3(0, 0, 180.0)
                                    for i = 1, #collectSceneData.ANIMATIONS do
                                        collectSceneData.scenes[i] = NetworkCreateSynchronisedScene(scenePos.x, scenePos.y, scenePos.z - 0.6, sceneRot.x, sceneRot.y, sceneRot.z, 2, collectSceneData.ANIMATIONS[i].HOLD_LAST_FRAME, collectSceneData.ANIMATIONS[i].LOOPED, 1065353216, 0, 1.3)
                                        NetworkAddPedToSynchronisedScene(cache.ped, collectSceneData.scenes[i], grabAnimDict, collectSceneData.ANIMATIONS[i].CLIP_NAMES[1], 1.5, -4.0, 1 | 2 | 4, 16, 1148846080, 0)
                                        NetworkAddEntityToSynchronisedScene(bagObj, collectSceneData.scenes[i], grabAnimDict, collectSceneData.ANIMATIONS[i].CLIP_NAMES[2], 4.0, -8.0, 1)
                                    end

                                    NetworkStartSynchronisedScene(collectSceneData.scenes[1])
                                    Wait(1750)
                                    NetworkStartSynchronisedScene(collectSceneData.scenes[2])

                                    SetModelAsNoLongerNeeded(bagModel)
                                end
                            end
                        end
                    elseif shownTextUI then
                        textUI.hide()
                        shownTextUI = false
                    else
                        DrawMarker(2, collectCoords.x, collectCoords.y, collectCoords.z, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 0.15, 0.15, 0.15, color.r, color.g, color.b, 255, false, true, 2, false)
                    end
                elseif shownTextUI then
                    textUI.hide()
                    shownTextUI = false
                end
            else
                Wait(2000)
            end

            Wait(0)
        end

        trucks[vehicle] = nil
    else
        if not cfg.enableMultiplePersonCollect and trucks[vehicle].collecting ~= data.collecting then
            trucks[vehicle].collecting = data.collecting
            return
        end

        local method = data.method
        if trucks[vehicle].method ~= data.method then
            trucks[vehicle].method = data.method
        end

        if data.robbed then
            trucks[vehicle].robbed = data.robbed

            if collecting then
                NetworkStartSynchronisedScene(collectSceneData.scenes[3])
                Wait(2000)
                for i = 1, #collectSceneData.scenes do
                    NetworkStopSynchronisedScene(collectSceneData.scenes[i])
                    collectSceneData.scenes[i] = nil
                end
                RemoveAnimDict(grabAnimDict)

                if bagObj and DoesEntityExist(bagObj) then
                    SetEntityAsMissionEntity(bagObj, false, false)
                    DeleteEntity(bagObj)
                    bagObj = nil
                end

                FreezeEntityPosition(cache.ped, false)
                collecting = false
            end
        elseif data.opened then
            if data.playerId and data.playerId == cache.serverId and cfg.safeOpenedDispatchChance and dispatch then
                local random = math_random(100)
                if random <= cfg.safeOpenedDispatchChance then
                    local coords = GetEntityCoords(vehicle)
                    dispatch({
                        type = 'safe_opened',
                        job_names = { 'police', 'sasp', 'bcso', 'sheriff' },
                        job_types = { 'leo' },
                        coords = coords,
                        code = '10-4',
                        icon = 'fas fa-truck-front',
                        message = locale('dispatch_bank_truck_robbery'),
                        blip = {
                            sprite = 64,
                            color = 2,
                        },
                    })
                end
            end

            if method == 'exploding' then
                lib.requestNamedPtfxAsset('scr_josh3')
                UseParticleFxAsset('scr_josh3')

                local attachData = cfg.truckAttachments[cfg.items.c4]
                local offset = type(attachData.pos) == 'table' and attachData.pos[1] or attachData.pos
                StartParticleFxNonLoopedOnEntity('scr_josh3_explosion', vehicle, offset.x, offset.y, offset.z, 0, 0, 0, 2.5, false, false, false)

                local coords = GetOffsetFromEntityInWorldCoords(vehicle, offset.x, offset.y, offset.z)
                PlaySoundFromCoord(-1, 'MAIN_EXPLOSION_CHEAP', coords.x, coords.y, coords.z, 0, false, 30, false)

                RemoveNamedPtfxAsset('scr_josh3')
            elseif method == 'hacking' and trucks[vehicle].soundId then
                StopSound(trucks[vehicle].soundId)
                ReleaseSoundId(trucks[vehicle].soundId)
            elseif method == 'gassing' then
                if trucks[vehicle].ptfx then
                    StopParticleFxLooped(trucks[vehicle].ptfx, 0)
                end
                if trucks[vehicle].soundId then
                    StopSound(trucks[vehicle].soundId)
                    ReleaseSoundId(trucks[vehicle].soundId)
                end
            end

            if NetworkGetEntityOwner(vehicle) == cache.playerId then
                local moneyObjsNetIds = {}
                for i = 1, 4 do
                    if cfg.truckAttachments['money' .. i] then
                        local attachData = cfg.truckAttachments['money' .. i]
                        local offset = type(attachData.pos) == 'table' and attachData.pos[1] or attachData.pos
                        local rot = attachData.rot or vec3(0, 0, 0)
                        local coords = GetOffsetFromEntityInWorldCoords(vehicle, offset.x, offset.y, offset.z)

                        lib.requestModel(attachData.model)
                        local moneyObj = CreateObject(attachData.model, coords.x, coords.y, coords.z, true, true, false)
                        AttachEntityToEntity(moneyObj, vehicle, nil, offset.x, offset.y, offset.z, rot.x, rot.y, rot.z, true, true, false, false, 1, true)

                        moneyObjsNetIds[#moneyObjsNetIds + 1] = NetworkGetNetworkIdFromEntity(moneyObj)
                        TriggerServerEvent('rm_banktruck:server:registerMoneyObjects', vehNetId, moneyObjsNetIds)
                        SetModelAsNoLongerNeeded(attachData.model)
                    end
                end

                for i = 1, 2 do
                    SetVehicleDoorOpen(vehicle, i + 1, false, false)
                    if method == 'drilling' or method == 'exploding' then
                        SetTimeout(500, function()
                            SetVehicleDoorBroken(vehicle, i + 1, false)
                        end)
                    end
                end
            end

            for i = 1, 2 do
                local ped = GetPedInVehicleSeat(vehicle, i)
                if ped > 0 then
                    SetEntityNoCollisionEntity(cache.ped, ped, false)

                    if NetworkGetEntityOwner(ped) == cache.playerId then
                        SetBlockingOfNonTemporaryEvents(ped, false)

                        if method == 'drilling' or method == 'hacking' then
                            SetPedCombatAttributes(ped, 27, true) --CA_PERFECT_ACCURACY
                            SetPedCombatAttributes(ped, 46, true) --CA_CAN_FIGHT_ARMED_PEDS_WHEN_NOT_ARMED
                            SetPedCombatAttributes(ped, 83, true) --CA_REQUIRES_LOS_TO_AIM
                            SetPedCombatAbility(ped, 2)           --CA_Professional
                            SetPedCombatRange(ped, 2)             --CR_FAR
                            SetEntityMaxHealth(ped, cfg.truckPassengerHealth or 200)
                            SetEntityHealth(ped, cfg.truckPassengerHealth or 200)
                            SetPedArmour(ped, cfg.truckPassengerArmor or 100)
                            SetPedRelationshipGroupHash(ped, backRelationHash)
                            SetPedCombatAttributes(ped, 3, true) --CA_LEAVE_VEHICLES
                            RegisterHatedTargetsAroundPed(ped, 25.0)
                            TaskCombatHatedTargetsAroundPed(ped, 25.0, 0)
                            SetPedDropsWeaponsWhenDead(ped, false)
                        else
                            if method == 'exploding' then
                                PlayPain(ped, 15, 100)
                                ApplyPedDamagePack(ped, 'Explosion_Med', 0.0, 1.0)
                                ApplyDamageToPed(ped, 200, false)
                                SetEntityAsMissionEntity(ped, false, false)
                            elseif method == 'gassing' then
                                StopAnimTask(ped, 'timetable@gardener@smoking_joint', 'idle_cough', 8.0)
                                SetPedCombatAttributes(ped, 3, true) --CA_LEAVE_VEHICLES
                                TaskLeaveVehicle(ped, vehicle, 256)

                                SetTimeout(1000, function()
                                    while GetScriptTaskStatus(driver, 0x1AE73569) ~= 7 do Wait(5) end

                                    lib.requestAnimDict('random@arrests@busted')
                                    TaskPlayAnim(ped, 'random@arrests@busted', 'idle_a', 1.0, 1.0, -1, 1 | 2 | 8 | 512, 0.0, false, false, false)
                                    Wait(10000)
                                    StopAnimTask(ped, 'random@arrests@busted', 'idle_a', 8.0)
                                    Wait(250)
                                    PlayPain(ped, 19, 100)
                                    ApplyDamageToPed(ped, 200, false)
                                    SetEntityAsMissionEntity(ped, false, false)
                                    RemoveAnimDict('random@arrests@busted')
                                end)
                            end
                        end
                    end
                end
            end

            trucks[vehicle].opened = true
        else
            if not cfg.serversideSpawn and spawnBackPassengers and NetworkGetEntityOwner(vehicle) == cache.playerId then
                spawnBackPassengers(vehicle, vehNetId)
            end

            if method == 'drilling' and data.offsets then
                for i = 1, #data.offsets do
                    if data.offsets[i] == true then
                        trucks[vehicle].hinges[i].broken = true
                        trucks[vehicle].hinges[i].sprite = nil
                    end
                end
            elseif method == 'exploding' then
                local attachData = cfg.truckAttachments[cfg.items.c4]
                local offset = type(attachData.pos) == 'table' and attachData.pos[1] or attachData.pos

                local coords = GetOffsetFromEntityInWorldCoords(vehicle, offset.x, offset.y, offset.z)
                PlaySoundFromCoord(-1, 'Explosion_Countdown', coords.x, coords.y, coords.z, 'GTAO_FM_Events_Soundset', false, 30, false)
            elseif method == 'hacking' then
                local attachData = cfg.truckAttachments[cfg.items.hackdevice]
                local offset = type(attachData.pos) == 'table' and attachData.pos[1] or attachData.pos

                local coords = GetOffsetFromEntityInWorldCoords(vehicle, offset.x, offset.y, offset.z)
                trucks[vehicle].soundId = GetSoundId()
                PlaySoundFromCoord(trucks[vehicle].soundId, 'Hack_Loop', coords.x, coords.y, coords.z, 'dlc_xm_deluxos_hacking_Hacking_Sounds', false, 30, false)
            elseif method == 'gassing' then
                local attachData = cfg.truckAttachments[cfg.items.gastank]
                local offset = type(attachData.pos) == 'table' and attachData.pos[1] or attachData.pos

                lib.requestNamedPtfxAsset('core')
                UseParticleFxAsset('core')
                trucks[vehicle].ptfx = StartParticleFxLoopedOnEntity('exp_grd_grenade_smoke', vehicle, offset.x, offset.y + 1.0, offset.z, 0, 0, 0, 0.3, false, false, false)

                local coords = GetOffsetFromEntityInWorldCoords(vehicle, offset.x, offset.y, offset.z)
                trucks[vehicle].soundId = GetSoundId()
                PlaySoundFromCoord(trucks[vehicle].soundId, 'DRYER', coords.x, coords.y, coords.z, 'CARWASH_SOUNDS', false, 30, false)

                RemoveNamedPtfxAsset('core')

                for i = 1, 2 do
                    local ped = GetPedInVehicleSeat(vehicle, i)
                    if ped > 0 then
                        if NetworkGetEntityOwner(ped) == cache.playerId then
                            lib.requestAnimDict('timetable@gardener@smoking_joint')
                            TaskPlayAnim(ped, 'timetable@gardener@smoking_joint', 'idle_cough', 2.0, 2.0, -1, 1 | 16, 0.0, false, false, false)
                            RemoveAnimDict('timetable@gardener@smoking_joint')
                        end

                        CreateThread(function()
                            for i = 1, 5 do
                                PlayPain(ped, 19, 100)
                                Wait((cfg.gassingDuration or 20) * SECOND / 5)
                            end
                        end)
                    end
                end
            end
        end
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == cache.resource then
        if hintObj and DoesEntityExist(hintObj) then
            SetEntityDrawOutline(hintObj, false)
            SetEntityAsMissionEntity(hintObj, false, false)
            DeleteEntity(hintObj)
        end
        if itemObj and DoesEntityExist(itemObj) then
            SetEntityAsMissionEntity(itemObj, false, false)
            DeleteEntity(itemObj)
        end
        if bagObj and DoesEntityExist(bagObj) then
            SetEntityAsMissionEntity(bagObj, false, false)
            DeleteEntity(bagObj)
        end
    end
end)

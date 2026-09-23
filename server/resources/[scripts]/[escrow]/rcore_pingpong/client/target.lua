local targetId = 5
local usedTargetModels = {}

local function GetUniqueTargetName()
    targetId = targetId + 1
    return "tabletennis_" .. targetId
end

function AddTargetForPingPongTables()
    if not Config.UseTarget then
        return
    end
    local model = GetHashKey("prop_table_tennis")
    usedTargetModels[model] = true
    Config.ShowHowToPlayUI = 0
    local resourceName = TargetTypeResourceName[Config.TargetZoneType]
    local targetName = GetUniqueTargetName()
    local options = {{
        num = 1,
        type = "client",
        event = "TableTennis:Target",
        icon = 'fas fa-user',
        label = _U("Target_PlayWithFriend"),
        targeticon = 'fas fa-gamepad',
        drawColor = {255, 255, 255, 255},
        successDrawColor = {30, 144, 255, 255},
        eventAction = "play_friend"
    }, {
        num = 2,
        type = "client",
        event = "TableTennis:Target",
        icon = 'fas fa-robot',
        label = _U("Target_PlayWithBot"),
        targeticon = 'fas fa-gamepad',
        drawColor = {255, 255, 255, 255},
        successDrawColor = {30, 144, 255, 255},
        eventAction = "play_bot"
    }, {
        num = 3,
        type = "client",
        event = "TableTennis:Target",
        icon = 'fas fa-table',
        label = _U("Target_ShowLeaderboards"),
        targeticon = 'fas fa-gamepad',
        drawColor = {255, 255, 255, 255},
        successDrawColor = {30, 144, 255, 255},
        eventAction = "show_top"
    }}

    local sameExports = {
        [TargetType.Q_TARGET] = true,
        [TargetType.BT_TARGET] = true,
        [TargetType.QB_TARGET] = true
    }

    if Config.TargetZoneType == TargetType.OX_TARGET then
        exports.ox_target:addModel(model, options)
    elseif sameExports[Config.TargetZoneType] then
        local targetoptions = {
            options = options,
            distance = 5.0
        }
        exports[resourceName]:AddTargetModel(model, targetoptions)
    end
end

function RemoveAllTargetZones()
    if not Config.UseTarget then
        return
    end
    local resourceName = TargetTypeResourceName[Config.TargetZoneType]
    local targetName = GetUniqueTargetName()

    local sameExports = {
        [TargetType.Q_TARGET] = true,
        [TargetType.BT_TARGET] = true,
        [TargetType.QB_TARGET] = true
    }

    if Config.TargetZoneType == TargetType.OX_TARGET then
        for k, v in pairs(usedTargetModels) do
            exports.ox_target:removeModel(k)
        end
    elseif sameExports[Config.TargetZoneType] then
        if Config.TargetZoneType ~= TargetType.BT_TARGET then -- bt target doesn't have RemoveTargetModel
            for k, v in pairs(usedTargetModels) do
                exports[resourceName]:RemoveTargetModel(k)
            end
        end
    end
    usedTargetModels = {}
end

TargetType = {
    NO_TARGET = 0,
    Q_TARGET = 1,
    BT_TARGET = 2,
    QB_TARGET = 3,
    OX_TARGET = 4
}

TargetTypeResourceName = {
    [TargetType.NO_TARGET] = "none",
    [TargetType.Q_TARGET] = "qtarget",
    [TargetType.BT_TARGET] = "bt-target",
    [TargetType.QB_TARGET] = "qb-target",
    [TargetType.OX_TARGET] = "ox_target"
}

RegisterNetEvent("TableTennis:Target")
AddEventHandler("TableTennis:Target", function(data)
    if not data or not data.eventAction or not data.entity then
        return
    end
    if data.eventAction == "play_bot" then
        TableTennis_StartOnEntity(data.entity, true)
    elseif data.eventAction == "play_friend" then
        TableTennis_StartOnEntity(data.entity, false)
    elseif data.eventAction == "show_top" then
        TableTennis_RequestLeaderboards()
    end
end)

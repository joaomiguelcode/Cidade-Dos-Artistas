CreateThread(function()
    Wait(2500)
    RegisterNetEvent('17mov_DrawDefaultNotification'..GetCurrentResourceName(), function(msg)
        Notify(msg)
    end)

    InitalizeScript()
end)

function GetPlayerData()
    return { job = { name = "unknown", grade = 0 } }
end

function Notify(msg)
    if Config.UseBuiltInNotifications then
        local type = "good"
        if CheckIfNotificationIsWrong(msg) then
            type = "wrong"
        end

        SendNUIMessage({
            action = "showNotification",
            type = type,
            msg = msg
        })
    end
end

function ShowHelpNotification(msg)
    if msg == nil then return end
    AddTextEntry('HelpNotification', msg)
    DisplayHelpTextThisFrame('HelpNotification', false)
end

function DrawText3Ds(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(true)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 500
    DrawRect(_x, _y + 0.0125, 0.030 + factor, 0.03, 0, 0, 0, 150)
end

function IsDead(ped)
    return GetEntityHealth(ped) == 0
end

HaveClothes = false

function ChangeClothes(type) 
    RequestAnimDict("clothingshirt")
    while not HasAnimDictLoaded("clothingshirt") do Citizen.Wait(0) end

    local PlayerPed = PlayerPedId()
    TaskPlayAnim(PlayerPed, "clothingshirt", "try_shirt_positive_d", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    Citizen.Wait(1000)
    if type == "work" then
        HaveClothes = true
        if GetEntityModel(PlayerPedId()) == 1885233650 then
            for k,v in pairs(Config.realClothes.male) do
                SetPedComponentVariation(PlayerPed, v["component_id"], v["drawable"], v["texture"], 0)
            end
        else
            for k,v in pairs(Config.realClothes.female) do
                SetPedComponentVariation(PlayerPed, v["component_id"], v["drawable"], v["texture"], 0)
            end
        end
    else 
        HaveClothes = false
        TriggerServerEvent("player:Debug")
    end
    Citizen.Wait(1000)
    ClearPedTasks(PlayerPed)
end

function CheckIfNotificationIsWrong(text)
    local arrayName

    for k, v in pairs(Config.Lang) do
        if v == text then
            arrayName = k
            break
        end
    end

    return Config.WrongNotifications[arrayName] or false
end

Config.WrongNotifications = {
    ["no_permission"] = true,
    ["too_far"] = true,
    ["alreadyWorking"] = true,
    ["wrongCar"] = true,
    ["CarNeeded"] = true,
    ["nobodyNearby"] = true,
    ["cantInvite"] = true,
    ["spawnpointOccupied"] = true,
    ["pipesNotReady"] = true,
    ["workstationOccupied"] = true,
    ["notFullJob"] = true,
    ["notADriver"] = true,
    ["partyIsFull"] = true,
    ["wrongReward1"] = true,
    ["wrongReward2"] = true,
    ["isAlreadyHost"] = true,
    ["isBusy"] = true,
    ["hasActiveInvite"] = true,
    ["HaveActiveInvite"] = true,
    ["InviteDeclined"] = true,
    ["error"] = true,
    ["kickedOut"] = true,
    ["RequireOneFriend"] = true,
    ["clientsPenalty"] = true,
    ["noMixerStatus"] = true,
    ["dontHaveReqItem"] = true,
    ["notEverybodyHasRequiredJob"] = true,
}

Config.realClothes = {
    male = {},
    female = {},
}

local componentIdTranslation = {
    ["mask"] = 1,
    ["arms"] = 3,
    ["pants"] = 4,
    ["bag"] = 5,
    ["shoes"] = 6,
    ["t-shirt"] = 8,
    ["torso"] = 11,
    ["decals"] = 10,
    ["kevlar"] = 9,
}

for k, v in pairs(Config.Clothes.male) do
    table.insert(Config.realClothes.male, {
        component_id = componentIdTranslation[k],
        drawable = v.clotheId,
        texture = v.variation
    })
end

for k, v in pairs(Config.Clothes.female) do
    table.insert(Config.realClothes.female, {
        component_id = componentIdTranslation[k],
        drawable = v.clotheId,
        texture = v.variation
    })
end

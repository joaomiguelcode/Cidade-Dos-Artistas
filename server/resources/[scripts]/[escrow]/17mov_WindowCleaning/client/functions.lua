
CreateThread(function()
    Wait(2500)
    RegisterNetEvent('17mov_DrawDefaultNotification'..GetCurrentResourceName(), function(msg)
        Notify(msg)
    end)

    InitalizeScript()
end)


function isDeath() 
    return GetEntityHealth(PlayerPedId()) == 0
end

function GetPlayerData()
    return {job = {name = "unknown", grade = 0}}
end

function DeleteVehicleByCore(vehicle)
    local Network = VehToNet(vehicle)
    local Plate = GetVehicleNumberPlateText(vehicle)
    TriggerServerEvent("garages:deleteVehicle",Network,Plate)
end

function Notify(msg)
    if Config.UseBuiltInNotifications and Config.useModernUI then
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

function SetVehicle(vehicle)
    local plate = GetVehicleNumberPlateText(vehicle)
    Entity(vehicle).state:set("Plates", LocalPlayer.state.Passport, true)
    Entity(vehicle).state:set("Fuel", 100, true)
end

function RemoveKeys() 
end


function PrepeareVehicle()
    -- Before Vehicle spawn
end

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 500
    DrawRect(_x,_y+0.0125, 0.030+ factor, 0.03, 0, 0, 0, 150)
end

function ShowHelpNotification(msg)
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, -1)
end

function ChangeClothes(type) 
    RequestAnimDict("clothingshirt")
    while not HasAnimDictLoaded("clothingshirt") do Citizen.Wait(0) end

    local PlayerPed = PlayerPedId()
    TaskPlayAnim(PlayerPed, "clothingshirt", "try_shirt_positive_d", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    Citizen.Wait(1000)
    if type == "work" then
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
        TriggerServerEvent("player:Debug")
    end
    Citizen.Wait(1000)
    ClearPedTasks(PlayerPed)
end

function CheckIfNotificationIsWrong(text)
    local arrayName
    for k,v in pairs(Config.Lang) do
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
    ["nobodyNearby"] = true,
    ["spawnpointOccupied"] = true,
    ["notADriver"] = true,
    ["someoneIsAlreadyCleaning"] = true,
    ["cantInvite"] = true,
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
    ["penalty"] = true,
    ["clientsPenalty"] = true,
    ["emergencyStop"] = true,
    ["tooFar"] = true,
    ["dontHaveReqItem"] = true,
    ["notEverybodyHasRequiredJob"] = true,
    ["partyIsFull"] = true,
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

for k,v in pairs(Config.Clothes.male) do
    table.insert(Config.realClothes.male, {component_id = componentIdTranslation[k], drawable = v.clotheId, texture = v.variation})
end

for k,v in pairs(Config.Clothes.female) do
    table.insert(Config.realClothes.female, {component_id = componentIdTranslation[k], drawable = v.clotheId, texture = v.variation})
end
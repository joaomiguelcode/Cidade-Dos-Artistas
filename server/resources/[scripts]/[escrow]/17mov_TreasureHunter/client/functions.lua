-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

CreateThread(function()
    Wait(2500)
    RegisterNetEvent('17mov_DrawDefaultNotification'..GetCurrentResourceName(), function(msg)
        Notify(msg)
    end)

    InitalizeScript()
end)


function GetClosestVehicle(coords)
    return vRP.ClosestVehicle(20)
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
    while not HasAnimDictLoaded("clothingshirt") do
        Wait(0)
    end
    local ped = PlayerPedId()
    TaskPlayAnim(ped, "clothingshirt", "try_shirt_positive_d", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    
    Citizen.Wait(1000)

    if type == "work" and not hasGear then
        local maskModel = `17mov_diving_gear_mask`
        local tankModel = `17mov_diving_gear_tank`

        RequestModel(tankModel)
        while not HasModelLoaded(tankModel) do
            Wait(0)
        end

        RequestModel(maskModel)
        while not HasModelLoaded(maskModel) do
            Wait(0)
        end

        tankObj = CreateObject(tankModel, 1.0, 1.0, 1.0, 1, 1, 0)
        AttachEntityToEntity(tankObj, ped, GetPedBoneIndex(ped, 24818), -0.25, -0.25, 0.0, 180.0, 90.0, 0.0, 1, 1, 0, 0, 2, 1)

        maskObj = CreateObject(maskModel, 1.0, 1.0, 1.0, 1, 1, 0)
        AttachEntityToEntity(maskObj, ped, GetPedBoneIndex(ped, 12844), 0.0, 0.0, 0.0, 180.0, 90.0, 0.0, 1, 1, false, 0, 2, 1)
        hasGear = true
        
        CreateThread(function()
            while hasGear do
                Citizen.Wait(0)
                SetEnableScuba(ped, true)
                SetEnableScubaGearLight(ped, true)
                SetPlayerUnderwaterTimeRemaining(PlayerId(), 100.0)
            end
            SetEnableScuba(ped, false)
            SetEnableScubaGearLight(ped, false)
        end)
    elseif hasGear and type == "citizen" then
        DetachEntity(maskObj, 0, 1)
        DeleteEntity(maskObj)
        DetachEntity(tankObj, 0, 1)
        DeleteEntity(tankObj)
        tankObj, maskObj, hasGear = nil, nil, false
        SetEnableScuba(ped, false)
        SetEnableScubaGearLight(ped, false)
    end

    if type == "work" then 
        if GetEntityModel(PlayerPedId()) == 1885233650 then
            for k,v in pairs(Config.realClothes.male) do
                SetPedComponentVariation(ped, v["component_id"], v["drawable"], v["texture"], 0)
            end
        else
            for k,v in pairs(Config.realClothes.female) do
                SetPedComponentVariation(ped, v["component_id"], v["drawable"], v["texture"], 0)
            end
        end
    elseif type == "citizen" then
        TriggerServerEvent("player:Debug")
    end
    Citizen.Wait(1000)
    ClearPedTasks(ped)
end

function AddBlipForTreasure(coords)
    local radius, randomX, randomY = 50.0, 10, 15
    if Config.EasyMode then
        radius, randomX, randomY = 25, 5, 7.5
    end
    
    local newCoords = vec3(coords.x + math.random(1, 10), coords.y + math.random(1, 15), coords.z)

    local radiusBlip = AddBlipForRadius(newCoords, 50.0)
    SetBlipRotation(radiusBlip, 0)
    SetBlipColour(radiusBlip, 50)

    local labelBlip = AddBlipForCoord(newCoords)
    SetBlipSprite(labelBlip, 597)
    SetBlipDisplay(labelBlip, 4)
    SetBlipScale(labelBlip, 0.7)
    SetBlipColour(labelBlip, 50)
    SetBlipAsShortRange(labelBlip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(Config.Lang["treasureBlipName"])
    EndTextCommandSetBlipName(labelBlip)
    return radiusBlip, labelBlip
end

function AddBlipWhenNearby(coords)
    local nearbyBlip = AddBlipForCoord(coords)
    SetBlipSprite(nearbyBlip, 568)
    SetBlipDisplay(nearbyBlip, 4)
    SetBlipScale(nearbyBlip, 1.0)
    SetBlipColour(nearbyBlip, 46)
    SetBlipAsShortRange(nearbyBlip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(Config.Lang["treasure"])
    EndTextCommandSetBlipName(nearbyBlip)

    PlaySoundFrontend(-1, 'Close', 'DLC_H3_Tracker_App_Sounds', true)
    return nearbyBlip
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
    ["cantSpawnVeh"] = true,
    ["nobodyNearby"] = true,
    ["newTarget"] = true,
    ["spawnpointOccupied"] = true,
    ["CarNeeded"] = true,
    ["notADriver"] = true,
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
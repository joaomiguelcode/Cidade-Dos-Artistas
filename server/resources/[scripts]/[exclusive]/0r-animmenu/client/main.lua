local menuReady = false
local menuActive = false
local isInAnimation = false
local secondPropEmote = false
local playerHasProp = false
local playerProps = {}
local PlayerParticles = {}
local positioningAnim = false
local taskActive = false
local lastPlayedAnimType = false
local handsUp = false
local requestActive = false
local RES2 = {}
local nearbyPlayers = {}
local walkSet = 'default'
local setDataState = false
local data = {}
local categories = {}
local myClone = nil
local syncedTarget = 0
local PtfxNotif = false
local PtfxPrompt = false
local PtfxWait = 500
local PtfxCanHold = false
local PtfxNoProp = false
local AnimationThreadStatus = false
Citizen.CreateThread(function()
    local lastReady = false
    local id = 0
    while RES == nil do Citizen.Wait(0) end
    local startTime = GetGameTimer()
    -- General
    RES2.General = {}
    for i = 1, #RES.General do
        id = id + 1
        if RES.General[i][4] then
            table.insert(data, {
                id = id,
                name = RES.General[i][1],
                label = RES.General[i][4],
                category = "general",
                imgId = RES.General[i].imageId,
                animId = i
            })
        else
            table.insert(data, {
                id = id,
                name = RES.General[i][1],
                label = RES.General[i][3],
                category = "general",
                imgId = RES.General[i].imageId,
                animId = i
            })
        end
        RES2.General[RES.General[i][1]] = i
    end
    -- Dances
    RES2.Dances = {}
    for i = 1, #RES.Dances do
        id = id + 1
        table.insert(data, {
            id = id,
            name = RES.Dances[i][1],
            label = RES.Dances[i][2],
            category = "dances",
            imgId = RES.Dances[i].imageId,
            animId = i
        })
        RES2.Dances[RES.Dances[i][1]] = i
    end
    -- Expressions
    RES2.Expressions = {}
    for i = 1, #RES.Expressions do
        id = id + 1
        table.insert(data, {
            id = id,
            name = RES.Expressions[i][3],
            label = RES.Expressions[i][2],
            category = "expressions",
            imgId = RES.Expressions[i].imageId,
            animId = i
        })
        RES2.Expressions[RES.Expressions[i][3]] = i
    end
    -- Walks
    RES2.Walks = {}
    for i = 1, #RES.Walks do
        id = id + 1
        table.insert(data, {
            id = id,
            name = RES.Walks[i][3],
            label = RES.Walks[i][2],
            category = "walks",
            imgId = RES.Walks[i].imageId,
            animId = i
        })
        RES2.Walks[RES.Walks[i][3]] = i
    end
    -- Placed Emotes
    RES2.PlacedEmotes = {}
    for i = 1, #RES.PlacedEmotes do
        id = id + 1
        table.insert(data, {
            id = id,
            name = RES.PlacedEmotes[i][4],
            label = RES.PlacedEmotes[i][3],
            category = "placedemotes",
            imgId = i,
            animId = i
        })
        RES2.PlacedEmotes[RES.PlacedEmotes[i][4]] = i
    end
    -- Synced Emotes
    RES2.SyncedEmotes = {}
    for i = 1, #RES.SyncedEmotes do
        id = id + 1
        table.insert(data, {
            id = id,
            name = RES.SyncedEmotes[i][2],
            label = RES.SyncedEmotes[i][1],
            category = "syncedemotes",
            imgId = i,
            animId = i
        })
        RES2.SyncedEmotes[RES.SyncedEmotes[i][2]] = i
    end
    -- Prop Emotes
    RES2.PropEmotes = {}
    for i = 1, #RES.PropEmotes do
        id = id + 1
        table.insert(data, {
            id = id,
            name = RES.PropEmotes[i][1],
            label = RES.PropEmotes[i][4],
            category = "propemotes",
            imgId = RES.PropEmotes[i][1],
            animId = i
        })
        RES2.PropEmotes[RES.PropEmotes[i][1]] = i
    end
    -- ERP Emotes
    RES2.ERPEmotes = {}
    for i = 1, #RES.ERP do
        id = id + 1
        table.insert(data, {
            id = id,
            name = RES.ERP[i][2],
            label = RES.ERP[i][1],
            category = "erpemotes",
            imgId = i,
            animId = i
        })
        RES2.ERPEmotes[RES.ERP[i][1]] = i
    end
    -- ERP Emotes
    RES2.AnimalEmotes = {}
    for i = 1, #RES.AnimalEmotes do
        id = id + 1
        table.insert(data, {
            id = id,
            name = RES.AnimalEmotes[i][1],
            label = RES.AnimalEmotes[i][2],
            category = "animalemotes",
            imgId = RES.AnimalEmotes[i].imageId,
            animId = i
        })
        RES2.AnimalEmotes[RES.AnimalEmotes[i][1]] = i
    end
    -- Categories
    -- All
    table.insert(categories, {
        name = "all",
        number = #data,
        label = Lang:t("categories.all"),
        image = "all",
        width = 1.7
    })
    -- Favorites
    favoriteAnimations = {}
    local kvp = GetResourceKvpString('0ranimmenufavorites')
    if kvp then favoriteAnimations = json.decode(kvp) end
    -- Quicks
    quickAnimations = {}
    local kvp2 = GetResourceKvpString('0ranimmenuquicks')
    if kvp2 then
        local quicks = json.decode(kvp2)
        for k, v in pairs(quicks) do
            local imgId = v.imgId
            if tonumber(imgId) then
                imgId = tonumber(imgId)
            end
            table.insert(quickAnimations, {
                slot = tonumber(v.slot),
                id = tonumber(v.id),
                name = v.name,
                category = v.category,
                imgId = imgId,
                label = v.label,
                animId = tonumber(v.animId)
            })
        end
    end
    table.insert(categories, {
        name = "favorites",
        number = tablelength(favoriteAnimations),
        label = Lang:t("categories.favorites"),
        image = "favorites",
        width = 2.1
    })
    -- General
    table.insert(categories, {
        name = "general",
        number = tablelength(RES.General),
        label = Lang:t("categories.general"),
        image = "emotes",
        width = 0.6
    })
    -- Dances
    table.insert(categories, {
        name = "dances",
        number = tablelength(RES.Dances),
        label = Lang:t("categories.dances"),
        image = "dances",
        width = 0.7
    })
    -- Expressions
    table.insert(categories, {
        name = "expressions",
        number = tablelength(RES.Expressions),
        label = Lang:t("categories.expressions"),
        image = "expressions",
        width = 1.6
    })
    -- Walks
    table.insert(categories, {
        name = "walks",
        number = tablelength(RES.Walks),
        label = Lang:t("categories.walks"),
        image = "walks",
        width = 0.9
    })
    -- Placed Emotes
    table.insert(categories, {
        name = "placedemotes",
        number = tablelength(RES.PlacedEmotes),
        label = Lang:t("categories.placedemotes"),
        image = "emotes",
        width = 0.6
    })
    -- Synced Emotes
    table.insert(categories, {
        name = "syncedemotes",
        number = tablelength(RES.SyncedEmotes),
        label = Lang:t("categories.syncedemotes"),
        image = "emotes",
        width = 0.6
    })
    -- Prop Emotes
    table.insert(categories, {
        name = "propemotes",
        number = tablelength(RES.PropEmotes),
        label = Lang:t("categories.propemotes"),
        image = "emotes",
        width = 0.6
    })
    -- ERP Emotes
    table.insert(categories, {
        name = "erpemotes",
        number = tablelength(RES.ERP),
        label = Lang:t("categories.erpemotes"),
        image = "emotes",
        width = 0.6
    })
    -- Animal Emotes
    table.insert(categories, {
        name = "animalemotes",
        number = tablelength(RES.ERP),
        label = Lang:t("categories.animalemotes"),
        image = "emotes",
        width = 0.6
    })
    lastReady = true
    while not lastReady do Citizen.Wait(0) end
    menuReady = true
    Citizen.Wait(500)
    SendNUIMessage({action = "setData", categories = categories, animations = data, favs = favoriteAnimations, quicks = quickAnimations, pKey = Config.QuickPrimaryKey})
end)

RegisterKeyMapping("animmenu", "Opens anim menu", "keyboard", Config.MenuKey)
RegisterCommand('animmenu', function() openMenu() end)

exports('openMenu', function() return openMenu() end)
function openMenu()
    if menuReady then
        if not setDataState then
            SendNUIMessage({action = "setData", sender = "0resmon", categories = categories, animations = data, favs = favoriteAnimations, quicks = quickAnimations, pKey = Config.QuickPrimaryKey})
            while not setDataState do Citizen.Wait(0) end
        end
        if requestActive then return end
        if DoesEntityExist(myClone) then return end
        local translations = {}
        for k in pairs(Lang.fallback and Lang.fallback.phrases or Lang.phrases) do
            if k:sub(0, ('menu.'):len()) then
                translations[k:sub(('menu.'):len() + 1)] = Lang:t(k)
            end
        end
        menuActive = true
        SetNuiFocus(menuActive, menuActive)
        if Config.AllowMovement then
            SetNuiFocusKeepInput(menuActive)
            Citizen.CreateThread(function()
                while menuActive do
                    Citizen.Wait(1)
                    DisableControlAction(0, 24, true)
                    DisableControlAction(0, 25, true)
                    DisableControlAction(0, 1, true)
                    DisableControlAction(0, 2, true)
                    DisableControlAction(0, 200, true)
                end
            end)
        end
        SendNUIMessage({action = "menu", state = menuActive, translations = translations})
    end
end

RegisterNetEvent('dp:RecieveMenu', function()
    openMenu()
end)

RegisterNetEvent('rp:RecieveMenu', function()
    openMenu()
end)

RegisterNetEvent('0resmon-animmenu:openMenu', function()
    openMenu()
end)

exports('closeMenu', function() return closeMenu() end)
function closeMenu()
    menuActive = false
    SetNuiFocusKeepInput(menuActive)
    SetNuiFocus(menuActive, menuActive)
    SendNUIMessage({action = "menu", state = menuActive})
end

RegisterNetEvent('0resmon-animmenu:closeMenu', function()
    closeMenu()
end)

RegisterCommand('resetquicks', function()
    SetResourceKvp("0ranimmenuquicks", json.encode({}))
    SendNUIMessage({action = "resetQuicks"})
end)

local propEmoteTimeout = false
RegisterNUICallback('callback', function(data)
    if data.action == "playSound" then
        PlaySound(-1, data.sound, data.type, 0, 0, 1)
    elseif data.action == "disableMovement" then
        if Config.AllowMovement then
            SetNuiFocusKeepInput(false)
        end
    elseif data.action == "enableMovement" then
        if Config.AllowMovement then
            SetNuiFocusKeepInput(true)
        end
    elseif data.action == "dataReady" then
        setDataState = true
    elseif data.action == "saveFavAnims" then
        SetResourceKvp("0ranimmenufavorites", json.encode(data.favoriteAnimations))
    elseif data.action == "saveQuickAnims" then
        local quickAnimationsTable = {}
        for k, v in pairs(data.quickAnimations) do
            local imgId = v.imgId
            if tonumber(imgId) then
                imgId = tonumber(imgId)
            end
            table.insert(quickAnimationsTable, {
                slot = tonumber(v.slot),
                id = tonumber(v.id),
                name = v.name,
                category = v.category,
                imgId = imgId,
                label = v.label,
                animId = tonumber(v.animId)
            })
        end
        SetResourceKvp("0ranimmenuquicks", json.encode(quickAnimationsTable))
    elseif data.action == "close" then
        SetNuiFocus(false, false)
        SetNuiFocusKeepInput(false)
        menuActive = false
    elseif data.action == "closeAnimPos" then
        SetNuiFocus(false, false)
        SetNuiFocusKeepInput(false)
        positioningAnim = false
        DeletePed(myClone)
    elseif data.action == "playAnim" then
        local inVehicle = IsPedInAnyVehicle(PlayerPedId(), true)
        if not Config.AllowedInCars and inVehicle == 1 then
            return
        end
        if data.category == "propemotes" then
            if propEmoteTimeout then return end
            propEmoteTimeout = true
            SendNUIMessage({action = "propTimeout", state = true})
            Citizen.SetTimeout(Config.PropTimeout, function()
                propEmoteTimeout = false
                SendNUIMessage({action = "propTimeout", state = false})
            end)
        end
        cancelEmote("0resmon")
        local tables = {
            ["general"] = {name = "General", dict = 2, anim = 3},
            ["propemotes"] = {name = "PropEmotes", dict = 2, anim = 3},
            ["dances"] = {name = "Dances", dict = 3, anim = 4},
            ["expressions"] = {name = "Expressions", dict = 1},
            ["walks"] = {name = "Walks", dict = 1, aname = 3},
            ["placedemotes"] = {name = "PlacedEmotes", dict = 1, anim = 2},
            ["syncedemotes"] = {name = "SyncedEmotes"},
            ["erpemotes"] = {name = "ERP"},
            ["animalemotes"] = {name = "AnimalEmotes", dict = 3, anim = 4}
        }
        local tableData = tables[data.category]
        local animData = RES[tableData.name][data.id]
        lastPlayedAnimType = nil
        if animData == nil then return print("Anim doesn't exist: " .. tableData.name .. "(" .. data.category .. ")") end
        if data.category == "animalemotes" then
            local isPedAnimal = false
            local myPed = GetEntityModel(PlayerPedId())
            for k, v in pairs(Config.AnimalPeds) do
                if myPed == GetHashKey(v) then
                    isPedAnimal = true
                end
            end
            Citizen.Wait(500)
            if not isPedAnimal then
                return Config.Notify(Lang:t("notifications.just_animals"), 7500, "error")
            end
        end
        if data.category == "general" or data.category == "propemotes" or data.category == "animalemotes" then
            isInAnimation = true
            if animData.AnimationOptions and animData.AnimationOptions.Scenario then
                if inVehicle then return end
                ClearPedTasks(PlayerPedId())
                --TaskStartScenarioInPlace(PlayerPedId(), animData[tableData.dict], 0, true)
                TaskStartScenarioInPlace(PlayerPedId(), animData[tableData.dict], 0, true)
            else
                if not loadAnim(animData[tableData.dict]) then return end
                local movementType = 0 -- Default movement type
                if animData.AnimationOptions then
                    if animData.AnimationOptions.Flag then
                        movementType = animData.AnimationOptions.Flag
                    elseif animData.AnimationOptions.EmoteMoving then
                        movementType = 51
                    elseif animData.AnimationOptions.EmoteLoop then
                        movementType = 1
                    elseif animData.AnimationOptions.EmoteStuck then
                        movementType = 50
                    end
                else
                    if inVehicle == 1 then
                        movementType = 51
                    end
                end
                if inVehicle == 1 then
                    movementType = 51
                end
                local animationDuration = -1
                if animData.AnimationOptions and animData.AnimationOptions.Duration then
                    animationDuration = animData.AnimationOptions.Duration
                end
                if animData.AnimationOptions and animData.AnimationOptions.PtfxAsset then
                    PtfxAsset = animData.AnimationOptions.PtfxAsset
                    PtfxName = animData.AnimationOptions.PtfxName
                    if animData.AnimationOptions.PtfxNoProp then
                        PtfxNoProp = animData.AnimationOptions.PtfxNoProp
                    else
                        PtfxNoProp = false
                    end
                    Ptfx1, Ptfx2, Ptfx3, Ptfx4, Ptfx5, Ptfx6, PtfxScale = table.unpack(animData.AnimationOptions.PtfxPlacement)
                    PtfxBone = animData.AnimationOptions.PtfxBone
                    PtfxColor = animData.AnimationOptions.PtfxColor
                    PtfxInfo = animData.AnimationOptions.PtfxInfo
                    PtfxWait = animData.AnimationOptions.PtfxWait
                    PtfxCanHold = animData.AnimationOptions.PtfxCanHold
                    PtfxNotif = false
                    PtfxPrompt = true
                    RunAnimationThread()
                    TriggerServerEvent("0resmon-animmenu:ptfxSync:server", PtfxAsset, PtfxName, vector3(Ptfx1, Ptfx2, Ptfx3), vector3(Ptfx4, Ptfx5, Ptfx6), PtfxBone, PtfxScale, PtfxColor)
                else
                    PtfxPrompt = false
                end
                TaskPlayAnim(PlayerPedId(), animData[tableData.dict], animData[tableData.anim], 5.0, 5.0, animationDuration, movementType, 0, false, false, false)
                RemoveAnimDict(animData[tableData.dict])
                if animData.AnimationOptions and animData.AnimationOptions.Prop then
                    local propName = animData.AnimationOptions.Prop
                    local propBone = animData.AnimationOptions.PropBone
                    local propPl1, propPl2, propPl3, propPl4, propPl5, propPl6 = table.unpack(animData.AnimationOptions.PropPlacement)
                    if animData.AnimationOptions.Prop2 then
                        secondPropName = animData.AnimationOptions.Prop2
                        secondPropBone = animData.AnimationOptions.Prop2Bone
                        secondPropPl1, secondPropPl2, secondPropPl3, secondPropPl4, secondPropPl5, secondPropPl6 = table.unpack(animData.AnimationOptions.Prop2Placement)
                        secondPropEmote = true
                    else
                        secondPropEmote = false
                    end
                    if animData.AnimationOptions.SecondProp then
                        secondPropName = animData.AnimationOptions.SecondProp
                        secondPropBone = animData.AnimationOptions.SecondPropBone
                        secondPropPl1, secondPropPl2, secondPropPl3, secondPropPl4, secondPropPl5, secondPropPl6 = table.unpack(animData.AnimationOptions.SecondPropPlacement)
                        secondPropEmote = true
                    else
                        secondPropEmote = false
                    end
                    if not addPropToPlayer(propName, propBone, propPl1, propPl2, propPl3, propPl4, propPl5, propPl6, nil) then return end
                    if secondPropEmote then
                        if not addPropToPlayer(secondPropName, secondPropBone, secondPropPl1, secondPropPl2, secondPropPl3, secondPropPl4, secondPropPl5, secondPropPl6, nil) then
                            destroyAllProps()
                            return
                        end
                    end
                    if animData.AnimationOptions.PtfxAsset and not PtfxNoProp then
                        TriggerServerEvent("0resmon-animmenu:ptfxSyncProp:server", ObjToNet(prop))
                    end
                end
            end
        elseif data.category == "dances" then
            if not loadAnim(animData[tableData.dict]) then return end
            local movementType = 1
            local animationDuration = -1
            if inVehicle == 1 then
                movementType = 51
            end
            TaskPlayAnim(PlayerPedId(), animData[tableData.dict], animData[tableData.anim], 5.0, 5.0, animationDuration, movementType, 0, false, false, false)
            RemoveAnimDict(animData[tableData.dict])
            isInAnimation = true
        elseif data.category == "expressions" then
            local expression = animData[tableData.dict]
            SetFacialIdleAnimOverride(PlayerPedId(), expression, 0)
            SetResourceKvp("0ranimmenuexpression", expression)
        elseif data.category == "walks" then
            local walk = animData[tableData.dict]
            local name = animData[tableData.aname]
            walkSet = name
            RequestAnimSet(walk)
            while not HasAnimSetLoaded(walk) do Citizen.Wait(1) end
            SetPedMovementClipset(PlayerPedId(), walk, 0.2)
            RemoveAnimSet(walk)
            SetResourceKvp("0ranimmenuwalk", walk)
            SetResourceKvp("0ranimmenuwalkname", walkSet)
        elseif data.category == "placedemotes" then
            if DoesEntityExist(myClone) then return end
            if inVehicle then return end
            local hit, coords, entity = RayCastGamePlayCamera(Config.MaxDistanceForAnimPos)
            if hit and (IsEntityAVehicle(entity) or IsThisModelAHeli(entityModel) or IsThisModelAPlane(entityModel)) then
                return
            end
            if menuActive then
                SendNUIMessage({action = "menu", state = false})
                menuActive = false
            end
            SendNUIMessage({action = "openInfoMenu", state = true})
            myClone = ClonePed(PlayerPedId(), false, false, true)
            FreezeEntityPosition(myClone, true)
            SetEntityHeading(myClone, GetEntityHeading(PlayerPedId()))
            PlaceObjectOnGroundProperly(myClone)
            SetBlockingOfNonTemporaryEvents(myClone, true)
            SetEntityCollision(myClone, false, false)
            SetEntityAlpha(myClone, 200, false)
            if not loadAnim(animData[tableData.dict]) then return end
            local movementType = 1 -- Default movement type
            local animationDuration = -1
            TaskPlayAnim(myClone, animData[tableData.dict], animData[tableData.anim], 5.0, 5.0, animationDuration, movementType, 0, false, false, false)
            RemoveAnimDict(animData[tableData.dict])
            SetNuiFocus(true, false)
            SetNuiFocusKeepInput(true)
            positioningAnim = true
            local disableControlActions2 = {20, 36}
            local setAnim = true
            local myCoords = GetEntityCoords(PlayerPedId())
            myCoordsZ = myCoords.z
            local cloneCoordsM = GetEntityCoords(myClone)
            local cloneHeadingM = GetEntityHeading(myClone)
            while positioningAnim do
                for _, key in pairs(disableControlActions2) do
                    DisableControlAction(0, key, true)
                end
                DisablePlayerFiring(PlayerId(), true)
                cloneCoords = GetEntityCoords(myClone)
                local hit, coords, entity = RayCastGamePlayCamera(Config.MaxDistanceForAnimPos)
                if hit and setAnim then
                    SetEntityCoords(myClone, coords.x, coords.y, myCoordsZ)
                end
                if IsControlPressed(0, 20) or IsDisabledControlPressed(0, 20) then
                    myCoordsZ = coords.z
                end
                if IsControlPressed(0, 14) then -- Rotate Left
                    if IsControlPressed(0, 36) or IsDisabledControlPressed(0, 36) then
                        SetEntityHeading(myClone, GetEntityHeading(myClone) - 5)
                    else
                        SetEntityHeading(myClone, GetEntityHeading(myClone) - 10)
                    end
                end
                if IsControlPressed(0, 15) then -- Rotate Right
                    if IsControlPressed(0, 36) or IsDisabledControlPressed(0, 36) then
                        SetEntityHeading(myClone, GetEntityHeading(myClone) + 5)
                    else
                        SetEntityHeading(myClone, GetEntityHeading(myClone) + 10)
                    end
                end
                if IsControlPressed(1, 27) then -- Up Arrow
                    setAnim = false
                    local distance = #(cloneCoords - myCoords)
                    if Config.MaxDistanceForAnimPos >= Round(distance) then
                        local myClonePos = GetEntityCoords(myClone)
                        if IsControlPressed(0, 36) or IsDisabledControlPressed(0, 36) then
                            myCoordsZ = myCoordsZ + 0.001
                        else
                            myCoordsZ = myCoordsZ + 0.05
                        end
                        SetEntityCoords(myClone, myClonePos.x, myClonePos.y, myCoordsZ)
                    else
                        SetEntityCoords(myClone, myCoords.x, myCoords.y, myCoordsZ)
                    end
                end
                if IsControlPressed(1, 173) then -- Down Arrow
                    setAnim = false
                    local distance = #(cloneCoords - myCoords)
                    if Config.MaxDistanceForAnimPos >= Round(distance) then
                        local myClonePos = GetEntityCoords(myClone)
                        if IsControlPressed(0, 36) or IsDisabledControlPressed(0, 36) then
                            myCoordsZ = myCoordsZ - 0.001
                        else
                            myCoordsZ = myCoordsZ - 0.05
                        end
                        SetEntityCoords(myClone, myClonePos.x, myClonePos.y, myCoordsZ)
                    else
                        SetEntityCoords(myClone, myCoords.x, myCoords.y, myCoordsZ)
                    end
                end
                if IsControlPressed(0, 38) then -- Confirm 
                    SetNuiFocus(false, false)
                    SetNuiFocusKeepInput(false)
                    SendNUIMessage({action = "openInfoMenu", state = false})
                    cloneCoords = GetEntityCoords(myClone)
                    cloneHeading = GetEntityHeading(myClone)
                    TaskGoStraightToCoord(PlayerPedId(), cloneCoords.x, cloneCoords.y, cloneCoords.z, 1.0, -1, cloneHeading, -1)
                    DeletePed(myClone)
                    positioningAnim = false
                    lastPlayedAnimType = "posAnim"
                    taskActive = true
                end
                if IsControlPressed(0, 322) then -- ESC
                    setAnim = false
                    SetNuiFocus(false, false)
                    SetNuiFocusKeepInput(false)
                    SendNUIMessage({action = "openInfoMenu", state = false})
                    DeletePed(myClone)
                    positioningAnim = false
                    taskActive = false
                end
                setAnim = true
                Citizen.Wait(0)
            end
            Citizen.SetTimeout(7500, function()
                if taskActive then
                    FreezeEntityPosition(PlayerPedId(), true)
                    Citizen.Wait(250)
                    SetEntityCollision(PlayerPedId(), false, false)
                    SetEntityVisible(PlayerPedId(), false, 0)
                    ClearPedTasks(PlayerPedId())
                    ClearPedSecondaryTask(PlayerPedId())
                    SetEntityCoordsNoOffset(PlayerPedId(), cloneCoords.x, cloneCoords.y, myCoordsZ + 1.0, true, true, true)
                    SetEntityHeading(PlayerPedId(), cloneHeading)
                    taskActive = false
                    Citizen.Wait(500)
                    SetEntityVisible(PlayerPedId(), true, 0)
                end
            end)
            while taskActive do
                Citizen.Wait(0)
                local myCoords = GetEntityCoords(PlayerPedId())
                local distance = #(myCoords - cloneCoords)
                if distance <= 1.5 then
                    FreezeEntityPosition(PlayerPedId(), true)
                    Citizen.Wait(250)
                    SetEntityCollision(PlayerPedId(), false, false)
                    SetEntityVisible(PlayerPedId(), false, 0)
                    ClearPedTasks(PlayerPedId())
                    ClearPedSecondaryTask(PlayerPedId())
                    SetEntityCoordsNoOffset(PlayerPedId(), cloneCoords.x, cloneCoords.y, myCoordsZ + 1.0, true, true, true)
                    SetEntityHeading(PlayerPedId(), cloneHeading)
                    taskActive = false
                    positioningAnim = false
                    Citizen.Wait(500)
                    SetEntityVisible(PlayerPedId(), true, 0)
                    local movementType = 1 -- Default movement type
                    local animationDuration = -1
                    if not loadAnim(animData[tableData.dict]) then return end
                    TaskPlayAnim(PlayerPedId(), animData[tableData.dict], animData[tableData.anim], 5.0, 5.0, animationDuration, movementType, 0, false, false, false)
                    RemoveAnimDict(animData[tableData.dict])
                    isInAnimation = true
                    taskActive = false
                    break
                end
            end
        elseif data.category == "syncedemotes" or data.category == "erpemotes" then
            if requestActive then return end
            if inVehicle then return end
            nearbyPlayers = GetPlayersInArea(GetEntityCoords(PlayerPedId()), 5.0)
            if next(nearbyPlayers) ~= nil and next(nearbyPlayers) then
                menuActive = false
                SetNuiFocusKeepInput(false)
                SetNuiFocus(false, false)
                SendNUIMessage({action = "menu", state = false})
                requestActive = true
                Config.ShowTextUI(Lang:t("notifications.waiting_for_a_decision"), "ESC")
                animData.type = data.category
                animData.animNumber = data.id
                animData.targetAnimName = animData[5] or nil
                for _, id in pairs(nearbyPlayers) do
                    Config.Create3DTextUIOnPlayer("0resmon-animmenu-request-players-" .. id, {
                        id = id,
                        displayDist = 5.0,
                        interactDist = 1.3,
                        enableKeyClick = true, -- If true when you near it and click key it will trigger the event that you write inside triggerData
                        keyNum = 38,
                        key = "E",
                        text = animData[1] .. "?",
                        theme = "green", -- or red
                        triggerData = {
                            triggerName = "0resmon-animmenu:sendAnimRequest:client",
                            args = {data = animData, id = id}
                        }
                    })
                end
                Citizen.CreateThread(function()
                    while true do
                        Citizen.Wait(0)
                        if IsControlPressed(0, 322) then
                            Config.Notify(Lang:t("notifications.request_cancelled"), 7500, "error")
                            requestActive = false
                            Config.HideTextUI()
                            for _, id in pairs(nearbyPlayers) do
                                Config.Delete3DTextUIOnPlayer("0resmon-animmenu-request-players-" .. id)
                            end
                            break
                        end
                    end
                end)
                Citizen.SetTimeout(7500, function()
                    if next(nearbyPlayers) ~= nil and next(nearbyPlayers) and requestActive then
                        Config.Notify(Lang:t("notifications.request_timed_out"), 7500, "error")
                        requestActive = false
                        Config.HideTextUI()
                        for _, id in pairs(nearbyPlayers) do
                            Config.Delete3DTextUIOnPlayer("0resmon-animmenu-request-players-" .. id)
                        end
                    end
                end)
            else
                Config.Notify(Lang:t("notifications.no_players_nearby"), 7500, "error")
            end
        end
    end
end)

RegisterNetEvent('0resmon-animmenu:sendAnimRequest:client', function(data)
    data.target = GetPlayerServerId(PlayerId())
    if next(nearbyPlayers) ~= nil and next(nearbyPlayers) and requestActive then
        requestActive = false
        Config.HideTextUI()
        for _, id in pairs(nearbyPlayers) do
            Config.Delete3DTextUIOnPlayer("0resmon-animmenu-request-players-" .. id)
        end
    end
    TriggerServerEvent('0resmon-animmenu:sendAnimRequest:server', data)
end)

local requestReceiveActive = false
RegisterNetEvent('0resmon-animmenu:receiveAnimRequest:client', function(data)
    Config.ShowTextUI(Lang:t("notifications.waiting_for_a_decision"), "ESC")
    requestReceiveActive = true
    Config.Create3DTextUIOnPlayer("0resmon-animmenu-request-player-" .. data.target, {
        id = data.target,
        displayDist = 5.0,
        interactDist = 1.3,
        enableKeyClick = true, -- If true when you near it and click key it will trigger the event that you write inside triggerData
        keyNum = 38,
        key = "E",
        text = data.data[1] .. "?",
        theme = "green", -- or red
        triggerData = {
            triggerName = "0resmon-animmenu:playAnimTogetherReceiver:client",
            args = {data = data}
        }
    })
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if IsControlPressed(0, 322) then
                Config.Notify(Lang:t("notifications.request_cancelled"), 7500, "error")
                requestReceiveActive = false
                Config.HideTextUI()
                Config.Delete3DTextUIOnPlayer("0resmon-animmenu-request-player-" .. data.target)
                TriggerServerEvent('0resmon-animmenu:requstCanelledNotif:server', data.target)
                break
            end
        end
    end)
    Citizen.SetTimeout(7500, function()
        if requestReceiveActive then
            requestReceiveActive = false
            Config.HideTextUI()
            Config.Delete3DTextUIOnPlayer("0resmon-animmenu-request-player-" .. data.target)
            Config.Notify(Lang:t("notifications.request_timed_out"), 7500, "error")
        end
    end)
end)

RegisterNetEvent('0resmon-animmenu:requstCanelledNotif:client', function()
    Config.Notify(Lang:t("notifications.request_cancelled"), 7500, "error")
end)

local syncedAnimDictLoaded = false
RegisterNetEvent('0resmon-animmenu:animDictLoaded:client', function()
    syncedAnimDictLoaded = true
end)

RegisterNetEvent('0resmon-animmenu:playAnimTogetherReceiver:client', function(data)
    requestReceiveActive = false
    lastPlayedAnimType = "synced"
    syncedTarget = data.data.target
    Config.HideTextUI()
    Config.Delete3DTextUIOnPlayer("0resmon-animmenu-request-player-" .. data.data.target)
    local inVehicle = IsPedInAnyVehicle(PlayerPedId(), true)
    if inVehicle then return end
    TriggerServerEvent('0resmon-animmenu:playAnimTogetherSender:server', data)
    Citizen.Wait(300)
    -- Anim Opt.
    local targetPed = GetPlayerPed(GetPlayerFromServerId(data.data.target))
    local animOptions = data.data.data.AnimationOptions
    local SyncOffsetFront = 1.0
    local SyncOffsetSide = 0.0
    local SyncOffsetHeight = 0.0
    local SyncOffsetHeading = 180.1
    if animOptions then
        if animOptions.SyncOffsetFront then
            SyncOffsetFront = animOptions.SyncOffsetFront + 0.0
        end
        if animOptions.SyncOffsetSide then
            SyncOffsetSide = animOptions.SyncOffsetSide + 0.0
        end
        if animOptions.SyncOffsetHeight then
            SyncOffsetHeight = animOptions.SyncOffsetHeight + 0.0
        end
        if animOptions.SyncOffsetHeading then
            SyncOffsetHeading = animOptions.SyncOffsetHeading + 0.0
        end
    end
    -- Anim
    local coords = GetOffsetFromEntityInWorldCoords(targetPed, SyncOffsetSide, SyncOffsetFront, SyncOffsetHeight)
    local heading = GetEntityHeading(targetPed)
    SetEntityHeading(PlayerPedId(), heading - SyncOffsetHeading)
    FreezeEntityPosition(PlayerPedId(), true)
    Citizen.Wait(250)
    SetEntityCollision(PlayerPedId(), false, false)
    SetEntityCoordsNoOffset(PlayerPedId(), coords.x, coords.y, coords.z, 0)
    -- Anim
    local receiver = data.data.data.receiver
    local animDict = receiver.dict
    local animName = receiver.anim
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do RequestAnimDict(animDict) Citizen.Wait(10) end 
    TriggerServerEvent('0resmon-animmenu:animDictLoaded:server', data.data.target)
    while not syncedAnimDictLoaded do Citizen.Wait(0) end
    local movementType = 0 
    if animOptions then
        if animOptions.Flag then
            movementType = animOptions.Flag
        elseif animOptions.EmoteMoving then
            movementType = 51
        elseif animOptions.EmoteLoop then
            movementType = 1
        elseif animOptions.EmoteStuck then
            movementType = 50
        end
    end
    local animationDuration = -1
    TaskPlayAnim(PlayerPedId(), animDict, animName, 5.0, 5.0, animationDuration, movementType, 0, false, false, false)
    RemoveAnimDict(animDict)
    isInAnimation = true
    syncedAnimDictLoaded = false
end)

RegisterNetEvent('0resmon-animmenu:playAnimTogetherSender:client', function(data)
    lastPlayedAnimType = "synced"
    syncedTarget = data.data.id
    local inVehicle = IsPedInAnyVehicle(PlayerPedId(), true)
    if inVehicle then return end
    local targetPed = GetPlayerPed(GetPlayerFromServerId(syncedTarget))
    local sender = data.data.data.sender or RES["ERP"][data.data.data.animNumber]
    local animDict = sender.dict or sender[2]
    local animName = sender.anim or sender[3]
    local animOptions = data.data.data.AnimationOptions
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do RequestAnimDict(animDict) Citizen.Wait(10) end 
    TriggerServerEvent('0resmon-animmenu:animDictLoaded:server', data.data.id)
    while not syncedAnimDictLoaded do Citizen.Wait(0) end
    local movementType = 0
    if animOptions then
        if animOptions.Flag then
            movementType = animOptions.Flag
        elseif animOptions.EmoteMoving then
            movementType = 51
        elseif animOptions.EmoteLoop then
            movementType = 1
        elseif animOptions.EmoteStuck then
            movementType = 50
        end
    end
    Citizen.Wait(300)
    local animationDuration = -1
    TaskPlayAnim(PlayerPedId(), animDict, animName, 5.0, 5.0, animationDuration, movementType, 0, false, false, false)
    RemoveAnimDict(animDict)
    isInAnimation = true
    syncedAnimDictLoaded = false
end)

function GetPlayers(onlyOtherPlayers, returnKeyValue, returnPeds)
    local players, myPlayer = {}, PlayerId()
    local active = GetActivePlayers()
    for i = 1, #active do
        local currentPlayer = active[i]
        local ped = GetPlayerPed(currentPlayer)
        if DoesEntityExist(ped) and ((onlyOtherPlayers and currentPlayer ~= myPlayer) or not onlyOtherPlayers) then
            if returnKeyValue then
                players[currentPlayer] = {entity = ped, id = GetPlayerServerId(currentPlayer)}
            else
                players[#players + 1] = returnPeds and ped or currentPlayer
            end
        end
    end
    return players
end

function EnumerateEntitiesWithinDistance(entities, isPlayerEntities, coords, maxDistance)
    local nearbyEntities = {}
    if coords then
        coords = vector3(coords.x, coords.y, coords.z)
    else
        local playerPed = PlayerPedId()
        coords = GetEntityCoords(playerPed)
    end
    for k, v in pairs(entities) do
        local distance = #(coords - GetEntityCoords(v.entity))
        if distance <= maxDistance then
            nearbyEntities[#nearbyEntities + 1] = v.id
        end
    end
    return nearbyEntities
end

function GetPlayersInArea(coords, maxDistance)
    return EnumerateEntitiesWithinDistance(GetPlayers(true, true), true, coords, maxDistance)
end

function RayCastGamePlayCamera(distance)
    local cameraRotation = GetGameplayCamRot()
	local cameraCoord = GetGameplayCamCoord()
	local direction = RotationToDirection(cameraRotation)
	local destination ={x = cameraCoord.x + direction.x * distance, y = cameraCoord.y + direction.y * distance, z = cameraCoord.z + direction.z * distance}
	local a, b, c, d, e = GetShapeTestResult(StartShapeTestSweptSphere(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, 0.2, 339, PlayerPedId(), 4))
	return b, c, e
end

function RotationToDirection(rotation)
    local adjustedRotation = {x = (math.pi / 180) * rotation.x, y = (math.pi / 180) * rotation.y, z = (math.pi / 180) * rotation.z}
    local direction = {x = -math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), y = math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), z = math.sin(adjustedRotation.x)}
    return direction
end

function Round(value, numDecimalPlaces)
    if not numDecimalPlaces then return math.floor(value + 0.5) end
    local power = 10 ^ numDecimalPlaces
    return math.floor((value * power) + 0.5) / (power)
end

RegisterNetEvent('0resmon-animmenu:cancelEmote:client', function()
    cancelEmote("0resmon")
end)

function cancelEmote(hu)
    if isInAnimation then
        isInAnimation = false
        ClearPedTasks(PlayerPedId())
        local inVehicle = IsPedInAnyVehicle(PlayerPedId(), true)
        if not inVehicle then
            ClearPedTasksImmediately(PlayerPedId())
            ClearPedSecondaryTask(PlayerPedId())
            ClearAreaOfObjects(GetEntityCoords(PlayerPedId()), 2.0, 0)
        end
        if playerHasProp then
            for _, v in pairs(playerProps) do DeleteEntity(v) v = nil end
            playerHasProp = false
        end
        if lastPlayedAnimType == "posAnim" then
            FreezeEntityPosition(PlayerPedId(), false)
            SetEntityCollision(PlayerPedId(), true, true)
        end
        if lastPlayedAnimType == "synced" then
            FreezeEntityPosition(PlayerPedId(), false)
            SetEntityCollision(PlayerPedId(), true, true)
            TriggerServerEvent('0resmon-animmenu:cancelEmote:server', syncedTarget)
            DetachEntity(PlayerPedId(), false, false)
        end
        AnimationThreadStatus = false
        PtfxNotif = false
        PtfxPrompt = false
    else
        if not hu then
            if Config.CanHandsup() and Config.EnableHandsUp then
                if not HasAnimDictLoaded('missminuteman_1ig_2') then
                    RequestAnimDict('missminuteman_1ig_2')
                    while not HasAnimDictLoaded('missminuteman_1ig_2') do
                        Citizen.Wait(10)
                    end
                end
                handsUp = not handsUp
                if handsUp then
                    Config.HandsupDisableControls()
                    TaskPlayAnim(PlayerPedId(), 'missminuteman_1ig_2', 'handsup_base', 8.0, 8.0, -1, 50, 0, false, false, false)
                else
                    Config.HandsupEnableControls()
                    ClearPedTasks(PlayerPedId())
                end
            end
        end
    end
end

function addPropToPlayer(prop1, bone, off1, off2, off3, rot1, rot2, rot3, textureVariation)
    local Player = PlayerPedId()
    local x, y, z = table.unpack(GetEntityCoords(Player))
    if not IsModelValid(prop1) then return false end
    if not HasModelLoaded(prop1) then 
        while not HasModelLoaded(joaat(prop1)) do
            RequestModel(joaat(prop1))
            Citizen.Wait(10)
        end
    end
    prop = CreateObject(joaat(prop1), x, y, z + 0.2, true, true, true)
    if textureVariation ~= nil then
        SetObjectTextureVariation(prop, textureVariation)
    end
    AttachEntityToEntity(prop, Player, GetPedBoneIndex(Player, bone), off1, off2, off3, rot1, rot2, rot3, true, true, false, true, 1, true)
    table.insert(playerProps, prop)
    playerHasProp = true
    SetModelAsNoLongerNeeded(prop1)
    return true
end

function destroyAllProps()
    for _, v in pairs(playerProps) do DeleteEntity(v) v = nil end
    playerHasProp = false
end

Citizen.CreateThread(function()
    local walk = GetResourceKvpString("0ranimmenuwalk")
    local walkName = GetResourceKvpString("0ranimmenuwalkname")
    if walk ~= nil then
        Citizen.Wait(2500) -- Delay, to ensure the player ped has loaded in
        RequestAnimSet(walk)
        while not HasAnimSetLoaded(walk) do Citizen.Wait(1) end
        SetPedMovementClipset(PlayerPedId(), walk, 0.2)
        RemoveAnimSet(walk)
        walkSet = walkName
    end
    local expression = GetResourceKvpString("expression")
    if expression ~= nil then
        Citizen.Wait(2500) -- Delay, to ensure the player ped has loaded in
        SetFacialIdleAnimOverride(PlayerPedId(), expression, 0)
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource ~= GetCurrentResourceName() then return end
    cancelEmote("0resmon")
    destroyAllProps()
    Config.HandsupEnableControls()
    DetachEntity(PlayerPedId(), false, false)
    if DoesEntityExist(myClone) then DeletePed(myClone) end
end)

AddEventHandler('gameEventTriggered', function(event, data)
    if event == 'CEventNetworkEntityDamage' then
        local victim, attacker, victimDied, weapon = data[1], data[2], data[4], data[7]
		if not IsEntityAPed(victim) then return end
        if victimDied and NetworkGetPlayerIndexFromPed(victim) == PlayerId() and IsEntityDead(PlayerPedId()) then
            if menuActive then
                cancelEmote("0resmon")
                SetNuiFocus(false, false)
                SetNuiFocusKeepInput(false)
                SendNUIMessage({action = "menu", state = false})
                menuActive = false
            else
                cancelEmote("0resmon")
            end
		end
	end
end)

RegisterCommand('a', function(source, args, raw) EmoteCommandStart(source, args, raw) end, false)

function EmoteCommandStart(source, args, raw)
    if #args > 0 then
        if isInAnimation then
            cancelEmote("0resmon")
        end
        local name = string.lower(args[1])
        if name == "c" then
            if walkSet ~= 'default' then
                if Config.CancelWalk then
                    local animSet = "move_f@multiplayer"
                    walkSet = "defaultfemale"
                    if IsPedMale(PlayerPedId()) then
                        animSet = "move_m@multiplayer"
                        walkSet = "defaultmale"
                    end
                    RequestAnimSet(animSet)
                    while not HasAnimSetLoaded(animSet) do Citizen.Wait(1) end
                    SetPedMovementClipset(PlayerPedId(), animSet, 0.2)
                    RemoveAnimSet(animSet)
                    Config.Notify(Lang:t("notifications.walk_style_is_set_default"), 7500, "error")
                    SetResourceKvp("0ranimmenuwalk", animSet)
                    SetResourceKvp("0ranimmenuwalkname", walkSet)
                    return
                end
            end
            if isInAnimation then
                cancelEmote("0resmon")
            else
                Config.Notify(Lang:t("notifications.no_emote_to_cancel"), 7500, "error")
            end
            return
        end
        RES2.General = {}
        for i = 1, #RES.General do
            RES2.General[RES.General[i][1]] = i
        end
        Citizen.Wait(500)
        if RES2.General[name] ~= nil then
            OnEmotePlay(name, "general")
            return
        elseif RES2.Dances[name] ~= nil then
            OnEmotePlay(name, "dances")
            return
        elseif RES2.Expressions[name] ~= nil then
            OnEmotePlay(name, "expressions")
            return
        elseif RES2.Walks[name] ~= nil then
            OnEmotePlay(name, "walks")
            return
        elseif RES2.PlacedEmotes[name] ~= nil then
            OnEmotePlay(name, "placedemotes")
            return
        elseif RES2.PropEmotes[name] ~= nil then
            OnEmotePlay(name, "propemotes")
            return
        elseif RES2.ERPEmotes[name] ~= nil then
            OnEmotePlay(name, "erpemotes")
            return
        else
            Config.Notify(name .. " is not a valid emote.", 7500, "error")
        end
    end
end

function OnEmotePlay(name, category)
    if IsEntityInAir(PlayerPedId()) then
        return
    end
    if category == "propemotes" then
        if propEmoteTimeout then return end
        propEmoteTimeout = true
        SendNUIMessage({action = "propTimeout", state = true})
        Citizen.SetTimeout(Config.PropTimeout, function()
            propEmoteTimeout = false
            SendNUIMessage({action = "propTimeout", state = false})
        end)
    end
    cancelEmote("0resmon")
    local tables = {
        ["general"] = {name = "General", aname = 1, dict = 2, anim = 3},
        ["propemotes"] = {name = "PropEmotes", dict = 2, anim = 3},
        ["dances"] = {name = "Dances", aname = 1, dict = 3, anim = 4},
        ["expressions"] = {name = "Expressions", dict = 1, aname = 3},
        ["walks"] = {name = "Walks", dict = 1, aname = 3},
        ["placedemotes"] = {name = "PlacedEmotes", dict = 1, anim = 2},
        ["syncedemotes"] = {name = "SyncedEmotes"},
        ["erpemotes"] = {name = "ERP"},
        ["animalemotes"] = {name = "AnimalEmotes", dict = 3, anim = 4}
    }
    local tableData = tables[category]
    local animData1 = RES2[tableData.name][name]
    local animData = RES[tableData.name][animData1]
    local inVehicle = IsPedInAnyVehicle(PlayerPedId(), true)
    lastPlayedAnimType = nil
    if animData == nil then return print("Anim doesn't exist: " .. tableData.name .. "(" .. category .. ")") end
    if data.category == "animalemotes" then
        local isPedAnimal = false
        local myPed = GetEntityModel(PlayerPedId())
        for k, v in pairs(Config.AnimalPeds) do
            if myPed == GetHashKey(v) then
                isPedAnimal = true
            end
        end
        Citizen.Wait(500)
        if not isPedAnimal then
            return Config.Notify(Lang:t("notifications.just_animals"), 7500, "error")
        end
    end
    if category == "general" or category == "propemotes" or category == "animalemotes" then
        isInAnimation = true
        if animData.AnimationOptions and animData.AnimationOptions.Scenario then
            if inVehicle then return end
            ClearPedTasks(PlayerPedId())
            TaskStartScenarioInPlace(PlayerPedId(), animData[tableData.dict], 0, true)
        else
            if not loadAnim(animData[tableData.dict]) then return end
            local movementType = 0 -- Default movement type
            if animData.AnimationOptions then
                if animData.AnimationOptions.Flag then
                    movementType = animData.AnimationOptions.Flag
                elseif animData.AnimationOptions.EmoteMoving then
                    movementType = 51
                elseif animData.AnimationOptions.EmoteLoop then
                    movementType = 1
                elseif animData.AnimationOptions.EmoteStuck then
                    movementType = 50
                end
            else
                if inVehicle == 1 then
                    movementType = 51
                end
            end
            if inVehicle == 1 then
                movementType = 51
            end
            local animationDuration = -1
            if animData.AnimationOptions and animData.AnimationOptions.Duration then
                animationDuration = animData.AnimationOptions.Duration
            end
            if animData.AnimationOptions and animData.AnimationOptions.PtfxAsset then
                PtfxAsset = animData.AnimationOptions.PtfxAsset
                PtfxName = animData.AnimationOptions.PtfxName
                if animData.AnimationOptions.PtfxNoProp then
                    PtfxNoProp = animData.AnimationOptions.PtfxNoProp
                else
                    PtfxNoProp = false
                end
                Ptfx1, Ptfx2, Ptfx3, Ptfx4, Ptfx5, Ptfx6, PtfxScale = table.unpack(animData.AnimationOptions.PtfxPlacement)
                PtfxBone = animData.AnimationOptions.PtfxBone
                PtfxColor = animData.AnimationOptions.PtfxColor
                PtfxInfo = animData.AnimationOptions.PtfxInfo
                PtfxWait = animData.AnimationOptions.PtfxWait
                PtfxCanHold = animData.AnimationOptions.PtfxCanHold
                PtfxNotif = false
                PtfxPrompt = true
                RunAnimationThread()
                TriggerServerEvent("0resmon-animmenu:ptfxSync:server", PtfxAsset, PtfxName, vector3(Ptfx1, Ptfx2, Ptfx3), vector3(Ptfx4, Ptfx5, Ptfx6), PtfxBone, PtfxScale, PtfxColor)
            else
                PtfxPrompt = false
            end
            TaskPlayAnim(PlayerPedId(), animData[tableData.dict], animData[tableData.anim], 5.0, 5.0, animationDuration, movementType, 0, false, false, false)
            RemoveAnimDict(animData[tableData.dict])
            if animData.AnimationOptions and animData.AnimationOptions.Prop then
                local propName = animData.AnimationOptions.Prop
                local propBone = animData.AnimationOptions.PropBone
                local propPl1, propPl2, propPl3, propPl4, propPl5, propPl6 = table.unpack(animData.AnimationOptions.PropPlacement)
                if animData.AnimationOptions.Prop2 then
                    secondPropName = animData.AnimationOptions.Prop2
                    secondPropBone = animData.AnimationOptions.Prop2Bone
                    secondPropPl1, secondPropPl2, secondPropPl3, secondPropPl4, secondPropPl5, secondPropPl6 = table.unpack(animData.AnimationOptions.Prop2Placement)
                    secondPropEmote = true
                else
                    secondPropEmote = false
                end
                if animData.AnimationOptions.SecondProp then
                    secondPropName = animData.AnimationOptions.SecondProp
                    secondPropBone = animData.AnimationOptions.SecondPropBone
                    secondPropPl1, secondPropPl2, secondPropPl3, secondPropPl4, secondPropPl5, secondPropPl6 = table.unpack(animData.AnimationOptions.SecondPropPlacement)
                    secondPropEmote = true
                else
                    secondPropEmote = false
                end
                if not addPropToPlayer(propName, propBone, propPl1, propPl2, propPl3, propPl4, propPl5, propPl6, nil) then return end
                if secondPropEmote then
                    if not addPropToPlayer(secondPropName, secondPropBone, secondPropPl1, secondPropPl2, secondPropPl3, secondPropPl4, secondPropPl5, secondPropPl6, nil) then
                        destroyAllProps()
                        return
                    end
                end
                if animData.AnimationOptions.PtfxAsset and not PtfxNoProp then
                    TriggerServerEvent("0resmon-animmenu:ptfxSyncProp:server", ObjToNet(prop))
                end
            end
        end
    elseif category == "dances" then
        if not loadAnim(animData[tableData.dict]) then return end
        local movementType = 1
        local animationDuration = -1
        TaskPlayAnim(PlayerPedId(), animData[tableData.dict], animData[tableData.anim], 5.0, 5.0, animationDuration, movementType, 0, false, false, false)
        RemoveAnimDict(animData[tableData.dict])
        isInAnimation = true
    elseif category == "expressions" then
        local expression = animData[tableData.dict]
        SetFacialIdleAnimOverride(PlayerPedId(), expression, 0)
        SetResourceKvp("0ranimmenuexpression", expression)
    elseif category == "walks" then
        local walk = animData[tableData.dict]
        local name = animData[tableData.aname]
        walkSet = name
        RequestAnimSet(walk)
        while not HasAnimSetLoaded(walk) do Citizen.Wait(1) end
        SetPedMovementClipset(PlayerPedId(), walk, 0.2)
        RemoveAnimSet(walk)
        SetResourceKvp("0ranimmenuwalk", walk)
        SetResourceKvp("0ranimmenuwalkname", walkSet)
    elseif category == "placedemotes" then
        if DoesEntityExist(myClone) then return end
        if inVehicle then return end
        local hit, coords, entity = RayCastGamePlayCamera(Config.MaxDistanceForAnimPos)
        if hit and (IsEntityAVehicle(entity) or IsThisModelAHeli(entityModel) or IsThisModelAPlane(entityModel)) then
            return
        end
        if menuActive then
            SendNUIMessage({action = "menu", state = false})
            menuActive = false
        end
        SendNUIMessage({action = "openInfoMenu", state = true})
        myClone = ClonePed(PlayerPedId(), false, false, true)
        FreezeEntityPosition(myClone, true)
        SetEntityHeading(myClone, GetEntityHeading(PlayerPedId()))
        PlaceObjectOnGroundProperly(myClone)
        SetBlockingOfNonTemporaryEvents(myClone, true)
        SetEntityCollision(myClone, false, false)
        SetEntityAlpha(myClone, 200, false)
        if not loadAnim(animData[tableData.dict]) then return end
        local movementType = 1 -- Default movement type
        local animationDuration = -1
        TaskPlayAnim(myClone, animData[tableData.dict], animData[tableData.anim], 5.0, 5.0, animationDuration, movementType, 0, false, false, false)
        RemoveAnimDict(animData[tableData.dict])
        SetNuiFocus(true, false)
        SetNuiFocusKeepInput(true)
        positioningAnim = true
        local disableControlActions2 = {20, 36}
        local setAnim = true
        local myCoords = GetEntityCoords(PlayerPedId())
        myCoordsZ = myCoords.z
        local cloneCoordsM = GetEntityCoords(myClone)
        local cloneHeadingM = GetEntityHeading(myClone)
        while positioningAnim do
            for _, key in pairs(disableControlActions2) do
                DisableControlAction(0, key, true)
            end
            DisablePlayerFiring(PlayerId(), true)
            cloneCoords = GetEntityCoords(myClone)
            local hit, coords, entity = RayCastGamePlayCamera(Config.MaxDistanceForAnimPos)
            if hit and setAnim then
                SetEntityCoords(myClone, coords.x, coords.y, myCoordsZ)
            end
            if IsControlPressed(0, 20) or IsDisabledControlPressed(0, 20) then
                myCoordsZ = coords.z
            end
            if IsControlPressed(0, 14) then -- Rotate Left
                if IsControlPressed(0, 36) or IsDisabledControlPressed(0, 36) then
                    SetEntityHeading(myClone, GetEntityHeading(myClone) - 5)
                else
                    SetEntityHeading(myClone, GetEntityHeading(myClone) - 10)
                end
            end
            if IsControlPressed(0, 15) then -- Rotate Right
                if IsControlPressed(0, 36) or IsDisabledControlPressed(0, 36) then
                    SetEntityHeading(myClone, GetEntityHeading(myClone) + 5)
                else
                    SetEntityHeading(myClone, GetEntityHeading(myClone) + 10)
                end
            end
            if IsControlPressed(1, 27) then -- Up Arrow
                setAnim = false
                local distance = #(cloneCoords - myCoords)
                if Config.MaxDistanceForAnimPos >= Round(distance) then
                    local myClonePos = GetEntityCoords(myClone)
                    if IsControlPressed(0, 36) or IsDisabledControlPressed(0, 36) then
                        myCoordsZ = myCoordsZ + 0.001
                    else
                        myCoordsZ = myCoordsZ + 0.05
                    end
                    SetEntityCoords(myClone, myClonePos.x, myClonePos.y, myCoordsZ)
                else
                    SetEntityCoords(myClone, myCoords.x, myCoords.y, myCoordsZ)
                end
            end
            if IsControlPressed(1, 173) then -- Down Arrow
                setAnim = false
                local distance = #(cloneCoords - myCoords)
                if Config.MaxDistanceForAnimPos >= Round(distance) then
                    local myClonePos = GetEntityCoords(myClone)
                    if IsControlPressed(0, 36) or IsDisabledControlPressed(0, 36) then
                        myCoordsZ = myCoordsZ - 0.001
                    else
                        myCoordsZ = myCoordsZ - 0.05
                    end
                    SetEntityCoords(myClone, myClonePos.x, myClonePos.y, myCoordsZ)
                else
                    SetEntityCoords(myClone, myCoords.x, myCoords.y, myCoordsZ)
                end
            end
            if IsControlPressed(0, 38) then -- Confirm 
                SetNuiFocus(false, false)
                SetNuiFocusKeepInput(false)
                SendNUIMessage({action = "openInfoMenu", state = false})
                cloneCoords = GetEntityCoords(myClone)
                cloneHeading = GetEntityHeading(myClone)
                TaskGoStraightToCoord(PlayerPedId(), cloneCoords.x, cloneCoords.y, cloneCoords.z, 1.0, -1, cloneHeading, -1)
                DeletePed(myClone)
                positioningAnim = false
                lastPlayedAnimType = "posAnim"
                taskActive = true
            end
            if IsControlPressed(0, 322) then -- ESC
                setAnim = false
                SetNuiFocus(false, false)
                SetNuiFocusKeepInput(false)
                SendNUIMessage({action = "openInfoMenu", state = false})
                DeletePed(myClone)
                positioningAnim = false
                taskActive = false
            end
            setAnim = true
            Citizen.Wait(0)
        end
        Citizen.SetTimeout(7500, function()
            if taskActive then
                FreezeEntityPosition(PlayerPedId(), true)
                Citizen.Wait(250)
                SetEntityCollision(PlayerPedId(), false, false)
                SetEntityVisible(PlayerPedId(), false, 0)
                ClearPedTasks(PlayerPedId())
                ClearPedSecondaryTask(PlayerPedId())
                SetEntityCoordsNoOffset(PlayerPedId(), cloneCoords.x, cloneCoords.y, myCoordsZ + 1.0, true, true, true)
                SetEntityHeading(PlayerPedId(), cloneHeading)
                taskActive = false
                Citizen.Wait(500)
                SetEntityVisible(PlayerPedId(), true, 0)
            end
        end)
        while taskActive do
            Citizen.Wait(0)
            local myCoords = GetEntityCoords(PlayerPedId())
            local distance = #(myCoords - cloneCoords)
            if distance <= 1.5 then
                FreezeEntityPosition(PlayerPedId(), true)
                Citizen.Wait(250)
                SetEntityCollision(PlayerPedId(), false, false)
                SetEntityVisible(PlayerPedId(), false, 0)
                ClearPedTasks(PlayerPedId())
                ClearPedSecondaryTask(PlayerPedId())
                SetEntityCoordsNoOffset(PlayerPedId(), cloneCoords.x, cloneCoords.y, myCoordsZ + 1.0, true, true, true)
                SetEntityHeading(PlayerPedId(), cloneHeading)
                taskActive = false
                positioningAnim = false
                Citizen.Wait(500)
                SetEntityVisible(PlayerPedId(), true, 0)
                local movementType = 1 -- Default movement type
                local animationDuration = -1
                if not loadAnim(animData[tableData.dict]) then return end
                TaskPlayAnim(PlayerPedId(), animData[tableData.dict], animData[tableData.anim], 5.0, 5.0, animationDuration, movementType, 0, false, false, false)
                RemoveAnimDict(animData[tableData.dict])
                isInAnimation = true
                taskActive = false
                break
            end
        end
    elseif category == "syncedemotes" or category == "erpemotes" then
        if requestActive then return end
        if inVehicle then return end
        nearbyPlayers = GetPlayersInArea(GetEntityCoords(PlayerPedId()), 5.0)
        if next(nearbyPlayers) ~= nil and next(nearbyPlayers) then
            if menuActive then
                menuActive = false
                SetNuiFocusKeepInput(false)
                SetNuiFocus(false, false)
                SendNUIMessage({action = "menu", state = false})
            end
            requestActive = true
            Config.ShowTextUI(Lang:t("notifications.waiting_for_a_decision"), "ESC")
            animData.type = category
            animData.animNumber = animData1
            animData.targetAnimName = animData[5] or nil
            for _, id in pairs(nearbyPlayers) do
                Config.Create3DTextUIOnPlayer("0resmon-animmenu-request-players-" .. id, {
                    id = id,
                    displayDist = 5.0,
                    interactDist = 1.3,
                    enableKeyClick = true, -- If true when you near it and click key it will trigger the event that you write inside triggerData
                    keyNum = 38,
                    key = "E",
                    text = animData[1] .. "?",
                    theme = "green", -- or red
                    triggerData = {
                        triggerName = "0resmon-animmenu:sendAnimRequest:client",
                        args = {data = animData, id = id}
                    }
                })
            end
            Citizen.CreateThread(function()
                while true do
                    Citizen.Wait(0)
                    if IsControlPressed(0, 322) then
                        Config.Notify(Lang:t("notifications.request_cancelled"), 7500, "error")
                        requestActive = false
                        Config.HideTextUI()
                        for _, id in pairs(nearbyPlayers) do
                            Config.Delete3DTextUIOnPlayer("0resmon-animmenu-request-players-" .. id)
                        end
                        break
                    end
                end
            end)
            Citizen.SetTimeout(7500, function()
                if next(nearbyPlayers) ~= nil and next(nearbyPlayers) and requestActive then
                    Config.Notify(Lang:t("notifications.request_timed_out"), 7500, "error")
                    requestActive = false
                    Config.HideTextUI()
                    for _, id in pairs(nearbyPlayers) do
                        Config.Delete3DTextUIOnPlayer("0resmon-animmenu-request-players-" .. id)
                    end
                end
            end)
        else
            Config.Notify(Lang:t("notifications.no_players_nearby"), 7500, "error")
        end
    end
end

Citizen.CreateThread(function()
    RegisterCommand('emotecancel', function(source, args, raw) cancelEmote() end, false)
    if Config.EnableXtoCancel then
        RegisterKeyMapping("emotecancel", "Cancel current emote", "keyboard", Config.CancelEmoteKey)
    end
end)

local keyLoop = false
RegisterCommand('quickanim', function(source, args, raw)
    if isInAnimation then
        Config.Notify(Lang:t("notifications.already_playing_anim"), 7500, "error")
    else
        if not keyLoop then
            keyLoop = true
            Citizen.CreateThread(function()
                while keyLoop do
                    Citizen.Wait(0)
                    if IsControlPressed(0, 157) or IsDisabledControlPressed(0, 157) then -- 1
                        local anim = getQuickAnimOnSlot(1) 
                        if anim then
                            OnEmotePlay(anim.name, anim.category)
                        else
                            Config.Notify(Lang:t("notifications.quick_slot_empty", {slot = 1}), 7500, "error")
                        end
                        keyLoop = false
                        break
                    end
                    if IsControlPressed(0, 158) or IsDisabledControlPressed(0, 158) then -- 2
                        local anim = getQuickAnimOnSlot(2) 
                        if anim then
                            OnEmotePlay(anim.name, anim.category)
                        else
                            Config.Notify(Lang:t("notifications.quick_slot_empty", {slot = 2}), 7500, "error")
                        end
                        keyLoop = false
                        break
                    end
                    if IsControlPressed(0, 160) or IsDisabledControlPressed(0, 160) then -- 3
                        local anim = getQuickAnimOnSlot(3) 
                        if anim then
                            OnEmotePlay(anim.name, anim.category)
                        else
                            Config.Notify(Lang:t("notifications.quick_slot_empty", {slot = 3}), 7500, "error")
                        end
                        keyLoop = false
                        break
                    end
                    if IsControlPressed(0, 164) or IsDisabledControlPressed(0, 164) then -- 4
                        local anim = getQuickAnimOnSlot(4) 
                        if anim then
                            OnEmotePlay(anim.name, anim.category)
                        else
                            Config.Notify(Lang:t("notifications.quick_slot_empty", {slot = 4}), 7500, "error")
                        end
                        keyLoop = false
                        break
                    end
                    if IsControlPressed(0, 165) or IsDisabledControlPressed(0, 165) then -- 5
                        local anim = getQuickAnimOnSlot(5) 
                        if anim then
                            OnEmotePlay(anim.name, anim.category)
                        else
                            Config.Notify(Lang:t("notifications.quick_slot_empty", {slot = 5}), 7500, "error")
                        end
                        keyLoop = false
                        break
                    end
                    if IsControlPressed(0, 159) or IsDisabledControlPressed(0, 159) then -- 6
                        local anim = getQuickAnimOnSlot(6) 
                        if anim then
                            OnEmotePlay(anim.name, anim.category)
                        else
                            Config.Notify(Lang:t("notifications.quick_slot_empty", {slot = 6}), 7500, "error")
                        end
                        keyLoop = false
                        break
                    end
                    if IsControlPressed(0, 161) or IsDisabledControlPressed(0, 161) then -- 7
                        local anim = getQuickAnimOnSlot(7)
                        if anim then
                            OnEmotePlay(anim.name, anim.category)
                        else
                            Config.Notify(Lang:t("notifications.quick_slot_empty", {slot = 7}), 7500, "error")
                        end
                        keyLoop = false
                        break
                    end
                end
            end)
            Citizen.Wait(1000)
            keyLoop = false
        end
    end
end, false)
RegisterKeyMapping("quickanim", Lang:t("keybinds.play_quick_emote"), "keyboard", Config.QuickPrimaryKey)

-- for i = 1, 7 do
--     RegisterCommand('quickslot' .. i, function(source, args, raw) local anim = getQuickAnimOnSlot(i) OnEmotePlay(anim.name, anim.category) end, false)
--     RegisterKeyMapping('quickslot' .. i, "Use quick animation in slot " .. i, "keyboard", i)
-- end

function getQuickAnimOnSlot(slot)
    local quickAnimations = {}
    local kvp2 = GetResourceKvpString('0ranimmenuquicks')
    if kvp2 then
        quickAnimations = json.decode(kvp2)
        for k, v in pairs(quickAnimations) do
            if tonumber(v.slot) == slot then
                return quickAnimations[k]
            end
        end
    end
    return nil
end

RegisterNetEvent('animations:client:EmoteCommandStart', function(data)
    if type(data) == "string" then
        EmoteCommandStart(nil, {data, nil}, nil)
    else
        EmoteCommandStart(nil, {data[1], nil}, nil)
    end
end)

exports("EmoteCommandStart", function(emoteName) EmoteCommandStart(nil, {emoteName, nil}, nil) end)
exports("EmoteCancel", cancelEmote("0resmon"))
--exports("CanCancelEmote", function(State) CanCancel = State == true end)
exports('IsPlayerInAnim', function() return isInAnimation end)

Citizen.CreateThread(function()
    -- Pointing
    if Config.PointingEnabled then
        RegisterCommand('pointanim', function(source, args, raw) pointAnim() end, false)
        RegisterKeyMapping("pointanim", Lang:t("keybinds.toggle_point_description"), "keyboard", Config.PointingKeybind)
        local pointAnimActive = false
        function startPointing()
            local ped = PlayerPedId()
            RequestAnimDict("anim@mp_point")
            while not HasAnimDictLoaded("anim@mp_point") do
                Wait(10)
            end
            SetPedCurrentWeaponVisible(ped, 0, true, true, true)
            SetPedConfigFlag(ped, 36, 1)
            TaskMoveNetworkByName(ped, 'task_mp_pointing', 0.5, false, 'anim@mp_point', 24)
            RemoveAnimDict("anim@mp_point")
        end
        function stopPointing()
            local ped = PlayerPedId()
            if not IsPedInjured(ped) then
                RequestTaskMoveNetworkStateTransition(ped, 'Stop')
                ClearPedSecondaryTask(ped)
                if not IsPedInAnyVehicle(ped, 1) then
                    SetPedCurrentWeaponVisible(ped, 1, true, true, true)
                end
                SetPedConfigFlag(ped, 36, false)
            end
        end
        function pointAnim()
            local ped = PlayerPedId()
            if not IsPedInAnyVehicle(ped, false) then
                pointAnimActive = not pointAnimActive
                if pointAnimActive then startPointing() else stopPointing() end
                while pointAnimActive do
                    local camPitch = GetGameplayCamRelativePitch()
                    local camHeading = GetGameplayCamRelativeHeading()
                    local cosCamHeading = Cos(camHeading)
                    local sinCamHeading = Sin(camHeading)
                    camPitch = math.max(-70.0, math.min(42.0, camPitch))
                    camPitch = (camPitch + 70.0) / 112.0
                    camHeading = math.max(-180.0, math.min(180.0, camHeading))
                    camHeading = (camHeading + 180.0) / 360.0
                    local coords = GetOffsetFromEntityInWorldCoords(ped, (cosCamHeading * -0.2) - (sinCamHeading * (0.4 * camHeading + 0.3)), (sinCamHeading * -0.2) + (cosCamHeading * (0.4 * camHeading + 0.3)), 0.6)
                    local ray = StartShapeTestCapsule(coords.x, coords.y, coords.z - 0.2, coords.x, coords.y, coords.z + 0.2, 0.4, 95, ped, 7)
                    local _, blocked = GetRaycastResult(ray)
                    SetTaskMoveNetworkSignalFloat(ped, "Pitch", camPitch)
                    SetTaskMoveNetworkSignalFloat(ped, "Heading", camHeading * -1.0 + 1.0)
                    SetTaskMoveNetworkSignalBool(ped, "isBlocked", blocked)
                    SetTaskMoveNetworkSignalBool(ped, "isFirstPerson", GetCamViewModeForContext(GetCamActiveViewModeContext()) == 4)
                    Wait(0)
                end
            end
        end
    end
    -- Crouch
    if Config.CrouchingEnabled then
        local isCrouching = false
        function loadAnimSet(anim)
            if HasAnimSetLoaded(anim) then return end
            RequestAnimSet(anim)
            while not HasAnimSetLoaded(anim) do
                Wait(10)
            end
        end
        function resetAnimSet()
            local ped = PlayerPedId()
            ResetPedMovementClipset(ped, 1.0)
            ResetPedWeaponMovementClipset(ped)
            ResetPedStrafeClipset(ped)
            local walk = GetResourceKvpString("0ranimmenuwalk")
            if walk ~= nil then
                walkSet = walk
            end
            if walkSet ~= 'default' then
                loadAnimSet(walkSet)
                SetPedMovementClipset(ped, walkSet, 1.0)
                RemoveAnimSet(walkSet)
            end
        end
        function crouchAnim()
            if isCrouching then
                ClearPedTasks(ped)
                resetAnimSet()
                SetPedStealthMovement(ped, false, 'DEFAULT_ACTION')
                isCrouching = false
            else
                ClearPedTasks(ped)
                loadAnimSet('move_ped_crouched')
                SetPedMovementClipset(ped, 'move_ped_crouched', 1.0)
                SetPedStrafeClipset(ped, 'move_ped_crouched_strafing')
                isCrouching = true
            end
        end

        RegisterKeyMapping('crouch', 'Crouch', 'keyboard', 'LCONTROL')
        RegisterCommand('crouch', function()
            local ped = PlayerPedId()
            DisableControlAction(0, 36, true)
            if not IsPedSittingInAnyVehicle(ped) and not IsPedFalling(ped) and not IsPedSwimming(ped) and not IsPedSwimmingUnderWater(ped) and not IsPauseMenuActive() then
                sleep = 0
                if isCrouching then
                    ClearPedTasks(ped)
                    resetAnimSet()
                    SetPedStealthMovement(ped, false, 'DEFAULT_ACTION')
                    isCrouching = false
                else
                    ClearPedTasks(ped)
                    loadAnimSet('move_ped_crouched')
                    SetPedMovementClipset(ped, 'move_ped_crouched', 1.0)
                    SetPedStrafeClipset(ped, 'move_ped_crouched_strafing')
                    isCrouching = true
                end
            end
        end, false)
        -- Citizen.CreateThread(function()
        --     local sleep
        --     while true do
        --         sleep = 1000
        --         local ped = PlayerPedId()
        --         DisableControlAction(0, 36, true)
        --         if not IsPedSittingInAnyVehicle(ped) and not IsPedFalling(ped) and not IsPedSwimming(ped) and not IsPedSwimmingUnderWater(ped) and not IsPauseMenuActive() then
        --             sleep = 0
        --             if IsDisabledControlJustReleased(2, 36) then
        --                 if isCrouching then
        --                     ClearPedTasks(ped)
        --                     resetAnimSet()
        --                     SetPedStealthMovement(ped, false, 'DEFAULT_ACTION')
        --                     isCrouching = false
        --                 else
        --                     ClearPedTasks(ped)
        --                     loadAnimSet('move_ped_crouched')
        --                     SetPedMovementClipset(ped, 'move_ped_crouched', 1.0)
        --                     SetPedStrafeClipset(ped, 'move_ped_crouched_strafing')
        --                     isCrouching = true
        --                 end
        --             end
        --         end
        --         Citizen.Wait(0)
        --     end
        -- end)
    end
    -- Ragdoll
    if Config.RagdollEnabled then
        local ragdoled = false
        RegisterCommand('ragdoll', function(source, args, raw)
            if not IsEntityDead(PlayerPedId()) and not IsPedInAnyVehicle(PlayerPedId(), false) then 
                ragdoled = not ragdoled
                while ragdoled do 
                    Citizen.Wait(0)
                    if ragdoled then
                        SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, 0, 0, 0)
                    end
                end      
            end
        end, false)
        RegisterKeyMapping("ragdoll", Lang:t("keybinds.ragdoll_description"), "keyboard", Config.RagdollKeybind)
    end
end)

RegisterNetEvent('0resmon-animmenu:copyCode:client', function(code)
    SendNUIMessage({action = "copyCode", code = code})
end)

RegisterCommand('walks', function()
    if menuReady then
        if not setDataState then
            SendNUIMessage({action = "setData", sender = "0resmon", categories = categories, animations = data, favs = favoriteAnimations, quicks = quickAnimations, pKey = Config.QuickPrimaryKey})
            while not setDataState do Citizen.Wait(0) end
        end
        if requestActive then return end
        if DoesEntityExist(myClone) then return end
        local translations = {}
        for k in pairs(Lang.fallback and Lang.fallback.phrases or Lang.phrases) do
            if k:sub(0, ('menu.'):len()) then
                translations[k:sub(('menu.'):len() + 1)] = Lang:t(k)
            end
        end
        menuActive = true
        SetNuiFocus(menuActive, menuActive)
        if Config.AllowMovement then
            SetNuiFocusKeepInput(menuActive)
        end
        SendNUIMessage({action = "menu", state = menuActive, translations = translations, menu = "walks", menuNum = tablelength(RES.Walks)})
    end
end)

RegisterCommand('expressions', function()
    if menuReady then
        if not setDataState then
            SendNUIMessage({action = "setData", sender = "0resmon", categories = categories, animations = data, favs = favoriteAnimations, quicks = quickAnimations, pKey = Config.QuickPrimaryKey})
            while not setDataState do Citizen.Wait(0) end
        end
        if requestActive then return end
        if DoesEntityExist(myClone) then return end
        local translations = {}
        for k in pairs(Lang.fallback and Lang.fallback.phrases or Lang.phrases) do
            if k:sub(0, ('menu.'):len()) then
                translations[k:sub(('menu.'):len() + 1)] = Lang:t(k)
            end
        end
        menuActive = true
        SetNuiFocus(menuActive, menuActive)
        if Config.AllowMovement then
            SetNuiFocusKeepInput(menuActive)
        end
        SendNUIMessage({action = "menu", state = menuActive, translations = translations, menu = "expressions", menuNum = tablelength(RES.Expressions)})
    end
end)

function loadAnim(dict)
    if not DoesAnimDictExist(dict) then return false end
    while not HasAnimDictLoaded(dict) do RequestAnimDict(dict) Citizen.Wait(10) end
    return true
end

function RunAnimationThread()
    local playerId = PlayerPedId()
    if AnimationThreadStatus then return end
    AnimationThreadStatus = true
    CreateThread(function()
        local sleep
        while AnimationThreadStatus and (isInAnimation or PtfxPrompt) do
            sleep = 500
            if isInAnimation then
                sleep = 0
                if IsPlayerAiming(playerId) then
                    EmoteCancel()
                end
                DisableControlAction(2, 140, true)
                DisableControlAction(2, 141, true)
                DisableControlAction(2, 142, true)
            end
            if PtfxPrompt then
                sleep = 0
                if not PtfxNotif then
                    SimpleNotify(PtfxInfo)
                    PtfxNotif = true
                end
                if IsControlPressed(0, 47) then
                    PtfxStart()
                    Citizen.Wait(PtfxWait)
                    if PtfxCanHold then
                        while IsControlPressed(0, 47) and isInAnimation and AnimationThreadStatus do
                            Citizen.Wait(5)
                        end
                    end
                    PtfxStop()
                end
            end
            Citizen.Wait(sleep)
        end
    end)
end

function IsPlayerAiming(player)
    return (IsPlayerFreeAiming(player) or IsAimCamActive() or IsAimCamThirdPersonActive()) and tonumber(GetSelectedPedWeapon(player)) ~= tonumber(GetHashKey("WEAPON_UNARMED"))
end

function PtfxThis(asset)
    while not HasNamedPtfxAssetLoaded(asset) do
        RequestNamedPtfxAsset(asset)
        Wait(10)
    end
    UseParticleFxAsset(asset)
end

function PtfxStart()
    LocalPlayer.state:set('ptfx', true, true)
end

function PtfxStop()
    LocalPlayer.state:set('ptfx', false, true)
end

AddStateBagChangeHandler('ptfx', nil, function(bagName, key, value, _unused, replicated)
    local plyId = tonumber(bagName:gsub('player:', ''), 10)
    if (PlayerParticles[plyId] and value) or (not PlayerParticles[plyId] and not value) then return end
    local ply = GetPlayerFromServerId(plyId)
    if ply == 0 then return end
    local plyPed = GetPlayerPed(ply)
    if not DoesEntityExist(plyPed) then return end
    local stateBag = Player(plyId).state
    if value then
        local asset = stateBag.ptfxAsset
        local name = stateBag.ptfxName
        local offset = stateBag.ptfxOffset
        local rot = stateBag.ptfxRot
        local boneIndex = stateBag.ptfxBone and GetPedBoneIndex(plyPed, stateBag.ptfxBone) or GetEntityBoneIndexByName(name, "VFX")
        local scale = stateBag.ptfxScale or 1
        local color = stateBag.ptfxColor
        local propNet = stateBag.ptfxPropNet
        local entityTarget = plyPed
        -- Only do for valid obj
        if propNet then
            local propObj = NetToObj(propNet)
            if DoesEntityExist(propObj) then
                entityTarget = propObj
            end
        end
        PtfxThis(asset)
        PlayerParticles[plyId] = StartNetworkedParticleFxLoopedOnEntityBone(name, entityTarget, offset.x, offset.y, offset.z, rot.x, rot.y, rot.z, boneIndex, scale + 0.0, false, false, false)
        if color then
            if color[1] and type(color[1]) == 'table' then
                local randomIndex = math.random(1, #color)
                color = color[randomIndex]
            end
            SetParticleFxLoopedAlpha(PlayerParticles[plyId], color.A)
            SetParticleFxLoopedColour(PlayerParticles[plyId], color.R / 255, color.G / 255, color.B / 255, false)
        end
    else
        StopParticleFxLooped(PlayerParticles[plyId], false)
        RemoveNamedPtfxAsset(stateBag.ptfxAsset)
        PlayerParticles[plyId] = nil
    end
end)

function SimpleNotify(message)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(message)
    EndTextCommandThefeedPostTicker(0, 1)
end

function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

RegisterNetEvent('0r-animmenu:getAnimationList:client', function()
    TriggerEvent('0r-anim-recorder:setAnimationList:client', RES)
end)
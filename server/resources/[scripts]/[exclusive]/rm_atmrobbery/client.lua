local propList = {}
local effectList = {}
local inRobbery = false
local hookProp = nil
local LaptopAnimation = {
    ['objects'] = {
        'hei_p_m_bag_var22_arm_s',
        'hei_prop_hst_laptop',
        'hei_prop_heist_card_hack_02'
    },
    ['animations'] = {
        {'hack_enter', 'hack_enter_bag', 'hack_enter_laptop', 'hack_enter_card'},
        {'hack_loop', 'hack_loop_bag', 'hack_loop_laptop', 'hack_loop_card'},
        {'hack_exit', 'hack_exit_bag', 'hack_exit_laptop', 'hack_exit_card'}
    },
    ['scenes'] = {},
    ['sceneObjects'] = {}
}

local LaserDrill = {
    ['animations'] = {
        { 'intro',                   'bag_intro',                'intro_drill_bit' },
        { 'drill_straight_start',    'bag_drill_straight_start', 'drill_straight_start_drill_bit' },
        { 'drill_straight_end_idle', 'bag_drill_straight_idle',  'drill_straight_idle_drill_bit' },
        { 'drill_straight_fail',     'bag_drill_straight_fail',  'drill_straight_fail_drill_bit' },
        { 'drill_straight_end',      'bag_drill_straight_end',   'drill_straight_end_drill_bit' },
        { 'exit',                    'bag_exit',                 'exit_drill_bit' },
    },
    ['scenes'] = {},
}

local northZone = PolyZone:Create({
    vector2(-3000.0, 3000.0),
    vector2(3000.0, 3000.0),
    vector2(3000.0, 1000.0),
    vector2(-3000.0, 1000.0)
}, {
    name="north_zone",
    minZ = 0.0,
    maxZ = 100.0
})

useRope = function(propName)
    local propOrder = Config.robbery.atmModels[propName]
    if not propOrder then
        return
    end

    local data = vSERVER.hasItem({ itemName = Config.robbery.itemList[1].itemName })
    if not data then
        return 
    end

    propOrder = propOrder.order

    local playerPed = PlayerPedId()
    local pCoords = GetEntityCoords(playerPed)
    local dummyObj = GetClosestObjectOfType(pCoords, 2.0, propName, 0, 0, 0)

    if not DoesEntityExist(dummyObj) then
        return
    end

    setNetworkObj(dummyObj)

    inRobbery = true

    if Config.robbery.itemList[1].shouldRemove then
        TriggerServerEvent("atmrobbery:server:removeItem", Config.robbery.itemList[1].itemName)
    end

    TriggerServerEvent('atmrobbery:server:cooldown', ObjToNet(dummyObj))

    local propCoords = { GetEntityCoords(dummyObj), GetEntityRotation(dummyObj), GetEntityHeading(dummyObj) }
    madCore.policeAlert(propCoords[1])

    SetEntityCoords(dummyObj, propCoords[1].xy, propCoords[1].z - 20)

    local atmProp, atmConsole = nil, nil

    if propOrder == 3 then
        madCore.requestModel('loq_atm_02_des')
        madCore.requestModel('loq_atm_02_console')
        atmProp = CreateObject('loq_atm_02_des', propCoords[1].xy, propCoords[1].z + 0.34, true, true, true)
        atmConsole = CreateObject('loq_atm_02_console', propCoords[1].xy, propCoords[1].z + 0.65, true, true, true)
        SetEntityHeading(atmProp, propCoords[3])
        SetEntityRotation(atmProp, propCoords[2])
        SetEntityHeading(atmConsole, propCoords[3])
        SetEntityRotation(atmConsole, propCoords[2])
        FreezeEntityPosition(atmProp, true)
        FreezeEntityPosition(atmConsole, true)
    elseif propOrder == 4 then
        madCore.requestModel('loq_atm_03_des')
        madCore.requestModel('loq_atm_03_console')
        atmProp = CreateObject('loq_atm_03_des', propCoords[1].xy, propCoords[1].z + 0.34, true, true, true)
        atmConsole = CreateObject('loq_atm_03_console', propCoords[1].xy, propCoords[1].z + 0.65, true, true, true)
        SetEntityHeading(atmProp, propCoords[3])
        SetEntityRotation(atmProp, propCoords[2])
        SetEntityHeading(atmConsole, propCoords[3])
        SetEntityRotation(atmConsole, propCoords[2])
        FreezeEntityPosition(atmProp, true)
        FreezeEntityPosition(atmConsole, true)
    elseif propOrder == 1 then
        madCore.requestModel('loq_fleeca_atm_des')
        madCore.requestModel('loq_fleeca_atm_console')
        atmProp = CreateObject('loq_fleeca_atm_des', propCoords[1].xy, propCoords[1].z + 0.34, true, true, true)
        atmConsole = CreateObject('loq_fleeca_atm_console', propCoords[1].xy, propCoords[1].z + 0.65, true, true, true)
        SetEntityHeading(atmProp, propCoords[3])
        SetEntityRotation(atmProp, propCoords[2])
        SetEntityHeading(atmConsole, propCoords[3])
        SetEntityRotation(atmConsole, propCoords[2])
        FreezeEntityPosition(atmProp, true)
        FreezeEntityPosition(atmConsole, true)
    end

    local animDict = 'anim@gangops@facility@servers@'
    madCore.requestAnim(animDict)

    TaskTurnPedToFaceEntity(playerPed, atmConsole, 1000)
    TaskPlayAnim(playerPed, animDict, 'hotwire', 8.0, 8.0, -1, 49, 0, false, false, false)
    FreezeEntityPosition(playerPed, true)
    Citizen.Wait(3500)
    FreezeEntityPosition(playerPed, false)
    ClearPedTasks(playerPed)

    if DoesEntityExist(hookProp) then
        DeleteEntity(hookProp)
    end

    madCore.requestModel('prop_rope_hook_01')
    hookProp = CreateObjectNoOffset('prop_rope_hook_01', GetEntityCoords(playerPed), true, false, false)
    while not DoesEntityExist(hookProp) or not NetworkDoesNetworkIdExist(NetworkGetNetworkIdFromEntity(hookProp)) do Citizen.Wait(10) end
    AttachEntityToEntity(hookProp, playerPed, GetPedBoneIndex(playerPed, 57005), 0.1, 0.0, 0.0, -250.0, -10.0, -30.0, true, true, false, false, 1, true)

    Citizen.SetTimeout(250, function()
        TriggerServerEvent('atmrobbery:server:useRope', NetworkGetNetworkIdFromEntity(atmConsole), NetworkGetNetworkIdFromEntity(hookProp))
    end)

    local attached = false
    local atmNetId = NetworkGetNetworkIdFromEntity(atmConsole)
    local attachedVehicle = nil
    local attachCount = 0
    ShowNotification(madCore.getPhrase('attach_vehicle'))
    while true do
        local playerPed = PlayerPedId()
        local pCoords = GetEntityCoords(playerPed)
        local vehicle = madCore.getClosestVehicle(5.0)
        if DoesEntityExist(vehicle) then
            local vehCoords = GetEntityCoords(vehicle)
            local dst = #(pCoords - vehCoords)
            if dst <= 3 then
                if IsControlJustPressed(0, 38) and not attached then
                    local animDict = 'anim@gangops@facility@servers@'
                    madCore.requestAnim(animDict)
                    TaskTurnPedToFaceEntity(playerPed, vehicle, 1000)
                    TaskPlayAnim(playerPed, animDict, 'hotwire', 8.0, 8.0, -1, 49, 0, false, false, false)
                    FreezeEntityPosition(playerPed, true)
                    Citizen.Wait(3500)
                    FreezeEntityPosition(playerPed, false)
                    ClearPedTasks(playerPed)
                    attached = true
                    attachedVehicle = vehicle
                    if DoesEntityExist(hookProp) then
                        DeleteEntity(hookProp)
                    end
                    TriggerServerEvent('atmrobbery:server:attachVehicle', VehToNet(vehicle), NetworkGetNetworkIdFromEntity(atmConsole))
                end
            end
        end
        if attached then
            if DoesEntityExist(attachedVehicle) then
                local currentRPM = GetVehicleCurrentRpm(attachedVehicle)
                if not IsVehicleSeatFree(attachedVehicle, -1) and currentRPM > 0.4 then
                    attachCount = attachCount + 0.1
                    if attachCount >= 100.0 then
                        FreezeEntityPosition(atmConsole, false)
                        SetObjectPhysicsParams(atmConsole, 170.0, -1.0, 30.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0)
                        break
                    end
                end
            end
        end
        Citizen.Wait(0)
    end
    inRobbery = false
end

useDrill = function(propName)
    local data = vSERVER.hasItem({ itemName = Config.robbery.itemList[3].itemName })
    if not data then
        return
    end

    local playerPed = PlayerPedId()
    local pCoords = GetEntityCoords(playerPed)
    local dummyObj = GetClosestObjectOfType(pCoords, 2.0, propName, 0, 0, 0)

    if not DoesEntityExist(dummyObj) then
        return
    end

    setNetworkObj(dummyObj)

    madCore.policeAlert(GetEntityCoords(dummyObj))

    if Config.robbery.itemList[3].shouldRemove then
        TriggerServerEvent("atmrobbery:server:removeItem", Config.robbery.itemList[3].itemName)
    end

    inRobbery = true
    TriggerServerEvent('atmrobbery:server:cooldown', ObjToNet(dummyObj))

    local pedRotation = GetEntityRotation(playerPed)
    local animDict = 'anim_heist@hs3f@ig9_vault_drill@laser_drill@'
    madCore.requestAnim(animDict)

    local bagModel = 'hei_p_m_bag_var22_arm_s'
    local laserDrillModel = 'ch_prop_laserdrill_01a'
    madCore.requestModel(bagModel)
    madCore.requestModel(laserDrillModel)

    local cam = CreateCam('DEFAULT_ANIMATED_CAMERA', true)
    SetCamActive(cam, true)
    RenderScriptCams(true, 0, 3000, 1, 0)

    local bag = CreateObject(bagModel, pCoords, 1, 0, 0)
    local laserDrill = CreateObject(laserDrillModel, pCoords, 1, 0, 0)

    local atmPosition, atmRotation = GetOffsetFromEntityInWorldCoords(dummyObj, 0.0, 0.0, 1.2), GetEntityRotation(dummyObj)

    for i = 1, #LaserDrill['animations'] do
        LaserDrill['scenes'][i] = NetworkCreateSynchronisedScene(atmPosition, atmRotation, 2, true, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(playerPed, LaserDrill['scenes'][i], animDict, LaserDrill['animations'][i][1], 4.0, -4.0, 1033, 0, 1000.0, 0)
        NetworkAddEntityToSynchronisedScene(bag, LaserDrill['scenes'][i], animDict, LaserDrill['animations'][i][2], 1.0, -1.0, 1148846080)
        NetworkAddEntityToSynchronisedScene(laserDrill, LaserDrill['scenes'][i], animDict, LaserDrill['animations'][i][3], 1.0, -1.0, 1148846080)
    end

    NetworkStartSynchronisedScene(LaserDrill['scenes'][1])
    PlayCamAnim(cam, 'intro_cam', animDict, atmPosition, atmRotation, 0, 2)
    Wait(GetAnimDuration(animDict, 'intro') * 1000)

    NetworkStartSynchronisedScene(LaserDrill['scenes'][2])
    PlayCamAnim(cam, 'drill_straight_start_cam', animDict, atmPosition, atmRotation, 0, 2)
    Wait(GetAnimDuration(animDict, 'drill_straight_start') * 1000)

    NetworkStartSynchronisedScene(LaserDrill['scenes'][3])
    PlayCamAnim(cam, 'drill_straight_idle_cam', animDict, atmPosition, atmRotation, 0, 2)
    Drilling.Type = 'VAULT_LASER'
    TriggerServerEvent('atmrobbery:server:ptfx', NetworkGetNetworkIdFromEntity(laserDrill), 'drill')
    local soundId = GetSoundId()
    PlaySoundFromEntity(soundId, "Drill", laserDrill, "DLC_HEIST_FLEECA_SOUNDSET", 1, 0)
    Drilling.Start(function(status)
        if status then
            StopSound(soundId)
            NetworkStartSynchronisedScene(LaserDrill['scenes'][5])
            PlayCamAnim(cam, 'drill_straight_end_cam', animDict, atmPosition, atmRotation, 0, 2)
            Wait(GetAnimDuration(animDict, 'drill_straight_end') * 1000)
            NetworkStartSynchronisedScene(LaserDrill['scenes'][6])
            PlayCamAnim(cam, 'exit_cam', animDict, atmPosition, atmRotation, 0, 2)
            Wait(GetAnimDuration(animDict, 'exit') * 1000)
            TriggerServerEvent('atmrobbery:server:ptfx', NetworkGetNetworkIdFromEntity(laserDrill))
            RenderScriptCams(false, false, 0, 1, 0)
            DestroyCam(cam, false)
            ClearPedTasks(playerPed)
            DeleteObject(bag)
            DeleteObject(laserDrill)
            inRobbery = false
            throwMoney(dummyObj, 'drill')
        else
            StopSound(soundId)
            NetworkStartSynchronisedScene(LaserDrill['scenes'][4])
            PlayCamAnim(cam, 'drill_straight_fail_cam', animDict, atmPosition, atmRotation, 0, 2)
            Wait(GetAnimDuration(animDict, 'drill_straight_fail') * 1000 - 1500)
            TriggerServerEvent('atmrobbery:server:ptfx', NetworkGetNetworkIdFromEntity(laserDrill))
            RenderScriptCams(false, false, 0, 1, 0)
            DestroyCam(cam, false)
            ClearPedTasks(playerPed)
            DeleteObject(bag)
            DeleteObject(laserDrill)
            inRobbery = false
        end
    end)
end

useHackUSB = function(propName)
    local data = vSERVER.hasItem({ itemName = Config.robbery.itemList[2].itemName })
    if not data then
        return 
    end

    local playerPed = PlayerPedId()
    local pCoords, pRotation = GetEntityCoords(playerPed), GetEntityRotation(playerPed)
    local dummyObj = GetClosestObjectOfType(pCoords, 2.0, propName, 0, 0, 0)

    if not DoesEntityExist(dummyObj) then
        return
    end

    if Config.robbery.itemList[2].shouldRemove then
        TriggerServerEvent("atmrobbery:server:removeItem", Config.robbery.itemList[2].itemName)
    end

    inRobbery = true
    setNetworkObj(dummyObj)
    madCore.policeAlert(GetEntityCoords(dummyObj))
    TriggerServerEvent('atmrobbery:server:cooldown', ObjToNet(dummyObj))

    local animDict = 'anim@heists@ornate_bank@hack'

    madCore.requestAnim(animDict)
    madCore.requestModel('hei_p_m_bag_var22_arm_s')
    madCore.requestModel('hei_prop_hst_laptop')
    local bag = CreateObject('hei_p_m_bag_var22_arm_s', pCoords, 1, 1, 0)
    local laptop = CreateObject('hei_prop_hst_laptop', pCoords, 1, 1, 0)

    SetEntityCollision(bag, false, false)

    local scenePos = GetOffsetFromEntityInWorldCoords(laptop, 0.55, 1.0, 0.41)
    local sceneRot = GetEntityRotation(dummyObj)

    for i = 1, #LaptopAnimation['animations'] do
        LaptopAnimation['scenes'][i] = NetworkCreateSynchronisedScene(scenePos, sceneRot, 2, true, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(playerPed, LaptopAnimation['scenes'][i], animDict, LaptopAnimation['animations'][i][1], 1.5, -4.0, 1, 16, 1148846080, 0)
        NetworkAddEntityToSynchronisedScene(bag, LaptopAnimation['scenes'][i], animDict, LaptopAnimation['animations'][i][2], 4.0, -8.0, 1)
        NetworkAddEntityToSynchronisedScene(laptop, LaptopAnimation['scenes'][i], animDict, LaptopAnimation['animations'][i][3], 4.0, -8.0, 1)
    end

    NetworkStartSynchronisedScene(LaptopAnimation['scenes'][1])
    Wait(GetAnimDuration(animDict, 'hack_enter') * 1000)
    NetworkStartSynchronisedScene(LaptopAnimation['scenes'][2])
    StartHack(function(status)
        NetworkStartSynchronisedScene(LaptopAnimation['scenes'][3])
        Wait(GetAnimDuration(animDict, 'hack_exit') * 1000)
        DeleteEntity(bag)
        DeleteEntity(laptop)
        ClearPedTasks(playerPed)
        inRobbery = false
        if status then
            return throwMoney(dummyObj, 'hackUsb')
        else
            return TriggerServerEvent('atmrobbery:server:removecd', ObjToNet(dummyObj))
        end
    end)
end

AddTimerBar = function(time, text, cb)
    RequestStreamedTextureDict('timerbars', true)
    while not HasStreamedTextureDictLoaded('timerbars') do
        Citizen.Wait(50)
    end
    timer = true
    percent = 1700
    width = 0.005
    w = width * (percent / 100)
    x = (0.95 - (width * (percent / 100)) / 2) - width / 2
    while timer do
        percent = percent - (1700 / (time * 100))
        width = 0.005
        w = width * (percent / 100)
        x = (0.91 - (width * (percent / 100)) / 2) - width / 2
        DrawSprite('TimerBars', 'ALL_BLACK_bg', 0.95, 0.95, 0.15, 0.0305, 0.0, 255, 255, 255, 180)
        DrawRect(0.95, 0.95, 0.085, 0.0109, 100, 0, 0, 180)
        DrawRect(x + w, 0.95, w, 0.0109, 150, 0, 0, 255)
        SetTextColour(255, 255, 255, 180)
        SetTextFont(0)
        SetTextScale(0.3, 0.3)
        SetTextCentre(true)
        SetTextEntry('STRING')
        AddTextComponentString(text)
        DrawText(0.878, 0.938)
        if percent <= 0 then
            cb(true)
            break
        end
        Wait(0)
    end
    SetStreamedTextureDictAsNoLongerNeeded('timerbars')
end

setNetworkObj = function(entity)
    if not NetworkGetEntityIsNetworked(entity) then
        while not NetworkGetEntityIsNetworked(entity) do
            NetworkRegisterEntityAsNetworked(entity)
            Citizen.Wait(10)
        end
    end
end

useBomb = function(propName)
    local data = vSERVER.hasItem({ itemName = Config.robbery.itemList[4].itemName })
    if not data then
        return 
    end

    local playerPed = PlayerPedId()
    local pCoords, pRotation = GetEntityCoords(playerPed), GetEntityRotation(playerPed)
    local dummyObj = GetClosestObjectOfType(pCoords, 2.0, propName, 0, 0, 0)

    if not DoesEntityExist(dummyObj) then
        return
    end

    if Config.robbery.itemList[4].shouldRemove then
        TriggerServerEvent("atmrobbery:server:removeItem", Config.robbery.itemList[4].itemName)
    end

    inRobbery = true

    setNetworkObj(dummyObj)
    madCore.policeAlert(GetEntityCoords(dummyObj))
    TriggerServerEvent('atmrobbery:server:cooldown', ObjToNet(dummyObj))

    local animDict = 'anim@scripted@heist@ig11_bomb_plant@male@'
    madCore.requestAnim(animDict)
    madCore.requestModel('hei_p_m_bag_var22_arm_s')
    madCore.requestModel('h4_prop_h4_ld_bomb_01a')

    local bag = CreateObject(`hei_p_m_bag_var22_arm_s`, pCoords, 1, 1, 0)
    local bomb = CreateObject(`h4_prop_h4_ld_bomb_01a`, pCoords, 1, 1, 0)

    local scenePos = GetOffsetFromEntityInWorldCoords(dummyObj, 0.0, -0.2, 1.70)
    local sceneRot = GetEntityRotation(dummyObj) + vector3(0.0, 0.0, 0.0)

    local scene = NetworkCreateSynchronisedScene(scenePos, sceneRot, 2, false, false, 1065353216, 0, 1.0)
    NetworkAddPedToSynchronisedScene(playerPed, scene, animDict, 'enter', 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, scene, animDict, 'enter_bag', 4.0, -8.0, 1)
    NetworkAddEntityToSynchronisedScene(bomb, scene, animDict, 'enter_bomb', 4.0, -8.0, 1)

    NetworkStartSynchronisedScene(scene)
    Citizen.Wait(GetAnimDuration(animDict, 'enter') * 1000 - 500)
    DeleteObject(bag)
    FreezeEntityPosition(bomb, true)
    ClearPedTasks(playerPed)
    TriggerEvent("Progress","Explodindo",20000)
    SetTimeout(20000,function()

        if #(GetEntityCoords(playerPed) - GetEntityCoords(dummyObj)) >= 20.0 then 
            TriggerEvent("Notify","vermelho","Erro ao Roubar o Caixa Eletronico, você estava muito longe")
            SetEntityVisible(bomb, false, false)
            inRobbery = false
            DeleteObject(bomb) 
            return
         end
        
        SetEntityVisible(bomb, false, false)
        TriggerServerEvent('atmrobbery:server:ptfx', NetworkGetNetworkIdFromEntity(bomb), 'bomb')
        inRobbery = false
        throwMoney(dummyObj, 'bomb')
        SetTimeout(250, function()
            DeleteObject(bomb)
        end)
    end)
end

throwMoney = function(atmObject, typ)
    if not Config.robbery.throwMoney then
        return TriggerServerEvent('atmrobbery:server:giveMoney', typ)
    end
    
    local moneyStacks = {}
    local moneyModel = 'prop_anim_cash_pile_01'
    madCore.requestModel(moneyModel)

    local atmOffest = GetOffsetFromEntityInWorldCoords(atmObject, 0.0, -0.2, 0.5)
    
    for i = 1, Config.robbery.throwCount do
        math.randomseed(GetGameTimer())
        local dummy = CreateObject(moneyModel, atmOffest, false, false, false)
        while not DoesEntityExist(dummy) do
            Citizen.Wait(100)
        end
        local posX = math.random(-2, 2)
        local posY = math.random(-2, 2)
        SetEntityHasGravity(dummy, true)
        ApplyForceToEntity(dummy, 3, vector3(posX, posY, 7.0), 0.0, 0.0, 0.0, 0, true, true, false, false, true)
        moneyStacks[#moneyStacks + 1] = dummy
        Citizen.Wait(500)
    end

    local busy = false
    Citizen.CreateThread(function()
        while true do
            local sleep = 1000
            local playerPed = PlayerPedId()
            local pCoords = GetEntityCoords(playerPed)
            if not next(moneyStacks) then
                break
            end
            for i, entity in pairs(moneyStacks) do
                if DoesEntityExist(entity) and not IsPedInAnyVehicle(playerPed) then
                    local dst = #(pCoords - GetEntityCoords(entity))
                    if dst <= 200 then
                        if dst <= 5 then
                            sleep = 1
                            if dst <= 1.5 and not busy then
                                busy = true
                                PlaySoundFrontend(-1, 'ROBBERY_MONEY_TOTAL', 'HUD_FRONTEND_CUSTOM_SOUNDSET', true)
                                if DoesEntityExist(entity) then
                                    DeleteEntity(entity)
                                end
                                moneyStacks[i] = nil
                                busy = false
                                if northZone:isPointInside(pCoords) then 
                                    TriggerServerEvent('atmrobbery:server:giveMoney', typ, true)
                                else
                                    TriggerServerEvent('atmrobbery:server:giveMoney', typ)
                                end
                            end
                        end
                    else
                        if DoesEntityExist(entity) then
                            DeleteEntity(entity)
                        end
                        moneyStacks[i] = nil
                        busy = false
                        TriggerEvent("Notify","vermelho","Você se destanciou muito, o dinheiro sumiu")
                        break
                    end
                end
            end
            Citizen.Wait(sleep)
        end
    end)
end

RegisterNetEvent("atm:robAtm")
AddEventHandler("atm:robAtm",function(typ, propName)
    if inRobbery then
        return 
    end

    local playerPed = PlayerPedId()
    local pCoords = GetEntityCoords(playerPed)
    local dummyObj = GetClosestObjectOfType(pCoords, 2.0, propName, 0, 0, 0)
    if not IsEntityPositionFrozen(dummyObj) then
        return 
    end

    setNetworkObj(dummyObj)
    
    local data = vSERVER.checkAtm({ netId = ObjToNet(dummyObj), typ = typ })
    if not data then
        return
    end
    if typ == 'rope' then
        useRope(propName)
    elseif typ == 'hack_usb' then
        useHackUSB(propName)
    elseif typ == 'drill' then
        useDrill(propName)
    elseif typ == 'bomb' then
        useBomb(propName)
    end
end)

RegisterNetEvent("atm:crackATM")
AddEventHandler("atm:crackATM",function(propName)
    inRobbery = true
    local playerPed = PlayerPedId()
    local pCoords = GetEntityCoords(playerPed)
    local dummyObj = GetClosestObjectOfType(pCoords, 2.0, propName, 0, 0, 0)
    if not DoesEntityExist(dummyObj) then
        return 
    end

    if IsEntityPositionFrozen(dummyObj) then
        return
    end
    
    setNetworkObj(dummyObj)
    local atmNetId = ObjToNet(dummyObj)
    
    local data = vSERVER.checkAtm({ netId = atmNetId, typ = 'crack' })
    if not data then
        inRobbery = false
        return
    end

    TriggerServerEvent('atmrobbery:server:cooldown', ObjToNet(dummyObj), 'crack')
    
    local pedRotation = GetEntityRotation(playerPed)
    local animDict = 'anim@heists@ornate_bank@hack'
    madCore.requestAnim(animDict)
    madCore.requestModel('hei_p_m_bag_var22_arm_s')
    madCore.requestModel('hei_prop_hst_laptop')
    local bag = CreateObject('hei_p_m_bag_var22_arm_s', pCoords, 1, 1, 0)
    local laptop = CreateObject('hei_prop_hst_laptop', pCoords, 1, 1, 0)
    
    SetEntityCollision(bag, false, false)
    
    local scenePos = GetEntityCoords(playerPed)
    local sceneRot = GetEntityRotation(playerPed)
    
    for i = 1, #LaptopAnimation['animations'] do
        LaptopAnimation['scenes'][i] = NetworkCreateSynchronisedScene(scenePos.xy, scenePos.z + 0.41, sceneRot, 2, true, false, 1065353216, 0, 1.3)
        NetworkAddPedToSynchronisedScene(playerPed, LaptopAnimation['scenes'][i], animDict, LaptopAnimation['animations'][i][1], 1.5, -4.0, 1, 16, 1148846080, 0)
        NetworkAddEntityToSynchronisedScene(bag, LaptopAnimation['scenes'][i], animDict, LaptopAnimation['animations'][i][2], 4.0, -8.0, 1)
        NetworkAddEntityToSynchronisedScene(laptop, LaptopAnimation['scenes'][i], animDict, LaptopAnimation['animations'][i][3], 4.0, -8.0, 1)
    end
    
    NetworkStartSynchronisedScene(LaptopAnimation['scenes'][2])
    Wait(3000)
    StartHack(function(status)
        DeleteObject(bag)
        DeleteObject(laptop)
        ClearPedTasks(playerPed)
        inRobbery = false
        if status then
            if DoesEntityExist(dummyObj) then
                SetEntityAsMissionEntity(dummyObj)
                DeleteEntity(dummyObj)
            end
            TriggerServerEvent("atmrobbery:server:deleteRope", atmNetId)
            return TriggerServerEvent('atmrobbery:server:giveMoney', 'rope')
        else
            return TriggerServerEvent('atmrobbery:server:removecd', ObjToNet(dummyObj), "crack")
        end
    end)
end)

RegisterNetEvent("atmrobbery:client:deleteRope", function(atmNetId)
    if propList[atmNetId] then
        DeleteRope(propList[atmNetId])
        propList[atmNetId] = nil
    end
end)

function GetBoneRear(veh)
    local bones = {
        'attach_female',
        'neon_b',
        'tow_arm',
        'tow_mount_a',
        'tow_mount_b',
        'bumper_r',
        'exhaust',
        'boot',
        'petroltank',
        'chassis_dummy',
    }
    for i, bone in pairs(bones) do
        local pos = GetWorldPositionOfEntityBone(veh, GetEntityBoneIndexByName(veh, bone))
        if pos.x ~= 0.0 and pos.x ~= 0 and pos.x ~= nil and (pos.x > 20.0 or pos.x < -20 or pos.z > 20 or pos.z < -20) then
            return bone
        end
    end
    return 'chassis_dummy'
end

RegisterNetEvent('atmrobbery:client:attachVehicle', function(vehNetId, atmNetId)
    local atmProp = NetworkGetEntityFromNetworkId(atmNetId)
    local vehicle = NetToVeh(vehNetId)

    if not DoesEntityExist(vehicle) then
        return
    end

    local vehicleCo = GetEntityCoords(vehicle)
    local vehicleBoneCo = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, GetBoneRear(vehicle)))
    local objectCo = GetOffsetFromEntityInWorldCoords(atmProp, 0.0, 0.0, 1.0)
    local ropeLength = #(GetEntityCoords(atmProp) - GetEntityCoords(vehicle))

    if DoesRopeExist(propList[atmNetId]) then
        DeleteRope(propList[atmNetId])
    end

    RopeLoadTextures()
    while not RopeAreTexturesLoaded() do Citizen.Wait(10) end

    propList[atmNetId] = AddRope(1.0, 1.0, 1.0, 0.0, 0.0, 0.0, ropeLength, 1, ropeLength, 1.0, 0, 0, 0, 0, 0, 0)
    while not propList[atmNetId] do Citizen.Wait(0) end

    AttachEntitiesToRope(propList[atmNetId], vehicle, atmProp, vehicleBoneCo, objectCo, ropeLength, 0, 0, 'rope_attach_a', 'rope_attach_b')
end)

RegisterNetEvent('atmrobbery:client:useRope', function(atmNetId, hookNetId)
    propList[atmNetId] = nil

    local atmProp = NetworkGetEntityFromNetworkId(atmNetId)
    local hProp = NetworkGetEntityFromNetworkId(hookNetId)

    RopeLoadTextures()
    while not RopeAreTexturesLoaded() do Citizen.Wait(10) end

    propList[atmNetId] = AddRope(1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 1.0, 1, 7.0, 1.0, 0, 0, 0, true, 0, 0)
    while not propList[atmNetId] do Citizen.Wait(0) end

    local objectCo = GetOffsetFromEntityInWorldCoords(atmProp, 0.0, 0.0, 1.0)
    local hookPropCoords = GetOffsetFromEntityInWorldCoords(hProp, 0.0, 0.0, 0.0)

    AttachEntitiesToRope(propList[atmNetId], atmProp, hProp, objectCo, hookPropCoords.x, hookPropCoords.y, hookPropCoords.z, 7.0, 0, 0, 'rope_attach_a', 'rope_attach_b')
end)

RegisterNetEvent('atmrobbery:client:ptfx', function(netId, typ)
    if effectList[netId] then
        StopParticleFxLooped(effectList[netId], 0)
        effectList[netId] = nil
        return
    end

    if typ == 'drill' then
        madCore.loadPtfxAsset('core')
        UseParticleFxAssetNextCall('core')
        effectList[netId] = StartNetworkedParticleFxLoopedOnEntity('ent_sht_electrical_box', NetworkGetEntityFromNetworkId(netId), 0.022, -0.5, 0.0, 0.0, 90.0, 0.0, 1.2, false, false, false)
        Citizen.CreateThread(function()
            while effectList[netId] ~= 0 do
                Citizen.Wait(3000)
                UseParticleFxAssetNextCall('core')
                effectList[netId] = StartNetworkedParticleFxLoopedOnEntity('ent_sht_electrical_box', NetworkGetEntityFromNetworkId(netId), 0.022, -0.5, 0.0, 0.0, 90.0, 0.0, 1.2, false, false, false)
            end
        end)
    elseif typ == 'bomb' then
        AddExplosion(GetEntityCoords(NetworkGetEntityFromNetworkId(netId)),2,0.5,true,false,false)
        -- madCore.loadPtfxAsset('scr_josh3')
        -- UseParticleFxAssetNextCall('scr_josh3')
        -- effectList[netId] = StartNetworkedParticleFxNonLoopedOnEntity('scr_josh3_explosion', NetworkGetEntityFromNetworkId(netId), -2.0, -0.5, 0.0, 0.0, 90.0, 0.0, 2.5, false, false, false)
        -- PlaySoundFromCoord(-1, 'MAIN_EXPLOSION_CHEAP', GetEntityCoords(NetworkGetEntityFromNetworkId(netId)), 0, true, 10.0, 0)
    end
end)

Citizen.CreateThread(function()
    for propName, propData in pairs(Config.robbery.atmModels) do
        exports["target"]:AddTargetModel({propName}, {
            options = {
                -- {
                --     event = "atm:open",
                --     label = "Acessar",
                --     tunnel = "client",
                -- },
                -- {
                --     event = "atm:robAtm",
                --     label = madCore.getPhrase("use_rope"),
                --     tunnel = "atm",
                --     service = {'rope',propName}
                -- },
                {
                    event = "atm:robAtm",
                    label = madCore.getPhrase("use_hack"),
                    tunnel = "atm",
                    service = {'hack_usb', propName}
                },
                {
                    event = "atm:robAtm",
                    label = madCore.getPhrase("use_drill"),
                    tunnel = "atm",
                    service = {'drill', propName}
                },
                {
                    event = "atm:robAtm",
                    label = madCore.getPhrase("use_bomb"),
                    tunnel = "atm",
                    service = {'bomb', propName}
                },
            },
            Distance = 1.5
        })
    end
    exports["target"]:AddTargetModel({`loq_atm_02_console`}, {
        options = {
            {
                event = "atm:crackATM",
                label = madCore.getPhrase("crack_atm"),
                tunnel = "products",
                service = `loq_atm_02_console`
            }
        },
        Distance = 1.5
    })
    exports["target"]:AddTargetModel({`loq_atm_03_console`}, {
        options = {
            {
                event = "atm:crackATM",
                label = madCore.getPhrase("crack_atm"),
                tunnel = "products",
                service = `loq_atm_03_console`
            }
        },
        Distance = 1.5
    })
    exports["target"]:AddTargetModel({`loq_fleeca_atm_console`}, {
        options = {
            {
                event = "atm:crackATM",
                label = madCore.getPhrase("crack_atm"),
                tunnel = "products",
                service = `loq_fleeca_atm_console`
            }
        },
        Distance = 1.5
    })
end)

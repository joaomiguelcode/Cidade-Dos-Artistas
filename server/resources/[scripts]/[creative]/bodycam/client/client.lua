-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cRP = {}
Tunnel.bindInterface("bodycam",cRP)
vSERVER = Tunnel.getInterface("bodycam")

local function GetCurrentTime()
    local hours = GetClockHours()
    local minutes = GetClockMinutes()
    local seconds = GetClockSeconds()
    if hours < 10 then
        hours = tostring(0 .. GetClockHours())
    end
    if minutes < 10 then
        minutes = tostring(0 .. GetClockMinutes())
    end
    if seconds < 10 then
        seconds = tostring(0 .. GetClockSeconds())
    end
    return tostring(hours .. ":" .. minutes .. ":" .. seconds)
end

local cam = nil
local watchedped = nil
local watching = false
local watchsource = nil
local popocam = false
local isincar = false
local camPlayers = {}
local ShowingSelf = false

function ShowHelpNotification(text)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, 50)
end

function ShowNotification(msg)
	SetNotificationTextEntry('STRING')
	AddTextComponentString(msg)
	DrawNotification(0, 1)
end

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(50)
    end
end

local currAnim = nil
local currAnimDict = nil

function WatchinAnim()
    local ped = PlayerPedId()
	local pos = GetEntityCoords(ped)
	local head = GetEntityHeading(ped)
	
	dict = 'anim@amb@board_room@diagram_blueprints@'
    name = 'look_around_02_amy_skater_01'
	FreezeEntityPosition(ped,true)
	loadAnimDict(dict)
	TaskPlayAnimAdvanced(ped, dict, name, pos.x, pos.y, pos.z, 0.0,0.0, head ,1.0,1.0, -1, 1, 0.0, 0, 0)
    currAnim = name
    currAnimDict = dict
end

function StopWatchin()
    local ped = PlayerPedId()
	local pos = GetEntityCoords(ped)
	local head = GetEntityHeading(ped)
	FreezeEntityPosition(ped,false)
	dict = 'anim@amb@board_room@diagram_blueprints@'
    name = 'look_around_02_amy_skater_01'
	RemoveAnimDict(dict)
	StopAnimTask(ped, dict, name, 1.0)
end

function DrawText3D(x,y,z,text)
	local onScreen,_x,_y = GetScreenCoordFromWorldCoord(x,y,z)

	if onScreen then
		BeginTextCommandDisplayText("STRING")
		AddTextComponentSubstringKeyboardDisplay(text)
		SetTextColour(255,255,255,150)
		SetTextScale(0.35,0.35)
		SetTextFont(4)
		SetTextCentre(1)
		EndTextCommandDisplayText(_x,_y)
	end
end

function CreateACam(coords)
    cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
    RenderScriptCams(true, true, 0, true, false)
    SetCamCoord(cam, coords)    
    Wait(100)
end

function ShowInfo(d)
    SendNUIMessage({
        type = 'show',
        info = d
    })
end

function HideInfo()
    SendNUIMessage({
        type = 'hide'
    })
end

function CancelCam()
    HideInfo()
    DoScreenFadeOut(250)
        while not IsScreenFadedOut() do
            Wait(0)
        end
    RenderScriptCams(false, true, 0, true, false)
    DestroyCam(cam, false)
    SetFocusEntity(PlayerPedId())
    cteston = nil
    if ShowingSelf then
        local info = vSERVER.getPlayerInfos()
        ShowInfo(info)
    end
    DoScreenFadeIn(250)
end

RegisterNUICallback("GetConfig", function()    
    SendNUIMessage({
        type = 'image',
        image = Config.CustomImage,
        beep = Config.BeepSound,
        playbeep = Config.PlayBeep
    })
end)

RegisterNUICallback("dataPost", function(data, cb)
    SetNuiFocus(false)
    TriggerEvent(data.event, data.args)
    cb('ok')
end)

RegisterNUICallback("cancel", function()
    SetNuiFocus(false)
end)

function getpopos()	
	local tdata = vSERVER.getPopos()
	return tdata
end

function getp(daplayer)	
	local tdata = vSERVER.getPlayer(daplayer)
	return tdata
end

function ShowCamMenu()
    local players = getpopos()
    local menu = {}
    
    for k, v in pairs(players) do
        local nome = ""
        local text = ""
        local enabled = v.camon
        if v.camon then
            nome = '🟢 ' .. v.lname
            text = "Online"
            menu[#menu + 1] = {
                header = nome,
                txt = text,
                disabled = not enabled,           
                params = {
                    event = "bcam:Watch",
                    args = {
                        v
                    }
                }
            }
        else
            nome = '❌ ' .. v.lname
            text = "A câmera corporal está desligada"
            menu[#menu + 1] = {
                header = nome,
                txt = text,
                disabled = not enabled,
            }
        end
    end

    if not menu then return end
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "OPEN_MENU",
        data = menu
    })
end

RegisterNetEvent("messy:camtoggle")
AddEventHandler('messy:camtoggle', function (removed, ison)
    if ison ~= nil then
        popocam = ison
    else
        popocam = not popocam
    end
    if removed then 	
        if Config.SelfOverlay then
            if popocam then
                local info = vSERVER.getPlayerInfos()
                ShowInfo(info)
                ShowingSelf = true
                TriggerServerEvent("messy:camstatus",true)
            else
                HideInfo()
                ShowingSelf = false
                TriggerServerEvent("messy:camstatus",false)
            end
        end
    else
        StopAnimTask(ped, "clothingtie", "try_tie_neutral_d", 1.0)
        TriggerServerEvent("messy:camstatus")	
        if Config.SelfOverlay then
            if popocam then
                local info = vSERVER.getPlayerInfos()
                ShowInfo(info)
                ShowingSelf = true
            else
                HideInfo()
                ShowingSelf = false
            end
        end
    end    
end)

local currped = nil

local WATCH_TREAD_STATUS
local function watchThread()
    if WATCH_TREAD_STATUS then return end
    WATCH_TREAD_STATUS = true
    CreateThread(function()
        while cteston do
            local sleep = 0

            if IsPedInAnyVehicle(currped,false) and isincar == false then
                isincar = true
                local bone = GetPedBoneIndex(currped,31086)
                local head = GetEntityHeading(currped)
                AttachCamToPedBone(cam,currped,bone,0.0,0.48,0.60,GetEntityHeading(currped))
                SetCamRot(cam, vector3(0.0, 0.0, head ))
                
            elseif IsPedInAnyVehicle(currped,false) == false and isincar == true then
                isincar = false
                local bone = GetPedBoneIndex(currped,31086)
                local head = GetEntityHeading(currped)
                AttachCamToPedBone(cam,currped,bone,0.0,0.48,0.40,GetEntityHeading(currped))
                SetCamRot(cam, vector3(-130.0, 0.0, head ))
                
            end

            ShowHelpNotification("Pressione ~INPUT_CELLPHONE_CANCEL~ para cancelar.")
            
            if IsControlJustPressed(0, 177) then 
                StopWatchin()
                watching = false
                CancelCam()
            end
            
            if watching then
                if IsEntityPlayingAnim(PlayerPedId(),currAnimDict,currAnim, 3) == false then
                    StopWatchin()
                    watching = false
                    CancelCam()
                end
                if camPlayers[watchsource] == false then
                    StopWatchin()
                    watching = false

                    CancelCam()
                    watchsource = nil
                end
            end

            ped = watchedped
            pos = GetEntityCoords(watchedped)
            local ghead = GetEntityHeading(watchedped)
            SetCamRot(cam, vector3(-10.0, 0.0, ghead ))
                
            SendNUIMessage({
                type = 'time',
                time = GetCurrentTime()
            })
            Wait(sleep)
        end
        WATCH_TREAD_STATUS = nil
    end)
end

RegisterNetEvent("bcam:Watch")
AddEventHandler('bcam:Watch', function (arg)

	local ithim = getp(arg[1].source)

    if not ithim.isCam then return end

    DoScreenFadeOut(250)
    while not IsScreenFadedOut() do
        Wait(0)
    end

    SetFocusEntity(ithim.pednid)
    SetFocusPosAndVel(ithim.coords.x, ithim.coords.y, ithim.coords.z,0.0,0.0,0.0)
    CreateACam(ithim.coords)
    ShowInfo(arg[1])
    
    WatchinAnim()
    Wait(100)
    watching = true
    watchsource = arg[1].source
    
    while NetworkDoesEntityExistWithNetworkId(ithim.pednid) == false do
        Wait(100)
    end
    
    local netpedid = NetworkGetEntityFromNetworkId(ithim.pednid)
    currped = netpedid
    
    local bone = GetPedBoneIndex(netpedid,31086)
    SetFocusEntity(netpedid)
    local head = GetEntityHeading(netpedid)
    
    AttachCamToPedBone(cam,netpedid,bone,0.0,0.48,0.40,GetEntityHeading(netpedid))
    SetCamFov(cam,95.0)
    SetCamNearClip(cam, 0.05)
    cteston = true
    watchThread()
    SetCamRot(cam, vector3(-130.0, 0.0, head ))
    watchedped = netpedid
    DoScreenFadeIn(250)
end)

RegisterNetEvent("bcam:UpdateWatch")
AddEventHandler("bcam:UpdateWatch", function(d)
    local src = source
    camPlayers = d
end)


local PLAYER_KEY = ('player:%s'):format(cache.serverId)
local MENU_THREAD_ACTIVE
local function menuThread()
    if MENU_THREAD_ACTIVE then return end
    MENU_THREAD_ACTIVE = true

    CreateThread(function()
        while MENU_THREAD_ACTIVE do
            local wait = 1000
            local pos = GetEntityCoords(PlayerPedId())
            for k, menus in pairs(Config.Locations) do
                if #(pos - menus.coords) <= 1.5 then
                    wait = 0
                    DrawText3D(menus.coords.x,menus.coords.y,menus.coords.z,'[E] Abrir câmeras corporais')
                    if IsControlJustReleased(0, 38) then
                        ShowCamMenu(Config.Jobs[menus.job])
                    end
                end
            end
            Wait(wait)
        end
    end)
end

AddStateBagChangeHandler("Corregedoria", nil, function(bagName, key, value) 
    if value then
        menuThread()
    else    
        MENU_THREAD_ACTIVE = nil
    end
end)

CreateThread(function()
    SetNuiFocus(false,false)
    if LocalPlayer.state.Corregedoria then menuThread() end
end) 

function cRP.screenshot()
    exports['screenshot-basic']:requestScreenshotUpload(Config.Webhook, "files[]", function(data)
    end)
end
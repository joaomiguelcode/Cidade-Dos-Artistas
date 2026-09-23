-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local health,armour,hunger,thirst,stamine,frequency,voiceLevel,voiceActive,gems,passport,NitroFuel = 100,100,100,100,100,0,0,0,0,0,0
local hudVisibility,pausemenu,weaponVisibility,NitroFlame,PurgeActive = false,false,false,false,false
local LightTrails,LightParticles,PurgeSprays,PurgeParticles = {},{},{},{}
local hungerTimer,thirstTimer = GetGameTimer(),GetGameTimer()

local weather = GlobalState["Weather"]
local hours = GlobalState["Hours"]
local minutes = GlobalState["Minutes"]

local NitroButton = GetGameTimer()
LocalPlayer["state"]["Nitro"] = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- VISIBILITY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Active")
AddEventHandler("hud:Active",function(status)
    hudVisibility = status 
    SendNUIMessage({ action = "setVisibility", data = status })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NOTIFY
-----------------------------------------------------------------------------------------------------------------------------------------
local title = {
    ["fome"] = "Fome",
    ["sede"] = "Sede",
    ["amarelo"] = "Aviso",
    ["azul"] = "Notificação",
    ["vermelho"] = "Negado",
    ["verde"] = "Sucesso",
}

RegisterNetEvent("Notify")
AddEventHandler("Notify",function(type,message,time)
    if not time then time = 5000 end
    SendNUIMessage({ action = "addNotify", data = { theme = type, title = title[type] or "Notificação", message = message, delay = time } })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PROGRESS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Progress")
AddEventHandler("Progress",function(message,delay)
	if not delay or not message then return end
    SendNUIMessage({action = "addProgress",data = { title = "Progresso", message = message, delay = delay }})
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ALERTS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Alerts")
AddEventHandler("Alerts",function(data)
    SendNUIMessage{ action = "addAlert", data = { icon = data.action, color = data.color, time = data.time, title = data.title, author = data.author, message = data.message, delay = data.delay }}
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HEALTH
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('gameEventTriggered', function (name, args)
	if name == "CEventNetworkEntityDamage" then
        if PlayerPedId() ~= args[1] then return end
        if hudVisibility then
            health = GetEntityHealth(args[1]) - 100
            SendNUIMessage({action = "setStats", data = { health = health }})
        end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREAD
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
    LoadPtfxAsset("veh_xs_vehicle_mods")
    DisplayRadar(false)

	RequestStreamedTextureDict("circlemap", false)
    while not HasStreamedTextureDictLoaded("circlemap") do
        Wait(500) -- mudei o wait de 100 para 500
    end
    AddReplaceTexture("platform:/textures/graphics", "radarmasksm", "circlemap", "radarmasksm")
	
    -- SetTextChatEnabled(false)
    SetNuiFocus(false)
    while true do
        if hudVisibility then
            if IsPauseMenuActive() and not pausemenu then
                pausemenu = true
                SendNUIMessage({ action = "setVisibility", data = false })
            elseif not IsPauseMenuActive() and pausemenu then
                pausemenu = false
                SendNUIMessage({ action = "setVisibility", data = true })
            end
		end

		local ped = PlayerPedId()
		local coords = GetEntityCoords(ped)
		
		local newHealth = GetEntityHealth(ped) - 100
		local newArmour = GetPedArmour(ped)
		local newStamine = GetPlayerStamina(PlayerId())

		if newHealth ~= health then
			if newHealth < 0 then
				newHealth = 0
			end 
			health = newHealth
		end
		if newArmour ~= armour then
			armour = newArmour
		end 
		if newStamine ~= stamine then
			stamine = newStamine
		end 

		SendNUIMessage({action = "setStats", data = { health = health, armour = armour, stamina = stamine }})

		streetName = GetStreetNameFromHashKey(GetStreetNameAtCoord(coords["x"],coords["y"],coords["z"]))
		SendNUIMessage({action = "setStreet", data = Config.Streets[streetName]})

		if hungerTimer <= GetGameTimer() then
			hungerTimer = GetGameTimer() + 50000

			if hunger < 5 and GetEntityHealth(ped) > 100 then
				DoScreenFadeOut(0)

				if not IsPedInAnyVehicle(ped) then
					SetPedToRagdoll(ped,2500,2500,0,0,0,0)
				end

				SetTimeout(500,function() -- tempo que a tela acende
					DoScreenFadeIn(0)
				end)
				
				ApplyDamageToPed(ped,math.random(2),false)
				TriggerEvent("Notify","fome","Sofrendo com a fome.",2500)
			end
		end

		if thirstTimer <= GetGameTimer() then
			thirstTimer = GetGameTimer() + 10000

			if thirst < 5 and GetEntityHealth(ped) > 100 then
				ApplyDamageToPed(ped,math.random(1),false)
				TriggerEvent("Notify","sede","Sofrendo com a sede.",2500)
			end
		end
        Wait(500)
    end
end)

RegisterNetEvent("hud:Weapon")
AddEventHandler("hud:Weapon",function(Status,Hash)
	weaponVisibility = Status
	if not Status then
		SendNUIMessage({ action = "setWeapon", data = false })
		return
	end
	CreateThread(function()
		while weaponVisibility do
			local ped = PlayerPedId()
			if IsPedArmed(ped,6) then
                local weapon = GetSelectedPedWeapon(ped)
                local __, ammoClip = GetAmmoInClip(ped, weapon)
                local maxAmmo = GetAmmoInPedWeapon(ped, weapon)
				local Ammo = maxAmmo - ammoClip
				if Config["Weapon"][weapon] then
					SendNUIMessage({ action = "setWeapon", data = { image =  Config["Weapon"][weapon].image or "", name = Config["Weapon"][weapon].name or "", ammo = ammoClip.."/"..Ammo }})
				else
					SendNUIMessage({ action = "setWeapon", data = { image =  "Arma Indefinida", name = "", ammo = ammoClip.."/"..Ammo }})
				end
            else
                if weaponVisibility then
                    SendNUIMessage({ action = "setWeapon", data = false })
                    weaponVisibility = false
                end
            end
			Wait(100)
		end
	end)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
local seatbeltSpeed = 0
local seatbeltLock = false
local seatbeltVelocity = vec3(0,0,0)
local VEHICLE_THREAD_STATUS
local function vehicleThread()
	if VEHICLE_THREAD_STATUS then return end
	VEHICLE_THREAD_STATUS = true

	SendNUIMessage({ action = "setVehicleHud", data = true })
	DisplayRadar(true)

	local math_floor = math.floor
	local needSeatbelt = not (IsPedOnAnyBike(cache.ped) or IsPedInAnyHeli(cache.ped) or IsPedInAnyPlane(cache.ped))

	CreateThread(function()
		while cache.vehicle do 
			local msec = 50
			local ped = cache.ped
            local vehicle = cache.vehicle
            local speed = math_floor(GetEntitySpeed(vehicle) * 3.6)
            local gear = GetVehicleCurrentGear(vehicle)
            -- if (speed == 0 and gear == "0") or (speed == 0 and gear == "1") then
            --     gear = "N"
            -- elseif (speed > 0 and gear == "0") then
            --     gear = "R"
            -- end

			if needSeatbelt then

				if GetVehicleDoorLockStatus(vehicle) == 2 or seatbeltLock then
					DisableControlAction(1,75,true)
				end

				if speed ~= seatbeltSpeed then
					if (seatbeltSpeed - speed) >= 60 and not seatbeltLock then
						SmashVehicleWindow(vehicle,6)
						SetEntityNoCollisionEntity(ped,vehicle,false)
						SetEntityNoCollisionEntity(vehicle,ped,false)
						TriggerServerEvent("hud:VehicleEject",seatbeltVelocity)

						Wait(500)

						SetEntityNoCollisionEntity(ped,vehicle,true)
						SetEntityNoCollisionEntity(vehicle,ped,true)
					end

					seatbeltVelocity = GetEntityVelocity(vehicle)
					seatbeltSpeed = speed
				end
			end

			local Nitro = (Entity(vehicle).state.Nitro or 0) / 20 

            SendNUIMessage({ action = "setVehicleData", data = 
            {
                nitro = Nitro,
                rpm = GetVehicleCurrentRpm(vehicle),
                gear = tostring(((gear <= 1) and (speed == 0) and "N") or ((gear == 0) and (speed == 0) and "R") or gear),
                speed = speed,
                fuel = GetVehicleFuelLevel(vehicle),
                engine = (GetVehicleEngineHealth(vehicle) / 10),
                locked = (GetVehicleDoorLockStatus(vehicle) == 1)
            }})
			Wait(msec)
		end

		SendNUIMessage({ action = "setVehicleHud", data = false })
        DisplayRadar(false)
		
		seatbeltSpeed = 0
		seatbeltLock = nil

		if NitroFlame then
			NitroDisable()
		end

		VEHICLE_THREAD_STATUS = nil
	end)
end

lib.onCache('vehicle', function(value)
	if not value then return end

	Wait(0)
	vehicleThread()
end)

-- AddEventHandler('gameEventTriggered', function (name, args)
-- 	if name == "CEventNetworkPlayerEnteredVehicle" then
-- 		if args[1] ~= PlayerId() then return end
--         while IsPedInAnyVehicle(PlayerPedId()) do
--             local ped = PlayerPedId()
--             local vehicle = GetVehiclePedIsIn(ped)
--             local speed = math.floor(GetEntitySpeed(vehicle) * 3.6)
--             local gear = tostring(GetVehicleCurrentGear(vehicle))
--             if (speed == 0 and gear == "0") or (speed == 0 and gear == "1") then
--                 gear = "N"
--             elseif (speed > 0 and gear == "0") then
--                 gear = "R"
--             end
-- 			if not IsPedOnAnyBike(ped) and not IsPedInAnyHeli(ped) and not IsPedInAnyPlane(ped) then

-- 				if GetVehicleDoorLockStatus(vehicle) == 2 or seatbeltLock then
-- 					DisableControlAction(1,75,true)
-- 				end

-- 				if speed ~= seatbeltSpeed then
-- 					if (seatbeltSpeed - speed) >= 60 and not seatbeltLock then
-- 						SmashVehicleWindow(vehicle,6)
-- 						SetEntityNoCollisionEntity(ped,vehicle,false)
-- 						SetEntityNoCollisionEntity(vehicle,ped,false)
-- 						TriggerServerEvent("hud:VehicleEject",seatbeltVelocity)

-- 						Wait(500)

-- 						SetEntityNoCollisionEntity(ped,vehicle,true)
-- 						SetEntityNoCollisionEntity(vehicle,ped,true)
-- 					end

-- 					seatbeltVelocity = GetEntityVelocity(vehicle)
-- 					seatbeltSpeed = speed
-- 				end
-- 			end

-- 			local Nitro = false
-- 			if Entity(vehicle).state.Nitro and Entity(vehicle).state.Nitro > 0 then
-- 				Nitro = Entity(vehicle).state.Nitro / 20
-- 			end

--             SendNUIMessage({ action = "setVehicleData", data = 
--             {
--                 nitro = Nitro,
--                 rpm = GetVehicleCurrentRpm(vehicle),
--                 gear = gear,
--                 speed = speed,
--                 fuel = GetVehicleFuelLevel(vehicle),
--                 engine = (GetVehicleEngineHealth(vehicle) / 10),
--                 locked = (GetVehicleDoorLockStatus(vehicle) == 1)
--             }})
--             Wait(50)
--         end
--         SendNUIMessage({ action = "setVehicleHud", data = false })
--         DisplayRadar(false)

-- 		if seatbeltSpeed ~= 0 then
-- 			seatbeltSpeed = 0
-- 		end
-- 		if seatbeltLock then
-- 			seatbeltLock = false
-- 		end

-- 		if NitroFlame then
-- 			NitroDisable()
-- 		end

-- 	end
-- end)

RegisterCommand("Beltz",function(source)
	local ped = PlayerPedId()
	if IsPedInAnyVehicle(ped) then
		if not IsPedOnAnyBike(ped) and not IsPedInAnyHeli(ped) and not IsPedInAnyPlane(ped) then
			if seatbeltLock then
				TriggerEvent("sounds:Private","unbelt",0.5)
				seatbeltLock = false
				SendNUIMessage({ action = "setVehicleData", data = {seatbelt = seatbeltLock}})
			else
				TriggerEvent("sounds:Private","belt",0.5)
				seatbeltLock = true
				SendNUIMessage({ action = "setVehicleData", data = {seatbelt = seatbeltLock}})
			end
		end
	end
end)

RegisterKeyMapping("Beltz","Colocar/Retirar o cinto.","keyboard","G")
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATEINFOS
-----------------------------------------------------------------------------------------------------------------------------------------
AddStateBagChangeHandler("Weather", nil, function(_, __, value)
    weather = value
end)

AddStateBagChangeHandler("Hours", nil, function(_, __, value)
    hours = value
    SendNUIMessage({action = "setInfos", data = { time = {hours, minutes}} })
end)

AddStateBagChangeHandler("Minutes", nil, function(_, __, value)
    minutes = value
    SendNUIMessage({action = "setInfos", data = { time = {hours, minutes}} })
end)

RegisterNetEvent("cda_hud:updateKm")
AddEventHandler("cda_hud:updateKm",function(km)
	SendNUIMessage({ action = "setVehicleData", data = { mileage = km }})
end)

RegisterNetEvent("hud:Voice")
AddEventHandler("hud:Voice",function(status)
    voiceActive = status
    SendNUIMessage({action = "setInfos", data = { voiceActive = voiceActive }})
end)

RegisterNetEvent("hud:Voip")
AddEventHandler("hud:Voip",function(mode)
    voiceLevel = mode
    SendNUIMessage({action = "setInfos", data = { voiceLevel = voiceLevel }})
end)

RegisterNetEvent("hud:Radio")
AddEventHandler("hud:Radio",function(number)
    frequency = number
    SendNUIMessage({action = "setInfos", data = { frequency = frequency }})
end)

RegisterNetEvent("hud:Passport")
AddEventHandler("hud:Passport",function(id)
    passport = id
    SendNUIMessage({action = "setInfos", data = { userId = passport }})
	SendNUIMessage({action = "setInfos", data = { voiceLevel = 2 }})
end)

RegisterNetEvent("hud:AddGems")
AddEventHandler("hud:AddGems",function(amount)
    gems += amount
    SendNUIMessage({action = "setInfos", data = { gems = gems }})
end)
RegisterNetEvent("hud:RemoveGems")
AddEventHandler("hud:RemoveGems",function(amount)
    gems -= amount
    SendNUIMessage({action = "setInfos", data = { gems = gems }})
end)

RegisterNetEvent("hud:Thirst")
AddEventHandler("hud:Thirst",function(number)
    thirst = number
    SendNUIMessage({action = "setStats", data = { thirst = thirst }})
end)

RegisterNetEvent("hud:Hunger")
AddEventHandler("hud:Hunger",function(number)
    hunger = number
    SendNUIMessage({action = "setStats", data = { hunger = hunger }})
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Wanted",function()
	return false
end)

exports("Reposed",function()
	return false
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TIME
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        SetWeatherTypeNow(weather)
        SetWeatherTypePersist(weather)
        SetWeatherTypeNowPersist(weather)
        NetworkOverrideClockTime(hours, minutes, 00)
        Citizen.Wait(1000)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUEST
-----------------------------------------------------------------------------------------------------------------------------------------
local activeRequest = false
local resultRequest = false
local timeRequest = GetGameTimer()
local idRequest = 0

function Srr.Request(Message)
	if activeRequest then
		return false
	end

	idRequest += 1
    SendNUIMessage({ action = "addRequest", data = { id = idRequest, title = "Pergunta", description = Message, author = "Sistema", delay = 15000 } })
	timeRequest = GetGameTimer() + 15000
	activeRequest = true

	while activeRequest do
		if GetGameTimer() >= timeRequest then
			SendNUIMessage({ action = "remRequest", data = idRequest })
			resultRequest = false
			activeRequest = false
		end

		Wait(0)
	end

	return resultRequest
end

RegisterCommand("cda:acceptRequest",function()
	if activeRequest then
        resultRequest = true
        activeRequest = false
        SendNUIMessage({ action = "remRequest", data = idRequest })
	end
end)

RegisterCommand("cda:declineRequest",function()
	if activeRequest then
        resultRequest = false
        activeRequest = false
        SendNUIMessage({ action = "remRequest", data = idRequest })
	end
end)

RegisterKeyMapping("cda:acceptRequest","Aceitar requisições.","keyboard","Y")
RegisterKeyMapping("cda:declineRequest","Rejeitar requisições.","keyboard","U")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PROMPT
-----------------------------------------------------------------------------------------------------------------------------------------
local promptStatus = ""
local promptActive = false

function Srr.Prompt(Text,DefaultText)
    if not DefaultText then DefaultText = "" end
    if promptActive then
        return false
    end

	promptStatus = ""
    promptActive = true
    SendNUIMessage({ action = "showPrompt", data = { title = Text, defaultValue = DefaultText } })
    SetNuiFocus(true,true)

    while promptStatus == "" do
        Wait(100)
    end
    local actualStats = promptStatus
    promptStatus = false
    return actualStats
end

RegisterNUICallback("removeFocus",function(Data,Callback)
    if promptActive then
        promptStatus = false
        promptActive = false
        SetNuiFocus(false,false)
    end
    if Callback then Callback(true) end
end)

RegisterNUICallback("submitPrompt",function(Data,Callback)
    promptActive = false
    promptStatus = Data.content
	SetNuiFocus(false,false)
    if Callback then Callback(true) end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHORTCUTS
-----------------------------------------------------------------------------------------------------------------------------------------
function ShowShortcuts()
    local Shortcuts = vSERVER.Shortcuts()
	SendNUIMessage({ action = "setHotbar", data = Shortcuts })
end

function HideShortcuts()
	SendNUIMessage({ action = "setHotbar", data = false })
end

RegisterCommand("+shortcuts",ShowShortcuts)
RegisterCommand("-shortcuts",HideShortcuts)
RegisterKeyMapping("+shortcuts","Visualizar atalhos.","keyboard","TAB")
-----------------------------------------------------------------------------------------------------------------------------------------
-- NOTIFYPUSH
-----------------------------------------------------------------------------------------------------------------------------------------
-- RegisterNetEvent("NotifyPush")
-- AddEventHandler("NotifyPush",function(Data)
--     local streetName = GetStreetNameFromHashKey(GetStreetNameAtCoord(Data["x"],Data["y"],Data["z"]))
    
--     SendNUIMessage({ action = "addNotifyPush", data = { 
--         code = Data["code"], 
--         title = Data["title"], 
--         description = Data["criminal"] or Data["text"] or "", 
--         street = Config.Streets[streetName], 
--         time = {hours, minutes}, 
--         cds = {Data["x"], Data["y"], Data["z"]}, 
--         phone = Data["phone"] or false, 
--         userId = Data["Passport"] or 0 }
--     })
    
--     local Blip = AddBlipForCoord(Data["x"],Data["y"],Data["z"])
    
-- 	if parseInt(Data["code"]) == 13 then
-- 		TriggerEvent("sounds:Private","deathcop",0.5)
-- 	end

-- 	SetBlipSprite(Blip,270)
-- 	SetBlipDisplay(Blip,4)
-- 	SetBlipAsShortRange(Blip,true)
-- 	SetBlipColour(Blip,Data["blipColor"])
-- 	SetBlipScale(Blip,0.9)
-- 	BeginTextCommandSetBlipName("STRING")
-- 	AddTextComponentString(Data["title"])
-- 	EndTextCommandSetBlipName(Blip)

-- 	SetTimeout(60000,function()
-- 		if DoesBlipExist(Blip) then
-- 			RemoveBlip(Blip)
-- 		end
-- 	end)
-- end)

RegisterNUICallback("NotifyPush:pingGps",function(Data,Callback)
	if Data and Data["x"] and Data["y"] then
		SetNewWaypoint(Data["x"] + 0.0001, Data["y"] + 0.0001)
	end
	if Callback then Callback(true) end
end)

RegisterNUICallback("NotifyPush:call",function(Data,Callback)
	if Data and Data["phone"] and GetResourceState("smartphone") == "started" then
		pcall(function() exports["smartphone"]:callPlayer(Data["phone"]) end)
	end
	if Callback then Callback(true) end
end)

RegisterNUICallback("NotifyPush:sendMessage",function(Data,Callback)
	if Callback then Callback(true) end
end)


-- RegisterCommand("NotifyCall",function()
-- 	if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not IsPauseMenuActive() then
-- 		SendNUIMessage({ action = "NotifyPush:history", data = true })
-- 	end
-- end)

-- RegisterKeyMapping("NotifyCall","Consultar as notificações.","keyboard","F2")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHAT
-----------------------------------------------------------------------------------------------------------------------------------------
-- local chatStatus = false
-- RegisterCommand("cda:chat", function()
--     TriggerEvent("cda:ChatVisible",true)
--     SetNuiFocus(true, true)
-- end)

-- RegisterKeyMapping("cda:chat", "Abrir Chat", "keyboard", "T")

-- RegisterNetEvent("cda:ChatVisible")
-- AddEventHandler("cda:ChatVisible",function(Status)
--     SetNuiFocus(Status, Status)
--     SendNUIMessage({ action = "Chat:showInput", data = Status })
--     chatStatus = Status
-- end)

RegisterNUICallback("getChatChannels",function(data,cb)
    if cb then cb({}) end
end)

RegisterNUICallback("submitCommand",function(data,cb)
    if data and data.content and data.content[1] then
        local command = data.content[1]
        ExecuteCommand(command:sub(2))
    end
    if cb then cb(true) end
end)

RegisterNUICallback("submitChatMessage",function(data,cb)
    if data and data.content then
        TriggerServerEvent("cda_hud:serverMessage",data.content,data.channel)
    end
    if cb then cb(true) end
end)

-- RegisterNetEvent("cda_hud:clientMessage")
-- AddEventHandler("cda_hud:clientMessage",function(text,author)
--     SendNUIMessage(  {
--         action = "Chat:addMessage",
--         data = {
--           label = author,
--           author = "",
--           color = "#ff5050",
--           time = {hours, minutes},
--           content = text,
--         },
--     }) 
--     Wait(500)
--     SendNUIMessage({ action = "Chat:showMessages", data = true })
--     SetTimeout(4000, function()
--         SendNUIMessage({ action = "Chat:showMessages", data = false })
--     end)
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NITRO
-----------------------------------------------------------------------------------------------------------------------------------------
function NitroEnable()
	if GetGameTimer() >= NitroButton and not IsPauseMenuActive() then
		local ped = PlayerPedId()
		if IsPedInAnyVehicle(ped) then
			NitroButton = GetGameTimer() + 1000

			local Vehicle = GetVehiclePedIsUsing(ped)
			if GetPedInVehicleSeat(Vehicle,-1) == ped then
				if GetVehicleTopSpeedModifier(Vehicle) < 50.0 then
					local Plate = GetVehicleNumberPlateText(Vehicle)
					NitroFuel = Entity(Vehicle).state.Nitro or 0

					if NitroFuel >= 1 then
						if GetIsVehicleEngineRunning(Vehicle) then
							local Speed = GetEntitySpeed(Vehicle) * 3.6
							if Speed > 10 then
								LocalPlayer["state"]["Nitro"] = true

								while LocalPlayer["state"]["Nitro"] do
									if NitroFuel >= 1 then
										NitroFuel = NitroFuel - 1

										if not NitroFlame then
											SetVehicleRocketBoostActive(Vehicle,true)
											SetVehicleNitroEnabled(Vehicle,true)
											SetVehicleBoostActive(Vehicle,true)
											ModifyVehicleTopSpeed(Vehicle,50.0)
											SetLightTrail(Vehicle,true)
											NitroFlame = Plate
										end
									else
										if NitroFlame then
											SetVehicleRocketBoostActive(Vehicle,false)
											Entity(Vehicle).state:set('Nitro', NitroFuel)
											SetVehicleNitroEnabled(Vehicle,false)
											SetVehicleBoostActive(Vehicle,false)
											ModifyVehicleTopSpeed(Vehicle,0.0)
											SetLightTrail(Vehicle,false)
											NitroFlame = false

											LocalPlayer["state"]["Nitro"] = false
										end
									end

									Wait(1)
								end
							else
								SetPurgeSprays(Vehicle,true)
								PurgeActive = true
							end
						else
							SetPurgeSprays(Vehicle,true)
							PurgeActive = true
						end
					end
				end
			end
		end
	end
end

function NitroDisable()
	local Vehicle = GetLastDrivenVehicle()

	if NitroFlame then
		SetVehicleRocketBoostActive(Vehicle,false)
		Entity(Vehicle).state:set('Nitro', NitroFuel)
		SetVehicleNitroEnabled(Vehicle,false)
		SetVehicleBoostActive(Vehicle,false)
		ModifyVehicleTopSpeed(Vehicle,0.0)
		SetLightTrail(Vehicle,false)
		NitroFlame = false

		LocalPlayer["state"]["Nitro"] = false
	end

	if PurgeActive then
		SetPurgeSprays(Vehicle,false)
		PurgeActive = false
	end
end

RegisterCommand("+activeNitro",NitroEnable)
RegisterCommand("-activeNitro",NitroDisable)
RegisterKeyMapping("+activeNitro","Ativação do nitro.","keyboard","LMENU")

function SetLightTrail(Vehicle,Enable)
	if LightTrails[Vehicle] == Enable then
		return
	end

	if Enable then
		local Particles = {}
		local LeftTrail = CreateLightTrail(Vehicle,GetEntityBoneIndexByName(Vehicle,"taillight_l"))
		local RightTrail = CreateLightTrail(Vehicle,GetEntityBoneIndexByName(Vehicle,"taillight_r"))

		Particles[#Particles + 1] = LeftTrail
		Particles[#Particles + 1] = RightTrail

		LightTrails[Vehicle] = true
		LightParticles[Vehicle] = Particles
	else
		if LightParticles[Vehicle] and #LightParticles[Vehicle] > 0 then
			for _,v in ipairs(LightParticles[Vehicle]) do
				StopLightTrail(v)
			end
		end

		LightTrails[Vehicle] = nil
		LightParticles[Vehicle] = nil
	end
end

function CreateLightTrail(Vehicle,Bone)
	UseParticleFxAssetNextCall("core")
	local Particle = StartParticleFxLoopedOnEntityBone("veh_light_red_trail",Vehicle,0.0,0.0,0.0,0.0,0.0,0.0,Bone,1.0,false,false,false)
	SetParticleFxLoopedEvolution(Particle,"speed",1.0,false)

	return Particle
end

function StopLightTrail(Particle)
	CreateThread(function()
		local endTime = GetGameTimer() + 500
		while GetGameTimer() < endTime do 
			Wait(0)
			local now = GetGameTimer()
			local Scale = (endTime - now) / 500
			SetParticleFxLoopedScale(Particle,Scale)
			SetParticleFxLoopedAlpha(Particle,Scale)
		end

		StopParticleFxLooped(Particle)
	end)
end

function SetPurgeSprays(Vehicle,Enable)
	if PurgeSprays[Vehicle] == Enable then
		return
	end

	if Enable then
		local Particles = {}
		local Bone = GetEntityBoneIndexByName(Vehicle,"bonnet")
		local Position = GetWorldPositionOfEntityBone(Vehicle,Bone)
		local Offset = GetOffsetFromEntityGivenWorldCoords(Vehicle,Position["x"],Position["y"],Position["z"])

		for i = 0,3 do
			local LeftPurge = CreatePurgeSprays(Vehicle,Offset["x"] - 0.5,Offset["y"] + 0.05,Offset["z"],40.0,-20.0,0.0,0.5)
			local RightPurge = CreatePurgeSprays(Vehicle,Offset["x"] + 0.5,Offset["y"] + 0.05,Offset["z"],40.0,20.0,0.0,0.5)

			Particles[#Particles + 1] = LeftPurge
			Particles[#Particles + 1] = RightPurge
		end

		PurgeSprays[Vehicle] = true
		PurgeParticles[Vehicle] = Particles
	else
		if PurgeParticles[Vehicle] then
			RemoveParticleFxFromEntity(Vehicle)
		end

		PurgeSprays[Vehicle] = nil
		PurgeParticles[Vehicle] = nil
	end
end

function CreatePurgeSprays(Vehicle,xOffset,yOffset,zOffset,xRot,yRot)
	UseParticleFxAssetNextCall("core")
	return StartNetworkedParticleFxNonLoopedOnEntity("ent_sht_steam",Vehicle,xOffset,yOffset,zOffset,xRot,yRot,0.0,0.5,false,false,false)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMMANDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("hud",function()
    TriggerEvent("hud:Active",not hudVisibility)
end)
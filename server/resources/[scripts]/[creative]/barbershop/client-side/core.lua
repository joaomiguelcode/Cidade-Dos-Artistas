-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("barbershop")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local cam = -1
local Clothes = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATESKIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("updateSkin",function(Data,Callback)
	Clothes = { tonumber(Data["fathers"]),tonumber(Data["kinship"]),tonumber(Data["eyecolor"]),tonumber(Data["skincolor"]),tonumber(Data["acne"]),tonumber(Data["stains"]),tonumber(Data["freckles"]),tonumber(Data["aging"]),tonumber(Data["hair"]),tonumber(Data["haircolor"]),tonumber(Data["haircolor2"]),tonumber(Data["makeup"]),tonumber(Data["makeupintensity"]),tonumber(Data["makeupcolor"]),tonumber(Data["lipstick"]),tonumber(Data["lipstickintensity"]),tonumber(Data["lipstickcolor"]),tonumber(Data["eyebrow"]),tonumber(Data["eyebrowintensity"]),tonumber(Data["eyebrowcolor"]),tonumber(Data["beard"]),tonumber(Data["beardintentisy"]),tonumber(Data["beardcolor"]),tonumber(Data["blush"]),tonumber(Data["blushintentisy"]),tonumber(Data["blushcolor"]),tonumber(Data["face00"]),tonumber(Data["face01"]),tonumber(Data["face04"]),tonumber(Data["face06"]),tonumber(Data["face08"]),tonumber(Data["face09"]),tonumber(Data["face10"]),tonumber(Data["face12"]),tonumber(Data["face13"]),tonumber(Data["face14"]),tonumber(Data["face15"]),tonumber(Data["face16"]),tonumber(Data["face17"]),tonumber(Data["face19"]),tonumber(Data["mothers"]) }

	if Data["value"] then
		OpenBarbershop(false)
		SetNuiFocus(false,false)
		vSERVER.updateSkin(Clothes)
		SendNUIMessage({ Open = false })
	end

	TriggerEvent("barbershop:Apply",Clothes)

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ROTATELEFT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("rotate",function(Data,Callback)
	local Ped = PlayerPedId()
	local Heading = GetEntityHeading(Ped)
	if Data == "left" then
		SetEntityHeading(Ped,Heading + 10)
	else
		SetEntityHeading(Ped,Heading - 10)
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETCUSTOMIZATION
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("barbershop:Apply")
AddEventHandler("barbershop:Apply",function(Status)
	if GetResourceState("nation_barbershop") == "started" or GetResourceState("nation_creator") == "started" then
		return
	end

	if not Status then return end

	for Number = 1,41 do
		Clothes[Number] = Status[Number] or 0
	end

    local Face = Clothes[2] / 100 + 0.0
    local Skin = Clothes[4] / 100 + 0.0

    local Ped = PlayerPedId()
	SetPedHeadBlendData(Ped,Clothes[41],Clothes[1],0,Clothes[41],Clothes[1],0,Face,Skin,0.0,false)

	SetPedEyeColor(Ped,Clothes[3])

	if Clothes[5] == 0 then
		SetPedHeadOverlay(Ped,0,Clothes[5],0.0)
	else
		SetPedHeadOverlay(Ped,0,Clothes[5],1.0)
	end

	SetPedHeadOverlay(Ped,6,Clothes[6],1.0)

	if Clothes[7] == 0 then
		SetPedHeadOverlay(Ped,9,Clothes[7],0.0)
	else
		SetPedHeadOverlay(Ped,9,Clothes[7],1.0)
	end

	SetPedHeadOverlay(Ped,3,Clothes[8],1.0)

	SetPedComponentVariation(Ped,2,Clothes[9],0,1)
	SetPedHairColor(Ped,Clothes[10],Clothes[11])

	SetPedHeadOverlay(Ped,4,Clothes[12],Clothes[13] * 0.1)
	SetPedHeadOverlayColor(Ped,4,1,Clothes[14],Clothes[14])

	SetPedHeadOverlay(Ped,8,Clothes[15],Clothes[16] * 0.1)
	SetPedHeadOverlayColor(Ped,8,1,Clothes[17],Clothes[17])

	SetPedHeadOverlay(Ped,2,Clothes[18],Clothes[19] * 0.1)
	SetPedHeadOverlayColor(Ped,2,1,Clothes[20],Clothes[20])

	SetPedHeadOverlay(Ped,1,Clothes[21],Clothes[22] * 0.1)
	SetPedHeadOverlayColor(Ped,1,1,Clothes[23],Clothes[23])

	SetPedHeadOverlay(Ped,5,Clothes[24],Clothes[25] * 0.1)
	SetPedHeadOverlayColor(Ped,5,1,Clothes[26],Clothes[26])

	SetPedFaceFeature(Ped,0,Clothes[27] * 0.1)
	SetPedFaceFeature(Ped,1,Clothes[28] * 0.1)
	SetPedFaceFeature(Ped,4,Clothes[29] * 0.1)
	SetPedFaceFeature(Ped,6,Clothes[30] * 0.1)
	SetPedFaceFeature(Ped,8,Clothes[31] * 0.1)
	SetPedFaceFeature(Ped,9,Clothes[32] * 0.1)
	SetPedFaceFeature(Ped,10,Clothes[33] * 0.1)
	SetPedFaceFeature(Ped,12,Clothes[34] * 0.1)
	SetPedFaceFeature(Ped,13,Clothes[35] * 0.1)
	SetPedFaceFeature(Ped,14,Clothes[36] * 0.1)
	SetPedFaceFeature(Ped,15,Clothes[37] * 0.1)
	SetPedFaceFeature(Ped,16,Clothes[38] * 0.1)
	SetPedFaceFeature(Ped,17,Clothes[39] * 0.1)
	SetPedFaceFeature(Ped,19,Clothes[40] * 0.1)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- OPENBARBERSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
function OpenBarbershop(Enabled)
	local Ped = PlayerPedId()

	if Enabled then
		vRP.playAnim(true,{"mp_sleep","bind_pose_180"},true)
		vRP.playAnim(true,{"missfam5_yoga","a2_pose"},true)

		SetEntityHeading(PlayerPedId(),332.21)
		SetFollowPedCamViewMode(0)
		SetNuiFocus(true,true)
		SendNUIMessage({ Open = true, maxHair = GetNumberOfPedDrawableVariations(Ped,2) - 1, fathers = Clothes[1], mothers = Clothes[41], kinship = Clothes[2], eyecolor = Clothes[3], skincolor = Clothes[4], acne = Clothes[5], stains = Clothes[6], freckles = Clothes[7], aging = Clothes[8], hair = Clothes[9], haircolor = Clothes[10], haircolor2 = Clothes[11], makeup = Clothes[12], makeupintensity = Clothes[13], makeupcolor = Clothes[14], lipstick = Clothes[15], lipstickintensity = Clothes[16], lipstickcolor = Clothes[17], eyebrow = Clothes[18], eyebrowintensity = Clothes[19], eyebrowcolor = Clothes[20], beard = Clothes[21], beardintentisy = Clothes[22], beardcolor = Clothes[23], blush = Clothes[24], blushintentisy = Clothes[25], blushcolor = Clothes[26], face00 = Clothes[27], face01 = Clothes[28], face04 = Clothes[29], face06 = Clothes[30], face08 = Clothes[31], face09 = Clothes[32], face10 = Clothes[33], face12 = Clothes[34], face13 = Clothes[35], face14 = Clothes[36], face15 = Clothes[37], face16 = Clothes[38], face17 = Clothes[39], face19 = Clothes[40] })

		if IsDisabledControlJustReleased(0,24) or IsDisabledControlJustReleased(0,142) then
			SendNUIMessage({ type = "click" })
		end

		SetPlayerInvincible(Ped,true)

		if not DoesCamExist(cam) then
			cam = CreateCam("DEFAULT_SCRIPTED_CAMERA",true)
			SetCamCoord(cam,GetEntityCoords(Ped))
			SetCamRot(cam,0.0,0.0,0.0)
			SetCamActive(cam,true)
			RenderScriptCams(true,false,0,true,true)
			SetCamCoord(cam,GetEntityCoords(Ped))
		end

		local Coords = GetEntityCoords(Ped)
		SetCamCoord(cam,Coords["x"] + 0.2,Coords["y"] + 0.5,Coords["z"] + 0.7)
		SetCamRot(cam,0.0,0.0,150.0)
	else
		RenderScriptCams(false,false,0,1,0)
		SetPlayerInvincible(Ped,false)
		DestroyCam(cam,false)

		vRP.removeObjects()
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCATIONS
-----------------------------------------------------------------------------------------------------------------------------------------
local Locations = {
	{ -813.37,-183.85,37.57 },
	{ 138.13,-1706.46,29.3 },
	{ -1280.92,-1117.07,7.0 },
	{ 1930.54,3732.06,32.85 },
	{ 1214.2,-473.18,66.21 },
	{ -33.61,-154.52,57.08 },
	{ -276.65,6226.76,31.7 }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSTART
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	local Tables = {}

	for Number = 1,#Locations do
		Tables[#Tables + 1] = { Locations[Number][1],Locations[Number][2],Locations[Number][3],2.5,"E","Barbearia","Pressione para abrir" }
	end

	TriggerEvent("hoverfy:Insert",Tables)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADOPEN
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local TimeDistance = 999
		if LocalPlayer["state"]["Route"] < 900000 then
			local Ped = PlayerPedId()
			if not IsPedInAnyVehicle(Ped) then
				local Coords = GetEntityCoords(Ped)

				for Number = 1,#Locations do
					local Distance = #(Coords - vec3(Locations[Number][1],Locations[Number][2],Locations[Number][3]))
					if Distance <= 2.5 then
						TimeDistance = 1

						if IsControlJustPressed(1,38) and vSERVER.CheckWanted() then
							OpenBarbershop(true)
						end
					end
				end
			end
		end

		Wait(TimeDistance)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BARBERSHOP:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("barbershop:Open")
AddEventHandler("barbershop:Open",function()
	OpenBarbershop(true)
end)
local radioChannel = 0
local radioNames = {}
local RadioProp = nil

function isRadioEnabled()
	return radioEnabled and LocalPlayer.state.disableRadio == 0
end

function syncRadioData(radioTable,localPlyRadioName)
	radioData = radioTable

	local isEnabled = isRadioEnabled()

	if isEnabled then
		handleRadioAndCallInit()
	end

	radioNames[playerServerId] = localPlyRadioName
end

RegisterNetEvent("pma-voice:syncRadioData",syncRadioData)

function setTalkingOnRadio(plySource,enabled,Name)
	radioData[plySource] = enabled
	TriggerEvent("radio:Display",Name,enabled)

	if not isRadioEnabled() then return end

	local enabled = enabled or callData[plySource]
	toggleVoice(plySource,enabled,"radio")
end
RegisterNetEvent("pma-voice:setTalkingOnRadio",setTalkingOnRadio)

function addPlayerToRadio(plySource,plyRadioName)
	radioData[plySource] = false
	radioNames[plySource] = plyRadioName

	if radioPressed then
		addVoiceTargets(radioData,callData)
	end
end
RegisterNetEvent("pma-voice:addPlayerToRadio",addPlayerToRadio)

function removePlayerFromRadio(plySource)
	if plySource == playerServerId then
		for tgt,_ in pairs(radioData) do
			if tgt ~= playerServerId then
				toggleVoice(tgt,false,"radio")
			end
		end

		radioNames = {}
		radioData = {}

		addVoiceTargets(callData)
	else
		toggleVoice(plySource,false,"radio")

		if radioPressed then
			addVoiceTargets(radioData,callData)
		end

		radioData[plySource] = nil
		radioNames[plySource] = nil
	end
end
RegisterNetEvent("pma-voice:removePlayerFromRadio",removePlayerFromRadio)

RegisterNetEvent("pma-voice:radioChangeRejected",function()
	radioChannel = 0
end)

function setRadioChannel(channel)
	radioEnabled = true
	type_check({ channel,"number" })
	TriggerServerEvent("pma-voice:setPlayerRadio",channel)
	radioChannel = tonumber(channel)

	sendUIMessage({ radioChannel = channel, radioEnabled = radioEnabled })
end

exports("setRadioChannel",setRadioChannel)
exports("SetRadioChannel",setRadioChannel)

exports("removePlayerFromRadio",function()
	radioEnabled = false
	setRadioChannel(0)
end)

exports("addPlayerToRadio",function(_radio)
	local radio = tonumber(_radio)
	if radio then
		setRadioChannel(radio)
	end
end)

local function getRadioAnimData()
	if GetResourceState("core-radio") == "started" then
		local ok, data = pcall(exports["core-radio"].getRadioAnimData, exports["core-radio"])
		if ok and data then return data end
	end
	return { dict = "random@arrests", anim = "generic_radio_chatter", blend = 8.0, blendOut = 0.0, flag = 49 }
end

function loadAnimDictCustom(dict)
	if not HasAnimDictLoaded(dict) then
		RequestAnimDict(dict)
		while not HasAnimDictLoaded(dict) do
			Wait(10)
		end
	end
end

RegisterCommand("+radiotalk",function()
	local Ped = PlayerPedId()
	if IsPedSwimming(Ped) or GetEntityHealth(Ped) <= 100 or LocalPlayer["state"]["Handcuff"] or IsPlayerFreeAiming(PlayerId()) or not isRadioEnabled() then
		return
	end

	if not radioPressed then
		if radioChannel > 0 then
			addVoiceTargets(radioData,callData)
			TriggerServerEvent("pma-voice:setTalkingOnRadio",true)
			TriggerServerEvent('pessoafalando',true,radioChannel)
			radioPressed = true
			playMicClicks(true)

			local ad = getRadioAnimData()

			loadAnimDictCustom(ad.dict)
			TaskPlayAnim(Ped, ad.dict, ad.anim, ad.blend, ad.blendOut, -1, ad.flag, 0, false, false, false)

			if ad.bone then
				local BoneIndex = GetPedBoneIndex(Ped, ad.bone)
				local Hash = GetHashKey("prop_cs_hand_radio")
				local Coords = GetOffsetFromEntityInWorldCoords(Ped,0.0,0.0,-5.0)
				RadioProp = CreateObject(Hash,Coords.x,Coords.y,Coords.z,false,false,false)

				SetEntityCollision(RadioProp,false,false)
				SetEntityCompletelyDisableCollision(RadioProp,true,true)
				AttachEntityToEntity(RadioProp,Ped,BoneIndex,ad.coords.x,ad.coords.y,ad.coords.z,ad.rot.x,ad.rot.y,ad.rot.z,true,false,false,false,ad.vertex or 1,true)
			end

			CreateThread(function()
				TriggerEvent("pma-voice:radioActive",true)
				LocalPlayer.state:set("radioActive",true,true)
				local checkFailed = false

				while radioPressed do
					local Ped = PlayerPedId()
					if radioChannel < 0 or GetEntityHealth(Ped) <= 100 or not isRadioEnabled() then
						checkFailed = true
						break
					end

					if not IsEntityPlayingAnim(Ped,ad.dict,ad.anim,3) then
						TaskPlayAnim(Ped,ad.dict,ad.anim,ad.blend,ad.blendOut,-1,ad.flag,0,false,false,false)
					end

					SetControlNormal(0,249,1.0)
					SetControlNormal(1,249,1.0)
					SetControlNormal(2,249,1.0)
					DisableControlAction(0,24,true)
					DisableControlAction(0,25,true)
					DisableControlAction(0,257,true)
					DisableControlAction(0,140,true)
					DisableControlAction(0,142,true)

					Wait(0)
				end

				if checkFailed then
					ExecuteCommand("-radiotalk")
				end
			end)
		end
	end
end,false)

RegisterCommand("-radiotalk",function()
	if radioChannel > 0 and radioPressed then
		radioPressed = false
		MumbleClearVoiceTargetPlayers(voiceTarget)
		addVoiceTargets(callData)
		TriggerEvent("pma-voice:radioActive",false)
		LocalPlayer.state:set("radioActive",false,true)
		playMicClicks(false)

		local ad = getRadioAnimData()
		StopAnimTask(PlayerPedId(),ad.dict,ad.anim,-4.0)
		TriggerServerEvent("pma-voice:setTalkingOnRadio",false)
		TriggerServerEvent('pessoafalando',false,radioChannel)

		if DoesEntityExist(RadioProp) then
			DeleteObject(RadioProp)
		end

		RadioProp = nil
	end
end,false)

RegisterKeyMapping("+radiotalk","Dialogar no rádio.","keyboard","CAPITAL")

function syncRadio(_radioChannel)
	radioChannel = tonumber(Channel)
end
RegisterNetEvent("pma-voice:clSetPlayerRadio",syncRadio)

function handleRadioEnabledChanged(wasRadioEnabled)
	if wasRadioEnabled then
		syncRadioData(radioData,"")
	else
		removePlayerFromRadio(playerServerId)
	end
end

local function addRadioDisableBit(bit)
	local curVal = LocalPlayer.state.disableRadio or 0
	curVal = curVal | bit
	LocalPlayer.state:set("disableRadio",curVal,true)
end
exports("addRadioDisableBit",addRadioDisableBit)

local function removeRadioDisableBit(bit)
	local curVal = LocalPlayer.state.disableRadio or 0
	curVal = curVal & (~bit)
	LocalPlayer.state:set("disableRadio",curVal,true)
end
exports("removeRadioDisableBit",removeRadioDisableBit)
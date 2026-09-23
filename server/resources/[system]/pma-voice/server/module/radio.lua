local radioChecks = {}

function canJoinChannel(source,radioChannel)
	if radioChecks[radioChannel] then
		return radioChecks[radioChannel](source)
	end

	return true
end

function addChannelCheck(channel,cb)
	radioChecks[channel] = cb
end
exports("addChannelCheck",addChannelCheck)

local function radioNameGetter_orig(source)
	return GetPlayerName(source)
end
local radioNameGetter = radioNameGetter_orig

function overrideRadioNameGetter(channel,cb)
	radioNameGetter = cb
end
exports("overrideRadioNameGetter",overrideRadioNameGetter)

function addPlayerToRadio(source,radioChannel)
	if not canJoinChannel(source,radioChannel) then
		TriggerClientEvent("pma-voice:radioChangeRejected",source)
		TriggerClientEvent("pma-voice:removePlayerFromRadio",source,source)

		return false
	end

	radioData[radioChannel] = radioData[radioChannel] or {}

	local playerName = radioNameGetter(source)

	for player in pairs(radioData[radioChannel]) do
		TriggerClientEvent("pma-voice:addPlayerToRadio",player,source,playerName)
	end

	voiceData[source] = voiceData[source] or defaultTable(source)

	voiceData[source].radio = radioChannel
	radioData[radioChannel][source] = false

	TriggerClientEvent("pma-voice:syncRadioData",source,radioData[radioChannel],playerName)

	return true
end

function removePlayerFromRadio(source,radioChannel)
	local channel = radioData[radioChannel]
	if not channel then
		return false
	end

	for player in pairs(channel) do
		TriggerClientEvent("pma-voice:removePlayerFromRadio",player,source)
	end

	channel[source] = nil

	local plyVoice = voiceData[source]
	if not plyVoice then
		plyVoice = defaultTable(source)
		voiceData[source] = plyVoice
	end

	plyVoice.radio = 0
end

function setPlayerRadio(source,_radioChannel)
	local plyVoice = voiceData[source]
	if not plyVoice then
		plyVoice = defaultTable(source)
		voiceData[source] = plyVoice
	end

	local resource = GetInvokingResource()
	local radioChannel = tonumber(_radioChannel) or 0

	if not _radioChannel and not resource then
		return
	end

	if resource then
		TriggerClientEvent("pma-voice:clSetPlayerRadio",source,radioChannel)
	end

	local current = plyVoice.radio

	if radioChannel > 0 then
		if current > 0 then
			removePlayerFromRadio(source,current)
		end

		local success = addPlayerToRadio(source,radioChannel)
		Player(source).state.radioChannel = success and radioChannel or 0
	else
		if current > 0 then
			removePlayerFromRadio(source,current)
		end

		Player(source).state.radioChannel = 0
	end
end
exports("setPlayerRadio",setPlayerRadio)

RegisterNetEvent("pma-voice:setPlayerRadio",function(radioChannel)
	setPlayerRadio(source,radioChannel)
end)

function setTalkingOnRadio(Talking)
	local source = source
	local plyVoice = voiceData[source]

	if not plyVoice then
		plyVoice = defaultTable(source)
		voiceData[source] = plyVoice
	end

	local radioId = plyVoice.radio
	local radioTbl = radioData[radioId]
	if not radioTbl then
		return false
	end

	radioTbl[source] = Talking

	for player in pairs(radioTbl) do
		async(function()
			if player ~= source then
				TriggerClientEvent("pma-voice:setTalkingOnRadio",player,source,Talking,Player(source).state.Name or "Desconhecido")
			end
		end)
	end
end
RegisterNetEvent("pma-voice:setTalkingOnRadio",setTalkingOnRadio)

AddEventHandler("onResourceStop",function(resource)
	for channel,cfxFunctionRef in pairs(radioChecks) do
		local ref = cfxFunctionRef.__cfx_functionReference
		if ref and string.find(ref,resource,1,true) then
			radioChecks[channel] = nil
		end
	end

	if type(radioNameGetter) == "table" then
		local ref = radioNameGetter.__cfx_functionReference
		if ref and string.find(ref,resource,1,true) then
			radioNameGetter = radioNameGetter_orig
		end
	end
end)
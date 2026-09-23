-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local usedCameras = {}
local playerCameras = {}
local playerSpotlights = {}

GlobalState.heliSpotlightsActive = 0

-----------------------------------------------------------------------------------------------------------------------------------------
-- ENTERCAMERA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('helicam:enterCamera')
AddEventHandler('helicam:enterCamera', function(netId)
	local source = source

	if not netId then
		TriggerClientEvent('helicam:enterCamera', source, false)
		return
	end

	local entity = NetworkGetEntityFromNetworkId(netId)
	if not DoesEntityExist(entity) then
		TriggerClientEvent('helicam:enterCamera', source, false)
		return
	end

	if usedCameras[netId] and usedCameras[netId] ~= source then
		TriggerClientEvent('helicam:enterCamera', source, false)
		return
	end

	usedCameras[netId] = source
	playerCameras[source] = netId
	Entity(entity).state:set('heliCamInUse', true, true)

	TriggerClientEvent('helicam:enterCamera', source, true)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- LEAVECAMERA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('helicam:leaveCamera')
AddEventHandler('helicam:leaveCamera', function(netId)
	local source = source

	if not netId then
		netId = playerCameras[source]
	end

	if netId then
		if usedCameras[netId] == source then
			usedCameras[netId] = nil
		end

		local entity = NetworkGetEntityFromNetworkId(netId)
		if DoesEntityExist(entity) then
			Entity(entity).state:set('heliCamInUse', false, true)
		end
	end

	if playerCameras[source] then
		playerCameras[source] = nil
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SETSTATEBAG
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('helicam:setStateBag')
AddEventHandler('helicam:setStateBag', function(netId, bagName, value)
	if netId and bagName then
		local entity = NetworkGetEntityFromNetworkId(netId)
		if DoesEntityExist(entity) then
			Entity(entity).state:set(bagName, value, true)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- TOGGLESPOTLIGHT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('helicam:toggleSpotlight')
AddEventHandler('helicam:toggleSpotlight', function(state)
	local source = source

	if state then
		if not playerSpotlights[source] then
			playerSpotlights[source] = true
			GlobalState.heliSpotlightsActive = (GlobalState.heliSpotlightsActive or 0) + 1
		end
	else
		if playerSpotlights[source] then
			playerSpotlights[source] = nil
			if GlobalState.heliSpotlightsActive and GlobalState.heliSpotlightsActive > 0 then
				GlobalState.heliSpotlightsActive = GlobalState.heliSpotlightsActive - 1
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERDROPPED
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('playerDropped', function()
	local source = source

	local netId = playerCameras[source]
	if netId then
		usedCameras[netId] = nil
		playerCameras[source] = nil

		local entity = NetworkGetEntityFromNetworkId(netId)
		if DoesEntityExist(entity) then
			Entity(entity).state:set('heliCamInUse', false, true)
		end
	end

	if playerSpotlights[source] then
		playerSpotlights[source] = nil
		if GlobalState.heliSpotlightsActive and GlobalState.heliSpotlightsActive > 0 then
			GlobalState.heliSpotlightsActive = GlobalState.heliSpotlightsActive - 1
		end
	end
end)

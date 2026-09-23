local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

local playerServerID = GetPlayerServerId(PlayerId())
local playersInRadio, currentRadioChannel, currentRadioChannelName = {}, nil, nil
local allowedToSeeRadioList, radioListVisibility = true, true
local temporaryName = "temporaryPlayerNameAsAWorkaroundForABugInPMA-VOICEWhichEventsGetCalledTwiceWhileThePlayerConnectsToTheRadioForFirstTime"

local function closeTheRadioList()
    playersInRadio, currentRadioChannel, currentRadioChannelName = {}, nil, nil
    SendNUIMessage({ clearRadioList = true })
end

local function modifyTheRadioListVisibility(state)
    SendNUIMessage({ changeVisibility = true, visible = (allowedToSeeRadioList and state) or false })
end

local function addPlayerToTheRadioList(playerId, playerName)
    if playersInRadio[playerId] then return end
    playersInRadio[playerId] = temporaryName
    playersInRadio[playerId] = playerName
end

local function removePlayerFromTheRadioList(playerId)
    if not playersInRadio[playerId] then return end
    if playersInRadio[playerId] == temporaryName then return end
    if playerId == playerServerID then closeTheRadioList() return end
    playersInRadio[playerId] = nil
end

RegisterNetEvent("pma-voice:addPlayerToRadio", function(playerId)
    addPlayerToTheRadioList(playerId,callback.await(Shared.Callback.getPlayerName, false, playerId))
end)

RegisterNetEvent("pma-voice:removePlayerFromRadio", function(playerId)
    removePlayerFromTheRadioList(playerId)
end)

RegisterNetEvent("pma-voice:syncRadioData", function()
    closeTheRadioList()
    local _playersInRadio
    _playersInRadio, currentRadioChannel, currentRadioChannelName = callback.await(Shared.Callback.getPlayersInRadio, false)
    for playerId, playerName in pairs(_playersInRadio) do
        addPlayerToTheRadioList(playerId, playerName)
    end
    _playersInRadio = nil
end)

-- set talkingState on radio for self
RegisterNetEvent("pma-voice:radioActive")
AddEventHandler("pma-voice:radioActive", function(talkingState)
    if talkingState then
        SendNUIMessage({ radioId = playerServerID, radioName = playersInRadio[playerServerID], channel = currentRadioChannelName })
        SendNUIMessage({ radioId = playerServerID, radioTalking = talkingState })
    else
        SendNUIMessage({ radioId = playerServerID })
    end
end)

-- set talkingState on radio for other radio members
RegisterNetEvent("pma-voice:setTalkingOnRadio")
AddEventHandler("pma-voice:setTalkingOnRadio", function(source, talkingState)
    if talkingState then
        SendNUIMessage({ radioId = source, radioName = playersInRadio[source], channel = currentRadioChannelName })
        SendNUIMessage({ radioId = source, radioTalking = talkingState })
    else
        SendNUIMessage({ radioId = source })
    end
end)

AddStateBagChangeHandler(Shared.State.allowedToSeeRadioList, ("player:%s"):format(playerServerID), function(bagName, key, value)
    local receivedPlayerServerId = tonumber(bagName:gsub('player:', ''), 10)
    if not receivedPlayerServerId or receivedPlayerServerId ~= playerServerID then return end
    allowedToSeeRadioList = (value == nil and false) or value
    modifyTheRadioListVisibility(radioListVisibility)
end)


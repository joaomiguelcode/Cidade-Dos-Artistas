local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

local channelNames = {}

local function getPlayerDisplayName(playerId)
    local Passport = vRP.Passport(playerId)
    if Passport then
        local custom = Player(playerId).state[Shared.State.nameInRadio]
        if custom and custom ~= "" then
            return custom
        end

        local Identity = vRP.Identity(Passport)
        if Identity then
            return Identity["name"].." "..Identity["name2"]
        end
    end

    return GetPlayerName(playerId) or ("Jogador #"..playerId)
end

callback.register(Shared.Callback.getPlayerName, function(source, targetPlayerId)
    local target = targetPlayerId or source
    return getPlayerDisplayName(target)
end)

callback.register(Shared.Callback.getPlayersInRadio, function(source)
    local channel = Player(source).state.radioChannel or 0
    local channelName = channelNames[channel] or tostring(channel)
    local players = {}

    if channel > 0 then
        for _, playerId in ipairs(GetPlayers()) do
            local pId = tonumber(playerId)
            if Player(pId).state.radioChannel == channel then
                players[pId] = getPlayerDisplayName(pId)
            end
        end
    end

    return players, channel, channelName
end)

if Config.LetPlayersChangeVisibilityOfRadioList then
    RegisterCommand(Config.RadioListVisibilityCommand, function(source)
        local state = Player(source).state[Shared.State.allowedToSeeRadioList]
        if state == nil then
            state = not Config.HideRadioListVisibilityByDefault
        end
        Player(source).state:set(Shared.State.allowedToSeeRadioList, not state, true)
    end)
end

if Config.LetPlayersSetTheirOwnNameInRadio then
    RegisterCommand(Config.RadioListChangeNameCommand, function(source, args)
        local newName = table.concat(args, " ")
        if newName and newName ~= "" then
            Player(source).state:set(Shared.State.nameInRadio, newName, true)
            TriggerClientEvent("Notify", source, "verde", "Nome no rádio alterado para: <b>"..newName.."</b>.", 5000)
        else
            Player(source).state:set(Shared.State.nameInRadio, nil, true)
            TriggerClientEvent("Notify", source, "amarelo", "Nome no rádio restaurado para o original.", 5000)
        end
    end)
end

if Config.LetPlayersChangeRadioChannelsName then
    RegisterCommand(Config.ModifyRadioChannelNameCommand, function(source, args)
        local channel = Player(source).state.radioChannel or 0
        if channel > 0 then
            local newName = table.concat(args, " ")
            if newName and newName ~= "" then
                channelNames[channel] = newName
                TriggerClientEvent("Notify", source, "verde", "Canal <b>"..channel.."</b> renomeado para: <b>"..newName.."</b>.", 5000)
            else
                channelNames[channel] = nil
                TriggerClientEvent("Notify", source, "amarelo", "Nome do canal restaurado.", 5000)
            end
        end
    end)
end

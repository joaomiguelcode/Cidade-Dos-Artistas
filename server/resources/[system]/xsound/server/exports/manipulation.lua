function Distance(source, name_, distance_)
    if soundInfo[name_] then
        soundInfo[name_].distance = distance_
    end

    TriggerClientEvent("xsound:stateSound", source, "distance", {
        soundId = name_,
        distance = distance_,
    })
end

exports('Distance', Distance)

function Position(source, name_, pos)
    if soundInfo[name_] then
        soundInfo[name_].position = pos
    end

    TriggerClientEvent("xsound:stateSound", source, "position", {
        soundId = name_,
        position = pos,
    })
end

exports('Position', Position)

function Destroy(source, name_)
    soundInfo[name_] = nil

    TriggerClientEvent("xsound:stateSound", source, "destroy", {
        soundId = name_,
    })
end

exports('Destroy', Destroy)

function Resume(source, name_)
    if soundInfo[name_] then
        soundInfo[name_].playing = true
        soundInfo[name_].paused = false
    end

    TriggerClientEvent("xsound:stateSound", source, "resume", {
        soundId = name_,
    })
end

exports('Resume', Resume)

function Pause(source, name_)
    if soundInfo[name_] then
        soundInfo[name_].playing = false
        soundInfo[name_].paused = true
    end

    TriggerClientEvent("xsound:stateSound", source, "pause", {
        soundId = name_,
    })
end

exports('Pause', Pause)

function setVolume(source, name_, vol)
    if soundInfo[name_] then
        soundInfo[name_].volume = vol
    end

    TriggerClientEvent("xsound:stateSound", source, "volume", {
        soundId = name_,
        volume = vol,
    })
end

exports('setVolume', setVolume)

function setVolumeMax(source, name_, vol)
    if soundInfo[name_] then
        soundInfo[name_].volume = vol
    end

    TriggerClientEvent("xsound:stateSound", source, "volume", {
        soundId = name_,
        volume = vol,
    })
end

exports('setVolumeMax', setVolumeMax)

function setTimeStamp(source, name_, timestamp)
    if soundInfo[name_] then
        soundInfo[name_].timeStamp = timestamp
    end

    TriggerClientEvent("xsound:stateSound", source, "timestamp", {
        soundId = name_,
        time = timestamp,
    })
end

exports('setTimeStamp', setTimeStamp)

function destroyOnFinish(source, id, bool)
    if soundInfo[id] then
        soundInfo[id].destroyOnFinish = bool
    end

    TriggerClientEvent("xsound:stateSound", source, "destroyOnFinish", {
        soundId = id,
        value = bool,
    })
end

exports('destroyOnFinish', destroyOnFinish)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GETTERS & STATUS FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
function getLink(name_)
    if soundInfo[name_] then
        return soundInfo[name_].url
    end
    return nil
end

exports('getLink', getLink)

function getPosition(name_)
    if soundInfo[name_] then
        return soundInfo[name_].position
    end
    return nil
end

exports('getPosition', getPosition)

function isLooped(name_)
    if soundInfo[name_] then
        return soundInfo[name_].loop
    end
    return false
end

exports('isLooped', isLooped)

function getInfo(name_)
    return soundInfo[name_]
end

exports('getInfo', getInfo)

function soundExists(name_)
    return soundInfo[name_] ~= nil
end

exports('soundExists', soundExists)

function isPlaying(name_)
    if soundInfo[name_] then
        return soundInfo[name_].playing
    end
    return false
end

exports('isPlaying', isPlaying)

function isPaused(name_)
    if soundInfo[name_] then
        return soundInfo[name_].paused
    end
    return false
end

exports('isPaused', isPaused)

function getDistance(name_)
    if soundInfo[name_] then
        return soundInfo[name_].distance
    end
    return nil
end

exports('getDistance', getDistance)

function getVolume(name_)
    if soundInfo[name_] then
        return soundInfo[name_].volume
    end
    return nil
end

exports('getVolume', getVolume)

function isDynamic(name_)
    if soundInfo[name_] then
        return soundInfo[name_].isDynamic
    end
    return false
end

exports('isDynamic', isDynamic)

function getTimeStamp(name_)
    if soundInfo[name_] then
        return soundInfo[name_].timeStamp or -1
    end
    return -1
end

exports('getTimeStamp', getTimeStamp)

function getMaxDuration(name_)
    if soundInfo[name_] then
        return soundInfo[name_].maxDuration or -1
    end
    return -1
end

exports('getMaxDuration', getMaxDuration)

function getAllAudioInfo()
    return soundInfo
end

exports('getAllAudioInfo', getAllAudioInfo)

-- Clean up any player-specific sounds when a player leaves the server
AddEventHandler("playerDropped", function(reason)
    local src = source
    if not src or src <= 0 then return end

    for soundId, data in pairs(soundInfo) do
        if data.target == src then
            soundInfo[soundId] = nil
        end
    end
end)

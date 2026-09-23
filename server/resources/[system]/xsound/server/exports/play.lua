soundInfo = {}

function getDefaultInfo()
    return {
        volume = 1.0,
        url = "",
        id = "",
        position = nil,
        distance = 10,
        playing = false,
        paused = false,
        loop = false,
        isDynamic = false,
        timeStamp = 0,
        maxDuration = 0,
        destroyOnFinish = true,
    }
end

function PlayUrl(source, name_, url_, volume_, loop_)
    if soundInfo[name_] == nil then soundInfo[name_] = getDefaultInfo() end

    soundInfo[name_].volume = volume_ or 1.0
    soundInfo[name_].url = url_
    soundInfo[name_].id = name_
    soundInfo[name_].playing = true
    soundInfo[name_].paused = false
    soundInfo[name_].loop = loop_ or false
    soundInfo[name_].isDynamic = false
    soundInfo[name_].destroyOnFinish = not (loop_ or false)
    soundInfo[name_].target = source

    TriggerClientEvent("xsound:stateSound", source, "play", {
        soundId = name_,
        url = url_,
        volume = volume_ or 1.0,
        loop = loop_ or false,
    })
end

exports('PlayUrl', PlayUrl)

function PlayUrlPos(source, name_, url_, volume_, pos, loop_)
    if soundInfo[name_] == nil then soundInfo[name_] = getDefaultInfo() end

    soundInfo[name_].volume = volume_ or 1.0
    soundInfo[name_].url = url_
    soundInfo[name_].position = pos
    soundInfo[name_].id = name_
    soundInfo[name_].playing = true
    soundInfo[name_].paused = false
    soundInfo[name_].loop = loop_ or false
    soundInfo[name_].isDynamic = true
    soundInfo[name_].destroyOnFinish = not (loop_ or false)
    soundInfo[name_].target = source

    TriggerClientEvent("xsound:stateSound", source, "playpos", {
        soundId = name_,
        url = url_,
        volume = volume_ or 1.0,
        position = pos,
        loop = loop_ or false,
    })
end

exports('PlayUrlPos', PlayUrlPos)

function TextToSpeech(source, name_, lang, text, volume_, loop_)
    if soundInfo[name_] == nil then soundInfo[name_] = getDefaultInfo() end

    soundInfo[name_].volume = volume_ or 1.0
    soundInfo[name_].url = text
    soundInfo[name_].id = name_
    soundInfo[name_].playing = true
    soundInfo[name_].paused = false
    soundInfo[name_].loop = loop_ or false
    soundInfo[name_].isDynamic = false
    soundInfo[name_].destroyOnFinish = not (loop_ or false)
    soundInfo[name_].target = source

    TriggerClientEvent("xsound:stateSound", source, "texttospeech", {
        soundId = name_,
        lang = lang,
        url = text,
        volume = volume_ or 1.0,
        loop = loop_ or false,
    })
end

exports('TextToSpeech', TextToSpeech)

function TextToSpeechPos(source, name_, lang, text, volume_, pos, loop_)
    if soundInfo[name_] == nil then soundInfo[name_] = getDefaultInfo() end

    soundInfo[name_].volume = volume_ or 1.0
    soundInfo[name_].url = text
    soundInfo[name_].position = pos
    soundInfo[name_].id = name_
    soundInfo[name_].playing = true
    soundInfo[name_].paused = false
    soundInfo[name_].loop = loop_ or false
    soundInfo[name_].isDynamic = true
    soundInfo[name_].destroyOnFinish = not (loop_ or false)
    soundInfo[name_].target = source

    TriggerClientEvent("xsound:stateSound", source, "texttospeechpos", {
        soundId = name_,
        lang = lang,
        url = text,
        volume = volume_ or 1.0,
        position = pos,
        loop = loop_ or false,
    })
end

exports('TextToSpeechPos', TextToSpeechPos)

-- Synchronize active global/positional sounds for new or reconnecting players
RegisterNetEvent("xsound:requestSync")
AddEventHandler("xsound:requestSync", function()
    local src = source
    if not src or src <= 0 then return end

    for soundId, data in pairs(soundInfo) do
        if data.playing and not data.paused then
            if data.target == -1 then
                if data.isDynamic and data.position then
                    TriggerClientEvent("xsound:stateSound", src, "playpos", {
                        soundId = soundId,
                        url = data.url,
                        volume = data.volume,
                        position = data.position,
                        loop = data.loop or false,
                    })
                    if data.distance and data.distance ~= 10 then
                        TriggerClientEvent("xsound:stateSound", src, "distance", {
                            soundId = soundId,
                            distance = data.distance,
                        })
                    end
                else
                    TriggerClientEvent("xsound:stateSound", src, "play", {
                        soundId = soundId,
                        url = data.url,
                        volume = data.volume,
                        loop = data.loop or false,
                    })
                end
            end
        end
    end
end)

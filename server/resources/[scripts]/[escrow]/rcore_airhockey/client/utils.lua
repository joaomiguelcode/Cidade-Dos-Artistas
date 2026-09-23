Models = {
    Table = GetHashKey("prop_airhockey_01"),
    Puck = GetHashKey("proair_hoc_puck"),
    Paddle1 = GetHashKey("prop_air_hoc_paddle_01"),
    Paddle2 = GetHashKey("prop_air_hoc_paddle_02"),
    RcorePaddle = GetHashKey("rcore_airhockey_paddle"),
    RcorePuck = GetHashKey("rcore_airhockey_puck")
}

Keys = {
    Action = 51
}

local _randomseed = math.random(1, 10000)
function RandomNumber(min, max)
    _randomseed = _randomseed + 1
    math.randomseed(_randomseed)
    if max then
        return math.random(min, max)
    else
        return math.random(min)
    end
end

function Clamp(value, min, max)
    if value < min then
        value = min
    elseif value > max then
        value = max
    end
    return value
end

function math.sign(x)
    if x > 0 then
        return 1
    elseif x < 0 then
        return -1
    else
        return 0
    end
end

function CircleCollision(circle1, circle2)
    -- Calculate distance
    local dx = circle2.playablePosition.x - circle1.playablePosition.x
    local dy = circle2.playablePosition.y - circle1.playablePosition.y
    -- local distance = math.sqrt(dx * dx + dy * dy)
    local distance = math.sqrt(math.pow(dx, 2) + math.pow(dy, 2))

    -- Detect collision
    if distance <= (circle1.radius + circle2.radius) then
        return true
    end
    return false
end

function CheckForX(ball, targetY, reversed)
    -- Normalize the velocity vector
    local velocityMagnitude = math.sqrt(ball.velocity.x ^ 2 + ball.velocity.y ^ 2)
    local unitVelocity = vector2(ball.velocity.x / velocityMagnitude, ball.velocity.y / velocityMagnitude)

    -- Calculate the distance to travel to reach the target Y
    local distanceY = targetY - ball.playablePosition.y
    local distance = vector2(distanceY * unitVelocity.x, distanceY)
    if reversed then
        distance = -distance
    end
    -- Calculate the final position
    local finalPosition = vector2(ball.playablePosition.x + distance.x, targetY)

    -- Get X
    return finalPosition.x
end

function DrawText3Ds(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())

    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(0, 0, 0, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 370
    DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 255, 255, 255, 68)
end

function CreateBallCounce(ball, player, applyOnPlayer, maxSpeed)
    -- Calculate overlap size
    local dx = player.playablePosition.x - ball.playablePosition.x
    local dy = player.playablePosition.y - ball.playablePosition.y
    local distance = math.sqrt(math.pow(dx, 2) + math.pow(dy, 2))
    local overlap = ball.radius + player.radius - distance

    -- Move ball out of collision
    local angle = math.atan2(dy, dx)
    local moveX = -(overlap * math.cos(angle))
    local moveY = -(overlap * math.sin(angle))
    ball.playablePosition = vector2(ball.playablePosition.x + moveX, ball.playablePosition.y + moveY)

    -- Apply bounce
    local pushPower = overlap * 3.5
    local nx = pushPower * math.cos(angle + math.pi)
    local ny = pushPower * math.sin(angle + math.pi)
    ball.velocity = vector2(ball.velocity.x + nx, ball.velocity.y + ny)

    -- Limit Velocity
    local speed = math.sqrt(ball.velocity.x ^ 2 + ball.velocity.y ^ 2)
    if speed > maxSpeed then
        local vangle = math.atan2(ball.velocity.y, ball.velocity.x)
        ball.velocity = vector2(maxSpeed * math.cos(vangle), maxSpeed * math.sin(vangle))
    end
    applyOnPlayer = false
    -- Apply opposite velocity to player
    if applyOnPlayer then
        local playerVelocityX = -nx
        local playerVelocityY = -ny
        player.velocity = vector2(playerVelocityY, playerVelocityX)
    end
end

function dot(v1, v2)
    return v1.x * v2.x + v1.y * v2.y
end

function normalize(vector)
    local length = math.sqrt(vector.x * vector.x + vector.y * vector.y)
    return vector2(vector.x / length, vector.y / length)
end

function Repeat(t, length)
    return Clamp(t - math.floor(t / length) * length, 0.0, length)
end

function PingPong(t, length)
    t = Repeat(t, length * 2.0)
    return length - math.abs(t - length)
end

function Vector2Lerp(start, endx, t)
    if t > 1 then
        t = 1
    end
    return start + (endx - start) * t
end

function Vector2Normalized(vec2)
    local length = math.sqrt(vec2.x * vec2.x + vec2.y * vec2.y)
    if length == 0 then
        return {
            x = 0,
            y = 0
        }
    end
    return vector2(vec2.x / length, vec2.y / length)
end

function Vector2MoveTowards(current, target, maxDelta)
    local distance = #(target - current)
    if distance <= maxDelta then
        return target
    end
    return current + Vector2Normalized(target - current) * maxDelta
end

function MoveTowards(current, target, maxDelta)
    if math.abs(target - current) <= maxDelta then
        return target
    end
    return current + math.sign(target - current) * maxDelta
end

function Lerp(a, b, t)
    return a + (b - a) * Clamp(t, 0, 1)
end

function StyleText(text)
    if not Config.UIFontName then
        return text
    end
    return "<font face=\"" .. Config.UIFontName .. "\">" .. text .. "</font>"
end

function DrawNotification(text)
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName(StyleText(text))
    EndTextCommandDisplayHelp(0, false, false, -1)
end

function LoadModelAndWait(modelName)

    if not tonumber(modelName) then
        modelName = GetHashKey(modelName)
    end

    local timeout = GetGameTimer() + 2000
    while not HasModelLoaded(modelName) and GetGameTimer() < timeout do
        RequestModel(modelName)
        Wait(33)
    end
end

function LoadAnimdictAndWait(dictName)
    local timeout = GetGameTimer() + 2000
    RequestAnimDict(dictName)
    while GetGameTimer() < timeout and not HasAnimDictLoaded(dictName) do
        Wait(33)
    end
end

function LoadHockeyElements()
    LoadModelAndWait(Models.Table)
    LoadModelAndWait(Models.Puck)
    LoadModelAndWait(Models.Paddle1)
    LoadModelAndWait(Models.Paddle2)
end

function GetHockeyTables()
    local tables = {}
    local gamePool = GetGamePool("CObject")
    for k, v in pairs(gamePool) do
        local m = GetEntityModel(v)
        if m == Models.Table then
            table.insert(tables, {
                entity = v,
                coords = GetEntityCoords(v),
                heading = GetEntityHeading(v)
            })
        end
    end
    return tables
end

function SetPedBrave(ped)
    SetEntityCanBeDamaged(ped, false)
    SetPedAsEnemy(ped, 0)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetPedResetFlag(ped, 249, true)
    SetPedConfigFlag(ped, 185, true)
    SetPedConfigFlag(ped, 108, true)
    Citizen.InvokeNative(0x352E2B5CF420BF3B, ped, 1)
    SetPedCanEvasiveDive(ped, 0)
    Citizen.InvokeNative(0x2F3C3D9F50681DE4, ped, 1)
    SetPedCanRagdollFromPlayerImpact(ped, 0)
    SetPedConfigFlag(ped, 208, true)
end

function CallScaleformFunction(scaleform, returndata, the_function, ...)
    BeginScaleformMovieMethod(scaleform, the_function)
    local args = {...}

    if args ~= nil then
        for i = 1, #args do
            local arg_type = type(args[i])

            if arg_type == "boolean" then
                ScaleformMovieMethodAddParamBool(args[i])
            elseif arg_type == "number" then
                if not string.find(args[i], '%.') then
                    ScaleformMovieMethodAddParamInt(args[i])
                else
                    ScaleformMovieMethodAddParamFloat(args[i])
                end
            elseif arg_type == "string" then
                ScaleformMovieMethodAddParamTextureNameString(args[i])
            end
        end

        if not returndata then
            EndScaleformMovieMethod()
        else
            return EndScaleformMovieMethodReturnValue()
        end
    end
end

function FullscreenPrompt(caption, message, onclose, bottomText)
    Citizen.CreateThread(function()

        if not bottomText then
            bottomText = ""
        end

        PROMPT_ACTIVE = true
        local s = RequestScaleformMovie("POPUP_WARNING")
        local t = GetGameTimer() + 2000
        while not HasScaleformMovieLoaded(s) and GetGameTimer() < t do
            Wait(33)
        end

        if GetGameTimer() < t then
            CallScaleformFunction(s, false, "SHOW_POPUP_WARNING", 1000, StyleText(caption), StyleText(message), "",
                true, 0, StyleText(bottomText))
            while true do
                DisableControlAction(2, 176, true)
                DisableControlAction(2, 191, true)
                DisableControlAction(2, 177, true)

                if IsDisabledControlJustPressed(2, 176) or IsDisabledControlJustPressed(2, 191) then
                    if onclose then
                        onclose(true)
                    end
                    break
                end

                if IsDisabledControlJustPressed(2, 177) then
                    if onclose then
                        onclose(false)
                    end
                    break
                end

                DrawScaleformMovieFullscreen(s, 255, 255, 255, 255, 0)
                Wait(0)
            end
        else
            onclose(true)
        end
        SetScaleformMovieAsNoLongerNeeded(s)
        Wait(1000)
        PROMPT_ACTIVE = false
    end)
end

function CallScaleformFunction(scaleform, returndata, the_function, ...)
    BeginScaleformMovieMethod(scaleform, the_function)
    local args = {...}

    if args ~= nil then
        for i = 1, #args do
            local arg_type = type(args[i])

            if arg_type == "boolean" then
                ScaleformMovieMethodAddParamBool(args[i])
            elseif arg_type == "number" then
                if not string.find(args[i], '%.') then
                    ScaleformMovieMethodAddParamInt(args[i])
                else
                    ScaleformMovieMethodAddParamFloat(args[i])
                end
            elseif arg_type == "string" then
                ScaleformMovieMethodAddParamTextureNameString(args[i])
            end
        end

        if not returndata then
            EndScaleformMovieMethod()
        else
            return EndScaleformMovieMethodReturnValue()
        end
    end
end

function RequestScaleformMovieAndWait(scaleformName)
    local x = RequestScaleformMovie(scaleformName)
    local t = GetGameTimer() + 2000
    while not HasScaleformMovieLoaded(x) and GetGameTimer() < t do
        Wait(33)
    end
    if not HasScaleformMovieLoaded(x) then
        return nil
    end
    return x
end

function removePlaceholderText(inputString)
    local outputString = inputString:gsub("~.-~", "")
    return outputString
end

function ShowCustomNotify(text)
    if Config.NotifySystem == 2 and text and text ~= "" then
        exports['okokNotify']:Alert("", removePlaceholderText(text), 3000, 'info', true)
    elseif Config.NotifySystem == 3 and text and text ~= "" then
        ESX.ShowNotification(removePlaceholderText(text), "info", 3000)
    elseif Config.NotifySystem == 4 and text and text ~= "" then
        QBCore.Functions.Notify(removePlaceholderText(text), "primary", 3000)
    elseif Config.NotifySystem == 5 and text and text ~= "" then
        lib.notify({
            description = text,
            duration = 3000,
            type = 'info'
        })
    end
end

function ShowFullscreenBonusNotify(captionText, mainText, descriptionText, color, stats)
    Citizen.CreateThread(function()
        local scaleform = RequestScaleformMovieAndWait('HEIST_CELEBRATION')
        local scaleform_bg = RequestScaleformMovieAndWait('HEIST_CELEBRATION_BG')
        local scaleform_fg = RequestScaleformMovieAndWait('HEIST_CELEBRATION_FG')
        local scaleform_list = {scaleform, scaleform_bg, scaleform_fg}
        if not color then
            color = "HUD_COLOUR_PAUSE_BG"
        end

        for key, scaleform_handle in pairs(scaleform_list) do
            CallScaleformFunction(scaleform_handle, false, "SET_PAUSE_DURATION", 2)
            CallScaleformFunction(scaleform_handle, false, "CREATE_STAT_WALL", 1, color, 1)
            CallScaleformFunction(scaleform_handle, false, "ADD_BACKGROUND_TO_WALL", 1, 50, 1)
            CallScaleformFunction(scaleform_handle, false, "ADD_MISSION_RESULT_TO_WALL", 1, StyleText(captionText),
                StyleText(mainText), StyleText(descriptionText), true, true, true)

            CallScaleformFunction(scaleform_handle, false, "SHOW_STAT_WALL", 1)
            CallScaleformFunction(scaleform_handle, false, "createSequence", 1, 1, 1)
            CallScaleformFunction(scaleform_handle, false, "PAUSE", 1, 1000)

            if stats and #stats > 0 then
                CallScaleformFunction(scaleform_handle, false, "CREATE_STAT_TABLE", 1, 1)
                for i = #stats, 1, -1 do
                    CallScaleformFunction(scaleform_handle, false, "ADD_STAT_TO_TABLE", 1, 1, StyleText(stats[i]), "",
                        true, true, 1, false, 1)
                end
            end
        end

        local timeout = GetGameTimer() + 10000
        CreateThread(function()
            Wait(500)
            PlaySoundFrontend(-1, "MEDAL_UP", "HUD_MINI_GAME_SOUNDSET", 1)
            StartScreenEffect("HeistCelebToast")
        end)

        while GetGameTimer() < timeout do
            Citizen.Wait(1)
            DrawScaleformMovieFullscreenMasked(scaleform_bg, scaleform_fg, 255, 255, 255, 50)
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
        end
    end)
end

function RestrictControls()
    if INVENTORY_BLOCKED then
        DisableControlAction(2, 289, true)
    end
    DisablePlayerFiring(PlayerId(), true)
    for k, v in pairs(Config.RestrictedControls) do
        DisableControlAction(0, v, true)
    end
    -- movement
    for i = 20, 40, 1 do
        DisableControlAction(0, i, true)
    end
end

function GetMyPedNetworkId()
    local id = PedToNet(PlayerPedId())

    -- double check, *=*
    if NetToPed(id) == PlayerPedId() then
        return id
    else
        -- failed to get network id for my ped
        return nil
    end
end

function CommaValue(amount)
    local formatted = amount
    while true do
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if (k == 0) then
            break
        end
    end
    return formatted
end

function FormatPrice(ammount)
    return CommaValue(ammount) .. " $"
end

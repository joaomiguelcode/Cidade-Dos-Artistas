-- save table data
function CreateAirHockeyTable(coords, heading)
    local o = {}
    o.tableCoords = coords
    o.tableHeading = heading

    o.subscribed = false
    o.nearBy = false
    o.playableObjects = {}
    o.replayObjects = {}
    o.localSide = 1

    o.lastBallHit = 0
    o.lastMovementUpdate = 0
    o.lastReplayPack = 0

    o.replayFrames = {}
    o.camera = nil
    o.replayActive = false

    o.resetBall = function()
        o.ballData = {
            playablePosition = vector2(0.0, 0.0),
            hitOrigin = 0,
            enemyHitTime = 0,
            tuched = false,
            radius = 0.05,
            x = 0.0,
            y = 0.0,
            velocity = vector2(0, 0),
            pendingState = nil,
            actualSide = 0,
            sideChangedTime = 0,
            allowSound = true,
            skin = 1,
        }
    end

    o.resetPositions = function()
        o.resetBall()
        o.playerData = {{
            closeHitsAllowed = 3,
            radius = 0.075,
            ped = nil,
            phase = 0.0,
            scene = nil,
            actualPosition = vector2(0, 0),
            velocity = vector2(0, 0),
            position = vector2(0, 0),
            remotePosition = vector2(0, 0),
            moveSpeed = 0,
            x = 0.0,
            y = 0.0,
            replayX = 0,
            playablePosition = vector2(0, 0),
            replayY = 0,
            skin = 1,
        }, {
            closeHitsAllowed = 3,
            radius = 0.075,
            ped = nil,
            phase = 0.0,
            scene = nil,
            actualPosition = vector2(0, 0),
            velocity = vector2(0, 0),
            mass = 1.0,
            position = vector2(0, 0),
            remotePosition = vector2(0, 0),
            x = 0.0,
            y = 0.0,
            playablePosition = vector2(0, 0),
            moveSpeed = 0,
            replayX = 0,
            replayY = 0,
            skin = 1,
        }}
    end

    -- create paddles and ball object
    o.createPlayableObjects = function()
        -- delete old if exists
        o.deletePlayableObjects()

        LoadHockeyElements()
        o.playableObjects[1] = CreateObject(Models.RcorePuck, o.tableCoords, false, false, false)
        o.playableObjects[2] = CreateObject(Models.RcorePaddle, o.tableCoords, false, false, false)
        o.playableObjects[3] = CreateObject(Models.RcorePaddle, o.tableCoords, false, false, false)

        o.disableCollisions()
    end

    -- create paddles and ball object for replay
    o.createReplayObjects = function()
        -- delete old if exists
        o.deleteReplayObjects()

        LoadHockeyElements()
        o.replayObjects[1] = CreateObject(Models.RcorePuck, o.tableCoords, false, false, false)
        o.replayObjects[2] = CreateObject(Models.RcorePaddle, o.tableCoords, false, false, false)
        o.replayObjects[3] = CreateObject(Models.RcorePaddle, o.tableCoords, false, false, false)
        o.disableCollisions()
    end

    o.startReplayer = function()
        if o.replayActive then
            return
        end
        o.replayActive = true
        o.replayFrames = {}
        CreateThread(function()
            o.createReplayObjects()

            local t = GetGameTimer() + 3000
            RequestAnimDict("rcore@airhockey")
            while GetGameTimer() < t and not HasAnimDictLoaded("rcore@airhockey") do
                Wait(33)
            end

            for i = 1, 2 do
                if not o.players or not o.players[i] or not o.players[i].netId then
                    o.replayActive = false
                    return
                end
            end

            for i = 1, 2 do
                local x = o.players[i]
                if x then
                    local state = GetCloneOfNetworkedPed(x.playerId, x.netId)
                    local pSide = x.side
                    o.playerData[pSide].cloneState = state
                    if state then
                        o.playerData[pSide].ped = state.clone
                        o.playerData[pSide].pedOriginal = state.ped
                        FreezeEntityPosition(state.clone, true)
                        ToggleUse(state, false)
                    else
                        o.playerData[pSide].ped = 0
                        o.playerData[pSide].pedOriginal = 0
                    end
                    TaskPlayAnim(o.playerData[pSide].ped, "rcore@airhockey", "gameplay_clip", 8.0, 1.0, 0.0001, 01, 0,
                        0, 0, 0)
                end
            end

            for i = 1, 2 do
                if not o.players or not o.players[i] or not o.players[i].netId then
                    o.replayActive = false
                    return
                end
            end

            -- wait for enough frames
            t = GetGameTimer() + 3000
            while GetGameTimer() < t and #o.replayFrames < 60 do
                Wait(33)
            end

            local nextPlayTime = GetGameTimer()
            local noFramesTime = 0
            local frame = nil
            local playerIds = {o.players[1].playerId, o.players[2].playerId}
            local textWorldPos = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, -0.0, -0.0, 1.5)

            while GetGameTimer() - o.lastReplayPack < 1500 do
                -- display replay frame
                local gt = GetGameTimer()

                if gt >= nextPlayTime and #o.replayFrames > 1 then
                    frame = o.replayFrames[1]
                    table.remove(o.replayFrames, 1)
                    nextPlayTime = gt + 33
                end

                o.setReplayerPosition(1, frame.p1x, frame.p1y, frame.s)
                o.setReplayerPosition(2, frame.p2x, frame.p2y, frame.s)
                o.setReplayBallPosition(frame.ballx, frame.bally)

                if frame.skins then
                    o.playerData[1].skin = frame.skins[1]
                    o.playerData[2].skin = frame.skins[2]
                    o.ballData.skin = frame.skins[3]
                    SetObjectTextureVariant(o.replayObjects[1], o.ballData.skin - 1)
                    SetObjectTextureVariant(o.replayObjects[2], o.playerData[1].skin - 1)
                    SetObjectTextureVariant(o.replayObjects[3], o.playerData[2].skin - 1)
                end

                if Config.DrawTableScore then
                    DrawText3Ds(textWorldPos.x, textWorldPos.y, textWorldPos.z, o.players[1].name .. "(" ..
                        o.players[1].score .. ") vs " .. o.players[2].name .. "(" .. o.players[2].score .. ")")
                end
                Wait(0)
            end
            o.deleteReplayObjects()
            o.replayActive = false
            ScenePed_EndForPlayer(playerIds[1])
            ScenePed_EndForPlayer(playerIds[2])
        end)
    end

    o.packFrame = function(isFinal, sendSkins)
        local pack = {
            p1x = o.playerData[1].playablePosition.x,
            p1y = o.playerData[1].playablePosition.y,
            p2x = o.playerData[2].playablePosition.x,
            p2y = o.playerData[2].playablePosition.y,
            ballx = o.ballData.playablePosition.x,
            bally = o.ballData.playablePosition.y,
            s = s_Session.recordPeds
        }

        if sendSkins then
            pack.skins = {o.playerData[1].skin, o.playerData[2].skin, o.ballData.skin}
        end

        table.insert(s_Session.replayPack, pack)
        if #s_Session.replayPack >= 30 or isFinal then
            TriggerServerEvent("AirHockey:ReplayPack", o.tableCoords, s_Session.replayPack, isFinal)
            s_Session.replayPack = {}
        end
    end

    o.replayPackReceived = function(pack)
        o.lastReplayPack = GetGameTimer()
        for k, v in pairs(pack) do
            table.insert(o.replayFrames, v)
        end
        o.startReplayer()
    end

    -- disable collisions between objects
    o.disableCollisions = function()
        for i = 1, 3 do
            if o.replayObjects[i] then
                SetEntityCompletelyDisableCollision(o.replayObjects[i], false, false)
            end
            if o.playableObjects[i] then
                SetEntityCompletelyDisableCollision(o.playableObjects[i], false, false)
            end
        end
    end

    -- get ped initial coords (standing)
    o.getPlayerPosition = function(pid, xoffset)
        if not xoffset then
            xoffset = 0.0
        end
        if pid == 1 then
            return GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, xoffset, -1.4, 1.0)
        else
            return GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, xoffset, 1.4, 1.0)
        end
    end

    o.setReplayerPosition = function(playerId, playableX, playableY, used)
        SetEntityCoordsNoOffset(o.replayObjects[playerId + 1], GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading,
            playableX, playableY, o.playerZ))

        playableX = Clamp(playableX, -0.454, 0.454)
        playableY = Clamp(playableY, -0.919, 0.918)

        local percent = 0
        if playerId == 1 then
            percent = (playableY - -0.919) / 0.919 * 1.0
        else
            percent = 1.0 * (playableY - 0.918) / -0.918
        end

        if o.playerData[playerId].cloneState then
            ToggleUse(o.playerData[playerId].cloneState, used)
        end
        SetEntityAnimCurrentTime(o.playerData[playerId].ped, "rcore@airhockey", "gameplay_clip", percent)
        SetEntityCoordsNoOffset(o.playerData[playerId].ped, o.getPlayerPosition(playerId, playableX), true, true, true)
        SetEntityHeading(o.playerData[playerId].ped, o.tableHeading + (playerId == 1 and 0.0 or 180.0))
    end

    -- set puck coords
    o.setReplayBallPosition = function(x, y)
        SetEntityCoordsNoOffset(o.replayObjects[1],
            GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, x, y, o.ballZ))
    end

    -- delete paddles & puck
    o.deletePlayableObjects = function()
        for i = 1, 4 do
            if o.playableObjects[i] then
                DeleteEntity(o.playableObjects[i])
            end
        end
    end

    -- delete paddles & puck for replay
    o.deleteReplayObjects = function()
        for i = 1, 3 do
            if o.replayObjects[i] then
                DeleteEntity(o.replayObjects[i])
            end
        end
    end

    -- enable shaking camera (while loading)
    o.enableIdleCamera = function()
        o.disableCamera()
        local cameraOffset = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading - 45.0, 1.5, 1.5, 2.0)
        o.camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", cameraOffset, 0.0, 0.0, 0.0, 60.0)

        SetCamActive(o.camera, true)
        RenderScriptCams(true, true, 3000)
        PointCamAtCoord(o.camera, o.tableCoords)
        ShakeCam(o.camera, "HAND_SHAKE", 0.0)
    end

    o.enableWatcherView = function()
        if o.watcherView then
            return
        end
        o.watcherView = true
        local views = {{
            from = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, 0.0, -0.50, 1.7),
            to = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, 0.0, -0.50, 1.7),
            fromRot = vector3(-90.0 + 50.0, 0.0, o.tableHeading + 0.0),
            toRot = vector3(-90.0 + 70.0, 0.0, o.tableHeading + 0.0)
        }, {
            from = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, 0.0, 0.50, 1.7),
            to = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, 0.0, 0.50, 1.7),
            fromRot = vector3(-90.0 + 50.0, 0.0, o.tableHeading + 180.0),
            toRot = vector3(-90.0 + 70.0, 0.0, o.tableHeading + 180.0)
        }, {
            from = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, 0.0, 0.00, 2.2),
            to = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, 0.0, 0.00, 2.5),
            fromRot = vector3(-90.0, 0.0, o.tableHeading + 90.0),
            toRot = vector3(-90.0, 0.0, o.tableHeading + 90.0)
        }}
        local actualView = 3

        o.disableCamera()

        local cameraOffset = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, 0.0, 0.00, 2.2)
        o.camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", cameraOffset, -90.0, 0.0, o.tableHeading + 90.0, 60.0)
        SetCamActive(o.camera, true)
        RenderScriptCams(true, true, 0)

        CreateThread(function()
            local actualPos = views[actualView].from
            local actualRot = views[actualView].fromRot

            while true do
                if IsControlJustPressed(2, 22) then
                    actualView = actualView < 3 and actualView + 1 or 1
                    actualPos = views[actualView].from
                    actualRot = views[actualView].fromRot
                end
                HideHudAndRadarThisFrame()
                actualPos = Vector2Lerp(actualPos, views[actualView].to, 0.001)
                actualRot = Vector2Lerp(actualRot, views[actualView].toRot, 0.001)
                SetCamCoord(o.camera, actualPos.x, actualPos.y, actualPos.z)
                SetCamRot(o.camera, actualRot.x, actualRot.y, actualRot.z, 2)
                Wait(0)
            end
        end)

    end

    -- gets X Y player/ball coordinates (0.0 - 1.0) from cursor position
    o.getDeltaFromMouse = function()
        local _, minx, miny = World3dToScreen2d(o.topLeft.x, o.topLeft.y, o.topLeft.z)
        local _, maxx, maxy = World3dToScreen2d(o.bottomRight.x, o.bottomRight.y, o.bottomRight.z)

        -- if borders aren't visible
        if minx == -1.0 or miny == -1.0 or maxx == -1.0 or maxy == -1.0 then
            local actualFov = GetCamFov(o.camera)
            if actualFov < 120.0 then
                SetCamFov(o.camera, actualFov + 0.1)
            end
        end

        local mX, mY = GetNuiCursorPosition()
        local rX, rY = GetActiveScreenResolution()

        local mXP = mX * 1.0 / rX
        local mYP = mY * 1.0 / rY

        return Clamp((mXP - minx) / (maxx - minx) * 1.0, 0.0, 1.0), Clamp((mYP - miny) / (maxy - miny) * 1.0, 0.0, 1.0)
    end

    o.animateGoal = function(net)

    end

    o.onGoalTrigger = function(net)
        if net == o.localSide then
            OnGoal(net, true)
        end
    end

    o.opHitReceived = function(msg)
        o.ballData.pendingState = {
            playablePosition = vector2(msg.x, msg.y),
            velocity = vector2(msg.vx, msg.vy),
            t = msg.t,
            saved = msg.saved
        }

        local opId = o.localSide == 1 and 2 or 1
        local newPos = vector2(msg.px, msg.py)
        local pDiff = #(o.playerData[opId].playablePosition - newPos)

        if pDiff > 0.15 then
            o.playerData[opId].playablePosition = vector2(msg.px, msg.py)
        end
    end

    o.opCoordsReceived = function(msg)
        local opId = o.localSide == 1 and 2 or 1
        o.playerData[opId].remotePosition = vector2(msg.x, msg.y)
    end

    o.toggleTicking = function(toggle)
        if toggle then
            if not s_tickingBar then
                s_Session.tickSound = GetSoundId()
                PlaySoundFrontend(s_Session.tickSound, "10s", "MP_MISSION_COUNTDOWN_SOUNDSET")
                s_tickingBar = TimerBar.Create(TimerBar.Progress, Translation.Get("TIMERBAR_PENALTY"), 0.0)
                s_tickingBar.setBackgroundColor({255, 255, 255, 50})
                s_tickingBar.setForegroundColor({255, 255, 255, 150})
                s_tickingBar.setHighlightColor({255, 20, 20, 255})
            end
        else
            if s_Session.tickSound then
                StopSound(s_Session.tickSound)
                s_Session.tickSound = nil
            end
            if s_tickingBar then
                TimerBar.DestroyAll()
                s_tickingBar = nil
            end
        end
    end

    o.recheckPuckAiming = function()
        if o.localSide == 1 and o.ballData.velocity.y < 0.01 then -- on the left
            local goalX = CheckForX(o.ballData, -0.93, true)
            if goalX >= -0.13 and goalX <= 0.13 then
                o.ballData.aimingAtLocalNet = true
            else
                o.ballData.aimingAtLocalNet = false
            end
        elseif o.localSide == 2 and o.ballData.velocity.y > 0.01 then -- on the right
            local goalX = CheckForX(o.ballData, 0.93, false)
            if goalX >= -0.13 and goalX <= 0.13 then
                o.ballData.aimingAtLocalNet = true
            else
                o.ballData.aimingAtLocalNet = false
            end
        else
            o.ballData.aimingAtLocalNet = false
        end
    end

    o.handleMovement = function()
        local gT = GetGameTimer()
        local delta = (gT - o.lastMovementUpdate) / 100
        local everyoneClose = false

        if s_Session.playerMovement then
            for i = 1, 2 do
                local pData = o.playerData[i]
                if i == o.localSide then
                    -- player velocity
                    local distanceBetweenPlayers =
                        #(o.playerData[1].playablePosition - o.playerData[2].playablePosition)
                    local distanceBetweenBall = #(pData.playablePosition - o.ballData.playablePosition)
                    local distanceInTotal = distanceBetweenPlayers + distanceBetweenBall
                    everyoneClose = distanceInTotal <= 0.4

                    if not everyoneClose then
                        if pData.closeHitsAllowed <= 0 then
                            SetEntityAlpha(o.playableObjects[i + 1], 255, true)
                        end
                        pData.closeHitsAllowed = 3
                    end

                    if math.abs(pData.velocity.x + pData.velocity.y) > 0.01 then
                        pData.velocity = pData.velocity * 0.99
                    end

                    local oldPos = pData.actualPosition
                    pData.actualPosition = Vector2Lerp(pData.actualPosition, pData.position, pData.moveSpeed * delta)
                    local playerTravel = #(oldPos - pData.actualPosition)

                    local worldX = Lerp(o.playableMin.x, o.playableMax.x, pData.actualPosition.y)
                    local worldY = Lerp(o.playableMin.y, o.playableMax.y, pData.actualPosition.x)

                    pData.playablePosition = vector2(worldX, worldY)

                    local displayPos = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, worldX, worldY,
                        o.playerZ)

                    s_Session.playerTravelDistance = s_Session.playerTravelDistance + playerTravel

                    SetEntityCoordsNoOffset(o.playableObjects[i + 1], displayPos)

                    if GetGameTimer() - o.lastPositionSendTime > Config.PositionSendRate then
                        opponentPeer.Send(json.encode({
                            action = "opcoords",
                            x = pData.playablePosition.x,
                            y = pData.playablePosition.y
                        }))
                        o.lastPositionSendTime = GetGameTimer()
                    end

                    local ballDistance = #(pData.playablePosition - o.ballData.playablePosition)
                    if ballDistance < 0.2 then
                        if not s_Session.closeToBallTime then
                            s_Session.closeToBallTime = GetGameTimer()
                        end

                    elseif s_Session.closeToBallTime then
                        s_Session.closeToBallTime = nil
                    end
                else
                    pData.playablePosition = Vector2Lerp(pData.playablePosition, pData.remotePosition,
                        (pData.moveSpeed * 1.5) * delta)

                    local displayPosition = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading,
                        pData.playablePosition.x, pData.playablePosition.y, o.playerZ)

                    SetEntityCoordsNoOffset(o.playableObjects[i + 1], displayPosition)
                end
            end
        end

        o.lastMovementUpdate = gT

        if o.ballData.pendingState then
            -- accept the change only if I didn't send a newer turn meanwhile
            if o.ballData.pendingState.t > o.lastBallHit then
                o.ballData.playablePosition = o.ballData.pendingState.playablePosition
                o.ballData.velocity = o.ballData.pendingState.velocity
                o.ballData.hitOrigin = o.localSide == 1 and 2 or 1
                o.ballData.lastPlayer = o.localSide == 1 and 2 or 1
                o.ballData.enemyHitTime = GetGameTimer()
                if o.ballData.pendingState.saved then
                    s_Session.shotsOnNet = s_Session.shotsOnNet + 1
                    PlaySoundFrontend(-1, "BASE_JUMP_PASSED", "HUD_AWARDS")
                    AnimpostfxPlay("HeistLocate", 1000)
                    s_Session.opSaves = s_Session.opSaves + 1
                    Stats_Increase("rcore_airhockey_shoots_on_net", 1)
                    SendToJavascript("SavesChanged", s_Session.opponentServerId, s_Session.opSaves)
                end
            end
            o.ballData.pendingState = nil
        end

        -- handle side change & draw penalty bar
        local ballSide = o.ballData.playablePosition.y < 0.0 and 1 or 2
        local mySide = o.localSide == ballSide

        if o.ballData.actualSide ~= ballSide then
            o.ballData.actualSide = ballSide
            o.ballData.sideChangedTime = GetSyncedGameTimer()
            o.toggleTicking(false)
        end

        if not o.ballData.touched then
            o.ballData.sideChangedTime = GetSyncedGameTimer()
        end

        local sideChangedAgo = GetSyncedGameTimer() - o.ballData.sideChangedTime
        if not s_Session.sideTicking and sideChangedAgo > Config.PenaltyTime / 3.0 then
            o.toggleTicking(true)
        end

        if s_tickingBar then
            local percentage = sideChangedAgo * 1.0 / Config.PenaltyTime
            s_tickingBar.setProgress(percentage)
            TimerBar.DrawAll()

            if percentage >= 1 then
                o.ballData.sideChangedTime = GetSyncedGameTimer()
                o.onGoalTrigger(o.ballData.actualSide)
            end
        end

        -- keep the ball on table
        if o.ballData.playablePosition.x < o.playableMinBall.x then
            o.ballData.playablePosition = vector2(o.playableMinBall.x, o.ballData.playablePosition.y)
            o.ballData.velocity = vector2(math.abs(o.ballData.velocity.x), o.ballData.velocity.y)
            o.ballData.hitOrigin = 3
            SendToJavascript("PlayPuckSound")
        end

        if o.ballData.playablePosition.x > o.playableMaxBall.x then
            o.ballData.playablePosition = vector2(o.playableMaxBall.x, o.ballData.playablePosition.y)
            o.ballData.velocity = vector2(-math.abs(o.ballData.velocity.x), o.ballData.velocity.y)
            o.ballData.hitOrigin = 3
            SendToJavascript("PlayPuckSound")
        end

        if o.ballData.playablePosition.y < o.playableMinBall.y then
            -- check for goals on the left
            if o.ballData.playablePosition.x >= -0.13 and o.ballData.playablePosition.x <= 0.13 then
                o.onGoalTrigger(1)
            else
                o.ballData.playablePosition = vector2(o.ballData.playablePosition.x, o.playableMinBall.y)
                o.ballData.velocity = vector2(o.ballData.velocity.x, math.abs(o.ballData.velocity.y))
                o.ballData.hitOrigin = 3
                SendToJavascript("PlayPuckSound")
            end
        end

        if o.ballData.playablePosition.y > o.playableMaxBall.y then
            -- check for goals on the left
            if o.ballData.playablePosition.x >= -0.13 and o.ballData.playablePosition.x <= 0.13 then
                o.onGoalTrigger(2)
            else
                o.ballData.playablePosition = vector2(o.ballData.playablePosition.x, o.playableMaxBall.y)
                o.ballData.velocity = vector2(o.ballData.velocity.x, -math.abs(o.ballData.velocity.y))
                o.ballData.hitOrigin = 3
                SendToJavascript("PlayPuckSound")
            end
        end

        -- slow down a bit for lag compensation
        local simulateSpeed = 1.0
        if o.ballData.lastPlayer == o.localSide and o.ballData.actualSide ~= o.localSide then
            simulateSpeed = 1.0 - (s_Session.ping / 2000.0)
        end

        -- slow it down if not using peerjs
        if o.useFivem then
            simulateSpeed = simulateSpeed * 0.75
        end

        -- calculate new ball position from velocity + framerate
        local newBallPosition = vector2(o.ballData.playablePosition.x + (o.ballData.velocity.x * delta * simulateSpeed),
            o.ballData.playablePosition.y + (o.ballData.velocity.y * delta * simulateSpeed))

        local ballTravel = #(o.ballData.playablePosition - newBallPosition)
        s_Session.ballTravelDistance = s_Session.ballTravelDistance + ballTravel

        o.ballData.playablePosition = newBallPosition

        local displayPosition = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, o.ballData.playablePosition.x,
            o.ballData.playablePosition.y, o.ballZ)

        SetEntityCoordsNoOffset(o.playableObjects[1], displayPosition)

        local localPdata = o.playerData[o.localSide]

        if s_Session.playerMovement then
            if CircleCollision(o.ballData, localPdata) then
                local continue = true

                if everyoneClose then
                    if localPdata.closeHitsAllowed > 0 then
                        localPdata.closeHitsAllowed = localPdata.closeHitsAllowed - 1
                        if localPdata.closeHitsAllowed == 0 then
                            SetEntityAlpha(o.playableObjects[o.localSide + 1], 50, true)
                        end
                    else
                        continue = false
                    end
                end

                if continue then
                    o.ballData.touched = true
                    o.lastBallHit = GetSyncedGameTimer()

                    o.recheckPuckAiming()
                    CreateBallCounce(o.ballData, localPdata, everyoneClose, s_Session.settings.ballSpeed)

                    local velNormal = Vector2Normalized(o.ballData.velocity)
                    local strength = velNormal.x * velNormal.y

                    o.shakeCamera(vector2(velNormal.x, -velNormal.y), strength * Config.BounceStrength)

                    local hitMsg = {
                        action = "phit",
                        x = o.ballData.playablePosition.x,
                        y = o.ballData.playablePosition.y,
                        vx = o.ballData.velocity.x,
                        vy = o.ballData.velocity.y,
                        px = localPdata.playablePosition.x,
                        py = localPdata.playablePosition.y,
                        s = o.ballData.allowSound,
                        t = GetSyncedGameTimer()
                    }

                    if o.ballData.aimingAtLocalNet then
                        o.recheckPuckAiming()
                        if not o.ballData.aimingAtLocalNet then
                            local ballDistanceFromCenter = #(o.ballData.playablePosition - vector2(0.0, 0.0))
                            local enemyTime = GetGameTimer() - o.ballData.enemyHitTime
                            if enemyTime < 10000 and ballDistanceFromCenter >= 0.6 then
                                o.ballData.enemyHitTime = 0
                                PlaySoundFrontend(-1, "BASE_JUMP_PASSED", "HUD_AWARDS")
                                AnimpostfxPlay("HeistLocate", 1000)
                                hitMsg.saved = 1
                                s_Session.saves = s_Session.saves + 1
                                Stats_Increase("rcore_airhockey_shoots_saves", 1)
                                SendToJavascript("SavesChanged", s_myServerId, s_Session.saves)
                            end
                        end
                    end

                    opponentPeer.Send(json.encode(hitMsg))

                    o.ballData.hitOrigin = o.localSide
                    o.ballData.lastPlayer = o.localSide
                    if o.ballData.allowSound then
                        o.ballData.allowSound = false
                        SendToJavascript("PlayPaddleSound")
                    end
                end
            else
                o.ballData.allowSound = true
            end
        end
    end

    o.summonObjectAtCoords = function(id, coords)
        local obj = o.playableObjects[id]
        local worldPos = coords
        if id == 1 then
            o.ballData.playablePosition = worldPos
            SetObjectTextureVariant(obj, o.ballData.skin - 1)
            worldPos = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, coords.x, coords.y, o.ballZ)
        else
            coords = o.playerSpawns[coords]
            local pData = o.playerData[id - 1]
            pData.summonMouseCoords = vector2(coords[1], coords[2])
            local x = Lerp(o.playableMin.x, o.playableMax.x, coords[2])
            local y = Lerp(o.playableMin.y, o.playableMax.y, coords[1])
            worldPos = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, x, y, o.playerZ)
            pData.playablePosition = vector2(x, y)
            pData.remotePosition = pData.playablePosition
            SetObjectTextureVariant(obj, pData.skin - 1)
        end
        CreateThread(function()
            local a = 0
            local lastFrame = GetGameTimer()
            local startCoords = worldPos + vector3(0.0, 0.0, 0.1)
            while a < 1 do
                local delta = (GetGameTimer() - lastFrame) / 100
                a = a + (delta * 0.4)
                local actualPos = Vector2Lerp(startCoords, worldPos, a)
                SetEntityCoordsNoOffset(obj, actualPos)
                lastFrame = GetGameTimer()
                Wait(0)
            end
        end)
    end

    o.startAiming = function()
        SetNuiFocus(false, true)
        if o.isAiming then
            return
        end
        o.isAiming = true
        CreateThread(function()
            o.lastMovementUpdate = GetGameTimer()
            o.lastPositionSendTime = GetGameTimer()
            local pData = o.playerData[o.localSide]
            while o.isAiming and s_Session and not s_Session.finished do
                local mouseX, mouseY = o.getDeltaFromMouse()
                -- keep paddles on their sides of the table
                -- stay away from the center more if not using peerjs (fewer desync issues)
                local minx = o.localSide == 1 and 0.0 or (o.useFivem and 0.63 or 0.55)
                local maxx = o.localSide == 1 and (o.useFivem and 0.37 or 0.45) or 1.0
                mouseX = Clamp(mouseX, minx, maxx)
                pData.position = vector2(mouseX, mouseY) + pData.velocity
                o.handleMovement()
                -- light up the table at night
                if GetClockHours() > 20 then
                    DrawLightWithRange(o.tableCoords.x, o.tableCoords.y, o.tableCoords.z + 1.0, 255, 255, 255, 5.0, 0.5)
                end
                Wait(0)
            end
            o.isAiming = false
        end)
    end

    o.stopAiming = function()
        o.isAiming = false
    end

    o.shakeCamera = function(direction, strength)
        if o.shaking then
            return
        end
        CreateThread(function()
            local lastFrame = GetGameTimer()
            local rot = vector3(-90.0, 0.0, o.tableHeading + 90.0)
            local elapsed = 0

            while o.camera do
                local delta = (GetGameTimer() - lastFrame) / 100
                elapsed = elapsed + delta

                if elapsed < 1 then
                    rot = rot + vector3(direction.x * strength, direction.y * strength, 0)
                elseif elapsed < 2 then
                    rot = rot - vector3(direction.x * strength, direction.y * strength, 0)
                else
                    break
                end

                SetCamRot(o.camera, rot, 2)
                lastFrame = GetGameTimer()
                Wait(0)
            end
            SetCamRot(o.camera, vector3(-90.0, 0.0, o.tableHeading + 90.0))
            o.shaking = false
        end)
    end

    -- enable gameplay camera (while playing)
    o.enableCamera = function()
        -- do return end
        DoScreenFadeOut(500)
        Wait(500)
        o.disableCamera()

        -- calculate fov from resolution
        local rx, ry = GetActiveScreenResolution()
        local res = ry / rx
        local fov = 96.0 + (10 * res)
        local cameraOffset = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, 0.0, -0.00, 1.35)

        o.camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", cameraOffset, -90.0, 0.0, o.tableHeading + 90.0, fov)
        SetCamActive(o.camera, true)
        SetCamFov(o.camera, fov)
        RenderScriptCams(true, false)
        DoScreenFadeIn(500)
    end

    -- enable ending camera (while leaving)
    o.enableFinalCamera = function(side)
        o.disableCamera()

        local camPos = GetObjectOffsetFromCoords(o.tableCoords, o.tableHeading, 0.0, side == 1 and -3.79 or 3.79, 1.31)
        local fadeDir = side == 1 and -1 or 1
        CreateThread(function()
            o.camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", camPos, 0.0, 0.0,
                o.tableHeading + (side == 1 and 0.0 or 180.0), 60.0)
            SetCamActive(o.camera, true)
            SetCamFov(o.camera, 60.0)
            RenderScriptCams(true, false)

            local t = GetGameTimer() + 4000
            while GetGameTimer() < t do
                camPos = camPos + vector3(0.0, fadeDir * 0.001, 0.0)
                SetCamCoord(o.camera, camPos)
                Wait(0)
            end
            o.disableCamera()
        end)
    end

    -- destroy used camera
    o.disableCamera = function()
        if o.camera then
            SetCamActive(o.camera, false)
            DestroyCam(o.camera, false)
            RenderScriptCams(false, false)
            o.camera = nil
        end
    end

    -- toggle subscription state (seeing the table, for receiving events)
    o.toggleSubscription = function(toggle)
        if o.subscribed ~= toggle then
            o.subscribed = toggle
            TriggerServerEvent("AirHockey:Subscription", o.tableCoords, o.tableHeading, o.subscribed)
            if not toggle then
                o.players = nil
                o.lastReplayPack = 0
                o.deletePlayableObjects()
                o.deleteReplayObjects()
            end
        end
    end

    -- toggle nearby state (standing close to table)
    o.toggleNearBy = function(toggle)
        if o.nearBy ~= toggle then
            o.nearBy = toggle
            TriggerServerEvent("AirHockey:ToggleNearby", o.tableCoords, o.tableHeading, toggle)
        end
    end

    o.playableMin = vector2(-0.454, -0.919)
    o.playableMax = vector2(0.453, 0.918)
    o.playableMinBall = vector2(-0.475, -0.940)
    o.playableMaxBall = vector2(0.473, 0.940)
    o.ballZ = 0.8186
    o.playerZ = 0.8186 + 0.024
    o.playerSpawns = {{0.0913, 0.179}, {0.0913, 0.821}, {0.9028, 0.179}, {0.9028, 0.821}}

    o.resetPositions()
    return o
end

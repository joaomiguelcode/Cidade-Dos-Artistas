RestrictedControls = {37, 157, 159, 160, 161, 162, 163, 164, 165, 158, 101, 337, 53, 54, 47, 140, 141, 263, 264, 142,
                      143, 24, 257, 44, 282, 283, 284, 285, 69, 70, 114, 99, 100, 102, 22, 74, 68, 25, 36, 345, 346,
                      347, 91, 92}

-- consts
TennisOffsets = {
    ["P1CamCoord"] = vector3(0.0, -2.8, 1.8),
    ["P1CamRot"] = vector3(-21.7, 0.0, 0.0),
    ["P1CamCoordTop"] = vector3(0.0, 0.0, 4.0),
    ["P1CamRotTop"] = vector3(-90, 0.0, 0.0),

    ["P2CamCoord"] = vector3(0.0, 2.8, 1.8),
    ["P2CamRot"] = vector3(-21.7, 0.0, 180.0),

    ["AreaBallMarkerMin"] = vector3(-0.5799, -1.1899, 0.6799),
    ["AreaBallMarkerMax"] = vector3(0.5799, 1.1899, 0.6799),

    ["PlayerAimDistanceMin"] = -1.05,
    ["PlayerAimDistanceMax"] = -2.0,
    ["PlayerAimXMin"] = -0.90,
    ["PlayerAimXMax"] = 0.90,
    ["PlayerAimZ"] = 0.84,

    ["MinAimStrength"] = 0.0,
    ["NormalAimStrength"] = 0.2,
    ["MaxAimStrength"] = 1.0,
    ["TiltStrengths"] = {0.0, 1, 2, 5},
    ["TiltStrengthsPos"] = {0.0, 0.1, 0.2, 0.3}
}

TennisTableSkins = {
    [1] = {GetHashKey("prop_table_tennis"), GetHashKey("prop_table_tennis_nonet")},
    [2] = {GetHashKey("prop_table_tennis_b"), GetHashKey("prop_table_tennis_b_nonet")},
    [3] = {GetHashKey("prop_table_tennis_c"), GetHashKey("prop_table_tennis_c_nonet")},
    [4] = {GetHashKey("prop_table_tennis_d"), GetHashKey("prop_table_tennis_d_nonet")},
    [5] = {GetHashKey("prop_table_tennis_e"), GetHashKey("prop_table_tennis_e_nonet")}
}

function SendToJavascript(fName, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10)
    SendNUIMessage({
        fName = fName,
        a1 = a1,
        a2 = a2,
        a3 = a3,
        a4 = a4,
        a5 = a5,
        a6 = a6,
        a7 = a7,
        a8 = a8,
        a9 = a9,
        a10 = a10,
        action = "javascript"
    })
end

function LoadTennisAnimations(waitTime)
    if HasAnimDictLoaded("mini@tennis") then
        return true
    end
    local t = GetGameTimer() + waitTime
    RequestAnimDict("mini@tennis")
    while not HasAnimDictLoaded("mini@tennis") and GetGameTimer() < t do
        Wait(33)
    end
    Wait(33)
    return HasAnimDictLoaded("mini@tennis")
end

function RegisterKey(fc, uniqid, description, key)
    RegisterCommand(uniqid .. GetCurrentResourceName(), fc, false)
    RegisterKeyMapping(uniqid .. GetCurrentResourceName(), description, 'keyboard', key)
end

function MinMax(value, min, max)
    return math.min(math.max(value, min), max)
end

function Vector2Magnitude(v)
    return math.sqrt(v.x ^ 2 + v.y ^ 2)
end

function Vector3Magnitude(v)
    return math.sqrt(v.x ^ 2 + v.y ^ 2 + v.z ^ 2)
end

function Vector3Dot(v1, v2)
    return v1.x * v2.x + v1.y * v2.y + v1.z * v2.z
end

function ShuffleList(list)
    for i = #list, 2, -1 do
        local j = math.random(i)
        list[i], list[j] = list[j], list[i]
    end
    return list
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

function MoveTowards(current, target, maxDistanceDelta)
    local toVector_x = target.x - current.x
    local toVector_y = target.y - current.y
    local toVector_z = target.z - current.z
    local sqdist = toVector_x * toVector_x + toVector_y * toVector_y + toVector_z * toVector_z

    if sqdist == 0 or (maxDistanceDelta >= 0 and sqdist <= maxDistanceDelta * maxDistanceDelta) then
        return target
    end

    local dist = math.sqrt(sqdist)

    return vector3(current.x + toVector_x / dist * maxDistanceDelta, current.y + toVector_y / dist * maxDistanceDelta,
        current.z + toVector_z / dist * maxDistanceDelta)
end

function Vector3Normalize(v)
    local magnitude = math.sqrt(v.x ^ 2 + v.y ^ 2 + v.z ^ 2)
    if magnitude ~= 0 then
        return vector3(v.x / magnitude, v.y / magnitude, v.z / magnitude)
    else
        return v
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

function PercentageOf(X, min, max, percentageMax)
    local normalizedX = (X - min) / (max - min)
    local percentage = normalizedX * percentageMax
    return Clamp(percentage, 0.0, percentageMax)
end

function RestrictControls()
    DisablePlayerFiring(PlayerId(), true)
    for k, v in pairs(RestrictedControls) do
        DisableControlAction(0, v, true)
    end
    -- movement
    for i = 20, 40, 1 do
        DisableControlAction(0, i, true)
    end
end

function VectorLerp(start, endx, t)
    if t > 1 then
        t = 1
    end
    return start + (endx - start) * t
end

function Lerp(a, b, t)
    return a + (b - a) * Clamp(t, 0, 1)
end

function Sign(x)
    if x < 0 then
        return -1
    elseif x > 0 then
        return 1
    else
        return 0
    end
end

function IsInRange(x, min, max)
    return x >= min and x <= max
end

function IsVectorInRange(x, min, max, offset)
    if not x then
        return false
    end
    if not offset then
        offset = 0.0
    end
    return x.x >= min.x - offset and x.x <= max.x + offset and x.y >= min.y - offset and x.y <= max.y + offset
end

function PushInstructionalButton(scaleform, slot, key, text)
    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(slot)
    ScaleformMovieMethodAddParamPlayerNameString(GetControlInstructionalButton(1, key, true))
    ScaleformMovieMethodAddParamPlayerNameString(text)
    PopScaleformMovieFunctionVoid()
end

function ShowMidsizedMessage(test, desc)
    CreateThread(function()
        local t = GetGameTimer() + 2000
        local scaleform = RequestScaleformMovie("MIDSIZED_MESSAGE")
        while not HasScaleformMovieLoaded(scaleform) and GetGameTimer() < t do
            Wait(0)
        end
        if HasScaleformMovieLoaded(scaleform) then
            BeginScaleformMovieMethod(scaleform, "SHOW_SHARD_MIDSIZED_MESSAGE")
            ScaleformMovieMethodAddParamTextureNameString(test)
            ScaleformMovieMethodAddParamTextureNameString(desc)
            EndScaleformMovieMethod()

            t = GetGameTimer() + 2000
            while GetGameTimer() < t do
                DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
                Wait(0)
            end
        end
    end, "ShowMidsizedMessage")
end

function CalculateVolumeFromDistance(distance, maxvolume)
    distance = math.max(0.0, math.min(distance, 50.0))
    local volume = 1.0 - (distance / 15.0)
    volume = math.max(0.0, math.min(volume, maxvolume))
    return volume
end

function PlaySound(soundFile, coords, volume)
    if not volume then
        volume = 0.5
    end
    local distance = #(GetEntityCoords(PlayerPedId()) - coords)
    local realVolume = CalculateVolumeFromDistance(distance, volume)
    local pCoord = GetEntityCoords(PlayerPedId())
    local pRot = GetGameplayCamRot(0)
    SendNUIMessage({
        transactionType = 'start',
        audioCoord = coords,
        audioRot = vector3(0, 0, 0),
        audioSource = soundFile,
        pedCoord = pCoord,
        pedRot = pRot,
        volume = realVolume
    })
end

function StartCountdown(seconds)
    CreateThread(function()
        local t = GetGameTimer() + 2000
        local scaleform = RequestScaleformMovie("COUNTDOWN")
        while not HasScaleformMovieLoaded(scaleform) and GetGameTimer() < t do
            Wait(0)
        end
        if HasScaleformMovieLoaded(scaleform) then
            CreateThread(function()
                for i = seconds, 0, -1 do
                    if i == 0 then
                        i = "GO"
                    end
                    PlaySound("sounds\\ui\\" .. (i == "GO" and "Tock" or "Tick") .. ".mp3",
                        GetEntityCoords(PlayerPedId()))
                    BeginScaleformMovieMethod(scaleform, "SET_MESSAGE")
                    ScaleformMovieMethodAddParamTextureNameString(i)
                    ScaleformMovieMethodAddParamInt(240)
                    ScaleformMovieMethodAddParamInt(200)
                    ScaleformMovieMethodAddParamInt(80)
                    ScaleformMovieMethodAddParamBool(true)
                    EndScaleformMovieMethod()
                    Wait(300)
                end
            end, "StartCountdown2")

            t = GetGameTimer() + 5000
            while GetGameTimer() < t do
                DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
                Wait(0)
            end
        end
    end, "StartCountdown")
end

local _randomseed = math.random(1, 10000)
function RandomNumber(min, max)
    _randomseed = _randomseed + 1
    math.randomseed(_randomseed + GetGameTimer())
    if max then
        return math.random(min, max)
    else
        return math.random(min)
    end
end

function RandomFloat(min, max)
    _randomseed = _randomseed + 1 + GetGameTimer()
    math.randomseed(_randomseed + GetGameTimer())
    return min + math.random() * (max - min)
end

function GetRandomItem(items)
    if items ~= nil and #(items) > 0 then
        return items[RandomNumber(1, #(items))]
    end
    return nil
end

function ClampVector3(v, min, max)
    local x = math.max(math.min(v.x, max.x), min.x)
    local y = math.max(math.min(v.y, max.y), min.y)
    local z = math.max(math.min(v.z, max.z), min.z)
    return vector3(x, y, z)
end

function CopyTable(original)
    local copy = {}
    for key, value in pairs(original) do
        copy[key] = value
    end
    return copy
end

function SetEntityCoords(entity, coords)
    local forwardVector, rightVector, upVector, _ = GetEntityMatrix(entity)
    SetEntityMatrix(entity, forwardVector.x, forwardVector.y, forwardVector.z, rightVector.x, rightVector.y,
        rightVector.z, upVector.x, upVector.y, upVector.z, coords.x, coords.y, coords.z)
end

function LoadModel(model)
    if not tonumber(model) then
        model = GetHashKey(model)
    end
    RequestModel(model)
    local t = GetGameTimer() + 2000
    while not HasModelLoaded(model) and GetGameTimer() < t do
        Wait(0)
    end
end

function AttachObjectToPed(ped, modelHash, boneIndex, position, rotation)
    if not IsModelValid(modelHash) then
        return
    end

    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Wait(1)
    end

    local object = CreateObject(modelHash, 0.0, 0.0, 0.0, false, true, false)
    AttachEntityToEntity(object, ped, boneIndex, position, rotation, true, true, false, 0, true, true, false, true)
    SetModelAsNoLongerNeeded(modelHash)
    return object
end

function GetInitialAnimOffsets(animDict, animName, x, y, z, rx, ry, rz)
    return GetAnimInitialOffsetPosition(animDict, animName, x, y, z, rx, ry, rz, 0.01, 2),
        GetAnimInitialOffsetRotation(animDict, animName, x, y, z, rx, ry, rz, 0.01, 2)
end

function DrawBox3D(coords, size, angle)
    local halfSize = size / 2.0
    local x, y, z = coords.x, coords.y, coords.z

    -- Calculate the rotation matrix
    local rotMatrix = {{math.cos(angle), -math.sin(angle), 0}, {math.sin(angle), math.cos(angle), 0}, {0, 0, 1}}

    -- Calculate the vertices of the rotated box
    local vertices = {vector3(-halfSize, -halfSize, -halfSize), vector3(halfSize, -halfSize, -halfSize),
                      vector3(-halfSize, halfSize, -halfSize), vector3(halfSize, halfSize, -halfSize),
                      vector3(-halfSize, -halfSize, halfSize), vector3(halfSize, -halfSize, halfSize),
                      vector3(-halfSize, halfSize, halfSize), vector3(halfSize, halfSize, halfSize)}

    -- Apply rotation and translation to the vertices
    for i, vertex in ipairs(vertices) do
        local rotated = {
            x = vertex.x * rotMatrix[1][1] + vertex.y * rotMatrix[1][2] + vertex.z * rotMatrix[1][3] + x,
            y = vertex.x * rotMatrix[2][1] + vertex.y * rotMatrix[2][2] + vertex.z * rotMatrix[2][3] + y,
            z = vertex.x * rotMatrix[3][1] + vertex.y * rotMatrix[3][2] + vertex.z * rotMatrix[3][3] + z
        }
        vertices[i] = rotated
    end

    -- Calculate the start and end positions for the box edges
    local startPos = vector3(vertices[1].x, vertices[1].y, vertices[1].z)
    local endPos = vector3(vertices[2].x, vertices[2].y, vertices[2].z)

    -- Draw the box
    DrawBox(startPos, endPos, 255, 0, 0, 255)
end

BallPresets = {

    [2] = {
        name = "Tennis Ball",
        model = "prop_tennis_ball",
        soundFolder = "tennis",
        size = 0.055,
        tableSize = 0.055,
        ground = 0.78,
        markerSize = 0.15,
        AreaBallMin = vector3(-0.70, -1.35, 0.78),
        AreaBallMax = vector3(0.70, 1.35, 0.78),
        trailColor = {
            r = 232,
            g = 199,
            b = 50
        },
        trailScale = 0.5,
        speeds = {
            [1] = {
                bounciness = 0.85,
                drag = 0.05,
                friction = 0.0,
                maxAirVelocity = 3.0 / 1.3,
                minAirVelocity = 2.45 / 1.3,
                minBounceOffVelocity = 3.0,
                maxVelocity = 5.0 * 0.8,
                minVelocity = 2.0 * 0.8,
                mass = 1,
                simulateSpeed = 0.9
            },
            [2] = {
                bounciness = 0.85,
                drag = 0.05,
                friction = 0.0,
                maxAirVelocity = 3.0 / 1.3,
                minAirVelocity = 2.45 / 1.3,
                minBounceOffVelocity = 3.0,
                maxVelocity = 5.0 * 1.0,
                minVelocity = 2.0 * 1.0,
                mass = 1,
                simulateSpeed = 0.9
            },
            [3] = {
                bounciness = 0.85,
                drag = 0.05,
                friction = 0.0,
                maxAirVelocity = 3.0 / 1.3,
                minAirVelocity = 2.45 / 1.3,
                minBounceOffVelocity = 3.0,
                maxVelocity = 5.0 * 1.3,
                minVelocity = 2.0 * 1.3,
                mass = 1,
                simulateSpeed = 0.9
            }
        }
    },
    [1] = {
        name = "Pong Ball",
        model = "prop_golf_ball", -- prop_golf_ball_p2 3 4, prop_golf_ball, p_ld_soc_ball_01, w_am_baseball, prop_bskball_01, prop_paper_ball
        soundFolder = "pong",
        size = 0.03,
        tableSize = 0.08,
        ground = 0.77,
        markerSize = 0.10,
        AreaBallMin = vector3(-0.70, -1.32, 0.78),
        AreaBallMax = vector3(0.70, 1.32, 0.78),
        trailColor = {
            r = 255,
            g = 255,
            b = 255
        },
        trailScale = 0.5,
        speeds = {
            [1] = {
                bounciness = 0.85,
                drag = 0.05,
                friction = 0.0,
                maxAirVelocity = 3.0 * 0.5,
                minAirVelocity = 2.45 * 0.5,
                minBounceOffVelocity = 3.0,
                maxVelocity = 5.0 * 1.5,
                minVelocity = 1.0,
                mass = 1.5,
                simulateSpeed = 0.65
            },
            [2] = {
                bounciness = 0.85,
                drag = 0.05,
                friction = 0.0,
                maxAirVelocity = 3.0 * 0.5,
                minAirVelocity = 2.45 * 0.5,
                minBounceOffVelocity = 3.0,
                maxVelocity = 5.0 * 1.5,
                minVelocity = 1.0,
                mass = 1.5,
                simulateSpeed = 0.8
            },
            [3] = {
                bounciness = 0.85,
                drag = 0.05,
                friction = 0.0,
                maxAirVelocity = 3.0 * 0.5,
                minAirVelocity = 2.45 * 0.5,
                minBounceOffVelocity = 3.0,
                maxVelocity = 5.0 * 1.5,
                minVelocity = 1.0,
                mass = 1.5,
                simulateSpeed = 0.9
            }
        }
    },

    [3] = {
        name = "Paper Ball",
        model = "prop_paper_ball", -- prop_golf_ball_p2 3 4, prop_golf_ball, p_ld_soc_ball_01, w_am_baseball, prop_bskball_01, prop_paper_ball
        soundFolder = "paperball",
        size = 0.03,
        tableSize = 0.08,
        ground = 0.77,
        markerSize = 0.25,
        AreaBallMin = vector3(-0.70, -1.32, 0.78),
        AreaBallMax = vector3(0.70, 1.32, 0.78),
        trailColor = {
            r = 150,
            g = 150,
            b = 150
        },
        trailScale = 0.5,
        speeds = {
            [1] = {
                bounciness = 0.85,
                drag = 0.8,
                friction = 0.0,

                maxAirVelocity = 4.5,
                minAirVelocity = 3.675,

                minBounceOffVelocity = 0.3,

                maxVelocity = 8.0,
                minVelocity = 3.0,

                mass = 1.5,
                simulateSpeed = 0.85
            },
            [2] = {
                bounciness = 0.85,
                drag = 0.8,
                friction = 0.0,

                maxAirVelocity = 4.5 * 1.5,
                minAirVelocity = 3.675 * 1.5,

                minBounceOffVelocity = 0.3,

                maxVelocity = 8.0 * 2,
                minVelocity = 3.0 * 2,

                mass = 1.5,
                simulateSpeed = 0.85
            },
            [3] = {
                bounciness = 0.85,
                drag = 0.8,
                friction = 0.0,

                maxAirVelocity = 4.5 * 1.5,
                minAirVelocity = 3.675 * 1.5,

                minBounceOffVelocity = 0.3,

                maxVelocity = 8.0 * 2,
                minVelocity = 3.0 * 2,

                mass = 1.5,
                simulateSpeed = 0.9
            }
        }
    },

    [4] = {
        name = "Baseball ball",
        model = "w_am_baseball", -- prop_golf_ball_p2 3 4, prop_golf_ball, p_ld_soc_ball_01, w_am_baseball, prop_bskball_01, prop_paper_ball
        soundFolder = "baseball",
        size = 0.03,
        tableSize = 0.08,
        ground = 0.77,
        markerSize = 0.25,
        AreaBallMin = vector3(-0.70, -1.32, 0.78),
        AreaBallMax = vector3(0.70, 1.32, 0.78),
        trailColor = {
            r = 255,
            g = 255,
            b = 255
        },
        trailScale = 0.5,
        speeds = {
            [1] = {
                bounciness = 0.85,
                drag = 0.10,
                friction = 0.0,
                maxAirVelocity = 2.307 * 0.5,
                minAirVelocity = 1.884 * 0.5,
                minBounceOffVelocity = 3.0,
                maxVelocity = 5.0,
                minVelocity = 1.6,
                mass = 1,
                simulateSpeed = 0.9
            },
            [2] = {
                bounciness = 0.85,
                drag = 0.07,
                friction = 0.0,
                maxAirVelocity = 2.307 * 0.5,
                minAirVelocity = 1.884 * 0.5,
                minBounceOffVelocity = 3.0,
                maxVelocity = 5.0,
                minVelocity = 2.6,
                mass = 1,
                simulateSpeed = 0.9
            },
            [3] = {
                bounciness = 0.85,
                drag = 0.07,
                friction = 0.0,
                maxAirVelocity = 2.307 * 0.5,
                minAirVelocity = 1.884 * 0.5,
                minBounceOffVelocity = 3.0,
                maxVelocity = 5.5,
                minVelocity = 3.0,
                mass = 1,
                simulateSpeed = 1.0
            }
        }
    },
    [5] = {
        name = "Billiard Ball",
        model = "prop_poolball_8",
        soundFolder = "billiard",
        size = 0.055,
        tableSize = 0.055,
        ground = 0.78,
        markerSize = 0.15,
        AreaBallMin = vector3(-0.70, -1.35, 0.78),
        AreaBallMax = vector3(0.70, 1.35, 0.78),
        trailColor = {
            r = 232,
            g = 199,
            b = 50
        },
        trailScale = 0.5,
        speeds = {
            [1] = {
                bounciness = 0.85,
                drag = 0.05,
                friction = 0.0,
                maxAirVelocity = 3.0 / 1.3,
                minAirVelocity = 2.45 / 1.3,
                minBounceOffVelocity = 3.0,
                maxVelocity = 5.0 * 0.8,
                minVelocity = 2.0 * 0.8,
                mass = 1,
                simulateSpeed = 0.9
            },
            [2] = {
                bounciness = 0.85,
                drag = 0.05,
                friction = 0.0,
                maxAirVelocity = 3.0 / 1.3,
                minAirVelocity = 2.45 / 1.3,
                minBounceOffVelocity = 3.0,
                maxVelocity = 5.0 * 1.0,
                minVelocity = 2.0 * 1.0,
                mass = 1,
                simulateSpeed = 0.9
            },
            [3] = {
                bounciness = 0.85,
                drag = 0.05,
                friction = 0.0,
                maxAirVelocity = 3.0 / 1.3,
                minAirVelocity = 2.45 / 1.3,
                minBounceOffVelocity = 3.0,
                maxVelocity = 5.0 * 1.3,
                minVelocity = 2.0 * 1.3,
                mass = 1,
                simulateSpeed = 0.9
            }
        }
    }
}

AnimationOffsets = {

    ["react_win_01"] = {
        offset = vector3(-0.25, -1.2, -1.0),
        clipStart = 0.12
    },
    ["react_win_02"] = {
        offset = vector3(-0.25, -1.2, -1.0),
        clipStart = 0.12
    },
    ["react_win_03"] = {
        offset = vector3(-0.25, -0.90, -1.0),
        clipStart = 0.12
    },
    ["react_win_04"] = {
        offset = vector3(-0.25, -1.2, -1.0),
        clipStart = 0.12
    },
    ["react_win_05"] = {
        offset = vector3(-0.25, -2.3, -1.0),
        clipStart = 0.12
    },

    ["react_lose_01"] = {
        offset = vector3(-0.0, -1.2, -1.0),
        clipStart = 0.12
    },

    ["react_lose_02"] = {
        offset = vector3(-0.0, -1.0, -1.0),
        clipStart = 0.12
    },
    ["react_lose_03"] = {
        offset = vector3(-0.0, -0.7, -1.0),
        clipStart = 0.12
    },

    ["react_lose_04"] = {
        offset = vector3(-0.0, -0.7, -1.0),
        clipStart = 0.12
    },
    ["react_lose_05"] = {
        offset = vector3(-0.0, -1.5, -1.0),
        clipStart = 0.12
    },

    ["close_bh_bs_hi"] = {
        offset = vector3(-0.25, -1.2, 0.0),
        clipStart = 0.12
    },

    ["forehand_ts_lo_far"] = {
        offset = vector3(-0.75, -1.2, 0.0),
        clipStart = 0.02
    },

    ["close_bh_bs_md"] = {
        offset = vector3(-0.65, -1.0, 0.0),
        clipStart = 0.02
    },

    ["close_bh_hi"] = {
        offset = vector3(-0.45, -1.2, 0.0),
        clipStart = 0.02
    },

    ["close_fh_hi"] = {
        offset = vector3(0.2, -0.9, 0.0),
        clipStart = 0.02
    },

    ["close_fh_md"] = {
        offset = vector3(0.45, -0.7, 0.0),
        clipStart = 0.02
    },

    ["close_fh_ts_lo"] = {
        offset = vector3(0.2, -1.2, 0.0),
        clipStart = 0.02
    },

    ["close_fh_ts_md"] = {
        offset = vector3(0.2, -1.2, 0.0),
        clipStart = 0.02
    },

    ["close_fh_bs_lo"] = {
        offset = vector3(0.4, -1.1, 0.0),
        clipStart = 0.02
    },
    ["close_fh_bs_md"] = {
        offset = vector3(0.4, -0.8, 0.0),
        clipStart = 0.02
    },

    ["idle"] = {
        offset = vector3(0.0, -0.8, 0.0),
        clipStart = 0.02
    }
}

RightAnimations = {"close_fh_bs_md", "close_fh_bs_lo", "close_fh_ts_md", "close_fh_ts_lo", "close_fh_md", "close_bh_hi",
                   "forehand_ts_lo_far"}
LeftAnimations = {"close_bh_bs_md", "close_bh_bs_hi", "close_fh_hi"}
MiddleAnimations = {"close_fh_hi", "close_bh_bs_hi"}

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

function GetMyServerId()
    local myId = GetPlayerServerId(PlayerId())
    return myId
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
    CreateThread(function()

        if onclose then

        else

        end

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
            CallScaleformFunction(s, false, "SHOW_POPUP_WARNING", 1000, caption, message, "", true, 0, bottomText)
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
        Wait(100)
        PROMPT_ACTIVE = false
    end, "FullscreenPrompt")
end

function StyleText(text)
    if not Config.UIFontName then
        return text
    end
    return "<font face=\"" .. Config.UIFontName .. "\">" .. text .. "</font>"
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

function ShowFullscreenBonusNotify(captionText, mainText, descriptionText, color, stats)
    CreateThread(function()
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
        end, "ShowFullscreenBonusNotify2")

        while GetGameTimer() < timeout do
            Citizen.Wait(1)
            DrawScaleformMovieFullscreenMasked(scaleform_bg, scaleform_fg, 255, 255, 255, 50)
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
        end
    end, "ShowFullscreenBonusNotify")
end

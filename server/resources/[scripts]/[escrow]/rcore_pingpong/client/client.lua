local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1, L78_1, L79_1, L80_1, L81_1, L82_1, L83_1, L84_1, L85_1
L0_1 = nil
L1_1 = 100
L2_1 = nil
L3_1 = 0
L4_1 = nil
L5_1 = nil
L6_1 = 0
L7_1 = 0
L8_1 = {}
L9_1 = vector3
L10_1 = 0
L11_1 = 0
L12_1 = 0
L9_1 = L9_1(L10_1, L11_1, L12_1)
L10_1 = 0
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = {}
L19_1 = nil
L20_1 = nil
L21_1 = nil
L22_1 = nil
L23_1 = nil
L24_1 = false
L25_1 = false
L26_1 = false
L27_1 = false
L28_1 = 0
L29_1 = {}
function L30_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = L29_1
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L4_2 = SendToJavascript
    L5_2 = "UpdateScorebarMugs"
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
    return
  end
  L4_2 = SendToJavascript
  L5_2 = "CreateScorebar"
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L29_1
  L5_2 = {}
  L5_2.id = A0_2
  L5_2.coords = A3_2
  L5_2.visible = false
  L4_2[A0_2] = L5_2
end
function L31_1()
  local L0_2, L1_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L7_1
  L0_2 = L0_2 > L1_2
  return L0_2
end
function L32_1(A0_2)
  local L1_2
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 + A0_2
  L7_1 = L1_2
end
function L33_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = SendToJavascript
  L4_2 = "SetScorebarScore"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L34_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SendToJavascript
  L2_2 = "DeleteScorebar"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L29_1
  L1_2[A0_2] = nil
end
function L35_1(A0_2)
  local L1_2, L2_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L19_1
    if not L1_2 then
      return
    end
  end
  L1_2 = SetEntityLocallyInvisible
  L2_2 = A0_2
  L1_2(L2_2)
end
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  mugData = nil
  L1_2 = RegisterPedheadshot
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 3000
  while true do
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if not (L2_2 > L3_2) then
      break
    end
    L3_2 = IsPedheadshotReady
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 33
    L3_2(L4_2)
  end
  L3_2 = IsPedheadshotValid
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = GetPedheadshotTxdString
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "https://nui-img/%s/%s"
    L6_2 = L3_2
    L7_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
    L4_2 = SendNUIMessage
    L5_2 = {}
    L5_2.txdName = L3_2
    L5_2.action = "mugconvert"
    L4_2(L5_2)
  end
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L2_2 = L3_2 + 1500
  while true do
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if not (L2_2 > L3_2) then
      break
    end
    L3_2 = mugData
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 33
    L3_2(L4_2)
  end
  L3_2 = mugData
  if "data:" == L3_2 then
    mugData = nil
  end
  L3_2 = UnregisterPedheadshot
  L4_2 = L1_2
  L3_2(L4_2)
  L3_2 = mugData
  return L3_2
end
L37_1 = RegisterNUICallback
L38_1 = "mugcallback"
function L39_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
  L2_2 = A0_2.base64
  mugData = L2_2
end
L37_1(L38_1, L39_1)
L37_1 = {}
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = L37_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.remote
    if L7_2 then
      L7_2 = L6_2.coords
      L7_2 = L7_2 - A0_2
      L7_2 = #L7_2
      L8_2 = 0.1
      if L7_2 < L8_2 then
        return L6_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L39_1 = {}
function L40_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L0_2.LastBallPos = nil
  L0_2.MatchStartedTime = 0
  L0_2.LocalHitsCount = 0
  L0_2.RacketMeterCounter = 0
  L0_2.BallMeterCounter = 0
  L0_2.SafeArea = true
  L0_2.AimStrength = 0.0
  L0_2.AimDirection = 0.0
  L0_2.LastAimDirection = 0.0
  L0_2.LastAimDistance = 0.0
  L0_2.ballMovementActive = false
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L0_2.LastHitTime = L1_2
  L0_2.LocalSide = 1
  L1_2 = {}
  L2_2 = 0
  L3_2 = 0
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L0_2.LocalScores = L1_2
  L0_2.Active = true
  L0_2.PlayerMovementXActive = true
  L0_2.PlayerMovementYActive = true
  L0_2.LastServePlayer = 1
  L0_2.LastWooshTime = 0
  L0_2.MaxBalance = 0
  L1_2 = {}
  L0_2.BetValues = L1_2
  L0_2.IsHost = false
  L0_2.ExpectHitFrom = -1
  L0_2.RoundID = 200
  L0_2.BallFailRoundIDSent = 0
  L0_2.OpponentBallFellOnRound = 0
  L0_2.OpponentHitTime = 0
  L0_2.LocalHitTime = 0
  L0_2.PVPLocalBounceTime = 0
  L0_2.PVPLastFinishedRoundID = 0
  L0_2.PVPLastPingTime = 0
  L0_2.PVPPing = 999
  L0_2.roundStartedTime = 0
  L0_2.PVPIgnoreInput = true
  L39_1 = L0_2
end
function L41_1()
  local L0_2, L1_2
  L0_2 = L25_1
  if not L0_2 then
    L0_2 = L27_1
    if not L0_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L0_2 = true
  L27_1 = L0_2
  L0_2 = PeerJS
  L0_2.IgnoreErrorsAndDisconnects = true
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = 1
    L1_3 = 3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L27_1
      if not L4_3 then
        break
      end
      L4_3 = L19_1
      if not L4_3 then
        break
      end
      L4_3 = L39_1.PVPPing
      if 999 == L4_3 then
        L4_3 = Wait
        L5_3 = 1000
        L4_3(L5_3)
      else
        break
      end
    end
    L0_3 = L27_1
    if L0_3 then
      L0_3 = L19_1
      if L0_3 then
        L0_3 = L39_1.PVPPing
        if 999 == L0_3 then
          L0_3 = L21_1
          if L0_3 then
            L0_3 = L21_1.Close
            L0_3()
            L0_3 = nil
            L21_1 = L0_3
          end
          L0_3 = Wait
          L1_3 = 1000
          L0_3(L1_3)
          L0_3 = L39_1.HostSide
          L1_3 = L39_1.LocalSide
          if L0_3 == L1_3 then
            L0_3 = TriggerServerEvent
            L1_3 = "TableTennis:SwitchToFivem"
            L0_3(L1_3)
          end
        end
      end
    end
    L0_3 = false
    L27_1 = L0_3
    L0_3 = PeerJS
    L0_3.IgnoreErrorsAndDisconnects = false
  end
  L0_2(L1_2)
end
function L42_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = L1_1
  L4_2 = L4_2 + 1
  L1_1 = L4_2
  L4_2 = {}
  L5_2 = {}
  L4_2.bonusNumberMarkers = L5_2
  L5_2 = {}
  L4_2.invisiblepeds = L5_2
  L5_2 = {}
  L4_2.bonusNumberMarkerObjects = L5_2
  L4_2.gamemode = -1
  L4_2.skin = A3_2
  L4_2.ballMarkerEnabled = false
  L4_2.netEnabled = false
  L5_2 = L1_1
  L4_2.id = L5_2
  L4_2.coords = A0_2
  L4_2.heading = A1_2
  L4_2.model = A2_2
  L4_2.isRecording = false
  L4_2.isReplaying = false
  L4_2.lastReplayTime = 0
  L5_2 = {}
  L4_2.playableObjects = L5_2
  L5_2 = {}
  L4_2.snaps = L5_2
  L5_2 = {}
  L4_2.rackets = L5_2
  L4_2.lastReceivedReplayTime = 0
  L4_2.localFx = nil
  L4_2.localFxStrength = 0
  L5_2 = {}
  L5_2.soundFolder = "tennis"
  L5_2.isServing = false
  L6_2 = vector3
  L7_2 = 0.0
  L7_2 = -L7_2
  L8_2 = -1.5
  L9_2 = 1.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.offset = L6_2
  L6_2 = vector3
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.worldCoords = L6_2
  L6_2 = vector3
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.velocity = L6_2
  L5_2.model = ""
  L5_2.size = 0.035
  L5_2.mass = 1
  L5_2.bounciness = 0.85
  L5_2.drag = 0.05
  L5_2.friction = 0.0
  L5_2.maxAirVelocity = 2.3076923076923075
  L5_2.minAirVelocity = 1.8846153846153846
  L5_2.minBounceOffVelocity = 3.0
  L5_2.maxVelocity = 7.5
  L5_2.minVelocity = 3.0
  L6_2 = {}
  L6_2.r = 255
  L6_2.g = 255
  L6_2.b = 255
  L5_2.trailColor = L6_2
  L5_2.trailScale = 0.5
  L4_2.ballData = L5_2
  L5_2 = {}
  L6_2 = {}
  L7_2 = vector3
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.offset = L7_2
  L7_2 = vector3
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.mouseOffset = L7_2
  L7_2 = vector3
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.worldCoords = L7_2
  L6_2.size = 0.12
  L6_2.playerId = -2
  L6_2.mug = nil
  L6_2.ped = nil
  L6_2.originalPed = nil
  L6_2.racketSkin = 0
  L7_2 = {}
  L8_2 = vector3
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.offset = L8_2
  L8_2 = vector3
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.mouseOffset = L8_2
  L8_2 = vector3
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.worldCoords = L8_2
  L7_2.size = 0.3
  L7_2.playerId = -2
  L7_2.mug = nil
  L7_2.ped = nil
  L7_2.originalPed = nil
  L7_2.racketSkin = 0
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L4_2.playerDatas = L5_2
  L5_2 = {}
  L4_2.lastPedAnimation = L5_2
  L4_2.ballFallingDown = false
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L4_2.invisiblepeds
    L1_3[A0_3] = true
    L1_3 = SetEntityAlpha
    L2_3 = A0_3
    L3_3 = 0
    L1_3(L2_3, L3_3)
  end
  L4_2.setPedInvisible = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = pairs
    L1_3 = L4_2.invisiblepeds
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      if L4_3 then
        L6_3 = DoesEntityExist
        L7_3 = L4_3
        L6_3 = L6_3(L7_3)
        if L6_3 then
          L6_3 = SetEntityAlpha
          L7_3 = L4_3
          L8_3 = 255
          L6_3(L7_3, L8_3)
        end
      end
    end
    L0_3 = {}
    L4_2.invisiblePeds = L0_3
  end
  L4_2.setPedsBackVisible = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L4_2.bonusNumberMarkers
    L1_3 = L1_3[A0_3]
    if not L1_3 then
      return
    end
    if L1_3 then
      L2_3 = L1_3.collected
      if L2_3 then
        L2_3 = L1_3.object
        if L2_3 then
          L2_3 = DoesEntityExist
          L3_3 = L1_3.object
          L2_3 = L2_3(L3_3)
          if L2_3 then
            L2_3 = DeleteEntity
            L3_3 = L1_3.object
            L2_3(L3_3)
          end
        end
        return
      end
    end
    L1_3.collected = true
    L2_3 = L1_3.object
    if L2_3 then
      L2_3 = DoesEntityExist
      L3_3 = L1_3.object
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L2_3 = CreateThread
        function L3_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
          L0_4 = 255
          L1_4 = 0
          L2_4 = -10
          for L3_4 = L0_4, L1_4, L2_4 do
            L1_3.a = L3_4
            L4_4 = L1_3.z
            L4_4 = L4_4 + 0.01
            L1_3.z = L4_4
            L4_4 = SetEntityAlpha
            L5_4 = L1_3.object
            L6_4 = L1_3.a
            L4_4(L5_4, L6_4)
            L4_4 = Wait
            L5_4 = 33
            L4_4(L5_4)
          end
          L0_4 = L4_2.bonusNumberMarkers
          L1_4 = A0_3
          L0_4[L1_4] = nil
          L0_4 = DeleteEntity
          L1_4 = L1_3.object
          L0_4(L1_4)
        end
        L4_3 = "collectBonusNumberMarker"
        L2_3(L3_3, L4_3)
      end
    end
    L2_3 = L4_2.isRecording
    if L2_3 then
      L2_3 = table
      L2_3 = L2_3.insert
      L3_3 = L4_2.snaps
      L4_3 = {}
      L5_3 = GetGameTimer
      L5_3 = L5_3()
      L6_3 = L4_2.recordStartTime
      L5_3 = L5_3 - L6_3
      L4_3.time = L5_3
      L4_3.type = "collectBonusNumberMarker"
      L4_3.id = A0_3
      L2_3(L3_3, L4_3)
    end
  end
  L4_2.collectBonusNumberMarker = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = pairs
    L2_3 = L4_2.bonusNumberMarkers
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L6_3.forPlayer
      if L7_3 == A0_3 then
        L7_3 = DoesEntityExist
        L8_3 = L4_2.bonusNumberMarkers
        L9_3 = L6_3.id
        L8_3 = L8_3[L9_3]
        L8_3 = L8_3.object
        L7_3 = L7_3(L8_3)
        if L7_3 then
          L7_3 = DeleteEntity
          L8_3 = L4_2.bonusNumberMarkers
          L9_3 = L6_3.id
          L8_3 = L8_3[L9_3]
          L8_3 = L8_3.object
          L7_3(L8_3)
        end
        L7_3 = L4_2.bonusNumberMarkers
        L8_3 = L6_3.id
        L7_3[L8_3] = nil
      end
    end
    L1_3 = L4_2.isRecording
    if L1_3 then
      L1_3 = table
      L1_3 = L1_3.insert
      L2_3 = L4_2.snaps
      L3_3 = {}
      L4_3 = GetGameTimer
      L4_3 = L4_3()
      L5_3 = L4_2.recordStartTime
      L4_3 = L4_3 - L5_3
      L3_3.time = L4_3
      L3_3.type = "clearNumberMarkersForPlayer"
      L3_3.playerId = A0_3
      L1_3(L2_3, L3_3)
    end
  end
  L4_2.clearNumberMarkersForPlayer = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = pairs
    L1_3 = L4_2.bonusNumberMarkerObjects
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      if L5_3 then
        L6_3 = DoesEntityExist
        L7_3 = L5_3
        L6_3 = L6_3(L7_3)
        if L6_3 then
          L6_3 = DeleteEntity
          L7_3 = L5_3
          L6_3(L7_3)
        end
      end
    end
    L0_3 = {}
    L4_2.bonusNumberMarkerObjects = L0_3
    L0_3 = {}
    L4_2.bonusNumberMarkers = L0_3
  end
  L4_2.clearBonusMarkers = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = pairs
    L2_3 = L4_2.bonusNumberMarkers
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L6_3.forPlayer
      if L7_3 == A0_3 then
        return L6_3
      end
    end
    L1_3 = nil
    return L1_3
  end
  L4_2.getBonusNumberMarkerOfPlayer = L5_2
  function L5_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3, A7_3, A8_3)
    local L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L9_3 = {}
    L9_3.id = A0_3
    L9_3.forPlayer = A1_3
    L9_3.x = A2_3
    L9_3.y = A3_3
    L9_3.z = 0
    L9_3.number = A4_3
    L9_3.size = A6_3
    L9_3.r = 255
    L9_3.g = 255
    L9_3.b = 255
    L9_3.a = 100
    L9_3.elapsedTime = 0
    L9_3.expireTime = A8_3
    L9_3.initialScore = A4_3
    L9_3.finalScore = A5_3
    L9_3.initialSize = A6_3
    L9_3.finalSize = A7_3
    L10_3 = L4_2.bonusNumberMarkers
    L10_3[A0_3] = L9_3
    L10_3 = CreateThread
    function L11_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L0_4 = GetHashKey
      L1_4 = "prop_table_ten_marker_"
      L2_4 = A4_3
      L1_4 = L1_4 .. L2_4
      L0_4 = L0_4(L1_4)
      L1_4 = LoadModel
      L2_4 = L0_4
      L1_4(L2_4)
      L1_4 = L4_2.bonusNumberMarkers
      L2_4 = A0_3
      L1_4 = L1_4[L2_4]
      if L1_4 then
        L1_4 = L4_2.bonusNumberMarkers
        L2_4 = A0_3
        L1_4 = L1_4[L2_4]
        L1_4 = L1_4.collected
        if not L1_4 then
          L1_4 = L4_2.getOffset
          L2_4 = vector3
          L3_4 = A2_3
          L4_4 = A3_3
          L5_4 = 0.75
          L2_4, L3_4, L4_4, L5_4, L6_4, L7_4 = L2_4(L3_4, L4_4, L5_4)
          L1_4 = L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
          L2_4 = CreateObject
          L3_4 = L0_4
          L4_4 = L1_4
          L5_4 = false
          L6_4 = false
          L7_4 = false
          L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4, L7_4)
          L3_4 = SetEntityHeading
          L4_4 = L2_4
          L5_4 = L4_2.heading
          L5_4 = L5_4 + 90.0
          L3_4(L4_4, L5_4)
          L3_4 = FreezeEntityPosition
          L4_4 = L2_4
          L5_4 = true
          L3_4(L4_4, L5_4)
          L3_4 = L4_2.bonusNumberMarkerObjects
          L4_4 = A0_3
          L3_4[L4_4] = L2_4
          L9_3.object = L2_4
        end
      end
    end
    L12_3 = "spawnBonusNumberMarker"
    L10_3(L11_3, L12_3)
    L10_3 = L4_2.isRecording
    if L10_3 then
      L10_3 = table
      L10_3 = L10_3.insert
      L11_3 = L4_2.snaps
      L12_3 = {}
      L13_3 = GetGameTimer
      L13_3 = L13_3()
      L14_3 = L4_2.recordStartTime
      L13_3 = L13_3 - L14_3
      L12_3.time = L13_3
      L12_3.type = "bonusNumberMarker"
      L12_3.id = A0_3
      L12_3.forPlayer = A1_3
      L12_3.x = A2_3
      L12_3.y = A3_3
      L12_3.initialScore = A4_3
      L12_3.finalScore = A5_3
      L12_3.intialSize = A6_3
      L12_3.finalSize = A7_3
      L12_3.lifetime = A8_3
      L10_3(L11_3, L12_3)
    end
  end
  L4_2.spawnBonusNumberMarker = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = TennisTableSkins
    L2_3 = A3_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3[1]
    L2_3 = TennisTableSkins
    L3_3 = A3_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3[2]
    if A0_3 then
      L3_3 = RemoveModelSwap
      L4_3 = L4_2.coords
      L4_3 = L4_3.x
      L5_3 = L4_2.coords
      L5_3 = L5_3.y
      L6_3 = L4_2.coords
      L6_3 = L6_3.z
      L7_3 = 0.5
      L8_3 = L1_3
      L9_3 = L2_3
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      L3_3 = RemoveModelSwap
      L4_3 = L4_2.coords
      L4_3 = L4_3.x
      L5_3 = L4_2.coords
      L5_3 = L5_3.y
      L6_3 = L4_2.coords
      L6_3 = L6_3.z
      L7_3 = 0.5
      L8_3 = L2_3
      L9_3 = L1_3
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    else
      L3_3 = TennisTableSkins
      L4_3 = L4_2.skin
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3[2]
      L4_3 = LoadModel
      L5_3 = L3_3
      L4_3(L5_3)
      L4_3 = HasModelLoaded
      L5_3 = L3_3
      L4_3 = L4_3(L5_3)
      if L4_3 then
        L4_3 = CreateModelSwap
        L5_3 = L4_2.coords
        L5_3 = L5_3.x
        L6_3 = L4_2.coords
        L6_3 = L6_3.y
        L7_3 = L4_2.coords
        L7_3 = L7_3.z
        L8_3 = 0.5
        L9_3 = L1_3
        L10_3 = L2_3
        L11_3 = p6
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      end
    end
  end
  L4_2.toggleNetVariation = L5_2
  function L5_2(A0_3)
    local L1_3
    if A0_3 then
      L1_3 = L4_2.isRecording
      if L1_3 then
        goto lbl_11
      end
    end
    if not A0_3 then
      L1_3 = L4_2.isRecording
      ::lbl_11::
      if not L1_3 then
        return
      end
    end
    L4_2.isRecording = A0_3
    L1_3 = {}
    L4_2.snaps = L1_3
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L4_2.recordStartTime = L1_3
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L4_2.nextRecordSendTime = L1_3
  end
  L4_2.toggleRecording = L5_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = CreateThread
    function L1_3()
      local L0_4, L1_4, L2_4
      while true do
        L0_4 = L4_2.isReplaying
        if not L0_4 then
          break
        end
        L0_4 = L4_2.lastReplayTick
        if L0_4 then
          L0_4 = GetGameTimer
          L0_4 = L0_4()
          L1_4 = L4_2.lastReplayTick
          L0_4 = L0_4 - L1_4
          if L0_4 then
            goto lbl_15
          end
        end
        L0_4 = 0
        ::lbl_15::
        L1_4 = 500
        if L0_4 > L1_4 then
          L1_4 = L4_2.destroy
          L1_4()
        end
        L1_4 = Wait
        L2_4 = 100
        L1_4(L2_4)
      end
    end
    L0_3(L1_3)
  end
  L4_2.startReplayChecker = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = L4_2.isReplaying
    if L0_3 then
      return
    end
    L0_3 = true
    L1_3 = 1
    L2_3 = 2
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L4_2.playerDatas
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.playerId
      if -2 == L5_3 then
        L5_3 = L4_2.playerDatas
        L5_3 = L5_3[L4_3]
        L5_3 = L5_3.skin
        if not L5_3 then
          L0_3 = false
        end
      end
    end
    L1_3 = L4_2.matchSettingsReceived
    if not L1_3 then
      L1_3 = TriggerServerEvent
      L2_3 = "TableTennis:RequestMatchSettings"
      L3_3 = L4_2.coords
      L1_3(L2_3, L3_3)
      return
    end
    if not L0_3 then
      return
    end
    L1_3 = L4_2.destroy
    L1_3()
    L1_3 = L4_2.toggleNetVariation
    L2_3 = L4_2.netEnabled
    L1_3(L2_3)
    L1_3 = L4_2.ballData
    L2_3 = vector3
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = 0.0
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L1_3.velocity = L2_3
    L1_3 = L4_2.ballData
    L2_3 = vector3
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = -5.0
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L1_3.offset = L2_3
    L4_2.isReplaying = true
    L1_3 = L4_2.ignoreFail
    L2_3 = 2147483647
    L1_3(L2_3)
    L1_3 = LoadModel
    L2_3 = L4_2.ballData
    L2_3 = L2_3.model
    L1_3(L2_3)
    L1_3 = L4_2.playableObjects
    L2_3 = CreateObject
    L3_3 = GetHashKey
    L4_3 = L4_2.ballData
    L4_3 = L4_3.model
    L3_3 = L3_3(L4_3)
    L4_3 = L4_2.coords
    L5_3 = false
    L6_3 = false
    L7_3 = false
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L1_3[2] = L2_3
    L1_3 = 1
    L2_3 = 2
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = nil
      L6_3 = L4_2.getPlayerPlayingPosition
      L7_3 = L4_3
      L6_3 = L6_3(L7_3)
      if 1 == L4_3 then
        L7_3 = L4_2.heading
        if L7_3 then
          goto lbl_88
        end
      end
      L7_3 = L4_2.heading
      L7_3 = L7_3 + 180
      ::lbl_88::
      L8_3 = L4_2.playerDatas
      L8_3 = L8_3[L4_3]
      L8_3 = L8_3.netId
      if L8_3 then
        L8_3 = NetToPed
        L9_3 = L4_2.playerDatas
        L9_3 = L9_3[L4_3]
        L9_3 = L9_3.netId
        L8_3 = L8_3(L9_3)
        if 0 ~= L8_3 then
          L9_3 = L4_2.playerDatas
          L9_3 = L9_3[L4_3]
          L9_3.originalPed = L8_3
          L9_3 = ClonePed
          L10_3 = L8_3
          L11_3 = false
          L12_3 = false
          L13_3 = false
          L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
          L5_3 = L9_3
        end
      else
        L8_3 = L4_2.playerDatas
        L8_3 = L8_3[L4_3]
        L8_3 = L8_3.skin
        if L8_3 then
          L8_3 = LoadModel
          L9_3 = L4_2.playerDatas
          L9_3 = L9_3[L4_3]
          L9_3 = L9_3.skin
          L8_3(L9_3)
          L8_3 = CreatePed
          L9_3 = 2
          L10_3 = GetHashKey
          L11_3 = L4_2.playerDatas
          L11_3 = L11_3[L4_3]
          L11_3 = L11_3.skin
          L10_3 = L10_3(L11_3)
          L11_3 = L6_3
          L12_3 = L7_3
          L13_3 = false
          L14_3 = false
          L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
          L5_3 = L8_3
          L8_3 = SetPedBrave
          L9_3 = L5_3
          L8_3(L9_3)
        end
      end
      if L5_3 then
        L8_3 = SetEntityCoordsNoOffset
        L9_3 = L5_3
        L10_3 = L6_3
        L8_3(L9_3, L10_3)
        L8_3 = SetEntityHeading
        L9_3 = L5_3
        L10_3 = L7_3
        L8_3(L9_3, L10_3)
        L8_3 = L4_2.playerDatas
        L8_3 = L8_3[L4_3]
        L8_3.ped = L5_3
        L8_3 = L4_2.attachRacketToPed
        L9_3 = L5_3
        L10_3 = L4_2.playerDatas
        L10_3 = L10_3[L4_3]
        L10_3 = L10_3.racketSkin
        L8_3(L9_3, L10_3)
        L8_3 = L4_2.playAnimationOnPed
        L9_3 = L5_3
        L10_3 = L4_3
        L11_3 = "idle"
        L12_3 = vector2
        L13_3 = 0.0
        L14_3 = 0.0
        L12_3, L13_3, L14_3 = L12_3(L13_3, L14_3)
        L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      end
    end
    L1_3 = CreateThread
    function L2_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4
      L0_4 = nil
      L1_4 = 0
      L2_4 = GetGameTimer
      L2_4 = L2_4()
      L3_4 = nil
      L4_4 = nil
      L5_4 = true
      L6_4 = false
      L7_4 = L4_2.startReplayChecker
      L7_4()
      while true do
        L7_4 = L4_2.isReplaying
        if not L7_4 then
          break
        end
        L7_4 = GetGameTimer
        L7_4 = L7_4()
        L4_2.lastReplayTick = L7_4
        L7_4 = 1
        L8_4 = 2
        L9_4 = 1
        for L10_4 = L7_4, L8_4, L9_4 do
          L11_4 = L4_2.playerDatas
          L11_4 = L11_4[L10_4]
          L11_4 = L11_4.originalPed
          if L11_4 and 0 ~= L11_4 then
            L12_4 = L4_2.setPedInvisible
            L13_4 = L11_4
            L12_4(L13_4)
          end
        end
        L7_4 = GetGameTimer
        L7_4 = L7_4()
        L8_4 = L4_2.lastReceivedReplayTime
        L7_4 = L7_4 - L8_4
        L8_4 = 5000
        if L7_4 > L8_4 then
          break
        end
        L8_4 = L4_2.id
        L7_4 = L29_1
        L7_4 = L7_4[L8_4]
        if not L7_4 then
          L7_4 = L4_2.playerDatas
          L7_4 = L7_4[1]
          L7_4 = L7_4.mugShot
          if L7_4 then
            L7_4 = L4_2.playerDatas
            L7_4 = L7_4[2]
            L7_4 = L7_4.mugShot
            if L7_4 then
              L7_4 = L30_1
              L8_4 = L4_2.id
              L9_4 = L4_2.playerDatas
              L9_4 = L9_4[1]
              L9_4 = L9_4.mugShot
              L10_4 = L4_2.playerDatas
              L10_4 = L10_4[2]
              L10_4 = L10_4.mugShot
              L11_4 = vector3
              L12_4 = L4_2.coords
              L12_4 = L12_4.x
              L13_4 = L4_2.coords
              L13_4 = L13_4.y
              L14_4 = L4_2.coords
              L14_4 = L14_4.z
              L14_4 = L14_4 + 2.0
              L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4 = L11_4(L12_4, L13_4, L14_4)
              L7_4(L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4)
            end
          end
        end
        L7_4 = GetGameTimer
        L7_4 = L7_4()
        L7_4 = L7_4 - L2_4
        if not L4_4 then
          L8_4 = L4_2.snaps
          L8_4 = #L8_4
          if L8_4 > 0 then
            L8_4 = L4_2.snaps
            L4_4 = L8_4[1]
            if not L0_4 then
              L8_4 = L4_4.time
              L1_4 = L8_4 - 2000
              L8_4 = GetGameTimer
              L8_4 = L8_4()
              L0_4 = L8_4
            end
            L8_4 = table
            L8_4 = L8_4.remove
            L9_4 = L4_2.snaps
            L10_4 = 1
            L8_4(L9_4, L10_4)
          end
        else
          L8_4 = GetGameTimer
          L8_4 = L8_4()
          L8_4 = L8_4 - L0_4
          L8_4 = L8_4 + L1_4
          L9_4 = L4_4.time
          if L8_4 >= L9_4 then
            L9_4 = L4_4.type
            if "pedPrepare" == L9_4 then
              L9_4 = L4_2.playAnimationOnPed
              L10_4 = L4_2.playerDatas
              L11_4 = L4_4.side
              L10_4 = L10_4[L11_4]
              L10_4 = L10_4.ped
              L11_4 = L4_4.side
              L12_4 = "idle"
              L13_4 = vector2
              L14_4 = L4_4.watingX
              L15_4 = 0.0
              L13_4, L14_4, L15_4, L16_4, L17_4, L18_4 = L13_4(L14_4, L15_4)
              L9_4(L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4)
            else
              L9_4 = L4_4.type
              if "pedShoot" == L9_4 and L5_4 then
                L9_4 = L4_2.playAnimationOnPed
                L10_4 = L4_2.playerDatas
                L11_4 = L4_4.side
                L10_4 = L10_4[L11_4]
                L10_4 = L10_4.ped
                L11_4 = L4_4.side
                L12_4 = L4_4.anim
                L13_4 = L4_4.ballOffset
                if L13_4 then
                  L13_4 = vector2
                  L14_4 = L4_4.ballOffset
                  L15_4 = 0.0
                  L13_4 = L13_4(L14_4, L15_4)
                  if L13_4 then
                    goto lbl_146
                  end
                end
                L13_4 = nil
                ::lbl_146::
                L9_4(L10_4, L11_4, L12_4, L13_4)
              else
                L9_4 = L4_4.type
                if "ball" == L9_4 then
                  L6_4 = true
                  L9_4 = L4_2.setSlowDownForTurn
                  L10_4 = L4_4.slowDown
                  L11_4 = L4_4.slowDownSide
                  L9_4(L10_4, L11_4)
                  L9_4 = L4_4.speed
                  L4_2.simulateSpeed = L9_4
                  L9_4 = L4_2.ballData
                  L10_4 = vector3
                  L11_4 = L4_4.nV
                  L11_4 = L11_4.x
                  L12_4 = L4_4.nV
                  L12_4 = L12_4.y
                  L13_4 = L4_4.nV
                  L13_4 = L13_4.z
                  L10_4 = L10_4(L11_4, L12_4, L13_4)
                  L9_4.velocity = L10_4
                  L9_4 = L4_2.ballData
                  L10_4 = vector3
                  L11_4 = L4_4.nO
                  L11_4 = L11_4.x
                  L12_4 = L4_4.nO
                  L12_4 = L12_4.y
                  L13_4 = L4_4.nO
                  L13_4 = L13_4.z
                  L10_4 = L10_4(L11_4, L12_4, L13_4)
                  L9_4.offset = L10_4
                  L9_4 = PlaySound
                  L10_4 = "sounds\\"
                  L11_4 = L4_2.ballData
                  L11_4 = L11_4.soundFolder
                  L12_4 = "\\Hit.mp3"
                  L10_4 = L10_4 .. L11_4 .. L12_4
                  L11_4 = L4_2.ballData
                  L11_4 = L11_4.worldCoords
                  L9_4(L10_4, L11_4)
                else
                  L9_4 = L4_4.type
                  if "clearNumberMarkersForPlayer" == L9_4 then
                    L9_4 = L4_2.clearNumberMarkersForPlayer
                    L10_4 = L4_4.playerId
                    L9_4(L10_4)
                  else
                    L9_4 = L4_4.type
                    if "collectBonusNumberMarker" == L9_4 then
                      L9_4 = L4_2.collectBonusNumberMarker
                      L10_4 = L4_4.id
                      L9_4(L10_4)
                    else
                      L9_4 = L4_4.type
                      if "bonusNumberMarker" == L9_4 then
                        L9_4 = L4_2.spawnBonusNumberMarker
                        L10_4 = L4_4.id
                        L11_4 = L4_4.forPlayer
                        L12_4 = L4_4.x
                        L13_4 = L4_4.y
                        L14_4 = L4_4.initialScore
                        L15_4 = L4_4.finalScore
                        L16_4 = L4_4.intialSize
                        L17_4 = L4_4.finalSize
                        L18_4 = L4_4.lifetime
                        L9_4(L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4)
                      else
                        L9_4 = L4_4.type
                        if "wallBounce" == L9_4 then
                          L9_4 = L4_2.bounceEffect
                          L10_4 = L4_4.side
                          L9_4(L10_4)
                        else
                          L9_4 = L4_4.type
                          if "roundEnd" == L9_4 then
                            L9_4 = 1
                            L10_4 = 2
                            L11_4 = 1
                            for L12_4 = L9_4, L10_4, L11_4 do
                              L13_4 = L4_4.pointUp
                              if L13_4 == L12_4 then
                                L13_4 = "react_win_0"
                                L14_4 = RandomNumber
                                L15_4 = 1
                                L16_4 = 5
                                L14_4 = L14_4(L15_4, L16_4)
                                L13_4 = L13_4 .. L14_4
                                if L13_4 then
                                  goto lbl_248
                                end
                              end
                              L13_4 = "react_lose_0"
                              L14_4 = RandomNumber
                              L15_4 = 1
                              L16_4 = 5
                              L14_4 = L14_4(L15_4, L16_4)
                              L13_4 = L13_4 .. L14_4
                              ::lbl_248::
                              L14_4 = L4_2.playAnimationOnPed
                              L15_4 = L4_2.playerDatas
                              L15_4 = L15_4[L12_4]
                              L15_4 = L15_4.ped
                              L16_4 = L12_4
                              L17_4 = L13_4
                              L18_4 = nil
                              L14_4(L15_4, L16_4, L17_4, L18_4)
                            end
                            L10_4 = L4_2.id
                            L9_4 = L29_1
                            L9_4 = L9_4[L10_4]
                            if L9_4 then
                              L9_4 = L33_1
                              L10_4 = L4_2.id
                              L11_4 = L4_4.score1
                              L12_4 = L4_4.score2
                              L9_4(L10_4, L11_4, L12_4)
                            end
                            L9_4 = L4_2.clearBonusMarkers
                            L9_4()
                          else
                            L9_4 = L4_4.type
                            if "finishRound" == L9_4 then
                              L5_4 = false
                              L4_2.ballFallingDown = true
                              L9_4 = SetEntityCoordsNoOffset
                              L10_4 = L4_2.playableObjects
                              L10_4 = L10_4[2]
                              L11_4 = vector3
                              L12_4 = L4_4.worldCoords
                              L12_4 = L12_4.x
                              L13_4 = L4_4.worldCoords
                              L13_4 = L13_4.y
                              L14_4 = L4_4.worldCoords
                              L14_4 = L14_4.z
                              L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4 = L11_4(L12_4, L13_4, L14_4)
                              L9_4(L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4)
                              L9_4 = L4_4.headedVelocity
                              if L9_4 then
                                L9_4 = SetEntityVelocity
                                L10_4 = L4_2.playableObjects
                                L10_4 = L10_4[2]
                                L11_4 = vector3
                                L12_4 = L4_4.headedVelocity
                                L12_4 = L12_4.x
                                L13_4 = L4_4.headedVelocity
                                L13_4 = L13_4.y
                                L14_4 = L4_4.headedVelocity
                                L14_4 = L14_4.z
                                L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4 = L11_4(L12_4, L13_4, L14_4)
                                L9_4(L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4)
                              end
                            else
                              L9_4 = L4_4.type
                              if "newRound" == L9_4 then
                                L5_4 = true
                                L9_4 = L4_2.ballData
                                L10_4 = vector3
                                L11_4 = L4_4.nV
                                L11_4 = L11_4.x
                                L12_4 = L4_4.nV
                                L12_4 = L12_4.y
                                L13_4 = L4_4.nV
                                L13_4 = L13_4.z
                                L10_4 = L10_4(L11_4, L12_4, L13_4)
                                L9_4.velocity = L10_4
                                L9_4 = L4_2.ballData
                                L10_4 = vector3
                                L11_4 = L4_4.nO
                                L11_4 = L11_4.x
                                L12_4 = L4_4.nO
                                L12_4 = L12_4.y
                                L13_4 = L4_4.nO
                                L13_4 = L13_4.z
                                L10_4 = L10_4(L11_4, L12_4, L13_4)
                                L9_4.offset = L10_4
                                L4_2.ballFallingDown = false
                                L6_4 = true
                              else
                                L9_4 = L4_4.type
                                if "ballswitch" == L9_4 then
                                  L9_4 = L4_2.switchBallModel
                                  L10_4 = L4_4.nextBall
                                  L9_4(L10_4)
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
            L4_4 = nil
          end
        end
        L9_4 = L4_2.id
        L8_4 = L29_1
        L8_4 = L8_4[L9_4]
        if L8_4 then
          L9_4 = GetEntityCoords
          L10_4 = PlayerPedId
          L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4 = L10_4()
          L9_4 = L9_4(L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4)
          L10_4 = GetScreenCoordFromWorldCoord
          L11_4 = L8_4.coords
          L11_4 = L11_4.x
          L12_4 = L8_4.coords
          L12_4 = L12_4.y
          L13_4 = L8_4.coords
          L13_4 = L13_4.z
          L10_4, L11_4, L12_4 = L10_4(L11_4, L12_4, L13_4)
          L13_4 = L8_4.visible
          if L10_4 ~= L13_4 then
            L8_4.visible = L10_4
            L13_4 = SendToJavascript
            L14_4 = "ToggleScorebarVisibility"
            L15_4 = L8_4.id
            L16_4 = L8_4.visible
            L13_4(L14_4, L15_4, L16_4)
          end
          if L10_4 then
            L13_4 = L8_4.visible
            if L13_4 then
              L13_4 = SendToJavascript
              L14_4 = "SetScorebarPosition"
              L15_4 = L8_4.id
              L16_4 = L11_4 * 100
              L17_4 = L12_4 * 100
              L18_4 = 0.7
              L13_4(L14_4, L15_4, L16_4, L17_4, L18_4)
            end
          end
        end
        if L6_4 then
          L9_4 = L4_2.ballTick
          L10_4 = L7_4
          L9_4(L10_4)
        end
        L9_4 = L4_2.pedTick
        L10_4 = L7_4
        L9_4(L10_4)
        L9_4 = GetGameTimer
        L9_4 = L9_4()
        L2_4 = L9_4
        L9_4 = Wait
        L10_4 = 0
        L9_4(L10_4)
      end
      L7_4 = L4_2.destroy
      L7_4()
    end
    L3_3 = "replayLoop"
    L1_3(L2_3, L3_3)
  end
  L4_2.startReplaying = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = L4_2.isRecording
    if not L0_3 then
      return
    end
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = L4_2.nextRecordSendTime
    if L0_3 < L1_3 then
      return
    end
    L0_3 = L4_2.snaps
    L0_3 = #L0_3
    if L0_3 > 0 then
      L0_3 = TriggerServerEvent
      L1_3 = "TableTennis:SnapPack"
      L2_3 = L4_2.snaps
      L0_3(L1_3, L2_3)
    end
    L0_3 = {}
    L4_2.snaps = L0_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L0_3 = L0_3 + 1000
    L4_2.nextRecordSendTime = L0_3
  end
  L4_2.recordingTick = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    if 1 == A0_3 then
      L1_3 = GetObjectOffsetFromCoords
      L2_3 = L4_2.coords
      L3_3 = L4_2.heading
      L4_3 = 0.0
      L5_3 = -1.5
      L6_3 = 1.0
      return L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    elseif 2 == A0_3 then
      L1_3 = GetObjectOffsetFromCoords
      L2_3 = L4_2.coords
      L3_3 = L4_2.heading
      L4_3 = 0.0
      L5_3 = 1.5
      L6_3 = 1.0
      return L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    end
    L1_3 = nil
    return L1_3
  end
  L4_2.getPlayerPlayingPosition = L5_2
  function L5_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    if not A0_3 then
      L4_3 = nil
      return L4_3
    end
    L4_3 = LoadTennisAnimations
    L5_3 = 250
    L4_3(L5_3)
    L4_3 = L4_2.getPlayerPlayingPosition
    L5_3 = A1_3
    L4_3 = L4_3(L5_3)
    if 1 == A1_3 then
      L5_3 = L4_2.heading
      if L5_3 then
        goto lbl_19
      end
    end
    L5_3 = L4_2.heading
    L5_3 = L5_3 + 180
    ::lbl_19::
    L6_3 = L4_3
    L7_3 = GetObjectOffsetFromCoords
    L8_3 = L6_3
    L9_3 = L5_3
    L10_3 = AnimationOffsets
    L10_3 = L10_3[A2_3]
    L10_3 = L10_3.offset
    L7_3 = L7_3(L8_3, L9_3, L10_3)
    L6_3 = L7_3
    if A3_3 then
      L7_3 = GetObjectOffsetFromCoords
      L8_3 = L6_3
      L9_3 = L5_3
      L10_3 = A3_3
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      L6_3 = L7_3
    end
    L7_3 = vector3
    L8_3 = 0.0
    L9_3 = 0.0
    L10_3 = L5_3
    L7_3 = L7_3(L8_3, L9_3, L10_3)
    L8_3 = CreateSynchronizedScene
    L9_3 = L6_3
    L10_3 = L7_3
    L11_3 = 0
    L8_3 = L8_3(L9_3, L10_3, L11_3)
    L9_3 = TaskSynchronizedScene
    L10_3 = A0_3
    L11_3 = L8_3
    L12_3 = "mini@tennis"
    L13_3 = A2_3
    L14_3 = 2.0
    L15_3 = -1.5
    L16_3 = 13
    L17_3 = 16
    L18_3 = 2.0
    L19_3 = 0
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
    L9_3 = SetSynchronizedSceneLooped
    L10_3 = L8_3
    L11_3 = false
    L9_3(L10_3, L11_3)
    L9_3 = SetSynchronizedScenePhase
    L10_3 = L8_3
    L11_3 = AnimationOffsets
    L11_3 = L11_3[A2_3]
    L11_3 = L11_3.clipStart
    L9_3(L10_3, L11_3)
    L9_3 = SetSynchronizedSceneLooped
    L10_3 = L8_3
    L11_3 = "idle" == A2_3
    L9_3(L10_3, L11_3)
    L9_3 = L4_2.lastPedAnimation
    L10_3 = {}
    L11_3 = GetGameTimer
    L11_3 = L11_3()
    L10_3.time = L11_3
    L10_3.name = A2_3
    L11_3 = GetGameTimer
    L11_3 = L11_3()
    L12_3 = GetAnimDuration
    L13_3 = "mini@tennis"
    L14_3 = A2_3
    L12_3 = L12_3(L13_3, L14_3)
    L12_3 = L12_3 * 900.0
    L11_3 = L11_3 + L12_3
    L10_3.endTime = L11_3
    L10_3.side = A1_3
    L10_3.offset = A3_3
    L9_3[A0_3] = L10_3
  end
  L4_2.playAnimationOnPed = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L4_2.getPlayerPlayingPosition
    L2_3 = 1
    L1_3 = L1_3(L2_3)
    L1_3 = A0_3 - L1_3
    L1_3 = #L1_3
    L2_3 = L4_2.getPlayerPlayingPosition
    L3_3 = 2
    L2_3 = L2_3(L3_3)
    L2_3 = A0_3 - L2_3
    L2_3 = #L2_3
    if L1_3 < L2_3 then
      L3_3 = 1
      if L3_3 then
        goto lbl_19
      end
    end
    L3_3 = 2
    ::lbl_19::
    return L3_3
  end
  L4_2.getClosestPlayerSideFromCoords = L5_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = GetPedBoneIndex
    L3_3 = A0_3
    L4_3 = 28422
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = L4_2.getBatModelName
    L4_3 = A1_3
    L3_3 = L3_3(L4_3)
    L4_3 = AttachObjectToPed
    L5_3 = A0_3
    L6_3 = L3_3
    L7_3 = L2_3
    L8_3 = vector3
    L9_3 = 0.0
    L10_3 = 0.0
    L11_3 = 0.15
    L8_3 = L8_3(L9_3, L10_3, L11_3)
    L9_3 = vector3
    L10_3 = 0.0
    L11_3 = 0.0
    L12_3 = 0.0
    L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3, L11_3, L12_3)
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L5_3 = L4_2.showUpEntity
    L6_3 = L4_3
    L7_3 = 255
    L5_3(L6_3, L7_3)
    L5_3 = SetEntityNoCollisionEntity
    L6_3 = A0_3
    L7_3 = L4_3
    L5_3(L6_3, L7_3)
    L5_3 = L4_2.rackets
    L5_3[A0_3] = L4_3
  end
  L4_2.attachRacketToPed = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = L4_2.rackets
    L1_3 = L1_3[A0_3]
    if L1_3 then
      L1_3 = DeleteEntity
      L2_3 = L4_2.rackets
      L2_3 = L2_3[A0_3]
      L1_3(L2_3)
    end
  end
  L4_2.destroyPedRacket = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = pairs
    L1_3 = L4_2.rackets
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = DeleteEntity
      L7_3 = L5_3
      L6_3(L7_3)
    end
  end
  L4_2.destroyAllRackets = L5_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = CreateThread
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L0_4 = 10
      L1_4 = 255
      L2_4 = 51
      for L3_4 = L0_4, L1_4, L2_4 do
        L4_4 = DoesEntityExist
        L5_4 = A0_3
        L4_4 = L4_4(L5_4)
        if not L4_4 then
          break
        end
        L4_4 = SetEntityAlpha
        L5_4 = A0_3
        L6_4 = L3_4
        L4_4(L5_4, L6_4)
        L4_4 = Wait
        L5_4 = 100
        L4_4(L5_4)
      end
      L0_4 = DoesEntityExist
      L1_4 = A0_3
      L0_4 = L0_4(L1_4)
      if L0_4 then
        L0_4 = SetEntityAlpha
        L1_4 = A0_3
        L2_4 = A1_3
        L0_4(L1_4, L2_4)
      end
    end
    L4_3 = "showUpEntity"
    L2_3(L3_3, L4_3)
  end
  L4_2.showUpEntity = L5_2
  function L5_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L3_3 = L4_2.destroyBot
    L3_3()
    L4_2.botSide = A0_3
    if not A1_3 then
      A1_3 = "mp_f_freemode_01"
    end
    L3_3 = GetHashKey
    L4_3 = A1_3
    L3_3 = L3_3(L4_3)
    L4_3 = LoadModel
    L5_3 = L3_3
    L4_3(L5_3)
    L4_3 = L4_2.getPlayerPlayingPosition
    L5_3 = A0_3
    L4_3 = L4_3(L5_3)
    if 1 == A0_3 then
      L5_3 = L4_2.heading
      if L5_3 then
        goto lbl_24
      end
    end
    L5_3 = L4_2.heading
    L5_3 = L5_3 + 180
    ::lbl_24::
    if not A2_3 then
      L6_3 = CreatePed
      L7_3 = 2
      L8_3 = L3_3
      L9_3 = L4_3
      L10_3 = L5_3
      L11_3 = false
      L12_3 = false
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L4_2.botPed = L6_3
      L6_3 = SetPedBrave
      L7_3 = L4_2.botPed
      L6_3(L7_3)
      L6_3 = SetEntityCoordsNoOffset
      L7_3 = L4_2.botPed
      L8_3 = L4_3
      L6_3(L7_3, L8_3)
    else
      L6_3 = NetToPed
      L7_3 = A2_3
      L6_3 = L6_3(L7_3)
      if 0 ~= L6_3 then
        L7_3 = ClonePed
        L8_3 = L6_3
        L9_3 = false
        L10_3 = false
        L11_3 = false
        L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
        L4_2.botPed = L7_3
        L7_3 = SetEntityAlpha
        L8_3 = L4_2.botPed
        L9_3 = 0
        L7_3(L8_3, L9_3)
        L7_3 = GetGameTimer
        L7_3 = L7_3()
        L7_3 = L7_3 + 1000
        while true do
          L8_3 = GetGameTimer
          L8_3 = L8_3()
          if not (L7_3 > L8_3) then
            break
          end
          L8_3 = DoesEntityExist
          L9_3 = L4_2.botPed
          L8_3 = L8_3(L9_3)
          if L8_3 then
            break
          end
          L8_3 = Wait
          L9_3 = 33
          L8_3(L9_3)
        end
        L8_3 = DoesEntityExist
        L9_3 = L4_2.botPed
        L8_3 = L8_3(L9_3)
        if not L8_3 then
          L8_3 = CreatePed
          L9_3 = 2
          L10_3 = L3_3
          L11_3 = L4_3
          L12_3 = L5_3
          L13_3 = false
          L14_3 = false
          L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
          L4_2.botPed = L8_3
          L8_3 = SetPedBrave
          L9_3 = L4_2.botPed
          L8_3(L9_3)
        end
      end
    end
    L6_3 = L4_2.botPed
    return L6_3
  end
  L4_2.createBot = L5_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = L4_2.botPed
    if L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = L4_2.botPed
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = DeleteEntity
        L1_3 = L4_2.botPed
        L0_3(L1_3)
      end
    end
    L4_2.botPed = nil
  end
  L4_2.destroyBot = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = pairs
    L1_3 = L4_2.playerDatas
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = L5_3.ped
      if L6_3 then
        L6_3 = DeleteEntity
        L7_3 = L5_3.ped
        L6_3(L7_3)
      end
    end
  end
  L4_2.destroyPeds = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = "prop_table_ten_bat"
    if A0_3 > 0 then
      L2_3 = "prop_table_ten_bat_"
      L3_3 = A0_3
      L2_3 = L2_3 .. L3_3
      L1_3 = L2_3
    end
    return L1_3
  end
  L4_2.getBatModelName = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L4_2.getBatModelName
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = RequestModel
    L3_3 = GetHashKey
    L4_3 = L1_3
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3(L4_3)
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L2_3 = GetGameTimer
    L2_3 = L2_3()
    L2_3 = L2_3 + 1000
    while true do
      L3_3 = GetGameTimer
      L3_3 = L3_3()
      if not (L2_3 > L3_3) then
        break
      end
      L3_3 = HasModelLoaded
      L4_3 = GetHashKey
      L5_3 = L1_3
      L4_3, L5_3, L6_3, L7_3, L8_3 = L4_3(L5_3)
      L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
      if L3_3 then
        break
      end
      L3_3 = Wait
      L4_3 = 33
      L3_3(L4_3)
    end
    L3_3 = HasModelLoaded
    L4_3 = GetHashKey
    L5_3 = L1_3
    L4_3, L5_3, L6_3, L7_3, L8_3 = L4_3(L5_3)
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    if not L3_3 then
      L3_3 = nil
      return L3_3
    end
    L3_3 = CreateObject
    L4_3 = GetHashKey
    L5_3 = L1_3
    L4_3 = L4_3(L5_3)
    L5_3 = L4_2.coords
    L6_3 = false
    L7_3 = false
    L8_3 = false
    return L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
  end
  L4_2.createBatObject = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L4_2.destroyPlayableObjects
    L0_3()
    L0_3 = LoadModel
    L1_3 = L4_2.ballData
    L1_3 = L1_3.model
    L0_3(L1_3)
    L0_3 = L4_2.playableObjects
    L1_3 = CreateObject
    L2_3 = GetHashKey
    L3_3 = L4_2.ballData
    L3_3 = L3_3.model
    L2_3 = L2_3(L3_3)
    L3_3 = L4_2.coords
    L4_3 = false
    L5_3 = false
    L6_3 = false
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L0_3[2] = L1_3
    L0_3 = L4_2.playableObjects
    L1_3 = L4_2.createBatObject
    L2_3 = L5_1.racketSkin
    L1_3 = L1_3(L2_3)
    L0_3[3] = L1_3
  end
  L4_2.createPlayableObjects = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = CreateThread
    function L2_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L0_4 = LoadModel
      L1_4 = A0_3
      L0_4(L1_4)
      L0_4 = HasModelLoaded
      L1_4 = A0_3
      L0_4 = L0_4(L1_4)
      if not L0_4 then
        return
      end
      L0_4 = L4_2.ballData
      L1_4 = A0_3
      L0_4.model = L1_4
      L0_4 = L4_2.playableObjects
      L0_4 = L0_4[2]
      L1_4 = CreateObject
      L2_4 = GetHashKey
      L3_4 = A0_3
      L2_4 = L2_4(L3_4)
      L3_4 = L4_2.coords
      L4_4 = false
      L5_4 = false
      L6_4 = false
      L1_4 = L1_4(L2_4, L3_4, L4_4, L5_4, L6_4)
      L2_4 = SetModelAsNoLongerNeeded
      L3_4 = GetHashKey
      L4_4 = A0_3
      L3_4, L4_4, L5_4, L6_4 = L3_4(L4_4)
      L2_4(L3_4, L4_4, L5_4, L6_4)
      L2_4 = GetGameTimer
      L2_4 = L2_4()
      L2_4 = L2_4 + 1000
      while true do
        L3_4 = GetGameTimer
        L3_4 = L3_4()
        if not (L2_4 > L3_4) then
          break
        end
        L3_4 = DoesEntityExist
        L4_4 = L1_4
        L3_4 = L3_4(L4_4)
        if L3_4 then
          break
        end
        L3_4 = Wait
        L4_4 = 33
        L3_4(L4_4)
      end
      L3_4 = DoesEntityExist
      L4_4 = L4_2.playableObjects
      L4_4 = L4_4[2]
      L3_4 = L3_4(L4_4)
      if L3_4 then
        L3_4 = DoesEntityExist
        L4_4 = L1_4
        L3_4 = L3_4(L4_4)
        if L3_4 then
          L3_4 = L4_2.playableObjects
          L3_4[2] = L1_4
          L3_4 = Wait
          L4_4 = 0
          L3_4(L4_4)
          L3_4 = DeleteEntity
          L4_4 = L0_4
          L3_4(L4_4)
        end
      else
        L3_4 = DeleteEntity
        L4_4 = L1_4
        L3_4(L4_4)
      end
    end
    L3_3 = "switchBallModel"
    L1_3(L2_3, L3_3)
  end
  L4_2.switchBallModel = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L4_2.bounceWall
    if L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = L4_2.bounceWall
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = DeleteEntity
        L1_3 = L4_2.bounceWall
        L0_3(L1_3)
        L4_2.bounceWall = nil
      end
    end
    L0_3 = pairs
    L1_3 = L4_2.playableObjects
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = DeleteEntity
      L7_3 = L5_3
      L6_3(L7_3)
    end
    L0_3 = {}
    L4_2.playableObjects = L0_3
  end
  L4_2.destroyPlayableObjects = L5_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = L4_2.setPedsBackVisible
    L0_3()
    L4_2.lastReplayTick = 0
    L4_2.isReplaying = false
    L0_3 = L4_2.toggleNetVariation
    L1_3 = true
    L0_3(L1_3)
    L0_3 = L4_2.toggleRecording
    L1_3 = false
    L0_3(L1_3)
    L0_3 = L4_2.destroyPlayableObjects
    L0_3()
    L0_3 = L4_2.destroyBot
    L0_3()
    L0_3 = L4_2.destroyAllRackets
    L0_3()
    L0_3 = L4_2.destroyPeds
    L0_3()
    L0_3 = L4_2.destroyBallFx
    L0_3()
    L0_3 = L4_2.destroyLocalFx
    L0_3()
    L0_3 = L34_1
    L1_3 = L4_2.id
    L0_3(L1_3)
    L0_3 = L4_2.clearBonusMarkers
    L0_3()
    L0_3 = {}
    L4_2.snaps = L0_3
    L4_2.matchSettingsReceived = false
  end
  L4_2.destroy = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = GetObjectOffsetFromCoords
    L2_3 = L4_2.coords
    L3_3 = L4_2.heading
    L4_3 = A0_3
    return L1_3(L2_3, L3_3, L4_3)
  end
  L4_2.getOffset = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = GetObjectOffsetFromCoords
    L2_3 = L4_2.coords
    L3_3 = L4_2.heading
    L4_3 = TennisOffsets
    L5_3 = "P"
    L6_3 = A0_3
    L7_3 = "CamCoord"
    L5_3 = L5_3 .. L6_3 .. L7_3
    L4_3 = L4_3[L5_3]
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L2_3 = TennisOffsets
    L3_3 = "P"
    L4_3 = A0_3
    L5_3 = "CamRot"
    L3_3 = L3_3 .. L4_3 .. L5_3
    L2_3 = L2_3[L3_3]
    L3_3 = vector3
    L4_3 = 0.0
    L5_3 = 0.0
    L6_3 = L4_2.heading
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L2_3 = L2_3 + L3_3
    L3_3 = ToggleTennisCamera
    L4_3 = true
    L3_3(L4_3)
    L3_3 = SetCamCoord
    L4_3 = L0_1
    L5_3 = L1_3
    L3_3(L4_3, L5_3)
    L3_3 = SetCamRot
    L4_3 = L0_1
    L5_3 = L2_3
    L6_3 = 2
    L3_3(L4_3, L5_3, L6_3)
    L4_2.stockCameraCoords = L1_3
    L4_2.stockCameraRotation = L2_3
  end
  L4_2.enablePlayerCamera = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = GetDisabledControlNormal
    L1_3 = 0
    L2_3 = 239
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = GetDisabledControlNormal
    L2_3 = 0
    L3_3 = 240
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = L5_1.lockMouse
    if L2_3 then
      L2_3 = Clamp
      L3_3 = L0_3
      L4_3 = 0.2
      L5_3 = 0.8
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L0_3 = L2_3
      L2_3 = Clamp
      L3_3 = L1_3
      L4_3 = 0.8
      L5_3 = 1.0
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L1_3 = L2_3
      L2_3 = SetCursorLocation
      L3_3 = L0_3
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    end
    L2_3 = PercentageOf
    L3_3 = L0_3
    L4_3 = 0.2
    L5_3 = 0.8
    L6_3 = 1.0
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    L3_3 = PercentageOf
    L4_3 = L1_3
    L5_3 = 1.0
    L6_3 = 0.8
    L7_3 = 1.0
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
    L4_3 = L2_3
    L5_3 = L3_3
    return L4_3, L5_3
  end
  L4_2.getAimOffsetFromMouse = L5_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = L4_2.netEnabled
    if not L0_3 then
      L0_3 = false
      return L0_3
    end
    L0_3 = L39_1.game
    if not L0_3 then
      L0_3 = false
      return L0_3
    end
    L0_3 = L39_1.game
    L0_3 = L0_3.matchSettings
    L0_3 = L0_3.netHitBox
    if not L0_3 then
      L0_3 = false
      return L0_3
    end
    L0_3 = math
    L0_3 = L0_3.abs
    L1_3 = L4_2.ballData
    L1_3 = L1_3.offset
    L1_3 = L1_3.y
    L0_3 = L0_3(L1_3)
    L1_3 = 0.05
    L0_3 = L0_3 < L1_3
    return L0_3
  end
  L4_2.isBallHittingNet = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L4_2.ballFallingDown = true
    L0_3 = L4_2.ballData
    L1_3 = GetObjectOffsetFromCoords
    L2_3 = 0.0
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = L4_2.heading
    L6_3 = L4_2.ballData
    L6_3 = L6_3.velocity
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L0_3.headedVelocity = L1_3
    L0_3 = SetEntityCoordsNoOffset
    L1_3 = L4_2.playableObjects
    L1_3 = L1_3[2]
    L2_3 = L4_2.ballData
    L2_3 = L2_3.worldCoords
    L0_3(L1_3, L2_3)
    L0_3 = SetEntityVelocity
    L1_3 = L4_2.playableObjects
    L1_3 = L1_3[2]
    L2_3 = L4_2.ballData
    L2_3 = L2_3.headedVelocity
    L0_3(L1_3, L2_3)
  end
  L4_2.turnGTAPhysicsOnBall = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L4_2.locallyUsed
    if L0_3 then
      L0_3 = L4_2.againstBot
      if L0_3 then
        L0_3 = L4_2.turnGTAPhysicsOnBall
        L0_3()
        L0_3 = FinishLocalRound
        L1_3 = L4_2
        L0_3(L1_3)
      else
        L0_3 = L39_1.PVPLastFinishedRoundID
        L1_3 = L39_1.RoundID
        if L0_3 ~= L1_3 then
          L0_3 = L39_1.BallFailRoundIDSent
          L1_3 = L39_1.RoundID
          if L0_3 ~= L1_3 then
            L0_3 = L4_2.ballOnLocalSide
            L0_3 = L0_3()
            if L0_3 then
              L0_3 = L4_2.ballData
              L0_3 = L0_3.offset
              L0_3 = L0_3.y
              if L0_3 < 0.0 then
                L0_3 = 1
                if L0_3 then
                  goto lbl_34
                end
              end
              L0_3 = 2
              ::lbl_34::
              L1_3 = L39_1.IsHost
              if L1_3 then
                L1_3 = FinishPVPRound
                L2_3 = L39_1.RoundID
                L3_3 = 2
                L4_3 = L39_1.LastHitSide
                L5_3 = L19_1.lastBounceOffTableSide
                L6_3 = L0_3
                L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
              else
                L1_3 = L39_1.IsHost
                if not L1_3 then
                  L1_3 = L39_1.BallFailRoundIDSent
                  L2_3 = L39_1.RoundID
                  if L1_3 ~= L2_3 then
                    L1_3 = L39_1.RoundID
                    L39_1.BallFailRoundIDSent = L1_3
                    L1_3 = L22_1.Send
                    L2_3 = json
                    L2_3 = L2_3.encode
                    L3_3 = {}
                    L4_3 = L39_1.PVPLocalBounceTime
                    L3_3.bounceTime = L4_3
                    L4_3 = L39_1.RoundID
                    L3_3.roundId = L4_3
                    L3_3.action = "bFell"
                    L4_3 = L4_2.ballData
                    L4_3 = L4_3.offset
                    L3_3.nO = L4_3
                    L4_3 = L4_2.ballData
                    L4_3 = L4_3.velocity
                    L3_3.nV = L4_3
                    L3_3.fallSide = L0_3
                    L2_3 = L2_3(L3_3)
                    L1_3(L2_3)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L4_2.onBallFellDown = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L4_2.isRecording
    if L1_3 then
      L1_3 = table
      L1_3 = L1_3.insert
      L2_3 = L4_2.snaps
      L3_3 = {}
      L4_3 = GetGameTimer
      L4_3 = L4_3()
      L5_3 = L4_2.recordStartTime
      L4_3 = L4_3 - L5_3
      L3_3.time = L4_3
      L3_3.type = "wallBounce"
      L3_3.side = A0_3
      L1_3(L2_3, L3_3)
    end
    L1_3 = CreateThread
    function L2_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L0_4 = L4_2.bounceWall
      if not L0_4 then
        L0_4 = GetHashKey
        L1_4 = "prop_table_ten_wall"
        L0_4 = L0_4(L1_4)
        L1_4 = LoadModel
        L2_4 = L0_4
        L1_4(L2_4)
        L1_4 = HasModelLoaded
        L2_4 = L0_4
        L1_4 = L1_4(L2_4)
        if L1_4 then
          L1_4 = L4_2.bounceWall
          if not L1_4 then
            L1_4 = CreateObject
            L2_4 = L0_4
            L3_4 = L4_2.coords
            L4_4 = false
            L5_4 = false
            L6_4 = false
            L1_4 = L1_4(L2_4, L3_4, L4_4, L5_4, L6_4)
            L4_2.bounceWall = L1_4
            L1_4 = SetEntityHeading
            L2_4 = L4_2.bounceWall
            L3_4 = L4_2.heading
            L1_4(L2_4, L3_4)
          end
        end
      end
      L0_4 = GetGameTimer
      L0_4 = L0_4()
      L4_2.bounceWallTime = L0_4
      L1_4 = GetObjectOffsetFromCoords
      L2_4 = L4_2.coords
      L3_4 = L4_2.heading
      L4_4 = A0_3
      if 1 == L4_4 then
        L4_4 = -0.75
        if L4_4 then
          goto lbl_43
        end
      end
      L4_4 = 0.75
      ::lbl_43::
      L5_4 = 0.0
      L6_4 = 1.0
      L1_4 = L1_4(L2_4, L3_4, L4_4, L5_4, L6_4)
      L2_4 = SetEntityCoordsNoOffset
      L3_4 = L4_2.bounceWall
      L4_4 = L1_4
      L2_4(L3_4, L4_4)
      L2_4 = SetEntityAlpha
      L3_4 = L4_2.bounceWall
      L4_4 = 150
      L2_4(L3_4, L4_4)
      L2_4 = SetEntityVisible
      L3_4 = L4_2.bounceWall
      L4_4 = true
      L2_4(L3_4, L4_4)
      L2_4 = Wait
      L3_4 = 300
      L2_4(L3_4)
      L2_4 = L4_2.bounceWallTime
      if L2_4 == L0_4 then
        L2_4 = SetEntityVisible
        L3_4 = L4_2.bounceWall
        L4_4 = false
        L2_4(L3_4, L4_4)
      end
    end
    L3_3 = "bounceEffect"
    L1_3(L2_3, L3_3)
  end
  L4_2.bounceEffect = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = A0_3 or nil
    if not A0_3 then
      L1_3 = CopyTable
      L2_3 = L4_2.ballData
      L1_3 = L1_3(L2_3)
    end
    L2_3 = L4_2.gamemode
    L2_3 = 3 == L2_3
    L3_3 = 1
    L4_3 = 50
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = SimulateBallPhysics
      L8_3 = L1_3
      L9_3 = 0.05
      L10_3 = false
      L11_3 = L2_3
      L7_3(L8_3, L9_3, L10_3, L11_3)
      L7_3 = L1_3.offset
      L7_3 = L7_3.z
      L8_3 = L4_2.ballData
      L8_3 = L8_3.ground
      if L7_3 <= L8_3 then
        L7_3 = L1_3.offset
        return L7_3
      end
    end
    L3_3 = nil
    return L3_3
  end
  L4_2.predictNextGroundPosition = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = PlaySound
    L1_3 = "sounds\\"
    L2_3 = L4_2.ballData
    L2_3 = L2_3.soundFolder
    L3_3 = "\\Bounce"
    L4_3 = RandomNumber
    L5_3 = 1
    L6_3 = 4
    L4_3 = L4_3(L5_3, L6_3)
    L5_3 = ".mp3"
    L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3 .. L5_3
    L2_3 = L4_2.ballData
    L2_3 = L2_3.worldCoords
    L0_3(L1_3, L2_3)
  end
  L4_2.playBounceSound = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = L4_2.ballData
    L0_3 = L0_3.offset
    L0_3 = L0_3.y
    if L0_3 < 0.0 then
      L0_3 = 1
      if L0_3 then
        goto lbl_10
      end
    end
    L0_3 = 2
    ::lbl_10::
    L4_2.lastBounceOffTableSide = L0_3
    L1_3 = L4_2.playBounceSound
    L1_3()
    L1_3 = L4_2.isReplaying
    if L1_3 then
      return
    end
    L1_3 = L4_2.againstBot
    if not L1_3 then
      L1_3 = L4_2.ballOnLocalSide
      L1_3 = L1_3()
      if L1_3 then
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        L2_3 = L39_1.roundStartedTime
        L1_3 = L1_3 - L2_3
        L39_1.PVPLocalBounceTime = L1_3
      end
    end
    L1_3 = L4_2
    L2_3 = L19_1
    if L1_3 == L2_3 then
      L1_3 = L39_1.game
      L1_3 = L1_3.matchSettings
      L1_3 = L1_3.gamemode
      if 5 == L1_3 then
        L1_3 = L39_1.LocalSide
        L2_3 = pairs
        L3_3 = L4_2.bonusNumberMarkers
        L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
        for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
          L8_3 = L7_3.forPlayer
          if L8_3 ~= L1_3 then
            L8_3 = L4_2.againstBot
            if not L8_3 then
              goto lbl_106
            end
          end
          L8_3 = L7_3.collected
          if not L8_3 then
            L8_3 = PercentageOf
            L9_3 = L7_3.size
            L10_3 = 0.2
            L11_3 = 0.5
            L12_3 = 1.0
            L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
            L9_3 = Lerp
            L10_3 = 0.17
            L11_3 = 0.27
            L12_3 = L8_3
            L9_3 = L9_3(L10_3, L11_3, L12_3)
            L10_3 = vector2
            L11_3 = L4_2.ballData
            L11_3 = L11_3.offset
            L11_3 = L11_3.x
            L12_3 = L4_2.ballData
            L12_3 = L12_3.offset
            L12_3 = L12_3.y
            L10_3 = L10_3(L11_3, L12_3)
            L11_3 = vector2
            L12_3 = L7_3.x
            L13_3 = L7_3.y
            L11_3 = L11_3(L12_3, L13_3)
            L10_3 = L10_3 - L11_3
            L10_3 = #L10_3
            if L9_3 >= L10_3 then
              L11_3 = L4_2.againstBot
              if not L11_3 then
                L11_3 = L39_1.IsHost
                if not L11_3 then
                  goto lbl_91
                end
              end
              L11_3 = BonusMarkerCollected
              L12_3 = L7_3.id
              L11_3(L12_3)
              do break end
              ::lbl_91::
              L11_3 = L22_1.Send
              L12_3 = json
              L12_3 = L12_3.encode
              L13_3 = {}
              L14_3 = L39_1.PVPLocalBounceTime
              L13_3.bounceTime = L14_3
              L14_3 = L39_1.RoundID
              L13_3.roundId = L14_3
              L13_3.action = "bCollect"
              L14_3 = L7_3.id
              L13_3.id = L14_3
              L12_3 = L12_3(L13_3)
              L11_3(L12_3)
              break
            end
          end
          ::lbl_106::
        end
      end
    end
  end
  L4_2.onBallBounceOffTable = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L4_2.ballMarkerEnabled
    if L0_3 then
      L0_3 = L4_2.isReplaying
      if not L0_3 then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = L4_2.predictNextGroundPosition
    L0_3 = L0_3()
    L1_3 = L4_2.isOnTable
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L2_3 = ClampVector3
      L3_3 = L0_3
      L4_3 = TennisOffsets
      L4_3 = L4_3.AreaBallMarkerMin
      L5_3 = TennisOffsets
      L5_3 = L5_3.AreaBallMarkerMax
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L0_3 = L2_3
      L2_3 = vector3
      L3_3 = L0_3.x
      L4_3 = L0_3.y
      L5_3 = 0.78
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L0_3 = L2_3
    else
      L0_3 = nil
    end
    L2_3 = L4_2.ballData
    L2_3.predictedGround = L0_3
    L2_3 = L4_2.ballData
    L2_3.predictedGroundOnTable = L1_3
  end
  L4_2.refreshBallMarker = L5_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = IsVectorInRange
    L3_3 = A0_3
    L4_3 = L4_2.ballData
    L4_3 = L4_3.AreaBallMin
    L5_3 = L4_2.ballData
    L5_3 = L5_3.AreaBallMax
    L6_3 = A1_3
    return L2_3(L3_3, L4_3, L5_3, L6_3)
  end
  L4_2.isOnTable = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L4_2.isOnTable
    L2_3 = L4_2.ballData
    L2_3 = L2_3.offset
    L3_3 = A0_3
    return L1_3(L2_3, L3_3)
  end
  L4_2.isBallOnTable = L5_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = L4_2.localFx
    if L0_3 then
      L0_3 = RemoveParticleFx
      L1_3 = L4_2.localFx
      L0_3(L1_3)
      L4_2.localFx = nil
    end
  end
  L4_2.destroyLocalFx = L5_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = L4_2.ballData
    L0_3 = L0_3.fx
    if L0_3 then
      L0_3 = RemoveParticleFx
      L1_3 = L4_2.ballData
      L1_3 = L1_3.fx
      L0_3(L1_3)
      L0_3 = L4_2.ballData
      L0_3.fx = nil
    end
  end
  L4_2.destroyBallFx = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3
    L1_3 = L4_2.isReplaying
    if not L1_3 then
      L1_3 = L39_1.ballMovementActive
      if not L1_3 then
        return
      end
    end
    L1_3 = L4_2.ballFallingDown
    if not L1_3 then
      L1_3 = L39_1.LastBallPos
      if L1_3 then
        L1_3 = L4_2.ballData
        L1_3 = L1_3.velocity
        L1_3 = L1_3.x
        if 0 == L1_3 then
          L1_3 = L4_2.ballData
          L1_3 = L1_3.velocity
          L1_3 = L1_3.y
          if 0 == L1_3 then
            goto lbl_36
          end
        end
        L1_3 = L39_1.BallMeterCounter
        L2_3 = L4_2.ballData
        L2_3 = L2_3.offset
        L3_3 = L39_1.LastBallPos
        L2_3 = L2_3 - L3_3
        L2_3 = #L2_3
        L2_3 = L2_3 * 0.5
        L1_3 = L1_3 + L2_3
        L39_1.BallMeterCounter = L1_3
      end
      ::lbl_36::
      L1_3 = L4_2.ballData
      L1_3 = L1_3.offset
      L39_1.LastBallPos = L1_3
      L1_3 = L4_2.simulateSpeed
      if not L1_3 then
        L1_3 = 1.0
      end
      L2_3 = L4_2.slowDown
      if L2_3 then
        L2_3 = L4_2.slowDown
        L2_3 = L2_3.side
        if 1 == L2_3 then
          L2_3 = -1.4
          if L2_3 then
            goto lbl_54
          end
        end
        L2_3 = 1.4
        ::lbl_54::
        L3_3 = math
        L3_3 = L3_3.abs
        L4_3 = L4_2.ballData
        L4_3 = L4_3.offset
        L4_3 = L4_3.y
        L4_3 = L4_3 - L2_3
        L3_3 = L3_3(L4_3)
        L4_3 = 2.82
        L5_3 = MinMax
        L6_3 = L3_3 / L4_3
        L7_3 = 0.0
        L8_3 = 1.0
        L5_3 = L5_3(L6_3, L7_3, L8_3)
        L6_3 = L4_2.slowDown
        L6_3 = L6_3.percentage
        L6_3 = L1_3 * L6_3
        L6_3 = L6_3 * L5_3
        L1_3 = L1_3 - L6_3
      end
      L2_3 = L4_2.ignoreFailUntil
      if L2_3 then
        L2_3 = GetGameTimer
        L2_3 = L2_3()
        L3_3 = L4_2.ignoreFailUntil
        L2_3 = L2_3 < L3_3
      end
      if not L2_3 then
        L3_3 = L4_2.isBallHittingNet
        L3_3 = L3_3()
        if L3_3 then
          L3_3 = L4_2.againstBot
          if L3_3 then
            L3_3 = L4_2.ballData
            L4_3 = L4_2.ballData
            L4_3 = L4_3.velocity
            L4_3 = L4_3 / 2.0
            L3_3.velocity = L4_3
            L3_3 = L4_2.locallyUsed
            if L3_3 then
              L3_3 = L4_2.againstBot
              if L3_3 then
                L3_3 = FinishLocalRound
                L4_3 = L4_2
                L3_3(L4_3)
              end
            end
          else
            L3_3 = L39_1.LastHitSide
            L4_3 = L39_1.LocalSide
            if L3_3 == L4_3 then
              L3_3 = L4_2.ballData
              L3_3 = L3_3.offset
              L3_3 = L3_3.y
              if L3_3 < 0.0 then
                L3_3 = 1
                if L3_3 then
                  goto lbl_125
                end
              end
              L3_3 = 2
              ::lbl_125::
              L4_3 = L39_1.IsHost
              if L4_3 then
                L4_3 = FinishPVPRound
                L5_3 = L39_1.RoundID
                L6_3 = 1
                L7_3 = L39_1.LastHitSide
                L8_3 = L19_1.lastBounceOffTableSide
                L9_3 = L3_3
                L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
              else
                L4_3 = L39_1.BallFailRoundIDSent
                L5_3 = L39_1.RoundID
                if L4_3 ~= L5_3 then
                  L4_3 = L39_1.RoundID
                  L39_1.BallFailRoundIDSent = L4_3
                  L4_3 = L22_1.Send
                  L5_3 = json
                  L5_3 = L5_3.encode
                  L6_3 = {}
                  L7_3 = L39_1.PVPLocalBounceTime
                  L6_3.bounceTime = L7_3
                  L7_3 = L39_1.RoundID
                  L6_3.roundId = L7_3
                  L6_3.action = "netHit"
                  L7_3 = L4_2.ballData
                  L7_3 = L7_3.offset
                  L6_3.nO = L7_3
                  L7_3 = L4_2.ballData
                  L7_3 = L7_3.velocity
                  L6_3.nV = L7_3
                  L6_3.fallSide = L3_3
                  L5_3 = L5_3(L6_3)
                  L4_3(L5_3)
                end
              end
            end
          end
        end
      end
      L3_3 = SimulateBallPhysics
      L4_3 = L4_2
      L5_3 = A0_3 * L1_3
      L5_3 = L5_3 / 1000.0
      L6_3 = true
      L7_3 = L4_2.gamemode
      L7_3 = 3 == L7_3
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = L4_2.ballData
      L4_3 = L4_2.getOffset
      L5_3 = L4_2.ballData
      L5_3 = L5_3.offset
      L4_3 = L4_3(L5_3)
      L3_3.worldCoords = L4_3
      L3_3 = SetEntityCoords
      L4_3 = L4_2.playableObjects
      L4_3 = L4_3[2]
      L5_3 = L4_2.ballData
      L5_3 = L5_3.worldCoords
      L3_3(L4_3, L5_3)
      L3_3 = DoesEntityExist
      L4_3 = L4_2.playableObjects
      L4_3 = L4_3[2]
      L3_3 = L3_3(L4_3)
      if not L3_3 then
        L3_3 = LoadModel
        L4_3 = L4_2.ballData
        L4_3 = L4_3.model
        L3_3(L4_3)
        L3_3 = L4_2.playableObjects
        L4_3 = CreateObject
        L5_3 = GetHashKey
        L6_3 = L4_2.ballData
        L6_3 = L6_3.model
        L5_3 = L5_3(L6_3)
        L6_3 = L4_2.coords
        L7_3 = false
        L8_3 = false
        L9_3 = false
        L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
        L3_3[2] = L4_3
      end
      L3_3 = L4_2.ballData
      L3_3 = L3_3.predictedGroundOnTable
      if L3_3 then
        L3_3 = L4_2.getOffset
        L4_3 = L4_2.ballData
        L4_3 = L4_3.predictedGround
        L3_3 = L3_3(L4_3)
        L4_3 = DrawMarker
        L5_3 = 23
        L6_3 = L3_3
        L7_3 = 0
        L8_3 = 0
        L9_3 = 0
        L10_3 = 0
        L11_3 = 0
        L12_3 = 0
        L13_3 = L4_2.ballData
        L13_3 = L13_3.markerSize
        L14_3 = L4_2.ballData
        L14_3 = L14_3.markerSize
        L15_3 = L4_2.ballData
        L15_3 = L15_3.markerSize
        L16_3 = 255
        L17_3 = 255
        L18_3 = 255
        L19_3 = 100
        L20_3 = 0
        L21_3 = 0
        L22_3 = 2
        L23_3 = 0
        L24_3 = 0
        L25_3 = 0
        L26_3 = false
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
      end
      L3_3 = L4_2.ballData
      L3_3 = L3_3.fx
      if L3_3 then
        L3_3 = DoesParticleFxLoopedExist
        L4_3 = L4_2.ballData
        L4_3 = L4_3.fx
        L3_3 = L3_3(L4_3)
        if L3_3 then
          goto lbl_330
        end
      end
      L3_3 = HasNamedPtfxAssetLoaded
      L4_3 = "scr_minigamegolf"
      L3_3 = L3_3(L4_3)
      if not L3_3 then
        L3_3 = L4_2.ballData
        L3_3 = L3_3.loadTime
        if L3_3 then
          L3_3 = GetGameTimer
          L3_3 = L3_3()
          L4_3 = L4_2.ballData
          L4_3 = L4_3.loadTime
          L3_3 = L3_3 - L4_3
          L4_3 = 1500
          if not (L3_3 > L4_3) then
            goto lbl_278
          end
        end
        L3_3 = RequestNamedPtfxAsset
        L4_3 = "scr_minigamegolf"
        L3_3(L4_3)
        L3_3 = L4_2.ballData
        L4_3 = GetGameTimer
        L4_3 = L4_3()
        L3_3.loadTime = L4_3
      end
      ::lbl_278::
      L3_3 = HasNamedPtfxAssetLoaded
      L4_3 = "scr_minigamegolf"
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L3_3 = UseParticleFxAssetNextCall
        L4_3 = "scr_minigamegolf"
        L3_3(L4_3)
        L3_3 = L4_2.ballData
        L4_3 = StartParticleFxLoopedAtCoord
        L5_3 = "scr_golf_ball_trail"
        L6_3 = L4_2.ballData
        L6_3 = L6_3.worldCoords
        L6_3 = L6_3.x
        L7_3 = L4_2.ballData
        L7_3 = L7_3.worldCoords
        L7_3 = L7_3.y
        L8_3 = L4_2.ballData
        L8_3 = L8_3.worldCoords
        L8_3 = L8_3.z
        L9_3 = 0.0
        L10_3 = 0.0
        L11_3 = 0.0
        L12_3 = L4_2.ballData
        L12_3 = L12_3.trailScale
        L13_3 = 0
        L14_3 = 0
        L15_3 = 0
        L16_3 = true
        L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        L3_3.fx = L4_3
        L3_3 = SetParticleFxLoopedColour
        L4_3 = L4_2.ballData
        L4_3 = L4_3.fx
        L5_3 = L4_2.ballData
        L5_3 = L5_3.trailColor
        L5_3 = L5_3.r
        L5_3 = L5_3 / 255.0
        L6_3 = L4_2.ballData
        L6_3 = L6_3.trailColor
        L6_3 = L6_3.g
        L6_3 = L6_3 / 255.0
        L7_3 = L4_2.ballData
        L7_3 = L7_3.trailColor
        L7_3 = L7_3.b
        L7_3 = L7_3 / 255.0
        L8_3 = false
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
        goto lbl_342
        ::lbl_330::
        L3_3 = SetParticleFxLoopedOffsets
        L4_3 = L4_2.ballData
        L4_3 = L4_3.fx
        L5_3 = L4_2.ballData
        L5_3 = L5_3.worldCoords
        L6_3 = 0.0
        L7_3 = 0.0
        L8_3 = 0.0
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
      end
    else
      L1_3 = L4_2.destroyBallFx
      L1_3()
    end
    ::lbl_342::
  end
  L4_2.ballTick = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = L39_1.IsHost
    if not L0_3 then
      return
    end
    L0_3 = L4_2.botSide
    if 1 == L0_3 then
      L0_3 = 2
      if L0_3 then
        goto lbl_12
      end
    end
    L0_3 = 1
    ::lbl_12::
    L1_3 = CalculateXFromVelocity
    L2_3 = L4_2
    if 1 == L0_3 then
      L3_3 = -1.4
      if L3_3 then
        goto lbl_20
      end
    end
    L3_3 = 1.4
    ::lbl_20::
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = Clamp
    L3_3 = L1_3
    L4_3 = -1.5
    L5_3 = 1.5
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L1_3 = L2_3
    if 2 == L0_3 then
      L1_3 = -L1_3
    end
    L2_3 = table
    L2_3 = L2_3.insert
    L3_3 = L4_2.snaps
    L4_3 = {}
    L5_3 = GetGameTimer
    L5_3 = L5_3()
    L6_3 = L4_2.recordStartTime
    L5_3 = L5_3 - L6_3
    L4_3.time = L5_3
    L4_3.type = "pedPrepare"
    L4_3.side = L0_3
    L4_3.watingX = L1_3
    L2_3(L3_3, L4_3)
    L2_3 = CreateThread
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L0_4 = CalculateDurationToReachEnd
      L1_4 = L4_2.ballData
      L2_4 = L4_2.simulateSpeed
      if not L2_4 then
        L2_4 = 1.0
      end
      L0_4 = L0_4(L1_4, L2_4)
      L0_4 = L0_4 * 620.0
      L1_4 = Wait
      L2_4 = L0_4
      L1_4(L2_4)
      L1_4 = nil
      L2_4 = math
      L2_4 = L2_4.abs
      L3_4 = L4_2.ballData
      L3_4 = L3_4.offset
      L3_4 = L3_4.x
      L2_4 = L2_4(L3_4)
      L3_4 = 0.1
      if L2_4 < L3_4 then
        L2_4 = GetRandomItem
        L3_4 = MiddleAnimations
        L2_4 = L2_4(L3_4)
        L1_4 = L2_4
      else
        L2_4 = L4_2.ballData
        L2_4 = L2_4.offset
        L2_4 = L2_4.x
        if L2_4 < 0.0 then
          L2_4 = GetRandomItem
          L3_4 = RightAnimations
          L2_4 = L2_4(L3_4)
          L1_4 = L2_4
        else
          L2_4 = GetRandomItem
          L3_4 = LeftAnimations
          L2_4 = L2_4(L3_4)
          L1_4 = L2_4
        end
      end
      L2_4 = table
      L2_4 = L2_4.insert
      L3_4 = L4_2.snaps
      L4_4 = {}
      L5_4 = GetGameTimer
      L5_4 = L5_4()
      L6_4 = L4_2.recordStartTime
      L5_4 = L5_4 - L6_4
      L4_4.time = L5_4
      L4_4.type = "pedShoot"
      L5_4 = L0_3
      L4_4.side = L5_4
      L4_4.anim = L1_4
      L2_4(L3_4, L4_4)
    end
    L4_3 = "prepareHostFakeAttack"
    L2_3(L3_3, L4_3)
  end
  L4_2.prepareHostFakeAttack = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = CreateThread
    function L2_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
      L0_4 = Wait
      L1_4 = A0_3
      L0_4(L1_4)
      L0_4 = L4_2.againstBot
      if not L0_4 then
        L0_4 = L39_1.PVPLastFinishedRoundID
        L1_4 = L39_1.RoundID
        if L0_4 == L1_4 then
          return
        end
      end
      L0_4 = L4_2.botSide
      if 2 == L0_4 then
        L0_4 = L4_2.ballData
        L0_4 = L0_4.offset
        L0_4 = L0_4.x
        L0_4 = -L0_4
        if L0_4 then
          goto lbl_24
        end
      end
      L0_4 = L4_2.ballData
      L0_4 = L0_4.offset
      L0_4 = L0_4.x
      ::lbl_24::
      L1_4 = L4_2.playerDatas
      L2_4 = L4_2.botSide
      L1_4 = L1_4[L2_4]
      L2_4 = vector3
      L3_4 = L0_4
      L4_4 = L4_2.playerDatas
      L5_4 = L4_2.botSide
      L4_4 = L4_4[L5_4]
      L4_4 = L4_4.offset
      L4_4 = L4_4.y
      L5_4 = L4_2.playerDatas
      L6_4 = L4_2.botSide
      L5_4 = L5_4[L6_4]
      L5_4 = L5_4.offset
      L5_4 = L5_4.z
      L2_4 = L2_4(L3_4, L4_4, L5_4)
      L1_4.offset = L2_4
      L1_4 = nil
      L2_4 = math
      L2_4 = L2_4.abs
      L3_4 = L4_2.ballData
      L3_4 = L3_4.offset
      L3_4 = L3_4.x
      L2_4 = L2_4(L3_4)
      L3_4 = 0.1
      if L2_4 < L3_4 then
        L2_4 = GetRandomItem
        L3_4 = MiddleAnimations
        L2_4 = L2_4(L3_4)
        L1_4 = L2_4
      else
        L2_4 = L4_2.ballData
        L2_4 = L2_4.offset
        L2_4 = L2_4.x
        if L2_4 < 0.0 then
          L2_4 = GetRandomItem
          L3_4 = RightAnimations
          L2_4 = L2_4(L3_4)
          L1_4 = L2_4
        else
          L2_4 = GetRandomItem
          L3_4 = LeftAnimations
          L2_4 = L2_4(L3_4)
          L1_4 = L2_4
        end
      end
      L2_4 = L4_2.ballFallingDown
      if not L2_4 then
        L2_4 = L4_2.playAnimationOnPed
        L3_4 = L4_2.botPed
        L4_4 = L4_2.botSide
        L5_4 = L1_4
        L6_4 = vector2
        L7_4 = L0_4
        L8_4 = 0.0
        L6_4, L7_4, L8_4 = L6_4(L7_4, L8_4)
        L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
        L2_4 = L4_2.isRecording
        if L2_4 then
          L2_4 = table
          L2_4 = L2_4.insert
          L3_4 = L4_2.snaps
          L4_4 = {}
          L5_4 = GetGameTimer
          L5_4 = L5_4()
          L6_4 = L4_2.recordStartTime
          L5_4 = L5_4 - L6_4
          L4_4.time = L5_4
          L4_4.type = "pedShoot"
          L5_4 = L4_2.botSide
          L4_4.side = L5_4
          L4_4.anim = L1_4
          L4_4.ballOffset = L0_4
          L2_4(L3_4, L4_4)
        end
        L2_4 = GetGameTimer
        L2_4 = L2_4()
        L2_4 = L2_4 + 5000
        while true do
          L3_4 = GetGameTimer
          L3_4 = L3_4()
          if L2_4 > L3_4 then
            L3_4 = L4_2.botSide
            if 2 == L3_4 then
              L3_4 = L4_2.ballData
              L3_4 = L3_4.offset
              L3_4 = L3_4.y
              L4_4 = 1.4
              if L3_4 < L4_4 then
                goto lbl_131
              end
            end
          end
          L3_4 = L4_2.botSide
          if 1 ~= L3_4 then
            break
          end
          L3_4 = L4_2.ballData
          L3_4 = L3_4.offset
          L3_4 = L3_4.y
          L4_4 = -1.4
          if not (L3_4 > L4_4) then
            break
          end
          L3_4 = L4_2.ballFallingDown
          if L3_4 then
            break
          end
          ::lbl_131::
          L3_4 = Wait
          L4_4 = 33
          L3_4(L4_4)
        end
        L3_4 = L4_2.againstBot
        if L3_4 then
          L3_4 = RandomFloat
          L4_4 = -1.0
          L5_4 = 1.0
          L3_4 = L3_4(L4_4, L5_4)
          L4_4 = HandleAIBounce
          L5_4 = L4_2
          L4_4(L5_4)
          L4_4 = L39_1.game
          if L4_4 then
            L4_4 = L39_1.game
            L4_4 = L4_4.matchSettings
            L4_4 = L4_4.gamemode
            if 5 == L4_4 then
              L4_4 = L39_1.bothitsUntilBonusRefresh
              if not L4_4 then
                L39_1.bothitsUntilBonusRefresh = 5
              end
              L4_4 = L39_1.bothitsUntilBonusRefresh
              L4_4 = L4_4 - 1
              L39_1.bothitsUntilBonusRefresh = L4_4
              L4_4 = L39_1.bothitsUntilBonusRefresh
              if 0 == L4_4 then
                L39_1.bothitsUntilBonusRefresh = 5
                L4_4 = DowngradeMarkerForPlayer
                L5_4 = L4_2.botSide
                L4_4(L5_4)
              end
            end
          end
          L4_4 = L4_2.botSide
          if 1 == L4_4 then
            L4_4 = 2
            if L4_4 then
              goto lbl_175
            end
          end
          L4_4 = 1
          ::lbl_175::
          L39_1.ExpectHitFrom = L4_4
          L4_4 = PlaySound
          L5_4 = "sounds\\"
          L6_4 = L4_2.ballData
          L6_4 = L6_4.soundFolder
          L7_4 = "\\Hit.mp3"
          L5_4 = L5_4 .. L6_4 .. L7_4
          L6_4 = L4_2.ballData
          L6_4 = L6_4.worldCoords
          L4_4(L5_4, L6_4)
          L4_4 = table
          L4_4 = L4_4.insert
          L5_4 = L4_2.snaps
          L6_4 = {}
          L7_4 = GetGameTimer
          L7_4 = L7_4()
          L8_4 = L4_2.recordStartTime
          L7_4 = L7_4 - L8_4
          L6_4.time = L7_4
          L6_4.type = "ball"
          L7_4 = L4_2.ballData
          L7_4 = L7_4.velocity
          L6_4.nV = L7_4
          L7_4 = L4_2.ballData
          L7_4 = L7_4.offset
          L6_4.nO = L7_4
          L7_4 = L4_2.simulateSpeed
          L6_4.speed = L7_4
          L6_4.slowDown = 0
          L4_4(L5_4, L6_4)
          L4_4 = L4_2.refreshBallMarker
          L4_4()
          L4_4 = L4_2.prepareHostFakeAttack
          L4_4()
        end
        L3_4 = L4_2.locallyUsed
        if L3_4 then
          L3_4 = L4_2.againstBot
          if L3_4 then
            L3_4 = L4_2.ballFallingDown
            if not L3_4 then
              L3_4 = L4_2.botSide
              L39_1.LastHitSide = L3_4
            end
          end
        end
      end
    end
    L3_3 = "prepareAttackOnBot"
    L1_3(L2_3, L3_3)
  end
  L4_2.prepareAttackOnBot = L5_2
  function L5_2(A0_3, A1_3)
    local L2_3
    if A0_3 > 0 then
      L2_3 = {}
      L2_3.percentage = A0_3
      L2_3.side = A1_3
      L4_2.slowDown = L2_3
    else
      L4_2.slowDown = nil
    end
  end
  L4_2.setSlowDownForTurn = L5_2
  function L5_2(A0_3)
    local L1_3
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L1_3 = L1_3 + A0_3
    L4_2.ignoreInputUntil = L1_3
  end
  L4_2.ignoreInput = L5_2
  function L5_2(A0_3)
    local L1_3
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L1_3 = L1_3 + A0_3
    L4_2.ignoreFailUntil = L1_3
  end
  L4_2.ignoreFail = L5_2
  function L5_2()
    local L0_3, L1_3
    L4_2.ignoreInputUntil = nil
  end
  L4_2.stopIgnoringInput = L5_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = L4_2.ballData
    L0_3 = L0_3.offset
    L0_3 = L0_3.y
    if L0_3 > 0 then
      L0_3 = 2
      if L0_3 then
        goto lbl_10
      end
    end
    L0_3 = 1
    ::lbl_10::
    return L0_3
  end
  L4_2.getBallSide = L5_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = L4_2.getBallSide
    L0_3 = L0_3()
    L1_3 = L39_1.LocalSide
    L0_3 = L0_3 == L1_3
    return L0_3
  end
  L4_2.ballOnLocalSide = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3
    L1_3 = L39_1.LocalSide
    L2_3 = L4_2.playerDatas
    L2_3 = L2_3[L1_3]
    L3_3 = L4_2.getAimOffsetFromMouse
    L3_3, L4_3 = L3_3()
    L5_3 = L39_1.PlayerMovementXActive
    if not L5_3 then
      L3_3 = 0.5
    end
    L5_3 = L39_1.PlayerMovementYActive
    if not L5_3 then
      L4_3 = 0.2
    end
    L5_3 = 180
    L6_3 = math
    L6_3 = L6_3.abs
    L7_3 = L39_1.LastAimDistance
    L7_3 = L7_3 - L4_3
    L6_3 = L6_3(L7_3)
    L39_1.AimStrength = L6_3
    L6_3 = math
    L6_3 = L6_3.abs
    L7_3 = L39_1.LastAimDirection
    L7_3 = L7_3 - L3_3
    L6_3 = L6_3(L7_3)
    L39_1.AimStrengthX = L6_3
    L6_3 = L39_1.LastAimDirection
    L6_3 = L6_3 - L3_3
    L39_1.AimDirection = L6_3
    L39_1.LastAimDistance = L4_3
    L39_1.LastAimDirection = L3_3
    L6_3 = L39_1.RacketMeterCounter
    L7_3 = math
    L7_3 = L7_3.abs
    L8_3 = L39_1.AimDirection
    L7_3 = L7_3(L8_3)
    L6_3 = L6_3 + L7_3
    L7_3 = math
    L7_3 = L7_3.abs
    L8_3 = L39_1.AimStrength
    L7_3 = L7_3(L8_3)
    L6_3 = L6_3 + L7_3
    L39_1.RacketMeterCounter = L6_3
    L6_3 = GetGameTimer
    L6_3 = L6_3()
    L7_3 = L39_1.LastWooshTime
    L6_3 = L6_3 - L7_3
    L7_3 = 200
    if L6_3 > L7_3 then
      L6_3 = L39_1.AimStrengthX
      L7_3 = 0.09
      if L6_3 > L7_3 then
        L7_3 = PlaySound
        L8_3 = "sounds\\woosh\\RacketWhoosh"
        L9_3 = RandomNumber
        L10_3 = 1
        L11_3 = 4
        L9_3 = L9_3(L10_3, L11_3)
        L10_3 = ".mp3"
        L8_3 = L8_3 .. L9_3 .. L10_3
        L9_3 = L4_2.playerDatas
        L10_3 = L39_1.LocalSide
        L9_3 = L9_3[L10_3]
        L9_3 = L9_3.worldCoords
        L7_3(L8_3, L9_3)
        L7_3 = GetGameTimer
        L7_3 = L7_3()
        L39_1.LastWooshTime = L7_3
      else
        L7_3 = 0.07
        if L6_3 > L7_3 then
          L7_3 = PlaySound
          L8_3 = "sounds\\woosh\\RacketLow.mp3"
          L9_3 = L4_2.playerDatas
          L10_3 = L39_1.LocalSide
          L9_3 = L9_3[L10_3]
          L9_3 = L9_3.worldCoords
          L7_3(L8_3, L9_3)
          L7_3 = GetGameTimer
          L7_3 = L7_3()
          L39_1.LastWooshTime = L7_3
        end
      end
    end
    L6_3 = Lerp
    L7_3 = TennisOffsets
    L7_3 = L7_3.PlayerAimXMin
    L8_3 = TennisOffsets
    L8_3 = L8_3.PlayerAimXMax
    L9_3 = L3_3
    L6_3 = L6_3(L7_3, L8_3, L9_3)
    L7_3 = Lerp
    L8_3 = TennisOffsets
    L8_3 = L8_3.PlayerAimDistanceMax
    L9_3 = TennisOffsets
    L9_3 = L9_3.PlayerAimDistanceMin
    L10_3 = L4_3
    L7_3 = L7_3(L8_3, L9_3, L10_3)
    L8_3 = TennisOffsets
    L8_3 = L8_3.PlayerAimZ
    if 1 == L1_3 then
      L9_3 = vector3
      L10_3 = L6_3
      L11_3 = L7_3
      L12_3 = L8_3
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      L2_3.mouseOffset = L9_3
    else
      L9_3 = vector3
      L10_3 = -L6_3
      L11_3 = -L7_3
      L12_3 = L8_3
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      L2_3.mouseOffset = L9_3
      L5_3 = -L5_3
      L9_3 = L39_1.AimDirection
      L9_3 = -L9_3
      L39_1.AimDirection = L9_3
    end
    L9_3 = 0.035
    L10_3 = L39_1.PlayerMovementYActive
    if not L10_3 then
      L9_3 = 0.005
    end
    L10_3 = MoveTowards
    L11_3 = L2_3.offset
    L12_3 = L2_3.mouseOffset
    L13_3 = 0.035 * A0_3
    L10_3 = L10_3(L11_3, L12_3, L13_3)
    L2_3.offset = L10_3
    L10_3 = vector3
    L11_3 = L2_3.offset
    L11_3 = L11_3.x
    L12_3 = L2_3.offset
    L12_3 = L12_3.y
    L13_3 = L4_2.ballData
    L13_3 = L13_3.offset
    L13_3 = L13_3.z
    L10_3 = L10_3(L11_3, L12_3, L13_3)
    L2_3.offset = L10_3
    L10_3 = L4_2.getOffset
    L11_3 = L2_3.offset
    L10_3 = L10_3(L11_3)
    L2_3.worldCoords = L10_3
    L10_3 = PercentageOf
    L11_3 = math
    L11_3 = L11_3.abs
    L12_3 = L4_2.ballData
    L12_3 = L12_3.offset
    L12_3 = L12_3.y
    L13_3 = L2_3.offset
    L13_3 = L13_3.y
    L12_3 = L12_3 - L13_3
    L11_3 = L11_3(L12_3)
    L12_3 = 3.0
    L13_3 = 0.0
    L14_3 = 1.0
    L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
    L11_3 = L5_1.verticalTracking
    if 2 == L11_3 then
      L10_3 = 1.0
    end
    L11_3 = Lerp
    L12_3 = 1.2
    L13_3 = L2_3.offset
    L13_3 = L13_3.z
    L14_3 = L10_3
    L11_3 = L11_3(L12_3, L13_3, L14_3)
    L12_3 = L4_2.ballFallingDown
    if L12_3 then
      L11_3 = 1
    end
    L12_3 = L4_2.getOffset
    L13_3 = vector3
    L14_3 = L2_3.offset
    L14_3 = L14_3.x
    L15_3 = L2_3.offset
    L15_3 = L15_3.y
    L16_3 = L11_3
    L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L13_3(L14_3, L15_3, L16_3)
    L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
    L13_3 = L4_2.getOffset
    L14_3 = vector3
    L15_3 = L2_3.offset
    L15_3 = L15_3.x
    L16_3 = L2_3.offset
    L16_3 = L16_3.y
    L17_3 = L2_3.offset
    L17_3 = L17_3.z
    L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3 = L14_3(L15_3, L16_3, L17_3)
    L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
    L14_3 = vector3
    L15_3 = 0.0
    L16_3 = -0.5 + L3_3
    L16_3 = L16_3 * L5_3
    L17_3 = L4_2.heading
    L14_3 = L14_3(L15_3, L16_3, L17_3)
    L15_3 = SetEntityRotation
    L16_3 = L4_2.playableObjects
    L16_3 = L16_3[3]
    L17_3 = L14_3
    L18_3 = 2
    L15_3(L16_3, L17_3, L18_3)
    L15_3 = SetEntityCoords
    L16_3 = L4_2.playableObjects
    L16_3 = L16_3[3]
    L17_3 = L12_3
    L15_3(L16_3, L17_3)
    L15_3 = L4_2.localFxStrength
    L16_3 = L39_1.AimStrengthX
    L16_3 = L16_3 * 0.3
    L15_3 = L15_3 + L16_3
    L16_3 = 2.0E-4 * A0_3
    L15_3 = L15_3 - L16_3
    L4_2.localFxStrength = L15_3
    L15_3 = Clamp
    L16_3 = L4_2.localFxStrength
    L17_3 = 0.0
    L18_3 = 5.0
    L15_3 = L15_3(L16_3, L17_3, L18_3)
    L4_2.localFxStrength = L15_3
    L15_3 = L4_2.localFxStrength
    if L15_3 > 0.0 then
      L15_3 = L4_2.localFx
      if not L15_3 then
        L15_3 = UseParticleFxAssetNextCall
        L16_3 = "scr_minigamegolf"
        L15_3(L16_3)
        L15_3 = StartParticleFxLoopedAtCoord
        L16_3 = "scr_golf_ball_trail"
        L17_3 = L12_3.x
        L18_3 = L12_3.y
        L19_3 = L12_3.z
        L20_3 = 0.0
        L21_3 = 0.0
        L22_3 = 0.0
        L23_3 = 0.5
        L24_3 = 0
        L25_3 = 0
        L26_3 = 0
        L27_3 = true
        L15_3 = L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
        L4_2.localFx = L15_3
        L15_3 = SetParticleFxLoopedColour
        L16_3 = L4_2.localFx
        L17_3 = 1.0
        L18_3 = 1.0
        L19_3 = 1.0
        L20_3 = false
        L15_3(L16_3, L17_3, L18_3, L19_3, L20_3)
    end
    else
      L15_3 = L4_2.localFxStrength
      if L15_3 <= 0.0 then
        L15_3 = L4_2.localFx
        if L15_3 then
          L15_3 = L4_2.destroyLocalFx
          L15_3()
        end
      end
    end
    L15_3 = L4_2.localFx
    if L15_3 then
      L15_3 = SetParticleFxLoopedOffsets
      L16_3 = L4_2.localFx
      L17_3 = L12_3
      L18_3 = 0.0
      L19_3 = 0.0
      L20_3 = 0.0
      L15_3(L16_3, L17_3, L18_3, L19_3, L20_3)
      L15_3 = SetParticleFxLoopedScale
      L16_3 = L4_2.localFx
      L17_3 = 1.0
      L15_3(L16_3, L17_3)
      L15_3 = L4_2.localFxStrength
      L16_3 = 0.35
      if L15_3 > L16_3 then
        L15_3 = 0.35
      end
      L16_3 = SetParticleFxLoopedAlpha
      L17_3 = L4_2.localFx
      L18_3 = L15_3
      L16_3(L17_3, L18_3)
    end
    L15_3 = 0.005
    L16_3 = L4_2.lastCameraCoords
    if L16_3 then
      L16_3 = TennisOffsets
      L16_3 = L16_3.TiltStrengths
      L17_3 = L5_1.cameraTilt
      L16_3 = L16_3[L17_3]
      L17_3 = L2_3.mouseOffset
      L17_3 = L17_3.x
      L16_3 = L16_3 * L17_3
      L17_3 = TennisOffsets
      L17_3 = L17_3.TiltStrengthsPos
      L18_3 = L5_1.cameraTilt
      L17_3 = L17_3[L18_3]
      L18_3 = L2_3.mouseOffset
      L18_3 = L18_3.x
      L17_3 = L17_3 * L18_3
      L18_3 = VectorLerp
      L19_3 = L4_2.lastCameraRotation
      L20_3 = vector3
      L21_3 = L4_2.stockCameraRotation
      L21_3 = L21_3.x
      L22_3 = L4_2.stockCameraRotation
      L22_3 = L22_3.y
      L22_3 = L22_3 + L16_3
      L23_3 = L4_2.stockCameraRotation
      L23_3 = L23_3.z
      L20_3 = L20_3(L21_3, L22_3, L23_3)
      L21_3 = L15_3 * A0_3
      L18_3 = L18_3(L19_3, L20_3, L21_3)
      L4_2.lastCameraRotation = L18_3
      L18_3 = VectorLerp
      L19_3 = L4_2.lastCameraCoords
      L20_3 = GetObjectOffsetFromCoords
      L21_3 = L4_2.stockCameraCoords
      L22_3 = L4_2.heading
      L23_3 = L17_3
      L24_3 = 0.0
      L20_3 = L20_3(L21_3, L22_3, L23_3, L24_3)
      L21_3 = L15_3 * A0_3
      L18_3 = L18_3(L19_3, L20_3, L21_3)
      L4_2.lastCameraCoords = L18_3
      L18_3 = SetCamCoord
      L19_3 = L0_1
      L20_3 = L4_2.lastCameraCoords
      L20_3 = L20_3.x
      L21_3 = L4_2.lastCameraCoords
      L21_3 = L21_3.y
      L22_3 = L4_2.lastCameraCoords
      L22_3 = L22_3.z
      L18_3(L19_3, L20_3, L21_3, L22_3)
      L18_3 = SetCamRot
      L19_3 = L0_1
      L20_3 = L4_2.lastCameraRotation
      L21_3 = 2
      L18_3(L19_3, L20_3, L21_3)
    else
      L16_3 = L4_2.stockCameraCoords
      L4_2.lastCameraCoords = L16_3
      L16_3 = L4_2.stockCameraRotation
      L4_2.lastCameraRotation = L16_3
    end
    L16_3 = nil
    L17_3 = L39_1.roundStartedTime
    if 0 ~= L17_3 then
      L17_3 = GetGameTimer
      L17_3 = L17_3()
      L18_3 = L39_1.roundStartedTime
      L17_3 = L17_3 - L18_3
      L18_3 = 500
      L16_3 = L17_3 < L18_3
      L17_3 = L2_3.worldCoords
      L18_3 = L4_2.ballData
      L18_3 = L18_3.worldCoords
      L17_3 = L17_3 - L18_3
      L17_3 = #L17_3
      L18_3 = L39_1.SafeArea
      if L18_3 and not L16_3 then
        L18_3 = 0.2
        if L17_3 > L18_3 then
          L39_1.SafeArea = false
        end
      end
      L18_3 = L39_1.SafeArea
      if L18_3 or L16_3 then
        L18_3 = GetEntityAlpha
        L19_3 = L4_2.playableObjects
        L19_3 = L19_3[3]
        L18_3 = L18_3(L19_3)
        if 50 ~= L18_3 then
          L18_3 = SetEntityAlpha
          L19_3 = L4_2.playableObjects
          L19_3 = L19_3[3]
          L20_3 = 50
          L18_3(L19_3, L20_3)
        end
      else
        L18_3 = GetEntityAlpha
        L19_3 = L4_2.playableObjects
        L19_3 = L19_3[3]
        L18_3 = L18_3(L19_3)
        if 255 ~= L18_3 then
          L18_3 = SetEntityAlpha
          L19_3 = L4_2.playableObjects
          L19_3 = L19_3[3]
          L20_3 = 255
          L18_3(L19_3, L20_3)
        end
      end
    else
      L17_3 = GetEntityAlpha
      L18_3 = L4_2.playableObjects
      L18_3 = L18_3[3]
      L17_3 = L17_3(L18_3)
      if 50 ~= L17_3 then
        L17_3 = SetEntityAlpha
        L18_3 = L4_2.playableObjects
        L18_3 = L18_3[3]
        L19_3 = 50
        L17_3(L18_3, L19_3)
      end
    end
    L17_3 = L39_1.PVPIgnoreInput
    if not L17_3 then
      L17_3 = L39_1.PVPLastFinishedRoundID
      L18_3 = L39_1.RoundID
      if L17_3 ~= L18_3 and not L16_3 then
        L17_3 = L39_1.SafeArea
        if not L17_3 then
          L17_3 = L39_1.ExpectHitFrom
          L18_3 = L39_1.LocalSide
          if L17_3 == L18_3 then
            L17_3 = L4_2.ballFallingDown
            if not L17_3 then
              L17_3 = GetGameTimer
              L17_3 = L17_3()
              L18_3 = L39_1.LastHitTime
              L17_3 = L17_3 - L18_3
              L18_3 = 350
              if L17_3 > L18_3 then
                L17_3 = HandleBallCollision
                L18_3 = L4_2
                L19_3 = L2_3
                L20_3 = L39_1.AimStrength
                L21_3 = L39_1.AimDirection
                L22_3 = L39_1.speedUpMultiplier
                L17_3, L18_3, L19_3 = L17_3(L18_3, L19_3, L20_3, L21_3, L22_3)
                if L17_3 then
                  L20_3 = L39_1.game
                  L20_3 = L20_3.matchSettings
                  L20_3 = L20_3.gamemode
                  if 5 == L20_3 then
                    L20_3 = L39_1.hitsUntilBonusRefresh
                    if not L20_3 then
                      L39_1.hitsUntilBonusRefresh = 5
                    end
                    L20_3 = L39_1.hitsUntilBonusRefresh
                    L20_3 = L20_3 - 1
                    L39_1.hitsUntilBonusRefresh = L20_3
                    L20_3 = L39_1.hitsUntilBonusRefresh
                    if 0 == L20_3 then
                      L39_1.hitsUntilBonusRefresh = 5
                      L20_3 = L4_2.againstBot
                      if not L20_3 then
                        L20_3 = L39_1.IsHost
                        if not L20_3 then
                          goto lbl_511
                        end
                      end
                      L20_3 = L4_2.againstBot
                      if not L20_3 then
                        L20_3 = L22_1.Send
                        L21_3 = json
                        L21_3 = L21_3.encode
                        L22_3 = {}
                        L22_3.action = "bClear"
                        L23_3 = L39_1.LocalSide
                        L22_3.side = L23_3
                        L21_3 = L21_3(L22_3)
                        L20_3(L21_3)
                      end
                      L20_3 = DowngradeMarkerForPlayer
                      L21_3 = L39_1.LocalSide
                      L20_3(L21_3)
                      goto lbl_524
                      ::lbl_511::
                      L20_3 = L19_1.clearNumberMarkersForPlayer
                      L21_3 = L39_1.LocalSide
                      L20_3(L21_3)
                      L20_3 = L22_1.Send
                      L21_3 = json
                      L21_3 = L21_3.encode
                      L22_3 = {}
                      L22_3.action = "bDowngrade"
                      L23_3 = L39_1.LocalSide
                      L22_3.side = L23_3
                      L21_3 = L21_3(L22_3)
                      L20_3(L21_3)
                    end
                  end
                  ::lbl_524::
                  LAST_LOCAL_V = L19_3
                  L20_3 = L39_1.game
                  L20_3 = L20_3.matchSettings
                  L20_3 = L20_3.gamemode
                  if 2 == L20_3 then
                    L20_3 = L39_1.speedUpMultiplier
                    if not L20_3 then
                      L39_1.speedUpMultiplier = 1.0
                    else
                      L20_3 = L39_1.speedUpMultiplier
                      if L20_3 < 2.0 then
                        L20_3 = L39_1.speedUpMultiplier
                        L20_3 = L20_3 + 0.05
                        L39_1.speedUpMultiplier = L20_3
                      end
                    end
                  end
                  L20_3 = L39_1.LocalHitsCount
                  L20_3 = L20_3 + 1
                  L39_1.LocalHitsCount = L20_3
                  L20_3 = L39_1.LocalSide
                  if 1 == L20_3 then
                    L20_3 = 2
                    if L20_3 then
                      goto lbl_553
                    end
                  end
                  L20_3 = 1
                  ::lbl_553::
                  L39_1.ExpectHitFrom = L20_3
                  L20_3 = false
                  L21_3 = nil
                  L22_3 = L4_2.ballData
                  L22_3 = L22_3.velocity
                  L22_3 = L22_3.x
                  if 0 == L22_3 then
                    L22_3 = L4_2.ballData
                    L22_3 = L22_3.velocity
                    L22_3 = L22_3.y
                    if 0 == L22_3 then
                      L20_3 = true
                      L22_3 = GetRandomItem
                      L23_3 = MiddleAnimations
                      L22_3 = L22_3(L23_3)
                      L21_3 = L22_3
                      L22_3 = L4_2.isRecording
                      if L22_3 then
                        L22_3 = table
                        L22_3 = L22_3.insert
                        L23_3 = L19_1.snaps
                        L24_3 = {}
                        L25_3 = GetGameTimer
                        L25_3 = L25_3()
                        L26_3 = L19_1.recordStartTime
                        L25_3 = L25_3 - L26_3
                        L24_3.time = L25_3
                        L24_3.type = "pedShoot"
                        L25_3 = L39_1.LocalSide
                        L24_3.side = L25_3
                        L24_3.anim = L21_3
                        L22_3(L23_3, L24_3)
                      end
                    end
                  end
                  L22_3 = L10_1
                  L22_3 = L22_3 + 1
                  L10_1 = L22_3
                  L22_3 = L4_2.againstBot
                  if not L22_3 then
                    L22_3 = GetGameTimer
                    L22_3 = L22_3()
                    L23_3 = L39_1.roundStartedTime
                    L22_3 = L22_3 - L23_3
                    L39_1.LocalHitTime = L22_3
                    L23_3 = L22_1.Send
                    L24_3 = json
                    L24_3 = L24_3.encode
                    L25_3 = {}
                    L25_3.hitTime = L22_3
                    L25_3.action = "pHit"
                    L25_3.nO = L18_3
                    L25_3.nV = L19_3
                    L25_3.wasServe = L20_3
                    L26_3 = L39_1.ExpectHitFrom
                    L25_3.expectHit = L26_3
                    L26_3 = L4_2.ballData
                    L26_3 = L26_3.worldCoords
                    L25_3.bC = L26_3
                    L26_3 = L39_1.LocalSide
                    L25_3.hitSide = L26_3
                    L25_3.serveAnim = L21_3
                    L24_3 = L24_3(L25_3)
                    L23_3(L24_3)
                  end
                  L22_3 = 0
                  L23_3 = 0.0
                  L24_3 = L4_2.againstBot
                  if not L24_3 then
                    L24_3 = L39_1.PVPPing
                    L25_3 = 250
                    if L24_3 > L25_3 then
                      L23_3 = 0.5
                    else
                      L24_3 = L39_1.PVPPing
                      L25_3 = 200
                      if L24_3 > L25_3 then
                        L23_3 = 0.4
                      else
                        L24_3 = L39_1.PVPPing
                        L25_3 = 150
                        if L24_3 > L25_3 then
                          L23_3 = 0.3
                        else
                          L24_3 = L39_1.PVPPing
                          if L24_3 > 100 then
                            L23_3 = 0.2
                          else
                            L24_3 = L39_1.PVPPing
                            if L24_3 > 50 then
                              L23_3 = 0.1
                            end
                          end
                        end
                      end
                    end
                    L24_3 = L39_1.PVPPing
                    L22_3 = L24_3 / 2.0
                  end
                  L24_3 = L4_2.ignoreInput
                  L25_3 = 500
                  L24_3(L25_3)
                  L24_3 = L4_2.againstBot
                  if not L24_3 then
                    L24_3 = L4_2.ignoreFail
                    L25_3 = L39_1.PVPPing
                    L25_3 = L25_3 + 50
                    L24_3(L25_3)
                  else
                    L24_3 = L4_2.ignoreFail
                    L25_3 = 100
                    L24_3(L25_3)
                  end
                  L24_3 = CreateThread
                  function L25_3()
                    local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
                    L0_4 = Wait
                    L1_4 = L22_3
                    L0_4(L1_4)
                    L0_4 = L4_2.isRecording
                    if L0_4 then
                      L0_4 = table
                      L0_4 = L0_4.insert
                      L1_4 = L4_2.snaps
                      L2_4 = {}
                      L3_4 = GetGameTimer
                      L3_4 = L3_4()
                      L4_4 = L4_2.recordStartTime
                      L3_4 = L3_4 - L4_4
                      L2_4.time = L3_4
                      L2_4.type = "ball"
                      L3_4 = L18_3
                      L2_4.nO = L3_4
                      L3_4 = L19_3
                      L2_4.nV = L3_4
                      L3_4 = L23_3
                      L2_4.slowDown = L3_4
                      L3_4 = L4_2.simulateSpeed
                      L2_4.speed = L3_4
                      L3_4 = L39_1.LocalSide
                      L2_4.slowDownSide = L3_4
                      L0_4(L1_4, L2_4)
                    end
                    L0_4 = PlaySound
                    L1_4 = "sounds\\"
                    L2_4 = L4_2.ballData
                    L2_4 = L2_4.soundFolder
                    L3_4 = "\\Hit.mp3"
                    L1_4 = L1_4 .. L2_4 .. L3_4
                    L2_4 = L4_2.ballData
                    L2_4 = L2_4.worldCoords
                    L0_4(L1_4, L2_4)
                    L0_4 = L4_2.ballData
                    L1_4 = L18_3
                    L0_4.offset = L1_4
                    L0_4 = L4_2.ballData
                    L1_4 = L19_3
                    L0_4.velocity = L1_4
                    L0_4 = L4_2.refreshBallMarker
                    L0_4()
                    L0_4 = L4_2.setSlowDownForTurn
                    L1_4 = L23_3
                    L2_4 = L39_1.LocalSide
                    L0_4(L1_4, L2_4)
                    L0_4 = L4_2.botSide
                    if 1 == L0_4 then
                      L0_4 = 2
                      if L0_4 then
                        goto lbl_58
                      end
                    end
                    L0_4 = 1
                    ::lbl_58::
                    L39_1.LastHitSide = L0_4
                    L0_4 = L4_2.ballData
                    L0_4 = L0_4.velocity
                    L0_4 = L0_4.y
                    if L0_4 > 0 then
                      L0_4 = L4_2.botSide
                    end
                    L0_4 = 2 == L0_4
                    if L0_4 then
                      L1_4 = CalculateDurationToReachEnd
                      L2_4 = L4_2.ballData
                      L3_4 = L4_2.simulateSpeed
                      if not L3_4 then
                        L3_4 = 1.0
                      end
                      L1_4 = L1_4(L2_4, L3_4)
                      L1_4 = L1_4 * 620.0
                      L2_4 = L4_2.prepareAttackOnBot
                      L3_4 = L1_4
                      L2_4(L3_4)
                      L2_4 = CalculateXFromVelocity
                      L3_4 = L4_2
                      L4_4 = L4_2.botSide
                      if 1 == L4_4 then
                        L4_4 = -1.4
                        if L4_4 then
                          goto lbl_100
                        end
                      end
                      L4_4 = 1.4
                      ::lbl_100::
                      L2_4 = L2_4(L3_4, L4_4)
                      L3_4 = Clamp
                      L4_4 = L2_4
                      L5_4 = -1.5
                      L6_4 = 1.5
                      L3_4 = L3_4(L4_4, L5_4, L6_4)
                      L2_4 = L3_4
                      L3_4 = L4_2.botSide
                      if 2 == L3_4 then
                        L2_4 = -L2_4
                      end
                      L3_4 = L4_2.playAnimationOnPed
                      L4_4 = L4_2.botPed
                      L5_4 = L4_2.botSide
                      L6_4 = "idle"
                      L7_4 = vector2
                      L8_4 = L2_4
                      L9_4 = 0.0
                      L7_4, L8_4, L9_4 = L7_4(L8_4, L9_4)
                      L3_4(L4_4, L5_4, L6_4, L7_4, L8_4, L9_4)
                      L3_4 = L4_2.isRecording
                      if L3_4 then
                        L3_4 = table
                        L3_4 = L3_4.insert
                        L4_4 = L4_2.snaps
                        L5_4 = {}
                        L6_4 = GetGameTimer
                        L6_4 = L6_4()
                        L7_4 = L4_2.recordStartTime
                        L6_4 = L6_4 - L7_4
                        L5_4.time = L6_4
                        L5_4.type = "pedPrepare"
                        L6_4 = L4_2.botSide
                        L5_4.side = L6_4
                        L5_4.watingX = L2_4
                        L3_4(L4_4, L5_4)
                      end
                    end
                  end
                  L26_3 = "acceptDelay"
                  L24_3(L25_3, L26_3)
                end
            end
          end
        end
      end
    end
    else
      L17_3 = L2_3.offset
      L4_2.lastHandledOffset = L17_3
    end
  end
  L4_2.localPlayerTick = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L2_3 = pairs
    L3_3 = L4_2.lastPedAnimation
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L7_3.endTime
      if L1_3 > L8_3 then
        L8_3 = L7_3.name
        if "idle" ~= L8_3 then
          L8_3 = L4_2.playAnimationOnPed
          L9_3 = L6_3
          L10_3 = L7_3.side
          L11_3 = "idle"
          L12_3 = L7_3.offset
          L8_3(L9_3, L10_3, L11_3, L12_3)
        end
      end
    end
  end
  L4_2.pedTick = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = L39_1.Active
    if not L1_3 then
      return
    end
    L1_3 = L4_2.ballTick
    L2_3 = A0_3
    L1_3(L2_3)
    L1_3 = L4_2.localPlayerTick
    L2_3 = A0_3
    L1_3(L2_3)
    L1_3 = L4_2.pedTick
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L4_2.movementTick = L5_2
  return L4_2
end
function L43_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A1_2 then
    L4_2 = pairs
    L5_2 = L37_1
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L9_2.coords
      L10_2 = A0_2 - L10_2
      L10_2 = #L10_2
      L11_2 = 0.5
      if L10_2 < L11_2 then
        A1_2 = L9_2.heading
        A3_2 = L9_2.skinId
      end
    end
  end
  if not A1_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = pairs
  L5_2 = L18_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.coords
    L10_2 = A0_2 - L10_2
    L10_2 = #L10_2
    L11_2 = 0.2
    if L10_2 < L11_2 then
      return L9_2
    end
  end
  L4_2 = L42_1
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L18_1
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  return L4_2
end
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  if not L1_2 or not A0_2 then
    L1_2 = L0_1
    if L1_2 or A0_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  if A0_2 then
    L1_2 = CreateCam
    L2_2 = "DEFAULT_SCRIPTED_CAMERA"
    L3_2 = true
    L1_2 = L1_2(L2_2, L3_2)
    L0_1 = L1_2
  else
    L1_2 = DestroyCam
    L2_2 = L0_1
    L1_2(L2_2)
    L1_2 = nil
    L0_1 = L1_2
  end
  L1_2 = RenderScriptCams
  L2_2 = A0_2
  L3_2 = A0_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
ToggleTennisCamera = L44_1
function L44_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L1_2 = L39_1.LocalScores
  L1_2 = L1_2[1]
  L0_2.s1 = L1_2
  L1_2 = L39_1.LocalScores
  L1_2 = L1_2[2]
  L0_2.s2 = L1_2
  L1_2 = encrypt
  L2_2 = L39_1.game
  L2_2 = L2_2.key
  L3_2 = "ttennis"
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.k = L1_2
  L1_2 = encrypt
  L2_2 = json
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L39_1.game
  L3_2 = L3_2.key
  L1_2 = L1_2(L2_2, L3_2)
  L0_2 = L1_2
  L1_2 = TriggerServerEvent
  L2_2 = "TableTennis:UpdateScores"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L39_1.roundStartedTime = 0
  L1_2 = L19_1.clearBonusMarkers
  L1_2()
  L1_2 = A0_2.ballData
  L1_2 = L1_2.offset
  L1_2 = L1_2.y
  if L1_2 < 0.0 then
    L1_2 = 1
    if L1_2 then
      goto lbl_13
    end
  end
  L1_2 = 2
  ::lbl_13::
  L2_2 = L39_1.LastHitSide
  L3_2 = L39_1.LocalSide
  L4_2 = A0_2.lastBounceOffTableSide
  L5_2 = -1
  L6_2 = -1
  L7_2 = -1
  L8_2 = nil
  L9_2 = 1
  L10_2 = L39_1.game
  L10_2 = L10_2.matchSettings
  L10_2 = L10_2.gamemode
  if 4 == L10_2 then
    L9_2 = L39_1.ActualBilliardValue
  else
    L10_2 = L39_1.game
    L10_2 = L10_2.matchSettings
    L10_2 = L10_2.gamemode
    if 5 == L10_2 then
      L9_2 = 0
    end
  end
  L10_2 = A0_2.ballFallingDown
  if not L10_2 then
    A0_2.ballFallingDown = true
    L7_2 = 1
    L8_2 = 1
  else
    L7_2 = 2
  end
  L10_2 = L10_1
  if L10_2 > 0 then
    L10_2 = Stats_Increase
    L11_2 = "rcore_pingpong_shoots"
    L12_2 = L10_1
    L10_2(L11_2, L12_2)
    L10_2 = 0
    L10_1 = L10_2
  end
  L10_2 = L19_1.isRecording
  if L10_2 then
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2.snaps
    L12_2 = {}
    L13_2 = GetGameTimer
    L13_2 = L13_2()
    L14_2 = A0_2.recordStartTime
    L13_2 = L13_2 - L14_2
    L12_2.time = L13_2
    L12_2.type = "finishRound"
    L13_2 = A0_2.ballData
    L13_2 = L13_2.headedVelocity
    L12_2.headedVelocity = L13_2
    L13_2 = A0_2.ballData
    L13_2 = L13_2.worldCoords
    L12_2.worldCoords = L13_2
    L10_2(L11_2, L12_2)
  end
  if 1 == L7_2 then
    L10_2 = _U
    L11_2 = "EndReason1"
    L10_2 = L10_2(L11_2)
    L8_2 = L10_2
    if 1 == L2_2 then
      L10_2 = 2
      L5_2 = L10_2 or L5_2
    end
    if not L10_2 then
      L5_2 = 1
    end
  elseif 2 == L7_2 then
    if 1 == L1_2 then
      if 1 == L2_2 then
        L10_2 = _U
        L11_2 = "EndReason2"
        L10_2 = L10_2(L11_2)
        L8_2 = L10_2
        L5_2 = 2
      elseif 1 == L4_2 then
        L5_2 = 2
      else
        L5_2 = 1
        L10_2 = _U
        L11_2 = "EndReason3"
        L10_2 = L10_2(L11_2)
        L8_2 = L10_2
      end
    elseif 2 == L1_2 then
      if 2 == L2_2 then
        L8_2 = 2
        L5_2 = 1
        L10_2 = _U
        L11_2 = "EndReason2"
        L10_2 = L10_2(L11_2)
        L8_2 = L10_2
      elseif 2 == L4_2 then
        L5_2 = 1
      else
        L10_2 = _U
        L11_2 = "EndReason3"
        L10_2 = L10_2(L11_2)
        L8_2 = L10_2
        L5_2 = 2
      end
    end
  end
  if 1 == L5_2 then
    L10_2 = 2
    if L10_2 then
      goto lbl_134
      L6_2 = L10_2 or L6_2
    end
  end
  L6_2 = 1
  ::lbl_134::
  if L5_2 == L3_2 then
    L10_2 = PlaySound
    L11_2 = "sounds\\ui\\Win.mp3"
    L12_2 = GetEntityCoords
    L13_2 = PlayerPedId
    L13_2, L14_2, L15_2, L16_2 = L13_2()
    L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    if not L8_2 then
      L10_2 = _U
      L11_2 = "OpponentMissedBall"
      L10_2 = L10_2(L11_2)
      L8_2 = L10_2
    end
    L10_2 = ShowMidsizedMessage
    L11_2 = _U
    L12_2 = "PointUpCaption"
    L11_2 = L11_2(L12_2)
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
    L10_2 = L19_1.playAnimationOnPed
    L11_2 = L19_1.botPed
    L12_2 = L19_1.botSide
    L13_2 = "react_lose_0"
    L14_2 = RandomNumber
    L15_2 = 1
    L16_2 = 5
    L14_2 = L14_2(L15_2, L16_2)
    L13_2 = L13_2 .. L14_2
    L10_2(L11_2, L12_2, L13_2)
  else
    L10_2 = PlaySound
    L11_2 = "sounds\\ui\\Lose.mp3"
    L12_2 = GetEntityCoords
    L13_2 = PlayerPedId
    L13_2, L14_2, L15_2, L16_2 = L13_2()
    L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    if not L8_2 then
      L10_2 = _U
      L11_2 = "YouMissedBall"
      L10_2 = L10_2(L11_2)
      L8_2 = L10_2
    end
    L10_2 = ShowMidsizedMessage
    L11_2 = _U
    L12_2 = "PointLostCaption"
    L11_2 = L11_2(L12_2)
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
    L10_2 = L19_1.playAnimationOnPed
    L11_2 = L19_1.botPed
    L12_2 = L19_1.botSide
    L13_2 = "react_win_0"
    L14_2 = RandomNumber
    L15_2 = 1
    L16_2 = 5
    L14_2 = L14_2(L15_2, L16_2)
    L13_2 = L13_2 .. L14_2
    L10_2(L11_2, L12_2, L13_2)
  end
  L10_2 = L39_1.LocalScores
  L11_2 = L39_1.LocalScores
  L11_2 = L11_2[L5_2]
  L11_2 = L11_2 + L9_2
  L10_2[L5_2] = L11_2
  L10_2 = L39_1.game
  L10_2 = L10_2.matchSettings
  L10_2 = L10_2.gamemode
  if 5 == L10_2 then
    L10_2 = L39_1.LocalScores
    L10_2 = L10_2[L6_2]
    if L10_2 > 0 then
      L10_2 = L39_1.LocalScores
      L11_2 = L39_1.LocalScores
      L11_2 = L11_2[L6_2]
      L11_2 = L11_2 - 1
      L10_2[L6_2] = L11_2
      L10_2 = SendToJavascript
      L11_2 = "ScoreChanged"
      L12_2 = L6_2
      L13_2 = L39_1.LocalScores
      L13_2 = L13_2[L6_2]
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  if L9_2 > 0 then
    L10_2 = SendToJavascript
    L11_2 = "ScoreChanged"
    L12_2 = L5_2
    L13_2 = L39_1.LocalScores
    L13_2 = L13_2[L5_2]
    L10_2(L11_2, L12_2, L13_2)
  end
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L19_1.snaps
  L12_2 = {}
  L13_2 = GetGameTimer
  L13_2 = L13_2()
  L14_2 = L19_1.recordStartTime
  L13_2 = L13_2 - L14_2
  L12_2.time = L13_2
  L12_2.type = "roundEnd"
  L12_2.pointUp = L5_2
  L13_2 = L39_1.LocalScores
  L13_2 = L13_2[1]
  L12_2.score1 = L13_2
  L13_2 = L39_1.LocalScores
  L13_2 = L13_2[2]
  L12_2.score2 = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = L44_1
  L10_2()
  L10_2 = L39_1.LocalScores
  L10_2 = L10_2[L5_2]
  L11_2 = L39_1.game
  L11_2 = L11_2.matchSettings
  L11_2 = L11_2.maxRounds
  L10_2 = L10_2 >= L11_2
  L11_2 = L39_1.game
  L11_2 = L11_2.matchSettings
  L11_2 = L11_2.gamemode
  if 4 == L11_2 then
    L11_2 = L39_1.LocalScores
    L11_2 = L11_2[L5_2]
    L10_2 = L11_2 >= 61
    L11_2 = SendToJavascript
    L12_2 = "AddBilliardBall"
    L13_2 = L5_2
    L14_2 = L39_1.ActualBilliardValue
    L11_2(L12_2, L13_2, L14_2)
  else
    L11_2 = L39_1.game
    L11_2 = L11_2.matchSettings
    L11_2 = L11_2.gamemode
    if 5 == L11_2 then
      L11_2 = L39_1.LocalScores
      L11_2 = L11_2[L5_2]
      L10_2 = L11_2 >= 100
    end
  end
  if L10_2 then
    L11_2 = CreateThread
    function L12_2()
      local L0_3, L1_3
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = L19_1
      if L0_3 then
        L0_3 = L19_1.destroyBallFx
        L0_3()
      end
    end
    L13_2 = "FinishLocalRound"
    L11_2(L12_2, L13_2)
  else
    L11_2 = CreateThread
    function L12_2()
      local L0_3, L1_3
      L0_3 = Wait
      L1_3 = 2000
      L0_3(L1_3)
      L0_3 = PrepareNewLocalRound
      L0_3()
    end
    L13_2 = "FinishLocalRound2"
    L11_2(L12_2, L13_2)
  end
end
FinishLocalRound = L45_1
function L45_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L39_1.roundStartedTime = 0
  L5_2 = L19_1.clearBonusMarkers
  L5_2()
  L5_2 = L22_1
  if not L5_2 then
    L5_2 = ResetSession
    L5_2()
    return
  end
  L39_1.PVPLastFinishedRoundID = A0_2
  L39_1.PVPIgnoreInput = true
  L5_2 = L39_1.IsHost
  if L5_2 then
    L5_2 = L22_1.Send
    L6_2 = json
    L6_2 = L6_2.encode
    L7_2 = {}
    L7_2.roundId = A0_2
    L7_2.failType = A1_2
    L7_2.lastHitSide = A2_2
    L7_2.lastBounceSide = A3_2
    L7_2.fallSide = A4_2
    L7_2.action = "finishRound"
    L6_2 = L6_2(L7_2)
    L5_2(L6_2)
  end
  L5_2 = L10_1
  if L5_2 > 0 then
    L5_2 = Stats_Increase
    L6_2 = "rcore_pingpong_shoots"
    L7_2 = L10_1
    L5_2(L6_2, L7_2)
    L5_2 = 0
    L10_1 = L5_2
  end
  L5_2 = L19_1.turnGTAPhysicsOnBall
  L5_2()
  L5_2 = A2_2
  L6_2 = L39_1.LocalSide
  L7_2 = A3_2
  L8_2 = -1
  L9_2 = -1
  L10_2 = nil
  L11_2 = 1
  L12_2 = L39_1.game
  L12_2 = L12_2.matchSettings
  L12_2 = L12_2.gamemode
  if 4 == L12_2 then
    L11_2 = L39_1.ActualBilliardValue
  else
    L12_2 = L39_1.game
    L12_2 = L12_2.matchSettings
    L12_2 = L12_2.gamemode
    if 5 == L12_2 then
      L11_2 = 0
    end
  end
  L12_2 = L19_1.isRecording
  if L12_2 then
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L19_1.snaps
    L14_2 = {}
    L15_2 = GetGameTimer
    L15_2 = L15_2()
    L16_2 = L19_1.recordStartTime
    L15_2 = L15_2 - L16_2
    L14_2.time = L15_2
    L14_2.type = "finishRound"
    L15_2 = L19_1.ballData
    L15_2 = L15_2.headedVelocity
    L14_2.headedVelocity = L15_2
    L15_2 = L19_1.ballData
    L15_2 = L15_2.worldCoords
    L14_2.worldCoords = L15_2
    L12_2(L13_2, L14_2)
  end
  if 1 == A1_2 then
    L12_2 = _U
    L13_2 = "EndReason1"
    L12_2 = L12_2(L13_2)
    L10_2 = L12_2
    if 1 == L5_2 then
      L12_2 = 2
      L8_2 = L12_2 or L8_2
    end
    if not L12_2 then
      L8_2 = 1
    end
  elseif 2 == A1_2 then
    if 1 == A4_2 then
      if 1 == L5_2 then
        L12_2 = _U
        L13_2 = "EndReason2"
        L12_2 = L12_2(L13_2)
        L10_2 = L12_2
        L8_2 = 2
      elseif 1 == L7_2 then
        L8_2 = 2
      else
        L8_2 = 1
        L12_2 = _U
        L13_2 = "EndReason3"
        L12_2 = L12_2(L13_2)
        L10_2 = L12_2
      end
    elseif 2 == A4_2 then
      if 2 == L5_2 then
        L10_2 = 2
        L8_2 = 1
        L12_2 = _U
        L13_2 = "EndReason2"
        L12_2 = L12_2(L13_2)
        L10_2 = L12_2
      elseif 2 == L7_2 then
        L8_2 = 1
      else
        L12_2 = _U
        L13_2 = "EndReason3"
        L12_2 = L12_2(L13_2)
        L10_2 = L12_2
        L8_2 = 2
      end
    end
  end
  if 1 == L8_2 then
    L12_2 = 2
    if L12_2 then
      goto lbl_142
      L9_2 = L12_2 or L9_2
    end
  end
  L9_2 = 1
  ::lbl_142::
  if L8_2 == L6_2 then
    L12_2 = PlaySound
    L13_2 = "sounds\\ui\\Win.mp3"
    L14_2 = GetEntityCoords
    L15_2 = PlayerPedId
    L15_2, L16_2, L17_2, L18_2 = L15_2()
    L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    if not L10_2 then
      L12_2 = _U
      L13_2 = "OpponentMissedBall"
      L12_2 = L12_2(L13_2)
      L10_2 = L12_2
    end
    L12_2 = ShowMidsizedMessage
    L13_2 = _U
    L14_2 = "PointUpCaption"
    L13_2 = L13_2(L14_2)
    L14_2 = L10_2
    L12_2(L13_2, L14_2)
    L12_2 = L19_1.playAnimationOnPed
    L13_2 = L19_1.botPed
    L14_2 = L19_1.botSide
    L15_2 = "react_lose_0"
    L16_2 = RandomNumber
    L17_2 = 1
    L18_2 = 5
    L16_2 = L16_2(L17_2, L18_2)
    L15_2 = L15_2 .. L16_2
    L12_2(L13_2, L14_2, L15_2)
  else
    L12_2 = PlaySound
    L13_2 = "sounds\\ui\\Lose.mp3"
    L14_2 = GetEntityCoords
    L15_2 = PlayerPedId
    L15_2, L16_2, L17_2, L18_2 = L15_2()
    L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    if not L10_2 then
      L12_2 = _U
      L13_2 = "YouMissedBall"
      L12_2 = L12_2(L13_2)
      L10_2 = L12_2
    end
    L12_2 = ShowMidsizedMessage
    L13_2 = _U
    L14_2 = "PointLostCaption"
    L13_2 = L13_2(L14_2)
    L14_2 = L10_2
    L12_2(L13_2, L14_2)
    L12_2 = L19_1.playAnimationOnPed
    L13_2 = L19_1.botPed
    L14_2 = L19_1.botSide
    L15_2 = "react_win_0"
    L16_2 = RandomNumber
    L17_2 = 1
    L18_2 = 5
    L16_2 = L16_2(L17_2, L18_2)
    L15_2 = L15_2 .. L16_2
    L12_2(L13_2, L14_2, L15_2)
  end
  L12_2 = L39_1.LocalScores
  L13_2 = L39_1.LocalScores
  L13_2 = L13_2[L8_2]
  L13_2 = L13_2 + L11_2
  L12_2[L8_2] = L13_2
  L12_2 = SendToJavascript
  L13_2 = "ScoreChanged"
  L14_2 = L8_2
  L15_2 = L39_1.LocalScores
  L15_2 = L15_2[L8_2]
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = L19_1.isRecording
  if L12_2 then
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L19_1.snaps
    L14_2 = {}
    L15_2 = GetGameTimer
    L15_2 = L15_2()
    L16_2 = L19_1.recordStartTime
    L15_2 = L15_2 - L16_2
    L14_2.time = L15_2
    L14_2.type = "roundEnd"
    L14_2.pointUp = L8_2
    L15_2 = L39_1.LocalScores
    L15_2 = L15_2[1]
    L14_2.score1 = L15_2
    L15_2 = L39_1.LocalScores
    L15_2 = L15_2[2]
    L14_2.score2 = L15_2
    L12_2(L13_2, L14_2)
  end
  L12_2 = L39_1.IsHost
  if L12_2 then
    L12_2 = L44_1
    L12_2()
  end
  L12_2 = L39_1.LocalScores
  L12_2 = L12_2[L8_2]
  L13_2 = L39_1.game
  L13_2 = L13_2.matchSettings
  L13_2 = L13_2.maxRounds
  L12_2 = L12_2 >= L13_2
  L13_2 = L39_1.game
  L13_2 = L13_2.matchSettings
  L13_2 = L13_2.gamemode
  if 4 == L13_2 then
    L13_2 = L39_1.LocalScores
    L13_2 = L13_2[L8_2]
    L12_2 = L13_2 >= 61
    L13_2 = SendToJavascript
    L14_2 = "AddBilliardBall"
    L15_2 = L8_2
    L16_2 = L39_1.ActualBilliardValue
    L13_2(L14_2, L15_2, L16_2)
  else
    L13_2 = L39_1.game
    L13_2 = L13_2.matchSettings
    L13_2 = L13_2.gamemode
    if 5 == L13_2 then
      L13_2 = L39_1.LocalScores
      L13_2 = L13_2[L8_2]
      L12_2 = L13_2 >= 100
    end
  end
  if L12_2 then
    L13_2 = CreateThread
    function L14_2()
      local L0_3, L1_3
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = L19_1
      if L0_3 then
        L0_3 = L19_1.destroyBallFx
        L0_3()
      end
    end
    L15_2 = "FinishLocalRound3"
    L13_2(L14_2, L15_2)
  else
    L13_2 = CreateThread
    function L14_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = Wait
      L1_3 = 2000
      L0_3(L1_3)
      L0_3 = L39_1.IsHost
      if L0_3 then
        L0_3 = L39_1.LastServePlayer
        if 1 == L0_3 then
          L0_3 = 2
          if L0_3 then
            goto lbl_14
          end
        end
        L0_3 = 1
        ::lbl_14::
        L1_3 = PrepareNewPVPRound
        L2_3 = L0_3
        L3_3 = L39_1.RoundID
        L3_3 = L3_3 + 1
        L1_3(L2_3, L3_3)
      end
    end
    L15_2 = "FinishLocalRound4"
    L13_2(L14_2, L15_2)
  end
end
FinishPVPRound = L45_1
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = Stats_Increase
  L2_2 = "rcore_pingpong_games_against_ai"
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.getClosestPlayerSideFromCoords
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2()
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L2_2 = GetMyPedNetworkId
  L2_2 = L2_2()
  if not L2_2 then
    return
  end
  L3_2 = LoadTennisAnimations
  L4_2 = 2000
  L3_2(L4_2)
  L3_2 = GetRandomItem
  L4_2 = Config
  L4_2 = L4_2.AIModels
  L3_2 = L3_2(L4_2)
  L4_2 = TriggerServerEvent
  L5_2 = "TableTennis:StartAgainstBot"
  L6_2 = A0_2.coords
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = A0_2.heading
  L11_2 = A0_2.model
  L12_2 = A0_2.skin
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityHeading
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityModel
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L8_1
  L4_2 = L4_2[L3_2]
  L5_2 = L43_1
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = TriggerServerEvent
  L7_2 = "TableTennis:ToggleInteractable"
  L8_2 = L1_2
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
end
function L47_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L39_1.HostSide
  L1_2 = L39_1.LocalSide
  if L0_2 ~= L1_2 then
    return
  end
  L0_2 = L19_1
  if L0_2 then
    L0_2 = L19_1.toggleNetVariation
    L1_2 = L11_1.netHitBoxItem
    L1_2 = L1_2.checked
    L0_2(L1_2)
  end
  L0_2 = L19_1.againstBot
  if L0_2 then
    return
  end
  L0_2 = {}
  L1_2 = L11_1.scoreItem
  L1_2 = L1_2.listIndex
  L0_2.finalScore = L1_2
  L1_2 = L11_1.ballItem
  L1_2 = L1_2.listIndex
  L0_2.ball = L1_2
  L1_2 = L11_1.speedItem
  L1_2 = L1_2.listIndex
  L0_2.speed = L1_2
  L1_2 = L11_1.LeaderboardItem
  L1_2 = L1_2.checked
  L0_2.useLeaderboard = L1_2
  L1_2 = L11_1.helperItem
  L1_2 = L1_2.checked
  L0_2.helper = L1_2
  L1_2 = L11_1.netHitBoxItem
  L1_2 = L1_2.checked
  L0_2.netHitBox = L1_2
  L1_2 = L11_1.gamemodeItem
  L1_2 = L1_2.listIndex
  L0_2.gamemode = L1_2
  L1_2 = TriggerServerEvent
  L2_2 = "TableTennis:SyncTennisMenu"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end
function L48_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SetResourceKvp
  L1_2 = "ttennisxxxxxx"
  L2_2 = json
  L2_2 = L2_2.encode
  L3_2 = L5_1
  L2_2, L3_2 = L2_2(L3_2)
  L0_2(L1_2, L2_2, L3_2)
end
function L49_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetResourceKvpString
  L1_2 = "ttennisxxxxxx"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L1_2 = json
    L1_2 = L1_2.decode
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L5_1 = L1_2
  else
    L1_2 = {}
    L1_2.cameraTilt = 3
    L1_2.lockMouse = false
    L1_2.racketSkin = 2
    L1_2.verticalTracking = 1
    L5_1 = L1_2
    L1_2 = L48_1
    L1_2()
  end
end
function L50_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerServerEvent
  L1_2 = "TableTennis:ToggleInteractable"
  L2_2 = false
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = ShowNotifyBar
  L1_2 = ""
  L0_2(L1_2)
end
function L51_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L43_1
  L3_2 = A0_2.coords
  L4_2 = A0_2.heading
  L5_2 = A0_2.model
  L6_2 = A0_2.skinId
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2.isVisible = A1_2
  A0_2.isVisible = A1_2
  L3_2 = TriggerServerEvent
  L4_2 = "TableTennis:Subscribe"
  L5_2 = A0_2.coords
  L6_2 = A1_2
  L7_2 = A0_2.heading
  L8_2 = A0_2.model
  L9_2 = A0_2.skinId
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
function L52_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.Objects
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.pos
    L7_2 = L7_2 - A0_2
    L7_2 = #L7_2
    L8_2 = Config
    L8_2 = L8_2.SpawnDistance
    if L7_2 < L8_2 then
      L7_2 = L6_2.entity
      if L7_2 then
        L7_2 = DoesEntityExist
        L8_2 = L6_2.entity
        L7_2 = L7_2(L8_2)
      end
      if not L7_2 then
        L7_2 = LoadModel
        L8_2 = L6_2.model
        L7_2(L8_2)
        L7_2 = CreateObject
        L8_2 = GetHashKey
        L9_2 = L6_2.model
        L8_2 = L8_2(L9_2)
        L9_2 = L6_2.pos
        L10_2 = false
        L11_2 = false
        L12_2 = false
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        L6_2.entity = L7_2
        L7_2 = SetEntityHeading
        L8_2 = L6_2.entity
        L9_2 = L6_2.heading
        L7_2(L8_2, L9_2)
      end
    else
      L7_2 = L6_2.entity
      if L7_2 then
        L7_2 = DoesEntityExist
        L8_2 = L6_2.entity
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = DeleteEntity
          L8_2 = L6_2.entity
          L7_2(L8_2)
          L6_2.entity = nil
        end
      end
    end
  end
end
function L53_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L1_2 = L9_1
  L1_2 = L0_2 - L1_2
  L1_2 = #L1_2
  if not (L1_2 < 1.0) then
    L2_2 = IsPedInAnyVehicle
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      goto lbl_19
    end
  end
  do return end
  ::lbl_19::
  L9_1 = L0_2
  L2_2 = L52_1
  L3_2 = L0_2
  L2_2(L3_2)
  L2_2 = pairs
  L3_2 = TennisTableSkins
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = GetClosestObjectOfType
    L9_2 = L0_2
    L10_2 = 2.0
    L11_2 = L7_2[1]
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = nil
    if 0 ~= L8_2 then
      L10_2 = GetEntityCoords
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L11_2 = L38_1
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L12_2 = L37_1
      L12_2 = L12_2[L8_2]
      if not L12_2 and L11_2 then
        L12_2 = L37_1
        L12_2[L8_2] = L11_2
        L12_2 = L37_1
        L12_2 = L12_2[L8_2]
        L12_2.remote = false
        L13_2 = L11_2.key
        L12_2 = L37_1
        L12_2[L13_2] = nil
      end
    end
    if 0 ~= L8_2 then
      L10_2 = L37_1
      L10_2 = L10_2[L8_2]
      if not L10_2 then
        L10_2 = GetEntityModel
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        L11_2 = L8_1
        L11_2 = L11_2[L10_2]
        L12_2 = L37_1
        L13_2 = {}
        L14_2 = GetEntityCoords
        L15_2 = L8_2
        L14_2 = L14_2(L15_2)
        L13_2.coords = L14_2
        L14_2 = GetEntityHeading
        L15_2 = L8_2
        L14_2 = L14_2(L15_2)
        L13_2.heading = L14_2
        L13_2.model = L10_2
        L13_2.skinId = L11_2
        L13_2.visible = false
        L12_2[L8_2] = L13_2
        if nil ~= L9_2 then
          L12_2 = L37_1
          L12_2 = L12_2[L8_2]
          L12_2.remote = false
          L12_2 = L37_1
          L12_2 = L12_2[L8_2]
          L12_2.isVisible = L9_2
        end
        break
      end
    end
  end
  L2_2 = pairs
  L3_2 = L37_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.remote
    if not L8_2 then
      L8_2 = DoesEntityExist
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        goto lbl_149
      end
    end
    L8_2 = L7_2.coords
    L8_2 = L8_2 - L0_2
    L8_2 = #L8_2
    L9_2 = L8_2 < 15.0
    L10_2 = 2.5
    L10_2 = L8_2 < L10_2
    L11_2 = L7_2.isVisible
    if L9_2 ~= L11_2 then
      L11_2 = L51_1
      L12_2 = L7_2
      L13_2 = L9_2
      L11_2(L12_2, L13_2)
    end
    if L10_2 then
      L11_2 = L17_1
      if not L11_2 then
        L11_2 = L46_1
        L12_2 = L6_2
        L11_2(L12_2)
        L17_1 = L6_2
    end
    else
      L11_2 = L17_1
      if L11_2 == L6_2 and not L10_2 then
        L11_2 = L50_1
        L11_2()
        L11_2 = nil
        L17_1 = L11_2
      end
    end
    L7_2.isVisible = L9_2
    goto lbl_158
    ::lbl_149::
    L8_2 = L37_1
    L8_2[L6_2] = nil
    L8_2 = L17_1
    if L8_2 == L6_2 then
      L8_2 = L50_1
      L8_2()
      L8_2 = nil
      L17_1 = L8_2
    end
    ::lbl_158::
  end
end
function L54_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = ShuffleList
  L1_2 = {}
  L2_2 = 1
  L3_2 = 2
  L4_2 = 3
  L5_2 = 4
  L6_2 = 5
  L7_2 = 6
  L8_2 = 7
  L9_2 = 9
  L10_2 = 10
  L11_2 = 11
  L12_2 = 12
  L13_2 = 13
  L14_2 = 14
  L15_2 = 15
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L1_2[9] = L10_2
  L1_2[10] = L11_2
  L1_2[11] = L12_2
  L1_2[12] = L13_2
  L1_2[13] = L14_2
  L1_2[14] = L15_2
  L0_2 = L0_2(L1_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L0_2
  L3_2 = 8
  L1_2(L2_2, L3_2)
  L39_1.BilliardOrder = L0_2
  L39_1.BilliardOrderIndex = 1
end
function L55_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L39_1.IsHost
  if not L0_2 then
    return
  end
  L0_2 = L39_1.BilliardOrder
  L1_2 = L39_1.BilliardOrderIndex
  L0_2 = L0_2[L1_2]
  L39_1.ActualBilliardValue = L0_2
  L0_2 = "prop_poolball_"
  L1_2 = L39_1.ActualBilliardValue
  L0_2 = L0_2 .. L1_2
  L1_2 = L19_1.switchBallModel
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = L39_1.BilliardOrderIndex
  L1_2 = L1_2 + 1
  L39_1.BilliardOrderIndex = L1_2
  L1_2 = TriggerServerEvent
  L2_2 = "TableTennis:LastBilliardModel"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L19_1.snaps
  L3_2 = {}
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L5_2 = L19_1.recordStartTime
  L4_2 = L4_2 - L5_2
  L3_2.time = L4_2
  L3_2.type = "ballswitch"
  L3_2.nextBall = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = L19_1
  if L1_2 then
    L1_2 = L19_1.againstBot
    if not L1_2 then
      L1_2 = L22_1.Send
      L2_2 = json
      L2_2 = L2_2.encode
      L3_2 = {}
      L3_2.action = "BallSwitch"
      L3_2.nextBall = L0_2
      L4_2 = L39_1.ActualBilliardValue
      L3_2.ballValue = L4_2
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
function L56_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L19_1.clearNumberMarkersForPlayer
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = L39_1.bonusMarkerStartingValues
  L1_2 = L1_2[A0_2]
  if L1_2 > 1 then
    L1_2 = L39_1.bonusMarkerStartingValues
    L2_2 = L39_1.bonusMarkerStartingValues
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2 - 1
    L1_2[A0_2] = L2_2
  end
  L1_2 = L39_1.bonusMarkerStartingValues
  L1_2 = L1_2[A0_2]
  L2_2 = GenerateBonusMarkerForPlayer
  L3_2 = A0_2
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
DowngradeMarkerForPlayer = L56_1
function L56_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = {}
  L3_2 = 0.5
  L4_2 = 0.4
  L5_2 = 0.35
  L6_2 = 0.3
  L7_2 = 0.2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L3_2 = L2_2[A1_2]
  L4_2 = L39_1.LocalSide
  if L4_2 == A0_2 then
    L39_1.hitsUntilBonusRefresh = 5
  end
  L4_2 = L19_1.againstBot
  if L4_2 then
    L4_2 = L19_1.botSide
    if A0_2 == L4_2 then
      L39_1.bothitsUntilBonusRefresh = 5
    end
  end
  L4_2 = Clamp
  L5_2 = L3_2
  L6_2 = 0.2
  L7_2 = 0.5
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L4_2
  L4_2 = PercentageOf
  L5_2 = L3_2
  L6_2 = 0.2
  L7_2 = 0.5
  L8_2 = 1.0
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = 0.26
  L6_2 = Lerp
  L7_2 = 0.58
  L8_2 = 0.42
  L9_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = 0.34
  L8_2 = 0.95
  L9_2 = RandomFloat
  L10_2 = -L6_2
  L11_2 = L6_2
  L9_2 = L9_2(L10_2, L11_2)
  if 1 == A0_2 then
    L10_2 = RandomFloat
    L11_2 = L7_2
    L12_2 = L8_2
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 then
      goto lbl_57
    end
  end
  L10_2 = RandomFloat
  L11_2 = -L8_2
  L12_2 = -L7_2
  L10_2 = L10_2(L11_2, L12_2)
  ::lbl_57::
  L11_2 = L39_1.markerId
  if not L11_2 then
    L39_1.markerId = 0
  end
  L11_2 = L39_1.markerId
  L11_2 = L11_2 + 1
  L39_1.markerId = L11_2
  L11_2 = L19_1.spawnBonusNumberMarker
  L12_2 = L39_1.markerId
  L13_2 = A0_2
  L14_2 = L9_2
  L15_2 = L10_2
  L16_2 = A1_2
  L17_2 = A1_2
  L18_2 = L3_2
  L19_2 = L3_2
  L20_2 = 100000
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L11_2 = L19_1.againstBot
  if not L11_2 then
    L11_2 = L39_1.IsHost
    if L11_2 then
      L11_2 = L22_1.Send
      L12_2 = json
      L12_2 = L12_2.encode
      L13_2 = {}
      L13_2.action = "SpawnBonusMarker"
      L14_2 = L39_1.markerId
      L13_2.markerId = L14_2
      L13_2.forPlayer = A0_2
      L13_2.markerX = L9_2
      L13_2.markerY = L10_2
      L13_2.score = A1_2
      L13_2.size = L3_2
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L12_2(L13_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    end
  end
end
GenerateBonusMarkerForPlayer = L56_1
function L56_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L19_1.bonusNumberMarkers
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = L19_1.collectBonusNumberMarker
  L3_2 = L1_2.id
  L2_2(L3_2)
  L2_2 = L1_2.forPlayer
  L3_2 = L39_1.LocalScores
  L4_2 = L39_1.LocalScores
  L4_2 = L4_2[L2_2]
  L5_2 = L1_2.number
  L4_2 = L4_2 + L5_2
  L3_2[L2_2] = L4_2
  L3_2 = L39_1.bonusMarkerStartingValues
  L3_2 = L3_2[L2_2]
  if L3_2 < 5 then
    L3_2 = L39_1.bonusMarkerProgresses
    L4_2 = L39_1.bonusMarkerProgresses
    L4_2 = L4_2[L2_2]
    L4_2 = L4_2 + 1
    L3_2[L2_2] = L4_2
    L3_2 = L39_1.bonusMarkerProgresses
    L3_2 = L3_2[L2_2]
    if L3_2 >= 3 then
      L3_2 = L39_1.bonusMarkerProgresses
      L3_2[L2_2] = 0
      L3_2 = L39_1.bonusMarkerStartingValues
      L4_2 = L39_1.bonusMarkerStartingValues
      L4_2 = L4_2[L2_2]
      L4_2 = L4_2 + 1
      L3_2[L2_2] = L4_2
    end
  end
  L3_2 = L19_1.againstBot
  if not L3_2 then
    L3_2 = L22_1.Send
    L4_2 = json
    L4_2 = L4_2.encode
    L5_2 = {}
    L5_2.action = "bCollected"
    L5_2.markerId = A0_2
    L5_2.forPlayer = L2_2
    L6_2 = L39_1.LocalScores
    L6_2 = L6_2[1]
    L5_2.s1 = L6_2
    L6_2 = L39_1.LocalScores
    L6_2 = L6_2[2]
    L5_2.s2 = L6_2
    L6_2 = L39_1.LocalScores
    L6_2 = L6_2[L2_2]
    L5_2.score = L6_2
    L6_2 = L39_1.bonusMarkerStartingValues
    L6_2 = L6_2[L2_2]
    L5_2.markerScore = L6_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = SendToJavascript
  L4_2 = "ScoreChanged"
  L5_2 = L2_2
  L6_2 = L39_1.LocalScores
  L6_2 = L6_2[L2_2]
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L19_1.againstBot
  if not L3_2 then
    L3_2 = L39_1.IsHost
    if not L3_2 then
      goto lbl_84
    end
  end
  L3_2 = L44_1
  L3_2()
  L3_2 = L39_1.bonusMarkerStartingValues
  L3_2 = L3_2[L2_2]
  L4_2 = GenerateBonusMarkerForPlayer
  L5_2 = L1_2.forPlayer
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  ::lbl_84::
end
BonusMarkerCollected = L56_1
function L56_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L39_1.IsHost
  if L2_2 then
    L2_2 = L22_1.Send
    L3_2 = json
    L3_2 = L3_2.encode
    L4_2 = {}
    L4_2.action = "PrepareNewPVPRound"
    L4_2.newSide = A0_2
    L4_2.roundId = A1_2
    L3_2, L4_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2)
  end
  L39_1.speedUpMultiplier = nil
  L39_1.LastBallPos = nil
  L39_1.OpponentHitTime = 0
  L39_1.LocalHitTime = 0
  L39_1.PVPLocalBounceTime = 0
  L39_1.RoundID = A1_2
  L39_1.ExpectHitFrom = A0_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = StartCountdown
    L1_3 = 3
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 900
    L0_3(L1_3)
    L0_3 = L19_1
    if not L0_3 then
      return
    end
    L0_3 = L39_1.game
    L0_3 = L0_3.matchSettings
    L0_3 = L0_3.gamemode
    if 5 == L0_3 then
      L0_3 = {}
      L1_3 = 0
      L2_3 = 0
      L0_3[1] = L1_3
      L0_3[2] = L2_3
      L39_1.bonusMarkerProgresses = L0_3
      L0_3 = {}
      L1_3 = 1
      L2_3 = 1
      L0_3[1] = L1_3
      L0_3[2] = L2_3
      L39_1.bonusMarkerStartingValues = L0_3
      L0_3 = L39_1.IsHost
      if L0_3 then
        L0_3 = L39_1.bonusMarkerStartingValues
        L0_3 = L0_3[1]
        L1_3 = L39_1.bonusMarkerStartingValues
        L1_3 = L1_3[2]
        L2_3 = GenerateBonusMarkerForPlayer
        L3_3 = 1
        L4_3 = L0_3
        L2_3(L3_3, L4_3)
        L2_3 = GenerateBonusMarkerForPlayer
        L3_3 = 2
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
      end
    end
    L39_1.SafeArea = true
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L39_1.roundStartedTime = L0_3
    L0_3 = L19_1.ignoreFail
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = L19_1.ballData
    L1_3 = vector3
    L2_3 = 0.0
    L3_3 = A0_2
    if 1 == L3_3 then
      L3_3 = -1.2
      if L3_3 then
        goto lbl_60
      end
    end
    L3_3 = 1.2
    ::lbl_60::
    L4_3 = 1.0
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L0_3.offset = L1_3
    L0_3 = L19_1.ballData
    L1_3 = vector3
    L2_3 = 0
    L3_3 = 0
    L4_3 = 3
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L0_3.velocity = L1_3
    L0_3 = L19_1.ballData
    L1_3 = A0_2
    L0_3.isServing = L1_3
    L19_1.ballFallingDown = false
    L0_3 = L19_1.isRecording
    if L0_3 then
      L0_3 = table
      L0_3 = L0_3.insert
      L1_3 = L19_1.snaps
      L2_3 = {}
      L3_3 = GetGameTimer
      L3_3 = L3_3()
      L4_3 = L19_1.recordStartTime
      L3_3 = L3_3 - L4_3
      L2_3.time = L3_3
      L2_3.type = "newRound"
      L3_3 = L19_1.ballData
      L3_3 = L3_3.offset
      L2_3.nO = L3_3
      L3_3 = L19_1.ballData
      L3_3 = L3_3.velocity
      L2_3.nV = L3_3
      L0_3(L1_3, L2_3)
    end
    L0_3 = L39_1.IsHost
    if L0_3 then
      L0_3 = L39_1.game
      L0_3 = L0_3.matchSettings
      L0_3 = L0_3.gamemode
      if 4 == L0_3 then
        L0_3 = L39_1.BilliardOrder
        if not L0_3 then
          L0_3 = L54_1
          L0_3()
        end
        L0_3 = L55_1
        L0_3()
      end
    end
    L39_1.PlayerMovementYActive = true
    L39_1.PlayerMovementXActive = true
    L39_1.ballMovementActive = true
    L0_3 = A0_2
    L39_1.LastServePlayer = L0_3
    L39_1.PVPIgnoreInput = false
  end
  L4_2 = "PrepareNewPVPRound"
  L2_2(L3_2, L4_2)
end
PrepareNewPVPRound = L56_1
function L56_1()
  local L0_2, L1_2, L2_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L19_1
    if not L0_3 then
      return
    end
    L0_3 = ShowNotifyBar
    L1_3 = ""
    L0_3(L1_3)
    L0_3 = StartCountdown
    L1_3 = 3
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 900
    L0_3(L1_3)
    L0_3 = L19_1
    if not L0_3 then
      return
    end
    L0_3 = L39_1.game
    L0_3 = L0_3.matchSettings
    L0_3 = L0_3.gamemode
    if 5 == L0_3 then
      L0_3 = {}
      L1_3 = 0
      L2_3 = 0
      L0_3[1] = L1_3
      L0_3[2] = L2_3
      L39_1.bonusMarkerProgresses = L0_3
      L0_3 = {}
      L1_3 = 1
      L2_3 = 1
      L0_3[1] = L1_3
      L0_3[2] = L2_3
      L39_1.bonusMarkerStartingValues = L0_3
      L0_3 = L39_1.bonusMarkerStartingValues
      L0_3 = L0_3[1]
      L1_3 = L39_1.bonusMarkerStartingValues
      L1_3 = L1_3[2]
      L2_3 = GenerateBonusMarkerForPlayer
      L3_3 = 1
      L4_3 = L0_3
      L2_3(L3_3, L4_3)
      L2_3 = GenerateBonusMarkerForPlayer
      L3_3 = 2
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    end
    L39_1.speedUpMultiplier = nil
    L39_1.SafeArea = true
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L39_1.roundStartedTime = L0_3
    L39_1.PVPIgnoreInput = false
    L39_1.PVPLastFinishedRoundID = -1
    L0_3 = L39_1.LastServePlayer
    if 1 == L0_3 then
      L0_3 = 2
      if L0_3 then
        goto lbl_61
      end
    end
    L0_3 = 1
    ::lbl_61::
    L1_3 = L19_1.ignoreFail
    L2_3 = 0
    L1_3(L2_3)
    L19_1.lastBounceOffTableSide = L0_3
    L1_3 = L19_1.ballData
    L2_3 = vector3
    L3_3 = 0.0
    if 1 == L0_3 then
      L4_3 = -1.2
      if L4_3 then
        goto lbl_74
      end
    end
    L4_3 = 1.2
    ::lbl_74::
    L5_3 = 1.0
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L1_3.offset = L2_3
    L1_3 = L19_1.ballData
    L2_3 = vector3
    L3_3 = 0
    L4_3 = 0
    L5_3 = 3
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L1_3.velocity = L2_3
    L1_3 = L19_1.ballData
    L1_3.isServing = L0_3
    L19_1.ballFallingDown = false
    L39_1.ExpectHitFrom = L0_3
    L1_3 = L39_1.game
    L1_3 = L1_3.matchSettings
    L1_3 = L1_3.gamemode
    if 4 == L1_3 then
      L1_3 = L39_1.BilliardOrder
      if not L1_3 then
        L1_3 = L54_1
        L1_3()
      end
      L1_3 = L55_1
      L1_3()
    end
    L1_3 = table
    L1_3 = L1_3.insert
    L2_3 = L19_1.snaps
    L3_3 = {}
    L4_3 = GetGameTimer
    L4_3 = L4_3()
    L5_3 = L19_1.recordStartTime
    L4_3 = L4_3 - L5_3
    L3_3.time = L4_3
    L3_3.type = "newRound"
    L4_3 = L19_1.ballData
    L4_3 = L4_3.offset
    L3_3.nO = L4_3
    L4_3 = L19_1.ballData
    L4_3 = L4_3.velocity
    L3_3.nV = L4_3
    L1_3(L2_3, L3_3)
    L1_3 = L19_1.botSide
    if L0_3 == L1_3 then
      L1_3 = CreateThread
      function L2_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
        L0_4 = Wait
        L1_4 = RandomNumber
        L2_4 = 1000
        L3_4 = 2000
        L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4 = L1_4(L2_4, L3_4)
        L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
        L0_4 = L19_1
        if not L0_4 then
          return
        end
        L0_4 = GetRandomItem
        L1_4 = MiddleAnimations
        L0_4 = L0_4(L1_4)
        L1_4 = L19_1.playAnimationOnPed
        L2_4 = L19_1.botPed
        L3_4 = L19_1.botSide
        L4_4 = L0_4
        L1_4(L2_4, L3_4, L4_4)
        L1_4 = table
        L1_4 = L1_4.insert
        L2_4 = L19_1.snaps
        L3_4 = {}
        L4_4 = GetGameTimer
        L4_4 = L4_4()
        L5_4 = L19_1.recordStartTime
        L4_4 = L4_4 - L5_4
        L3_4.time = L4_4
        L3_4.type = "pedShoot"
        L4_4 = L19_1.botSide
        L3_4.side = L4_4
        L3_4.anim = L0_4
        L1_4(L2_4, L3_4)
        L1_4 = Wait
        L2_4 = 500
        L1_4(L2_4)
        L1_4 = L19_1
        if not L1_4 then
          return
        end
        L1_4 = L19_1.botSide
        L39_1.LastHitSide = L1_4
        L1_4 = HandleAIBounce
        L2_4 = L19_1
        L1_4(L2_4)
        L1_4 = L19_1.botSide
        if 1 == L1_4 then
          L1_4 = 2
          if L1_4 then
            goto lbl_54
          end
        end
        L1_4 = 1
        ::lbl_54::
        L39_1.ExpectHitFrom = L1_4
        L1_4 = PlaySound
        L2_4 = "sounds\\"
        L3_4 = L19_1.ballData
        L3_4 = L3_4.soundFolder
        L4_4 = "\\Hit.mp3"
        L2_4 = L2_4 .. L3_4 .. L4_4
        L3_4 = L19_1.ballData
        L3_4 = L3_4.worldCoords
        L1_4(L2_4, L3_4)
        L1_4 = L19_1.refreshBallMarker
        L1_4()
        L1_4 = table
        L1_4 = L1_4.insert
        L2_4 = L19_1.snaps
        L3_4 = {}
        L4_4 = GetGameTimer
        L4_4 = L4_4()
        L5_4 = L19_1.recordStartTime
        L4_4 = L4_4 - L5_4
        L3_4.time = L4_4
        L3_4.type = "ball"
        L4_4 = L19_1.ballData
        L4_4 = L4_4.velocity
        L3_4.nV = L4_4
        L4_4 = L19_1.ballData
        L4_4 = L4_4.offset
        L3_4.nO = L4_4
        L4_4 = L19_1.simulateSpeed
        L3_4.speed = L4_4
        L3_4.slowDown = 0
        L1_4(L2_4, L3_4)
        L1_4 = CalculateDurationToReachEnd
        L2_4 = L19_1.ballData
        L3_4 = L19_1.simulateSpeed
        if not L3_4 then
          L3_4 = 1.0
        end
        L1_4 = L1_4(L2_4, L3_4)
        L1_4 = L1_4 * 620.0
        L2_4 = Wait
        L3_4 = L1_4
        L2_4(L3_4)
        L2_4 = L19_1
        if not L2_4 then
          return
        end
        L2_4 = nil
        L3_4 = math
        L3_4 = L3_4.abs
        L4_4 = L19_1.ballData
        L4_4 = L4_4.offset
        L4_4 = L4_4.x
        L3_4 = L3_4(L4_4)
        L4_4 = 0.1
        if L3_4 < L4_4 then
          L3_4 = GetRandomItem
          L4_4 = MiddleAnimations
          L3_4 = L3_4(L4_4)
          L2_4 = L3_4
        else
          L3_4 = L19_1.ballData
          L3_4 = L3_4.offset
          L3_4 = L3_4.x
          if L3_4 < 0.0 then
            L3_4 = GetRandomItem
            L4_4 = RightAnimations
            L3_4 = L3_4(L4_4)
            L2_4 = L3_4
          else
            L3_4 = GetRandomItem
            L4_4 = LeftAnimations
            L3_4 = L3_4(L4_4)
            L2_4 = L3_4
          end
        end
        L3_4 = table
        L3_4 = L3_4.insert
        L4_4 = L19_1.snaps
        L5_4 = {}
        L6_4 = GetGameTimer
        L6_4 = L6_4()
        L7_4 = L19_1.recordStartTime
        L6_4 = L6_4 - L7_4
        L5_4.time = L6_4
        L5_4.type = "pedShoot"
        L6_4 = L19_1.botSide
        if 1 == L6_4 then
          L6_4 = 2
          if L6_4 then
            goto lbl_152
          end
        end
        L6_4 = 1
        ::lbl_152::
        L5_4.side = L6_4
        L5_4.anim = L2_4
        L3_4(L4_4, L5_4)
      end
      L3_3 = "PrepareNewLocalRound2"
      L1_3(L2_3, L3_3)
    end
    L39_1.PlayerMovementYActive = true
    L39_1.PlayerMovementXActive = true
    L39_1.ballMovementActive = true
    L39_1.LastServePlayer = L0_3
  end
  L2_2 = "PrepareNewLocalRound"
  L0_2(L1_2, L2_2)
end
PrepareNewLocalRound = L56_1
function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = HasScaleformMovieLoaded
  L1_2 = L15_1
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = L15_1
    if L0_2 then
      L0_2 = L19_1
      if L0_2 then
        L0_2 = PushScaleformMovieFunction
        L1_2 = L15_1
        L2_2 = "CLEAR_ALL"
        L0_2(L1_2, L2_2)
        L0_2 = PopScaleformMovieFunctionVoid
        L0_2()
        L0_2 = PushScaleformMovieFunction
        L1_2 = L15_1
        L2_2 = "SET_CLEAR_SPACE"
        L0_2(L1_2, L2_2)
        L0_2 = PushScaleformMovieFunctionParameterInt
        L1_2 = 200
        L0_2(L1_2)
        L0_2 = PopScaleformMovieFunctionVoid
        L0_2()
        L0_2 = PROMPT_ACTIVE
        if L0_2 then
          L0_2 = PushInstructionalButton
          L1_2 = L15_1
          L2_2 = 0
          L3_2 = 191
          L4_2 = _U
          L5_2 = "Yes"
          L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
          L0_2 = PushInstructionalButton
          L1_2 = L15_1
          L2_2 = 1
          L3_2 = 177
          L4_2 = _U
          L5_2 = "No"
          L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
        else
          L0_2 = PushInstructionalButton
          L1_2 = L15_1
          L2_2 = 0
          L3_2 = Config
          L3_2 = L3_2.Keys
          L3_2 = L3_2.LeaveKey
          L4_2 = _U
          L5_2 = "Leave"
          L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
          L0_2 = PushInstructionalButton
          L1_2 = L15_1
          L2_2 = 1
          L3_2 = Config
          L3_2 = L3_2.Keys
          L3_2 = L3_2.MouseLock
          L4_2 = L5_1.lockMouse
          if L4_2 then
            L4_2 = _U
            L5_2 = "MouseUnlock"
            L4_2 = L4_2(L5_2)
            if L4_2 then
              goto lbl_74
            end
          end
          L4_2 = _U
          L5_2 = "MouseLock"
          L4_2 = L4_2(L5_2)
          ::lbl_74::
          L0_2(L1_2, L2_2, L3_2, L4_2)
          L0_2 = PushInstructionalButton
          L1_2 = L15_1
          L2_2 = 2
          L3_2 = Config
          L3_2 = L3_2.Keys
          L3_2 = L3_2.CameraTilt
          L4_2 = _U
          L5_2 = "CameraTilt"
          L4_2 = L4_2(L5_2)
          L5_2 = " ("
          L6_2 = _U
          L7_2 = "CameraTiltNames"
          L6_2 = L6_2(L7_2)
          L7_2 = L5_1.cameraTilt
          L6_2 = L6_2[L7_2]
          L7_2 = ")"
          L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
          L0_2(L1_2, L2_2, L3_2, L4_2)
        end
        L0_2 = PushScaleformMovieFunction
        L1_2 = L15_1
        L2_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
        L0_2(L1_2, L2_2)
        L0_2 = PopScaleformMovieFunctionVoid
        L0_2()
        L0_2 = PushScaleformMovieFunction
        L1_2 = L15_1
        L2_2 = "SET_BACKGROUND_COLOUR"
        L0_2(L1_2, L2_2)
        L0_2 = PushScaleformMovieFunctionParameterInt
        L1_2 = 0
        L0_2(L1_2)
        L0_2 = PushScaleformMovieFunctionParameterInt
        L1_2 = 0
        L0_2(L1_2)
        L0_2 = PushScaleformMovieFunctionParameterInt
        L1_2 = 0
        L0_2(L1_2)
        L0_2 = PushScaleformMovieFunctionParameterInt
        L1_2 = 80
        L0_2(L1_2)
        L0_2 = PopScaleformMovieFunctionVoid
        L0_2()
        L0_2 = DrawScaleformMovieFullscreen
        L1_2 = L15_1
        L2_2 = 255
        L3_2 = 255
        L4_2 = 255
        L5_2 = 255
        L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
      end
    end
  end
end
function L57_1()
  local L0_2, L1_2, L2_2
  L0_2 = L28_1
  L1_2 = L39_1.game
  L1_2 = L1_2.key
  if L0_2 == L1_2 then
    return
  end
  L0_2 = L39_1.game
  L0_2 = L0_2.key
  L28_1 = L0_2
  L0_2 = L19_1.againstBot
  if L0_2 then
    L0_2 = PrepareNewLocalRound
    L0_2()
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = RequestScaleformMovie
    L2_3 = "instructional_buttons"
    L1_3 = L1_3(L2_3)
    L15_1 = L1_3
    while true do
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L2_3 = L0_3 + 2000
      if not (L1_3 < L2_3) then
        break
      end
      L1_3 = HasScaleformMovieLoaded
      L2_3 = L15_1
      L1_3 = L1_3(L2_3)
      if L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    L1_3 = L19_1.coords
    L2_3 = false
    L3_3 = GetGameTimer
    L3_3 = L3_3()
    L3_3 = L3_3 - 2000
    L39_1.PVPLastPingTime = L3_3
    L3_3 = L19_1
    L4_3 = GameStarted
    L5_3 = L1_3
    L4_3(L5_3)
    while true do
      L4_3 = L19_1
      if not L4_3 then
        break
      end
      L4_3 = L19_1.againstBot
      if L4_3 then
        L4_3 = L19_1.setPedInvisible
        L5_3 = PlayerPedId
        L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L5_3()
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      else
        L4_3 = GetGameTimer
        L4_3 = L4_3()
        L5_3 = L39_1.PVPLastPingTime
        L4_3 = L4_3 - L5_3
        L5_3 = 3000
        if L4_3 > L5_3 then
          L4_3 = L22_1
          if L4_3 then
            L4_3 = L26_1
            if L4_3 then
              L4_3 = GetGameTimer
              L4_3 = L4_3()
              L39_1.PVPLastPingTime = L4_3
              L4_3 = L22_1.Send
              L5_3 = json
              L5_3 = L5_3.encode
              L6_3 = {}
              L6_3.action = "ping"
              L5_3 = L5_3(L6_3)
              L4_3(L5_3)
            end
          end
        end
        L4_3 = pairs
        L5_3 = L19_1.playerDatas
        L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
        for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
          L10_3 = L9_3.originalPed
          if L10_3 then
            L10_3 = L19_1.setPedInvisible
            L11_3 = L9_3.originalPed
            L10_3(L11_3)
            if not L2_3 then
              L10_3 = IsEntityVisible
              L11_3 = L9_3.originalPed
              L10_3 = L10_3(L11_3)
              if L10_3 then
                L10_3 = GetEntityAlpha
                L11_3 = L9_3.originalPed
                L10_3 = L10_3(L11_3)
                if 0 ~= L10_3 then
                  goto lbl_103
                end
              end
              L2_3 = true
              L10_3 = SetEntityAlpha
              L11_3 = L19_1.botPed
              L12_3 = 255
              L10_3(L11_3, L12_3)
              L10_3 = L19_1.attachRacketToPed
              L11_3 = L19_1.botPed
              L12_3 = L19_1.playerDatas
              L13_3 = L19_1.botSide
              L12_3 = L12_3[L13_3]
              L12_3 = L12_3.racketSkin
              L10_3(L11_3, L12_3)
            end
          end
          ::lbl_103::
        end
      end
      L4_3 = HideHudAndRadarThisFrame
      L4_3()
      L4_3 = RestrictControls
      L4_3()
      L4_3 = GetGameTimer
      L4_3 = L4_3()
      L4_3 = L4_3 - L0_3
      L5_3 = L19_1.movementTick
      L6_3 = L4_3
      L5_3(L6_3)
      L5_3 = L19_1.recordingTick
      L5_3()
      L5_3 = L56_1
      L5_3()
      L5_3 = GetGameTimer
      L5_3 = L5_3()
      L0_3 = L5_3
      L5_3 = Wait
      L6_3 = 0
      L5_3(L6_3)
    end
    L4_3 = GameEnded
    L5_3 = L1_3
    L4_3(L5_3)
    L4_3 = L3_3.destroy
    L4_3()
  end
  L2_2 = "StartPlayingThread"
  L0_2(L1_2, L2_2)
end
function L58_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = ShowNotifyBar
  L1_2 = ""
  L0_2(L1_2)
  L0_2 = L12_1
  if not L0_2 then
    L0_2 = CreateMenu
    L1_2 = "identifier2"
    L0_2 = L0_2(L1_2)
    L12_1 = L0_2
    L0_2 = L12_1.SetMenuTitle
    L1_2 = _U
    L2_2 = "GameplayOptions"
    L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L0_2 = L11_1.SetMenuColor
    L1_2 = 113
    L2_2 = 157
    L3_2 = 122
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = L12_1.SetProperties
    L1_2 = {}
    L1_2.float = "left"
    L1_2.position = "top"
    L0_2(L1_2)
    L0_2 = L12_1.AddList
    L1_2 = _U
    L2_2 = "CameraTilt"
    L1_2 = L1_2(L2_2)
    L2_2 = _U
    L3_2 = "CameraTiltDesc"
    L2_2 = L2_2(L3_2)
    L3_2 = nil
    L4_2 = _U
    L5_2 = "CameraTiltNames"
    L4_2, L5_2 = L4_2(L5_2)
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L12_1.tiltItem = L0_2
    L0_2 = L12_1.AddCheck
    L1_2 = _U
    L2_2 = "MouseLock"
    L1_2 = L1_2(L2_2)
    L2_2 = _U
    L3_2 = "MouseLockDesc"
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L12_1.mouseLockItem = L0_2
    L0_2 = L12_1.mouseLockItem
    L1_2 = L5_1.lockMouse
    L0_2.checked = L1_2
    L0_2 = L12_1.AddList
    L1_2 = _U
    L2_2 = "RacketSkin"
    L1_2 = L1_2(L2_2)
    L2_2 = _U
    L3_2 = "RacketSkinDesc"
    L2_2 = L2_2(L3_2)
    L3_2 = nil
    L4_2 = _U
    L5_2 = "RacketSkinNames"
    L4_2, L5_2 = L4_2(L5_2)
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L12_1.racketSkinItem = L0_2
    L0_2 = L12_1.AddList
    L1_2 = _U
    L2_2 = "VerticalTracking"
    L1_2 = L1_2(L2_2)
    L2_2 = _U
    L3_2 = "VerticalTrackingDesc"
    L2_2 = L2_2(L3_2)
    L3_2 = nil
    L4_2 = _U
    L5_2 = "VerticalTrackingOptions"
    L4_2, L5_2 = L4_2(L5_2)
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L12_1.verticalTrackingItem = L0_2
    L0_2 = L12_1.OnUpdateLabelEvent
    function L1_2(A0_3, A1_3, A2_3, A3_3)
      local L4_3
      L4_3 = L12_1.tiltItem
      L4_3 = L4_3.index
      if A0_3 == L4_3 then
        L5_1.cameraTilt = A1_3
        L4_3 = L48_1
        L4_3()
      else
        L4_3 = L12_1.racketSkinItem
        L4_3 = L4_3.index
        if A0_3 == L4_3 then
          L4_3 = A1_3 - 1
          L5_1.racketSkin = L4_3
          L4_3 = L48_1
          L4_3()
        else
          L4_3 = L12_1.verticalTrackingItem
          L4_3 = L4_3.index
          if A0_3 == L4_3 then
            L4_3 = L12_1.verticalTrackingItem
            L4_3 = L4_3.listIndex
            L5_1.verticalTracking = L4_3
            L4_3 = L48_1
            L4_3()
          end
        end
      end
    end
    L0_2(L1_2)
    L0_2 = L12_1.OnCloseEvent
    function L1_2()
      local L0_3, L1_3
      L0_3 = L19_1
      if L0_3 then
        L0_3 = L24_1
        if L0_3 then
          L0_3 = ShowTennisMenu
          L0_3()
        end
      end
    end
    L0_2(L1_2)
    L0_2 = L12_1.OnSelectEvent
    function L1_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = L12_1.mouseLockItem
      L2_3 = L2_3.index
      if A0_3 == L2_3 then
        L2_3 = L5_1.lockMouse
        L2_3 = not L2_3
        L5_1.lockMouse = L2_3
        L2_3 = L48_1
        L2_3()
        L2_3 = L12_1.mouseLockItem
        L2_3 = L2_3.ToggleCheck
        L3_3 = L5_1.lockMouse
        L2_3(L3_3)
      end
    end
    L0_2(L1_2)
  end
  L0_2 = L12_1.verticalTrackingItem
  L1_2 = L5_1.verticalTracking
  L0_2.listIndex = L1_2
  L0_2 = L12_1.tiltItem
  L1_2 = L5_1.cameraTilt
  L0_2.listIndex = L1_2
  L0_2 = L12_1.racketSkinItem
  L1_2 = L5_1.racketSkin
  L1_2 = L1_2 + 1
  L0_2.listIndex = L1_2
  L0_2 = SetMenusClosed
  L0_2()
  L0_2 = L12_1.Open
  L0_2()
end
function L59_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = ShowNotifyBar
  L3_2 = ""
  L2_2(L3_2)
  L2_2 = L13_1
  if not L2_2 then
    L2_2 = CreateMenu
    L3_2 = "identifier3"
    L2_2 = L2_2(L3_2)
    L13_1 = L2_2
    L2_2 = L13_1.SetMenuTitle
    L3_2 = _U
    L4_2 = "Leaderboards"
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L2_2 = L13_1.SetMenuColor
    L3_2 = 113
    L4_2 = 157
    L5_2 = 122
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = L13_1.SetProperties
    L3_2 = {}
    L3_2.float = "left"
    L3_2.position = "top"
    L2_2(L3_2)
  end
  L2_2 = {}
  L13_1.items = L2_2
  L2_2 = #A0_2
  if L2_2 > 0 then
    L2_2 = 1
    L3_2 = #A0_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2[L5_2]
      L7_2 = L13_1.AddLeaderboardRow
      L8_2 = L6_2.name
      L9_2 = L6_2.wins
      L10_2 = "/"
      L11_2 = L6_2.losses
      L9_2 = L9_2 .. L10_2 .. L11_2
      L10_2 = L6_2.mug
      L11_2 = ""
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  else
    L2_2 = L13_1.AddItem
    L3_2 = _U
    L4_2 = "LeaderboardsEmpty"
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L2_2 = L13_1.AddGroup
  L3_2 = _U
  L4_2 = "MyProgress"
  L3_2 = L3_2(L4_2)
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L13_1.separator = L2_2
  L2_2 = L13_1.AddNearbyPlayerRow
  L3_2 = A1_2.name
  L4_2 = A1_2.wins
  L5_2 = "/"
  L6_2 = A1_2.losses
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = A1_2.mug
  L6_2 = ""
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetMenusClosed
  L2_2()
  L2_2 = L13_1.Open
  L2_2()
end
function L60_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = LoadBallPreset
  L3_2 = A0_2
  L4_2 = A1_2.ball
  L5_2 = A1_2.speed
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2.helper
  A0_2.ballMarkerEnabled = L2_2
  L2_2 = A1_2.netHitBox
  A0_2.netEnabled = L2_2
end
function L61_1(A0_2)
  local L1_2, L2_2
  L1_2 = L11_1.scoreItem
  L1_2 = L1_2.ChangeIndex
  L2_2 = A0_2.finalScore
  L1_2(L2_2)
  L1_2 = L11_1.ballItem
  L1_2 = L1_2.ChangeIndex
  L2_2 = A0_2.ball
  L1_2(L2_2)
  L1_2 = L11_1.speedItem
  L1_2 = L1_2.ChangeIndex
  L2_2 = A0_2.speed
  L1_2(L2_2)
  L1_2 = L11_1.LeaderboardItem
  L1_2 = L1_2.ToggleCheck
  L2_2 = A0_2.useLeaderboard
  L1_2(L2_2)
  L1_2 = L11_1.helperItem
  L1_2 = L1_2.ToggleCheck
  L2_2 = A0_2.helper
  L1_2(L2_2)
  L1_2 = L11_1.netHitBoxItem
  L1_2 = L1_2.ToggleCheck
  L2_2 = A0_2.netHitBox
  L1_2(L2_2)
  L1_2 = L11_1.gamemodeItem
  L1_2 = L1_2.ChangeIndex
  L2_2 = A0_2.gamemode
  L1_2(L2_2)
end
function L62_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = L19_1
  if not L0_2 then
    return
  end
  L0_2 = ShowNotifyBar
  L1_2 = ""
  L0_2(L1_2)
  L0_2 = {}
  L1_2 = 1
  L2_2 = BallPresets
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = BallPresets
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.name
    L0_2[L4_2] = L5_2
  end
  L1_2 = {}
  L2_2 = 1
  L3_2 = _U
  L4_2 = "GameModes"
  L3_2 = L3_2(L4_2)
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = _U
    L9_2 = "GameModes"
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.title
    L6_2(L7_2, L8_2)
  end
  L2_2 = L11_1
  if not L2_2 then
    L2_2 = CreateMenu
    L3_2 = "identifier"
    L2_2 = L2_2(L3_2)
    L11_1 = L2_2
    L2_2 = L11_1.SetProperties
    L3_2 = {}
    L3_2.float = "left"
    L3_2.position = "top"
    L2_2(L3_2)
    L2_2 = L11_1.AddList
    L3_2 = _U
    L4_2 = "FinalScore"
    L3_2 = L3_2(L4_2)
    L4_2 = _U
    L5_2 = "FinalScoreDesc"
    L4_2 = L4_2(L5_2)
    L5_2 = nil
    L6_2 = {}
    L7_2 = "3"
    L8_2 = "4"
    L9_2 = "5"
    L10_2 = "10"
    L11_2 = "15"
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L6_2[4] = L10_2
    L6_2[5] = L11_2
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L11_1.scoreItem = L2_2
    L2_2 = L11_1.AddList
    L3_2 = _U
    L4_2 = "Ball"
    L3_2 = L3_2(L4_2)
    L4_2 = _U
    L5_2 = "BallDesc"
    L4_2 = L4_2(L5_2)
    L5_2 = nil
    L6_2 = L0_2
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L11_1.ballItem = L2_2
    L2_2 = L11_1.AddList
    L3_2 = _U
    L4_2 = "Speed"
    L3_2 = L3_2(L4_2)
    L4_2 = _U
    L5_2 = "SpeedDesc"
    L4_2 = L4_2(L5_2)
    L5_2 = nil
    L6_2 = _U
    L7_2 = "SpeedOptionNames"
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L11_1.speedItem = L2_2
    L2_2 = L11_1.AddCheck
    L3_2 = _U
    L4_2 = "Leaderboards"
    L3_2 = L3_2(L4_2)
    L4_2 = _U
    L5_2 = "LeaderboardsDesc"
    L4_2 = L4_2(L5_2)
    L5_2 = nil
    L6_2 = nil
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L11_1.LeaderboardItem = L2_2
    L2_2 = L11_1.AddCheck
    L3_2 = _U
    L4_2 = "BallMarker"
    L3_2 = L3_2(L4_2)
    L4_2 = _U
    L5_2 = "BallMarkerDesc"
    L4_2 = L4_2(L5_2)
    L5_2 = nil
    L6_2 = nil
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L11_1.helperItem = L2_2
    L2_2 = L11_1.AddCheck
    L3_2 = _U
    L4_2 = "NetCollision"
    L3_2 = L3_2(L4_2)
    L4_2 = _U
    L5_2 = "NetCollisionDesc"
    L4_2 = L4_2(L5_2)
    L5_2 = nil
    L6_2 = nil
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L11_1.netHitBoxItem = L2_2
    L2_2 = L11_1.AddList
    L3_2 = _U
    L4_2 = "Gamemode"
    L3_2 = L3_2(L4_2)
    L4_2 = _U
    L5_2 = "GamemodeDesc"
    L4_2 = L4_2(L5_2)
    L5_2 = nil
    L6_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L11_1.gamemodeItem = L2_2
    L2_2 = L11_1.AddGroup
    L3_2 = _U
    L4_2 = "BettingSettings"
    L3_2 = L3_2(L4_2)
    L4_2 = nil
    L5_2 = nil
    L6_2 = nil
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L11_1.stakeGroup = L2_2
    L2_2 = L11_1.AddList
    L3_2 = _U
    L4_2 = "Stake"
    L3_2 = L3_2(L4_2)
    L4_2 = _U
    L5_2 = "StakeDesc"
    L4_2 = L4_2(L5_2)
    L5_2 = nil
    L6_2 = {}
    L7_2 = "0 "
    L8_2 = _U
    L9_2 = "Currency"
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2 .. L8_2
    L6_2[1] = L7_2
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L11_1.stakeItem = L2_2
    L2_2 = L11_1.AddItem
    L3_2 = _U
    L4_2 = "GameplaySettings"
    L3_2 = L3_2(L4_2)
    L4_2 = nil
    L5_2 = _U
    L6_2 = "GameplaySettingsDesc"
    L5_2 = L5_2(L6_2)
    L6_2 = nil
    L7_2 = nil
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L11_1.settingsItem = L2_2
    L2_2 = L11_1.AddItem
    L3_2 = _U
    L4_2 = "Ready"
    L3_2 = L3_2(L4_2)
    L4_2 = nil
    L5_2 = _U
    L6_2 = "ReadyDescLocal"
    L5_2 = L5_2(L6_2)
    L6_2 = nil
    L7_2 = nil
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L11_1.readyItem = L2_2
    L2_2 = {}
    L11_1.playerCards = L2_2
    L2_2 = 1
    L3_2 = 2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L11_1.AddNearbyPlayerRow
      L7_2 = "Unnamed"
      L8_2 = "0/0"
      L9_2 = nil
      L10_2 = ""
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L11_1.playerCards
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
    L2_2 = L11_1.OnUpdateLabelEvent
    function L3_2(A0_3, A1_3, A2_3, A3_3)
      local L4_3, L5_3, L6_3
      L4_3 = L11_1.stakeItem
      L4_3 = L4_3.index
      if A0_3 == L4_3 then
        L4_3 = L11_1.stakeConfirmed
        if 1 == L4_3 then
          L11_1.stakeConfirmed = 0
          L4_3 = L11_1.stakeItem
          L4_3 = L4_3.ChangeDescription
          L5_3 = _U
          L6_3 = "StakeDesc"
          L5_3, L6_3 = L5_3(L6_3)
          L4_3(L5_3, L6_3)
        end
        return
      else
        L4_3 = L11_1.gamemodeItem
        L4_3 = L4_3.index
        if A0_3 == L4_3 then
          L4_3 = L11_1.gamemodeItem
          L4_3 = L4_3.ChangeDescription
          L5_3 = _U
          L6_3 = "GameModes"
          L5_3 = L5_3(L6_3)
          L5_3 = L5_3[A1_3]
          L5_3 = L5_3.description
          L4_3(L5_3)
        end
      end
      L4_3 = L47_1
      L4_3()
    end
    L2_2(L3_2)
    L2_2 = L11_1.OnCloseEvent
    function L3_2()
      local L0_3, L1_3
    end
    L2_2(L3_2)
    L2_2 = L11_1.OnSelectEvent
    function L3_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L19_1
      if not L2_3 then
        L2_3 = ResetSession
        L2_3()
        L2_3 = CloseAll
        L3_3 = false
        L2_3(L3_3)
        return
      end
      if A0_3 <= 6 then
        L2_3 = L39_1.IsHost
        if not L2_3 then
          return
        end
      end
      L2_3 = L11_1.LeaderboardItem
      L2_3 = L2_3.index
      if A0_3 == L2_3 then
        L2_3 = L11_1.LeaderboardItem
        L2_3 = L2_3.ToggleCheck
        L3_3 = L11_1.LeaderboardItem
        L3_3 = L3_3.checked
        L3_3 = not L3_3
        L2_3(L3_3)
      else
        L2_3 = L11_1.helperItem
        L2_3 = L2_3.index
        if A0_3 == L2_3 then
          L2_3 = L11_1.helperItem
          L2_3 = L2_3.ToggleCheck
          L3_3 = L11_1.helperItem
          L3_3 = L3_3.checked
          L3_3 = not L3_3
          L2_3(L3_3)
        else
          L2_3 = L11_1.netHitBoxItem
          L2_3 = L2_3.index
          if A0_3 == L2_3 then
            L2_3 = L11_1.netHitBoxItem
            L2_3 = L2_3.ToggleCheck
            L3_3 = L11_1.netHitBoxItem
            L3_3 = L3_3.checked
            L3_3 = not L3_3
            L2_3(L3_3)
          else
            L2_3 = L11_1.stakeItem
            L2_3 = L2_3.index
            if A0_3 == L2_3 then
              L2_3 = L39_1.BetValues
              L3_3 = L11_1.stakeItem
              L3_3 = L3_3.listIndex
              L2_3 = L2_3[L3_3]
              L3_3 = L11_1.stakeConfirmed
              if 0 == L3_3 then
                L11_1.stakeConfirmed = 1
                L3_3 = L11_1.stakeItem
                L3_3 = L3_3.ChangeDescription
                L4_3 = _U
                L5_3 = "ConfirmStake"
                L6_3 = L2_3
                L4_3, L5_3, L6_3 = L4_3(L5_3, L6_3)
                L3_3(L4_3, L5_3, L6_3)
              else
                L3_3 = L11_1.stakeConfirmed
                if 1 == L3_3 then
                  L11_1.stakeConfirmed = 2
                  L3_3 = L11_1.stakeItem
                  L3_3 = L3_3.ChangeDescription
                  L4_3 = _U
                  L5_3 = "StakeSet"
                  L6_3 = L2_3
                  L4_3, L5_3, L6_3 = L4_3(L5_3, L6_3)
                  L3_3(L4_3, L5_3, L6_3)
                  L3_3 = L11_1.stakeItem
                  L3_3 = L3_3.ToggleEnabled
                  L4_3 = false
                  L3_3(L4_3)
                  L3_3 = TriggerServerEvent
                  L4_3 = "TableTennis:ConfirmStake"
                  L5_3 = L2_3
                  L3_3(L4_3, L5_3)
                end
              end
            else
              L2_3 = L11_1.readyItem
              L2_3 = L2_3.index
              if A0_3 == L2_3 then
                L2_3 = L11_1.confirmed
                if not L2_3 then
                  L11_1.confirmed = true
                  L2_3 = nil
                  L3_3 = L39_1.IsHost
                  if L3_3 then
                    L3_3 = {}
                    L4_3 = L11_1.scoreItem
                    L4_3 = L4_3.secondLabel
                    L3_3.finalScore = L4_3
                    L4_3 = L11_1.ballItem
                    L4_3 = L4_3.listIndex
                    L3_3.ball = L4_3
                    L4_3 = L11_1.speedItem
                    L4_3 = L4_3.listIndex
                    L3_3.speed = L4_3
                    L4_3 = L11_1.LeaderboardItem
                    L4_3 = L4_3.checked
                    L3_3.useLeaderboard = L4_3
                    L4_3 = L11_1.helperItem
                    L4_3 = L4_3.checked
                    L3_3.helper = L4_3
                    L4_3 = L11_1.netHitBoxItem
                    L4_3 = L4_3.checked
                    L3_3.netHitBox = L4_3
                    L4_3 = L11_1.gamemodeItem
                    L4_3 = L4_3.listIndex
                    L3_3.gamemode = L4_3
                    L2_3 = L3_3
                    L3_3 = L11_1.scoreItem
                    L3_3 = L3_3.ToggleEnabled
                    L4_3 = false
                    L3_3(L4_3)
                    L3_3 = L11_1.ballItem
                    L3_3 = L3_3.ToggleEnabled
                    L4_3 = false
                    L3_3(L4_3)
                    L3_3 = L11_1.speedItem
                    L3_3 = L3_3.ToggleEnabled
                    L4_3 = false
                    L3_3(L4_3)
                    L3_3 = L11_1.LeaderboardItem
                    L3_3 = L3_3.ToggleEnabled
                    L4_3 = false
                    L3_3(L4_3)
                    L3_3 = L11_1.helperItem
                    L3_3 = L3_3.ToggleEnabled
                    L4_3 = false
                    L3_3(L4_3)
                    L3_3 = L11_1.netHitBoxItem
                    L3_3 = L3_3.ToggleEnabled
                    L4_3 = false
                    L3_3(L4_3)
                    L3_3 = L11_1.settingsItem
                    L3_3 = L3_3.ToggleEnabled
                    L4_3 = false
                    L3_3(L4_3)
                    L3_3 = L11_1.gamemodeItem
                    L3_3 = L3_3.ToggleEnabled
                    L4_3 = false
                    L3_3(L4_3)
                  end
                  L3_3 = L11_1.stakeItem
                  L3_3 = L3_3.ToggleEnabled
                  L4_3 = false
                  L3_3(L4_3)
                  L3_3 = TriggerServerEvent
                  L4_3 = "TableTennis:Ready"
                  L5_3 = L2_3
                  L6_3 = L5_1
                  L3_3(L4_3, L5_3, L6_3)
                  L3_3 = L19_1.againstBot
                  if L3_3 then
                    L3_3 = false
                    L24_1 = L3_3
                    L3_3 = L19_1.enablePlayerCamera
                    L4_3 = L39_1.LocalSide
                    L3_3(L4_3)
                    L3_3 = L60_1
                    L4_3 = L19_1
                    L5_3 = L2_3
                    L3_3(L4_3, L5_3)
                    L3_3 = L19_1.createPlayableObjects
                    L3_3()
                    L3_3 = SendToJavascript
                    L4_3 = "ToggleTennisUI"
                    L5_3 = 1
                    L3_3(L4_3, L5_3)
                    L3_3 = L57_1
                    L3_3()
                    L3_3 = CloseAll
                    L3_3()
                  else
                    L3_3 = L11_1.readyItem
                    L3_3 = L3_3.ChangeLabel
                    L4_3 = _U
                    L5_3 = "WaitingForOpponent"
                    L4_3, L5_3, L6_3 = L4_3(L5_3)
                    L3_3(L4_3, L5_3, L6_3)
                    L3_3 = L11_1.readyItem
                    L3_3 = L3_3.ChangeDescription
                    L4_3 = _U
                    L5_3 = "AllSet"
                    L4_3, L5_3, L6_3 = L4_3(L5_3)
                    L3_3(L4_3, L5_3, L6_3)
                  end
              end
              else
                L2_3 = L11_1.settingsItem
                L2_3 = L2_3.index
                if A0_3 == L2_3 then
                  L2_3 = {}
                  L3_3 = L11_1.scoreItem
                  L3_3 = L3_3.listIndex
                  L2_3.score = L3_3
                  L3_3 = L11_1.ballItem
                  L3_3 = L3_3.listIndex
                  L2_3.ball = L3_3
                  L3_3 = L11_1.speedItem
                  L3_3 = L3_3.listIndex
                  L2_3.speed = L3_3
                  L3_3 = L11_1.LeaderboardItem
                  L3_3 = L3_3.checked
                  L2_3.useLeaderboard = L3_3
                  L3_3 = L11_1.helperItem
                  L3_3 = L3_3.checked
                  L2_3.helper = L3_3
                  L3_3 = L11_1.netHitBoxItem
                  L3_3 = L3_3.checked
                  L2_3.netHitBox = L3_3
                  L3_3 = L11_1.gamemodeItem
                  L3_3 = L3_3.listIndex
                  L2_3.gamemode = L3_3
                  L23_1 = L2_3
                  L2_3 = L58_1
                  L2_3()
                end
              end
            end
          end
        end
      end
      L2_3 = L47_1
      L2_3()
    end
    L2_2(L3_2)
    L2_2 = L11_1.OnOpenEvent
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L0_3 = {}
      L39_1.BetValues = L0_3
      L0_3 = {}
      L1_3 = Config
      L1_3 = L1_3.MinBet
      L2_3 = Config
      L2_3 = L2_3.MaxBet
      L3_3 = Config
      L3_3 = L3_3.BetStep
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = L39_1.MaxBalance
        if L4_3 <= L5_3 then
          L5_3 = table
          L5_3 = L5_3.insert
          L6_3 = L0_3
          L7_3 = L4_3
          L8_3 = " "
          L9_3 = _U
          L10_3 = "Currency"
          L9_3 = L9_3(L10_3)
          L7_3 = L7_3 .. L8_3 .. L9_3
          L5_3(L6_3, L7_3)
          L5_3 = table
          L5_3 = L5_3.insert
          L6_3 = L39_1.BetValues
          L7_3 = L4_3
          L5_3(L6_3, L7_3)
        end
      end
      L1_3 = #L0_3
      if 0 == L1_3 then
        L1_3 = table
        L1_3 = L1_3.insert
        L2_3 = L0_3
        L3_3 = "0 "
        L4_3 = _U
        L5_3 = "Currency"
        L4_3 = L4_3(L5_3)
        L3_3 = L3_3 .. L4_3
        L1_3(L2_3, L3_3)
        L1_3 = table
        L1_3 = L1_3.insert
        L2_3 = L39_1.BetValues
        L3_3 = 0
        L1_3(L2_3, L3_3)
      end
      L1_3 = L11_1.stakeItem
      L1_3 = L1_3.ChangeItems
      L2_3 = L0_3
      L1_3(L2_3)
      L1_3 = L11_1.stakeItem
      L1_3 = L1_3.ChangeDescription
      L2_3 = _U
      L3_3 = "StakeDesc"
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    end
    L2_2(L3_2)
    L2_2 = L11_1.OnChangeItemEvent
    function L3_2()
      local L0_3, L1_3, L2_3
      L0_3 = L11_1.stakeConfirmed
      if 1 == L0_3 then
        L11_1.stakeConfirmed = 0
        L0_3 = L11_1.stakeItem
        L0_3 = L0_3.ChangeDescription
        L1_3 = _U
        L2_3 = "StakeDesc"
        L1_3, L2_3 = L1_3(L2_3)
        L0_3(L1_3, L2_3)
      end
    end
    L2_2(L3_2)
    L2_2 = L14_1
    if L2_2 then
      L2_2 = L61_1
      L3_2 = L14_1
      L2_2(L3_2)
      L2_2 = nil
      L14_1 = L2_2
    end
  end
  L2_2 = L19_1.againstBot
  if L2_2 then
    L2_2 = L11_1.SetMenuTitle
    L3_2 = _U
    L4_2 = "TrainingSettingsCaption"
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L2_2 = L11_1.SetMenuColor
    L3_2 = 157
    L4_2 = 131
    L5_2 = 113
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = L11_1.SetMenuTitle
    L3_2 = _U
    L4_2 = "MatchSettingsCaption"
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L2_2 = L11_1.SetMenuColor
    L3_2 = 113
    L4_2 = 157
    L5_2 = 122
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L19_1.againstBot
  if L2_2 then
    L2_2 = L11_1.stakeGroup
    L2_2.visible = false
    L2_2 = L11_1.stakeItem
    L2_2.visible = false
    L2_2 = L11_1.readyItem
    L3_2 = _U
    L4_2 = "Play"
    L3_2 = L3_2(L4_2)
    L2_2.label = L3_2
    L2_2 = 1
    L3_2 = L11_1.playerCards
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L11_1.playerCards
      L6_2 = L6_2[L5_2]
      L6_2.visible = false
    end
  else
    L2_2 = L11_1.stakeGroup
    L3_2 = Config
    L3_2 = L3_2.EnableBetting
    L2_2.visible = L3_2
    L2_2 = L11_1.stakeItem
    L3_2 = Config
    L3_2 = L3_2.EnableBetting
    L2_2.visible = L3_2
    L2_2 = L11_1.readyItem
    L3_2 = _U
    L4_2 = "Ready"
    L3_2 = L3_2(L4_2)
    L2_2.label = L3_2
    L2_2 = 1
    L3_2 = L39_1.game
    L3_2 = L3_2.players
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L11_1.playerCards
      L6_2 = L6_2[L5_2]
      if L6_2 then
        L6_2 = L11_1.playerCards
        L6_2 = L6_2[L5_2]
        L7_2 = L39_1.game
        L7_2 = L7_2.players
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.name
        L6_2.label = L7_2
        L6_2 = L11_1.playerCards
        L6_2 = L6_2[L5_2]
        L7_2 = L39_1.game
        L7_2 = L7_2.players
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.mugShot
        L6_2.mugShot = L7_2
        L6_2 = L11_1.playerCards
        L6_2 = L6_2[L5_2]
        L7_2 = L39_1.game
        L7_2 = L7_2.players
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.wins
        L8_2 = "/"
        L9_2 = L39_1.game
        L9_2 = L9_2.players
        L9_2 = L9_2[L5_2]
        L9_2 = L9_2.losses
        L7_2 = L7_2 .. L8_2 .. L9_2
        L6_2.secondLabel = L7_2
        L6_2 = L11_1.playerCards
        L6_2 = L6_2[L5_2]
        L6_2.visible = true
      end
    end
  end
  L2_2 = L11_1.readyItem
  L2_2.secondLabel = ""
  L11_1.stakeConfirmed = 0
  L11_1.confirmed = false
  L2_2 = L11_1.stakeItem
  L2_2.enabled = true
  L2_2 = L11_1.readyItem
  L3_2 = L19_1.againstBot
  if L3_2 then
    L3_2 = _U
    L4_2 = "ReadyDescLocal"
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_342
    end
  end
  L3_2 = _U
  L4_2 = "ReadyDescOnline"
  L3_2 = L3_2(L4_2)
  ::lbl_342::
  L2_2.description = L3_2
  L2_2 = L11_1.scoreItem
  L3_2 = L23_1
  if L3_2 then
    L3_2 = L23_1.score
    if L3_2 then
      goto lbl_351
    end
  end
  L3_2 = 1
  ::lbl_351::
  L2_2.listIndex = L3_2
  L2_2 = L11_1.ballItem
  L3_2 = L23_1
  if L3_2 then
    L3_2 = L23_1.ball
    if L3_2 then
      goto lbl_360
    end
  end
  L3_2 = 1
  ::lbl_360::
  L2_2.listIndex = L3_2
  L2_2 = L11_1.speedItem
  L3_2 = L23_1
  if L3_2 then
    L3_2 = L23_1.speed
    if L3_2 then
      goto lbl_369
    end
  end
  L3_2 = 1
  ::lbl_369::
  L2_2.listIndex = L3_2
  L2_2 = L11_1.gamemodeItem
  L3_2 = L23_1
  if L3_2 then
    L3_2 = L23_1.gamemode
    if L3_2 then
      goto lbl_378
    end
  end
  L3_2 = 1
  ::lbl_378::
  L2_2.listIndex = L3_2
  L2_2 = L11_1.LeaderboardItem
  L3_2 = L23_1
  if L3_2 then
    L3_2 = L23_1.useLeaderboard
    if L3_2 then
      goto lbl_387
    end
  end
  L3_2 = false
  ::lbl_387::
  L2_2.checked = L3_2
  L2_2 = L11_1.helperItem
  L3_2 = L23_1
  if L3_2 then
    L3_2 = L23_1.helper
  end
  L2_2.checked = L3_2
  L2_2 = L11_1.netHitBoxItem
  L3_2 = L23_1
  if L3_2 then
    L3_2 = L23_1.netHitBox
  end
  L2_2.checked = L3_2
  L2_2 = L23_1
  if not L2_2 then
    L2_2 = L11_1.LeaderboardItem
    L2_2.checked = true
    L2_2 = L11_1.helperItem
    L2_2.checked = true
    L2_2 = L11_1.netHitBoxItem
    L2_2.checked = true
  end
  L2_2 = L11_1.netHitBoxItem
  L3_2 = L39_1.IsHost
  L2_2.enabled = L3_2
  L2_2 = L11_1.scoreItem
  L3_2 = L39_1.IsHost
  L2_2.enabled = L3_2
  L2_2 = L11_1.ballItem
  L3_2 = L39_1.IsHost
  L2_2.enabled = L3_2
  L2_2 = L11_1.helperItem
  L3_2 = L39_1.IsHost
  L2_2.enabled = L3_2
  L2_2 = L11_1.speedItem
  L3_2 = L39_1.IsHost
  L2_2.enabled = L3_2
  L2_2 = L11_1.gamemodeItem
  L3_2 = L39_1.IsHost
  L2_2.enabled = L3_2
  L2_2 = L19_1.againstBot
  if L2_2 then
    L2_2 = L11_1.LeaderboardItem
    L2_2.checked = false
  end
  L2_2 = L11_1.LeaderboardItem
  L3_2 = L39_1.IsHost
  if L3_2 then
    L3_2 = Config
    L3_2 = L3_2.UseLeaderboard
    if L3_2 then
      L3_2 = L19_1.againstBot
      L3_2 = not L3_2
    end
  end
  L2_2.enabled = L3_2
  L2_2 = L11_1.settingsItem
  L2_2.enabled = true
  L2_2 = nil
  L23_1 = L2_2
  L2_2 = true
  L24_1 = L2_2
  L2_2 = SetMenusClosed
  L2_2()
  L2_2 = L11_1.Open
  L2_2()
end
ShowTennisMenu = L62_1
function L62_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = BallPresets
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2.speeds
  L4_2 = L4_2[A2_2]
  L5_2 = {}
  L6_2 = L3_2.soundFolder
  L5_2.soundFolder = L6_2
  L6_2 = L3_2.trailScale
  L5_2.trailScale = L6_2
  L6_2 = L3_2.trailColor
  L5_2.trailColor = L6_2
  L5_2.ballId = A1_2
  L5_2.ballSpeed = A2_2
  L6_2 = L3_2.markerSize
  L5_2.markerSize = L6_2
  L5_2.isServing = false
  L6_2 = vector3
  L7_2 = 0.0
  L7_2 = -L7_2
  L8_2 = -1.5
  L9_2 = 1.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.offset = L6_2
  L6_2 = vector3
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.worldCoords = L6_2
  L6_2 = vector3
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.velocity = L6_2
  L6_2 = L3_2.ground
  L5_2.ground = L6_2
  L6_2 = L3_2.model
  L5_2.model = L6_2
  L6_2 = L3_2.size
  L5_2.size = L6_2
  L6_2 = L4_2.mass
  L5_2.mass = L6_2
  L6_2 = L4_2.bounciness
  L5_2.bounciness = L6_2
  L6_2 = L4_2.drag
  L5_2.drag = L6_2
  L6_2 = L4_2.friction
  L5_2.friction = L6_2
  L6_2 = L4_2.maxAirVelocity
  L5_2.maxAirVelocity = L6_2
  L6_2 = L4_2.minAirVelocity
  L5_2.minAirVelocity = L6_2
  L6_2 = L4_2.minBounceOffVelocity
  L5_2.minBounceOffVelocity = L6_2
  L6_2 = L4_2.maxVelocity
  L5_2.maxVelocity = L6_2
  L6_2 = L4_2.minVelocity
  L5_2.minVelocity = L6_2
  L6_2 = L3_2.AreaBallMin
  L5_2.AreaBallMin = L6_2
  L6_2 = L3_2.AreaBallMax
  L5_2.AreaBallMax = L6_2
  A0_2.ballData = L5_2
  L5_2 = L4_2.simulateSpeed
  A0_2.simulateSpeed = L5_2
end
LoadBallPreset = L62_1
function L62_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L11_1
  if L0_2 then
    L0_2 = L11_1.Close
    L0_2()
  end
  L0_2 = Stats_Increase
  L1_2 = "rcore_pingpong_games_against_player"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = L39_1.IsHost
  if L0_2 then
    L0_2 = L39_1.LastServePlayer
    if 1 == L0_2 then
      L0_2 = 2
      if L0_2 then
        goto lbl_20
      end
    end
    L0_2 = 1
    ::lbl_20::
    L1_2 = PrepareNewPVPRound
    L2_2 = L0_2
    L3_2 = L39_1.RoundID
    L3_2 = L3_2 + 1
    L1_2(L2_2, L3_2)
  end
end
function L63_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = RemoveAllTargetZones
  L0_2()
  L0_2 = pairs
  L1_2 = L18_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.destroy
    L6_2()
  end
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.Objects
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.entity
    if L6_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2.entity
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = DeleteEntity
        L7_2 = L5_2.entity
        L6_2(L7_2)
        L5_2.entity = nil
      end
    end
  end
end
function L64_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = _U
  L3_2 = "PeerConnectionProblem"
  L2_2 = L2_2(L3_2)
  if A1_2 then
    L3_2 = A1_2.type
    if L3_2 then
      L3_2 = _U
      L4_2 = "PeerJSErrors"
      L3_2 = L3_2(L4_2)
      L4_2 = A1_2.type
      L3_2 = L3_2[L4_2]
      if L3_2 then
        L4_2 = L2_2
        L5_2 = " "
        L6_2 = L3_2
        L4_2 = L4_2 .. L5_2 .. L6_2
        L2_2 = L4_2
      end
    end
  end
  if A0_2 then
    L3_2 = L2_2
    L4_2 = " ("
    L5_2 = A0_2
    L6_2 = ")"
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
    L2_2 = L3_2
  end
  L3_2 = AbortGameRequest
  L3_2()
  L3_2 = L32_1
  L4_2 = 5000
  L3_2(L4_2)
  L3_2 = ShowNotifyBar
  L4_2 = L2_2
  L3_2(L4_2)
end
function L65_1()
  local L0_2, L1_2, L2_2
  L0_2 = L39_1.HostSide
  L1_2 = L39_1.LocalSide
  if L0_2 == L1_2 then
    L0_2 = L22_1.Send
    L1_2 = json
    L1_2 = L1_2.encode
    L2_2 = {}
    L2_2.action = "prepare"
    L1_2, L2_2 = L1_2(L2_2)
    L0_2(L1_2, L2_2)
    L0_2 = L62_1
    L0_2()
  else
    L0_2 = L22_1.Send
    L1_2 = json
    L1_2 = L1_2.encode
    L2_2 = {}
    L2_2.action = "connected"
    L1_2, L2_2 = L1_2(L2_2)
    L0_2(L1_2, L2_2)
  end
end
function L66_1()
  local L0_2, L1_2
  L0_2 = L19_1
  if L0_2 then
    L0_2 = L64_1
    L1_2 = "OpponentPeer_OnClose"
    L0_2(L1_2)
  end
end
function L67_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L19_1
  if L1_2 then
    L1_2 = L64_1
    L2_2 = "OpponentPeer_OnError"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
function L68_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = json
  L1_2 = L1_2.decode
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L1_2.action
  if "prepare" == L2_2 then
    L2_2 = L62_1
    L2_2()
  else
    L2_2 = L1_2.action
    if "PrepareNewPVPRound" == L2_2 then
      L2_2 = PrepareNewPVPRound
      L3_2 = L1_2.newSide
      L4_2 = L1_2.roundId
      L2_2(L3_2, L4_2)
    else
      L2_2 = L1_2.action
      if "connected" == L2_2 then
        L2_2 = L26_1
        if not L2_2 then
          L2_2 = true
          L26_1 = L2_2
          L2_2 = L22_1.Send
          L3_2 = json
          L3_2 = L3_2.encode
          L4_2 = {}
          L4_2.action = "connected"
          L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
          L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
        end
      else
        L2_2 = L1_2.action
        if "bCollect" == L2_2 then
          L2_2 = BonusMarkerCollected
          L3_2 = L1_2.id
          L2_2(L3_2)
        else
          L2_2 = L1_2.action
          if "bCollected" == L2_2 then
            L2_2 = {}
            L3_2 = L1_2.s1
            L4_2 = L1_2.s2
            L2_2[1] = L3_2
            L2_2[2] = L4_2
            L39_1.LocalScores = L2_2
            L2_2 = SendToJavascript
            L3_2 = "ScoreChanged"
            L4_2 = L1_2.forPlayer
            L5_2 = L39_1.LocalScores
            L6_2 = L1_2.forPlayer
            L5_2 = L5_2[L6_2]
            L2_2(L3_2, L4_2, L5_2)
            L2_2 = L19_1.collectBonusNumberMarker
            L3_2 = L1_2.markerId
            L2_2(L3_2)
          else
            L2_2 = L1_2.action
            if "bDowngrade" == L2_2 then
              L2_2 = DowngradeMarkerForPlayer
              L3_2 = L1_2.side
              L2_2(L3_2)
            else
              L2_2 = L1_2.action
              if "bClear" == L2_2 then
                L2_2 = L19_1.clearNumberMarkersForPlayer
                L3_2 = L1_2.side
                L2_2(L3_2)
              else
                L2_2 = L1_2.action
                if "SpawnBonusMarker" == L2_2 then
                  L2_2 = L19_1.spawnBonusNumberMarker
                  L3_2 = L1_2.markerId
                  L4_2 = L1_2.forPlayer
                  L5_2 = L1_2.markerX
                  L6_2 = L1_2.markerY
                  L7_2 = L1_2.score
                  L8_2 = L1_2.score
                  L9_2 = L1_2.size
                  L10_2 = L1_2.size
                  L11_2 = 100000
                  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
                else
                  L2_2 = L1_2.action
                  if "BallSwitch" == L2_2 then
                    L2_2 = L19_1
                    if L2_2 then
                      L2_2 = L1_2.ballValue
                      L39_1.ActualBilliardValue = L2_2
                      L2_2 = L19_1.switchBallModel
                      L3_2 = L1_2.nextBall
                      L2_2(L3_2)
                    end
                  else
                    L2_2 = L1_2.action
                    if "bFell" == L2_2 then
                      L2_2 = L39_1.RoundID
                      L3_2 = L1_2.roundId
                      if L2_2 == L3_2 then
                        L2_2 = L39_1.PVPLastFinishedRoundID
                        L3_2 = L1_2.roundId
                        if L2_2 ~= L3_2 then
                          L2_2 = L39_1.LocalSide
                          if 1 == L2_2 then
                            L2_2 = 2
                            if L2_2 then
                              goto lbl_125
                            end
                          end
                          L2_2 = 1
                          ::lbl_125::
                          L3_2 = L1_2.roundId
                          L39_1.OpponentBallFellOnRound = L3_2
                          L3_2 = L1_2.bounceTime
                          L4_2 = L39_1.OpponentHitTime
                          L5_2 = L39_1.LocalHitTime
                          if L4_2 > L5_2 then
                            L39_1.LastHitSide = L2_2
                          else
                            L4_2 = L39_1.LocalSide
                            L39_1.LastHitSide = L4_2
                          end
                          if 0 ~= L3_2 then
                            L4_2 = L39_1.PVPLocalBounceTime
                            if 0 ~= L4_2 then
                              L4_2 = L39_1.PVPLocalBounceTime
                              if L3_2 > L4_2 then
                                L19_1.lastBounceOffTableSide = L2_2
                              else
                                L4_2 = L39_1.LocalSide
                                L19_1.lastBounceOffTableSide = L4_2
                              end
                            end
                          end
                          L19_1.ballFallingDown = true
                          L4_2 = FinishPVPRound
                          L5_2 = L1_2.roundId
                          L6_2 = 2
                          L7_2 = L39_1.LastHitSide
                          L8_2 = L19_1.lastBounceOffTableSide
                          L9_2 = L1_2.fallSide
                          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
                      end
                    end
                    else
                      L2_2 = L1_2.action
                      if "netHit" == L2_2 then
                        L2_2 = L39_1.RoundID
                        L3_2 = L1_2.roundId
                        if L2_2 == L3_2 then
                          L2_2 = L39_1.PVPLastFinishedRoundID
                          L3_2 = L1_2.roundId
                          if L2_2 ~= L3_2 then
                            L2_2 = L39_1.LocalSide
                            if 1 == L2_2 then
                              L2_2 = 2
                              if L2_2 then
                                goto lbl_175
                              end
                            end
                            L2_2 = 1
                            ::lbl_175::
                            L3_2 = L1_2.roundId
                            L39_1.OpponentBallFellOnRound = L3_2
                            L3_2 = L1_2.bounceTime
                            L4_2 = L39_1.OpponentHitTime
                            L5_2 = L39_1.LocalHitTime
                            if L4_2 > L5_2 then
                              L39_1.LastHitSide = L2_2
                            else
                              L4_2 = L39_1.LocalSide
                              L39_1.LastHitSide = L4_2
                            end
                            if 0 ~= L3_2 then
                              L4_2 = L39_1.PVPLocalBounceTime
                              if 0 ~= L4_2 then
                                L4_2 = L39_1.PVPLocalBounceTime
                                if L3_2 > L4_2 then
                                  L19_1.lastBounceOffTableSide = L2_2
                                else
                                  L4_2 = L39_1.LocalSide
                                  L19_1.lastBounceOffTableSide = L4_2
                                end
                              end
                            end
                            L19_1.ballFallingDown = true
                            L4_2 = FinishPVPRound
                            L5_2 = L1_2.roundId
                            L6_2 = 1
                            L7_2 = L39_1.LastHitSide
                            L8_2 = L19_1.lastBounceOffTableSide
                            L9_2 = L1_2.fallSide
                            L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
                        end
                      end
                      else
                        L2_2 = L1_2.action
                        if "pHit" == L2_2 then
                          L2_2 = L19_1
                          L3_2 = L2_2.ballData
                          L4_2 = vector3
                          L5_2 = L1_2.nO
                          L5_2 = L5_2.x
                          L6_2 = L1_2.nO
                          L6_2 = L6_2.y
                          L7_2 = L1_2.nO
                          L7_2 = L7_2.z
                          L4_2 = L4_2(L5_2, L6_2, L7_2)
                          L3_2.offset = L4_2
                          L3_2 = L2_2.ballData
                          L4_2 = vector3
                          L5_2 = L1_2.nV
                          L5_2 = L5_2.x
                          L6_2 = L1_2.nV
                          L6_2 = L6_2.y
                          L7_2 = L1_2.nV
                          L7_2 = L7_2.z
                          L4_2 = L4_2(L5_2, L6_2, L7_2)
                          L3_2.velocity = L4_2
                          L3_2 = L2_2.ballData
                          L3_2.isServing = false
                          L3_2 = L1_2.hitSide
                          L39_1.LastHitSide = L3_2
                          L3_2 = L1_2.expectHit
                          L39_1.ExpectHitFrom = L3_2
                          L3_2 = L1_2.hitTime
                          L39_1.OpponentHitTime = L3_2
                          L3_2 = L2_2.setSlowDownForTurn
                          L4_2 = 0
                          L3_2(L4_2)
                          L3_2 = L2_2.refreshBallMarker
                          L3_2()
                          L3_2 = L1_2.wasServe
                          if L3_2 then
                            L3_2 = L2_2.playAnimationOnPed
                            L4_2 = L2_2.botPed
                            L5_2 = L2_2.botSide
                            L6_2 = L1_2.serveAnim
                            L3_2(L4_2, L5_2, L6_2)
                          end
                          L3_2 = L39_1.HostSide
                          if L3_2 then
                            L3_2 = L2_2.prepareHostFakeAttack
                            L3_2()
                          end
                          L3_2 = PlaySound
                          L4_2 = "sounds\\"
                          L5_2 = L2_2.ballData
                          L5_2 = L5_2.soundFolder
                          L6_2 = "\\Hit.mp3"
                          L4_2 = L4_2 .. L5_2 .. L6_2
                          L5_2 = vector3
                          L6_2 = L1_2.bC
                          L6_2 = L6_2.x
                          L7_2 = L1_2.bC
                          L7_2 = L7_2.y
                          L8_2 = L1_2.bC
                          L8_2 = L8_2.z
                          L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2)
                          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
                          L3_2 = L2_2.isRecording
                          if L3_2 then
                            L3_2 = table
                            L3_2 = L3_2.insert
                            L4_2 = L2_2.snaps
                            L5_2 = {}
                            L6_2 = GetGameTimer
                            L6_2 = L6_2()
                            L7_2 = L2_2.recordStartTime
                            L6_2 = L6_2 - L7_2
                            L5_2.time = L6_2
                            L5_2.type = "ball"
                            L6_2 = L2_2.ballData
                            L6_2 = L6_2.velocity
                            L5_2.nV = L6_2
                            L6_2 = L2_2.ballData
                            L6_2 = L6_2.offset
                            L5_2.nO = L6_2
                            L6_2 = L2_2.simulateSpeed
                            L5_2.speed = L6_2
                            L5_2.slowDown = 0
                            L3_2(L4_2, L5_2)
                          end
                        else
                          L2_2 = L1_2.action
                          if "finishRound" == L2_2 then
                            L2_2 = L39_1.IsHost
                            if not L2_2 then
                              L2_2 = L39_1.RoundID
                              L3_2 = L1_2.roundId
                              if L2_2 == L3_2 then
                                L2_2 = FinishPVPRound
                                L3_2 = L1_2.roundId
                                L4_2 = L1_2.failType
                                L5_2 = L1_2.lastHitSide
                                L6_2 = L1_2.lastBounceSide
                                L7_2 = L1_2.fallSide
                                L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
                            end
                          end
                          else
                            L2_2 = L1_2.action
                            if "ping" == L2_2 then
                              L2_2 = L22_1.Send
                              L3_2 = json
                              L3_2 = L3_2.encode
                              L4_2 = {}
                              L4_2.action = "pong"
                              L3_2 = L3_2(L4_2)
                              L2_2(L3_2)
                            else
                              L2_2 = L1_2.action
                              if "pong" == L2_2 then
                                L2_2 = GetGameTimer
                                L2_2 = L2_2()
                                L3_2 = L39_1.PVPLastPingTime
                                L2_2 = L2_2 - L3_2
                                L39_1.PVPPing = L2_2
                                L2_2 = SendToJavascript
                                L3_2 = "SetCustomInfo"
                                L4_2 = L39_1.PVPPing
                                L5_2 = " MS"
                                L4_2 = L4_2 .. L5_2
                                L2_2(L3_2, L4_2)
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
function L69_1(A0_2)
  local L1_2, L2_2, L3_2
  L39_1.localPeerID = A0_2
  L1_2 = TriggerServerEvent
  L2_2 = "TableTennis:PeerID"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
function L70_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L39_1.HostSide
  L2_2 = L39_1.LocalSide
  if L1_2 ~= L2_2 then
    return
  end
  L22_1 = A0_2
  L1_2 = PeerJS
  L1_2 = L1_2.AssignConnectionEvents
  L2_2 = A0_2.connId
  L3_2 = L65_1
  L4_2 = L66_1
  L5_2 = L67_1
  L6_2 = L68_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.useFivem
  if L1_2 then
    L1_2 = L65_1
    L1_2()
  end
end
function L71_1()
  local L0_2, L1_2
  L0_2 = L19_1
  if L0_2 then
    L0_2 = L64_1
    L1_2 = "LocalPeer_OnClose"
    L0_2(L1_2)
  end
end
function L72_1()
  local L0_2, L1_2
end
function L73_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L19_1
  if L1_2 then
    L1_2 = L64_1
    L2_2 = "LocalPeer_OnError"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
function L74_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = PeerJS
  L0_2 = L0_2.CreatePeer
  L1_2 = L25_1
  L2_2 = L69_1
  L3_2 = L70_1
  L4_2 = L71_1
  L5_2 = L72_1
  L6_2 = L73_1
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L21_1 = L0_2
end
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:TopPlayers"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:TopPlayers"
function L77_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L59_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:MatchSettings"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:MatchSettings"
function L77_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L43_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L19_1
  if L2_2 == L3_2 then
    L3_2 = L39_1.game
    if not L3_2 then
      L3_2 = {}
      L39_1.game = L3_2
    end
    L3_2 = L39_1.game
    L3_2.matchSettings = A1_2
  end
  L3_2 = A1_2.gamemode
  L2_2.gamemode = L3_2
  L2_2.matchSettingsReceived = true
  L3_2 = L60_1
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:Finished"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:Finished"
function L77_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L4_2 = L43_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L5_2 = L19_1
  if L4_2 == L5_2 then
    L5_2 = L32_1
    L6_2 = 10000
    L5_2(L6_2)
    L5_2 = L39_1.LocalHitsCount
    L6_2 = tonumber
    L7_2 = string
    L7_2 = L7_2.format
    L8_2 = "%.2f"
    L9_2 = L39_1.RacketMeterCounter
    L9_2 = L9_2 * 0.25
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L7_2(L8_2, L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L7_2 = GetGameTimer
    L7_2 = L7_2()
    L8_2 = L39_1.MatchStartedTime
    L7_2 = L7_2 - L8_2
    L8_2 = tonumber
    L9_2 = string
    L9_2 = L9_2.format
    L10_2 = "%.2f"
    L11_2 = L39_1.BallMeterCounter
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2, L11_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L9_2 = ResetSession
    L9_2()
    L9_2 = #A1_2
    if L9_2 > 0 then
      L9_2 = A1_2[1]
      L9_2 = L9_2.score
      L10_2 = A2_2[1]
      if L10_2 then
        L10_2 = A2_2[1]
        L10_2 = L10_2.score
        if L10_2 then
          goto lbl_50
        end
      end
      L10_2 = L9_2
      ::lbl_50::
      L11_2 = false
      L12_2 = pairs
      L13_2 = A1_2
      L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
      for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
        L18_2 = L17_2.playerId
        L19_2 = GetMyServerId
        L19_2 = L19_2()
        if L18_2 == L19_2 then
          L11_2 = true
        end
      end
      if L11_2 then
        L12_2 = Stats_Increase
        L13_2 = "rcore_pingpong_games_won"
        L14_2 = 1
        L12_2(L13_2, L14_2)
      else
        L12_2 = Stats_Increase
        L13_2 = "rcore_pingpong_games_lost"
        L14_2 = 1
        L12_2(L13_2, L14_2)
      end
      L12_2 = Stats_Increase
      L13_2 = "rcore_pingpong_games_played"
      L14_2 = 1
      L12_2(L13_2, L14_2)
      L12_2 = string
      L12_2 = L12_2.format
      L13_2 = "%02d:%02d"
      L14_2 = math
      L14_2 = L14_2.floor
      L15_2 = L7_2 / 60000
      L14_2 = L14_2(L15_2)
      L15_2 = math
      L15_2 = L15_2.floor
      L16_2 = L7_2 % 60000
      L16_2 = L16_2 / 1000
      L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L13_2 = {}
      L14_2 = _U
      L15_2 = "StatsMatchDuration"
      L16_2 = L12_2
      L14_2 = L14_2(L15_2, L16_2)
      L15_2 = _U
      L16_2 = "StatsBallHits"
      L17_2 = L5_2
      L15_2 = L15_2(L16_2, L17_2)
      L16_2 = _U
      L17_2 = "StatsRacketDistance"
      L18_2 = L6_2
      L16_2 = L16_2(L17_2, L18_2)
      L17_2 = _U
      L18_2 = "StatsBallTraveled"
      L19_2 = L8_2
      L17_2, L18_2, L19_2 = L17_2(L18_2, L19_2)
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L13_2[3] = L16_2
      L13_2[4] = L17_2
      L13_2[5] = L18_2
      L13_2[6] = L19_2
      if L11_2 then
        L14_2 = _U
        L15_2 = "StatsWinner"
        L14_2 = L14_2(L15_2)
        if L14_2 then
          goto lbl_124
        end
      end
      L14_2 = _U
      L15_2 = "StatsLoser"
      L14_2 = L14_2(L15_2)
      ::lbl_124::
      if L11_2 then
        L15_2 = L9_2
        L16_2 = ":"
        L17_2 = L10_2
        L15_2 = L15_2 .. L16_2 .. L17_2
        if L15_2 then
          goto lbl_136
        end
      end
      L15_2 = L10_2
      L16_2 = ":"
      L17_2 = L9_2
      L15_2 = L15_2 .. L16_2 .. L17_2
      ::lbl_136::
      if A3_2 then
        L16_2 = _U
        L17_2 = "StatsAborted"
        L16_2 = L16_2(L17_2)
        L14_2 = L16_2
        L16_2 = _U
        L17_2 = "StatsAbortedDesc"
        L16_2 = L16_2(L17_2)
        L15_2 = L16_2
      end
      L16_2 = CreateThread
      function L17_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
        L0_3 = Wait
        L1_3 = 1500
        L0_3(L1_3)
        L0_3 = ShowNotifyBar
        L1_3 = ""
        L0_3(L1_3)
        L0_3 = ShowFullscreenBonusNotify
        L1_3 = _U
        L2_3 = "TableTennis"
        L1_3 = L1_3(L2_3)
        L2_3 = L14_2
        L3_3 = L15_2
        L4_3 = "HUD_COLOUR_PAUSE_BG"
        L5_3 = L13_2
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      end
      L18_2 = "TableTennis:Finished"
      L16_2(L17_2, L18_2)
    end
  end
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:Started"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:Started"
function L77_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = false
  L26_1 = L1_2
  L1_2 = A0_2.useFivem
  L25_1 = L1_2
  L1_2 = false
  L27_1 = L1_2
  L1_2 = L43_1
  L2_2 = A0_2.coords
  L1_2 = L1_2(L2_2)
  L19_1 = L1_2
  L1_2 = L19_1
  if not L1_2 then
    return
  end
  L1_2 = L19_1
  L20_1 = L1_2
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L39_1.MatchStartedTime = L1_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = L19_1
      if not L0_3 then
        break
      end
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      L1_3 = L19_1.coords
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      L1_3 = IsPedDeadOrDying
      L2_3 = PlayerPedId
      L2_3, L3_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3)
      if L0_3 > 3.0 or L1_3 then
        break
      end
      L2_3 = Wait
      L3_3 = 250
      L2_3(L3_3)
    end
    L0_3 = AbortGameRequest
    L0_3()
  end
  L3_2 = "TableTennis:Started"
  L1_2(L2_2, L3_2)
  L19_1.locallyUsed = true
  L1_2 = LoadBallPreset
  L2_2 = L19_1
  L3_2 = A0_2.matchSettings
  L3_2 = L3_2.ball
  L4_2 = A0_2.matchSettings
  L4_2 = L4_2.speed
  L1_2(L2_2, L3_2, L4_2)
  L39_1.game = A0_2
  L1_2 = A0_2.againstBot
  if not L1_2 then
    L1_2 = L25_1
    if L1_2 then
      goto lbl_41
    end
  end
  L1_2 = L19_1.destroyAllRackets
  L1_2()
  ::lbl_41::
  L1_2 = A0_2.againstBot
  if L1_2 then
    L39_1.IsHost = true
    L1_2 = A0_2.hostSide
    L39_1.LocalSide = L1_2
    L1_2 = A0_2.hostSide
    L39_1.HostSide = L1_2
    L1_2 = 1
    L2_2 = 2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = L19_1.playerDatas
      L5_2 = L5_2[L4_2]
      L5_2.originalPed = nil
      L5_2 = A0_2.players
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.playerId
      if -2 ~= L5_2 then
        L5_2 = L19_1.playerDatas
        L5_2 = L5_2[L4_2]
        L6_2 = A0_2.players
        L6_2 = L6_2[L4_2]
        L6_2 = L6_2.playerId
        L5_2.playerId = L6_2
        L5_2 = L19_1.playerDatas
        L5_2 = L5_2[L4_2]
        L6_2 = A0_2.players
        L6_2 = L6_2[L4_2]
        L6_2 = L6_2.netId
        L5_2.netId = L6_2
        L5_2 = L19_1.playerDatas
        L5_2 = L5_2[L4_2]
        L5_2.skin = nil
        L5_2 = A0_2.players
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.settings
        if L5_2 then
          L5_2 = L19_1.playerDatas
          L5_2 = L5_2[L4_2]
          L6_2 = A0_2.players
          L6_2 = L6_2[L4_2]
          L6_2 = L6_2.settings
          L6_2 = L6_2.racketSkin
          L5_2.racketSkin = L6_2
        else
          L5_2 = L19_1.playerDatas
          L5_2 = L5_2[L4_2]
          L5_2.racketSkin = 0
        end
      else
        L5_2 = L19_1.playerDatas
        L5_2 = L5_2[L4_2]
        L5_2.playerId = -2
        L5_2 = L19_1.playerDatas
        L5_2 = L5_2[L4_2]
        L5_2.netId = nil
        L5_2 = L19_1.playerDatas
        L5_2 = L5_2[L4_2]
        L6_2 = A0_2.players
        L6_2 = L6_2[L4_2]
        L6_2 = L6_2.skin
        L5_2.skin = L6_2
        L5_2 = L19_1.playerDatas
        L5_2 = L5_2[L4_2]
        L5_2.racketSkin = 0
      end
    end
    L1_2 = A0_2.players
    L2_2 = A0_2.hostSide
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.side
    if 1 == L1_2 then
      L2_2 = 2
      if L2_2 then
        goto lbl_119
      end
    end
    L2_2 = 1
    ::lbl_119::
    L3_2 = A0_2.players
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.skin
    L4_2 = L19_1.createBot
    L5_2 = L2_2
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L19_1.showUpEntity
    L6_2 = L4_2
    L7_2 = 255
    L5_2(L6_2, L7_2)
    L5_2 = L19_1.attachRacketToPed
    L6_2 = L4_2
    L7_2 = 6
    L5_2(L6_2, L7_2)
    L19_1.againstBot = true
    L5_2 = L19_1.playAnimationOnPed
    L6_2 = L19_1.botPed
    L7_2 = L19_1.botSide
    L8_2 = "idle"
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = L19_1.toggleRecording
    L6_2 = true
    L5_2(L6_2)
    L5_2 = A0_2.players
    L6_2 = A0_2.hostSide
    L5_2 = L5_2[L6_2]
    L6_2 = L2_1
    L5_2.mugShot = L6_2
    L5_2 = A0_2.players
    L5_2 = L5_2[L2_2]
    L6_2 = L36_1
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2.mugShot = L6_2
    L5_2 = TriggerServerEvent
    L6_2 = "TableTennis:UpdateMugshots"
    L7_2 = A0_2.players
    L7_2 = L7_2[1]
    L7_2 = L7_2.mugShot
    L8_2 = A0_2.players
    L8_2 = L8_2[2]
    L8_2 = L8_2.mugShot
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = SendToJavascript
    L6_2 = "FillPlayerData"
    L7_2 = A0_2.players
    L7_2 = L7_2[1]
    L7_2 = L7_2.name
    L8_2 = A0_2.players
    L8_2 = L8_2[1]
    L8_2 = L8_2.mugShot
    L9_2 = "icon"
    L10_2 = A0_2.players
    L10_2 = L10_2[1]
    L10_2 = L10_2.side
    L11_2 = A0_2.players
    L11_2 = L11_2[2]
    L11_2 = L11_2.name
    L12_2 = A0_2.players
    L12_2 = L12_2[2]
    L12_2 = L12_2.mugShot
    L13_2 = "icon"
    L14_2 = A0_2.players
    L14_2 = L14_2[2]
    L14_2 = L14_2.side
    L15_2 = L1_2
    L16_2 = 99
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L5_2 = SendToJavascript
    L6_2 = "SetCustomInfo"
    L7_2 = _U
    L8_2 = "TrainingModeScorebar"
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L5_2 = SendToJavascript
    L6_2 = "ResetExtraContent"
    L5_2(L6_2)
    L5_2 = ShowTennisMenu
    L5_2()
  else
    L1_2 = false
    L24_1 = L1_2
    L1_2 = L39_1.LocalSide
    if 1 == L1_2 then
      L2_2 = 2
      if L2_2 then
        goto lbl_209
      end
    end
    L2_2 = 1
    ::lbl_209::
    L3_2 = A0_2.players
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.netId
    L4_2 = L25_1
    if not L4_2 then
      L4_2 = L19_1.createBot
      L5_2 = L2_2
      L6_2 = nil
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    end
    L19_1.againstBot = false
    L4_2 = L19_1.enablePlayerCamera
    L5_2 = L1_2
    L4_2(L5_2)
    L4_2 = L19_1.createPlayableObjects
    L4_2()
    L4_2 = L19_1.playAnimationOnPed
    L5_2 = L19_1.botPed
    L6_2 = L19_1.botSide
    L7_2 = "idle"
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = L39_1.IsHost
    if L4_2 then
      L4_2 = L19_1.toggleRecording
      L5_2 = true
      L4_2(L5_2)
    end
    L4_2 = SendToJavascript
    L5_2 = "ToggleTennisUI"
    L6_2 = 1
    L4_2(L5_2, L6_2)
    L4_2 = SendToJavascript
    L5_2 = "FillPlayerData"
    L6_2 = A0_2.players
    L6_2 = L6_2[1]
    L6_2 = L6_2.name
    L7_2 = A0_2.players
    L7_2 = L7_2[1]
    L7_2 = L7_2.mugShot
    L8_2 = "icon"
    L9_2 = 1
    L10_2 = A0_2.players
    L10_2 = L10_2[2]
    L10_2 = L10_2.name
    L11_2 = A0_2.players
    L11_2 = L11_2[2]
    L11_2 = L11_2.mugShot
    L12_2 = "icon"
    L13_2 = 2
    L14_2 = L1_2
    L15_2 = 99
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L4_2 = SendToJavascript
    L5_2 = "SetCustomInfo"
    L6_2 = "999 MS"
    L4_2(L5_2, L6_2)
    L4_2 = SendToJavascript
    L5_2 = "ResetExtraContent"
    L4_2(L5_2)
    L4_2 = L11_1
    if L4_2 then
      L4_2 = L11_1.readyItem
      L4_2 = L4_2.ChangeDescription
      L5_2 = _U
      L6_2 = "StartingGameP2P"
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2(L6_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L4_2 = L74_1
      L4_2()
    end
  end
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:StartedData"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:StartedData"
function L77_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L43_1
  L2_2 = A0_2.coords
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L19_1
    if L1_2 ~= L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = 1
  L3_2 = 2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2.playerDatas
    L6_2 = L6_2[L5_2]
    L6_2.originalPed = nil
    L6_2 = L1_2.playerDatas
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2.players
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.mugShot
    L6_2.mugShot = L7_2
    L6_2 = A0_2.players
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.playerId
    if -2 ~= L6_2 then
      L6_2 = L1_2.playerDatas
      L6_2 = L6_2[L5_2]
      L7_2 = A0_2.players
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.playerId
      L6_2.playerId = L7_2
      L6_2 = L1_2.playerDatas
      L6_2 = L6_2[L5_2]
      L7_2 = A0_2.players
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.netId
      L6_2.netId = L7_2
      L6_2 = L1_2.playerDatas
      L6_2 = L6_2[L5_2]
      L6_2.skin = nil
      L6_2 = A0_2.players
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.settings
      if L6_2 then
        L6_2 = L1_2.playerDatas
        L6_2 = L6_2[L5_2]
        L7_2 = A0_2.players
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.settings
        L7_2 = L7_2.racketSkin
        L6_2.racketSkin = L7_2
      else
        L6_2 = L1_2.playerDatas
        L6_2 = L6_2[L5_2]
        L6_2.racketSkin = 0
      end
    else
      L6_2 = L1_2.playerDatas
      L6_2 = L6_2[L5_2]
      L6_2.playerId = -2
      L6_2 = L1_2.playerDatas
      L6_2 = L6_2[L5_2]
      L6_2.netId = nil
      L6_2 = L1_2.playerDatas
      L6_2 = L6_2[L5_2]
      L7_2 = A0_2.players
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.skin
      L6_2.skin = L7_2
      L6_2 = L1_2.playerDatas
      L6_2 = L6_2[L5_2]
      L6_2.racketSkin = 0
    end
  end
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:PreparePVP"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:PreparePVP"
function L77_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetMyServerId
  L2_2 = L2_2()
  L3_2 = L43_1
  L4_2 = A0_2.coords
  L3_2 = L3_2(L4_2)
  L19_1 = L3_2
  L3_2 = L19_1
  if not L3_2 then
    L3_2 = ResetSession
    L3_2()
    return
  end
  L3_2 = L19_1
  L20_1 = L3_2
  L19_1.againstBot = false
  L3_2 = A0_2.hostSide
  L39_1.HostSide = L3_2
  L39_1.game = A0_2
  L39_1.MaxBalance = A1_2
  L3_2 = pairs
  L4_2 = A0_2.players
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.playerId
    if L9_2 == L2_2 then
      L9_2 = L8_2.side
      L39_1.LocalSide = L9_2
    end
  end
  L3_2 = L39_1.HostSide
  L4_2 = L39_1.LocalSide
  L3_2 = L3_2 == L4_2
  L39_1.IsHost = L3_2
  L3_2 = ShowNotifyBar
  L4_2 = ""
  L3_2(L4_2)
  L3_2 = ShowTennisMenu
  L3_2()
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:SyncTennisMenu"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:SyncTennisMenu"
function L77_1(A0_2)
  local L1_2, L2_2
  L1_2 = L11_1
  if not L1_2 then
    return
  end
  L1_2 = L19_1
  if L1_2 then
    L1_2 = L19_1.toggleNetVariation
    L2_2 = A0_2.netHitBox
    L1_2(L2_2)
  end
  L1_2 = L12_1
  if L1_2 then
    L1_2 = L12_1.isOpen_
    if L1_2 then
      L14_1 = A0_2
      return
    end
  end
  L1_2 = L61_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:NearbyStateUpdated"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:NearbyStateUpdated"
function L77_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = GetMyServerId
  L2_2 = L2_2()
  L3_2 = nil
  L4_1 = L3_2
  L16_1 = A1_2
  if "created" ~= A1_2 then
    L3_2 = ShowNotifyBar
    L4_2 = _U
    L5_2 = "NotifyTableIsUsed"
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  else
    L3_2 = #A0_2
    if L3_2 <= 1 then
      L3_2 = Config
      L3_2 = L3_2.UseTarget
      if not L3_2 then
        L3_2 = ShowNotifyBar
        L4_2 = _U
        L5_2 = "NotifyPressToPlay"
        L4_2 = L4_2(L5_2)
        L5_2 = " "
        L6_2 = _U
        L7_2 = "NotifyPressToOpenLeaderboards"
        L6_2 = L6_2(L7_2)
        L4_2 = L4_2 .. L5_2 .. L6_2
        L3_2(L4_2)
      else
        L3_2 = ShowNotifyBar
        L4_2 = ""
        L3_2(L4_2)
      end
    else
      L3_2 = #A0_2
      if 2 == L3_2 then
        L3_2 = nil
        L4_2 = false
        L5_2 = false
        L6_2 = 0
        L7_2 = pairs
        L8_2 = A0_2
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
          L13_2 = L12_2.isChallenging
          if L13_2 then
            L6_2 = L6_2 + 1
          end
          L13_2 = L12_2.playerId
          if L13_2 == L2_2 then
            L5_2 = L12_2.isChallenging
          else
            L13_2 = L12_2.playerId
            if L13_2 ~= L2_2 then
              L13_2 = L12_2.playerId
              L4_1 = L13_2
              L3_2 = L12_2.mugShot
              L4_2 = L12_2.isChallenging
            end
          end
        end
        if not L5_2 then
          L7_2 = Config
          L7_2 = L7_2.UseTarget
          if not L7_2 then
            if L4_2 then
              L7_2 = ShowNotifyBar
              L8_2 = _U
              L9_2 = "NotifyPressToHost"
              L8_2 = L8_2(L9_2)
              L9_2 = " "
              L10_2 = _U
              L11_2 = "NotifyPressToOpenLeaderboards"
              L10_2 = L10_2(L11_2)
              L8_2 = L8_2 .. L9_2 .. L10_2
              L9_2 = L3_2
              L7_2(L8_2, L9_2)
            else
              L7_2 = ShowNotifyBar
              L8_2 = _U
              L9_2 = "NotifyPressToJoin"
              L8_2 = L8_2(L9_2)
              L9_2 = " "
              L10_2 = _U
              L11_2 = "NotifyPressToOpenLeaderboards"
              L10_2 = L10_2(L11_2)
              L8_2 = L8_2 .. L9_2 .. L10_2
              L9_2 = L3_2
              L7_2(L8_2, L9_2)
            end
          else
            L7_2 = ShowNotifyBar
            L8_2 = ""
            L7_2(L8_2)
          end
        elseif 1 == L6_2 then
          L7_2 = ShowNotifyBar
          L8_2 = _U
          L9_2 = "NotifyWaitingForOpponentToJoin"
          L8_2 = L8_2(L9_2)
          L9_2 = L3_2
          L7_2(L8_2, L9_2)
        elseif 2 == L6_2 then
          L7_2 = ShowNotifyBar
          L8_2 = _U
          L9_2 = "NotifyStartingGame"
          L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        end
      else
        L3_2 = #A0_2
        if L3_2 > 2 then
          L3_2 = ShowNotifyBar
          L4_2 = _U
          L5_2 = "NotifyTooManyNearbyPlayers"
          L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2)
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        end
      end
    end
  end
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:TableRecords"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:TableRecords"
function L77_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = false
    L8_2 = pairs
    L9_2 = L37_1
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = L13_2.coords
      L15_2 = L6_2.coords
      L14_2 = L14_2 - L15_2
      L14_2 = #L14_2
      L15_2 = 0.1
      if L14_2 < L15_2 then
        L7_2 = true
      end
    end
    if not L7_2 then
      L9_2 = L6_2.key
      L8_2 = L37_1
      L10_2 = {}
      L11_2 = L6_2.key
      L10_2.key = L11_2
      L11_2 = L6_2.coords
      L10_2.coords = L11_2
      L11_2 = L6_2.heading
      L10_2.heading = L11_2
      L11_2 = L6_2.model
      L10_2.model = L11_2
      L11_2 = L6_2.skin
      L10_2.skinId = L11_2
      L10_2.remote = true
      L8_2[L9_2] = L10_2
    end
  end
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:TableRecordAdd"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:TableRecordAdd"
function L77_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = pairs
  L6_2 = L37_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.coords
    L11_2 = L11_2 - A1_2
    L11_2 = #L11_2
    L12_2 = 0.1
    if L11_2 < L12_2 then
      return
    end
  end
  L5_2 = L37_1
  L6_2 = {}
  L6_2.key = A0_2
  L6_2.coords = A1_2
  L6_2.heading = A2_2
  L6_2.model = A3_2
  L6_2.skinId = A4_2
  L6_2.visible = false
  L6_2.remote = true
  L5_2[A0_2] = L6_2
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:TableRecordRemove"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:TableRecordRemove"
function L77_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = L37_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.remote
    if L7_2 then
      L7_2 = L6_2.coords
      L7_2 = L7_2 - A0_2
      L7_2 = #L7_2
      L8_2 = 0.1
      if L7_2 < L8_2 then
        L7_2 = L6_2.isVisible
        if L7_2 then
          L7_2 = L51_1
          L8_2 = L6_2
          L9_2 = false
          L7_2(L8_2, L9_2)
        end
        L7_2 = L37_1
        L7_2[L5_2] = nil
      end
    end
  end
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:Mugshots"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:Mugshots"
function L77_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = L43_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L3_2.playerDatas
  L4_2 = L4_2[1]
  L4_2.mugShot = A1_2
  L4_2 = L3_2.playerDatas
  L4_2 = L4_2[2]
  L4_2.mugShot = A2_2
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:TableRemoved"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:TableRemoved"
function L77_1(A0_2)
  local L1_2, L2_2
  L1_2 = L43_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L1_2.destroy
  L2_2()
  L2_2 = L19_1
  if L1_2 == L2_2 then
    L2_2 = ResetSession
    L2_2()
  end
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:StartAgainstBot"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:StartAgainstBot"
function L77_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if "AlreadyChallenging" == A0_2 then
    L1_2 = ShowNotifyBar
    L2_2 = ""
    L1_2(L2_2)
    L1_2 = FullscreenPrompt
    L2_2 = _U
    L3_2 = "Error"
    L2_2 = L2_2(L3_2)
    L3_2 = _U
    L4_2 = "AgainstBot_Challenging"
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:SnapPack"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:SnapPack"
function L77_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L43_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L19_1
  if L2_2 == L3_2 then
    return
  end
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = L3_2 - A0_2
  L4_2 = #L4_2
  if L4_2 > 15.0 then
    L5_2 = TriggerServerEvent
    L6_2 = "TableTennis:Subscribe"
    L7_2 = A0_2
    L8_2 = false
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = L20_1
  if L2_2 == L5_2 then
    L5_2 = L31_1
    L5_2 = L5_2()
    if not L5_2 then
      return
    end
  end
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L2_2.lastReceivedReplayTime = L5_2
  L5_2 = 1
  L6_2 = #A1_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2.snaps
    L11_2 = A1_2[L8_2]
    L9_2(L10_2, L11_2)
  end
  L5_2 = L2_2.startReplaying
  L5_2()
end
L75_1(L76_1, L77_1)
L75_1 = RegisterNetEvent
L76_1 = "TableTennis:PeerIDs"
L75_1(L76_1)
L75_1 = AddEventHandler
L76_1 = "TableTennis:PeerIDs"
function L77_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L19_1
  if not L1_2 then
    return
  end
  L1_2 = GetMyServerId
  L1_2 = L1_2()
  L2_2 = nil
  L3_2 = 1
  L4_2 = 2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L19_1.playerDatas
    L7_2 = L7_2[L6_2]
    L8_2 = A0_2[L6_2]
    L8_2 = L8_2.playerId
    L7_2.playerId = L8_2
    L7_2 = L19_1.playerDatas
    L7_2 = L7_2[L6_2]
    L8_2 = A0_2[L6_2]
    L8_2 = L8_2.netId
    L7_2.netId = L8_2
    L7_2 = L19_1.playerDatas
    L7_2 = L7_2[L6_2]
    L8_2 = A0_2[L6_2]
    L8_2 = L8_2.peerId
    L7_2.peerId = L8_2
    L7_2 = L19_1.playerDatas
    L7_2 = L7_2[L6_2]
    L7_2.skin = nil
    L7_2 = L19_1.playerDatas
    L7_2 = L7_2[L6_2]
    L8_2 = NetToPed
    L9_2 = A0_2[L6_2]
    L9_2 = L9_2.netId
    L8_2 = L8_2(L9_2)
    L7_2.originalPed = L8_2
    L7_2 = L19_1.playerDatas
    L7_2 = L7_2[L6_2]
    L8_2 = A0_2[L6_2]
    L8_2 = L8_2.mugShot
    L7_2.mugShot = L8_2
    L7_2 = A0_2[L6_2]
    L7_2 = L7_2.settings
    if L7_2 then
      L7_2 = L19_1.playerDatas
      L7_2 = L7_2[L6_2]
      L8_2 = A0_2[L6_2]
      L8_2 = L8_2.settings
      L8_2 = L8_2.racketSkin
      L7_2.racketSkin = L8_2
    else
      L7_2 = L19_1.playerDatas
      L7_2 = L7_2[L6_2]
      L7_2.racketSkin = 0
    end
    L7_2 = L19_1.playerDatas
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.playerId
    if L7_2 ~= L1_2 then
      L7_2 = L19_1.playerDatas
      L7_2 = L7_2[L6_2]
      L2_2 = L7_2.peerId
    end
  end
  L3_2 = L39_1.HostSide
  L4_2 = L39_1.LocalSide
  if L3_2 ~= L4_2 then
    L3_2 = L21_1.Connect
    L4_2 = L2_2
    L5_2 = L65_1
    L6_2 = L66_1
    L7_2 = L67_1
    L8_2 = L68_1
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L22_1 = L3_2
  end
  L3_2 = L41_1
  L3_2()
  L3_2 = L57_1
  L3_2()
end
L75_1(L76_1, L77_1)
function L75_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L2_1
  if not L0_2 then
    L0_2 = IsPlayerPlaying
    L1_2 = PlayerId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    if L0_2 then
      L0_2 = L3_1
      if L0_2 < 5 then
        L0_2 = L3_1
        L0_2 = L0_2 + 1
        L3_1 = L0_2
        L0_2 = L36_1
        L1_2 = PlayerPedId
        L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
        L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
        L2_1 = L0_2
        L0_2 = L2_1
        if L0_2 then
          L0_2 = TriggerServerEvent
          L1_2 = "TableTennis:PlayerMugshot"
          L2_2 = L2_1
          L0_2(L1_2, L2_2)
        end
      end
    end
  end
  L0_2 = pairs
  L1_2 = L18_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.isReplaying
    if L6_2 then
      L6_2 = GetGameTimer
      L6_2 = L6_2()
      L7_2 = L5_2.lastReceivedReplayTime
      L6_2 = L6_2 - L7_2
      L7_2 = 10000
      if L6_2 > L7_2 then
        L7_2 = L5_2.destroy
        L7_2()
      end
    end
  end
end
function L76_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L31_1
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L0_2 = L16_1
  if "created" ~= L0_2 then
    return
  end
  L0_2 = L19_1
  if not L0_2 then
    L0_2 = L17_1
    if L0_2 then
      L0_2 = L43_1
      L1_2 = GetEntityCoords
      L2_2 = L17_1
      L1_2, L2_2, L3_2, L4_2, L5_2, L6_2 = L1_2(L2_2)
      L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
      if not L0_2 then
        return
      end
      L1_2 = L2_1
      if not L1_2 then
        L1_2 = ShowNotifyBar
        L2_2 = _U
        L3_2 = "NotifyPleaseWait"
        L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
        L1_2 = L36_1
        L2_2 = PlayerPedId
        L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2()
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
        L2_1 = L1_2
        L1_2 = L2_1
        if L1_2 then
          L1_2 = TriggerServerEvent
          L2_2 = "TableTennis:PlayerMugshot"
          L3_2 = L2_1
          L1_2(L2_2, L3_2)
          L1_2 = Wait
          L2_2 = 500
          L1_2(L2_2)
        end
      end
      L1_2 = L4_1
      if not L1_2 then
        L1_2 = ShowNotifyBar
        L2_2 = _U
        L3_2 = "NotifyStartingGame"
        L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
        L1_2 = L45_1
        L2_2 = L0_2
        L1_2(L2_2)
      else
        L1_2 = GetMyPedNetworkId
        L1_2 = L1_2()
        L2_2 = L0_2.getClosestPlayerSideFromCoords
        L3_2 = GetEntityCoords
        L4_2 = PlayerPedId
        L4_2, L5_2, L6_2 = L4_2()
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        L3_2 = TriggerServerEvent
        L4_2 = "TableTennis:ChallengePlayer"
        L5_2 = L1_2
        L6_2 = L2_2
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end
function L77_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = nil
  L17_1 = L0_2
  L0_2 = L32_1
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = vector3
  L1_2 = 0
  L2_2 = 0
  L3_2 = 0
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L9_1 = L0_2
end
TableTennis_ResetInteraction = L77_1
function L77_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = TableTennis_ResetInteraction
  L2_2()
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L43_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = L50_1
    L4_2()
    L4_2 = Wait
    L5_2 = 100
    L4_2(L5_2)
    L4_2 = GetEntityModel
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = L8_1
    L5_2 = L5_2[L4_2]
    L6_2 = L37_1
    L7_2 = {}
    L8_2 = GetEntityCoords
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L7_2.coords = L8_2
    L8_2 = GetEntityHeading
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L7_2.heading = L8_2
    L7_2.model = L4_2
    L7_2.skinId = L5_2
    L7_2.visible = false
    L6_2[A0_2] = L7_2
    L6_2 = L46_1
    L7_2 = A0_2
    L6_2(L7_2)
    L6_2 = L43_1
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  end
  L4_2 = L3_2.getClosestPlayerSideFromCoords
  L5_2 = GetEntityCoords
  L6_2 = PlayerPedId
  L6_2, L7_2, L8_2, L9_2 = L6_2()
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2.getPlayerPlayingPosition
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L3_2.heading
  if 2 == L4_2 then
    L7_2 = 180
    if L7_2 then
      goto lbl_59
    end
  end
  L7_2 = 0
  ::lbl_59::
  L6_2 = L6_2 + L7_2
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = A0_2
    L1_3 = L17_1
    if L0_3 ~= L1_3 then
      L0_3 = L32_1
      L1_3 = 6000
      L0_3(L1_3)
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L0_3 = L0_3 + 3000
      L1_3 = TaskGoStraightToCoord
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = L5_2.x
      L4_3 = L5_2.y
      L5_3 = L5_2.z
      L6_3 = 1.0
      L7_3 = 3.0
      L8_3 = L6_2
      L9_3 = 0.0
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      while true do
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        if not (L0_3 > L1_3) then
          break
        end
        L1_3 = GetEntityCoords
        L2_3 = PlayerPedId
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L2_3()
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        L2_3 = L5_2
        L1_3 = L1_3 - L2_3
        L1_3 = #L1_3
        L2_3 = 0.3
        if L1_3 < L2_3 then
          break
        end
        L2_3 = Wait
        L3_3 = 33
        L2_3(L3_3)
      end
    end
    L0_3 = GetEntityCoords
    L1_3 = PlayerPedId
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L1_3()
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L1_3 = L5_2
    L0_3 = L0_3 - L1_3
    L0_3 = #L0_3
    L1_3 = 0.3
    if L0_3 > L1_3 then
      L0_3 = SetEntityCoordsNoOffset
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = L5_2.x
      L3_3 = L5_2.y
      L4_3 = L5_2.z
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L0_3 = Wait
    L1_3 = 100
    L0_3(L1_3)
    L0_3 = ClearPedTasks
    L1_3 = PlayerPedId
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L1_3()
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L0_3 = L32_1
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L0_3 = L0_3 + 3000
    while true do
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      if not (L0_3 > L1_3) then
        break
      end
      L1_3 = A0_2
      L2_3 = L17_1
      if L1_3 == L2_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 33
      L1_3(L2_3)
    end
    L1_3 = L19_1
    if not L1_3 then
      L1_3 = A0_2
      L2_3 = L17_1
      if L1_3 == L2_3 then
        goto lbl_98
      end
    end
    L1_3 = ClearPedTasks
    L2_3 = PlayerPedId
    L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L2_3()
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    do return end
    ::lbl_98::
    L1_3 = A1_2
    if L1_3 then
      L1_3 = L45_1
      L2_3 = L3_2
      L1_3(L2_3)
    else
      L1_3 = L4_1
      if L1_3 then
        L1_3 = GetMyPedNetworkId
        L1_3 = L1_3()
        L2_3 = TriggerServerEvent
        L3_3 = "TableTennis:ChallengePlayer"
        L4_3 = L1_3
        L5_3 = L4_2
        L2_3(L3_3, L4_3, L5_3)
      else
        L1_3 = ShowNotifyBar
        L2_3 = _U
        L3_3 = "NoNearbyPlayerAround"
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L2_3(L3_3)
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      end
    end
    L1_3 = L32_1
    L2_3 = 0
    L1_3(L2_3)
  end
  L9_2 = "TableTennis_StartOnEntity"
  L7_2(L8_2, L9_2)
end
TableTennis_StartOnEntity = L77_1
function L77_1()
  local L0_2, L1_2, L2_2
  L0_2 = L19_1
  if L0_2 then
    L0_2 = L19_1.switchBallModel
    L1_2 = "prop_poolball_7"
    L0_2(L1_2)
    return
  end
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L6_1
  L0_2 = L0_2 - L1_2
  L1_2 = 1000
  if L0_2 < L1_2 then
    return
  end
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L6_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = ShowNotifyBar
    L1_3 = _U
    L2_3 = "RequestingLeaderboards"
    L1_3, L2_3 = L1_3(L2_3)
    L0_3(L1_3, L2_3)
    L0_3 = Wait
    L1_3 = 100
    L0_3(L1_3)
    L0_3 = TriggerServerEvent
    L1_3 = "TableTennis:RequestTopPlayers"
    L0_3(L1_3)
  end
  L2_2 = "TableTennis_RequestLeaderboards"
  L0_2(L1_2, L2_2)
end
TableTennis_RequestLeaderboards = L77_1
L77_1 = CreateThread
function L78_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = TriggerServerEvent
  L1_2 = "TableTennis:GetTableRecords"
  L0_2(L1_2)
  L0_2 = 0
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 + 1000
  while true do
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    if L1_2 <= L2_2 then
      L3_2 = L31_1
      L3_2 = L3_2()
      if L3_2 then
        L3_2 = L75_1
        L3_2()
        L3_2 = L53_1
        L3_2()
        L3_2 = GetGameTimer
        L3_2 = L3_2()
        L1_2 = L3_2 + 999
      end
    end
    L3_2 = L19_1
    if not L3_2 then
      L3_2 = L17_1
      if not L3_2 then
        goto lbl_34
      end
    end
    L3_2 = 0
    L0_2 = L3_2 or L0_2
    ::lbl_34::
    if not L3_2 then
      L0_2 = 1000
    end
    if 0 == L0_2 then
      L3_2 = HandleGameplayKeys
      L3_2()
    end
    L3_2 = Wait
    L4_2 = L0_2
    L3_2(L4_2)
  end
end
L79_1 = "TableTennis_MainThread"
L77_1(L78_1, L79_1)
L77_1 = AddEventHandler
L78_1 = "onResourceStop"
function L79_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = L63_1
  L1_2()
end
L77_1(L78_1, L79_1)
function L77_1()
  local L0_2, L1_2, L2_2
  L0_2 = L50_1
  L0_2()
  L0_2 = false
  L27_1 = L0_2
  L0_2 = nil
  L4_1 = L0_2
  L0_2 = nil
  L14_1 = L0_2
  L0_2 = nil
  L17_1 = L0_2
  L0_2 = L19_1
  if L0_2 then
    L0_2 = L19_1.destroy
    L0_2()
  end
  L0_2 = nil
  L19_1 = L0_2
  L0_2 = nil
  L23_1 = L0_2
  L0_2 = false
  L24_1 = L0_2
  L0_2 = ToggleTennisCamera
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SendToJavascript
  L1_2 = "ToggleTennisUI"
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L39_1.ballMovementActive = false
  L0_2 = L22_1
  if L0_2 then
    L0_2 = L22_1.Close
    L0_2()
    L0_2 = nil
    L22_1 = L0_2
  end
  L0_2 = L21_1
  if L0_2 then
    L0_2 = L21_1.Close
    L0_2()
    L0_2 = nil
    L21_1 = L0_2
  end
  L0_2 = L11_1
  if L0_2 then
    L11_1.stakeConfirmed = 0
    L11_1.confirmed = false
    L0_2 = L11_1.isOpen_
    if L0_2 then
      L0_2 = L11_1.Close
      L0_2()
    end
  end
  L0_2 = L40_1
  L0_2()
end
ResetSession = L77_1
function L77_1()
  local L0_2, L1_2
  L0_2 = L11_1
  if L0_2 then
    L0_2 = L11_1.isOpen_
    if L0_2 then
      L0_2 = L11_1.Close
      L0_2()
  end
  else
    L0_2 = L12_1
    if L0_2 then
      L0_2 = L12_1.isOpen_
      if L0_2 then
        L0_2 = L12_1.Close
        L0_2()
      end
    end
  end
  L0_2 = TriggerServerEvent
  L1_2 = "TableTennis:AbortGame"
  L0_2(L1_2)
  L0_2 = ResetSession
  L0_2()
end
AbortGameRequest = L77_1
function L77_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L19_1
  if not L0_2 then
    return
  end
  L0_2 = FullscreenPrompt
  L1_2 = L19_1.againstBot
  if L1_2 then
    L1_2 = _U
    L2_2 = "LeaveLocalGameCaption"
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_17
    end
  end
  L1_2 = _U
  L2_2 = "LeaveOnlineGameCaption"
  L1_2 = L1_2(L2_2)
  ::lbl_17::
  L2_2 = _U
  L3_2 = "LeaveQuestion"
  L2_2 = L2_2(L3_2)
  function L3_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = AbortGameRequest
      L1_3()
    else
      L1_3 = L11_1
      if L1_3 then
        L1_3 = L24_1
        if L1_3 then
          L1_3 = L11_1.ToggleVisibility
          L2_3 = true
          L1_3(L2_3)
        end
      end
    end
  end
  L4_2 = ""
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
function L78_1()
  local L0_2, L1_2
  L0_2 = L11_1
  if L0_2 then
    L11_1.isOpen_ = false
  end
  L0_2 = L12_1
  if L0_2 then
    L12_1.isOpen_ = false
  end
  L0_2 = L13_1
  if L0_2 then
    L13_1.isOpen_ = false
  end
end
SetMenusClosed = L78_1
function L78_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    L1_2 = L12_1
    if L1_2 then
      L1_2 = L12_1.isOpen_
      if L1_2 then
        L1_2 = L12_1.Close
        L1_2()
        L1_2 = nil
        L12_1 = L1_2
      end
    end
    L1_2 = L11_1
    if L1_2 then
      L1_2 = L11_1.isOpen_
      if L1_2 then
        L1_2 = L11_1.Close
        L1_2()
      end
    end
    return
  end
  L1_2 = L13_1
  if L1_2 then
    L1_2 = L13_1.isOpen_
    if L1_2 then
      L1_2 = L13_1.Close
      L1_2()
  end
  else
    L1_2 = L12_1
    if L1_2 then
      L1_2 = L12_1.isOpen_
      if L1_2 then
        L1_2 = L12_1.Close
        L1_2()
    end
    else
      L1_2 = L11_1
      if L1_2 then
        L1_2 = L11_1.isOpen_
        if L1_2 then
          L1_2 = PROMPT_ACTIVE
          if not L1_2 then
            L1_2 = L11_1.ToggleVisibility
            L2_2 = false
            L1_2(L2_2)
            L1_2 = L77_1
            L1_2()
          end
        end
      end
    end
  end
end
CloseAll = L78_1
function L78_1()
  local L0_2, L1_2
  L0_2 = L19_1
  if L0_2 then
    L0_2 = L11_1
    if L0_2 then
      L0_2 = L11_1.isOpen_
      if L0_2 then
        goto lbl_22
      end
    end
    L0_2 = L12_1
    if L0_2 then
      L0_2 = L12_1.isOpen_
      if L0_2 then
        goto lbl_22
      end
    end
    L0_2 = PROMPT_ACTIVE
    if not L0_2 then
      L0_2 = L77_1
      L0_2()
    end
    return
  end
  ::lbl_22::
  L0_2 = CloseAll
  L1_2 = true
  L0_2(L1_2)
end
function L79_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.Keys
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DisableControlAction
    L7_2 = 2
    L8_2 = L5_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 2
  L2_2 = Config
  L2_2 = L2_2.Keys
  L2_2 = L2_2.ActionKey
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L76_1
    L0_2()
  else
    L0_2 = IsDisabledControlJustPressed
    L1_2 = 2
    L2_2 = Config
    L2_2 = L2_2.Keys
    L2_2 = L2_2.LeaveKey
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = L78_1
      L0_2()
    else
      L0_2 = IsDisabledControlJustPressed
      L1_2 = 2
      L2_2 = Config
      L2_2 = L2_2.Keys
      L2_2 = L2_2.RequestTop
      L0_2 = L0_2(L1_2, L2_2)
      if L0_2 then
        L0_2 = TableTennis_RequestLeaderboards
        L0_2()
      else
        L0_2 = IsDisabledControlJustPressed
        L1_2 = 2
        L2_2 = Config
        L2_2 = L2_2.Keys
        L2_2 = L2_2.CameraTilt
        L0_2 = L0_2(L1_2, L2_2)
        if L0_2 then
          L0_2 = L5_1.cameraTilt
          if L0_2 < 4 then
            L0_2 = L5_1.cameraTilt
            L0_2 = L0_2 + 1
            L5_1.cameraTilt = L0_2
          else
            L5_1.cameraTilt = 1
          end
          L0_2 = L48_1
          L0_2()
        else
          L0_2 = IsDisabledControlJustPressed
          L1_2 = 2
          L2_2 = Config
          L2_2 = L2_2.Keys
          L2_2 = L2_2.MouseLock
          L0_2 = L0_2(L1_2, L2_2)
          if L0_2 then
            L0_2 = L5_1.lockMouse
            L0_2 = not L0_2
            L5_1.lockMouse = L0_2
            L0_2 = L48_1
            L0_2()
          end
        end
      end
    end
  end
end
HandleGameplayKeys = L79_1
L79_1 = L49_1
L79_1()
L79_1 = L40_1
L79_1()
L79_1 = AddTargetForPingPongTables
L79_1()
L79_1 = pairs
L80_1 = TennisTableSkins
L79_1, L80_1, L81_1, L82_1 = L79_1(L80_1)
for L83_1, L84_1 in L79_1, L80_1, L81_1, L82_1 do
  L85_1 = L84_1[1]
  L8_1[L85_1] = L83_1
  L85_1 = L84_1[2]
  L8_1[L85_1] = L83_1
end
L79_1 = RegisterKey
function L80_1()
  local L0_2, L1_2
  L0_2 = L78_1
  L0_2()
end
L81_1 = "ttennisesc"
L82_1 = "ESCAPE"
L83_1 = "ESCAPE"
L79_1(L80_1, L81_1, L82_1, L83_1)

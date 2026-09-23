local L0_1, L1_1
IsAudioAllowedThisFrame = true
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = PlayPoolSound
  L4_2 = L2_2
  L5_2 = A1_2
  L6_2 = {}
  L7_2 = "hit_1"
  L8_2 = "hit_2"
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L3_2(L4_2, L5_2, L6_2)
end
PlayBallCollisionAudio = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = PlayPoolSound
  L4_2 = L2_2
  L5_2 = A1_2
  L6_2 = {}
  L7_2 = "cue_hit"
  L6_2[1] = L7_2
  L3_2(L4_2, L5_2, L6_2)
end
PlayCueAudio = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = PlayPoolSound
  L4_2 = L2_2
  L5_2 = A1_2
  L6_2 = {}
  L7_2 = "cushion_hit"
  L6_2[1] = L7_2
  L3_2(L4_2, L5_2, L6_2)
end
PlayCushionCollisionSound = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = PlayPoolSound
  L2_2 = A0_2
  L3_2 = 0.5
  L4_2 = {}
  L5_2 = "pocket_1"
  L6_2 = "pocket_2"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L1_2(L2_2, L3_2, L4_2)
end
PlayPocketSound = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = IsAudioAllowedThisFrame
  if L3_2 then
    if A1_2 < 0.0 or A1_2 > 1.0 then
      L3_2 = print
      L4_2 = "INVALID STRENGTH! Must be between 0.0 and 1.0"
      L3_2(L4_2)
    else
      L3_2 = LastPedPosition
      if L3_2 then
        L3_2 = LastPedPosition
        L3_2 = L3_2 - A0_2
        L3_2 = #L3_2
        L4_2 = 9.5
        if L3_2 < L4_2 then
          IsAudioAllowedThisFrame = false
          L3_2 = GetGameplayCamCoord
          L3_2 = L3_2()
          L4_2 = SendNUIMessage
          L5_2 = {}
          L5_2.transactionType = "playSound"
          L5_2.position = A0_2
          L5_2.volume = A1_2
          L5_2.sounds = A2_2
          L4_2(L5_2)
          L4_2 = Citizen
          L4_2 = L4_2.CreateThread
          function L5_2()
            local L0_3, L1_3
            L0_3 = Wait
            L1_3 = 0
            L0_3(L1_3)
            IsAudioAllowedThisFrame = true
          end
          L4_2(L5_2)
        end
      end
    end
  end
end
PlayPoolSound = L0_1
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  while true do
    L0_2 = IsCloseToAnyTable
    if L0_2 then
      L0_2 = Wait
      L1_2 = 200
      L0_2(L1_2)
    else
      L0_2 = Wait
      L1_2 = 2000
      L0_2(L1_2)
    end
    L0_2 = CurrentState
    L1_2 = STATE_NONE
    if L0_2 ~= L1_2 then
      L0_2 = GetCamMatrix
      L1_2 = 0
      L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
      L4_2 = GetGameplayCamRot
      L4_2 = L4_2()
      L5_2 = GetGameplayCamCoord
      L5_2 = L5_2()
      L6_2 = RotationToDirection
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      L7_2 = vector3
      L8_2 = -574.0
      L9_2 = 288.0
      L10_2 = 79.6
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L8_2 = SendNUIMessage
      L9_2 = {}
      L9_2.transactionType = "setOrientation"
      L9_2.fwd = L6_2
      L10_2 = vector3
      L11_2 = 0.0
      L12_2 = 0.0
      L13_2 = 1.0
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L9_2.up = L10_2
      L9_2.coord = L5_2
      L8_2(L9_2)
    end
  end
end
L0_1(L1_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L1_2.x = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.y
  L2_2 = L2_2 * L3_2
  L1_2.y = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.z
  L2_2 = L2_2 * L3_2
  L1_2.z = L2_2
  L2_2 = vector3
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L3_2 * L4_2
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L1_2.z
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.abs
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L1_2.x
  L6_2, L7_2 = L6_2(L7_2)
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 * L5_2
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L1_2.x
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
RotationToDirection = L0_1

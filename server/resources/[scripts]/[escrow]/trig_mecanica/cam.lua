local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
status = L0_1
L0_1 = RegisterNUICallback
L1_1 = "chooseCam"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ResetCam
  L1_2()
  L1_2 = A0_2[1]
  L2_2 = A0_2[2]
  if "interior" ~= L1_2 then
    L3_2 = GetFollowPedCamViewMode
    L3_2 = L3_2()
    if 4 == L3_2 then
      L3_2 = SetFollowVehicleCamViewMode
      L4_2 = 0
      L3_2(L4_2)
    end
  end
  if "doors" == L1_2 then
    L3_2 = SetVehicleDoorOpen
    L4_2 = vehicle
    L4_2 = L4_2.entity
    L5_2 = 0
    L6_2 = 0
    L7_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = SetVehicleDoorOpen
    L4_2 = vehicle
    L4_2 = L4_2.entity
    L5_2 = 1
    L6_2 = 0
    L7_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = status
    L3_2.doors = true
  else
    L3_2 = status
    L3_2 = L3_2.doors
    if L3_2 then
      L3_2 = SetVehicleDoorShut
      L4_2 = vehicle
      L4_2 = L4_2.entity
      L5_2 = 0
      L6_2 = 0
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = SetVehicleDoorShut
      L4_2 = vehicle
      L4_2 = L4_2.entity
      L5_2 = 1
      L6_2 = 0
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = status
      L3_2.doors = false
    end
  end
  if "motor" == L2_2 or "turbo" == L2_2 or "transmiss\195\163o" == L2_2 then
    L3_2 = SetVehicleDoorOpen
    L4_2 = vehicle
    L4_2 = L4_2.entity
    L5_2 = 4
    L6_2 = false
    L7_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = status
    L3_2.motor = true
  else
    L3_2 = status
    L3_2 = L3_2.motor
    if L3_2 then
      L3_2 = SetVehicleDoorShut
      L4_2 = vehicle
      L4_2 = L4_2.entity
      L5_2 = 4
      L6_2 = false
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = status
      L3_2.motor = false
    end
  end
  if L1_2 then
    if "none" == L1_2 then
      L3_2 = camControl
      L4_2 = "decal"
      L3_2(L4_2)
    else
      L3_2 = camControl
      L4_2 = L1_2
      L3_2(L4_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "freecam"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = freeCam
  L3_2 = A0_2
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2
  L1_2 = A0_2 + 1.0E-5
  return L1_2
end
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L4_2 = SetCamActive
  L5_2 = cam
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = vehicle
  L4_2 = L4_2.entity
  L5_2 = GetEntityBoneIndexByName
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and L5_2 > -1 then
    L6_2 = table
    L6_2 = L6_2.unpack
    L7_2 = GetWorldPositionOfEntityBone
    L8_2 = L4_2
    L9_2 = L5_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L7_2(L8_2, L9_2)
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L9_2 = table
    L9_2 = L9_2.unpack
    L10_2 = GetOffsetFromEntityGivenWorldCoords
    L11_2 = L4_2
    L12_2 = L6_2
    L13_2 = L7_2
    L14_2 = L8_2
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L12_2 = table
    L12_2 = L12_2.unpack
    L13_2 = GetOffsetFromEntityInWorldCoords
    L14_2 = L4_2
    L15_2 = L0_1
    L16_2 = A1_2
    L15_2 = L15_2(L16_2)
    L15_2 = L9_2 + L15_2
    L16_2 = L0_1
    L17_2 = A2_2
    L16_2 = L16_2(L17_2)
    L16_2 = L10_2 + L16_2
    L17_2 = L0_1
    L18_2 = A3_2
    L17_2 = L17_2(L18_2)
    L17_2 = L11_2 + L17_2
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
    L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L15_2 = SetCamCoord
    L16_2 = cam
    L17_2 = L12_2
    L18_2 = L13_2
    L19_2 = L14_2
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = PointCamAtCoord
    L16_2 = cam
    L17_2 = GetOffsetFromEntityInWorldCoords
    L18_2 = L4_2
    L19_2 = 0
    L20_2 = L10_2
    L21_2 = L11_2
    L17_2, L18_2, L19_2, L20_2, L21_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L15_2 = RenderScriptCams
    L16_2 = 1
    L17_2 = 1
    L18_2 = 1000
    L19_2 = 0
    L20_2 = 0
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
  end
end
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L4_2 = SetCamActive
  L5_2 = cam
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = vehicle
  L4_2 = L4_2.entity
  L5_2 = table
  L5_2 = L5_2.unpack
  L6_2 = GetEntityCoords
  L7_2 = L4_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L6_2(L7_2)
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L8_2 = GetModelDimensions
  L9_2 = GetEntityModel
  L10_2 = L4_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L9_2(L10_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L9_2 = L8_2.y
  L9_2 = L9_2 * -2
  L10_2 = L8_2.x
  L10_2 = L10_2 * -2
  L11_2 = L8_2.z
  L11_2 = L11_2 * -2
  L12_2 = nil
  L13_2 = nil
  L14_2 = nil
  if "front" == A0_2 then
    L15_2 = table
    L15_2 = L15_2.unpack
    L16_2 = GetOffsetFromEntityInWorldCoords
    L17_2 = L4_2
    L18_2 = L0_1
    L19_2 = A1_2
    L18_2 = L18_2(L19_2)
    L19_2 = L9_2 / 2
    L20_2 = L0_1
    L21_2 = A2_2
    L20_2 = L20_2(L21_2)
    L19_2 = L19_2 + L20_2
    L20_2 = L0_1
    L21_2 = A3_2
    L20_2, L21_2, L22_2 = L20_2(L21_2)
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L15_2, L16_2, L17_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L14_2 = L17_2
    L13_2 = L16_2
    L12_2 = L15_2
  elseif "front-top" == A0_2 then
    L15_2 = table
    L15_2 = L15_2.unpack
    L16_2 = GetOffsetFromEntityInWorldCoords
    L17_2 = L4_2
    L18_2 = L0_1
    L19_2 = A1_2
    L18_2 = L18_2(L19_2)
    L19_2 = L9_2 / 2
    L20_2 = L0_1
    L21_2 = A2_2
    L20_2 = L20_2(L21_2)
    L19_2 = L19_2 + L20_2
    L20_2 = L0_1
    L21_2 = A3_2
    L20_2 = L20_2(L21_2)
    L20_2 = L11_2 + L20_2
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
    L15_2, L16_2, L17_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L14_2 = L17_2
    L13_2 = L16_2
    L12_2 = L15_2
  elseif "back" == A0_2 then
    L15_2 = table
    L15_2 = L15_2.unpack
    L16_2 = GetOffsetFromEntityInWorldCoords
    L17_2 = L4_2
    L18_2 = L0_1
    L19_2 = A1_2
    L18_2 = L18_2(L19_2)
    L19_2 = L9_2 / 2
    L19_2 = -L19_2
    L20_2 = L0_1
    L21_2 = A2_2
    L20_2 = L20_2(L21_2)
    L19_2 = L19_2 + L20_2
    L20_2 = L0_1
    L21_2 = A3_2
    L20_2, L21_2, L22_2 = L20_2(L21_2)
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L15_2, L16_2, L17_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L14_2 = L17_2
    L13_2 = L16_2
    L12_2 = L15_2
  elseif "back-top" == A0_2 then
    L15_2 = table
    L15_2 = L15_2.unpack
    L16_2 = GetOffsetFromEntityInWorldCoords
    L17_2 = L4_2
    L18_2 = L0_1
    L19_2 = A1_2
    L18_2 = L18_2(L19_2)
    L19_2 = L9_2 / 2
    L19_2 = -L19_2
    L20_2 = L0_1
    L21_2 = A2_2
    L20_2 = L20_2(L21_2)
    L19_2 = L19_2 + L20_2
    L20_2 = L11_2 / 2
    L21_2 = L0_1
    L22_2 = A3_2
    L21_2 = L21_2(L22_2)
    L20_2 = L20_2 + L21_2
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
    L15_2, L16_2, L17_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L14_2 = L17_2
    L13_2 = L16_2
    L12_2 = L15_2
  elseif "left" == A0_2 then
    L15_2 = table
    L15_2 = L15_2.unpack
    L16_2 = GetOffsetFromEntityInWorldCoords
    L17_2 = L4_2
    L18_2 = L10_2 / 2
    L18_2 = -L18_2
    L19_2 = L0_1
    L20_2 = A1_2
    L19_2 = L19_2(L20_2)
    L18_2 = L18_2 + L19_2
    L19_2 = L0_1
    L20_2 = A2_2
    L19_2 = L19_2(L20_2)
    L20_2 = L0_1
    L21_2 = A3_2
    L20_2, L21_2, L22_2 = L20_2(L21_2)
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L15_2, L16_2, L17_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L14_2 = L17_2
    L13_2 = L16_2
    L12_2 = L15_2
  elseif "right" == A0_2 then
    L15_2 = table
    L15_2 = L15_2.unpack
    L16_2 = GetOffsetFromEntityInWorldCoords
    L17_2 = L4_2
    L18_2 = L10_2 / 2
    L19_2 = L0_1
    L20_2 = A1_2
    L19_2 = L19_2(L20_2)
    L18_2 = L18_2 + L19_2
    L19_2 = L0_1
    L20_2 = A2_2
    L19_2 = L19_2(L20_2)
    L20_2 = L0_1
    L21_2 = A3_2
    L20_2, L21_2, L22_2 = L20_2(L21_2)
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L15_2, L16_2, L17_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L14_2 = L17_2
    L13_2 = L16_2
    L12_2 = L15_2
  elseif "middle" == A0_2 then
    L15_2 = table
    L15_2 = L15_2.unpack
    L16_2 = GetOffsetFromEntityInWorldCoords
    L17_2 = L4_2
    L18_2 = L0_1
    L19_2 = A1_2
    L18_2 = L18_2(L19_2)
    L19_2 = L0_1
    L20_2 = A2_2
    L19_2 = L19_2(L20_2)
    L20_2 = L11_2 / 2
    L21_2 = L0_1
    L22_2 = A3_2
    L21_2 = L21_2(L22_2)
    L20_2 = L20_2 + L21_2
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
    L15_2, L16_2, L17_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L14_2 = L17_2
    L13_2 = L16_2
    L12_2 = L15_2
  end
  L15_2 = SetCamCoord
  L16_2 = cam
  L17_2 = L12_2
  L18_2 = L13_2
  L19_2 = L14_2
  L15_2(L16_2, L17_2, L18_2, L19_2)
  L15_2 = PointCamAtCoord
  L16_2 = cam
  L17_2 = GetOffsetFromEntityInWorldCoords
  L18_2 = L4_2
  L19_2 = 0
  L20_2 = 0
  L21_2 = L0_1
  L22_2 = 0
  L21_2, L22_2 = L21_2(L22_2)
  L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L15_2 = RenderScriptCams
  L16_2 = 1
  L17_2 = 1
  L18_2 = 1000
  L19_2 = 0
  L20_2 = 0
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if "parachoque-dianteiro" == A0_2 or "grelha" == A0_2 or "arch-cover" == A0_2 then
    L1_2 = L2_1
    L2_2 = "front"
    L3_2 = -0.6
    L4_2 = 1.5
    L5_2 = 0.4
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "cor-primaria" == A0_2 or "cor-secundaria" == A0_2 or "decal" == A0_2 then
    L1_2 = L2_1
    L2_2 = "middle"
    L3_2 = -2.6
    L4_2 = 2.5
    L5_2 = 1.4
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "parachoque-traseiro" == A0_2 or "escapamento" == A0_2 then
    L1_2 = L2_1
    L2_2 = "back"
    L3_2 = -0.5
    L4_2 = -1.5
    L5_2 = 0.2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "cap\195\180" == A0_2 then
    L1_2 = L2_1
    L2_2 = "front-top"
    L3_2 = -0.5
    L4_2 = 1.3
    L5_2 = 1.0
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "teto" == A0_2 then
    L1_2 = L2_1
    L2_2 = "middle"
    L3_2 = -2.2
    L4_2 = 2
    L5_2 = 1.5
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "vidro" == A0_2 then
    L1_2 = L2_1
    L2_2 = "middle"
    L3_2 = -2.0
    L4_2 = 2
    L5_2 = 0.5
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "farol" == A0_2 or "xenon-colors" == A0_2 then
    L1_2 = L2_1
    L2_2 = "front"
    L3_2 = -0.6
    L4_2 = 1.3
    L5_2 = 0.6
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "placa" == A0_2 then
    L1_2 = L2_1
    L2_2 = "back"
    L3_2 = 0
    L4_2 = -1
    L5_2 = 0.2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "para-lama" == A0_2 then
    L1_2 = L2_1
    L2_2 = "left"
    L3_2 = -1.8
    L4_2 = -1.3
    L5_2 = 0.7
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "saias" == A0_2 then
    L1_2 = L2_1
    L2_2 = "left"
    L3_2 = -1.8
    L4_2 = -1.3
    L5_2 = 0.7
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "aerof\195\179lio" == A0_2 then
    L1_2 = L2_1
    L2_2 = "back"
    L3_2 = 0.5
    L4_2 = -1.6
    L5_2 = 1.3
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "traseira" == A0_2 then
    L1_2 = L1_1
    L2_2 = "wheel_lr"
    L3_2 = -1.4
    L4_2 = 0
    L5_2 = 0.3
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "dianteira" == A0_2 or "wheel-accessories" == A0_2 or "wheel-colors" == A0_2 or "sport" == A0_2 or "muscle" == A0_2 or "lowrider" == A0_2 or "highend" == A0_2 or "suv" == A0_2 or "offroad" == A0_2 or "tuner" == A0_2 then
    L1_2 = L1_1
    L2_2 = "wheel_lf"
    L3_2 = -1.4
    L4_2 = 0
    L5_2 = 0.3
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "neon" == A0_2 or "neon-colors" == A0_2 or "suspens\195\163o" == A0_2 then
    L1_2 = IsThisModelABike
    L2_2 = GetEntityModel
    L3_2 = vehicle
    L3_2 = L3_2.entity
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = L1_1
      L2_2 = "neon_l"
      L3_2 = -2.0
      L4_2 = 2.0
      L5_2 = 0.4
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  elseif "janela" == A0_2 or "ornaments" == A0_2 or "dashboard" == A0_2 or "dials" == A0_2 or "seats" == A0_2 or "roll-cage" == A0_2 then
    L1_2 = L2_1
    L2_2 = "back-top"
    L3_2 = 0.0
    L4_2 = 4.0
    L5_2 = 0.7
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif "doors" == A0_2 then
    L1_2 = SetVehicleDoorOpen
    L2_2 = vehicle
    L2_2 = L2_2.entity
    L3_2 = 0
    L4_2 = 0
    L5_2 = 0
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = SetVehicleDoorOpen
    L2_2 = vehicle
    L2_2 = L2_2.entity
    L3_2 = 1
    L4_2 = 0
    L5_2 = 0
    L1_2(L2_2, L3_2, L4_2, L5_2)
    doorsopen = true
  elseif "interior" == A0_2 or "doors" == A0_2 then
    L1_2 = SetFollowVehicleCamViewMode
    L2_2 = 4
    L1_2(L2_2)
  else
    L1_2 = IsCamActive
    L2_2 = cam
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = ResetCam
      L1_2()
    else
      L1_2 = doorsopen
      if L1_2 then
        L1_2 = SetVehicleDoorShut
        L2_2 = vehicle
        L2_2 = L2_2.entity
        L3_2 = 0
        L4_2 = 0
        L1_2(L2_2, L3_2, L4_2)
        L1_2 = SetVehicleDoorShut
        L2_2 = vehicle
        L2_2 = L2_2.entity
        L3_2 = 1
        L4_2 = 0
        L1_2(L2_2, L3_2, L4_2)
        L1_2 = SetVehicleDoorShut
        L2_2 = vehicle
        L2_2 = L2_2.entity
        L3_2 = 4
        L4_2 = 0
        L1_2(L2_2, L3_2, L4_2)
        L1_2 = SetVehicleDoorShut
        L2_2 = vehicle
        L2_2 = L2_2.entity
        L3_2 = 5
        L4_2 = 0
        L1_2(L2_2, L3_2, L4_2)
        doorsopen = false
      end
    end
  end
end
camControl = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = SetCamCoord
  L1_2 = cam
  L2_2 = GetGameplayCamCoords
  L2_2, L3_2, L4_2, L5_2 = L2_2()
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = SetCamRot
  L1_2 = cam
  L2_2 = GetGameplayCamRot
  L3_2 = 2
  L2_2 = L2_2(L3_2)
  L3_2 = 2
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = RenderScriptCams
  L1_2 = 0
  L2_2 = 1
  L3_2 = 1000
  L4_2 = 1
  L5_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = SetCamActive
  L1_2 = gameplaycam
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = EnableGameplayCam
  L1_2 = true
  L0_2(L1_2)
  L0_2 = SetCamActive
  L1_2 = cam
  L2_2 = false
  L0_2(L1_2, L2_2)
end
ResetCam = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = SetNuiFocus
    L1_3 = false
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = ResetCam
    L0_3()
    L0_3 = true
    while L0_3 do
      L1_3 = vehicle
      L1_3 = L1_3.entity
      if not L1_3 then
        break
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 1
      L1_3(L2_3)
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = 49
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L0_3 = false
        L1_3 = SetNuiFocus
        L2_3 = true
        L3_3 = true
        L1_3(L2_3, L3_3)
        L1_3 = SendNUIMessage
        L2_3 = {}
        L3_3 = "handleFreecam"
        L4_3 = false
        L2_3[1] = L3_3
        L2_3[2] = L4_3
        L1_3(L2_3)
      end
    end
  end
  L1_2(L2_2)
end
freeCam = L3_1

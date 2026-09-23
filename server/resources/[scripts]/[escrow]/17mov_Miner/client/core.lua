local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = 0
L1_1 = {}
L2_1 = {}
L3_1 = {}
L2_1.SpawnedObjects = L3_1
Movement = L2_1
L2_1 = {}
Functions = L2_1
L2_1 = Functions
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
L2_1.Lerp = L3_1
L2_1 = Functions
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = math
  L2_2 = L2_2.random
  L2_2 = L2_2()
  L3_2 = A1_2 - A0_2
  L2_2 = L2_2 * L3_2
  L2_2 = A0_2 + L2_2
  return L2_2
end
L2_1.randomFloat = L3_1
L2_1 = Functions
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.sqrt
  L2_2 = A0_2.x
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2.y
  L4_2 = A0_2.y
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2.z
  L4_2 = A0_2.z
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L1_2 = L1_2(L2_2)
  if L1_2 > 0 then
    L2_2 = {}
    L3_2 = A0_2.x
    L3_2 = L3_2 / L1_2
    L2_2.x = L3_2
    L3_2 = A0_2.y
    L3_2 = L3_2 / L1_2
    L2_2.y = L3_2
    L3_2 = A0_2.z
    L3_2 = L3_2 / L1_2
    L2_2.z = L3_2
    return L2_2
  else
    L2_2 = {}
    L2_2.x = 0
    L2_2.y = 0
    L2_2.z = 0
    return L2_2
  end
end
L2_1.NormalizeVector3 = L3_1
L2_1 = Functions
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  L2_2 = {}
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
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.x = L3_2
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.y = L3_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.x
  L3_2 = L3_2(L4_2)
  L2_2.z = L3_2
  L3_2 = vec3
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L6_2 = L2_2.z
  return L3_2(L4_2, L5_2, L6_2)
end
L2_1.RotationToDirection = L3_1
L2_1 = Functions
function L3_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = true
  L1_2 = table
  L1_2 = L1_2.pack
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = ...
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2 = ""
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L0_2 then
      L0_2 = false
    else
      L9_2 = L2_2
      L10_2 = " "
      L9_2 = L9_2 .. L10_2
      L2_2 = L9_2
    end
    L9_2 = L2_2
    L10_2 = tostring
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L9_2 = L9_2 .. L10_2
    L2_2 = L9_2
  end
  L3_2 = print
  L4_2 = "^5[ERROR]:^1 "
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
end
L2_1.Error = L3_1
L2_1 = Functions
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = HasModelLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = RequestModel
  L2_2 = A0_2
  L1_2(L2_2)
  while true do
    L1_2 = HasModelLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
end
L2_1.LoadModel = L3_1
L2_1 = Functions
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = HasAnimDictLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = RequestAnimDict
  L2_2 = A0_2
  L1_2(L2_2)
  while true do
    L1_2 = HasAnimDictLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
end
L2_1.RequestAnimDict = L3_1
L2_1 = Functions
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = type
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if "string" == L6_2 then
    L6_2 = GetHashKey
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    A0_2 = L6_2 or A0_2
    if not L6_2 then
    end
  end
  L6_2 = IsModelInCdimage
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = Functions
    L6_2 = L6_2.Error
    L7_2 = "CAN'T SPAWN OBJECT BECAUSE MODEL DOESNT EXIST: "
    L8_2 = A0_2
    L7_2 = L7_2 .. L8_2
    L6_2(L7_2)
    return
  end
  if A2_2 then
    L6_2 = type
    L7_2 = A2_2
    L6_2 = L6_2(L7_2)
    if "table" == L6_2 then
      L6_2 = vec3
      L7_2 = A2_2.x
      L8_2 = A2_2.y
      L9_2 = A2_2.z
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      A2_2 = L6_2 or A2_2
      if not L6_2 then
      end
    end
  else
    L6_2 = GetEntityCoords
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    A2_2 = L6_2
  end
  A3_2 = nil == A3_2 or A3_2
  A4_2 = true == A4_2 or A4_2
  L6_2 = Functions
  L6_2 = L6_2.LoadModel
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = CreateObjectNoOffset
  L7_2 = A0_2
  L8_2 = A2_2.x
  L9_2 = A2_2.y
  L10_2 = A2_2.z
  L11_2 = A3_2
  L12_2 = true
  L13_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = type
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  if "vector4" == L7_2 then
    L7_2 = SetEntityHeading
    L8_2 = L6_2
    L9_2 = A2_2.w
    L7_2(L8_2, L9_2)
  end
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = Movement
  L8_2 = L8_2.SpawnedObjects
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L6_2
  L9_2 = A4_2
  L7_2(L8_2, L9_2)
  L7_2 = SetEntityLodDist
  L8_2 = L6_2
  L9_2 = 500
  L7_2(L8_2, L9_2)
  if A1_2 then
    L7_2 = A1_2
    L8_2 = L6_2
    L7_2(L8_2)
  end
end
L2_1.SpawnObject = L3_1
L2_1 = Functions
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if nil == A0_2 then
    L1_2 = Functions
    L1_2 = L1_2.Error
    L2_2 = "ATTEMPTED TO DELETE A NIL OBJECT"
    L1_2(L2_2)
    return
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 then
    L1_2 = Functions
    L1_2 = L1_2.Error
    L2_2 = "ATTEMPTED TO DELETE A "
    L3_2 = type
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = " TYPE: "
    L5_2 = A0_2
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
    L1_2(L2_2)
    return
  end
  L1_2 = DetachEntity
  L2_2 = A0_2
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetEntityAsMissionEntity
  L2_2 = A0_2
  L3_2 = false
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DeleteObject
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = Movement
  L2_2 = L2_2.SpawnedObjects
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 == A0_2 then
      L6_2 = nil
      return
    end
  end
end
L2_1.DeleteEntity = L3_1
L2_1 = Functions
function L3_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = {}
  L1_2 = table
  L1_2 = L1_2.pack
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = ...
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = ipairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L0_2
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
  end
  return L0_2
end
L2_1.TableJoin = L3_1
L2_1 = Functions
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2.z
  L4_2 = A1_2.z
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  return L2_2
end
L2_1.DotProduct = L3_1
L2_1 = Functions
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  if "table" == L1_2 then
    L3_2 = {}
    L2_2 = L3_2
    L3_2 = next
    L4_2 = A0_2
    L5_2 = nil
    L6_2 = nil
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = Functions
      L9_2 = L9_2.DeepCopy
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L10_2 = Functions
      L10_2 = L10_2.DeepCopy
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L2_2[L9_2] = L10_2
    end
    L3_2 = setmetatable
    L4_2 = L2_2
    L5_2 = Functions
    L5_2 = L5_2.DeepCopy
    L6_2 = getmetatable
    L7_2 = A0_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L2_2 = A0_2
  end
  return L2_2
end
L2_1.DeepCopy = L3_1
L2_1 = Functions
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L9_2 = math
  L9_2 = L9_2.sin
  L10_2 = math
  L10_2 = L10_2.rad
  L11_2 = A3_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2(L11_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L10_2 = math
  L10_2 = L10_2.cos
  L11_2 = math
  L11_2 = L11_2.rad
  L12_2 = A3_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2(L12_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L11_2 = math
  L11_2 = L11_2.sin
  L12_2 = math
  L12_2 = L12_2.rad
  L13_2 = A4_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L12_2(L13_2)
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L12_2 = math
  L12_2 = L12_2.cos
  L13_2 = math
  L13_2 = L13_2.rad
  L14_2 = A4_2
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L13_2(L14_2)
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L13_2 = math
  L13_2 = L13_2.sin
  L14_2 = math
  L14_2 = L14_2.rad
  L15_2 = A5_2
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L14_2(L15_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L14_2 = math
  L14_2 = L14_2.cos
  L15_2 = math
  L15_2 = L15_2.rad
  L16_2 = A5_2
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L15_2(L16_2)
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  A6_2 = A6_2 - A0_2
  A7_2 = A7_2 - A1_2
  A8_2 = A8_2 - A2_2
  L15_2 = A7_2 * L10_2
  L16_2 = A8_2 * L9_2
  L15_2 = L15_2 - L16_2
  L16_2 = A7_2 * L9_2
  L17_2 = A8_2 * L10_2
  L16_2 = L16_2 + L17_2
  L17_2 = L15_2
  A8_2 = L16_2
  A7_2 = L17_2
  L17_2 = A6_2 * L12_2
  L18_2 = A8_2 * L11_2
  L17_2 = L17_2 + L18_2
  L18_2 = A8_2 * L12_2
  L19_2 = A6_2 * L11_2
  L16_2 = L18_2 - L19_2
  L18_2 = L17_2
  A8_2 = L16_2
  A6_2 = L18_2
  L18_2 = A6_2 * L14_2
  L19_2 = A7_2 * L13_2
  L17_2 = L18_2 - L19_2
  L18_2 = A6_2 * L13_2
  L19_2 = A7_2 * L14_2
  L15_2 = L18_2 + L19_2
  L18_2 = L17_2
  A7_2 = L15_2
  A6_2 = L18_2
  A6_2 = A6_2 + A0_2
  A7_2 = A7_2 + A1_2
  A8_2 = A8_2 + A2_2
  L18_2 = vector3
  L19_2 = A6_2
  L20_2 = A7_2
  L21_2 = A8_2
  return L18_2(L19_2, L20_2, L21_2)
end
L2_1.RotateAroundPoint = L3_1
L2_1 = Functions
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = GetGameTimer
    L8_2 = L8_2()
    L9_2 = type
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if "number" == L9_2 then
      while true do
        L9_2 = NetworkDoesNetworkIdExist
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          break
        end
        L9_2 = GetGameTimer
        L9_2 = L9_2()
        L9_2 = L9_2 - L8_2
        L10_2 = 1500
        if L9_2 > L10_2 then
          L9_2 = Functions
          L9_2 = L9_2.Error
          L10_2 = string
          L10_2 = L10_2.format
          L11_2 = "Cloudn't find entity with NetId: %s (%s)"
          L12_2 = L7_2
          L13_2 = L6_2
          L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
          L9_2(L10_2, L11_2, L12_2, L13_2)
        end
        L9_2 = Wait
        L10_2 = 100
        L9_2(L10_2)
      end
      while true do
        L9_2 = L1_2[L6_2]
        if L9_2 then
          L9_2 = L1_2[L6_2]
          if L9_2 ~= L7_2 then
            goto lbl_81
          end
        end
        L9_2 = NetToObj
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        L1_2[L6_2] = L9_2
        L9_2 = GetGameTimer
        L9_2 = L9_2()
        L9_2 = L9_2 - L8_2
        L10_2 = 1500
        if L9_2 > L10_2 then
          L9_2 = Functions
          L9_2 = L9_2.Error
          L10_2 = string
          L10_2 = L10_2.format
          L11_2 = "Cloudn't find entity with NetId: %s (%s)"
          L12_2 = L7_2
          L13_2 = L6_2
          L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
          L9_2(L10_2, L11_2, L12_2, L13_2)
        end
        L9_2 = L1_2[L6_2]
        if L9_2 then
          L9_2 = L1_2[L6_2]
          if L9_2 ~= L7_2 then
            goto lbl_74
          end
        end
        L9_2 = Wait
        L10_2 = 100
        L9_2(L10_2)
        ::lbl_74::
      end
    else
      L9_2 = Functions
      L9_2 = L9_2.NetIdTableToEntity
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L1_2[L6_2] = L9_2
    end
    ::lbl_81::
  end
  return L1_2
end
L2_1.NetIdTableToEntity = L3_1
L2_1 = {}
L3_1 = Functions
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = Config
  L4_2 = L4_2.SoundVolumeMultipler
  if not L4_2 then
    L4_2 = 1.0
  end
  L4_2 = A1_2 * L4_2
  L5_2 = L2_1
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  if A3_2 then
    L5_2 = A3_2
  end
  L6_2 = L2_1
  L6_2[L5_2] = true
  L6_2 = SendNUIMessage
  L7_2 = {}
  L7_2.action = "playSound"
  L7_2.id = L5_2
  L7_2.audioFile = A0_2
  L7_2.volume = L4_2
  L7_2.looped = A2_2
  L6_2(L7_2)
end
L3_1.PlaySound = L4_1
L3_1 = Functions
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L7_2 = GetEntityCoords
  L8_2 = PlayerPedId
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2()
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = DoesEntityExist
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L8_2 = GetEntityCoords
    L9_2 = A2_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      goto lbl_16
    end
  end
  L8_2 = A2_2
  ::lbl_16::
  L9_2 = L7_2 - L8_2
  L9_2 = #L9_2
  if A3_2 <= L9_2 then
    return
  end
  L9_2 = Config
  L9_2 = L9_2.SoundVolumeMultipler
  if not L9_2 then
    L9_2 = 1.0
  end
  L9_2 = A1_2 * L9_2
  L10_2 = L2_1
  L10_2 = #L10_2
  L10_2 = L10_2 + 1
  if A6_2 then
    L10_2 = A6_2
  end
  L11_2 = L2_1
  L11_2[L10_2] = true
  L11_2 = Functions
  L11_2 = L11_2.UpdateSound
  L12_2 = L10_2
  L11_2(L12_2)
  if A4_2 then
    L11_2 = A2_2
    L12_2 = GetEntityCoords
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    A2_2 = L12_2
    L12_2 = nil
    L13_2 = nil
    L14_2 = nil
    L15_2 = CreateThread
    function L16_2()
      local L0_3, L1_3, L2_3
      L0_3 = Wait
      L1_3 = 200
      L0_3(L1_3)
      while true do
        L1_3 = L10_2
        L0_3 = L2_1
        L0_3 = L0_3[L1_3]
        if not L0_3 then
          break
        end
        L0_3 = GetEntityCoords
        L1_3 = L11_2
        L0_3 = L0_3(L1_3)
        A2_2 = L0_3
        L0_3 = A2_2
        if nil ~= L0_3 then
          L0_3 = L12_2
          L1_3 = A2_2.x
          if L0_3 == L1_3 then
            L0_3 = L13_2
            L1_3 = A2_2.y
            if L0_3 == L1_3 then
              L0_3 = L14_2
              L1_3 = A2_2.z
              if L0_3 == L1_3 then
                goto lbl_47
              end
            end
          end
          L0_3 = SendNUIMessage
          L1_3 = {}
          L1_3.action = "updateSoundCoords"
          L2_3 = L10_2
          L1_3.id = L2_3
          L2_3 = A2_2.x
          L1_3.x = L2_3
          L2_3 = A2_2.y
          L1_3.y = L2_3
          L2_3 = A2_2.z
          L1_3.z = L2_3
          L0_3(L1_3)
          L0_3 = A2_2.x
          L1_3 = A2_2.y
          L2_3 = A2_2.z
          L14_2 = L2_3
          L13_2 = L1_3
          L12_2 = L0_3
        end
        ::lbl_47::
        L0_3 = Wait
        L1_3 = 100
        L0_3(L1_3)
      end
    end
    L15_2(L16_2)
  end
  L11_2 = SendNUIMessage
  L12_2 = {}
  L12_2.action = "playSound3D"
  L12_2.id = L10_2
  L12_2.audioFile = A0_2
  L12_2.volume = L9_2
  L13_2 = A2_2.x
  L12_2.x = L13_2
  L13_2 = A2_2.y
  L12_2.y = L13_2
  L13_2 = A2_2.z
  L12_2.z = L13_2
  L12_2.maxDistance = A3_2
  L12_2.looped = A5_2
  L11_2(L12_2)
end
L3_1.PlayAudioAtCoords = L4_1
L3_1 = Functions
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "stopSound"
  L2_2.id = A0_2
  L1_2(L2_2)
end
L3_1.StopSound = L4_1
L3_1 = RegisterNUICallback
L4_1 = "soundsEnd"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2.id
  L2_2 = L2_1
  L2_2[L3_2] = nil
end
L3_1(L4_1, L5_1)
L3_1 = Functions
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = nil
    L1_3 = nil
    L2_3 = nil
    L3_3 = nil
    while true do
      L5_3 = A0_2
      L4_3 = L2_1
      L4_3 = L4_3[L5_3]
      if nil == L4_3 then
        break
      end
      L4_3 = PlayerPedId
      L4_3 = L4_3()
      L5_3 = GetEntityCoords
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      L6_3 = GetEntityHeading
      L7_3 = L4_3
      L6_3 = L6_3(L7_3)
      L7_3 = L5_3.x
      if L0_3 == L7_3 then
        L7_3 = L5_3.y
        if L1_3 == L7_3 then
          L7_3 = L5_3.z
          if L2_3 == L7_3 and L3_3 == L6_3 then
            goto lbl_47
          end
        end
      end
      L7_3 = SendNUIMessage
      L8_3 = {}
      L8_3.action = "updateSound"
      L9_3 = A0_2
      L8_3.id = L9_3
      L9_3 = L5_3.x
      L8_3.x = L9_3
      L9_3 = L5_3.y
      L8_3.y = L9_3
      L9_3 = L5_3.z
      L8_3.z = L9_3
      L8_3.h = L6_3
      L7_3(L8_3)
      L7_3 = L5_3.x
      L8_3 = L5_3.y
      L9_3 = L5_3.z
      L3_3 = L6_3
      L2_3 = L9_3
      L1_3 = L8_3
      L0_3 = L7_3
      ::lbl_47::
      L7_3 = pairs
      L8_3 = L2_1
      L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
      for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
        if not L12_3 then
          L13_3 = L2_1
          L13_3[L11_3] = true
        end
      end
      L7_3 = Wait
      L8_3 = 10
      L7_3(L8_3)
    end
  end
  L1_2(L2_2)
end
L3_1.UpdateSound = L4_1
L3_1 = Functions
function L4_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1
  L2_2 = L2_2 + 1
  L0_1 = L2_2
  L2_2 = L0_1
  L3_2 = L1_1
  L4_2 = {}
  L3_2[A0_2] = L4_2
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  L3_2[L2_2] = A1_2
  L3_2 = TriggerServerEvent
  L4_2 = "17mov_Callbacks:GetResponse"
  L5_2 = GetCurrentResourceName
  L5_2 = L5_2()
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2
  L6_2 = L2_2
  L7_2 = ...
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L3_1.TriggerServerCallback = L4_1
L3_1 = RegisterNetEvent
L4_1 = "17mov_Callbacks:receiveData"
L5_1 = GetCurrentResourceName
L5_1 = L5_1()
L4_1 = L4_1 .. L5_1
function L5_1(A0_2, A1_2, ...)
  local L2_2, L3_2
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L1_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = ...
  L2_2(L3_2)
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L1_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      L2_2 = L1_1
      L2_2 = L2_2[A0_2]
      L2_2[A1_2] = nil
    end
  end
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L1_1
    L2_2 = L2_2[A0_2]
    L2_2 = #L2_2
    if 0 == L2_2 then
      L2_2 = L1_1
      L2_2[A0_2] = nil
    end
  end
end
L3_1(L4_1, L5_1)
L3_1 = AddEventHandler
L4_1 = "onResourceStop"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = pairs
  L2_2 = Movement
  L2_2 = L2_2.SpawnedObjects
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L7_2 = pairs
      L8_2 = L6_2
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = type
        L14_2 = L6_2
        L13_2 = L13_2(L14_2)
        if "number" == L13_2 then
          L13_2 = DeleteEntity
          L14_2 = L6_2
          L13_2(L14_2)
        end
      end
    else
      L7_2 = type
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if "number" == L7_2 then
        L7_2 = DoesEntityExist
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = DeleteEntity
          L8_2 = L6_2
          L7_2(L8_2)
        end
      end
    end
  end
end
L3_1(L4_1, L5_1)

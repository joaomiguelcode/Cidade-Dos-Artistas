local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Wait
  L1_2 = 2000
  L0_2(L1_2)
  L0_2 = Config
  L0_2 = L0_2.TextCustomFont
  L0_2 = L0_2.UseCustomFont
  if L0_2 then
    L0_2 = RegisterFontFile
    L1_2 = Config
    L1_2 = L1_2.TextCustomFont
    L1_2 = L1_2.FontName
    L0_2(L1_2)
    L0_2 = Config
    L1_2 = RegisterFontId
    L2_2 = Config
    L2_2 = L2_2.TextCustomFont
    L2_2 = L2_2.FontName
    L1_2 = L1_2(L2_2)
    L0_2.TextFont = L1_2
  end
end
L0_1(L1_1)
L0_1 = {}
Drones = L0_1
L0_1 = {}
Instructional = L0_1
L0_1 = {}
Scaleforms = L0_1
L0_1 = {}
Objects = L0_1
L0_1 = Drones
L1_1 = {}
L2_1 = GetHashKey
L3_1 = "prop_npc_phone_02"
L2_1 = L2_1(L3_1)
L1_1.phone = L2_1
L2_1 = GetHashKey
L3_1 = "ch_prop_casino_drone_02a"
L2_1 = L2_1(L3_1)
L1_1.drone = L2_1
L0_1.SceneModels = L1_1
L0_1 = Drones
L1_1 = {}
L2_1 = {}
L3_1 = "anim_heist@hs3f@ig1_hack_keypad@arcade@male@"
L4_1 = "hack_loop_var_01"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.phone = L2_1
L2_1 = {}
L3_1 = "pickup_object"
L4_1 = "pickup_low"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.drone = L2_1
L0_1.SceneAnimations = L1_1
L0_1 = Drones
L0_1.DroneCamScaleforms = true
L0_1 = Drones
L0_1.DroneInstructionalButtons = true
L0_1 = Drones
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.DevDebug
  if L1_2 then
    L1_2 = print
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
L0_1.Debug = L1_1
L0_1 = Instructional
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Scaleforms
  L0_2 = L0_2.LoadMovie
  L1_2 = "INSTRUCTIONAL_BUTTONS"
  L0_2 = L0_2(L1_2)
  L1_2 = Scaleforms
  L1_2 = L1_2.PopVoid
  L2_2 = L0_2
  L3_2 = "CLEAR_ALL"
  L1_2(L2_2, L3_2)
  L1_2 = Scaleforms
  L1_2 = L1_2.PopInt
  L2_2 = L0_2
  L3_2 = "SET_CLEAR_SPACE"
  L4_2 = 200
  L1_2(L2_2, L3_2, L4_2)
  return L0_2
end
L0_1.Init = L1_1
L0_1 = Instructional
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = PushScaleformMovieFunction
    L7_2 = A0_2
    L8_2 = "SET_DATA_SLOT"
    L6_2(L7_2, L8_2)
    L6_2 = PushScaleformMovieFunctionParameterInt
    L7_2 = L5_2 - 1
    L6_2(L7_2)
    L6_2 = 1
    L7_2 = A1_2[L5_2]
    L7_2 = L7_2.codes
    L7_2 = #L7_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = _ENV
      L11_2 = "ScaleformMovieMethodAddParamPlayerNameString"
      L10_2 = L10_2[L11_2]
      L11_2 = GetControlInstructionalButton
      L12_2 = 0
      L13_2 = A1_2[L5_2]
      L13_2 = L13_2.codes
      L13_2 = L13_2[L9_2]
      L14_2 = true
      L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2(L11_2, L12_2, L13_2, L14_2)
    end
    L6_2 = BeginTextCommandScaleformString
    L7_2 = "STRING"
    L6_2(L7_2)
    L6_2 = AddTextComponentScaleform
    L7_2 = A1_2[L5_2]
    L7_2 = L7_2.text
    L6_2(L7_2)
    L6_2 = EndTextCommandScaleformString
    L6_2()
    L6_2 = PopScaleformMovieFunctionVoid
    L6_2()
  end
  L2_2 = Scaleforms
  L2_2 = L2_2.PopVoid
  L3_2 = A0_2
  L4_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  L2_2(L3_2, L4_2)
end
L0_1.SetControls = L1_1
L0_1 = Instructional
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Instructional
  L1_2 = L1_2.Init
  L1_2 = L1_2()
  L2_2 = Instructional
  L2_2 = L2_2.SetControls
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  return L1_2
end
L0_1.Create = L1_1
L0_1 = Scaleforms
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = RequestScaleformMovie
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  while true do
    L2_2 = HasScaleformMovieLoaded
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  return L1_2
end
L0_1.LoadMovie = L1_1
L0_1 = Scaleforms
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = RequestScaleformMovieInteractive
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  while true do
    L2_2 = HasScaleformMovieLoaded
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  return L1_2
end
L0_1.LoadInteractive = L1_1
L0_1 = Scaleforms
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = SetScaleformMovieAsNoLongerNeeded
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.UnloadMovie = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = HasThisAdditionalTextLoaded
    L7_2 = A0_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = ClearAdditionalText
      L7_2 = L5_2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = RequestAdditionalText
      L7_2 = A0_2
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      while true do
        L6_2 = HasThisAdditionalTextLoaded
        L7_2 = A0_2
        L8_2 = L5_2
        L6_2 = L6_2(L7_2, L8_2)
        if L6_2 then
          break
        end
        L6_2 = Wait
        L7_2 = 0
        L6_2(L7_2)
      end
    end
  end
end
L0_1.LoadAdditionalText = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = PushScaleformMovieFunction
  L3_2 = A0_2
  L4_2 = "SET_LABELS"
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = BeginTextCommandScaleformString
    L8_2 = L6_2
    L7_2(L8_2)
    L7_2 = EndTextCommandScaleformString
    L7_2()
  end
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
end
L0_1.SetLabels = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = PushScaleformMovieFunction
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = {}
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = ...
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = Scaleforms
    L8_2 = L8_2.TrueType
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if "string" == L8_2 then
      L9_2 = _ENV
      L10_2 = "PushScaleformMovieFunctionParameterString"
      L9_2 = L9_2[L10_2]
      L10_2 = L7_2
      L9_2(L10_2)
    elseif "boolean" == L8_2 then
      L9_2 = PushScaleformMovieFunctionParameterBool
      L10_2 = L7_2
      L9_2(L10_2)
    elseif "int" == L8_2 then
      L9_2 = PushScaleformMovieFunctionParameterInt
      L10_2 = L7_2
      L9_2(L10_2)
    elseif "float" == L8_2 then
      L9_2 = PushScaleformMovieFunctionParameterFloat
      L10_2 = L7_2
      L9_2(L10_2)
    end
  end
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
end
L0_1.PopMulti = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = PushScaleformMovieFunction
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = PushScaleformMovieFunctionParameterFloat
  L4_2 = A2_2
  L3_2(L4_2)
  L3_2 = PopScaleformMovieFunctionVoid
  L3_2()
end
L0_1.PopFloat = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = PushScaleformMovieFunction
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = PushScaleformMovieFunctionParameterInt
  L4_2 = A2_2
  L3_2(L4_2)
  L3_2 = PopScaleformMovieFunctionVoid
  L3_2()
end
L0_1.PopInt = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = PushScaleformMovieFunction
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = PushScaleformMovieFunctionParameterBool
  L4_2 = A2_2
  L3_2(L4_2)
  L3_2 = PopScaleformMovieFunctionVoid
  L3_2()
end
L0_1.PopBool = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PushScaleformMovieFunction
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = PopScaleformMovieFunction
  return L2_2()
end
L0_1.PopRet = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PushScaleformMovieFunction
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
end
L0_1.PopVoid = L1_1
L0_1 = Scaleforms
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetScaleformMovieFunctionReturnBool
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.RetBool = L1_1
L0_1 = Scaleforms
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetScaleformMovieFunctionReturnInt
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.RetInt = L1_1
L0_1 = Scaleforms
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 then
    L1_2 = type
    L2_2 = A0_2
    return L1_2(L2_2)
  end
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = string
  L2_2 = L2_2.find
  L3_2 = L1_2
  L4_2 = "."
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = "float"
    return L2_2
  else
    L2_2 = "int"
    return L2_2
  end
end
L0_1.TrueType = L1_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = A1_2.x
  L2_2 = L2_2 * 2
  L3_2 = A1_2.y
  L3_2 = L3_2 * 2
  L4_2 = A1_2.z
  L4_2 = L4_2 * 2
  L5_2 = A1_2.x
  L5_2 = L5_2 * L2_2
  L6_2 = A1_2.y
  L6_2 = L6_2 * L3_2
  L7_2 = A1_2.z
  L7_2 = L7_2 * L4_2
  L8_2 = A1_2.x
  L8_2 = L8_2 * L3_2
  L9_2 = A1_2.x
  L9_2 = L9_2 * L4_2
  L10_2 = A1_2.y
  L10_2 = L10_2 * L4_2
  L11_2 = A1_2.w
  L11_2 = L11_2 * L2_2
  L12_2 = A1_2.w
  L12_2 = L12_2 * L3_2
  L13_2 = A1_2.w
  L13_2 = L13_2 * L4_2
  L14_2 = L6_2 + L7_2
  L15_2 = 1
  L14_2 = L15_2 - L14_2
  L15_2 = A0_2.x
  L14_2 = L14_2 * L15_2
  L15_2 = L8_2 - L13_2
  L16_2 = A0_2.y
  L15_2 = L15_2 * L16_2
  L14_2 = L14_2 + L15_2
  L15_2 = L9_2 + L12_2
  L16_2 = A0_2.z
  L15_2 = L15_2 * L16_2
  L14_2 = L14_2 + L15_2
  L15_2 = L8_2 + L13_2
  L16_2 = A0_2.x
  L15_2 = L15_2 * L16_2
  L16_2 = L5_2 + L7_2
  L17_2 = 1
  L16_2 = L17_2 - L16_2
  L17_2 = A0_2.y
  L16_2 = L16_2 * L17_2
  L15_2 = L15_2 + L16_2
  L16_2 = L10_2 - L11_2
  L17_2 = A0_2.z
  L16_2 = L16_2 * L17_2
  L15_2 = L15_2 + L16_2
  L16_2 = L9_2 - L12_2
  L17_2 = A0_2.x
  L16_2 = L16_2 * L17_2
  L17_2 = L10_2 + L11_2
  L18_2 = A0_2.y
  L17_2 = L17_2 * L18_2
  L16_2 = L16_2 + L17_2
  L17_2 = L5_2 + L6_2
  L18_2 = 1
  L17_2 = L18_2 - L17_2
  L18_2 = A0_2.z
  L17_2 = L17_2 * L18_2
  L16_2 = L16_2 + L17_2
  L17_2 = vector3
  L18_2 = L14_2
  L19_2 = L15_2
  L20_2 = L16_2
  L17_2 = L17_2(L18_2, L19_2, L20_2)
  A0_2 = L17_2
  return A0_2
end
V3MulQuat = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    A0_2 = A0_2 * A1_2
  else
    L2_2 = V3MulQuat
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    A0_2 = L2_2
  end
  return A0_2
end
V3Mul = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = vector3
  L3_2 = A0_2.x
  L3_2 = L3_2 / A1_2
  L4_2 = A0_2.y
  L4_2 = L4_2 / A1_2
  L5_2 = A0_2.z
  L5_2 = L5_2 / A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2 = L2_2
  return A0_2
end
V3Div = L0_1
function L0_1(A0_2)
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
  return L1_2(L2_2)
end
V3Magnitude = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = V3Magnitude
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if 1 == L1_2 then
    return A0_2
  else
    L2_2 = 1.0E-5
    if L1_2 > L2_2 then
      L2_2 = V3Div
      L3_2 = A0_2
      L4_2 = L1_2
      L2_2 = L2_2(L3_2, L4_2)
      A0_2 = L2_2
    else
      L2_2 = vector3
      L3_2 = 0.0
      L4_2 = 0.0
      L5_2 = 0.0
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      A0_2 = L2_2
    end
  end
  return A0_2
end
V3SetNormalize = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.x
  L2_2 = A0_2.x
  L1_2 = L1_2 * L2_2
  L2_2 = A0_2.y
  L3_2 = A0_2.y
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2.z
  L3_2 = A0_2.z
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 + L2_2
  return L1_2
end
V3SqrMagnitude = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = V3SqrMagnitude
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2 * A1_2
  if L2_2 > L3_2 then
    L2_2 = V3SetNormalize
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    A0_2 = L2_2
    L2_2 = V3Mul
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    A0_2 = L2_2
  end
  return A0_2
end
V3ClampMagnitude = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = math
  L1_2 = L1_2.rad
  L2_2 = A0_2.z
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = A0_2.x
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = vector3
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L5_2 = -L5_2
  L5_2 = L5_2 * L3_2
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 * L3_2
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L2_2
  L7_2, L8_2 = L7_2(L8_2)
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
RotAnglesToVec = L0_1
function L0_1(A0_2)
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
  return L2_2
end
RotationToDirection = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = GetCamRot
  L4_2 = A2_2
  L5_2 = 2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = GetCamCoord
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = RotationToDirection
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = {}
  L7_2 = L4_2.x
  L8_2 = L5_2.x
  L8_2 = L8_2 * A0_2
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L7_2 = L4_2.y
  L8_2 = L5_2.y
  L8_2 = L8_2 * A0_2
  L7_2 = L7_2 + L8_2
  L6_2.y = L7_2
  L7_2 = L4_2.z
  L8_2 = L5_2.z
  L8_2 = L8_2 * A0_2
  L7_2 = L7_2 + L8_2
  L6_2.z = L7_2
  L7_2 = GetShapeTestResult
  L8_2 = StartShapeTestRay
  L9_2 = L4_2.x
  L10_2 = L4_2.y
  L11_2 = L4_2.z
  L12_2 = L6_2.x
  L13_2 = L6_2.y
  L14_2 = L6_2.z
  L15_2 = -1
  L16_2 = A1_2
  L17_2 = 0
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L12_2 = L8_2
  L13_2 = L9_2
  L14_2 = L11_2
  return L12_2, L13_2, L14_2
end
RayCastGamePlayCamera = L0_1
L0_1 = Drones
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = RequestModel
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 + 5000
  while true do
    L2_2 = HasModelLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    if not (L1_2 > L2_2) then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = HasModelLoaded
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = Drones
    L2_2 = L2_2.Debug
    L3_2 = "^1Model not loaded!^0"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.LoadModel = L1_1
L0_1 = Drones
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = RequestAnimDict
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 + 5000
  while true do
    L2_2 = HasAnimDictLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    if not (L1_2 > L2_2) then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = HasAnimDictLoaded
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = Drones
    L2_2 = L2_2.Debug
    L3_2 = "^1Anim not loaded!^0"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.LoadDict = L1_1
L0_1 = Drones
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = Drones
  L3_2 = L3_2.LoadModel
  L4_2 = A1_2
  L3_2(L4_2)
  L3_2 = CreateObject
  L4_2 = A1_2
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L8_2 = A2_2
  L9_2 = true
  L10_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "vector4" == L4_2 then
    L4_2 = SetEntityHeading
    L5_2 = L3_2
    L6_2 = A0_2.w
    L4_2(L5_2, L6_2)
  end
  return L3_2
end
L0_1.CreateObject = L1_1
L0_1 = Drones
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L1_2 = {}
  L2_2 = pairs
  L3_2 = Drones
  L3_2 = L3_2.SceneModels
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = Drones
    L8_2 = L8_2.CreateObject
    L9_2 = L0_2
    L10_2 = L7_2
    L11_2 = 1
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L1_2[L6_2] = L8_2
    L8_2 = SetEntityAsMissionEntity
    L9_2 = L1_2[L6_2]
    L10_2 = true
    L11_2 = true
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = SetEntityCollision
    L9_2 = L1_2[L6_2]
    L10_2 = false
    L11_2 = false
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = SetEntityVisible
    L9_2 = L1_2[L6_2]
    L10_2 = false
    L8_2(L9_2, L10_2)
    L8_2 = SetModelAsNoLongerNeeded
    L9_2 = L7_2
    L8_2(L9_2)
  end
  return L1_2
end
L0_1.SceneObjects = L1_1
L0_1 = Drones
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = Config
  L1_2 = L1_2.DroneInitAnimations
  if L1_2 then
    L1_2 = Drones
    L1_2 = L1_2.Debug
    L2_2 = "Loading Drone Animations"
    L1_2(L2_2)
    L1_2 = Drones
    L1_2 = L1_2.LoadDict
    L2_2 = Drones
    L2_2 = L2_2.SceneAnimations
    L2_2 = L2_2.drone
    L2_2 = L2_2[1]
    L1_2(L2_2)
    L1_2 = Drones
    L1_2 = L1_2.LoadDict
    L2_2 = Drones
    L2_2 = L2_2.SceneAnimations
    L2_2 = L2_2.phone
    L2_2 = L2_2[1]
    L1_2(L2_2)
  end
  L1_2 = Drones
  L1_2 = L1_2.Debug
  L2_2 = "Creating Drone Object"
  L1_2(L2_2)
  L1_2 = Drones
  L1_2 = L1_2.SceneObjects
  L1_2 = L1_2()
  L2_2 = GetOffsetFromEntityInWorldCoords
  L3_2 = L0_2
  L4_2 = 0.0
  L5_2 = 0.6
  L6_2 = -0.85
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = Drones
  L3_2 = L3_2.Debug
  L4_2 = "Perform Drone Animations"
  L3_2(L4_2)
  L3_2 = TaskPlayAnim
  L4_2 = L0_2
  L5_2 = Drones
  L5_2 = L5_2.SceneAnimations
  L5_2 = L5_2.drone
  L5_2 = L5_2[1]
  L6_2 = Drones
  L6_2 = L6_2.SceneAnimations
  L6_2 = L6_2.drone
  L6_2 = L6_2[2]
  L7_2 = 3.0
  L8_2 = 3.0
  L9_2 = -1
  L10_2 = 1
  L11_2 = 1
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = Wait
  L4_2 = 600
  L3_2(L4_2)
  L3_2 = SetEntityCoords
  L4_2 = L1_2.drone
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityHeading
  L4_2 = L1_2.drone
  L5_2 = GetEntityHeading
  L6_2 = L0_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 + 180
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityVisible
  L4_2 = L1_2.drone
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = Wait
  L4_2 = 1000
  L3_2(L4_2)
  L3_2 = ClearPedTasks
  L4_2 = L0_2
  L3_2(L4_2)
  L3_2 = TaskPlayAnim
  L4_2 = L0_2
  L5_2 = Drones
  L5_2 = L5_2.SceneAnimations
  L5_2 = L5_2.phone
  L5_2 = L5_2[1]
  L6_2 = Drones
  L6_2 = L6_2.SceneAnimations
  L6_2 = L6_2.phone
  L6_2 = L6_2[2]
  L7_2 = 2.0
  L8_2 = 2.0
  L9_2 = -1
  L10_2 = 1
  L11_2 = 1
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = AttachEntityToEntity
  L4_2 = L1_2.phone
  L5_2 = L0_2
  L6_2 = GetPedBoneIndex
  L7_2 = L0_2
  L8_2 = 28422
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = true
  L14_2 = true
  L15_2 = false
  L16_2 = true
  L17_2 = 1
  L18_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = SetEntityVisible
  L4_2 = L1_2.phone
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = Wait
  L4_2 = 1000
  L3_2(L4_2)
  return L1_2
end
L0_1.PerformAnimation = L1_1
L0_1 = Drones
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CreateCamWithParams
  L2_2 = "DEFAULT_SCRIPTED_CAMERA"
  L3_2 = 0.0
  L4_2 = 0.0
  L5_2 = 0.0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 50.0
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = GetModelDimensions
  L3_2 = GetEntityModel
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2)
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = SetCamActive
  L5_2 = L1_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = RenderScriptCams
  L5_2 = true
  L6_2 = false
  L7_2 = 0
  L8_2 = true
  L9_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = AttachCamToEntity
  L5_2 = L1_2
  L6_2 = A0_2
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = L3_2.z
  L9_2 = -L9_2
  L9_2 = L9_2 / 2
  L10_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = SetFocusEntity
  L5_2 = A0_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = ClearTimecycleModifier
  L4_2()
  L4_2 = SetTimecycleModifier
  L5_2 = "eyeinthesky"
  L4_2(L5_2)
  L4_2 = SetTimecycleModifierStrength
  L5_2 = 0.1
  L4_2(L5_2)
  return L1_2
end
L0_1.CreateCam = L1_1
L0_1 = Drones
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = {}
  L4_2 = Config
  L4_2 = L4_2.Controls
  L4_2 = L4_2.Forward
  L5_2 = Config
  L5_2 = L5_2.Controls
  L5_2 = L5_2.Backward
  L6_2 = Config
  L6_2 = L6_2.Controls
  L6_2 = L6_2.Left
  L7_2 = Config
  L7_2 = L7_2.Controls
  L7_2 = L7_2.Right
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L2_2.codes = L3_2
  L3_2 = Config
  L3_2 = L3_2.Transition
  L3_2 = L3_2.direction
  L2_2.text = L3_2
  L3_2 = {}
  L4_2 = {}
  L5_2 = Config
  L5_2 = L5_2.Controls
  L5_2 = L5_2.Up
  L6_2 = Config
  L6_2 = L6_2.Controls
  L6_2 = L6_2.Down
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L3_2.codes = L4_2
  L4_2 = Config
  L4_2 = L4_2.Transition
  L4_2 = L4_2.height
  L3_2.text = L4_2
  L4_2 = {}
  L5_2 = {}
  L6_2 = 1
  L7_2 = 2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L4_2.codes = L5_2
  L5_2 = Config
  L5_2 = L5_2.Transition
  L5_2 = L5_2.camera
  L4_2.text = L5_2
  L5_2 = {}
  L6_2 = {}
  L7_2 = Config
  L7_2 = L7_2.Controls
  L7_2 = L7_2.ZoomOut
  L8_2 = Config
  L8_2 = L8_2.Controls
  L8_2 = L8_2.ZoomIn
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L5_2.codes = L6_2
  L6_2 = Config
  L6_2 = L6_2.Transition
  L6_2 = L6_2.zoom
  L5_2.text = L6_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L2_2 = A0_2.nightvision
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L3_2 = {}
    L4_2 = {}
    L5_2 = Config
    L5_2 = L5_2.Controls
    L5_2 = L5_2.Nightvision
    L4_2[1] = L5_2
    L3_2.codes = L4_2
    L4_2 = Config
    L4_2 = L4_2.Transition
    L4_2 = L4_2.nightvision
    L3_2.text = L4_2
    L1_2[L2_2] = L3_2
  end
  L2_2 = A0_2.heatvision
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L3_2 = {}
    L4_2 = {}
    L5_2 = Config
    L5_2 = L5_2.Controls
    L5_2 = L5_2.Heatvision
    L4_2[1] = L5_2
    L3_2.codes = L4_2
    L4_2 = Config
    L4_2 = L4_2.Transition
    L4_2 = L4_2.heatvision
    L3_2.text = L4_2
    L1_2[L2_2] = L3_2
  end
  L2_2 = A0_2.spotlight
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L3_2 = {}
    L4_2 = {}
    L5_2 = Config
    L5_2 = L5_2.Controls
    L5_2 = L5_2.Spotlight
    L4_2[1] = L5_2
    L3_2.codes = L4_2
    L4_2 = Config
    L4_2 = L4_2.Transition
    L4_2 = L4_2.spotlight
    L3_2.text = L4_2
    L1_2[L2_2] = L3_2
  end
  L2_2 = A0_2.scanner
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L3_2 = {}
    L4_2 = {}
    L5_2 = Config
    L5_2 = L5_2.Controls
    L5_2 = L5_2.Scanner
    L4_2[1] = L5_2
    L3_2.codes = L4_2
    L4_2 = Config
    L4_2 = L4_2.Transition
    L4_2 = L4_2.scan_player
    L3_2.text = L4_2
    L1_2[L2_2] = L3_2
  end
  L2_2 = A0_2.release
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L3_2 = {}
    L4_2 = {}
    L5_2 = Config
    L5_2 = L5_2.Controls
    L5_2 = L5_2.ReleaseDrone
    L4_2[1] = L5_2
    L3_2.codes = L4_2
    L4_2 = Config
    L4_2 = L4_2.Transition
    L4_2 = L4_2.release_drone
    L3_2.text = L4_2
    L1_2[L2_2] = L3_2
  end
  L2_2 = A0_2.soundboard
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L3_2 = {}
    L4_2 = {}
    L5_2 = Config
    L5_2 = L5_2.Controls
    L5_2 = L5_2.SoundBoard
    L4_2[1] = L5_2
    L3_2.codes = L4_2
    L4_2 = Config
    L4_2 = L4_2.Transition
    L4_2 = L4_2.soundboard
    L3_2.text = L4_2
    L1_2[L2_2] = L3_2
  end
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L3_2 = {}
  L4_2 = {}
  L5_2 = Config
  L5_2 = L5_2.Controls
  L5_2 = L5_2.Cancel
  L4_2[1] = L5_2
  L3_2.codes = L4_2
  L4_2 = Config
  L4_2 = L4_2.Transition
  L4_2 = L4_2.cancel
  L3_2.text = L4_2
  L1_2[L2_2] = L3_2
  return L1_2
end
L0_1.CreateControls = L1_1
L0_1 = Drones
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2, A13_2)
  local L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L14_2 = DoScreenFadeOut
  L15_2 = 500
  L14_2(L15_2)
  L14_2 = Drones
  L14_2 = L14_2.Debug
  L15_2 = "Init Drone Control"
  L14_2(L15_2)
  L14_2 = Drones
  L15_2 = {}
  L15_2.heatvision = A6_2
  L15_2.nightvision = A7_2
  L15_2.spotlight = A8_2
  L15_2.scanner = A10_2
  L15_2.release = A11_2
  L15_2.soundboard = A12_2
  L14_2.FullControls = L15_2
  L14_2 = Drones
  L15_2 = Instructional
  L15_2 = L15_2.Create
  L16_2 = Drones
  L16_2 = L16_2.CreateControls
  L17_2 = Drones
  L17_2 = L17_2.FullControls
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L16_2(L17_2)
  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  L14_2.ButtonsScaleform = L15_2
  L14_2 = Wait
  L15_2 = 500
  L14_2(L15_2)
  L14_2 = DeleteObject
  L15_2 = A13_2
  L14_2(L15_2)
  L14_2 = DeleteEntity
  L15_2 = A13_2
  L14_2(L15_2)
  L14_2 = Drones
  L14_2 = L14_2.SceneModels
  L14_2 = L14_2.drone
  L15_2 = PlayerPedId
  L15_2 = L15_2()
  L16_2 = GetEntityCoords
  L17_2 = L15_2
  L16_2 = L16_2(L17_2)
  L17_2 = Drones
  L17_2 = L17_2.CreateObject
  L18_2 = L16_2
  L19_2 = L14_2
  L20_2 = 1
  L17_2 = L17_2(L18_2, L19_2, L20_2)
  L18_2 = Drones
  L19_2 = Drones
  L19_2 = L19_2.CreateCam
  L20_2 = L17_2
  L19_2 = L19_2(L20_2)
  L18_2.DroneCam = L19_2
  L18_2 = Drones
  L18_2.DroneObj = L17_2
  L18_2 = SetEntityLodDist
  L19_2 = L17_2
  L20_2 = 9999
  L18_2(L19_2, L20_2)
  L18_2 = SetEntityAsMissionEntity
  L19_2 = L17_2
  L20_2 = true
  L21_2 = true
  L18_2(L19_2, L20_2, L21_2)
  L18_2 = SetObjectPhysicsParams
  L19_2 = L17_2
  L20_2 = 1.0
  L21_2 = 1.0
  L22_2 = 1.0
  L23_2 = 1.0
  L24_2 = 1.0
  L25_2 = 1.0
  L26_2 = 1.0
  L27_2 = 1.0
  L28_2 = 1.0
  L29_2 = 1.0
  L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  L18_2 = GetOffsetFromEntityInWorldCoords
  L19_2 = L15_2
  L20_2 = 0.0
  L21_2 = 0.6
  L22_2 = -0.5
  L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
  L19_2 = SetEntityCoords
  L20_2 = L17_2
  L21_2 = L18_2
  L19_2(L20_2, L21_2)
  L19_2 = SetEntityHeading
  L20_2 = L17_2
  L21_2 = GetEntityHeading
  L22_2 = L15_2
  L21_2 = L21_2(L22_2)
  L21_2 = L21_2 + 180
  L19_2(L20_2, L21_2)
  L19_2 = SetEntityVisible
  L20_2 = L17_2
  L21_2 = true
  L19_2(L20_2, L21_2)
  L19_2 = TriggerEvent
  L20_2 = "dz-drone:client:OnDroneSpawned"
  L21_2 = L17_2
  L19_2(L20_2, L21_2)
  L19_2 = GetEntityCoords
  L20_2 = L17_2
  L19_2 = L19_2(L20_2)
  L20_2 = GetEntityHeading
  L21_2 = L17_2
  L20_2 = L20_2(L21_2)
  L21_2 = GetEntityRotation
  L22_2 = L17_2
  L23_2 = 2
  L21_2 = L21_2(L22_2, L23_2)
  L22_2 = vector3
  L23_2 = 0.0
  L24_2 = 0.0
  L25_2 = 0.0
  L22_2 = L22_2(L23_2, L24_2, L25_2)
  L23_2 = vector3
  L24_2 = 0.0
  L25_2 = 0.0
  L26_2 = 0.0
  L23_2 = L23_2(L24_2, L25_2, L26_2)
  L24_2 = Drones
  L24_2 = L24_2.Debug
  L25_2 = "Loading Movie Scaleforms"
  L24_2(L25_2)
  L24_2 = Drones
  L25_2 = Scaleforms
  L25_2 = L25_2.LoadMovie
  L26_2 = "DRONE_CAM"
  L25_2 = L25_2(L26_2)
  L24_2.DroneScaleform = L25_2
  L24_2 = Scaleforms
  L24_2 = L24_2.PopBool
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_EMP_METER_IS_VISIBLE"
  L27_2 = 0
  L24_2(L25_2, L26_2, L27_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopBool
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_INFO_LIST_IS_VISIBLE"
  L27_2 = 0
  L24_2(L25_2, L26_2, L27_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopBool
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_SOUND_WAVE_IS_VISIBLE"
  L27_2 = 0
  L24_2(L25_2, L26_2, L27_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopBool
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_TRANQUILIZE_METER_IS_VISIBLE"
  L27_2 = 0
  L24_2(L25_2, L26_2, L27_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopBool
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_RETICLE_IS_VISIBLE"
  L27_2 = 1
  L24_2(L25_2, L26_2, L27_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopBool
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_HEADING_METER_IS_VISIBLE"
  L27_2 = 1
  L24_2(L25_2, L26_2, L27_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopBool
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_ZOOM_METER_IS_VISIBLE"
  L27_2 = 1
  L24_2(L25_2, L26_2, L27_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopInt
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_ZOOM"
  L27_2 = 0
  L24_2(L25_2, L26_2, L27_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopInt
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_TRANQUILIZE_PERCENTAGE"
  L27_2 = 100
  L24_2(L25_2, L26_2, L27_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopInt
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_EMP_PERCENTAGE"
  L27_2 = 100
  L24_2(L25_2, L26_2, L27_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopMulti
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_ZOOM_LABEL"
  L27_2 = 0
  L28_2 = "DRONE_ZOOM_1"
  L24_2(L25_2, L26_2, L27_2, L28_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopMulti
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_ZOOM_LABEL"
  L27_2 = 1
  L28_2 = ""
  L24_2(L25_2, L26_2, L27_2, L28_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopMulti
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_ZOOM_LABEL"
  L27_2 = 2
  L28_2 = "DRONE_ZOOM_2"
  L24_2(L25_2, L26_2, L27_2, L28_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopMulti
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_ZOOM_LABEL"
  L27_2 = 3
  L28_2 = ""
  L24_2(L25_2, L26_2, L27_2, L28_2)
  L24_2 = Scaleforms
  L24_2 = L24_2.PopMulti
  L25_2 = Drones
  L25_2 = L25_2.DroneScaleform
  L26_2 = "SET_ZOOM_LABEL"
  L27_2 = 4
  L28_2 = "DRONE_ZOOM_3"
  L24_2(L25_2, L26_2, L27_2, L28_2)
  L24_2 = Drones
  L25_2 = GetSoundId
  L25_2 = L25_2()
  L24_2.SoundID = L25_2
  if A9_2 then
    L24_2 = PlaySoundFromEntity
    L25_2 = Drones
    L25_2 = L25_2.SoundID
    L26_2 = "Flight_Loop"
    L27_2 = L17_2
    L28_2 = "DLC_BTL_Drone_Sounds"
    L29_2 = true
    L30_2 = 0
    L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  end
  L24_2 = DoScreenFadeIn
  L25_2 = 500
  L24_2(L25_2)
  L24_2 = Drones
  L24_2 = L24_2.DroneControl
  L25_2 = {}
  L25_2.speed = A0_2
  L25_2.range = A1_2
  L25_2.rangesphere = A2_2
  L25_2.timer = A3_2
  L25_2.health = A4_2
  L25_2.explode = A5_2
  L25_2.heatvision = A6_2
  L25_2.nightvision = A7_2
  L25_2.spotlight = A8_2
  L25_2.scanner = A10_2
  L25_2.release = A11_2
  L25_2.soundboard = A12_2
  L26_2 = L17_2
  L24_2(L25_2, L26_2)
  L24_2 = TriggerEvent
  L25_2 = "dz-drone:DoneDeactivated"
  L24_2(L25_2)
end
L0_1.SpawnDrone = L1_1
L0_1 = Drones
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2
  L2_2 = GetActiveScreenResolution
  L2_2, L3_2 = L2_2()
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = GetEntityCoords
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = GetEntityForwardVector
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = L5_2 + L6_2
  L8_2 = 0
  L9_2 = 0.0
  L10_2 = 100.0
  L11_2 = 0.0
  L12_2 = vector3
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.0
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L13_2 = vector3
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = 0.0
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L14_2 = Drones
  L14_2 = L14_2.TargetPedHeadShotHandle
  if L14_2 then
    L14_2 = UnregisterPedheadshot
    L15_2 = Drones
    L15_2 = L15_2.TargetPedHeadShotHandle
    L14_2(L15_2)
    L14_2 = Drones
    L14_2.TargetPedHeadShotHandle = nil
  end
  L14_2 = Drones
  L14_2.TargetPedHeadShot = nil
  L14_2 = Drones
  L14_2.TargetPed = nil
  L14_2 = Drones
  L14_2.InScanningMode = false
  L14_2 = Drones
  L15_2 = IsRadarHidden
  L15_2 = L15_2()
  L15_2 = not L15_2
  L14_2.DisplayRadar = L15_2
  L14_2 = DisplayRadar
  L15_2 = false
  L14_2(L15_2)
  L14_2 = GetEntityHealth
  L15_2 = A1_2
  L14_2 = L14_2(L15_2)
  L15_2 = A0_2.health
  if L15_2 then
    L15_2 = A0_2.health
    if L15_2 > 0 then
      L15_2 = SetEntityHealth
      L16_2 = A1_2
      L17_2 = A0_2.health
      L15_2(L16_2, L17_2)
    end
  end
  L15_2 = Drones
  L15_2 = L15_2.Debug
  L16_2 = "Loading Streamed Texture"
  L15_2(L16_2)
  L15_2 = HasStreamedTextureDictLoaded
  L16_2 = "helicopterhud"
  L15_2 = L15_2(L16_2)
  if not L15_2 then
    L15_2 = RequestStreamedTextureDict
    L16_2 = "helicopterhud"
    L15_2(L16_2)
    L15_2 = HasStreamedTextureDictLoaded
    L16_2 = "helicopterhud"
    L15_2 = L15_2(L16_2)
    if not L15_2 then
      L15_2 = Wait
      L16_2 = 0
      L15_2(L16_2)
    end
  end
  L15_2 = NetworkGetNetworkIdFromEntity
  L16_2 = A1_2
  L15_2 = L15_2(L16_2)
  L16_2 = TriggerEvent
  L17_2 = "dz-drone:DoneActivated"
  L16_2(L17_2)
  L16_2 = false
  L17_2 = Drones
  L17_2 = L17_2.Debug
  L18_2 = "Drone Controls Initiated. All Done!"
  L17_2(L18_2)
  while true do
    L17_2 = PlayerPedId
    L17_2 = L17_2()
    L18_2 = GetEntityCoords
    L19_2 = L17_2
    L18_2 = L18_2(L19_2)
    L5_2 = L18_2
    L18_2 = NetworkHasControlOfNetworkId
    L19_2 = L15_2
    L18_2 = L18_2(L19_2)
    if not L18_2 then
      L18_2 = NetworkRequestControlOfNetworkId
      L19_2 = L15_2
      L18_2(L19_2)
    end
    L18_2 = A0_2.health
    if L18_2 then
      L18_2 = A0_2.health
      if L18_2 > 0 then
        L18_2 = GetEntityHealth
        L19_2 = A1_2
        L18_2 = L18_2(L19_2)
        L14_2 = L18_2
        L18_2 = Drones
        L18_2 = L18_2.DroneCamScaleforms
        if L18_2 and not L16_2 then
          L18_2 = 0.198
          L19_2 = 0.92
          L20_2 = 0.125
          L21_2 = DrawRect
          L22_2 = L20_2
          L23_2 = L19_2
          L24_2 = 0.2
          L25_2 = 0.014
          L26_2 = 0
          L27_2 = 0
          L28_2 = 0
          L29_2 = 100
          L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
          if L14_2 < 1 then
            L14_2 = 0
          end
          L21_2 = A0_2.health
          L21_2 = L18_2 / L21_2
          L21_2 = L21_2 * L14_2
          healthlong = L21_2
          L21_2 = A0_2.health
          L21_2 = L18_2 / L21_2
          L21_2 = L21_2 / 2
          L22_2 = A0_2.health
          L22_2 = L14_2 - L22_2
          L21_2 = L21_2 * L22_2
          L21_2 = L20_2 + L21_2
          healthstart = L21_2
          L21_2 = DrawRect
          L22_2 = healthstart
          L23_2 = L19_2
          L24_2 = healthlong
          L25_2 = 0.01
          L26_2 = 255
          L27_2 = 255
          L28_2 = 255
          L29_2 = 250
          L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
          L21_2 = SetTextFont
          L22_2 = Config
          L22_2 = L22_2.TextFont
          L21_2(L22_2)
          L21_2 = SetTextScale
          L22_2 = 0.4
          L23_2 = 0.4
          L21_2(L22_2, L23_2)
          L21_2 = SetTextColour
          L22_2 = 255
          L23_2 = 255
          L24_2 = 255
          L25_2 = 255
          L21_2(L22_2, L23_2, L24_2, L25_2)
          L21_2 = SetTextDropShadow
          L22_2 = 0
          L23_2 = 0
          L24_2 = 0
          L25_2 = 0
          L26_2 = 255
          L21_2(L22_2, L23_2, L24_2, L25_2, L26_2)
          L21_2 = SetTextEdge
          L22_2 = 1
          L23_2 = 0
          L24_2 = 0
          L25_2 = 0
          L26_2 = 255
          L21_2(L22_2, L23_2, L24_2, L25_2, L26_2)
          L21_2 = SetTextDropShadow
          L21_2()
          L21_2 = SetTextOutline
          L21_2()
          L21_2 = SetTextEntry
          L22_2 = "STRING"
          L21_2(L22_2)
          L21_2 = AddTextComponentString
          L22_2 = L14_2
          L21_2(L22_2)
          L21_2 = DrawText
          L22_2 = 0.228
          L23_2 = 0.906
          L21_2(L22_2, L23_2)
        end
      end
    end
    L18_2 = A0_2.health
    if L18_2 then
      L18_2 = A0_2.health
      if L18_2 > 0 then
        if not (L14_2 < 1) then
          L18_2 = DoesEntityExist
          L19_2 = A1_2
          L18_2 = L18_2(L19_2)
          if L18_2 then
            goto lbl_257
          end
        end
        L18_2 = A0_2.explode
        if L18_2 then
          L18_2 = TriggerEvent
          L19_2 = "dz-drone:client:OnDroneStopped"
          L20_2 = "exploded"
          L21_2 = Drones
          L21_2 = L21_2.UsedItem
          L18_2(L19_2, L20_2, L21_2)
          L18_2 = Drones
          L18_2 = L18_2.Disconnect
          L19_2 = A1_2
          L20_2 = Drones
          L20_2 = L20_2.LastCoords
          L18_2(L19_2, L20_2)
        else
          L18_2 = TriggerEvent
          L19_2 = "dz-drone:client:OnDroneStopped"
          L20_2 = "destroyed"
          L21_2 = Drones
          L21_2 = L21_2.UsedItem
          L18_2(L19_2, L20_2, L21_2)
          L18_2 = Drones
          L18_2 = L18_2.Disconnect
          L19_2 = A1_2
          L18_2(L19_2)
        end
        L18_2 = Drones
        L18_2 = L18_2.DestroyCam
        L19_2 = Drones
        L19_2 = L19_2.DroneCam
        L18_2(L19_2)
        return
      end
    end
    ::lbl_257::
    if L16_2 then
      L18_2 = IsControlJustReleased
      L19_2 = 0
      L20_2 = Config
      L20_2 = L20_2.Controls
      L20_2 = L20_2.ReleaseDrone
      L18_2 = L18_2(L19_2, L20_2)
      if not L18_2 then
        L18_2 = IsDisabledControlJustReleased
        L19_2 = 0
        L20_2 = Config
        L20_2 = L20_2.Controls
        L20_2 = L20_2.ReleaseDrone
        L18_2 = L18_2(L19_2, L20_2)
        if not L18_2 then
          goto lbl_296
        end
      end
      L16_2 = false
      L18_2 = FreezeEntityPosition
      L19_2 = A1_2
      L20_2 = false
      L18_2(L19_2, L20_2)
      L18_2 = Drones
      L19_2 = Drones
      L19_2 = L19_2.CreateCam
      L20_2 = A1_2
      L19_2 = L19_2(L20_2)
      L18_2.DroneCam = L19_2
      L18_2 = Drones
      L19_2 = Instructional
      L19_2 = L19_2.Create
      L20_2 = Drones
      L20_2 = L20_2.CreateControls
      L21_2 = Drones
      L21_2 = L21_2.FullControls
      L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L20_2(L21_2)
      L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
      L18_2.ButtonsScaleform = L19_2
      ::lbl_296::
      L18_2 = DrawScaleformMovieFullscreen
      L19_2 = Drones
      L19_2 = L19_2.ButtonsScaleform
      L20_2 = 255
      L21_2 = 255
      L22_2 = 255
      L23_2 = 255
      L24_2 = 0
      L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    else
      L18_2 = DisableAllControlActions
      L19_2 = 0
      L18_2(L19_2)
      L18_2 = EnableControlAction
      L19_2 = 0
      L20_2 = 249
      L21_2 = true
      L18_2(L19_2, L20_2, L21_2)
      L18_2 = EnableControlAction
      L19_2 = 0
      L20_2 = 245
      L21_2 = true
      L18_2(L19_2, L20_2, L21_2)
      L18_2 = GetEntityMatrix
      L19_2 = A1_2
      L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2)
      L22_2 = L5_2 - L21_2
      L22_2 = #L22_2
      L23_2 = IsEntityPlayingAnim
      L24_2 = L17_2
      L25_2 = Drones
      L25_2 = L25_2.SceneAnimations
      L25_2 = L25_2.phone
      L25_2 = L25_2[1]
      L26_2 = Drones
      L26_2 = L26_2.SceneAnimations
      L26_2 = L26_2.phone
      L26_2 = L26_2[2]
      L27_2 = 3
      L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
      if not L23_2 then
        L23_2 = TaskPlayAnim
        L24_2 = L17_2
        L25_2 = Drones
        L25_2 = L25_2.SceneAnimations
        L25_2 = L25_2.phone
        L25_2 = L25_2[1]
        L26_2 = Drones
        L26_2 = L26_2.SceneAnimations
        L26_2 = L26_2.phone
        L26_2 = L26_2[2]
        L27_2 = 8.0
        L28_2 = 8.0
        L29_2 = -1
        L30_2 = 2
        L31_2 = false
        L32_2 = false
        L33_2 = false
        L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
      end
      L23_2 = false
      L24_2 = A0_2.speed
      L24_2 = 250.0 * L24_2
      L25_2 = IsDisabledControlPressed
      L26_2 = 0
      L27_2 = Config
      L27_2 = L27_2.Controls
      L27_2 = L27_2.Forward
      L25_2 = L25_2(L26_2, L27_2)
      if L25_2 then
        L25_2 = V3ClampMagnitude
        L26_2 = A0_2.speed
        L26_2 = L18_2 * L26_2
        L26_2 = L12_2 - L26_2
        L27_2 = L24_2
        L25_2 = L25_2(L26_2, L27_2)
        L12_2 = L25_2
        L23_2 = true
      end
      L25_2 = IsDisabledControlPressed
      L26_2 = 0
      L27_2 = Config
      L27_2 = L27_2.Controls
      L27_2 = L27_2.Backward
      L25_2 = L25_2(L26_2, L27_2)
      if L25_2 then
        L25_2 = V3ClampMagnitude
        L26_2 = A0_2.speed
        L26_2 = L18_2 * L26_2
        L26_2 = L12_2 + L26_2
        L27_2 = L24_2
        L25_2 = L25_2(L26_2, L27_2)
        L12_2 = L25_2
        L23_2 = true
      end
      L25_2 = IsDisabledControlPressed
      L26_2 = 0
      L27_2 = Config
      L27_2 = L27_2.Controls
      L27_2 = L27_2.Left
      L25_2 = L25_2(L26_2, L27_2)
      if L25_2 then
        L25_2 = V3ClampMagnitude
        L26_2 = A0_2.speed
        L26_2 = L19_2 * L26_2
        L26_2 = L12_2 + L26_2
        L27_2 = L24_2
        L25_2 = L25_2(L26_2, L27_2)
        L12_2 = L25_2
        L23_2 = true
      end
      L25_2 = IsDisabledControlPressed
      L26_2 = 0
      L27_2 = Config
      L27_2 = L27_2.Controls
      L27_2 = L27_2.Right
      L25_2 = L25_2(L26_2, L27_2)
      if L25_2 then
        L25_2 = V3ClampMagnitude
        L26_2 = A0_2.speed
        L26_2 = L19_2 * L26_2
        L26_2 = L12_2 - L26_2
        L27_2 = L24_2
        L25_2 = L25_2(L26_2, L27_2)
        L12_2 = L25_2
        L23_2 = true
      end
      L25_2 = IsDisabledControlPressed
      L26_2 = 0
      L27_2 = Config
      L27_2 = L27_2.Controls
      L27_2 = L27_2.Up
      L25_2 = L25_2(L26_2, L27_2)
      if L25_2 then
        L25_2 = V3ClampMagnitude
        L26_2 = A0_2.speed
        L26_2 = L20_2 * L26_2
        L26_2 = L12_2 + L26_2
        L27_2 = L24_2
        L25_2 = L25_2(L26_2, L27_2)
        L12_2 = L25_2
        L23_2 = true
      end
      L25_2 = IsDisabledControlPressed
      L26_2 = 0
      L27_2 = Config
      L27_2 = L27_2.Controls
      L27_2 = L27_2.Down
      L25_2 = L25_2(L26_2, L27_2)
      if L25_2 then
        L25_2 = V3ClampMagnitude
        L26_2 = A0_2.speed
        L26_2 = L20_2 * L26_2
        L26_2 = L12_2 - L26_2
        L27_2 = L24_2
        L25_2 = L25_2(L26_2, L27_2)
        L12_2 = L25_2
        L23_2 = true
      end
      L25_2 = IsDisabledControlPressed
      L26_2 = 0
      L27_2 = Config
      L27_2 = L27_2.Controls
      L27_2 = L27_2.Stop
      L25_2 = L25_2(L26_2, L27_2)
      if L25_2 then
        L23_2 = false
      end
      L25_2 = GetDisabledControlNormal
      L26_2 = 0
      L27_2 = 1
      L25_2 = L25_2(L26_2, L27_2)
      L26_2 = GetDisabledControlNormal
      L27_2 = 0
      L28_2 = 2
      L26_2 = L26_2(L27_2, L28_2)
      L27_2 = GetCamRot
      L28_2 = A1_2
      L27_2 = L27_2(L28_2)
      L28_2 = L27_2.x
      L29_2 = L8_2 + 1
      L30_2 = 10
      L29_2 = L30_2 / L29_2
      L29_2 = L26_2 * L29_2
      L28_2 = L28_2 - L29_2
      L29_2 = L27_2.y
      L30_2 = L27_2.z
      L31_2 = L8_2 + 1
      L32_2 = 10
      L31_2 = L32_2 / L31_2
      L31_2 = L25_2 * L31_2
      L30_2 = L30_2 - L31_2
      L31_2 = vector3
      L32_2 = L28_2
      L33_2 = L29_2
      L34_2 = L30_2
      L31_2 = L31_2(L32_2, L33_2, L34_2)
      L13_2 = L13_2 + L31_2
      L31_2 = IsDisabledControlJustPressed
      L32_2 = 0
      L33_2 = Config
      L33_2 = L33_2.Controls
      L33_2 = L33_2.ZoomOut
      L31_2 = L31_2(L32_2, L33_2)
      if L31_2 then
        L31_2 = math
        L31_2 = L31_2.max
        L32_2 = 0
        L33_2 = L8_2 or L33_2
        if not L8_2 then
          L33_2 = 0
        end
        L33_2 = L33_2 - 1
        L31_2 = L31_2(L32_2, L33_2)
        L8_2 = L31_2
        L31_2 = Drones
        L31_2 = L31_2.DroneCamScaleforms
        if L31_2 then
          L31_2 = Scaleforms
          L31_2 = L31_2.PopInt
          L32_2 = Drones
          L32_2 = L32_2.DroneScaleform
          L33_2 = "SET_ZOOM"
          L34_2 = L8_2
          L31_2(L32_2, L33_2, L34_2)
        end
        L31_2 = SetCamFov
        L32_2 = Drones
        L32_2 = L32_2.DroneCam
        L33_2 = 10.0 * L8_2
        L34_2 = 50.0
        L33_2 = L34_2 - L33_2
        L31_2(L32_2, L33_2)
      end
      L31_2 = IsDisabledControlJustPressed
      L32_2 = 0
      L33_2 = Config
      L33_2 = L33_2.Controls
      L33_2 = L33_2.ZoomIn
      L31_2 = L31_2(L32_2, L33_2)
      if L31_2 then
        L31_2 = math
        L31_2 = L31_2.min
        L32_2 = 4
        L33_2 = L8_2 or L33_2
        if not L8_2 then
          L33_2 = 0
        end
        L33_2 = L33_2 + 1
        L31_2 = L31_2(L32_2, L33_2)
        L8_2 = L31_2
        L31_2 = Drones
        L31_2 = L31_2.DroneCamScaleforms
        if L31_2 then
          L31_2 = Scaleforms
          L31_2 = L31_2.PopInt
          L32_2 = Drones
          L32_2 = L32_2.DroneScaleform
          L33_2 = "SET_ZOOM"
          L34_2 = L8_2
          L31_2(L32_2, L33_2, L34_2)
        end
        L31_2 = SetCamFov
        L32_2 = Drones
        L32_2 = L32_2.DroneCam
        L33_2 = 10.0 * L8_2
        L34_2 = 50.0
        L33_2 = L34_2 - L33_2
        L31_2(L32_2, L33_2)
      end
      L31_2 = L13_2.x
      if L31_2 > 20.0 then
        L31_2 = vector3
        L32_2 = 20.0
        L33_2 = L13_2.y
        L34_2 = L13_2.z
        L31_2 = L31_2(L32_2, L33_2, L34_2)
        L13_2 = L31_2
      end
      L31_2 = L13_2.x
      if L31_2 < -90.0 then
        L31_2 = vector3
        L32_2 = -90.0
        L33_2 = L13_2.y
        L34_2 = L13_2.z
        L31_2 = L31_2(L32_2, L33_2, L34_2)
        L13_2 = L31_2
      end
      L31_2 = A0_2.nightvision
      if L31_2 then
        L31_2 = IsDisabledControlJustPressed
        L32_2 = 0
        L33_2 = Config
        L33_2 = L33_2.Controls
        L33_2 = L33_2.Nightvision
        L31_2 = L31_2(L32_2, L33_2)
        if L31_2 then
          L31_2 = NightvisionEnabled
          if not L31_2 then
            NightvisionEnabled = true
            L31_2 = SetNightvision
            L32_2 = true
            L31_2(L32_2)
          else
            NightvisionEnabled = false
            L31_2 = SetNightvision
            L32_2 = false
            L31_2(L32_2)
          end
          L31_2 = TriggerEvent
          L32_2 = "dz-drone:client:ActionMade"
          L33_2 = "Nightvision"
          L34_2 = NightvisionEnabled
          L31_2(L32_2, L33_2, L34_2)
        end
      end
      L31_2 = A0_2.heatvision
      if L31_2 then
        L31_2 = IsDisabledControlJustPressed
        L32_2 = 0
        L33_2 = Config
        L33_2 = L33_2.Controls
        L33_2 = L33_2.Heatvision
        L31_2 = L31_2(L32_2, L33_2)
        if L31_2 then
          L31_2 = InfaredEnabled
          if not L31_2 then
            InfaredEnabled = true
            L31_2 = SetSeethrough
            L32_2 = true
            L31_2(L32_2)
          else
            InfaredEnabled = false
            L31_2 = SetSeethrough
            L32_2 = false
            L31_2(L32_2)
          end
          L31_2 = TriggerEvent
          L32_2 = "dz-drone:client:ActionMade"
          L33_2 = "Heatvision"
          L34_2 = InfaredEnabled
          L31_2(L32_2, L33_2, L34_2)
        end
      end
      L31_2 = A0_2.spotlight
      if L31_2 then
        L31_2 = IsDisabledControlJustPressed
        L32_2 = 0
        L33_2 = Config
        L33_2 = L33_2.Controls
        L33_2 = L33_2.Spotlight
        L31_2 = L31_2(L32_2, L33_2)
        if L31_2 then
          L31_2 = SpotlightEnabled
          if not L31_2 then
            SpotlightEnabled = true
          else
            SpotlightEnabled = false
          end
          L31_2 = TriggerEvent
          L32_2 = "dz-drone:client:ActionMade"
          L33_2 = "Spotlight"
          L34_2 = SpotlightEnabled
          L31_2(L32_2, L33_2, L34_2)
        end
      end
      L31_2 = A0_2.spotlight
      if L31_2 then
        L31_2 = SpotlightEnabled
        if L31_2 then
          L31_2 = RotAnglesToVec
          L32_2 = L13_2
          L31_2 = L31_2(L32_2)
          L32_2 = GetCamCoord
          L33_2 = Drones
          L33_2 = L33_2.DroneCam
          L32_2 = L32_2(L33_2)
          L33_2 = DrawSpotLight
          L34_2 = L32_2
          L35_2 = L31_2
          L36_2 = 255
          L37_2 = 255
          L38_2 = 255
          L39_2 = 100.0
          L40_2 = 2.0
          L41_2 = 0.0
          if 0 == L8_2 then
            L42_2 = 12.0
            if L42_2 then
              goto lbl_737
            end
          end
          if 1 == L8_2 then
            L42_2 = 10.0
            if L42_2 then
              goto lbl_737
            end
          end
          if 2 == L8_2 then
            L42_2 = 8.0
            if L42_2 then
              goto lbl_737
            end
          end
          if 3 == L8_2 then
            L42_2 = 6.0
            if L42_2 then
              goto lbl_737
            end
          end
          if 4 == L8_2 then
            L42_2 = 4.0
            if L42_2 then
              goto lbl_737
            end
          end
          L42_2 = 12.0
          ::lbl_737::
          L43_2 = 1.0
          L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2)
        end
      end
      L31_2 = A0_2.soundboard
      if L31_2 then
        L31_2 = IsDisabledControlJustPressed
        L32_2 = 0
        L33_2 = Config
        L33_2 = L33_2.Controls
        L33_2 = L33_2.SoundBoard
        L31_2 = L31_2(L32_2, L33_2)
        if L31_2 then
          L31_2 = SetNuiFocus
          L32_2 = true
          L33_2 = true
          L31_2(L32_2, L33_2)
          L31_2 = SendNUIMessage
          L32_2 = {}
          L32_2.action = "openSoundboard"
          L33_2 = Config
          L33_2 = L33_2.SoundsList
          L32_2.sounds = L33_2
          L31_2(L32_2)
        end
      end
      L31_2 = IsDisabledControlJustReleased
      L32_2 = 0
      L33_2 = Config
      L33_2 = L33_2.Controls
      L33_2 = L33_2.Cancel
      L31_2 = L31_2(L32_2, L33_2)
      if L31_2 then
        L31_2 = TriggerEvent
        L32_2 = "dz-drone:client:OnDroneStopped"
        L33_2 = "canceled"
        L34_2 = Drones
        L34_2 = L34_2.UsedItem
        L31_2(L32_2, L33_2, L34_2)
        L31_2 = Drones
        L31_2 = L31_2.Disconnect
        L32_2 = A1_2
        L31_2(L32_2)
        L31_2 = Drones
        L31_2 = L31_2.DestroyCam
        L32_2 = Drones
        L32_2 = L32_2.DroneCam
        L31_2(L32_2)
        return
      end
      L31_2 = Drones
      L31_2 = L31_2.InUse
      if not L31_2 then
        L31_2 = TriggerEvent
        L32_2 = "dz-drone:client:OnDroneStopped"
        L33_2 = "canceled"
        L34_2 = Drones
        L34_2 = L34_2.UsedItem
        L31_2(L32_2, L33_2, L34_2)
        L31_2 = Drones
        L31_2 = L31_2.Disconnect
        L32_2 = A1_2
        L31_2(L32_2)
        L31_2 = Drones
        L31_2 = L31_2.DestroyCam
        L32_2 = Drones
        L32_2 = L32_2.DroneCam
        L31_2(L32_2)
        return
      end
      L31_2 = IsEntityDead
      L32_2 = L17_2
      L31_2 = L31_2(L32_2)
      if not L31_2 then
        L31_2 = IsPedFalling
        L32_2 = L17_2
        L31_2 = L31_2(L32_2)
        if not L31_2 then
          L31_2 = IsEntityInWater
          L32_2 = L17_2
          L31_2 = L31_2(L32_2)
          if not L31_2 then
            goto lbl_837
          end
        end
      end
      L31_2 = TriggerEvent
      L32_2 = "dz-drone:client:OnDroneStopped"
      L33_2 = "canceled"
      L34_2 = Drones
      L34_2 = L34_2.UsedItem
      L31_2(L32_2, L33_2, L34_2)
      L31_2 = Drones
      L31_2 = L31_2.Disconnect
      L32_2 = A1_2
      L31_2(L32_2)
      L31_2 = Drones
      L31_2 = L31_2.DestroyCam
      L32_2 = Drones
      L32_2 = L32_2.DroneCam
      L31_2(L32_2)
      do return end
      ::lbl_837::
      L31_2 = L30_2 * 1.0
      L9_2 = L9_2 + L31_2
      if not L23_2 then
        L31_2 = V3Magnitude
        L32_2 = L12_2
        L31_2 = L31_2(L32_2)
        if L31_2 > 0.0 then
          L31_2 = L12_2 / 10.0
          L12_2 = L12_2 - L31_2
        end
      end
      L31_2 = ApplyForceToEntity
      L32_2 = A1_2
      L33_2 = 0
      L34_2 = L12_2.x
      L35_2 = L12_2.y
      L36_2 = L12_2.z
      L36_2 = 20.0 + L36_2
      L37_2 = 0.0
      L38_2 = 0.0
      L39_2 = 0.0
      L40_2 = 0
      L41_2 = 0
      L42_2 = 1
      L43_2 = 1
      L44_2 = 0
      L45_2 = 1
      L31_2(L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
      L31_2 = SetEntityHeading
      L32_2 = A1_2
      L33_2 = L9_2 + 180
      L31_2(L32_2, L33_2)
      L31_2 = SetCamRot
      L32_2 = Drones
      L32_2 = L32_2.DroneCam
      L33_2 = L13_2.x
      L34_2 = L13_2.y
      L35_2 = L9_2
      L36_2 = 2
      L31_2(L32_2, L33_2, L34_2, L35_2, L36_2)
      L31_2 = Drones
      L31_2 = L31_2.DroneCamScaleforms
      if L31_2 then
        L31_2 = Scaleforms
        L31_2 = L31_2.PopInt
        L32_2 = Drones
        L32_2 = L32_2.DroneScaleform
        L33_2 = "SET_HEADING"
        L34_2 = math
        L34_2 = L34_2.floor
        L35_2 = L9_2
        L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L34_2(L35_2)
        L31_2(L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
      end
      L31_2 = A0_2.range
      L31_2 = L22_2 / L31_2
      if L31_2 <= 1.0 then
        L32_2 = SetTimecycleModifierStrength
        L33_2 = A0_2.range
        L33_2 = L22_2 / L33_2
        L32_2(L33_2)
        L32_2 = Drones
        L32_2 = L32_2.DroneInstructionalButtons
        if L32_2 then
          L32_2 = DrawScaleformMovieFullscreen
          L33_2 = Drones
          L33_2 = L33_2.ButtonsScaleform
          L34_2 = 255
          L35_2 = 255
          L36_2 = 255
          L37_2 = 255
          L38_2 = 0
          L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
        end
        L32_2 = Drones
        L32_2 = L32_2.DroneCamScaleforms
        if L32_2 then
          L32_2 = DrawScaleformMovieFullscreen
          L33_2 = Drones
          L33_2 = L33_2.DroneScaleform
          L34_2 = 255
          L35_2 = 255
          L36_2 = 255
          L37_2 = 255
          L38_2 = 0
          L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
        end
      else
        L32_2 = GetGameTimer
        L32_2 = L32_2()
        L32_2 = L32_2 + 7000
        while true do
          L33_2 = GetGameTimer
          L33_2 = L33_2()
          if not (L32_2 > L33_2) then
            break
          end
          L33_2 = V3Magnitude
          L34_2 = L12_2
          L33_2 = L33_2(L34_2)
          if L33_2 > 0.0 then
            L33_2 = L12_2 / 10.0
            L12_2 = L12_2 - L33_2
          end
          L33_2 = ApplyForceToEntity
          L34_2 = A1_2
          L35_2 = 0
          L36_2 = L12_2.x
          L37_2 = L12_2.y
          L38_2 = L12_2.z
          L38_2 = 20.0 + L38_2
          L39_2 = 0.0
          L40_2 = 0.0
          L41_2 = 0.0
          L42_2 = 0
          L43_2 = 0
          L44_2 = 1
          L45_2 = 1
          L46_2 = 0
          L47_2 = 1
          L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2)
          L33_2 = math
          L33_2 = L33_2.floor
          L34_2 = GetGameTimer
          L34_2 = L34_2()
          L34_2 = L32_2 - L34_2
          L34_2 = L34_2 / 1000
          L33_2 = L33_2(L34_2)
          if 5 == L33_2 or 3 == L33_2 or 1 == L33_2 then
            L34_2 = SetTextFont
            L35_2 = 0
            L34_2(L35_2)
            L34_2 = SetTextScale
            L35_2 = 1.5
            L36_2 = 1.5
            L34_2(L35_2, L36_2)
            L34_2 = SetTextColour
            L35_2 = 255
            L36_2 = 255
            L37_2 = 255
            L38_2 = 255
            L34_2(L35_2, L36_2, L37_2, L38_2)
            L34_2 = SetTextDropShadow
            L35_2 = 0
            L36_2 = 0
            L37_2 = 0
            L38_2 = 0
            L39_2 = 255
            L34_2(L35_2, L36_2, L37_2, L38_2, L39_2)
            L34_2 = SetTextDropShadow
            L34_2()
            L34_2 = SetTextCentre
            L35_2 = true
            L34_2(L35_2)
            L34_2 = SetTextEntry
            L35_2 = "STRING"
            L34_2(L35_2)
            L34_2 = AddTextComponentString
            L35_2 = "SIGNAL LOST"
            L34_2(L35_2)
            L34_2 = DrawText
            L35_2 = 0.5
            L36_2 = 0.465
            L34_2(L35_2, L36_2)
          end
          L34_2 = A0_2.rangesphere
          if L34_2 then
            L34_2 = math
            L34_2 = L34_2.floor
            L35_2 = L31_2 - 0.8
            L35_2 = L35_2 * 5
            L35_2 = L35_2 * 50
            L34_2 = L34_2(L35_2)
            L35_2 = DrawMarker
            L36_2 = 28
            L37_2 = L5_2.x
            L38_2 = L5_2.y
            L39_2 = 0.0
            L40_2 = 0.0
            L41_2 = 0.0
            L42_2 = 0.0
            L43_2 = 0.0
            L44_2 = 0.0
            L45_2 = 0.0
            L46_2 = A0_2.range
            L47_2 = A0_2.range
            L48_2 = 1000.0
            L49_2 = 255
            L50_2 = 0
            L51_2 = 0
            L52_2 = L34_2
            L53_2 = false
            L54_2 = true
            L55_2 = 2
            L56_2 = false
            L57_2 = false
            L58_2 = false
            L59_2 = false
            L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2)
          end
          L34_2 = Wait
          L35_2 = 0
          L34_2(L35_2)
        end
        L33_2 = TriggerEvent
        L34_2 = "dz-drone:client:OnDroneStopped"
        L35_2 = "signallost"
        L36_2 = Drones
        L36_2 = L36_2.UsedItem
        L33_2(L34_2, L35_2, L36_2)
        L33_2 = Drones
        L33_2 = L33_2.Disconnect
        L34_2 = A1_2
        L33_2(L34_2)
        L33_2 = Drones
        L33_2 = L33_2.DestroyCam
        L34_2 = Drones
        L34_2 = L34_2.DroneCam
        L33_2(L34_2)
        return
      end
      L32_2 = Drones
      L32_2 = L32_2.DroneCamScaleforms
      if L32_2 then
        L32_2 = 0.8
        if L31_2 > L32_2 then
          L32_2 = A0_2.rangesphere
          if L32_2 then
            L32_2 = math
            L32_2 = L32_2.floor
            L33_2 = L31_2 - 0.8
            L33_2 = L33_2 * 5
            L33_2 = L33_2 * 50
            L32_2 = L32_2(L33_2)
            L33_2 = DrawMarker
            L34_2 = 28
            L35_2 = L5_2.x
            L36_2 = L5_2.y
            L37_2 = 0.0
            L38_2 = 0.0
            L39_2 = 0.0
            L40_2 = 0.0
            L41_2 = 0.0
            L42_2 = 0.0
            L43_2 = 0.0
            L44_2 = A0_2.range
            L45_2 = A0_2.range
            L46_2 = 1000.0
            L47_2 = 255
            L48_2 = 0
            L49_2 = 0
            L50_2 = L32_2
            L51_2 = false
            L52_2 = true
            L53_2 = 2
            L54_2 = false
            L55_2 = false
            L56_2 = false
            L57_2 = false
            L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2)
          end
          L32_2 = DrawRect
          L33_2 = 0.96
          L34_2 = 0.1
          L35_2 = 0.002
          L36_2 = 0.022
          L37_2 = 255
          L38_2 = 255
          L39_2 = 255
          L40_2 = 100
          L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
          L32_2 = DrawRect
          L33_2 = 0.955
          L34_2 = 0.102
          L35_2 = 0.002
          L36_2 = 0.018
          L37_2 = 255
          L38_2 = 255
          L39_2 = 255
          L40_2 = 100
          L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
          L32_2 = DrawRect
          L33_2 = 0.95
          L34_2 = 0.104
          L35_2 = 0.002
          L36_2 = 0.014
          L37_2 = 255
          L38_2 = 255
          L39_2 = 255
          L40_2 = 100
          L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
          L32_2 = DrawRect
          L33_2 = 0.945
          L34_2 = 0.106
          L35_2 = 0.002
          L36_2 = 0.01
          L37_2 = 255
          L38_2 = 255
          L39_2 = 255
          L40_2 = 100
          L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
          L32_2 = DrawRect
          L33_2 = 0.94
          L34_2 = 0.108
          L35_2 = 0.002
          L36_2 = 0.006
          L37_2 = 255
          L38_2 = 0
          L39_2 = 0
          L40_2 = 255
          L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
          L32_2 = SetTextFont
          L33_2 = Config
          L33_2 = L33_2.TextFont
          L32_2(L33_2)
          L32_2 = SetTextScale
          L33_2 = 0.3
          L34_2 = 0.3
          L32_2(L33_2, L34_2)
          L32_2 = SetTextColour
          L33_2 = 255
          L34_2 = 0
          L35_2 = 0
          L36_2 = 255
          L32_2(L33_2, L34_2, L35_2, L36_2)
          L32_2 = SetTextCentre
          L33_2 = true
          L32_2(L33_2)
          L32_2 = SetTextEntry
          L33_2 = "STRING"
          L32_2(L33_2)
          L32_2 = AddTextComponentString
          L33_2 = "LOW SIGNAL"
          L32_2(L33_2)
          L32_2 = DrawText
          L33_2 = 0.95
          L34_2 = 0.115
          L32_2(L33_2, L34_2)
        else
          L32_2 = 0.6
          if L31_2 > L32_2 then
            L32_2 = DrawRect
            L33_2 = 0.96
            L34_2 = 0.1
            L35_2 = 0.002
            L36_2 = 0.022
            L37_2 = 255
            L38_2 = 255
            L39_2 = 255
            L40_2 = 100
            L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
            L32_2 = DrawRect
            L33_2 = 0.955
            L34_2 = 0.102
            L35_2 = 0.002
            L36_2 = 0.018
            L37_2 = 255
            L38_2 = 255
            L39_2 = 255
            L40_2 = 100
            L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
            L32_2 = DrawRect
            L33_2 = 0.95
            L34_2 = 0.104
            L35_2 = 0.002
            L36_2 = 0.014
            L37_2 = 255
            L38_2 = 255
            L39_2 = 255
            L40_2 = 100
            L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
            L32_2 = DrawRect
            L33_2 = 0.945
            L34_2 = 0.106
            L35_2 = 0.002
            L36_2 = 0.01
            L37_2 = 255
            L38_2 = 128
            L39_2 = 0
            L40_2 = 255
            L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
            L32_2 = DrawRect
            L33_2 = 0.94
            L34_2 = 0.108
            L35_2 = 0.002
            L36_2 = 0.006
            L37_2 = 255
            L38_2 = 128
            L39_2 = 0
            L40_2 = 255
            L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
            L32_2 = SetTextFont
            L33_2 = Config
            L33_2 = L33_2.TextFont
            L32_2(L33_2)
            L32_2 = SetTextScale
            L33_2 = 0.3
            L34_2 = 0.3
            L32_2(L33_2, L34_2)
            L32_2 = SetTextColour
            L33_2 = 255
            L34_2 = 128
            L35_2 = 0
            L36_2 = 255
            L32_2(L33_2, L34_2, L35_2, L36_2)
            L32_2 = SetTextCentre
            L33_2 = true
            L32_2(L33_2)
            L32_2 = SetTextEntry
            L33_2 = "STRING"
            L32_2(L33_2)
            L32_2 = AddTextComponentString
            L33_2 = "MEDIUM SIGNAL"
            L32_2(L33_2)
            L32_2 = DrawText
            L33_2 = 0.95
            L34_2 = 0.115
            L32_2(L33_2, L34_2)
          else
            L32_2 = 0.4
            if L31_2 > L32_2 then
              L32_2 = DrawRect
              L33_2 = 0.96
              L34_2 = 0.1
              L35_2 = 0.002
              L36_2 = 0.022
              L37_2 = 255
              L38_2 = 255
              L39_2 = 255
              L40_2 = 100
              L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L32_2 = DrawRect
              L33_2 = 0.955
              L34_2 = 0.102
              L35_2 = 0.002
              L36_2 = 0.018
              L37_2 = 255
              L38_2 = 255
              L39_2 = 255
              L40_2 = 100
              L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L32_2 = DrawRect
              L33_2 = 0.95
              L34_2 = 0.104
              L35_2 = 0.002
              L36_2 = 0.014
              L37_2 = 255
              L38_2 = 125
              L39_2 = 0
              L40_2 = 255
              L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L32_2 = DrawRect
              L33_2 = 0.945
              L34_2 = 0.106
              L35_2 = 0.002
              L36_2 = 0.01
              L37_2 = 255
              L38_2 = 128
              L39_2 = 0
              L40_2 = 255
              L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L32_2 = DrawRect
              L33_2 = 0.94
              L34_2 = 0.108
              L35_2 = 0.002
              L36_2 = 0.006
              L37_2 = 255
              L38_2 = 128
              L39_2 = 0
              L40_2 = 255
              L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L32_2 = SetTextFont
              L33_2 = Config
              L33_2 = L33_2.TextFont
              L32_2(L33_2)
              L32_2 = SetTextScale
              L33_2 = 0.3
              L34_2 = 0.3
              L32_2(L33_2, L34_2)
              L32_2 = SetTextColour
              L33_2 = 255
              L34_2 = 128
              L35_2 = 0
              L36_2 = 255
              L32_2(L33_2, L34_2, L35_2, L36_2)
              L32_2 = SetTextCentre
              L33_2 = true
              L32_2(L33_2)
              L32_2 = SetTextEntry
              L33_2 = "STRING"
              L32_2(L33_2)
              L32_2 = AddTextComponentString
              L33_2 = "MEDIUM SIGNAL"
              L32_2(L33_2)
              L32_2 = DrawText
              L33_2 = 0.95
              L34_2 = 0.115
              L32_2(L33_2, L34_2)
            else
              L32_2 = 0.2
              if L31_2 > L32_2 then
                L32_2 = DrawRect
                L33_2 = 0.96
                L34_2 = 0.1
                L35_2 = 0.002
                L36_2 = 0.022
                L37_2 = 255
                L38_2 = 255
                L39_2 = 255
                L40_2 = 100
                L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                L32_2 = DrawRect
                L33_2 = 0.955
                L34_2 = 0.102
                L35_2 = 0.002
                L36_2 = 0.018
                L37_2 = 0
                L38_2 = 255
                L39_2 = 0
                L40_2 = 255
                L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                L32_2 = DrawRect
                L33_2 = 0.95
                L34_2 = 0.104
                L35_2 = 0.002
                L36_2 = 0.014
                L37_2 = 0
                L38_2 = 255
                L39_2 = 0
                L40_2 = 255
                L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                L32_2 = DrawRect
                L33_2 = 0.945
                L34_2 = 0.106
                L35_2 = 0.002
                L36_2 = 0.01
                L37_2 = 0
                L38_2 = 255
                L39_2 = 0
                L40_2 = 255
                L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                L32_2 = DrawRect
                L33_2 = 0.94
                L34_2 = 0.108
                L35_2 = 0.002
                L36_2 = 0.006
                L37_2 = 0
                L38_2 = 255
                L39_2 = 0
                L40_2 = 255
                L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                L32_2 = SetTextFont
                L33_2 = Config
                L33_2 = L33_2.TextFont
                L32_2(L33_2)
                L32_2 = SetTextScale
                L33_2 = 0.3
                L34_2 = 0.3
                L32_2(L33_2, L34_2)
                L32_2 = SetTextColour
                L33_2 = 0
                L34_2 = 255
                L35_2 = 0
                L36_2 = 255
                L32_2(L33_2, L34_2, L35_2, L36_2)
                L32_2 = SetTextCentre
                L33_2 = true
                L32_2(L33_2)
                L32_2 = SetTextEntry
                L33_2 = "STRING"
                L32_2(L33_2)
                L32_2 = AddTextComponentString
                L33_2 = "HIGH SIGNAL"
                L32_2(L33_2)
                L32_2 = DrawText
                L33_2 = 0.95
                L34_2 = 0.115
                L32_2(L33_2, L34_2)
              else
                L32_2 = DrawRect
                L33_2 = 0.96
                L34_2 = 0.1
                L35_2 = 0.002
                L36_2 = 0.022
                L37_2 = 0
                L38_2 = 255
                L39_2 = 0
                L40_2 = 255
                L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                L32_2 = DrawRect
                L33_2 = 0.955
                L34_2 = 0.102
                L35_2 = 0.002
                L36_2 = 0.018
                L37_2 = 0
                L38_2 = 255
                L39_2 = 0
                L40_2 = 255
                L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                L32_2 = DrawRect
                L33_2 = 0.95
                L34_2 = 0.104
                L35_2 = 0.002
                L36_2 = 0.014
                L37_2 = 0
                L38_2 = 255
                L39_2 = 0
                L40_2 = 255
                L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                L32_2 = DrawRect
                L33_2 = 0.945
                L34_2 = 0.106
                L35_2 = 0.002
                L36_2 = 0.01
                L37_2 = 0
                L38_2 = 255
                L39_2 = 0
                L40_2 = 255
                L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                L32_2 = DrawRect
                L33_2 = 0.94
                L34_2 = 0.108
                L35_2 = 0.002
                L36_2 = 0.006
                L37_2 = 0
                L38_2 = 255
                L39_2 = 0
                L40_2 = 255
                L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                L32_2 = SetTextFont
                L33_2 = Config
                L33_2 = L33_2.TextFont
                L32_2(L33_2)
                L32_2 = SetTextScale
                L33_2 = 0.3
                L34_2 = 0.3
                L32_2(L33_2, L34_2)
                L32_2 = SetTextColour
                L33_2 = 0
                L34_2 = 255
                L35_2 = 0
                L36_2 = 255
                L32_2(L33_2, L34_2, L35_2, L36_2)
                L32_2 = SetTextCentre
                L33_2 = true
                L32_2(L33_2)
                L32_2 = SetTextEntry
                L33_2 = "STRING"
                L32_2(L33_2)
                L32_2 = AddTextComponentString
                L33_2 = "HIGH SIGNAL"
                L32_2(L33_2)
                L32_2 = DrawText
                L33_2 = 0.95
                L34_2 = 0.115
                L32_2(L33_2, L34_2)
              end
            end
          end
        end
      end
      L32_2 = Drones
      L33_2 = GetEntityCoords
      L34_2 = A1_2
      L33_2 = L33_2(L34_2)
      L32_2.LastCoords = L33_2
      L32_2 = A0_2.scanner
      if L32_2 then
        L32_2 = false
        L33_2 = RayCastGamePlayCamera
        L34_2 = Config
        L34_2 = L34_2.ScannerRange
        L35_2 = A1_2
        L36_2 = Drones
        L36_2 = L36_2.DroneCam
        L33_2, L34_2, L35_2 = L33_2(L34_2, L35_2, L36_2)
        if L33_2 then
          L36_2 = IsEntityAPed
          L37_2 = L35_2
          L36_2 = L36_2(L37_2)
          if L36_2 then
            L36_2 = IsPedAPlayer
            L37_2 = L35_2
            L36_2 = L36_2(L37_2)
            if L36_2 then
              L36_2 = Drones
              L36_2 = L36_2.DroneCamScaleforms
              if L36_2 then
                L36_2 = Scaleforms
                L36_2 = L36_2.PopBool
                L37_2 = Drones
                L37_2 = L37_2.DroneScaleform
                L38_2 = "SET_RETICLE_ON_TARGET"
                L39_2 = 1
                L36_2(L37_2, L38_2, L39_2)
              end
              L32_2 = L35_2
              L36_2 = IsDisabledControlJustReleased
              L37_2 = 0
              L38_2 = Config
              L38_2 = L38_2.Controls
              L38_2 = L38_2.Scanner
              L36_2 = L36_2(L37_2, L38_2)
              if L36_2 then
                L36_2 = Drones
                L36_2 = L36_2.InScanningMode
                if not L36_2 then
                  L36_2 = Drones
                  L36_2.InScanningMode = true
                  L36_2 = Drones
                  L36_2.TargetPed = L35_2
                  L36_2 = CreateThread
                  function L37_2()
                    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
                    L0_3 = NetworkGetPlayerIndexFromPed
                    L1_3 = L35_2
                    L0_3 = L0_3(L1_3)
                    L1_3 = GetPlayerServerId
                    L2_3 = L0_3
                    L1_3 = L1_3(L2_3)
                    L2_3 = GetPedDrawableVariation
                    L3_3 = Drones
                    L3_3 = L3_3.TargetPed
                    L4_3 = 1
                    L2_3 = L2_3(L3_3, L4_3)
                    L3_3 = Drones
                    L3_3 = L3_3.TargetPedHeadShotHandle
                    if L3_3 then
                      L3_3 = UnregisterPedheadshot
                      L4_3 = Drones
                      L4_3 = L4_3.TargetPedHeadShotHandle
                      L3_3(L4_3)
                    end
                    L3_3 = Drones
                    L4_3 = RegisterPedheadshot
                    L5_3 = L35_2
                    L4_3 = L4_3(L5_3)
                    L3_3.TargetPedHeadShotHandle = L4_3
                    while true do
                      L3_3 = IsPedheadshotReady
                      L4_3 = Drones
                      L4_3 = L4_3.TargetPedHeadShotHandle
                      L3_3 = L3_3(L4_3)
                      if L3_3 then
                        break
                      end
                      L3_3 = Wait
                      L4_3 = 0
                      L3_3(L4_3)
                    end
                    L3_3 = Drones
                    L4_3 = GetPedheadshotTxdString
                    L5_3 = Drones
                    L5_3 = L5_3.TargetPedHeadShotHandle
                    L4_3 = L4_3(L5_3)
                    L3_3.TargetPedHeadShot = L4_3
                    L3_3 = Drones
                    L4_3 = {}
                    L5_3 = Config
                    L5_3 = L5_3.Transition
                    L5_3 = L5_3.scan_searching
                    L4_3.Title = L5_3
                    L5_3 = Config
                    L5_3 = L5_3.Transition
                    L5_3 = L5_3.scan_searching_db
                    L4_3.SubTitle = L5_3
                    L5_3 = {}
                    L4_3.Infos = L5_3
                    L3_3.TargetPedInfo = L4_3
                    L3_3 = Wait
                    L4_3 = 2000
                    L3_3(L4_3)
                    L3_3 = Config
                    L3_3 = L3_3.NoMaskComponentId
                    if not (L2_3 > L3_3) then
                      L3_3 = Config
                      L3_3 = L3_3.ScannerIgnoreMask
                      if not L3_3 then
                        goto lbl_84
                      end
                    end
                    L3_3 = TriggerEvent
                    L4_3 = "dz-drone:client:TargetPlayerInformations"
                    L5_3 = {}
                    L6_3 = Config
                    L6_3 = L6_3.Transition
                    L6_3 = L6_3.scan_unknown
                    L5_3.Title = L6_3
                    L6_3 = Config
                    L6_3 = L6_3.Transition
                    L6_3 = L6_3.scan_not_recognized
                    L5_3.SubTitle = L6_3
                    L6_3 = {}
                    L5_3.Infos = L6_3
                    L3_3(L4_3, L5_3)
                    goto lbl_88
                    ::lbl_84::
                    L3_3 = TriggerServerEvent
                    L4_3 = "dz-drone:server:GetTargetPlayerInformations"
                    L5_3 = L1_3
                    L3_3(L4_3, L5_3)
                    ::lbl_88::
                    L3_3 = Wait
                    L4_3 = 500
                    L3_3(L4_3)
                    L3_3 = Drones
                    L3_3.InScanningMode = false
                  end
                  L36_2(L37_2)
                end
              end
          end
        end
        else
          L36_2 = Drones
          L36_2 = L36_2.DroneCamScaleforms
          if L36_2 then
            L36_2 = Scaleforms
            L36_2 = L36_2.PopBool
            L37_2 = Drones
            L37_2 = L37_2.DroneScaleform
            L38_2 = "SET_RETICLE_ON_TARGET"
            L39_2 = 0
            L36_2(L37_2, L38_2, L39_2)
          end
        end
        L36_2 = Drones
        L36_2 = L36_2.TargetPedHeadShot
        if L36_2 then
          L36_2 = DrawSprite
          L37_2 = Drones
          L37_2 = L37_2.TargetPedHeadShot
          L38_2 = Drones
          L38_2 = L38_2.TargetPedHeadShot
          L39_2 = 90
          L39_2 = L39_2 / L2_2
          L40_2 = 125
          L40_2 = L40_2 / L3_2
          L41_2 = 75
          L41_2 = L41_2 / L2_2
          L42_2 = 75
          L42_2 = L42_2 / L3_2
          L43_2 = 0.0
          L44_2 = 255
          L45_2 = 255
          L46_2 = 255
          L47_2 = 255
          L36_2(L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2)
          L36_2 = SetTextFont
          L37_2 = Config
          L37_2 = L37_2.TextFont
          L36_2(L37_2)
          L36_2 = SetTextScale
          L37_2 = 0.8
          L38_2 = 0.8
          L36_2(L37_2, L38_2)
          L36_2 = SetTextColour
          L37_2 = 255
          L38_2 = 255
          L39_2 = 255
          L40_2 = 255
          L36_2(L37_2, L38_2, L39_2, L40_2)
          L36_2 = SetTextDropShadow
          L37_2 = 0
          L38_2 = 0
          L39_2 = 0
          L40_2 = 0
          L41_2 = 255
          L36_2(L37_2, L38_2, L39_2, L40_2, L41_2)
          L36_2 = SetTextEdge
          L37_2 = 1
          L38_2 = 0
          L39_2 = 0
          L40_2 = 0
          L41_2 = 255
          L36_2(L37_2, L38_2, L39_2, L40_2, L41_2)
          L36_2 = SetTextDropShadow
          L36_2()
          L36_2 = SetTextOutline
          L36_2()
          L36_2 = SetTextEntry
          L37_2 = "STRING"
          L36_2(L37_2)
          L36_2 = AddTextComponentString
          L37_2 = Drones
          L37_2 = L37_2.TargetPedInfo
          L37_2 = L37_2.Title
          L36_2(L37_2)
          L36_2 = DrawText
          L37_2 = 90
          L37_2 = L37_2 / L2_2
          L38_2 = 90
          L38_2 = L38_2 / L2_2
          L38_2 = L38_2 / 2
          L37_2 = L37_2 + L38_2
          L38_2 = 120
          L38_2 = L38_2 / L3_2
          L39_2 = 75
          L39_2 = L39_2 / L3_2
          L39_2 = L39_2 / 2
          L38_2 = L38_2 - L39_2
          L36_2(L37_2, L38_2)
          L36_2 = SetTextFont
          L37_2 = Config
          L37_2 = L37_2.TextFont
          L36_2(L37_2)
          L36_2 = SetTextScale
          L37_2 = 0.4
          L38_2 = 0.4
          L36_2(L37_2, L38_2)
          L36_2 = SetTextColour
          L37_2 = 255
          L38_2 = 255
          L39_2 = 255
          L40_2 = 255
          L36_2(L37_2, L38_2, L39_2, L40_2)
          L36_2 = SetTextDropShadow
          L37_2 = 0
          L38_2 = 0
          L39_2 = 0
          L40_2 = 0
          L41_2 = 255
          L36_2(L37_2, L38_2, L39_2, L40_2, L41_2)
          L36_2 = SetTextEdge
          L37_2 = 1
          L38_2 = 0
          L39_2 = 0
          L40_2 = 0
          L41_2 = 255
          L36_2(L37_2, L38_2, L39_2, L40_2, L41_2)
          L36_2 = SetTextDropShadow
          L36_2()
          L36_2 = SetTextOutline
          L36_2()
          L36_2 = SetTextEntry
          L37_2 = "STRING"
          L36_2(L37_2)
          L36_2 = AddTextComponentString
          L37_2 = Drones
          L37_2 = L37_2.TargetPedInfo
          L37_2 = L37_2.SubTitle
          L36_2(L37_2)
          L36_2 = DrawText
          L37_2 = 90
          L37_2 = L37_2 / L2_2
          L38_2 = 90
          L38_2 = L38_2 / L2_2
          L38_2 = L38_2 / 2
          L37_2 = L37_2 + L38_2
          L38_2 = 130
          L38_2 = L38_2 / L3_2
          L36_2(L37_2, L38_2)
          L36_2 = ipairs
          L37_2 = Drones
          L37_2 = L37_2.TargetPedInfo
          L37_2 = L37_2.Infos
          L36_2, L37_2, L38_2, L39_2 = L36_2(L37_2)
          for L40_2, L41_2 in L36_2, L37_2, L38_2, L39_2 do
            L42_2 = SetTextFont
            L43_2 = Config
            L43_2 = L43_2.TextFont
            L42_2(L43_2)
            L42_2 = SetTextScale
            L43_2 = 0.45
            L44_2 = 0.45
            L42_2(L43_2, L44_2)
            L42_2 = SetTextColour
            L43_2 = 255
            L44_2 = 255
            L45_2 = 255
            L46_2 = 255
            L42_2(L43_2, L44_2, L45_2, L46_2)
            L42_2 = SetTextDropShadow
            L43_2 = 0
            L44_2 = 0
            L45_2 = 0
            L46_2 = 0
            L47_2 = 255
            L42_2(L43_2, L44_2, L45_2, L46_2, L47_2)
            L42_2 = SetTextEdge
            L43_2 = 1
            L44_2 = 0
            L45_2 = 0
            L46_2 = 0
            L47_2 = 255
            L42_2(L43_2, L44_2, L45_2, L46_2, L47_2)
            L42_2 = SetTextDropShadow
            L42_2()
            L42_2 = SetTextOutline
            L42_2()
            L42_2 = SetTextEntry
            L43_2 = "STRING"
            L42_2(L43_2)
            L42_2 = AddTextComponentString
            L43_2 = L41_2
            L42_2(L43_2)
            L42_2 = DrawText
            L43_2 = 90
            L43_2 = L43_2 / L2_2
            L44_2 = 80
            L44_2 = L44_2 / L2_2
            L44_2 = L44_2 / 2
            L43_2 = L43_2 - L44_2
            L44_2 = 135
            L44_2 = L44_2 / L3_2
            L45_2 = 60
            L45_2 = L45_2 / L3_2
            L45_2 = L45_2 / 2
            L45_2 = L45_2 * L40_2
            L44_2 = L44_2 + L45_2
            L42_2(L43_2, L44_2)
          end
        end
        L36_2 = pairs
        L37_2 = GetActivePlayers
        L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L37_2()
        L36_2, L37_2, L38_2, L39_2 = L36_2(L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
        for L40_2, L41_2 in L36_2, L37_2, L38_2, L39_2 do
          L42_2 = GetPlayerPed
          L43_2 = L41_2
          L42_2 = L42_2(L43_2)
          L43_2 = HasEntityClearLosToEntity
          L44_2 = A1_2
          L45_2 = L42_2
          L46_2 = 17
          L43_2 = L43_2(L44_2, L45_2, L46_2)
          if L43_2 then
            L43_2 = IsEntityVisible
            L44_2 = L42_2
            L43_2 = L43_2(L44_2)
            if L43_2 then
              L43_2 = GetEntityCoords
              L44_2 = L42_2
              L43_2 = L43_2(L44_2)
              L44_2 = Drones
              L44_2 = L44_2.LastCoords
              L44_2 = L43_2 - L44_2
              L44_2 = #L44_2
              L45_2 = Config
              L45_2 = L45_2.ScannerRange
              if L44_2 < L45_2 then
                L45_2 = GetPedBoneCoords
                L46_2 = L42_2
                L47_2 = 31086
                L48_2 = 0.0
                L49_2 = 0.0
                L50_2 = 0.0
                L45_2 = L45_2(L46_2, L47_2, L48_2, L49_2, L50_2)
                L46_2 = GetScreenCoordFromWorldCoord
                L47_2 = L45_2.x
                L48_2 = L45_2.y
                L49_2 = L45_2.z
                L46_2, L47_2, L48_2 = L46_2(L47_2, L48_2, L49_2)
                if L46_2 then
                  L49_2 = 100
                  L49_2 = L49_2 / L2_2
                  L49_2 = L49_2 / L44_2
                  L49_2 = L49_2 * 5
                  L50_2 = L8_2 + 1
                  L49_2 = L49_2 * L50_2
                  L50_2 = 100
                  L50_2 = L50_2 / L3_2
                  L50_2 = L50_2 / L44_2
                  L50_2 = L50_2 * 5
                  L51_2 = L8_2 + 1
                  L50_2 = L50_2 * L51_2
                  if L32_2 == L42_2 then
                    L51_2 = DrawSprite
                    L52_2 = "helicopterhud"
                    L53_2 = "hud_lock"
                    L54_2 = L47_2
                    L55_2 = L48_2
                    L56_2 = L49_2
                    L57_2 = L50_2
                    L58_2 = 180.0
                    L59_2 = 255
                    L60_2 = 0
                    L61_2 = 0
                    L62_2 = 255
                    L51_2(L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
                  else
                    L51_2 = DrawSprite
                    L52_2 = "helicopterhud"
                    L53_2 = "hud_lock"
                    L54_2 = L47_2
                    L55_2 = L48_2
                    L56_2 = L49_2
                    L57_2 = L50_2
                    L58_2 = 180.0
                    L59_2 = 0
                    L60_2 = 255
                    L61_2 = 0
                    L62_2 = 255
                    L51_2(L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
                  end
                end
              end
            end
          end
        end
      end
      L32_2 = IsDisabledControlJustReleased
      L33_2 = 0
      L34_2 = Config
      L34_2 = L34_2.Controls
      L34_2 = L34_2.ReleaseDrone
      L32_2 = L32_2(L33_2, L34_2)
      if L32_2 then
        L16_2 = true
        L32_2 = FreezeEntityPosition
        L33_2 = A1_2
        L34_2 = true
        L32_2(L33_2, L34_2)
        L32_2 = ClearPedTasks
        L33_2 = PlayerPedId
        L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L33_2()
        L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
        L32_2 = Drones
        L32_2 = L32_2.DestroyCam
        L33_2 = Drones
        L33_2 = L33_2.DroneCam
        L32_2(L33_2)
        L32_2 = Drones
        L33_2 = Instructional
        L33_2 = L33_2.Create
        L34_2 = {}
        L35_2 = {}
        L36_2 = {}
        L37_2 = Config
        L37_2 = L37_2.Controls
        L37_2 = L37_2.ReleaseDrone
        L36_2[1] = L37_2
        L35_2.codes = L36_2
        L36_2 = Config
        L36_2 = L36_2.Transition
        L36_2 = L36_2.reconnect_drone
        L35_2.text = L36_2
        L34_2[1] = L35_2
        L33_2 = L33_2(L34_2)
        L32_2.ButtonsScaleform = L33_2
      end
    end
    L18_2 = Wait
    L19_2 = 0
    L18_2(L19_2)
  end
end
L0_1.DroneControl = L1_1
L0_1 = Drones
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = SetFocusEntity
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = ClearTimecycleModifier
  L1_2()
  L1_2 = RenderScriptCams
  L2_2 = false
  L3_2 = true
  L4_2 = 1
  L5_2 = 0
  L6_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = Wait
  L2_2 = 500
  L1_2(L2_2)
  L1_2 = DestroyCam
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.DestroyCam = L1_1
L0_1 = Drones
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = false
  if A1_2 then
    L3_2 = AddExplosion
    L4_2 = A1_2
    L5_2 = 32
    L6_2 = 15.0
    L7_2 = true
    L8_2 = false
    L9_2 = 4.0
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L2_2 = true
  end
  L3_2 = StopSound
  L4_2 = Drones
  L4_2 = L4_2.SoundID
  L3_2(L4_2)
  L3_2 = ReleaseSoundId
  L4_2 = Drones
  L4_2 = L4_2.SoundID
  L3_2(L4_2)
  L3_2 = Drones
  L3_2.SoundID = nil
  L3_2 = DisplayRadar
  L4_2 = Drones
  L4_2 = L4_2.DisplayRadar
  L3_2(L4_2)
  L3_2 = SetSeethrough
  L4_2 = false
  L3_2(L4_2)
  L3_2 = SetNightvision
  L4_2 = false
  L3_2(L4_2)
  L3_2 = SetEntityAsMissionEntity
  L4_2 = A0_2
  L5_2 = true
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = DeleteEntity
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = Drones
  L3_2 = L3_2.TargetPedHeadShotHandle
  if L3_2 then
    L3_2 = UnregisterPedheadshot
    L4_2 = Drones
    L4_2 = L4_2.TargetPedHeadShotHandle
    L3_2(L4_2)
  end
  L3_2 = Drones
  L3_2.InUse = false
end
L0_1.Disconnect = L1_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2
  L0_2 = ClearTimecycleModifier
  L0_2()
  L0_2 = ClearPedTasks
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
  L0_2 = SetFocusEntity
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
end
L0_1(L1_1)
L0_1 = Drones
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2)
  local L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L13_2 = Drones
  L13_2 = L13_2.InUse
  if L13_2 then
    return
  end
  L13_2 = Drones
  L13_2.InUse = true
  L13_2 = Drones
  L13_2 = L13_2.PerformAnimation
  L13_2 = L13_2()
  Objects = L13_2
  L13_2 = Drones
  L13_2 = L13_2.SpawnDrone
  L14_2 = A0_2
  L15_2 = A1_2
  L16_2 = A2_2
  L17_2 = A3_2
  L18_2 = A4_2
  L19_2 = A5_2
  L20_2 = A6_2
  L21_2 = A7_2
  L22_2 = A8_2
  L23_2 = A9_2
  L24_2 = A10_2
  L25_2 = A11_2
  L26_2 = A12_2
  L27_2 = Objects
  L27_2 = L27_2.drone
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L13_2 = pairs
  L14_2 = Objects
  L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
  for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
    L19_2 = SetEntityAsMissionEntity
    L20_2 = L18_2
    L21_2 = true
    L22_2 = true
    L19_2(L20_2, L21_2, L22_2)
    L19_2 = DeleteEntity
    L20_2 = L18_2
    L19_2(L20_2)
  end
  L13_2 = ClearPedTasks
  L14_2 = PlayerPedId
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L14_2()
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L13_2 = Drones
  L13_2.InUse = false
end
L0_1.Use = L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L1_2 = Drones
  L1_2 = L1_2.Debug
  L2_2 = "Init Drone"
  L1_2(L2_2)
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsEntityDead
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = IsPedFalling
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = IsEntityInWater
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        goto lbl_29
      end
    end
  end
  L2_2 = Notify
  L3_2 = Config
  L3_2 = L3_2.Transition
  L3_2 = L3_2.cant_use_drone
  L4_2 = 2
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_29::
  L2_2 = Config
  L2_2 = L2_2.UseDroneInVehicle
  if not L2_2 then
    L2_2 = IsPedInAnyVehicle
    L3_2 = L1_2
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = Notify
      L3_2 = Config
      L3_2 = L3_2.Transition
      L3_2 = L3_2.cant_use_drone
      L4_2 = 2
      L2_2(L3_2, L4_2)
      return
    end
  end
  L2_2 = Drones
  L2_2 = L2_2.Debug
  L3_2 = "Setting Drone Options"
  L2_2(L3_2)
  L2_2 = 1.0
  L3_2 = 100.0
  L4_2 = false
  L5_2 = false
  L6_2 = false
  L7_2 = false
  L8_2 = false
  L9_2 = false
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L14_2 = Drones
  L14_2.UsedItem = nil
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.speed
    if nil ~= L14_2 then
      L14_2 = type
      L15_2 = A0_2.speed
      L14_2 = L14_2(L15_2)
      if "number" == L14_2 then
        L14_2 = A0_2.speed
        if L14_2 > 1.0 then
          L14_2 = A0_2.speed
          L14_2 = L14_2 + 0.0
          L2_2 = L14_2 or L2_2
          if not L14_2 then
            L2_2 = 1.0
          end
        end
      end
    end
  end
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.range
    if nil ~= L14_2 then
      L14_2 = type
      L15_2 = A0_2.range
      L14_2 = L14_2(L15_2)
      if "number" == L14_2 then
        L14_2 = A0_2.range
        if L14_2 > 1.0 then
          L14_2 = A0_2.range
          L14_2 = L14_2 + 0.0
          L3_2 = L14_2 or L3_2
          if not L14_2 then
            L3_2 = 100.0
          end
        end
      end
    end
  end
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.sphere
    if nil ~= L14_2 then
      L14_2 = type
      L15_2 = A0_2.sphere
      L14_2 = L14_2(L15_2)
      if "boolean" == L14_2 then
        L14_2 = A0_2.sphere
        L4_2 = L14_2 or L4_2
        if not L14_2 then
          L4_2 = false
        end
      end
    end
  end
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.health
    if nil ~= L14_2 then
      L14_2 = type
      L15_2 = A0_2.health
      L14_2 = L14_2(L15_2)
      if "boolean" == L14_2 then
        L5_2 = false
      else
        L14_2 = type
        L15_2 = A0_2.health
        L14_2 = L14_2(L15_2)
        if "number" == L14_2 then
          L14_2 = A0_2.health
          if L14_2 >= 1 then
            L14_2 = math
            L14_2 = L14_2.floor
            L15_2 = A0_2.health
            L14_2 = L14_2(L15_2)
            L5_2 = L14_2
          else
            L5_2 = 100
          end
        end
      end
    end
  end
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.explode
    if nil ~= L14_2 then
      L14_2 = type
      L15_2 = A0_2.explode
      L14_2 = L14_2(L15_2)
      if "boolean" == L14_2 then
        L14_2 = A0_2.explode
        L6_2 = L14_2 or L6_2
        if not L14_2 then
          L6_2 = false
        end
      end
    end
  end
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.heatvision
    if nil ~= L14_2 then
      L14_2 = type
      L15_2 = A0_2.heatvision
      L14_2 = L14_2(L15_2)
      if "boolean" == L14_2 then
        L14_2 = A0_2.heatvision
        L8_2 = L14_2 or L8_2
        if not L14_2 then
          L8_2 = false
        end
      end
    end
  end
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.spotlight
    if nil ~= L14_2 then
      L14_2 = type
      L15_2 = A0_2.spotlight
      L14_2 = L14_2(L15_2)
      if "boolean" == L14_2 then
        L14_2 = A0_2.spotlight
        L7_2 = L14_2 or L7_2
        if not L14_2 then
          L7_2 = false
        end
      end
    end
  end
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.nightvision
    if nil ~= L14_2 then
      L14_2 = type
      L15_2 = A0_2.nightvision
      L14_2 = L14_2(L15_2)
      if "boolean" == L14_2 then
        L14_2 = A0_2.nightvision
        L9_2 = L14_2 or L9_2
        if not L14_2 then
          L9_2 = false
        end
      end
    end
  end
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.sound
    if nil ~= L14_2 then
      L14_2 = type
      L15_2 = A0_2.sound
      L14_2 = L14_2(L15_2)
      if "boolean" == L14_2 then
        L14_2 = A0_2.sound
        L10_2 = L14_2 or L10_2
        if not L14_2 then
          L10_2 = false
        end
      end
    end
  end
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.scanner
    if nil ~= L14_2 then
      L14_2 = type
      L15_2 = A0_2.scanner
      L14_2 = L14_2(L15_2)
      if "boolean" == L14_2 then
        L14_2 = A0_2.scanner
        L11_2 = L14_2 or L11_2
        if not L14_2 then
          L11_2 = false
        end
      end
    end
  end
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.release
    if nil ~= L14_2 then
      L14_2 = type
      L15_2 = A0_2.release
      L14_2 = L14_2(L15_2)
      if "boolean" == L14_2 then
        L14_2 = A0_2.release
        L12_2 = L14_2 or L12_2
        if not L14_2 then
          L12_2 = false
        end
      end
    end
  end
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.soundboard
    if nil ~= L14_2 then
      L14_2 = type
      L15_2 = A0_2.soundboard
      L14_2 = L14_2(L15_2)
      if "boolean" == L14_2 then
        L14_2 = A0_2.soundboard
        L13_2 = L14_2 or L13_2
        if not L14_2 then
          L13_2 = false
        end
      end
    end
  end
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.item
    if nil ~= L14_2 then
      L14_2 = type
      L15_2 = A0_2.item
      L14_2 = L14_2(L15_2)
      if "string" == L14_2 then
        L14_2 = Drones
        L15_2 = A0_2.item
        L14_2.UsedItem = L15_2
      end
    end
  end
  L14_2 = type
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  if "table" == L14_2 then
    L14_2 = A0_2.model
    if nil ~= L14_2 then
      L14_2 = A0_2.model
      if "" ~= L14_2 then
        L14_2 = type
        L15_2 = A0_2.model
        L14_2 = L14_2(L15_2)
        if "string" == L14_2 then
          L14_2 = Drones
          L14_2 = L14_2.SceneModels
          L15_2 = GetHashKey
          L16_2 = A0_2.model
          L15_2 = L15_2(L16_2)
          L14_2.drone = L15_2
        end
      end
    end
  end
  timer = false
  L14_2 = Drones
  L14_2 = L14_2.Use
  L15_2 = L2_2
  L16_2 = L3_2
  L17_2 = L4_2
  L18_2 = timer
  L19_2 = L5_2
  L20_2 = L6_2
  L21_2 = L8_2
  L22_2 = L9_2
  L23_2 = L7_2
  L24_2 = L10_2
  L25_2 = L11_2
  L26_2 = L12_2
  L27_2 = L13_2
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
end
InitiateDrone = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = Drones
  L0_2 = L0_2.InUse
  if L0_2 then
    L0_2 = Drones
    L0_2.InUse = false
  end
end
StopDrone = L0_1
L0_1 = RegisterNetEvent
L1_1 = "dz-drone:client:TargetPlayerInformations"
function L2_1(A0_2)
  local L1_2
  L1_2 = Drones
  L1_2.TargetPedInfo = A0_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = Config
L1_1 = L1_1.DroneCamScaleforms
function L2_1()
  local L0_2, L1_2
  L0_2 = Drones
  L1_2 = Drones
  L1_2 = L1_2.DroneCamScaleforms
  L1_2 = not L1_2
  L0_2.DroneCamScaleforms = L1_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = Config
L1_1 = L1_1.DroneInstructionalButtons
function L2_1()
  local L0_2, L1_2
  L0_2 = Drones
  L1_2 = Drones
  L1_2 = L1_2.DroneInstructionalButtons
  L1_2 = not L1_2
  L0_2.DroneInstructionalButtons = L1_2
end
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = {}
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = Config
  L0_2 = L0_2.SyncDroneSound
  if L0_2 then
    while true do
      L0_2 = Wait
      L1_2 = 2000
      L0_2(L1_2)
      L0_2 = {}
      L0_1 = L0_2
      L0_2 = pairs
      L1_2 = GetGamePool
      L2_2 = "CObject"
      L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L1_2(L2_2)
      L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
        L6_2 = GetEntityModel
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        L7_2 = Drones
        L7_2 = L7_2.SceneModels
        L7_2 = L7_2.drone
        if L6_2 == L7_2 then
          L6_2 = L0_1
          L6_2[L5_2] = true
          L6_2 = L1_1
          L6_2 = L6_2[L5_2]
          if nil == L6_2 then
            L6_2 = L1_1
            L7_2 = GetSoundId
            L7_2 = L7_2()
            L6_2[L5_2] = L7_2
            L6_2 = PlaySoundFromEntity
            L7_2 = L1_1
            L7_2 = L7_2[L5_2]
            L8_2 = "Flight_Loop"
            L9_2 = L5_2
            L10_2 = "DLC_BTL_Drone_Sounds"
            L11_2 = true
            L12_2 = 0
            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
          end
        end
      end
      L0_2 = pairs
      L1_2 = L1_1
      L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
      for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
        L6_2 = L0_1
        L6_2 = L6_2[L4_2]
        if not L6_2 then
          L6_2 = StopSound
          L7_2 = L5_2
          L6_2(L7_2)
          L6_2 = ReleaseSoundId
          L7_2 = L5_2
          L6_2(L7_2)
          L6_2 = L1_1
          L6_2[L4_2] = nil
        end
      end
    end
  end
end
L2_1(L3_1)
L2_1 = RegisterNUICallback
L3_1 = "PlaySound"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tostring
  L3_2 = A0_2.sound
  L2_2 = L2_2(L3_2)
  L3_2 = DoesEntityExist
  L4_2 = Drones
  L4_2 = L4_2.DroneObj
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "dz-drone:server:PlayerSound"
    L5_2 = L2_2
    L6_2 = GetEntityCoords
    L7_2 = Drones
    L7_2 = L7_2.DroneObj
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "CloseMenu"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "dz-drone:server:PlayerSound"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L3_2 = A1_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = GetEntityCoords
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L3_2 - L5_2
  L6_2 = #L6_2
  L7_2 = Config
  L7_2 = L7_2.SoundsRange
  if L6_2 <= L7_2 then
    L6_2 = SendNUIMessage
    L7_2 = {}
    L7_2.action = "playSound"
    L7_2.sound = A0_2
    L6_2(L7_2)
  else
    L6_2 = DoesEntityExist
    L7_2 = Drones
    L7_2 = L7_2.DroneObj
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = GetEntityCoords
      L7_2 = Drones
      L7_2 = L7_2.DroneObj
      L6_2 = L6_2(L7_2)
      L7_2 = L3_2 - L6_2
      L7_2 = #L7_2
      L8_2 = Config
      L8_2 = L8_2.SoundsRange
      if L7_2 <= L8_2 then
        L7_2 = SendNUIMessage
        L8_2 = {}
        L8_2.action = "playSound"
        L8_2.sound = A0_2
        L7_2(L8_2)
      end
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = "onResourceStop"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 == A0_2 then
    L1_2 = SetEntityAsMissionEntity
    L2_2 = Drones
    L2_2 = L2_2.DroneObj
    L3_2 = true
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DeleteEntity
    L2_2 = Drones
    L2_2 = L2_2.DroneObj
    L1_2(L2_2)
    L1_2 = pairs
    L2_2 = Objects
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = SetEntityAsMissionEntity
      L8_2 = L6_2
      L9_2 = true
      L10_2 = true
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = DeleteEntity
      L8_2 = L6_2
      L7_2(L8_2)
    end
    L1_2 = ClearTimecycleModifier
    L1_2()
    L1_2 = ClearPedTasks
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L1_2 = SetFocusEntity
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L1_2 = DoScreenFadeIn
    L2_2 = 500
    L1_2(L2_2)
  end
end
L2_1(L3_1, L4_1)

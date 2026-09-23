local L0_1, L1_1, L2_1, L3_1, L4_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = #A0_2
  L2_2 = math
  L2_2 = L2_2.ceil
  L3_2 = L1_2 / 99
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = 1
  L5_2 = L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L7_2 - 1
    L8_2 = L8_2 * 99
    L8_2 = L8_2 + 1
    L9_2 = math
    L9_2 = L9_2.clamp
    L10_2 = string
    L10_2 = L10_2.sub
    L11_2 = A0_2
    L12_2 = L8_2
    L10_2 = L10_2(L11_2, L12_2)
    L10_2 = #L10_2
    L11_2 = 0
    L12_2 = 99
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    if 1 ~= L7_2 then
      L10_2 = L8_2 - 1
      if L10_2 then
        goto lbl_37
      end
    end
    L10_2 = 0
    ::lbl_37::
    L10_2 = L10_2 + L9_2
    L11_2 = string
    L11_2 = L11_2.sub
    L12_2 = A0_2
    L13_2 = L8_2
    L14_2 = L10_2
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L3_2[L7_2] = L11_2
  end
  return L3_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  if L2_2 < 100 then
    L3_2 = AddTextComponentSubstringPlayerName
    L4_2 = L1_2
    L3_2(L4_2)
  else
    L3_2 = L0_1
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = 1
    L5_2 = #L3_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = AddTextComponentSubstringPlayerName
      L9_2 = L3_2[L7_2]
      L8_2(L9_2)
    end
  end
end
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2)
  local L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L13_2 = A0_2
  L14_2 = A1_2 or L14_2
  if not A1_2 then
    L14_2 = 0
  end
  L14_2 = L14_2 / 1920
  L15_2 = A2_2 or L15_2
  if not A2_2 then
    L15_2 = 0
  end
  L15_2 = L15_2 / 1080
  L16_2 = SetTextFont
  L17_2 = Config
  L17_2 = L17_2.UIFontID
  L16_2(L17_2)
  L16_2 = SetTextScale
  L17_2 = 1.0
  L18_2 = A4_2 or L18_2
  if not A4_2 then
    L18_2 = 0
  end
  L16_2(L17_2, L18_2)
  L16_2 = SetTextColour
  L17_2 = A5_2 or L17_2
  if not A5_2 then
    L17_2 = 255
  end
  L18_2 = A6_2 or L18_2
  if not A6_2 then
    L18_2 = 255
  end
  L19_2 = A7_2 or L19_2
  if not A7_2 then
    L19_2 = 255
  end
  L20_2 = A8_2 or L20_2
  if not A8_2 then
    L20_2 = 255
  end
  L16_2(L17_2, L18_2, L19_2, L20_2)
  if A10_2 then
    L16_2 = SetTextDropShadow
    L16_2()
  end
  if A11_2 then
    L16_2 = SetTextOutline
    L16_2()
  end
  if nil ~= A9_2 then
    if 1 == A9_2 or "Center" == A9_2 or "Centre" == A9_2 then
      L16_2 = SetTextCentre
      L17_2 = true
      L16_2(L17_2)
    elseif 2 == A9_2 or "Right" == A9_2 then
      L16_2 = SetTextRightJustify
      L17_2 = true
      L16_2(L17_2)
    end
  end
  if A12_2 and 0 ~= A12_2 then
    if 1 == A9_2 or "Center" == A9_2 or "Centre" == A9_2 then
      L16_2 = SetTextWrap
      L17_2 = A12_2 / 1920
      L17_2 = L17_2 / 2
      L17_2 = L14_2 - L17_2
      L18_2 = A12_2 / 1920
      L18_2 = L18_2 / 2
      L18_2 = L14_2 + L18_2
      L16_2(L17_2, L18_2)
    elseif 2 == A9_2 or "Right" == A9_2 then
      L16_2 = SetTextWrap
      L17_2 = 0
      L18_2 = L14_2
      L16_2(L17_2, L18_2)
    else
      L16_2 = SetTextWrap
      L17_2 = L14_2
      L18_2 = A12_2 / 1920
      L18_2 = L14_2 + L18_2
      L16_2(L17_2, L18_2)
    end
  elseif 2 == A9_2 or "Right" == A9_2 then
    L16_2 = SetTextWrap
    L17_2 = 0
    L18_2 = L14_2
    L16_2(L17_2, L18_2)
  end
  L16_2 = L13_2
  L17_2 = L14_2
  L18_2 = L15_2
  return L16_2, L17_2, L18_2
end
L3_1 = {}
Graphics = L3_1
L3_1 = Graphics
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = BeginTextCommandGetWidth
  L4_2 = "CELL_EMAIL_BCON"
  L3_2(L4_2)
  L3_2 = AddTextComponentSubstringPlayerName
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = SetTextFont
  L4_2 = Config
  L4_2 = L4_2.UIFontID
  L3_2(L4_2)
  L3_2 = SetTextScale
  L4_2 = 1.0
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = 0
  end
  L3_2(L4_2, L5_2)
  L3_2 = EndTextCommandGetWidth
  L4_2 = true
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 * 1920
  return L3_2
end
L3_1.MeasureStringWidth = L4_1
L3_1 = Graphics
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L8_2 = A0_2 or nil
  if not A0_2 then
    L8_2 = 0
  end
  L8_2 = L8_2 / 1920
  L9_2 = A1_2 or L9_2
  if not A1_2 then
    L9_2 = 0
  end
  L9_2 = L9_2 / 1080
  L10_2 = A2_2 or L10_2
  if not A2_2 then
    L10_2 = 0
  end
  L10_2 = L10_2 / 1920
  L11_2 = A3_2 or L11_2
  if not A3_2 then
    L11_2 = 0
  end
  L11_2 = L11_2 / 1080
  L12_2 = DrawRect
  L13_2 = L10_2 * 0.5
  L13_2 = L8_2 + L13_2
  L14_2 = L11_2 * 0.5
  L14_2 = L9_2 + L14_2
  L15_2 = L10_2
  L16_2 = L11_2
  L17_2 = A4_2 or L17_2
  if not A4_2 then
    L17_2 = 255
  end
  L18_2 = A5_2 or L18_2
  if not A5_2 then
    L18_2 = 255
  end
  L19_2 = A6_2 or L19_2
  if not A6_2 then
    L19_2 = 255
  end
  L20_2 = A7_2 or L20_2
  if not A7_2 then
    L20_2 = 255
  end
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
end
L3_1.Rectangle = L4_1
L3_1 = Graphics
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2)
  local L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L11_2 = A2_2 or nil
  if not A2_2 then
    L11_2 = 0
  end
  L11_2 = L11_2 / 1920
  L12_2 = A3_2 or L12_2
  if not A3_2 then
    L12_2 = 0
  end
  L12_2 = L12_2 / 1080
  L13_2 = A4_2 or L13_2
  if not A4_2 then
    L13_2 = 0
  end
  L13_2 = L13_2 / 1920
  L14_2 = A5_2 or L14_2
  if not A5_2 then
    L14_2 = 0
  end
  L14_2 = L14_2 / 1080
  L15_2 = HasStreamedTextureDictLoaded
  L16_2 = A0_2
  L15_2 = L15_2(L16_2)
  if not L15_2 then
    L15_2 = RequestStreamedTextureDict
    L16_2 = A0_2
    L17_2 = true
    L15_2(L16_2, L17_2)
  end
  L15_2 = DrawSprite
  L16_2 = A0_2
  L17_2 = A1_2
  L18_2 = L13_2 * 0.5
  L18_2 = L11_2 + L18_2
  L19_2 = L14_2 * 0.5
  L19_2 = L12_2 + L19_2
  L20_2 = L13_2
  L21_2 = L14_2
  L22_2 = A6_2 or L22_2
  if not A6_2 then
    L22_2 = 0
  end
  L23_2 = A7_2 or L23_2
  if not A7_2 then
    L23_2 = 255
  end
  L24_2 = A8_2 or L24_2
  if not A8_2 then
    L24_2 = 255
  end
  L25_2 = A9_2 or L25_2
  if not A9_2 then
    L25_2 = 255
  end
  L26_2 = A10_2 or L26_2
  if not A10_2 then
    L26_2 = 255
  end
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
end
L3_1.Sprite = L4_1
L3_1 = Graphics
L4_1 = {}
L3_1.LineCache = L4_1
L3_1 = Graphics
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2)
  local L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  if not A0_2 then
    L13_2 = 1
    return L13_2
  end
  L13_2 = Graphics
  L13_2 = L13_2.LineCache
  L13_2 = L13_2[A0_2]
  if L13_2 then
    L13_2 = Graphics
    L13_2 = L13_2.LineCache
    L13_2 = L13_2[A0_2]
    return L13_2
  end
  L13_2 = L2_1
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
  L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L16_2 = BeginTextCommandLineCount
  L17_2 = "CELL_EMAIL_BCON"
  L16_2(L17_2)
  L16_2 = L1_1
  L17_2 = L13_2
  L16_2(L17_2)
  L16_2 = EndTextCommandLineCount
  L17_2 = L14_2
  L18_2 = L15_2
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = Graphics
  L17_2 = L17_2.LineCache
  L17_2[A0_2] = L16_2
  return L16_2
end
L3_1.GetLineCount = L4_1
L3_1 = Graphics
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2)
  local L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L13_2 = L2_1
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
  L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L16_2 = BeginTextCommandDisplayText
  L17_2 = "CELL_EMAIL_BCON"
  L16_2(L17_2)
  L16_2 = L1_1
  L17_2 = L13_2
  L16_2(L17_2)
  L16_2 = EndTextCommandDisplayText
  L17_2 = L14_2
  L18_2 = L15_2
  L16_2(L17_2, L18_2)
end
L3_1.Text = L4_1
L3_1 = Graphics
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = math
  L4_2 = L4_2.round
  L5_2 = GetControlNormal
  L6_2 = 2
  L7_2 = 239
  L5_2 = L5_2(L6_2, L7_2)
  L5_2 = L5_2 * 1920
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 / 1920
  L5_2 = math
  L5_2 = L5_2.round
  L6_2 = GetControlNormal
  L7_2 = 2
  L8_2 = 240
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = L6_2 * 1080
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 / 1080
  L6_2 = A0_2 / 1920
  A1_2 = A1_2 / 1080
  A0_2 = L6_2
  L6_2 = A2_2 / 1920
  A3_2 = A3_2 / 1080
  A2_2 = L6_2
  L6_2 = L4_2 >= A0_2
  return L6_2
end
L3_1.IsMouseInBounds = L4_1
L3_1 = Graphics
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2 * 1920
  L3_2 = A1_2 * 1080
  return L2_2, L3_2
end
L3_1.ConvertToPixel = L4_1
L3_1 = Graphics
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = GetGameplayCamRot
  L3_2 = 0
  L2_2 = L2_2(L3_2)
  L3_2 = GetGameplayCamCoord
  L3_2 = L3_2()
  L4_2 = vector2
  L5_2 = GetControlNormal
  L6_2 = 2
  L7_2 = 239
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = GetControlNormal
  L7_2 = 2
  L8_2 = 240
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L6_2(L7_2, L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = Graphics
  L5_2 = L5_2.ScreenRelToWorld
  L6_2 = L3_2
  L7_2 = L2_2
  L8_2 = L4_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = L6_2 * A0_2
  L7_2 = L3_2 + L7_2
  L8_2 = _ENV
  L9_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L8_2 = L8_2[L9_2]
  L9_2 = L5_2
  L10_2 = L7_2
  L11_2 = A1_2
  L12_2 = 0
  L13_2 = 0
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = GetShapeTestResult
  L10_2 = L8_2
  L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
  if 1 == L10_2 then
    L14_2 = true
    if L14_2 then
      goto lbl_44
    end
  end
  L14_2 = false
  ::lbl_44::
  L15_2 = L11_2
  L16_2 = L12_2
  L17_2 = L13_2
  if L13_2 >= 1 then
    L18_2 = GetEntityType
    L19_2 = L13_2
    L18_2 = L18_2(L19_2)
    if L18_2 then
      goto lbl_55
    end
  end
  L18_2 = 0
  ::lbl_55::
  L19_2 = L7_2
  L20_2 = L4_2
  return L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
end
L3_1.ScreenToWorld = L4_1
L3_1 = Graphics
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = Graphics
  L3_2 = L3_2.RotationToDirection
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = vector3
  L5_2 = A1_2.x
  L5_2 = L5_2 + 1.0
  L6_2 = A1_2.y
  L7_2 = A1_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = vector3
  L6_2 = A1_2.x
  L6_2 = L6_2 - 1.0
  L7_2 = A1_2.y
  L8_2 = A1_2.z
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = vector3
  L7_2 = A1_2.x
  L8_2 = A1_2.y
  L9_2 = A1_2.z
  L9_2 = L9_2 - 1.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = vector3
  L8_2 = A1_2.x
  L9_2 = A1_2.y
  L10_2 = A1_2.z
  L10_2 = L10_2 + 1.0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = Graphics
  L8_2 = L8_2.RotationToDirection
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L9_2 = Graphics
  L9_2 = L9_2.RotationToDirection
  L10_2 = L6_2
  L9_2 = L9_2(L10_2)
  L8_2 = L8_2 - L9_2
  L9_2 = Graphics
  L9_2 = L9_2.RotationToDirection
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  L10_2 = Graphics
  L10_2 = L10_2.RotationToDirection
  L11_2 = L5_2
  L10_2 = L10_2(L11_2)
  L9_2 = L9_2 - L10_2
  L10_2 = A1_2.y
  L11_2 = math
  L11_2 = L11_2.pi
  L10_2 = L10_2 * L11_2
  L10_2 = L10_2 / 180.0
  L10_2 = -L10_2
  L11_2 = math
  L11_2 = L11_2.cos
  L12_2 = L10_2
  L11_2 = L11_2(L12_2)
  L11_2 = L8_2 * L11_2
  L12_2 = math
  L12_2 = L12_2.sin
  L13_2 = L10_2
  L12_2 = L12_2(L13_2)
  L12_2 = L9_2 * L12_2
  L11_2 = L11_2 - L12_2
  L12_2 = math
  L12_2 = L12_2.sin
  L13_2 = L10_2
  L12_2 = L12_2(L13_2)
  L12_2 = L8_2 * L12_2
  L13_2 = math
  L13_2 = L13_2.cos
  L14_2 = L10_2
  L13_2 = L13_2(L14_2)
  L13_2 = L9_2 * L13_2
  L12_2 = L12_2 + L13_2
  L13_2 = L3_2 * 1.0
  L13_2 = A0_2 + L13_2
  L14_2 = L13_2 + L11_2
  L14_2 = L14_2 + L12_2
  L15_2 = Graphics
  L15_2 = L15_2.World3DToScreen2D
  L16_2 = L14_2
  L15_2 = L15_2(L16_2)
  L16_2 = Graphics
  L16_2 = L16_2.World3DToScreen2D
  L17_2 = L13_2
  L16_2 = L16_2(L17_2)
  L17_2 = A2_2.x
  L18_2 = L16_2.x
  L17_2 = L17_2 - L18_2
  L18_2 = L15_2.x
  L19_2 = L16_2.x
  L18_2 = L18_2 - L19_2
  L17_2 = L17_2 / L18_2
  L18_2 = A2_2.y
  L19_2 = L16_2.y
  L18_2 = L18_2 - L19_2
  L19_2 = L15_2.y
  L20_2 = L16_2.y
  L19_2 = L19_2 - L20_2
  L18_2 = L18_2 / L19_2
  L19_2 = L11_2 * L17_2
  L19_2 = L13_2 + L19_2
  L20_2 = L12_2 * L18_2
  L19_2 = L19_2 + L20_2
  L20_2 = L11_2 * L17_2
  L20_2 = L3_2 + L20_2
  L21_2 = L12_2 * L18_2
  L20_2 = L20_2 + L21_2
  L21_2 = L19_2
  L22_2 = L20_2
  return L21_2, L22_2
end
L3_1.ScreenRelToWorld = L4_1
L3_1 = Graphics
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.x
  L2_2 = math
  L2_2 = L2_2.pi
  L1_2 = L1_2 * L2_2
  L1_2 = L1_2 / 180.0
  L2_2 = A0_2.z
  L3_2 = math
  L3_2 = L3_2.pi
  L2_2 = L2_2 * L3_2
  L2_2 = L2_2 / 180.0
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = vector3
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L5_2 = -L5_2
  L5_2 = L5_2 * L3_2
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 * L3_2
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L1_2
  L7_2, L8_2 = L7_2(L8_2)
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
L3_1.RotationToDirection = L4_1
L3_1 = Graphics
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GetScreenCoordFromWorldCoord
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2)
  L4_2 = vector2
  L5_2 = L2_2
  L6_2 = L3_2
  return L4_2(L5_2, L6_2)
end
L3_1.World3DToScreen2D = L4_1

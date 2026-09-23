local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
Panels = L0_1
L0_1 = {}
L0_1.Default = 1
L0_1.Horizontal = 2
L0_1.Vertical = 3
L1_1 = {}
L2_1 = L0_1.Default
L3_1 = {}
L3_1.Dictionary = "pause_menu_pages_char_mom_dad"
L3_1.Texture = "nose_grid"
L1_1[L2_1] = L3_1
L2_1 = L0_1.Horizontal
L3_1 = {}
L3_1.Dictionary = "RageUI_"
L3_1.Texture = "horizontal_grid"
L1_1[L2_1] = L3_1
L2_1 = L0_1.Vertical
L3_1 = {}
L3_1.Dictionary = "RageUI_"
L3_1.Texture = "vertical_grid"
L1_1[L2_1] = L3_1
L2_1 = {}
L3_1 = {}
L3_1.Dictionary = "commonmenu"
L3_1.Texture = "gradient_bgd"
L3_1.Y = 4
L3_1.Width = 431
L3_1.Height = 275
L2_1.Background = L3_1
L3_1 = {}
L3_1.X = 115.5
L3_1.Y = 47.5
L3_1.Width = 200
L3_1.Height = 200
L2_1.Grid = L3_1
L3_1 = {}
L3_1.Dictionary = "mpinventory"
L3_1.Texture = "in_world_circle"
L3_1.X = 115.5
L3_1.Y = 47.5
L3_1.Width = 20
L3_1.Height = 20
L2_1.Circle = L3_1
L3_1 = {}
L4_1 = {}
L4_1.X = 215.5
L4_1.Y = 15
L4_1.Scale = 0.35
L3_1.Top = L4_1
L4_1 = {}
L4_1.X = 215.5
L4_1.Y = 250
L4_1.Scale = 0.35
L3_1.Bottom = L4_1
L4_1 = {}
L4_1.X = 57.75
L4_1.Y = 130
L4_1.Scale = 0.35
L3_1.Left = L4_1
L4_1 = {}
L4_1.X = 373.25
L4_1.Y = 130
L4_1.Scale = 0.35
L3_1.Right = L4_1
L2_1.Text = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L9_2 = RageUI
  L9_2 = L9_2.CurrentMenu
  L10_2 = L9_2.Index
  if L10_2 == A8_2 then
    L10_2 = L0_1.Default
    L10_2 = A1_2 or L10_2
    if A0_2 ~= L10_2 or not A1_2 then
      L10_2 = L0_1.Horizontal
      L10_2 = A1_2 or L10_2
      if A0_2 ~= L10_2 or not A1_2 then
        L10_2 = L0_1.Vertical
        L10_2 = A0_2 == L10_2 and L10_2
      end
    end
    L11_2 = L0_1.Default
    L11_2 = A2_2 or L11_2
    if A0_2 ~= L11_2 or not A2_2 then
      L11_2 = L0_1.Horizontal
      if A0_2 == L11_2 then
        L11_2 = 0.5
        if L11_2 then
          goto lbl_41
        end
      end
      L11_2 = L0_1.Vertical
      L11_2 = A0_2 == L11_2 and L11_2
    end
    ::lbl_41::
    L12_2 = Graphics
    L12_2 = L12_2.IsMouseInBounds
    L13_2 = L9_2.X
    L14_2 = L2_1.Grid
    L14_2 = L14_2.X
    L13_2 = L13_2 + L14_2
    L14_2 = L9_2.SafeZoneSize
    L14_2 = L14_2.X
    L13_2 = L13_2 + L14_2
    L13_2 = L13_2 + 20
    L14_2 = L9_2.Y
    L15_2 = L2_1.Grid
    L15_2 = L15_2.Y
    L14_2 = L14_2 + L15_2
    L15_2 = L9_2.SafeZoneSize
    L15_2 = L15_2.Y
    L14_2 = L14_2 + L15_2
    L15_2 = L9_2.SubtitleHeight
    L14_2 = L14_2 + L15_2
    L15_2 = RageUI
    L15_2 = L15_2.ItemOffset
    L14_2 = L14_2 + L15_2
    L14_2 = L14_2 + 20
    L15_2 = L2_1.Grid
    L15_2 = L15_2.Width
    L16_2 = L9_2.WidthOffset
    L15_2 = L15_2 + L16_2
    L15_2 = L15_2 - 40
    L16_2 = L2_1.Grid
    L16_2 = L16_2.Height
    L16_2 = L16_2 - 40
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    L13_2 = false
    L14_2 = L9_2.X
    L15_2 = L2_1.Grid
    L15_2 = L15_2.X
    L14_2 = L14_2 + L15_2
    L15_2 = L9_2.WidthOffset
    L15_2 = L15_2 / 2
    L14_2 = L14_2 + L15_2
    L14_2 = L14_2 + 20
    L15_2 = L9_2.Y
    L16_2 = L2_1.Grid
    L16_2 = L16_2.Y
    L15_2 = L15_2 + L16_2
    L16_2 = L9_2.SubtitleHeight
    L15_2 = L15_2 + L16_2
    L16_2 = RageUI
    L16_2 = L16_2.ItemOffset
    L15_2 = L15_2 + L16_2
    L15_2 = L15_2 + 20
    if L10_2 < 0.0 or L10_2 > 1.0 then
      L10_2 = 0.0
    end
    if L11_2 < 0.0 or L11_2 > 1.0 then
      L11_2 = 0.0
    end
    L16_2 = L2_1.Grid
    L16_2 = L16_2.Width
    L16_2 = L16_2 - 40
    L16_2 = L16_2 * L10_2
    L16_2 = L14_2 + L16_2
    L17_2 = L2_1.Circle
    L17_2 = L17_2.Width
    L17_2 = L17_2 / 2
    L14_2 = L16_2 - L17_2
    L16_2 = L2_1.Grid
    L16_2 = L16_2.Height
    L16_2 = L16_2 - 40
    L16_2 = L16_2 * L11_2
    L16_2 = L15_2 + L16_2
    L17_2 = L2_1.Circle
    L17_2 = L17_2.Height
    L17_2 = L17_2 / 2
    L15_2 = L16_2 - L17_2
    L16_2 = Graphics
    L16_2 = L16_2.Sprite
    L17_2 = "commonmenu"
    L18_2 = "gradient_bgd"
    L19_2 = L9_2.X
    L20_2 = L9_2.Y
    L21_2 = L2_1.Background
    L21_2 = L21_2.Y
    L20_2 = L20_2 + L21_2
    L21_2 = L9_2.SubtitleHeight
    L20_2 = L20_2 + L21_2
    L21_2 = RageUI
    L21_2 = L21_2.ItemOffset
    L20_2 = L20_2 + L21_2
    L21_2 = L2_1.Background
    L21_2 = L21_2.Width
    L22_2 = L9_2.WidthOffset
    L21_2 = L21_2 + L22_2
    L22_2 = L2_1.Background
    L22_2 = L22_2.Height
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L16_2 = Graphics
    L16_2 = L16_2.Sprite
    L17_2 = L1_1
    L17_2 = L17_2[A0_2]
    L17_2 = L17_2.Dictionary
    L18_2 = L1_1
    L18_2 = L18_2[A0_2]
    L18_2 = L18_2.Texture
    L19_2 = L9_2.X
    L20_2 = L2_1.Grid
    L20_2 = L20_2.X
    L19_2 = L19_2 + L20_2
    L20_2 = L9_2.WidthOffset
    L20_2 = L20_2 / 2
    L19_2 = L19_2 + L20_2
    L20_2 = L9_2.Y
    L21_2 = L2_1.Grid
    L21_2 = L21_2.Y
    L20_2 = L20_2 + L21_2
    L21_2 = L9_2.SubtitleHeight
    L20_2 = L20_2 + L21_2
    L21_2 = RageUI
    L21_2 = L21_2.ItemOffset
    L20_2 = L20_2 + L21_2
    L21_2 = L2_1.Grid
    L21_2 = L21_2.Width
    L22_2 = L2_1.Grid
    L22_2 = L22_2.Height
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L16_2 = Graphics
    L16_2 = L16_2.Sprite
    L17_2 = L2_1.Circle
    L17_2 = L17_2.Dictionary
    L18_2 = L2_1.Circle
    L18_2 = L18_2.Texture
    L19_2 = L14_2
    L20_2 = L15_2
    L21_2 = L2_1.Circle
    L21_2 = L21_2.Width
    L22_2 = L2_1.Circle
    L22_2 = L22_2.Height
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L16_2 = L0_1.Default
    if A0_2 == L16_2 then
      L16_2 = Graphics
      L16_2 = L16_2.Text
      L17_2 = A3_2 or L17_2
      if not A3_2 then
        L17_2 = ""
      end
      L18_2 = L9_2.X
      L19_2 = L2_1.Text
      L19_2 = L19_2.Top
      L19_2 = L19_2.X
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.WidthOffset
      L19_2 = L19_2 / 2
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.Y
      L20_2 = L2_1.Text
      L20_2 = L20_2.Top
      L20_2 = L20_2.Y
      L19_2 = L19_2 + L20_2
      L20_2 = L9_2.SubtitleHeight
      L19_2 = L19_2 + L20_2
      L20_2 = RageUI
      L20_2 = L20_2.ItemOffset
      L19_2 = L19_2 + L20_2
      L20_2 = 0
      L21_2 = L2_1.Text
      L21_2 = L21_2.Top
      L21_2 = L21_2.Scale
      L22_2 = 245
      L23_2 = 245
      L24_2 = 245
      L25_2 = 255
      L26_2 = 1
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      L16_2 = Graphics
      L16_2 = L16_2.Text
      L17_2 = A4_2 or L17_2
      if not A4_2 then
        L17_2 = ""
      end
      L18_2 = L9_2.X
      L19_2 = L2_1.Text
      L19_2 = L19_2.Bottom
      L19_2 = L19_2.X
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.WidthOffset
      L19_2 = L19_2 / 2
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.Y
      L20_2 = L2_1.Text
      L20_2 = L20_2.Bottom
      L20_2 = L20_2.Y
      L19_2 = L19_2 + L20_2
      L20_2 = L9_2.SubtitleHeight
      L19_2 = L19_2 + L20_2
      L20_2 = RageUI
      L20_2 = L20_2.ItemOffset
      L19_2 = L19_2 + L20_2
      L20_2 = 0
      L21_2 = L2_1.Text
      L21_2 = L21_2.Bottom
      L21_2 = L21_2.Scale
      L22_2 = 245
      L23_2 = 245
      L24_2 = 245
      L25_2 = 255
      L26_2 = 1
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      L16_2 = Graphics
      L16_2 = L16_2.Text
      L17_2 = A5_2 or L17_2
      if not A5_2 then
        L17_2 = ""
      end
      L18_2 = L9_2.X
      L19_2 = L2_1.Text
      L19_2 = L19_2.Left
      L19_2 = L19_2.X
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.WidthOffset
      L19_2 = L19_2 / 2
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.Y
      L20_2 = L2_1.Text
      L20_2 = L20_2.Left
      L20_2 = L20_2.Y
      L19_2 = L19_2 + L20_2
      L20_2 = L9_2.SubtitleHeight
      L19_2 = L19_2 + L20_2
      L20_2 = RageUI
      L20_2 = L20_2.ItemOffset
      L19_2 = L19_2 + L20_2
      L20_2 = 0
      L21_2 = L2_1.Text
      L21_2 = L21_2.Left
      L21_2 = L21_2.Scale
      L22_2 = 245
      L23_2 = 245
      L24_2 = 245
      L25_2 = 255
      L26_2 = 1
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      L16_2 = Graphics
      L16_2 = L16_2.Text
      L17_2 = A6_2 or L17_2
      if not A6_2 then
        L17_2 = ""
      end
      L18_2 = L9_2.X
      L19_2 = L2_1.Text
      L19_2 = L19_2.Right
      L19_2 = L19_2.X
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.WidthOffset
      L19_2 = L19_2 / 2
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.Y
      L20_2 = L2_1.Text
      L20_2 = L20_2.Right
      L20_2 = L20_2.Y
      L19_2 = L19_2 + L20_2
      L20_2 = L9_2.SubtitleHeight
      L19_2 = L19_2 + L20_2
      L20_2 = RageUI
      L20_2 = L20_2.ItemOffset
      L19_2 = L19_2 + L20_2
      L20_2 = 0
      L21_2 = L2_1.Text
      L21_2 = L21_2.Right
      L21_2 = L21_2.Scale
      L22_2 = 245
      L23_2 = 245
      L24_2 = 245
      L25_2 = 255
      L26_2 = 1
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    end
    L16_2 = L0_1.Vertical
    if A0_2 == L16_2 then
      L16_2 = Graphics
      L16_2 = L16_2.Text
      L17_2 = A3_2 or L17_2
      if not A3_2 then
        L17_2 = ""
      end
      L18_2 = L9_2.X
      L19_2 = L2_1.Text
      L19_2 = L19_2.Top
      L19_2 = L19_2.X
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.WidthOffset
      L19_2 = L19_2 / 2
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.Y
      L20_2 = L2_1.Text
      L20_2 = L20_2.Top
      L20_2 = L20_2.Y
      L19_2 = L19_2 + L20_2
      L20_2 = L9_2.SubtitleHeight
      L19_2 = L19_2 + L20_2
      L20_2 = RageUI
      L20_2 = L20_2.ItemOffset
      L19_2 = L19_2 + L20_2
      L20_2 = 0
      L21_2 = L2_1.Text
      L21_2 = L21_2.Top
      L21_2 = L21_2.Scale
      L22_2 = 245
      L23_2 = 245
      L24_2 = 245
      L25_2 = 255
      L26_2 = 1
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      L16_2 = Graphics
      L16_2 = L16_2.Text
      L17_2 = A4_2 or L17_2
      if not A4_2 then
        L17_2 = ""
      end
      L18_2 = L9_2.X
      L19_2 = L2_1.Text
      L19_2 = L19_2.Bottom
      L19_2 = L19_2.X
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.WidthOffset
      L19_2 = L19_2 / 2
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.Y
      L20_2 = L2_1.Text
      L20_2 = L20_2.Bottom
      L20_2 = L20_2.Y
      L19_2 = L19_2 + L20_2
      L20_2 = L9_2.SubtitleHeight
      L19_2 = L19_2 + L20_2
      L20_2 = RageUI
      L20_2 = L20_2.ItemOffset
      L19_2 = L19_2 + L20_2
      L20_2 = 0
      L21_2 = L2_1.Text
      L21_2 = L21_2.Bottom
      L21_2 = L21_2.Scale
      L22_2 = 245
      L23_2 = 245
      L24_2 = 245
      L25_2 = 255
      L26_2 = 1
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    end
    L16_2 = L0_1.Horizontal
    if A0_2 == L16_2 then
      L16_2 = Graphics
      L16_2 = L16_2.Text
      L17_2 = A5_2 or L17_2
      if not A5_2 then
        L17_2 = ""
      end
      L18_2 = L9_2.X
      L19_2 = L2_1.Text
      L19_2 = L19_2.Left
      L19_2 = L19_2.X
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.WidthOffset
      L19_2 = L19_2 / 2
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.Y
      L20_2 = L2_1.Text
      L20_2 = L20_2.Left
      L20_2 = L20_2.Y
      L19_2 = L19_2 + L20_2
      L20_2 = L9_2.SubtitleHeight
      L19_2 = L19_2 + L20_2
      L20_2 = RageUI
      L20_2 = L20_2.ItemOffset
      L19_2 = L19_2 + L20_2
      L20_2 = 0
      L21_2 = L2_1.Text
      L21_2 = L21_2.Left
      L21_2 = L21_2.Scale
      L22_2 = 245
      L23_2 = 245
      L24_2 = 245
      L25_2 = 255
      L26_2 = 1
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      L16_2 = Graphics
      L16_2 = L16_2.Text
      L17_2 = A6_2 or L17_2
      if not A6_2 then
        L17_2 = ""
      end
      L18_2 = L9_2.X
      L19_2 = L2_1.Text
      L19_2 = L19_2.Right
      L19_2 = L19_2.X
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.WidthOffset
      L19_2 = L19_2 / 2
      L18_2 = L18_2 + L19_2
      L19_2 = L9_2.Y
      L20_2 = L2_1.Text
      L20_2 = L20_2.Right
      L20_2 = L20_2.Y
      L19_2 = L19_2 + L20_2
      L20_2 = L9_2.SubtitleHeight
      L19_2 = L19_2 + L20_2
      L20_2 = RageUI
      L20_2 = L20_2.ItemOffset
      L19_2 = L19_2 + L20_2
      L20_2 = 0
      L21_2 = L2_1.Text
      L21_2 = L21_2.Right
      L21_2 = L21_2.Scale
      L22_2 = 245
      L23_2 = 245
      L24_2 = 245
      L25_2 = 255
      L26_2 = 1
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    end
    if L12_2 then
      L16_2 = IsDisabledControlPressed
      L17_2 = 0
      L18_2 = 24
      L16_2 = L16_2(L17_2, L18_2)
      if L16_2 then
        L13_2 = true
        L16_2 = math
        L16_2 = L16_2.round
        L17_2 = GetControlNormal
        L18_2 = 2
        L19_2 = 239
        L17_2 = L17_2(L18_2, L19_2)
        L17_2 = L17_2 * 1920
        L16_2 = L16_2(L17_2)
        L17_2 = L9_2.SafeZoneSize
        L17_2 = L17_2.X
        L16_2 = L16_2 - L17_2
        L17_2 = L2_1.Circle
        L17_2 = L17_2.Width
        L17_2 = L17_2 / 2
        L14_2 = L16_2 - L17_2
        L16_2 = math
        L16_2 = L16_2.round
        L17_2 = GetControlNormal
        L18_2 = 2
        L19_2 = 240
        L17_2 = L17_2(L18_2, L19_2)
        L17_2 = L17_2 * 1080
        L16_2 = L16_2(L17_2)
        L17_2 = L9_2.SafeZoneSize
        L17_2 = L17_2.Y
        L16_2 = L16_2 - L17_2
        L17_2 = L2_1.Circle
        L17_2 = L17_2.Height
        L17_2 = L17_2 / 2
        L15_2 = L16_2 - L17_2
        L16_2 = L9_2.X
        L17_2 = L2_1.Grid
        L17_2 = L17_2.X
        L16_2 = L16_2 + L17_2
        L17_2 = L9_2.WidthOffset
        L17_2 = L17_2 / 2
        L16_2 = L16_2 + L17_2
        L16_2 = L16_2 + 20
        L17_2 = L2_1.Grid
        L17_2 = L17_2.Width
        L16_2 = L16_2 + L17_2
        L16_2 = L16_2 - 40
        if L14_2 > L16_2 then
          L16_2 = L9_2.X
          L17_2 = L2_1.Grid
          L17_2 = L17_2.X
          L16_2 = L16_2 + L17_2
          L17_2 = L9_2.WidthOffset
          L17_2 = L17_2 / 2
          L16_2 = L16_2 + L17_2
          L16_2 = L16_2 + 20
          L17_2 = L2_1.Grid
          L17_2 = L17_2.Width
          L16_2 = L16_2 + L17_2
          L14_2 = L16_2 - 40
        else
          L16_2 = L9_2.X
          L17_2 = L2_1.Grid
          L17_2 = L17_2.X
          L16_2 = L16_2 + L17_2
          L16_2 = L16_2 + 20
          L17_2 = L2_1.Circle
          L17_2 = L17_2.Width
          L17_2 = L17_2 / 2
          L16_2 = L16_2 - L17_2
          if L14_2 < L16_2 then
            L16_2 = L9_2.X
            L17_2 = L2_1.Grid
            L17_2 = L17_2.X
            L16_2 = L16_2 + L17_2
            L16_2 = L16_2 + 20
            L17_2 = L2_1.Circle
            L17_2 = L17_2.Width
            L17_2 = L17_2 / 2
            L14_2 = L16_2 - L17_2
          end
        end
        L16_2 = L9_2.Y
        L17_2 = L2_1.Grid
        L17_2 = L17_2.Y
        L16_2 = L16_2 + L17_2
        L17_2 = L9_2.SubtitleHeight
        L16_2 = L16_2 + L17_2
        L17_2 = RageUI
        L17_2 = L17_2.ItemOffset
        L16_2 = L16_2 + L17_2
        L16_2 = L16_2 + 20
        L17_2 = L2_1.Grid
        L17_2 = L17_2.Height
        L16_2 = L16_2 + L17_2
        L16_2 = L16_2 - 40
        if L15_2 > L16_2 then
          L16_2 = L9_2.Y
          L17_2 = L2_1.Grid
          L17_2 = L17_2.Y
          L16_2 = L16_2 + L17_2
          L17_2 = L9_2.SubtitleHeight
          L16_2 = L16_2 + L17_2
          L17_2 = RageUI
          L17_2 = L17_2.ItemOffset
          L16_2 = L16_2 + L17_2
          L16_2 = L16_2 + 20
          L17_2 = L2_1.Grid
          L17_2 = L17_2.Height
          L16_2 = L16_2 + L17_2
          L15_2 = L16_2 - 40
        else
          L16_2 = L9_2.Y
          L17_2 = L2_1.Grid
          L17_2 = L17_2.Y
          L16_2 = L16_2 + L17_2
          L17_2 = L9_2.SubtitleHeight
          L16_2 = L16_2 + L17_2
          L17_2 = RageUI
          L17_2 = L17_2.ItemOffset
          L16_2 = L16_2 + L17_2
          L16_2 = L16_2 + 20
          L17_2 = L2_1.Circle
          L17_2 = L17_2.Height
          L17_2 = L17_2 / 2
          L16_2 = L16_2 - L17_2
          if L15_2 < L16_2 then
            L16_2 = L9_2.Y
            L17_2 = L2_1.Grid
            L17_2 = L17_2.Y
            L16_2 = L16_2 + L17_2
            L17_2 = L9_2.SubtitleHeight
            L16_2 = L16_2 + L17_2
            L17_2 = RageUI
            L17_2 = L17_2.ItemOffset
            L16_2 = L16_2 + L17_2
            L16_2 = L16_2 + 20
            L17_2 = L2_1.Circle
            L17_2 = L17_2.Height
            L17_2 = L17_2 / 2
            L15_2 = L16_2 - L17_2
          end
        end
        L16_2 = math
        L16_2 = L16_2.round
        L17_2 = L9_2.X
        L18_2 = L2_1.Grid
        L18_2 = L18_2.X
        L17_2 = L17_2 + L18_2
        L18_2 = L9_2.WidthOffset
        L18_2 = L18_2 / 2
        L17_2 = L17_2 + L18_2
        L17_2 = L17_2 + 20
        L17_2 = L14_2 - L17_2
        L18_2 = L2_1.Circle
        L18_2 = L18_2.Width
        L18_2 = L18_2 / 2
        L17_2 = L17_2 + L18_2
        L18_2 = L2_1.Grid
        L18_2 = L18_2.Width
        L18_2 = L18_2 - 40
        L17_2 = L17_2 / L18_2
        L18_2 = 2
        L16_2 = L16_2(L17_2, L18_2)
        L10_2 = L16_2
        L16_2 = math
        L16_2 = L16_2.round
        L17_2 = L9_2.Y
        L18_2 = L2_1.Grid
        L18_2 = L18_2.Y
        L17_2 = L17_2 + L18_2
        L18_2 = L9_2.SubtitleHeight
        L17_2 = L17_2 + L18_2
        L18_2 = RageUI
        L18_2 = L18_2.ItemOffset
        L17_2 = L17_2 + L18_2
        L17_2 = L17_2 + 20
        L17_2 = L15_2 - L17_2
        L18_2 = L2_1.Circle
        L18_2 = L18_2.Height
        L18_2 = L18_2 / 2
        L17_2 = L17_2 + L18_2
        L18_2 = L2_1.Grid
        L18_2 = L18_2.Height
        L18_2 = L18_2 - 40
        L17_2 = L17_2 / L18_2
        L18_2 = 2
        L16_2 = L16_2(L17_2, L18_2)
        L11_2 = L16_2
        if L10_2 ~= A1_2 and L11_2 ~= A2_2 then
          L16_2 = A7_2
          L17_2 = L10_2
          L18_2 = L11_2
          L19_2 = L10_2 * 2
          L19_2 = L19_2 - 1
          L20_2 = L11_2 * 2
          L20_2 = L20_2 - 1
          L16_2(L17_2, L18_2, L19_2, L20_2)
        end
        A1_2 = L10_2
        A2_2 = L11_2
        if L10_2 > 1.0 then
          L10_2 = 1.0
        end
        if L11_2 > 1.0 then
          L11_2 = 1.0
        end
      end
    end
    L16_2 = RageUI
    L17_2 = RageUI
    L17_2 = L17_2.ItemOffset
    L18_2 = L2_1.Background
    L18_2 = L18_2.Height
    L17_2 = L17_2 + L18_2
    L18_2 = L2_1.Background
    L18_2 = L18_2.Y
    L17_2 = L17_2 + L18_2
    L16_2.ItemOffset = L17_2
    if L12_2 and L13_2 then
      L16_2 = Audio
      L16_2 = L16_2.PlaySound
      L17_2 = RageUI
      L17_2 = L17_2.Settings
      L17_2 = L17_2.Audio
      L17_2 = L17_2.Slider
      L17_2 = L17_2.audioName
      L18_2 = RageUI
      L18_2 = L18_2.Settings
      L18_2 = L18_2.Audio
      L18_2 = L18_2.Slider
      L18_2 = L18_2.audioRef
      L19_2 = true
      L16_2(L17_2, L18_2, L19_2)
    end
  end
end
L4_1 = Panels
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L9_2 = L3_1
  L10_2 = L0_1.Default
  L11_2 = A1_2
  L12_2 = A2_2
  L13_2 = A3_2
  L14_2 = A4_2
  L15_2 = A5_2
  L16_2 = A6_2
  L17_2 = A7_2
  L18_2 = A8_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
end
L4_1.Grid = L5_1
L4_1 = Panels
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L6_2 = L3_1
  L7_2 = L0_1.Horizontal
  L8_2 = A1_2
  L9_2 = nil
  L10_2 = nil
  L11_2 = nil
  L12_2 = A2_2
  L13_2 = A3_2
  L14_2 = A4_2
  L15_2 = A5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L4_1.GridHorizontal = L5_1
L4_1 = Panels
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L6_2 = L3_1
  L7_2 = L0_1.Vertical
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = nil
  L13_2 = nil
  L14_2 = A4_2
  L15_2 = A5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L4_1.GridVertical = L5_1

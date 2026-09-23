local L0_1, L1_1
L0_1 = RageUI
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2)
  local L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L10_2 = {}
  L11_2 = {}
  L10_2.Display = L11_2
  L10_2.ConfirmCaption = "Confirm"
  L10_2.ConfirmKey = 176
  L11_2 = L10_2.Display
  L11_2.Header = true
  L11_2 = L10_2.Display
  L11_2.Subtitle = true
  L11_2 = L10_2.Display
  L11_2.Background = true
  L11_2 = L10_2.Display
  L11_2.Navigation = true
  L11_2 = L10_2.Display
  L11_2.PageCounter = true
  L10_2.IsPlayerList = false
  L11_2 = {}
  L10_2.MugshotCache = L11_2
  L11_2 = A0_2 or L11_2
  if not A0_2 then
    L11_2 = ""
  end
  L10_2.Title = L11_2
  L10_2.TitleFont = 1
  L10_2.TitleScale = 1.2
  L11_2 = string
  L11_2 = L11_2.upper
  L12_2 = A1_2
  L11_2 = L11_2(L12_2)
  if not L11_2 then
    L11_2 = nil
  end
  L10_2.Subtitle = L11_2
  L10_2.SubtitleHeight = -37
  L10_2.Description = nil
  L11_2 = RageUI
  L11_2 = L11_2.Settings
  L11_2 = L11_2.Items
  L11_2 = L11_2.Description
  L11_2 = L11_2.Background
  L11_2 = L11_2.Height
  L10_2.DescriptionHeight = L11_2
  L11_2 = A2_2 or L11_2
  if not A2_2 then
    L11_2 = 0
  end
  L10_2.X = L11_2
  L11_2 = A3_2 or L11_2
  if not A3_2 then
    L11_2 = 0
  end
  L10_2.Y = L11_2
  L10_2.Parent = nil
  L10_2.WidthOffset = 0
  L10_2.Open = false
  L11_2 = RageUI
  L11_2 = L11_2.Settings
  L11_2 = L11_2.Controls
  L10_2.Controls = L11_2
  L10_2.Index = 1
  L11_2 = {}
  L12_2 = A4_2 or L12_2
  if not A4_2 then
    L12_2 = "commonmenu"
  end
  L11_2.Dictionary = L12_2
  L12_2 = A5_2 or L12_2
  if not A5_2 then
    L12_2 = "interaction_bgd"
  end
  L11_2.Texture = L12_2
  L12_2 = {}
  L12_2.R = A6_2
  L12_2.G = A7_2
  L12_2.B = A8_2
  L12_2.A = A9_2
  L11_2.Color = L12_2
  L10_2.Sprite = L11_2
  L10_2.Rectangle = nil
  L11_2 = {}
  L11_2.Minimum = 1
  L11_2.Maximum = 10
  L11_2.Total = 10
  L10_2.Pagination = L11_2
  L10_2.Safezone = true
  L10_2.SafeZoneSize = nil
  L10_2.EnableMouse = false
  L10_2.Options = 0
  L10_2.Closable = false
  L11_2 = string
  L11_2 = L11_2.starts
  L12_2 = L10_2.Subtitle
  L13_2 = "~"
  L11_2 = L11_2(L12_2, L13_2)
  if L11_2 then
    L11_2 = string
    L11_2 = L11_2.lower
    L12_2 = string
    L12_2 = L12_2.sub
    L13_2 = L10_2.Subtitle
    L14_2 = 1
    L15_2 = 3
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2, L15_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L10_2.PageCounterColour = L11_2
  else
    L10_2.PageCounterColour = ""
  end
  L11_2 = L10_2.Subtitle
  if "" ~= L11_2 then
    L11_2 = Graphics
    L11_2 = L11_2.GetLineCount
    L12_2 = L10_2.Subtitle
    L13_2 = L10_2.X
    L14_2 = RageUI
    L14_2 = L14_2.Settings
    L14_2 = L14_2.Items
    L14_2 = L14_2.Subtitle
    L14_2 = L14_2.Text
    L14_2 = L14_2.X
    L13_2 = L13_2 + L14_2
    L14_2 = L10_2.Y
    L15_2 = RageUI
    L15_2 = L15_2.Settings
    L15_2 = L15_2.Items
    L15_2 = L15_2.Subtitle
    L15_2 = L15_2.Text
    L15_2 = L15_2.Y
    L14_2 = L14_2 + L15_2
    L15_2 = 0
    L16_2 = RageUI
    L16_2 = L16_2.Settings
    L16_2 = L16_2.Items
    L16_2 = L16_2.Subtitle
    L16_2 = L16_2.Text
    L16_2 = L16_2.Scale
    L17_2 = 245
    L18_2 = 245
    L19_2 = 245
    L20_2 = 255
    L21_2 = nil
    L22_2 = false
    L23_2 = false
    L24_2 = RageUI
    L24_2 = L24_2.Settings
    L24_2 = L24_2.Items
    L24_2 = L24_2.Subtitle
    L24_2 = L24_2.Background
    L24_2 = L24_2.Width
    L25_2 = L10_2.WidthOffset
    L24_2 = L24_2 + L25_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    if L11_2 > 1 then
      L12_2 = 18 * L11_2
      L10_2.SubtitleHeight = L12_2
    else
      L10_2.SubtitleHeight = 0
    end
  end
  L11_2 = setmetatable
  L12_2 = L10_2
  L13_2 = RageUIMenus
  return L11_2(L12_2, L13_2)
end
L0_1.CreateMenu = L1_1
L0_1 = RageUI
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2)
  local L11_2, L12_2, L13_2, L14_2, L15_2
  if nil ~= A0_2 then
    L11_2 = A0_2
    L11_2 = L11_2()
    if L11_2 then
      L11_2 = RageUI
      L11_2 = L11_2.CreateMenu
      L12_2 = A1_2 or L12_2
      if not A1_2 then
        L12_2 = A0_2.Title
      end
      L13_2 = string
      L13_2 = L13_2.upper
      L14_2 = A2_2
      L13_2 = L13_2(L14_2)
      if not L13_2 then
        L13_2 = string
        L13_2 = L13_2.upper
        L14_2 = A0_2.Subtitle
        L13_2 = L13_2(L14_2)
      end
      L14_2 = A3_2 or L14_2
      if not A3_2 then
        L14_2 = A0_2.X
      end
      L15_2 = A4_2 or L15_2
      if not A4_2 then
        L15_2 = A0_2.Y
      end
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      L11_2.Parent = A0_2
      L12_2 = A0_2.WidthOffset
      L11_2.WidthOffset = L12_2
      L12_2 = A0_2.Safezone
      L11_2.Safezone = L12_2
      L12_2 = A0_2.Sprite
      if L12_2 then
        L12_2 = {}
        L13_2 = A5_2 or L13_2
        if not A5_2 then
          L13_2 = A0_2.Sprite
          L13_2 = L13_2.Dictionary
        end
        L12_2.Dictionary = L13_2
        L13_2 = A6_2 or L13_2
        if not A6_2 then
          L13_2 = A0_2.Sprite
          L13_2 = L13_2.Texture
        end
        L12_2.Texture = L13_2
        L13_2 = {}
        L14_2 = A7_2 or L14_2
        if not A7_2 then
          L14_2 = A0_2.Sprite
          L14_2 = L14_2.Color
          L14_2 = L14_2.R
        end
        L13_2.R = L14_2
        L14_2 = A8_2 or L14_2
        if not A8_2 then
          L14_2 = A0_2.Sprite
          L14_2 = L14_2.Color
          L14_2 = L14_2.G
        end
        L13_2.G = L14_2
        L14_2 = A9_2 or L14_2
        if not A9_2 then
          L14_2 = A0_2.Sprite
          L14_2 = L14_2.Color
          L14_2 = L14_2.B
        end
        L13_2.B = L14_2
        L14_2 = A10_2 or L14_2
        if not A10_2 then
          L14_2 = A0_2.Sprite
          L14_2 = L14_2.Color
          L14_2 = L14_2.A
        end
        L13_2.A = L14_2
        L12_2.Color = L13_2
        L11_2.Sprite = L12_2
      else
        L12_2 = A0_2.Rectangle
        L11_2.Rectangle = L12_2
      end
      L12_2 = setmetatable
      L13_2 = L11_2
      L14_2 = RageUIMenus
      return L12_2(L13_2, L14_2)
    else
      L11_2 = nil
      return L11_2
    end
  else
    L11_2 = nil
    return L11_2
  end
end
L0_1.CreateSubMenu = L1_1
L0_1 = RageUIMenus
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = string
  L2_2 = L2_2.upper
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.upper
    L3_2 = A0_2.Subtitle
    L2_2 = L2_2(L3_2)
  end
  A0_2.Subtitle = L2_2
  L2_2 = string
  L2_2 = L2_2.starts
  L3_2 = A0_2.Subtitle
  L4_2 = "~"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_2 = string
    L3_2 = L3_2.sub
    L4_2 = A0_2.Subtitle
    L5_2 = 1
    L6_2 = 3
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    A0_2.PageCounterColour = L2_2
  else
    A0_2.PageCounterColour = ""
  end
  L2_2 = A0_2.Subtitle
  if "" ~= L2_2 then
    L2_2 = Graphics
    L2_2 = L2_2.GetLineCount
    L3_2 = A0_2.Subtitle
    L4_2 = A0_2.X
    L5_2 = RageUI
    L5_2 = L5_2.Settings
    L5_2 = L5_2.Items
    L5_2 = L5_2.Subtitle
    L5_2 = L5_2.Text
    L5_2 = L5_2.X
    L4_2 = L4_2 + L5_2
    L5_2 = A0_2.Y
    L6_2 = RageUI
    L6_2 = L6_2.Settings
    L6_2 = L6_2.Items
    L6_2 = L6_2.Subtitle
    L6_2 = L6_2.Text
    L6_2 = L6_2.Y
    L5_2 = L5_2 + L6_2
    L6_2 = 0
    L7_2 = RageUI
    L7_2 = L7_2.Settings
    L7_2 = L7_2.Items
    L7_2 = L7_2.Subtitle
    L7_2 = L7_2.Text
    L7_2 = L7_2.Scale
    L8_2 = 245
    L9_2 = 245
    L10_2 = 245
    L11_2 = 255
    L12_2 = nil
    L13_2 = false
    L14_2 = false
    L15_2 = RageUI
    L15_2 = L15_2.Settings
    L15_2 = L15_2.Items
    L15_2 = L15_2.Subtitle
    L15_2 = L15_2.Background
    L15_2 = L15_2.Width
    L16_2 = A0_2.WidthOffset
    L15_2 = L15_2 + L16_2
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    if L2_2 > 1 then
      L3_2 = 18 * L2_2
      A0_2.SubtitleHeight = L3_2
    else
      A0_2.SubtitleHeight = 0
    end
  else
    A0_2.SubtitleHeight = -37
  end
end
L0_1.SetSubtitle = L1_1
L0_1 = RageUIMenus
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = RageUI
  L3_2 = L3_2.Visible
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = UpdateOnscreenKeyboard
    L3_2 = L3_2()
    if 0 ~= L3_2 then
      L3_2 = UpdateOnscreenKeyboard
      L3_2 = L3_2()
      if 3 ~= L3_2 then
        L3_2 = RageUI
        L3_2 = L3_2.Banner
        L3_2()
        L3_2 = RageUI
        L3_2 = L3_2.Subtitle
        L3_2()
        L3_2 = A1_2
        L4_2 = Items
        L3_2(L4_2)
        L3_2 = RageUI
        L3_2 = L3_2.Background
        L3_2()
        L3_2 = RageUI
        L3_2 = L3_2.Navigation
        L3_2()
        L3_2 = RageUI
        L3_2 = L3_2.Description
        L3_2()
        L3_2 = A2_2
        L4_2 = Panels
        L3_2(L4_2)
        L3_2 = RageUI
        L3_2 = L3_2.PoolMenus
        L3_2.Timer = 1
        L3_2 = RageUI
        L3_2 = L3_2.Render
        L3_2()
      end
    end
  end
end
L0_1.IsVisible = L1_1
L0_1 = RageUIMenus
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = RegisterKeyMapping
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = "riv-%s"
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A3_2
  L8_2 = "keyboard"
  L9_2 = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = RegisterCommand
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = "riv-%s"
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  function L7_2(A0_3, A1_3)
    local L2_3
    L2_3 = A4_2
    if nil ~= L2_3 then
      L2_3 = A4_2
      L2_3()
    end
  end
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.KeysRegister = L1_1

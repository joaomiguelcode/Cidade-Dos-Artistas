local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = "shop_box_blankb"
L4_1 = "shop_box_tickb"
L5_1 = "shop_box_blank"
L6_1 = "shop_box_tick"
L7_1 = "shop_box_crossb"
L8_1 = "shop_box_cross"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L1_1.Textures = L2_1
L1_1.X = 380
L1_1.Y = -6
L1_1.Width = 50
L1_1.Height = 50
L0_1.CheckBox = L1_1
L1_1 = {}
L1_1.Y = 0
L1_1.Width = 431
L1_1.Height = 38
L0_1.Rectangle = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = RageUI
  L5_2 = L5_2.CurrentMenu
  if nil == A4_2 then
    A4_2 = 0
  end
  if A0_2 then
    if A1_2 then
      L6_2 = Graphics
      L6_2 = L6_2.Sprite
      L7_2 = "commonmenu"
      L8_2 = L0_1.CheckBox
      L8_2 = L8_2.Textures
      L8_2 = L8_2[A2_2]
      L9_2 = L5_2.X
      L9_2 = L9_2 + 380
      L10_2 = L5_2.WidthOffset
      L9_2 = L9_2 + L10_2
      L9_2 = L9_2 - A4_2
      L10_2 = L5_2.Y
      L10_2 = L10_2 + -6
      L11_2 = L5_2.SubtitleHeight
      L10_2 = L10_2 + L11_2
      L11_2 = RageUI
      L11_2 = L11_2.ItemOffset
      L10_2 = L10_2 + L11_2
      L11_2 = 50
      L12_2 = 50
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    else
      L6_2 = Graphics
      L6_2 = L6_2.Sprite
      L7_2 = "commonmenu"
      L8_2 = L0_1.CheckBox
      L8_2 = L8_2.Textures
      L8_2 = L8_2[1]
      L9_2 = L5_2.X
      L9_2 = L9_2 + 380
      L10_2 = L5_2.WidthOffset
      L9_2 = L9_2 + L10_2
      L9_2 = L9_2 - A4_2
      L10_2 = L5_2.Y
      L10_2 = L10_2 + -6
      L11_2 = L5_2.SubtitleHeight
      L10_2 = L10_2 + L11_2
      L11_2 = RageUI
      L11_2 = L11_2.ItemOffset
      L10_2 = L10_2 + L11_2
      L11_2 = 50
      L12_2 = 50
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  elseif A1_2 then
    L6_2 = Graphics
    L6_2 = L6_2.Sprite
    L7_2 = "commonmenu"
    L8_2 = L0_1.CheckBox
    L8_2 = L8_2.Textures
    L8_2 = L8_2[A3_2]
    L9_2 = L5_2.X
    L9_2 = L9_2 + 380
    L10_2 = L5_2.WidthOffset
    L9_2 = L9_2 + L10_2
    L9_2 = L9_2 - A4_2
    L10_2 = L5_2.Y
    L10_2 = L10_2 + -6
    L11_2 = L5_2.SubtitleHeight
    L10_2 = L10_2 + L11_2
    L11_2 = RageUI
    L11_2 = L11_2.ItemOffset
    L10_2 = L10_2 + L11_2
    L11_2 = 50
    L12_2 = 50
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L6_2 = Graphics
    L6_2 = L6_2.Sprite
    L7_2 = "commonmenu"
    L8_2 = L0_1.CheckBox
    L8_2 = L8_2.Textures
    L8_2 = L8_2[3]
    L9_2 = L5_2.X
    L9_2 = L9_2 + 380
    L10_2 = L5_2.WidthOffset
    L9_2 = L9_2 + L10_2
    L9_2 = L9_2 - A4_2
    L10_2 = L5_2.Y
    L10_2 = L10_2 + -6
    L11_2 = L5_2.SubtitleHeight
    L10_2 = L10_2 + L11_2
    L11_2 = RageUI
    L11_2 = L11_2.ItemOffset
    L10_2 = L10_2 + L11_2
    L11_2 = 50
    L12_2 = 50
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
L2_1 = {}
Items = L2_1
L2_1 = Items
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L6_2 = RageUI
  L6_2 = L6_2.CurrentMenu
  if nil == L6_2 then
    return
  end
  L6_2 = RageUI
  L6_2 = L6_2.CurrentMenu
  L7_2 = RageUI
  L7_2 = L7_2.Options
  L7_2 = L7_2 + 1
  L8_2 = L6_2.Pagination
  L8_2 = L8_2.Minimum
  if L7_2 >= L8_2 then
    L8_2 = L6_2.Pagination
    L8_2 = L8_2.Maximum
    if L7_2 <= L8_2 then
      L8_2 = L6_2.Index
      L8_2 = L8_2 == L7_2
      L9_2 = RageUI
      L9_2 = L9_2.ItemsSafeZone
      L10_2 = L6_2
      L9_2(L10_2)
      L9_2 = A3_2.LeftBadge
      if L9_2 then
        L9_2 = A3_2.LeftBadge
        L10_2 = RageUI
        L10_2 = L10_2.BadgeStyle
        L10_2 = L10_2.None
        L9_2 = L9_2 ~= L10_2
      end
      L10_2 = A3_2.RightBadge
      if L10_2 then
        L10_2 = A3_2.RightBadge
        L11_2 = RageUI
        L11_2 = L11_2.BadgeStyle
        L11_2 = L11_2.None
        L10_2 = L10_2 ~= L11_2
      end
      if L9_2 then
        L11_2 = 27
        if L11_2 then
          goto lbl_57
        end
      end
      L11_2 = 0
      ::lbl_57::
      if L10_2 then
        L12_2 = 32
        if L12_2 then
          goto lbl_63
        end
      end
      L12_2 = 0
      ::lbl_63::
      L13_2 = A3_2.Color
      if L13_2 then
        L13_2 = A3_2.Color
        L13_2 = L13_2.BackgroundColor
        if L13_2 then
          L13_2 = Graphics
          L13_2 = L13_2.Rectangle
          L14_2 = L6_2.X
          L15_2 = L6_2.Y
          L15_2 = L15_2 + 0
          L16_2 = L6_2.SubtitleHeight
          L15_2 = L15_2 + L16_2
          L16_2 = RageUI
          L16_2 = L16_2.ItemOffset
          L15_2 = L15_2 + L16_2
          L16_2 = L6_2.WidthOffset
          L16_2 = 431 + L16_2
          L17_2 = 38
          L18_2 = A3_2.Color
          L18_2 = L18_2.BackgroundColor
          L18_2 = L18_2[1]
          L19_2 = A3_2.Color
          L19_2 = L19_2.BackgroundColor
          L19_2 = L19_2[2]
          L20_2 = A3_2.Color
          L20_2 = L20_2.BackgroundColor
          L20_2 = L20_2[3]
          L21_2 = A3_2.Color
          L21_2 = L21_2.BackgroundColor
          L21_2 = L21_2[4]
          L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        end
      end
      if L8_2 then
        L13_2 = A3_2.Color
        if L13_2 then
          L13_2 = A3_2.Color
          L13_2 = L13_2.HightLightColor
          if L13_2 then
            L13_2 = Graphics
            L13_2 = L13_2.Rectangle
            L14_2 = L6_2.X
            L15_2 = L6_2.Y
            L15_2 = L15_2 + 0
            L16_2 = L6_2.SubtitleHeight
            L15_2 = L15_2 + L16_2
            L16_2 = RageUI
            L16_2 = L16_2.ItemOffset
            L15_2 = L15_2 + L16_2
            L16_2 = L6_2.WidthOffset
            L16_2 = 431 + L16_2
            L17_2 = 38
            L18_2 = A3_2.Color
            L18_2 = L18_2.HightLightColor
            L18_2 = L18_2[1]
            L19_2 = A3_2.Color
            L19_2 = L19_2.HightLightColor
            L19_2 = L19_2[2]
            L20_2 = A3_2.Color
            L20_2 = L20_2.HightLightColor
            L20_2 = L20_2[3]
            L21_2 = A3_2.Color
            L21_2 = L21_2.HightLightColor
            L21_2 = L21_2[4]
            L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        end
        else
          L13_2 = Graphics
          L13_2 = L13_2.Sprite
          L14_2 = "commonmenu"
          L15_2 = "gradient_nav"
          L16_2 = L6_2.X
          L17_2 = L6_2.Y
          L17_2 = L17_2 + 0
          L18_2 = L6_2.SubtitleHeight
          L17_2 = L17_2 + L18_2
          L18_2 = RageUI
          L18_2 = L18_2.ItemOffset
          L17_2 = L17_2 + L18_2
          L18_2 = L6_2.WidthOffset
          L18_2 = 431 + L18_2
          L19_2 = 38
          L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        end
      end
      L13_2 = A3_2.IsDisabled
      if not L13_2 then
        if L9_2 then
          L13_2 = A3_2.LeftBadge
          if nil ~= L13_2 then
            L13_2 = A3_2.LeftBadge
            L14_2 = L8_2
            L13_2 = L13_2(L14_2)
            L14_2 = Graphics
            L14_2 = L14_2.Sprite
            L15_2 = L13_2.BadgeDictionary
            if not L15_2 then
              L15_2 = "commonmenu"
            end
            L16_2 = L13_2.BadgeTexture
            if not L16_2 then
              L16_2 = ""
            end
            L17_2 = L6_2.X
            L18_2 = L6_2.Y
            L18_2 = L18_2 + -2
            L19_2 = L6_2.SubtitleHeight
            L18_2 = L18_2 + L19_2
            L19_2 = RageUI
            L19_2 = L19_2.ItemOffset
            L18_2 = L18_2 + L19_2
            L19_2 = 40
            L20_2 = 40
            L21_2 = 0
            L22_2 = L13_2.BadgeColour
            if L22_2 then
              L22_2 = L13_2.BadgeColour
              L22_2 = L22_2.R
              if L22_2 then
                goto lbl_203
              end
            end
            L22_2 = 255
            ::lbl_203::
            L23_2 = L13_2.BadgeColour
            if L23_2 then
              L23_2 = L13_2.BadgeColour
              L23_2 = L23_2.G
              if L23_2 then
                goto lbl_211
              end
            end
            L23_2 = 255
            ::lbl_211::
            L24_2 = L13_2.BadgeColour
            if L24_2 then
              L24_2 = L13_2.BadgeColour
              L24_2 = L24_2.B
              if L24_2 then
                goto lbl_219
              end
            end
            L24_2 = 255
            ::lbl_219::
            L25_2 = L13_2.BadgeColour
            if L25_2 then
              L25_2 = L13_2.BadgeColour
              L25_2 = L25_2.A
              if L25_2 then
                goto lbl_227
              end
            end
            L25_2 = 255
            ::lbl_227::
            L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
        end
        if L10_2 then
          L13_2 = A3_2.RightBadge
          if nil ~= L13_2 then
            L13_2 = A3_2.RightBadge
            L14_2 = L8_2
            L13_2 = L13_2(L14_2)
            L14_2 = Graphics
            L14_2 = L14_2.Sprite
            L15_2 = L13_2.BadgeDictionary
            if not L15_2 then
              L15_2 = "commonmenu"
            end
            L16_2 = L13_2.BadgeTexture
            if not L16_2 then
              L16_2 = ""
            end
            L17_2 = L6_2.X
            L17_2 = L17_2 + 385
            L18_2 = L6_2.WidthOffset
            L17_2 = L17_2 + L18_2
            L18_2 = L6_2.Y
            L18_2 = L18_2 + -2
            L19_2 = L6_2.SubtitleHeight
            L18_2 = L18_2 + L19_2
            L19_2 = RageUI
            L19_2 = L19_2.ItemOffset
            L18_2 = L18_2 + L19_2
            L19_2 = 40
            L20_2 = 40
            L21_2 = 0
            L22_2 = L13_2.BadgeColour
            if L22_2 then
              L22_2 = L13_2.BadgeColour
              L22_2 = L22_2.R
              if L22_2 then
                goto lbl_273
              end
            end
            L22_2 = 255
            ::lbl_273::
            L23_2 = L13_2.BadgeColour
            if L23_2 then
              L23_2 = L13_2.BadgeColour
              L23_2 = L23_2.G
              if L23_2 then
                goto lbl_281
              end
            end
            L23_2 = 255
            ::lbl_281::
            L24_2 = L13_2.BadgeColour
            if L24_2 then
              L24_2 = L13_2.BadgeColour
              L24_2 = L24_2.B
              if L24_2 then
                goto lbl_289
              end
            end
            L24_2 = 255
            ::lbl_289::
            L25_2 = L13_2.BadgeColour
            if L25_2 then
              L25_2 = L13_2.BadgeColour
              L25_2 = L25_2.A
              if L25_2 then
                goto lbl_297
              end
            end
            L25_2 = 255
            ::lbl_297::
            L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
        end
        L13_2 = A3_2.RightLabel
        if L13_2 then
          L13_2 = Graphics
          L13_2 = L13_2.Text
          L14_2 = A3_2.RightLabel
          L15_2 = L6_2.X
          L15_2 = L15_2 + 420
          L15_2 = L15_2 - L12_2
          L16_2 = L6_2.WidthOffset
          L15_2 = L15_2 + L16_2
          L16_2 = L6_2.Y
          L16_2 = L16_2 + 4
          L17_2 = L6_2.SubtitleHeight
          L16_2 = L16_2 + L17_2
          L17_2 = RageUI
          L17_2 = L17_2.ItemOffset
          L16_2 = L16_2 + L17_2
          L17_2 = 0
          L18_2 = 0.35
          if L8_2 then
            L19_2 = 0
            if L19_2 then
              goto lbl_331
            end
          end
          L19_2 = A3_2.RightLabelColor
          L19_2 = L19_2[1]
          ::lbl_331::
          if L8_2 then
            L20_2 = 0
            if L20_2 then
              goto lbl_338
            end
          end
          L20_2 = A3_2.RightLabelColor
          L20_2 = L20_2[2]
          ::lbl_338::
          if L8_2 then
            L21_2 = 0
            if L21_2 then
              goto lbl_345
            end
          end
          L21_2 = A3_2.RightLabelColor
          L21_2 = L21_2[3]
          ::lbl_345::
          L22_2 = 255
          L23_2 = 2
          L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        end
        L13_2 = Graphics
        L13_2 = L13_2.Text
        L14_2 = A1_2
        L15_2 = L6_2.X
        L15_2 = L15_2 + 8
        L15_2 = L15_2 + L11_2
        L16_2 = L6_2.Y
        L16_2 = L16_2 + 3
        L17_2 = L6_2.SubtitleHeight
        L16_2 = L16_2 + L17_2
        L17_2 = RageUI
        L17_2 = L17_2.ItemOffset
        L16_2 = L16_2 + L17_2
        L17_2 = 0
        L18_2 = 0.33
        if L8_2 then
          L19_2 = 0
          if L19_2 then
            goto lbl_374
          end
        end
        L19_2 = 245
        ::lbl_374::
        if L8_2 then
          L20_2 = 0
          if L20_2 then
            goto lbl_380
          end
        end
        L20_2 = 245
        ::lbl_380::
        if L8_2 then
          L21_2 = 0
          if L21_2 then
            goto lbl_386
          end
        end
        L21_2 = 245
        ::lbl_386::
        L22_2 = 255
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      else
        L13_2 = RageUI
        L13_2 = L13_2.BadgeStyle
        L13_2 = L13_2.Lock
        L14_2 = L8_2
        L13_2 = L13_2(L14_2)
        L14_2 = Graphics
        L14_2 = L14_2.Sprite
        L15_2 = L13_2.BadgeDictionary
        if not L15_2 then
          L15_2 = "commonmenu"
        end
        L16_2 = L13_2.BadgeTexture
        if not L16_2 then
          L16_2 = ""
        end
        L17_2 = L6_2.X
        L17_2 = L17_2 + 385
        L18_2 = L6_2.WidthOffset
        L17_2 = L17_2 + L18_2
        L18_2 = L6_2.Y
        L18_2 = L18_2 + -2
        L19_2 = L6_2.SubtitleHeight
        L18_2 = L18_2 + L19_2
        L19_2 = RageUI
        L19_2 = L19_2.ItemOffset
        L18_2 = L18_2 + L19_2
        L19_2 = 40
        L20_2 = 40
        L21_2 = 0
        L22_2 = L13_2.BadgeColour
        if L22_2 then
          L22_2 = L13_2.BadgeColour
          L22_2 = L22_2.R
          if L22_2 then
            goto lbl_431
          end
        end
        L22_2 = 255
        ::lbl_431::
        L23_2 = L13_2.BadgeColour
        if L23_2 then
          L23_2 = L13_2.BadgeColour
          L23_2 = L23_2.G
          if L23_2 then
            goto lbl_439
          end
        end
        L23_2 = 255
        ::lbl_439::
        L24_2 = L13_2.BadgeColour
        if L24_2 then
          L24_2 = L13_2.BadgeColour
          L24_2 = L24_2.B
          if L24_2 then
            goto lbl_447
          end
        end
        L24_2 = 255
        ::lbl_447::
        L25_2 = L13_2.BadgeColour
        if L25_2 then
          L25_2 = L13_2.BadgeColour
          L25_2 = L25_2.A
          if L25_2 then
            goto lbl_455
          end
        end
        L25_2 = 255
        ::lbl_455::
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
        L14_2 = Graphics
        L14_2 = L14_2.Text
        L15_2 = A1_2
        L16_2 = L6_2.X
        L16_2 = L16_2 + 8
        L16_2 = L16_2 + L11_2
        L17_2 = L6_2.Y
        L17_2 = L17_2 + 3
        L18_2 = L6_2.SubtitleHeight
        L17_2 = L17_2 + L18_2
        L18_2 = RageUI
        L18_2 = L18_2.ItemOffset
        L17_2 = L17_2 + L18_2
        L18_2 = 0
        L19_2 = 0.33
        L20_2 = 163
        L21_2 = 159
        L22_2 = 148
        L23_2 = 255
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      end
      L13_2 = RageUI
      L14_2 = RageUI
      L14_2 = L14_2.ItemOffset
      L14_2 = L14_2 + 38
      L13_2.ItemOffset = L14_2
      if L8_2 then
        L13_2 = RageUI
        L13_2 = L13_2.ItemsDescription
        L14_2 = A2_2
        L13_2(L14_2)
        L13_2 = A3_2.IsDisabled
        if not L13_2 then
          L13_2 = L6_2.Controls
          L13_2 = L13_2.Select
          L13_2 = L13_2.Active
          if nil ~= A4_2 then
            L14_2 = A4_2
            L15_2 = L13_2
            L16_2 = L8_2
            L14_2(L15_2, L16_2)
          end
          if L13_2 then
            L14_2 = Audio
            L14_2 = L14_2.PlaySound
            L15_2 = RageUI
            L15_2 = L15_2.Settings
            L15_2 = L15_2.Audio
            L15_2 = L15_2.Select
            L15_2 = L15_2.audioName
            L16_2 = RageUI
            L16_2 = L16_2.Settings
            L16_2 = L16_2.Audio
            L16_2 = L16_2.Select
            L16_2 = L16_2.audioRef
            L14_2(L15_2, L16_2)
            if A5_2 then
              L14_2 = A5_2
              L14_2 = L14_2()
              if L14_2 then
                L14_2 = RageUI
                L14_2.NextMenu = A5_2
              end
            end
          end
        end
      end
    end
  end
  L8_2 = RageUI
  L9_2 = RageUI
  L9_2 = L9_2.Options
  L9_2 = L9_2 + 1
  L8_2.Options = L9_2
end
L2_1.AddButton = L3_1
L2_1 = Items
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L7_2 = RageUI
  L7_2 = L7_2.CurrentMenu
  L8_2 = RageUI
  L8_2 = L8_2.ItemsSafeZone
  L9_2 = L7_2
  L8_2(L9_2)
  L8_2 = L7_2.Subtitle
  if "" ~= L8_2 then
    L8_2 = Graphics
    L8_2 = L8_2.Rectangle
    L9_2 = L7_2.X
    L10_2 = L7_2.Y
    L11_2 = RageUI
    L11_2 = L11_2.ItemOffset
    L10_2 = L10_2 + L11_2
    L11_2 = RageUI
    L11_2 = L11_2.Settings
    L11_2 = L11_2.Items
    L11_2 = L11_2.Subtitle
    L11_2 = L11_2.Background
    L11_2 = L11_2.Width
    L12_2 = L7_2.WidthOffset
    L11_2 = L11_2 + L12_2
    L12_2 = RageUI
    L12_2 = L12_2.Settings
    L12_2 = L12_2.Items
    L12_2 = L12_2.Subtitle
    L12_2 = L12_2.Background
    L12_2 = L12_2.Height
    L13_2 = L7_2.SubtitleHeight
    L12_2 = L12_2 + L13_2
    L13_2 = A3_2
    L14_2 = A4_2
    L15_2 = A5_2
    L16_2 = A6_2
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L8_2 = Graphics
    L8_2 = L8_2.Text
    L9_2 = A1_2
    L10_2 = L7_2.X
    L11_2 = RageUI
    L11_2 = L11_2.Settings
    L11_2 = L11_2.Items
    L11_2 = L11_2.Subtitle
    L11_2 = L11_2.Text
    L11_2 = L11_2.X
    L10_2 = L10_2 + L11_2
    L11_2 = L7_2.Y
    L12_2 = RageUI
    L12_2 = L12_2.Settings
    L12_2 = L12_2.Items
    L12_2 = L12_2.Subtitle
    L12_2 = L12_2.Text
    L12_2 = L12_2.Y
    L11_2 = L11_2 + L12_2
    L12_2 = RageUI
    L12_2 = L12_2.ItemOffset
    L11_2 = L11_2 + L12_2
    L12_2 = 0
    L13_2 = RageUI
    L13_2 = L13_2.Settings
    L13_2 = L13_2.Items
    L13_2 = L13_2.Subtitle
    L13_2 = L13_2.Text
    L13_2 = L13_2.Scale
    L14_2 = 245
    L15_2 = 245
    L16_2 = 245
    L17_2 = 255
    L18_2 = nil
    L19_2 = false
    L20_2 = false
    L21_2 = RageUI
    L21_2 = L21_2.Settings
    L21_2 = L21_2.Items
    L21_2 = L21_2.Subtitle
    L21_2 = L21_2.Background
    L21_2 = L21_2.Width
    L22_2 = L7_2.WidthOffset
    L21_2 = L21_2 + L22_2
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L8_2 = L7_2.Index
    L9_2 = L7_2.Options
    if not (L8_2 > L9_2) then
      L8_2 = L7_2.Index
      if not (L8_2 < 0) then
        goto lbl_98
      end
    end
    L7_2.Index = 1
    ::lbl_98::
    if nil ~= L7_2 then
      L8_2 = L7_2.Index
      L9_2 = L7_2.Pagination
      L9_2 = L9_2.Total
      if L8_2 > L9_2 then
        L8_2 = L7_2.Index
        L9_2 = L7_2.Pagination
        L9_2 = L9_2.Total
        L8_2 = L8_2 - L9_2
        L9_2 = L7_2.Pagination
        L10_2 = 1 + L8_2
        L9_2.Minimum = L10_2
        L9_2 = L7_2.Pagination
        L10_2 = L7_2.Pagination
        L10_2 = L10_2.Total
        L10_2 = L10_2 + L8_2
        L9_2.Maximum = L10_2
      else
        L8_2 = L7_2.Pagination
        L8_2.Minimum = 1
        L8_2 = L7_2.Pagination
        L9_2 = L7_2.Pagination
        L9_2 = L9_2.Total
        L8_2.Maximum = L9_2
      end
    end
    L8_2 = Graphics
    L8_2 = L8_2.Text
    L9_2 = A2_2
    L10_2 = L7_2.X
    L11_2 = RageUI
    L11_2 = L11_2.Settings
    L11_2 = L11_2.Items
    L11_2 = L11_2.Subtitle
    L11_2 = L11_2.PreText
    L11_2 = L11_2.X
    L10_2 = L10_2 + L11_2
    L11_2 = L7_2.WidthOffset
    L10_2 = L10_2 + L11_2
    L11_2 = L7_2.Y
    L12_2 = RageUI
    L12_2 = L12_2.Settings
    L12_2 = L12_2.Items
    L12_2 = L12_2.Subtitle
    L12_2 = L12_2.PreText
    L12_2 = L12_2.Y
    L11_2 = L11_2 + L12_2
    L12_2 = RageUI
    L12_2 = L12_2.ItemOffset
    L11_2 = L11_2 + L12_2
    L12_2 = 0
    L13_2 = RageUI
    L13_2 = L13_2.Settings
    L13_2 = L13_2.Items
    L13_2 = L13_2.Subtitle
    L13_2 = L13_2.PreText
    L13_2 = L13_2.Scale
    L14_2 = 245
    L15_2 = 245
    L16_2 = 245
    L17_2 = 255
    L18_2 = 2
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L8_2 = RageUI
    L9_2 = RageUI
    L9_2 = L9_2.ItemOffset
    L10_2 = RageUI
    L10_2 = L10_2.Settings
    L10_2 = L10_2.Items
    L10_2 = L10_2.Subtitle
    L10_2 = L10_2.Background
    L10_2 = L10_2.Height
    L9_2 = L9_2 + L10_2
    L8_2.ItemOffset = L9_2
  end
end
L2_1.AddExtraSubtitle = L3_1
L2_1 = Items
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = RageUI
  L1_2 = L1_2.CurrentMenu
  L2_2 = RageUI
  L2_2 = L2_2.ItemsSafeZone
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = L1_2.Subtitle
  if "" ~= L2_2 then
    L2_2 = L1_2.Index
    L3_2 = L1_2.Options
    if not (L2_2 > L3_2) then
      L2_2 = L1_2.Index
      if not (L2_2 < 0) then
        goto lbl_18
      end
    end
    L1_2.Index = 1
    ::lbl_18::
    if nil ~= L1_2 then
      L2_2 = L1_2.Index
      L3_2 = L1_2.Pagination
      L3_2 = L3_2.Total
      if L2_2 > L3_2 then
        L2_2 = L1_2.Index
        L3_2 = L1_2.Pagination
        L3_2 = L3_2.Total
        L2_2 = L2_2 - L3_2
        L3_2 = L1_2.Pagination
        L4_2 = 1 + L2_2
        L3_2.Minimum = L4_2
        L3_2 = L1_2.Pagination
        L4_2 = L1_2.Pagination
        L4_2 = L4_2.Total
        L4_2 = L4_2 + L2_2
        L3_2.Maximum = L4_2
      else
        L2_2 = L1_2.Pagination
        L2_2.Minimum = 1
        L2_2 = L1_2.Pagination
        L3_2 = L1_2.Pagination
        L3_2 = L3_2.Total
        L2_2.Maximum = L3_2
      end
    end
  end
end
L2_1.AddEmpty = L3_1
L2_1 = Items
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L8_2 = RageUI
  L8_2 = L8_2.CurrentMenu
  if nil == L8_2 then
    return
  end
  L8_2 = RageUI
  L8_2 = L8_2.CurrentMenu
  L9_2 = RageUI
  L9_2 = L9_2.Options
  L9_2 = L9_2 + 1
  L10_2 = L8_2.Pagination
  L10_2 = L10_2.Minimum
  if L9_2 >= L10_2 then
    L10_2 = L8_2.Pagination
    L10_2 = L10_2.Maximum
    if L9_2 <= L10_2 then
      L10_2 = L8_2.Index
      L10_2 = L10_2 == L9_2
      L11_2 = RageUI
      L11_2 = L11_2.ItemsSafeZone
      L12_2 = L8_2
      L11_2(L12_2)
      L11_2 = A5_2.LeftBadge
      if L11_2 then
        L11_2 = A5_2.LeftBadge
        L12_2 = RageUI
        L12_2 = L12_2.BadgeStyle
        L12_2 = L12_2.None
        L11_2 = L11_2 ~= L12_2
      end
      L12_2 = A5_2.RightBadge
      if L12_2 then
        L12_2 = A5_2.RightBadge
        L13_2 = RageUI
        L13_2 = L13_2.BadgeStyle
        L13_2 = L13_2.None
        L12_2 = L12_2 ~= L13_2
      end
      if L11_2 then
        L13_2 = 27
        if L13_2 then
          goto lbl_57
        end
      end
      L13_2 = 0
      ::lbl_57::
      if L12_2 then
        L14_2 = 32
        if L14_2 then
          goto lbl_63
        end
      end
      L14_2 = 0
      ::lbl_63::
      L15_2 = A5_2.Color
      if L15_2 then
        L15_2 = A5_2.Color
        L15_2 = L15_2.BackgroundColor
        if L15_2 then
          L15_2 = Graphics
          L15_2 = L15_2.Rectangle
          L16_2 = L8_2.X
          L17_2 = L8_2.Y
          L17_2 = L17_2 + 0
          L18_2 = L8_2.SubtitleHeight
          L17_2 = L17_2 + L18_2
          L18_2 = RageUI
          L18_2 = L18_2.ItemOffset
          L17_2 = L17_2 + L18_2
          L18_2 = L8_2.WidthOffset
          L18_2 = 431 + L18_2
          L19_2 = 38
          L20_2 = A5_2.Color
          L20_2 = L20_2.BackgroundColor
          L20_2 = L20_2[1]
          L21_2 = A5_2.Color
          L21_2 = L21_2.BackgroundColor
          L21_2 = L21_2[2]
          L22_2 = A5_2.Color
          L22_2 = L22_2.BackgroundColor
          L22_2 = L22_2[3]
          L23_2 = A5_2.Color
          L23_2 = L23_2.BackgroundColor
          L23_2 = L23_2[4]
          L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        end
      end
      L15_2 = A5_2.IsDisabled
      if not L15_2 then
        if L11_2 then
          L15_2 = A5_2.LeftBadge
          if nil ~= L15_2 then
            L15_2 = A5_2.LeftBadge
            L16_2 = L10_2
            L15_2 = L15_2(L16_2)
            L16_2 = Graphics
            L16_2 = L16_2.Sprite
            L17_2 = L15_2.BadgeDictionary
            if not L17_2 then
              L17_2 = "commonmenu"
            end
            L18_2 = L15_2.BadgeTexture
            if not L18_2 then
              L18_2 = ""
            end
            L19_2 = L8_2.X
            L20_2 = L8_2.Y
            L20_2 = L20_2 + -2
            L21_2 = L8_2.SubtitleHeight
            L20_2 = L20_2 + L21_2
            L21_2 = RageUI
            L21_2 = L21_2.ItemOffset
            L20_2 = L20_2 + L21_2
            L21_2 = 40
            L22_2 = 40
            L23_2 = 0
            L24_2 = L15_2.BadgeColour
            if L24_2 then
              L24_2 = L15_2.BadgeColour
              L24_2 = L24_2.R
              if L24_2 then
                goto lbl_143
              end
            end
            L24_2 = 255
            ::lbl_143::
            L25_2 = L15_2.BadgeColour
            if L25_2 then
              L25_2 = L15_2.BadgeColour
              L25_2 = L25_2.G
              if L25_2 then
                goto lbl_151
              end
            end
            L25_2 = 255
            ::lbl_151::
            L26_2 = L15_2.BadgeColour
            if L26_2 then
              L26_2 = L15_2.BadgeColour
              L26_2 = L26_2.B
              if L26_2 then
                goto lbl_159
              end
            end
            L26_2 = 255
            ::lbl_159::
            L27_2 = L15_2.BadgeColour
            if L27_2 then
              L27_2 = L15_2.BadgeColour
              L27_2 = L27_2.A
              if L27_2 then
                goto lbl_167
              end
            end
            L27_2 = 255
            ::lbl_167::
            L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
          end
        end
        if L12_2 then
          L15_2 = A5_2.RightBadge
          if nil ~= L15_2 then
            L15_2 = A5_2.RightBadge
            L16_2 = L10_2
            L15_2 = L15_2(L16_2)
            L16_2 = Graphics
            L16_2 = L16_2.Sprite
            L17_2 = L15_2.BadgeDictionary
            if not L17_2 then
              L17_2 = "commonmenu"
            end
            L18_2 = L15_2.BadgeTexture
            if not L18_2 then
              L18_2 = ""
            end
            L19_2 = L8_2.X
            L19_2 = L19_2 + 385
            L20_2 = L8_2.WidthOffset
            L19_2 = L19_2 + L20_2
            L20_2 = L8_2.Y
            L20_2 = L20_2 + -2
            L21_2 = L8_2.SubtitleHeight
            L20_2 = L20_2 + L21_2
            L21_2 = RageUI
            L21_2 = L21_2.ItemOffset
            L20_2 = L20_2 + L21_2
            L21_2 = 40
            L22_2 = 40
            L23_2 = 0
            L24_2 = L15_2.BadgeColour
            if L24_2 then
              L24_2 = L15_2.BadgeColour
              L24_2 = L24_2.R
              if L24_2 then
                goto lbl_213
              end
            end
            L24_2 = 255
            ::lbl_213::
            L25_2 = L15_2.BadgeColour
            if L25_2 then
              L25_2 = L15_2.BadgeColour
              L25_2 = L25_2.G
              if L25_2 then
                goto lbl_221
              end
            end
            L25_2 = 255
            ::lbl_221::
            L26_2 = L15_2.BadgeColour
            if L26_2 then
              L26_2 = L15_2.BadgeColour
              L26_2 = L26_2.B
              if L26_2 then
                goto lbl_229
              end
            end
            L26_2 = 255
            ::lbl_229::
            L27_2 = L15_2.BadgeColour
            if L27_2 then
              L27_2 = L15_2.BadgeColour
              L27_2 = L27_2.A
              if L27_2 then
                goto lbl_237
              end
            end
            L27_2 = 255
            ::lbl_237::
            L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
          end
        end
        L15_2 = A5_2.RightLabel
        if L15_2 then
          L15_2 = Graphics
          L15_2 = L15_2.Text
          L16_2 = A5_2.RightLabel
          L17_2 = L8_2.X
          L17_2 = L17_2 + 420
          L17_2 = L17_2 - L14_2
          L18_2 = L8_2.WidthOffset
          L17_2 = L17_2 + L18_2
          L18_2 = L8_2.Y
          L18_2 = L18_2 + 4
          L19_2 = L8_2.SubtitleHeight
          L18_2 = L18_2 + L19_2
          L19_2 = RageUI
          L19_2 = L19_2.ItemOffset
          L18_2 = L18_2 + L19_2
          L19_2 = 0
          L20_2 = 0.35
          L21_2 = A5_2.RightLabelColor
          L21_2 = L21_2[1]
          L22_2 = A5_2.RightLabelColor
          L22_2 = L22_2[2]
          L23_2 = A5_2.RightLabelColor
          L23_2 = L23_2[3]
          L24_2 = A5_2.RightLabelColor
          L24_2 = L24_2[4]
          L25_2 = 2
          L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
        end
        L15_2 = Graphics
        L15_2 = L15_2.Text
        L16_2 = A1_2
        L17_2 = L8_2.X
        L17_2 = L17_2 + 8
        L17_2 = L17_2 + L13_2
        L17_2 = L17_2 + 35
        L18_2 = L8_2.Y
        L18_2 = L18_2 + 3
        L19_2 = L8_2.SubtitleHeight
        L18_2 = L18_2 + L19_2
        L19_2 = RageUI
        L19_2 = L19_2.ItemOffset
        L18_2 = L18_2 + L19_2
        L18_2 = L18_2 + 2
        L19_2 = 0
        L20_2 = 0.33
        L21_2 = A5_2.TextLabelColor
        L21_2 = L21_2[1]
        L22_2 = A5_2.TextLabelColor
        L22_2 = L22_2[2]
        L23_2 = A5_2.TextLabelColor
        L23_2 = L23_2[3]
        L24_2 = A5_2.TextLabelColor
        L24_2 = L24_2[4]
        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        if A3_2 then
          L15_2 = Graphics
          L15_2 = L15_2.Sprite
          L16_2 = A3_2
          L17_2 = A3_2
          L18_2 = L8_2.X
          L19_2 = L8_2.Y
          L19_2 = L19_2 + -2
          L20_2 = L8_2.SubtitleHeight
          L19_2 = L19_2 + L20_2
          L20_2 = RageUI
          L20_2 = L20_2.ItemOffset
          L19_2 = L19_2 + L20_2
          L19_2 = L19_2 + 2
          L20_2 = 37
          L21_2 = 37
          L22_2 = 0
          L23_2 = 255
          L24_2 = 255
          L25_2 = 255
          L26_2 = 255
          L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        end
      else
        L15_2 = RageUI
        L15_2 = L15_2.BadgeStyle
        L15_2 = L15_2.Lock
        L16_2 = L10_2
        L15_2 = L15_2(L16_2)
        L16_2 = Graphics
        L16_2 = L16_2.Sprite
        L17_2 = L15_2.BadgeDictionary
        if not L17_2 then
          L17_2 = "commonmenu"
        end
        L18_2 = L15_2.BadgeTexture
        if not L18_2 then
          L18_2 = ""
        end
        L19_2 = L8_2.X
        L19_2 = L19_2 + 385
        L20_2 = L8_2.WidthOffset
        L19_2 = L19_2 + L20_2
        L20_2 = L8_2.Y
        L20_2 = L20_2 + -2
        L21_2 = L8_2.SubtitleHeight
        L20_2 = L20_2 + L21_2
        L21_2 = RageUI
        L21_2 = L21_2.ItemOffset
        L20_2 = L20_2 + L21_2
        L21_2 = 40
        L22_2 = 40
        L23_2 = 0
        L24_2 = L15_2.BadgeColour
        if L24_2 then
          L24_2 = L15_2.BadgeColour
          L24_2 = L24_2.R
          if L24_2 then
            goto lbl_377
          end
        end
        L24_2 = 255
        ::lbl_377::
        L25_2 = L15_2.BadgeColour
        if L25_2 then
          L25_2 = L15_2.BadgeColour
          L25_2 = L25_2.G
          if L25_2 then
            goto lbl_385
          end
        end
        L25_2 = 255
        ::lbl_385::
        L26_2 = L15_2.BadgeColour
        if L26_2 then
          L26_2 = L15_2.BadgeColour
          L26_2 = L26_2.B
          if L26_2 then
            goto lbl_393
          end
        end
        L26_2 = 255
        ::lbl_393::
        L27_2 = L15_2.BadgeColour
        if L27_2 then
          L27_2 = L15_2.BadgeColour
          L27_2 = L27_2.A
          if L27_2 then
            goto lbl_401
          end
        end
        L27_2 = 255
        ::lbl_401::
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
        L16_2 = Graphics
        L16_2 = L16_2.Text
        L17_2 = A1_2
        L18_2 = L8_2.X
        L18_2 = L18_2 + 8
        L18_2 = L18_2 + L13_2
        L19_2 = L8_2.Y
        L19_2 = L19_2 + 3
        L20_2 = L8_2.SubtitleHeight
        L19_2 = L19_2 + L20_2
        L20_2 = RageUI
        L20_2 = L20_2.ItemOffset
        L19_2 = L19_2 + L20_2
        L20_2 = 0
        L21_2 = 0.33
        L22_2 = 163
        L23_2 = 159
        L24_2 = 148
        L25_2 = 255
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      end
      L15_2 = RageUI
      L16_2 = RageUI
      L16_2 = L16_2.ItemOffset
      L16_2 = L16_2 + 38
      L15_2.ItemOffset = L16_2
      if L10_2 then
        L15_2 = RageUI
        L15_2 = L15_2.ItemsDescription
        L16_2 = A4_2
        L15_2(L16_2)
        L15_2 = A5_2.IsDisabled
        if not L15_2 then
          L15_2 = L8_2.Controls
          L15_2 = L15_2.Select
          L15_2 = L15_2.Active
          if nil ~= A6_2 then
            L16_2 = A6_2
            L17_2 = L15_2
            L18_2 = L10_2
            L16_2(L17_2, L18_2)
          end
          if L15_2 then
            L16_2 = Audio
            L16_2 = L16_2.PlaySound
            L17_2 = RageUI
            L17_2 = L17_2.Settings
            L17_2 = L17_2.Audio
            L17_2 = L17_2.Select
            L17_2 = L17_2.audioName
            L18_2 = RageUI
            L18_2 = L18_2.Settings
            L18_2 = L18_2.Audio
            L18_2 = L18_2.Select
            L18_2 = L18_2.audioRef
            L16_2(L17_2, L18_2)
            if A7_2 then
              L16_2 = A7_2
              L16_2 = L16_2()
              if L16_2 then
                L16_2 = RageUI
                L16_2.NextMenu = A7_2
              end
            end
          end
        end
      end
    end
  end
  L10_2 = RageUI
  L11_2 = RageUI
  L11_2 = L11_2.Options
  L11_2 = L11_2 + 1
  L10_2.Options = L11_2
end
L2_1.AddWinnerLoser = L3_1
L2_1 = Items
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L6_2 = RageUI
  L6_2 = L6_2.CurrentMenu
  L7_2 = RageUI
  L7_2 = L7_2.Options
  L7_2 = L7_2 + 1
  L8_2 = L6_2.Pagination
  L8_2 = L8_2.Minimum
  if L7_2 >= L8_2 then
    L8_2 = L6_2.Pagination
    L8_2 = L8_2.Maximum
    if L7_2 <= L8_2 then
      L8_2 = L6_2.Index
      L8_2 = L8_2 == L7_2
      L9_2 = false
      L10_2 = A4_2.LeftBadge
      L11_2 = RageUI
      L11_2 = L11_2.BadgeStyle
      L11_2 = L11_2.None
      if L10_2 ~= L11_2 then
        L10_2 = A4_2.LeftBadge
        if nil ~= L10_2 then
          goto lbl_33
        end
      end
      L10_2 = 0
      ::lbl_33::
      if not L10_2 then
        L10_2 = 27
      end
      L11_2 = A4_2.RightBadge
      L12_2 = RageUI
      L12_2 = L12_2.BadgeStyle
      L12_2 = L12_2.None
      if L11_2 ~= L12_2 then
        L11_2 = A4_2.RightBadge
        if nil ~= L11_2 then
          goto lbl_46
        end
      end
      L11_2 = 0
      ::lbl_46::
      if not L11_2 then
        L11_2 = 32
      end
      L12_2 = 0
      L13_2 = RageUI
      L13_2 = L13_2.ItemsSafeZone
      L14_2 = L6_2
      L13_2(L14_2)
      if L8_2 then
        L13_2 = Graphics
        L13_2 = L13_2.Sprite
        L14_2 = "commonmenu"
        L15_2 = "gradient_nav"
        L16_2 = L6_2.X
        L17_2 = L6_2.Y
        L17_2 = L17_2 + 0
        L18_2 = L6_2.SubtitleHeight
        L17_2 = L17_2 + L18_2
        L18_2 = RageUI
        L18_2 = L18_2.ItemOffset
        L17_2 = L17_2 + L18_2
        L18_2 = L6_2.WidthOffset
        L18_2 = 431 + L18_2
        L19_2 = 38
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      end
      L13_2 = A4_2.IsDisabled
      if nil ~= L13_2 then
        L13_2 = A4_2.IsDisabled
        if L13_2 then
          goto lbl_277
        end
      end
      if L8_2 then
        L13_2 = Graphics
        L13_2 = L13_2.Text
        L14_2 = A1_2
        L15_2 = L6_2.X
        L15_2 = L15_2 + 8
        L15_2 = L15_2 + L10_2
        L16_2 = L6_2.Y
        L16_2 = L16_2 + 3
        L17_2 = L6_2.SubtitleHeight
        L16_2 = L16_2 + L17_2
        L17_2 = RageUI
        L17_2 = L17_2.ItemOffset
        L16_2 = L16_2 + L17_2
        L17_2 = 0
        L18_2 = 0.33
        L19_2 = 0
        L20_2 = 0
        L21_2 = 0
        L22_2 = 255
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      else
        L13_2 = Graphics
        L13_2 = L13_2.Text
        L14_2 = A1_2
        L15_2 = L6_2.X
        L15_2 = L15_2 + 8
        L15_2 = L15_2 + L10_2
        L16_2 = L6_2.Y
        L16_2 = L16_2 + 3
        L17_2 = L6_2.SubtitleHeight
        L16_2 = L16_2 + L17_2
        L17_2 = RageUI
        L17_2 = L17_2.ItemOffset
        L16_2 = L16_2 + L17_2
        L17_2 = 0
        L18_2 = 0.33
        L19_2 = 245
        L20_2 = 245
        L21_2 = 245
        L22_2 = 255
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      end
      L13_2 = A4_2.LeftBadge
      if nil ~= L13_2 then
        L13_2 = A4_2.LeftBadge
        L14_2 = RageUI
        L14_2 = L14_2.BadgeStyle
        L14_2 = L14_2.None
        if L13_2 ~= L14_2 then
          L13_2 = A4_2.LeftBadge
          L14_2 = L8_2
          L13_2 = L13_2(L14_2)
          L14_2 = Graphics
          L14_2 = L14_2.Sprite
          L15_2 = L13_2.BadgeDictionary
          if not L15_2 then
            L15_2 = "commonmenu"
          end
          L16_2 = L13_2.BadgeTexture
          if not L16_2 then
            L16_2 = ""
          end
          L17_2 = L6_2.X
          L18_2 = L6_2.Y
          L18_2 = L18_2 + -2
          L19_2 = L6_2.SubtitleHeight
          L18_2 = L18_2 + L19_2
          L19_2 = RageUI
          L19_2 = L19_2.ItemOffset
          L18_2 = L18_2 + L19_2
          L19_2 = 40
          L20_2 = 40
          L21_2 = 0
          L22_2 = L13_2.BadgeColour
          if L22_2 then
            L22_2 = L13_2.BadgeColour
            L22_2 = L22_2.R
            if L22_2 then
              goto lbl_177
            end
          end
          L22_2 = 255
          ::lbl_177::
          L23_2 = L13_2.BadgeColour
          if L23_2 then
            L23_2 = L13_2.BadgeColour
            L23_2 = L23_2.G
            if L23_2 then
              goto lbl_185
            end
          end
          L23_2 = 255
          ::lbl_185::
          L24_2 = L13_2.BadgeColour
          if L24_2 then
            L24_2 = L13_2.BadgeColour
            L24_2 = L24_2.B
            if L24_2 then
              goto lbl_193
            end
          end
          L24_2 = 255
          ::lbl_193::
          L25_2 = L13_2.BadgeColour
          if L25_2 then
            L25_2 = L13_2.BadgeColour
            L25_2 = L25_2.A
            if L25_2 then
              goto lbl_201
            end
          end
          L25_2 = 255
          ::lbl_201::
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
        end
      end
      L13_2 = A4_2.RightBadge
      if nil ~= L13_2 then
        L13_2 = A4_2.RightBadge
        L14_2 = RageUI
        L14_2 = L14_2.BadgeStyle
        L14_2 = L14_2.None
        if L13_2 ~= L14_2 then
          L13_2 = A4_2.RightBadge
          L14_2 = L8_2
          L13_2 = L13_2(L14_2)
          L14_2 = Graphics
          L14_2 = L14_2.Sprite
          L15_2 = L13_2.BadgeDictionary
          if not L15_2 then
            L15_2 = "commonmenu"
          end
          L16_2 = L13_2.BadgeTexture
          if not L16_2 then
            L16_2 = ""
          end
          L17_2 = L6_2.X
          L17_2 = L17_2 + 385
          L18_2 = L6_2.WidthOffset
          L17_2 = L17_2 + L18_2
          L18_2 = L6_2.Y
          L18_2 = L18_2 + -2
          L19_2 = L6_2.SubtitleHeight
          L18_2 = L18_2 + L19_2
          L19_2 = RageUI
          L19_2 = L19_2.ItemOffset
          L18_2 = L18_2 + L19_2
          L19_2 = 40
          L20_2 = 40
          L21_2 = 0
          L22_2 = L13_2.BadgeColour
          if L22_2 then
            L22_2 = L13_2.BadgeColour
            L22_2 = L22_2.R
            if L22_2 then
              goto lbl_251
            end
          end
          L22_2 = 255
          ::lbl_251::
          L23_2 = L13_2.BadgeColour
          if L23_2 then
            L23_2 = L13_2.BadgeColour
            L23_2 = L23_2.G
            if L23_2 then
              goto lbl_259
            end
          end
          L23_2 = 255
          ::lbl_259::
          L24_2 = L13_2.BadgeColour
          if L24_2 then
            L24_2 = L13_2.BadgeColour
            L24_2 = L24_2.B
            if L24_2 then
              goto lbl_267
            end
          end
          L24_2 = 255
          ::lbl_267::
          L25_2 = L13_2.BadgeColour
          if L25_2 then
            L25_2 = L13_2.BadgeColour
            L25_2 = L25_2.A
            if L25_2 then
              goto lbl_275
            end
          end
          L25_2 = 255
          ::lbl_275::
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          goto lbl_399
          ::lbl_277::
          L13_2 = RageUI
          L13_2 = L13_2.BadgeStyle
          L13_2 = L13_2.Lock
          L14_2 = RageUI
          L14_2 = L14_2.BadgeStyle
          L14_2 = L14_2.None
          if L13_2 == L14_2 or nil == L13_2 then
            L14_2 = 0
            if L14_2 then
              goto lbl_291
              L10_2 = L14_2 or L10_2
            end
          end
          L10_2 = 27
          ::lbl_291::
          if L8_2 then
            L14_2 = Graphics
            L14_2 = L14_2.Text
            L15_2 = A1_2
            L16_2 = L6_2.X
            L16_2 = L16_2 + 8
            L16_2 = L16_2 + L10_2
            L17_2 = L6_2.Y
            L17_2 = L17_2 + 3
            L18_2 = L6_2.SubtitleHeight
            L17_2 = L17_2 + L18_2
            L18_2 = RageUI
            L18_2 = L18_2.ItemOffset
            L17_2 = L17_2 + L18_2
            L18_2 = 0
            L19_2 = 0.33
            L20_2 = 0
            L21_2 = 0
            L22_2 = 0
            L23_2 = 255
            L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
          else
            L14_2 = Graphics
            L14_2 = L14_2.Text
            L15_2 = A1_2
            L16_2 = L6_2.X
            L16_2 = L16_2 + 8
            L16_2 = L16_2 + L10_2
            L17_2 = L6_2.Y
            L17_2 = L17_2 + 3
            L18_2 = L6_2.SubtitleHeight
            L17_2 = L17_2 + L18_2
            L18_2 = RageUI
            L18_2 = L18_2.ItemOffset
            L17_2 = L17_2 + L18_2
            L18_2 = 0
            L19_2 = 0.33
            L20_2 = 163
            L21_2 = 159
            L22_2 = 148
            L23_2 = 255
            L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
          end
          L14_2 = RageUI
          L14_2 = L14_2.BadgeStyle
          L14_2 = L14_2.None
          if L13_2 ~= L14_2 and nil ~= L13_2 then
            L14_2 = L13_2
            L15_2 = L8_2
            L14_2 = L14_2(L15_2)
            L15_2 = Graphics
            L15_2 = L15_2.Sprite
            L16_2 = L14_2.BadgeDictionary
            if not L16_2 then
              L16_2 = "commonmenu"
            end
            L17_2 = L14_2.BadgeTexture
            if not L17_2 then
              L17_2 = ""
            end
            L18_2 = L6_2.X
            L19_2 = L6_2.Y
            L19_2 = L19_2 + -2
            L20_2 = L6_2.SubtitleHeight
            L19_2 = L19_2 + L20_2
            L20_2 = RageUI
            L20_2 = L20_2.ItemOffset
            L19_2 = L19_2 + L20_2
            L20_2 = 40
            L21_2 = 40
            L22_2 = 0
            L23_2 = L14_2.BadgeColour
            L23_2 = L23_2.R
            if not L23_2 then
              L23_2 = 255
            end
            L24_2 = L14_2.BadgeColour
            L24_2 = L24_2.G
            if not L24_2 then
              L24_2 = 255
            end
            L25_2 = L14_2.BadgeColour
            L25_2 = L25_2.B
            if not L25_2 then
              L25_2 = 255
            end
            L26_2 = L14_2.BadgeColour
            L26_2 = L26_2.A
            if not L26_2 then
              L26_2 = 255
            end
            L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
          end
        end
      end
      ::lbl_399::
      if L8_2 then
        L13_2 = A4_2.RightLabel
        if nil ~= L13_2 then
          L13_2 = A4_2.RightLabel
          if "" ~= L13_2 then
            L13_2 = Graphics
            L13_2 = L13_2.Text
            L14_2 = A4_2.RightLabel
            L15_2 = L6_2.X
            L15_2 = L15_2 + 420
            L15_2 = L15_2 - L11_2
            L16_2 = L6_2.WidthOffset
            L15_2 = L15_2 + L16_2
            L16_2 = L6_2.Y
            L16_2 = L16_2 + 4
            L17_2 = L6_2.SubtitleHeight
            L16_2 = L16_2 + L17_2
            L17_2 = RageUI
            L17_2 = L17_2.ItemOffset
            L16_2 = L16_2 + L17_2
            L17_2 = 0
            L18_2 = 0.35
            L19_2 = 0
            L20_2 = 0
            L21_2 = 0
            L22_2 = 255
            L23_2 = 2
            L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
            L13_2 = MeasureStringWidth
            L14_2 = A4_2.RightLabel
            L15_2 = 0
            L16_2 = 0.35
            L13_2 = L13_2(L14_2, L15_2, L16_2)
            L12_2 = L13_2
          end
        end
      else
        L13_2 = A4_2.RightLabel
        if nil ~= L13_2 then
          L13_2 = A4_2.RightLabel
          if "" ~= L13_2 then
            L13_2 = Graphics
            L13_2 = L13_2.Text
            L14_2 = A4_2.RightLabel
            L15_2 = L6_2.X
            L15_2 = L15_2 + 420
            L15_2 = L15_2 - L11_2
            L16_2 = L6_2.WidthOffset
            L15_2 = L15_2 + L16_2
            L16_2 = L6_2.Y
            L16_2 = L16_2 + 4
            L17_2 = L6_2.SubtitleHeight
            L16_2 = L16_2 + L17_2
            L17_2 = RageUI
            L17_2 = L17_2.ItemOffset
            L16_2 = L16_2 + L17_2
            L17_2 = 0
            L18_2 = 0.35
            L19_2 = 245
            L20_2 = 245
            L21_2 = 245
            L22_2 = 255
            L23_2 = 2
            L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
            L13_2 = MeasureStringWidth
            L14_2 = A4_2.RightLabel
            L15_2 = 0
            L16_2 = 0.35
            L13_2 = L13_2(L14_2, L15_2, L16_2)
            L12_2 = L13_2
          end
        end
      end
      L12_2 = L11_2 + L12_2
      L13_2 = A4_2.Style
      if nil ~= L13_2 then
        L13_2 = A4_2.Style
        if 1 == L13_2 then
          L13_2 = L1_1
          L14_2 = L8_2
          L15_2 = A3_2
          L16_2 = 2
          L17_2 = 4
          L18_2 = L12_2
          L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
        else
          L13_2 = A4_2.Style
          if 2 == L13_2 then
            L13_2 = L1_1
            L14_2 = L8_2
            L15_2 = A3_2
            L16_2 = 5
            L17_2 = 6
            L18_2 = L12_2
            L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
          else
            L13_2 = L1_1
            L14_2 = L8_2
            L15_2 = A3_2
            L16_2 = 2
            L17_2 = 4
            L18_2 = L12_2
            L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
          end
        end
      else
        L13_2 = L1_1
        L14_2 = L8_2
        L15_2 = A3_2
        L16_2 = 2
        L17_2 = 4
        L18_2 = L12_2
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
      end
      if L8_2 then
        L13_2 = L6_2.Controls
        L13_2 = L13_2.Select
        L13_2 = L13_2.Active
        if L13_2 then
          L9_2 = true
          A3_2 = not A3_2
          L13_2 = Audio
          L13_2 = L13_2.PlaySound
          L14_2 = RageUI
          L14_2 = L14_2.Settings
          L14_2 = L14_2.Audio
          L14_2 = L14_2.Select
          L14_2 = L14_2.audioName
          L15_2 = RageUI
          L15_2 = L15_2.Settings
          L15_2 = L15_2.Audio
          L15_2 = L15_2.Select
          L15_2 = L15_2.audioRef
          L13_2(L14_2, L15_2)
        end
      end
      if L8_2 then
        L13_2 = A5_2
        L14_2 = L9_2
        L15_2 = A3_2
        L13_2(L14_2, L15_2)
        L13_2 = RageUI
        L13_2 = L13_2.ItemsDescription
        L14_2 = A2_2
        L13_2(L14_2)
      end
      L13_2 = RageUI
      L14_2 = RageUI
      L14_2 = L14_2.ItemOffset
      L14_2 = L14_2 + 38
      L13_2.ItemOffset = L14_2
    end
  end
  L8_2 = RageUI
  L9_2 = RageUI
  L9_2 = L9_2.Options
  L9_2 = L9_2 + 1
  L8_2.Options = L9_2
end
L2_1.CheckBox = L3_1
L2_1 = Items
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if not A2_2 then
    L3_2 = {}
    L4_2 = 245
    L5_2 = 245
    L6_2 = 245
    L7_2 = 150
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    A2_2 = L3_2
  end
  L3_2 = RageUI
  L3_2 = L3_2.CurrentMenu
  L4_2 = RageUI
  L4_2 = L4_2.Options
  L4_2 = L4_2 + 1
  L5_2 = L3_2.Pagination
  L5_2 = L5_2.Minimum
  if L4_2 >= L5_2 then
    L5_2 = L3_2.Pagination
    L5_2 = L5_2.Maximum
    if L4_2 <= L5_2 then
      L5_2 = L3_2.Index
      L5_2 = L5_2 == L4_2
      if nil ~= A1_2 then
        L6_2 = Graphics
        L6_2 = L6_2.Text
        L7_2 = A1_2
        L8_2 = L3_2.X
        L8_2 = L8_2 + 0
        L9_2 = L3_2.WidthOffset
        L9_2 = L9_2 * 2.5
        if 0 ~= L9_2 then
          L9_2 = L3_2.WidthOffset
          L9_2 = L9_2 * 2.5
          if L9_2 then
            goto lbl_49
          end
        end
        L9_2 = 200
        ::lbl_49::
        L8_2 = L8_2 + L9_2
        L9_2 = L3_2.Y
        L9_2 = L9_2 + 4
        L10_2 = L3_2.SubtitleHeight
        L9_2 = L9_2 + L10_2
        L10_2 = RageUI
        L10_2 = L10_2.ItemOffset
        L9_2 = L9_2 + L10_2
        L10_2 = 0
        L11_2 = 0.33
        L12_2 = A2_2[1]
        L13_2 = A2_2[2]
        L14_2 = A2_2[3]
        L15_2 = A2_2[4]
        L16_2 = 1
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      end
      L6_2 = RageUI
      L7_2 = RageUI
      L7_2 = L7_2.ItemOffset
      L7_2 = L7_2 + 38
      L6_2.ItemOffset = L7_2
      if L5_2 then
        L6_2 = RageUI
        L6_2 = L6_2.LastControl
        if L6_2 then
          L6_2 = L4_2 - 1
          L3_2.Index = L6_2
          L6_2 = L3_2.Index
          if L6_2 < 1 then
            L6_2 = RageUI
            L6_2 = L6_2.CurrentMenu
            L6_2 = L6_2.Options
            L3_2.Index = L6_2
          end
        else
          L6_2 = L4_2 + 1
          L3_2.Index = L6_2
        end
        L6_2 = RageUI
        L6_2 = L6_2.ItemsDescription
        L7_2 = nil
        L6_2(L7_2)
      end
    end
  end
  L5_2 = RageUI
  L6_2 = RageUI
  L6_2 = L6_2.Options
  L6_2 = L6_2 + 1
  L5_2.Options = L6_2
end
L2_1.AddSeparator = L3_1
L2_1 = Items
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = RageUI
  L3_2 = L3_2.CurrentMenu
  L4_2 = RageUI
  L4_2 = L4_2.Options
  L4_2 = L4_2 + 1
  L5_2 = L3_2.Pagination
  L5_2 = L5_2.Minimum
  if L4_2 >= L5_2 then
    L5_2 = L3_2.Pagination
    L5_2 = L5_2.Maximum
    if L4_2 <= L5_2 then
      L5_2 = L3_2.Index
      L5_2 = L5_2 == L4_2
      if nil ~= A1_2 then
        L6_2 = A2_2 or L6_2
        if not A2_2 or not A2_2 then
          L6_2 = 0
        end
        L7_2 = Graphics
        L7_2 = L7_2.Text
        L8_2 = A1_2
        L9_2 = L3_2.X
        L9_2 = L9_2 + 0
        L10_2 = L3_2.WidthOffset
        L10_2 = L10_2 * 2.5
        if 0 ~= L10_2 then
          L10_2 = L3_2.WidthOffset
          L10_2 = L10_2 * 2.5
          if L10_2 then
            goto lbl_44
          end
        end
        L10_2 = 10
        ::lbl_44::
        L9_2 = L9_2 + L10_2
        L10_2 = L3_2.Y
        L10_2 = L10_2 + 0
        L11_2 = L3_2.SubtitleHeight
        L10_2 = L10_2 + L11_2
        L11_2 = RageUI
        L11_2 = L11_2.ItemOffset
        L10_2 = L10_2 + L11_2
        L10_2 = L10_2 + 7
        L10_2 = L10_2 + L6_2
        L11_2 = 0
        L12_2 = 0.33
        L13_2 = 245
        L14_2 = 245
        L15_2 = 245
        L16_2 = 255
        L17_2 = 0
        L18_2 = false
        L19_2 = false
        L20_2 = 410
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      end
      L6_2 = Graphics
      L6_2 = L6_2.GetLineCount
      L7_2 = A1_2
      L8_2 = L3_2.X
      L8_2 = L8_2 + 0
      L9_2 = L3_2.WidthOffset
      L9_2 = L9_2 * 2.5
      if 0 ~= L9_2 then
        L9_2 = L3_2.WidthOffset
        L9_2 = L9_2 * 2.5
        if L9_2 then
          goto lbl_88
        end
      end
      L9_2 = 10
      ::lbl_88::
      L8_2 = L8_2 + L9_2
      L9_2 = L3_2.Y
      L9_2 = L9_2 + 0
      L10_2 = L3_2.SubtitleHeight
      L9_2 = L9_2 + L10_2
      L10_2 = RageUI
      L10_2 = L10_2.ItemOffset
      L9_2 = L9_2 + L10_2
      L10_2 = 0
      L11_2 = 0.33
      L12_2 = 245
      L13_2 = 245
      L14_2 = 245
      L15_2 = 255
      L16_2 = 0
      L17_2 = false
      L18_2 = false
      L19_2 = 410
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L7_2 = 27 * L6_2
      L8_2 = RageUI
      L9_2 = RageUI
      L9_2 = L9_2.ItemOffset
      L9_2 = L9_2 + L7_2
      L8_2.ItemOffset = L9_2
      if L5_2 then
        L8_2 = RageUI
        L8_2 = L8_2.LastControl
        if L8_2 then
          L8_2 = L4_2 - 1
          L3_2.Index = L8_2
          L8_2 = L3_2.Index
          if L8_2 < 1 then
            L8_2 = RageUI
            L8_2 = L8_2.CurrentMenu
            L8_2 = L8_2.Options
            L3_2.Index = L8_2
          end
        else
          L8_2 = L4_2 + 1
          L3_2.Index = L8_2
        end
        L8_2 = RageUI
        L8_2 = L8_2.ItemsDescription
        L9_2 = nil
        L8_2(L9_2)
      end
    end
  end
  L5_2 = RageUI
  L6_2 = RageUI
  L6_2 = L6_2.Options
  L6_2 = L6_2 + 1
  L5_2.Options = L6_2
end
L2_1.AddText = L3_1
L2_1 = Items
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L8_2 = RageUI
  L8_2 = L8_2.CurrentMenu
  if not L8_2 then
    return
  end
  L9_2 = RageUI
  L9_2 = L9_2.Options
  L9_2 = L9_2 + 1
  L10_2 = L8_2.Pagination
  L10_2 = L10_2.Minimum
  if L9_2 >= L10_2 then
    L10_2 = L8_2.Pagination
    L10_2 = L10_2.Maximum
    if L9_2 <= L10_2 then
      L10_2 = L8_2.Index
      L10_2 = L10_2 == L9_2
      L11_2 = false
      L12_2 = RageUI
      L12_2 = L12_2.ItemsSafeZone
      L13_2 = L8_2
      L12_2(L13_2)
      L12_2 = A5_2.LeftBadge
      L13_2 = RageUI
      L13_2 = L13_2.BadgeStyle
      L13_2 = L13_2.None
      if L12_2 ~= L13_2 then
        L12_2 = A5_2.LeftBadge
        if nil ~= L12_2 then
          goto lbl_40
        end
      end
      L12_2 = 0
      ::lbl_40::
      if not L12_2 then
        L12_2 = 27
      end
      L13_2 = A5_2.RightBadge
      L14_2 = RageUI
      L14_2 = L14_2.BadgeStyle
      L14_2 = L14_2.None
      if L13_2 ~= L14_2 then
        L13_2 = A5_2.RightBadge
        if nil ~= L13_2 then
          goto lbl_53
        end
      end
      L13_2 = 0
      ::lbl_53::
      if not L13_2 then
        L13_2 = 32
      end
      L14_2 = 0
      L15_2 = type
      L16_2 = A2_2[A3_2]
      L15_2 = L15_2(L16_2)
      if "table" == L15_2 then
        L15_2 = string
        L15_2 = L15_2.format
        L16_2 = "\226\134\144 %s \226\134\146"
        L17_2 = A2_2[A3_2]
        L17_2 = L17_2.Name
        L15_2 = L15_2(L16_2, L17_2)
        if L15_2 then
          goto lbl_76
        end
      end
      L15_2 = string
      L15_2 = L15_2.format
      L16_2 = "\226\134\144 %s \226\134\146"
      L17_2 = A2_2[A3_2]
      L15_2 = L15_2(L16_2, L17_2)
      if not L15_2 then
        L15_2 = "NIL"
      end
      ::lbl_76::
      if L10_2 then
        L16_2 = Graphics
        L16_2 = L16_2.Sprite
        L17_2 = "commonmenu"
        L18_2 = "gradient_nav"
        L19_2 = L8_2.X
        L20_2 = L8_2.Y
        L20_2 = L20_2 + 0
        L21_2 = L8_2.SubtitleHeight
        L20_2 = L20_2 + L21_2
        L21_2 = RageUI
        L21_2 = L21_2.ItemOffset
        L20_2 = L20_2 + L21_2
        L21_2 = L8_2.WidthOffset
        L21_2 = 431 + L21_2
        L22_2 = 38
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      end
      L16_2 = A5_2.IsDisabled
      if not L16_2 then
        if L10_2 then
          L16_2 = A5_2.RightLabel
          if nil ~= L16_2 then
            L16_2 = A5_2.RightLabel
            if "" ~= L16_2 then
              L16_2 = Graphics
              L16_2 = L16_2.Text
              L17_2 = A5_2.RightLabel
              L18_2 = L8_2.X
              L18_2 = L18_2 + 420
              L18_2 = L18_2 - L13_2
              L19_2 = L8_2.WidthOffset
              L18_2 = L18_2 + L19_2
              L19_2 = L8_2.Y
              L19_2 = L19_2 + 4
              L20_2 = L8_2.SubtitleHeight
              L19_2 = L19_2 + L20_2
              L20_2 = RageUI
              L20_2 = L20_2.ItemOffset
              L19_2 = L19_2 + L20_2
              L20_2 = 0
              L21_2 = 0.35
              L22_2 = 0
              L23_2 = 0
              L24_2 = 0
              L25_2 = 255
              L26_2 = 2
              L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
              L16_2 = Graphics
              L16_2 = L16_2.MeasureStringWidth
              L17_2 = A5_2.RightLabel
              L18_2 = 0
              L19_2 = 0.35
              L16_2 = L16_2(L17_2, L18_2, L19_2)
              L14_2 = L16_2
            end
          end
        else
          L16_2 = A5_2.RightLabel
          if nil ~= L16_2 then
            L16_2 = A5_2.RightLabel
            if "" ~= L16_2 then
              L16_2 = Graphics
              L16_2 = L16_2.MeasureStringWidth
              L17_2 = A5_2.RightLabel
              L18_2 = 0
              L19_2 = 0.35
              L16_2 = L16_2(L17_2, L18_2, L19_2)
              L14_2 = L16_2
              L16_2 = Graphics
              L16_2 = L16_2.Text
              L17_2 = A5_2.RightLabel
              L18_2 = L8_2.X
              L18_2 = L18_2 + 420
              L18_2 = L18_2 - L13_2
              L19_2 = L8_2.WidthOffset
              L18_2 = L18_2 + L19_2
              L19_2 = L8_2.Y
              L19_2 = L19_2 + 4
              L20_2 = L8_2.SubtitleHeight
              L19_2 = L19_2 + L20_2
              L20_2 = RageUI
              L20_2 = L20_2.ItemOffset
              L19_2 = L19_2 + L20_2
              L20_2 = 0
              L21_2 = 0.35
              L22_2 = 245
              L23_2 = 245
              L24_2 = 245
              L25_2 = 255
              L26_2 = 2
              L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
            end
          end
        end
      end
      L16_2 = L13_2 * 1.3
      L14_2 = L16_2 + L14_2
      L16_2 = A5_2.IsDisabled
      if not L16_2 then
        if L10_2 then
          L16_2 = Graphics
          L16_2 = L16_2.Text
          L17_2 = A1_2
          L18_2 = L8_2.X
          L18_2 = L18_2 + 8
          L18_2 = L18_2 + L12_2
          L19_2 = L8_2.Y
          L19_2 = L19_2 + 3
          L20_2 = L8_2.SubtitleHeight
          L19_2 = L19_2 + L20_2
          L20_2 = RageUI
          L20_2 = L20_2.ItemOffset
          L19_2 = L19_2 + L20_2
          L20_2 = 0
          L21_2 = 0.33
          L22_2 = 0
          L23_2 = 0
          L24_2 = 0
          L25_2 = 255
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L16_2 = Graphics
          L16_2 = L16_2.Text
          L17_2 = L15_2
          L18_2 = L8_2.X
          L18_2 = L18_2 + 403
          L18_2 = L18_2 + 15
          L19_2 = L8_2.WidthOffset
          L18_2 = L18_2 + L19_2
          L18_2 = L18_2 - L14_2
          L19_2 = L8_2.Y
          L19_2 = L19_2 + 3
          L20_2 = L8_2.SubtitleHeight
          L19_2 = L19_2 + L20_2
          L20_2 = RageUI
          L20_2 = L20_2.ItemOffset
          L19_2 = L19_2 + L20_2
          L20_2 = 0
          L21_2 = 0.35
          L22_2 = 0
          L23_2 = 0
          L24_2 = 0
          L25_2 = 255
          L26_2 = 2
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        else
          L16_2 = Graphics
          L16_2 = L16_2.Text
          L17_2 = A1_2
          L18_2 = L8_2.X
          L18_2 = L18_2 + 8
          L18_2 = L18_2 + L12_2
          L19_2 = L8_2.Y
          L19_2 = L19_2 + 3
          L20_2 = L8_2.SubtitleHeight
          L19_2 = L19_2 + L20_2
          L20_2 = RageUI
          L20_2 = L20_2.ItemOffset
          L19_2 = L19_2 + L20_2
          L20_2 = 0
          L21_2 = 0.33
          L22_2 = 245
          L23_2 = 245
          L24_2 = 245
          L25_2 = 255
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L16_2 = Graphics
          L16_2 = L16_2.Text
          L17_2 = L15_2
          L18_2 = L8_2.X
          L18_2 = L18_2 + 403
          L18_2 = L18_2 + 15
          L19_2 = L8_2.WidthOffset
          L18_2 = L18_2 + L19_2
          L18_2 = L18_2 - L14_2
          L19_2 = L8_2.Y
          L19_2 = L19_2 + 3
          L20_2 = L8_2.SubtitleHeight
          L19_2 = L19_2 + L20_2
          L20_2 = RageUI
          L20_2 = L20_2.ItemOffset
          L19_2 = L19_2 + L20_2
          L20_2 = 0
          L21_2 = 0.35
          L22_2 = 245
          L23_2 = 245
          L24_2 = 245
          L25_2 = 255
          L26_2 = 2
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        end
      else
        L16_2 = Graphics
        L16_2 = L16_2.Text
        L17_2 = A1_2
        L18_2 = L8_2.X
        L18_2 = L18_2 + 8
        L18_2 = L18_2 + L12_2
        L19_2 = L8_2.Y
        L19_2 = L19_2 + 3
        L20_2 = L8_2.SubtitleHeight
        L19_2 = L19_2 + L20_2
        L20_2 = RageUI
        L20_2 = L20_2.ItemOffset
        L19_2 = L19_2 + L20_2
        L20_2 = 0
        L21_2 = 0.33
        L22_2 = 163
        L23_2 = 159
        L24_2 = 148
        L25_2 = 255
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
        L16_2 = Graphics
        L16_2 = L16_2.Text
        L17_2 = L15_2
        L18_2 = L8_2.X
        L18_2 = L18_2 + 403
        L18_2 = L18_2 + 15
        L19_2 = L8_2.WidthOffset
        L18_2 = L18_2 + L19_2
        L19_2 = L8_2.Y
        L19_2 = L19_2 + 3
        L20_2 = L8_2.SubtitleHeight
        L19_2 = L19_2 + L20_2
        L20_2 = RageUI
        L20_2 = L20_2.ItemOffset
        L19_2 = L19_2 + L20_2
        L20_2 = 0
        L21_2 = 0.35
        L22_2 = 163
        L23_2 = 159
        L24_2 = 148
        L25_2 = 255
        L26_2 = 2
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      end
      L16_2 = type
      L17_2 = A5_2
      L16_2 = L16_2(L17_2)
      if "table" == L16_2 then
        L16_2 = A5_2.Enabled
        if true ~= L16_2 then
          L16_2 = A5_2.Enabled
          if nil ~= L16_2 then
            goto lbl_525
          end
        end
        L16_2 = type
        L17_2 = A5_2
        L16_2 = L16_2(L17_2)
        if "table" ~= L16_2 then
          goto lbl_587
        end
        L16_2 = A5_2.LeftBadge
        if nil ~= L16_2 then
          L16_2 = A5_2.LeftBadge
          L17_2 = RageUI
          L17_2 = L17_2.BadgeStyle
          L17_2 = L17_2.None
          if L16_2 ~= L17_2 then
            L16_2 = A5_2.LeftBadge
            L17_2 = L10_2
            L16_2 = L16_2(L17_2)
            L17_2 = Graphics
            L17_2 = L17_2.Sprite
            L18_2 = L16_2.BadgeDictionary
            if not L18_2 then
              L18_2 = "commonmenu"
            end
            L19_2 = L16_2.BadgeTexture
            if not L19_2 then
              L19_2 = ""
            end
            L20_2 = L8_2.X
            L21_2 = L8_2.Y
            L21_2 = L21_2 + -2
            L22_2 = L8_2.SubtitleHeight
            L21_2 = L21_2 + L22_2
            L22_2 = RageUI
            L22_2 = L22_2.ItemOffset
            L21_2 = L21_2 + L22_2
            L22_2 = 40
            L23_2 = 40
            L24_2 = 0
            L25_2 = L16_2.BadgeColour
            if L25_2 then
              L25_2 = L16_2.BadgeColour
              L25_2 = L25_2.R
              if L25_2 then
                goto lbl_425
              end
            end
            L25_2 = 255
            ::lbl_425::
            L26_2 = L16_2.BadgeColour
            if L26_2 then
              L26_2 = L16_2.BadgeColour
              L26_2 = L26_2.G
              if L26_2 then
                goto lbl_433
              end
            end
            L26_2 = 255
            ::lbl_433::
            L27_2 = L16_2.BadgeColour
            if L27_2 then
              L27_2 = L16_2.BadgeColour
              L27_2 = L27_2.B
              if L27_2 then
                goto lbl_441
              end
            end
            L27_2 = 255
            ::lbl_441::
            L28_2 = L16_2.BadgeColour
            if L28_2 then
              L28_2 = L16_2.BadgeColour
              L28_2 = L28_2.A
              if L28_2 then
                goto lbl_449
              end
            end
            L28_2 = 255
            ::lbl_449::
            L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
          end
        end
        L16_2 = A5_2.RightBadge
        if nil == L16_2 then
          goto lbl_587
        end
        L16_2 = A5_2.RightBadge
        L17_2 = RageUI
        L17_2 = L17_2.BadgeStyle
        L17_2 = L17_2.None
        if L16_2 == L17_2 then
          goto lbl_587
        end
        L16_2 = A5_2.RightBadge
        L17_2 = L10_2
        L16_2 = L16_2(L17_2)
        L17_2 = Graphics
        L17_2 = L17_2.Sprite
        L18_2 = L16_2.BadgeDictionary
        if not L18_2 then
          L18_2 = "commonmenu"
        end
        L19_2 = L16_2.BadgeTexture
        if not L19_2 then
          L19_2 = ""
        end
        L20_2 = L8_2.X
        L20_2 = L20_2 + 385
        L21_2 = L8_2.WidthOffset
        L20_2 = L20_2 + L21_2
        L21_2 = L8_2.Y
        L21_2 = L21_2 + -2
        L22_2 = L8_2.SubtitleHeight
        L21_2 = L21_2 + L22_2
        L22_2 = RageUI
        L22_2 = L22_2.ItemOffset
        L21_2 = L21_2 + L22_2
        L22_2 = 40
        L23_2 = 40
        L24_2 = 0
        L25_2 = L16_2.BadgeColour
        if L25_2 then
          L25_2 = L16_2.BadgeColour
          L25_2 = L25_2.R
          if L25_2 then
            goto lbl_499
          end
        end
        L25_2 = 255
        ::lbl_499::
        L26_2 = L16_2.BadgeColour
        if L26_2 then
          L26_2 = L16_2.BadgeColour
          L26_2 = L26_2.G
          if L26_2 then
            goto lbl_507
          end
        end
        L26_2 = 255
        ::lbl_507::
        L27_2 = L16_2.BadgeColour
        if L27_2 then
          L27_2 = L16_2.BadgeColour
          L27_2 = L27_2.B
          if L27_2 then
            goto lbl_515
          end
        end
        L27_2 = 255
        ::lbl_515::
        L28_2 = L16_2.BadgeColour
        if L28_2 then
          L28_2 = L16_2.BadgeColour
          L28_2 = L28_2.A
          if L28_2 then
            goto lbl_523
          end
        end
        L28_2 = 255
        ::lbl_523::
        L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
        goto lbl_587
        ::lbl_525::
        L16_2 = RageUI
        L16_2 = L16_2.BadgeStyle
        L16_2 = L16_2.Lock
        L17_2 = RageUI
        L17_2 = L17_2.BadgeStyle
        L17_2 = L17_2.None
        if L16_2 ~= L17_2 and nil ~= L16_2 then
          L17_2 = L16_2
          L18_2 = L10_2
          L17_2 = L17_2(L18_2)
          L18_2 = Graphics
          L18_2 = L18_2.Sprite
          L19_2 = L17_2.BadgeDictionary
          if not L19_2 then
            L19_2 = "commonmenu"
          end
          L20_2 = L17_2.BadgeTexture
          if not L20_2 then
            L20_2 = ""
          end
          L21_2 = L8_2.X
          L22_2 = L8_2.Y
          L22_2 = L22_2 + -2
          L23_2 = L8_2.SubtitleHeight
          L22_2 = L22_2 + L23_2
          L23_2 = RageUI
          L23_2 = L23_2.ItemOffset
          L22_2 = L22_2 + L23_2
          L23_2 = 40
          L24_2 = 40
          L25_2 = 0
          L26_2 = L17_2.BadgeColour
          L26_2 = L26_2.R
          if not L26_2 then
            L26_2 = 255
          end
          L27_2 = L17_2.BadgeColour
          L27_2 = L27_2.G
          if not L27_2 then
            L27_2 = 255
          end
          L28_2 = L17_2.BadgeColour
          L28_2 = L28_2.B
          if not L28_2 then
            L28_2 = 255
          end
          L29_2 = L17_2.BadgeColour
          L29_2 = L29_2.A
          if not L29_2 then
            L29_2 = 255
          end
          L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
        end
      else
        L16_2 = error
        L17_2 = "UICheckBox Style is not a `table`"
        L16_2(L17_2)
      end
      ::lbl_587::
      L16_2 = RageUI
      L17_2 = RageUI
      L17_2 = L17_2.ItemOffset
      L17_2 = L17_2 + 38
      L16_2.ItemOffset = L17_2
      if L10_2 then
        L16_2 = RageUI
        L16_2 = L16_2.ItemsDescription
        L17_2 = A4_2
        L16_2(L17_2)
        L16_2 = A5_2.IsDisabled
        if not L16_2 then
          L16_2 = L8_2.Controls
          L16_2 = L16_2.Left
          L16_2 = L16_2.Active
          if L16_2 then
            L16_2 = L8_2.Controls
            L16_2 = L16_2.Right
            L16_2 = L16_2.Active
            if not L16_2 then
              A3_2 = A3_2 - 1
              if A3_2 < 1 then
                A3_2 = #A2_2
              end
              L11_2 = true
              L16_2 = Audio
              L16_2 = L16_2.PlaySound
              L17_2 = RageUI
              L17_2 = L17_2.Settings
              L17_2 = L17_2.Audio
              L17_2 = L17_2.LeftRight
              L17_2 = L17_2.audioName
              L18_2 = RageUI
              L18_2 = L18_2.Settings
              L18_2 = L18_2.Audio
              L18_2 = L18_2.LeftRight
              L18_2 = L18_2.audioRef
              L16_2(L17_2, L18_2)
          end
          else
            L16_2 = L8_2.Controls
            L16_2 = L16_2.Right
            L16_2 = L16_2.Active
            if L16_2 then
              L16_2 = L8_2.Controls
              L16_2 = L16_2.Left
              L16_2 = L16_2.Active
              if not L16_2 then
                A3_2 = A3_2 + 1
                L16_2 = #A2_2
                if A3_2 > L16_2 then
                  A3_2 = 1
                end
                L11_2 = true
                L16_2 = Audio
                L16_2 = L16_2.PlaySound
                L17_2 = RageUI
                L17_2 = L17_2.Settings
                L17_2 = L17_2.Audio
                L17_2 = L17_2.LeftRight
                L17_2 = L17_2.audioName
                L18_2 = RageUI
                L18_2 = L18_2.Settings
                L18_2 = L18_2.Audio
                L18_2 = L18_2.LeftRight
                L18_2 = L18_2.audioRef
                L16_2(L17_2, L18_2)
              end
            end
          end
          L16_2 = L8_2.Controls
          L16_2 = L16_2.Select
          L16_2 = L16_2.Active
          L17_2 = A6_2
          L18_2 = A3_2
          L19_2 = L16_2
          L20_2 = L11_2
          L21_2 = L10_2
          L17_2(L18_2, L19_2, L20_2, L21_2)
          if L16_2 then
            L17_2 = Audio
            L17_2 = L17_2.PlaySound
            L18_2 = RageUI
            L18_2 = L18_2.Settings
            L18_2 = L18_2.Audio
            L18_2 = L18_2.Select
            L18_2 = L18_2.audioName
            L19_2 = RageUI
            L19_2 = L19_2.Settings
            L19_2 = L19_2.Audio
            L19_2 = L19_2.Select
            L19_2 = L19_2.audioRef
            L17_2(L18_2, L19_2)
            if nil ~= A7_2 then
              L17_2 = type
              L18_2 = A7_2
              L17_2 = L17_2(L18_2)
              if "table" == L17_2 then
                L17_2 = RageUI
                L18_2 = A7_2[A3_2]
                L17_2.NextMenu = L18_2
              end
            end
          end
        end
      end
    end
  end
  L10_2 = RageUI
  L11_2 = RageUI
  L11_2 = L11_2.Options
  L11_2 = L11_2 + 1
  L10_2.Options = L11_2
end
L2_1.AddList = L3_1
L2_1 = Items
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = RageUI
  L3_2 = L3_2.CurrentMenu
  if A1_2 < 0 or A1_2 > 21 then
    A1_2 = 0
  end
  if A2_2 < 0 or A2_2 > 23 then
    A2_2 = 0
  end
  if 21 == A1_2 then
    L4_2 = "special_female_"
    L5_2 = tonumber
    L6_2 = string
    L6_2 = L6_2.sub
    L7_2 = A1_2
    L8_2 = 2
    L9_2 = 2
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = L5_2 - 1
    L4_2 = L4_2 .. L5_2
    A1_2 = L4_2
  else
    L4_2 = "female_"
    L5_2 = A1_2
    L4_2 = L4_2 .. L5_2
    A1_2 = L4_2
  end
  if A2_2 >= 21 then
    L4_2 = "special_male_"
    L5_2 = tonumber
    L6_2 = string
    L6_2 = L6_2.sub
    L7_2 = A2_2
    L8_2 = 2
    L9_2 = 2
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = L5_2 - 1
    L4_2 = L4_2 .. L5_2
    A2_2 = L4_2
  else
    L4_2 = "male_"
    L5_2 = A2_2
    L4_2 = L4_2 .. L5_2
    A2_2 = L4_2
  end
  L4_2 = Graphics
  L4_2 = L4_2.Sprite
  L5_2 = "pause_menu_pages_char_mom_dad"
  L6_2 = "mumdadbg"
  L7_2 = L3_2.X
  L8_2 = L3_2.Y
  L9_2 = L3_2.SubtitleHeight
  L8_2 = L8_2 + L9_2
  L9_2 = RageUI
  L9_2 = L9_2.ItemOffset
  L8_2 = L8_2 + L9_2
  L9_2 = L3_2.WidthOffset
  L9_2 = L9_2 / 1
  L9_2 = 431 + L9_2
  L10_2 = 228
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = Graphics
  L4_2 = L4_2.Sprite
  L5_2 = "char_creator_portraits"
  L6_2 = A2_2
  L7_2 = L3_2.X
  L7_2 = L7_2 + 195
  L8_2 = L3_2.WidthOffset
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L8_2 = L3_2.Y
  L9_2 = L3_2.SubtitleHeight
  L8_2 = L8_2 + L9_2
  L9_2 = RageUI
  L9_2 = L9_2.ItemOffset
  L8_2 = L8_2 + L9_2
  L9_2 = 228
  L10_2 = 228
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = Graphics
  L4_2 = L4_2.Sprite
  L5_2 = "char_creator_portraits"
  L6_2 = A1_2
  L7_2 = L3_2.X
  L7_2 = L7_2 + 25
  L8_2 = L3_2.WidthOffset
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L8_2 = L3_2.Y
  L9_2 = L3_2.SubtitleHeight
  L8_2 = L8_2 + L9_2
  L9_2 = RageUI
  L9_2 = L9_2.ItemOffset
  L8_2 = L8_2 + L9_2
  L9_2 = 228
  L10_2 = 228
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = RageUI
  L5_2 = RageUI
  L5_2 = L5_2.ItemOffset
  L5_2 = L5_2 + 228
  L4_2.ItemOffset = L5_2
end
L2_1.Heritage = L3_1

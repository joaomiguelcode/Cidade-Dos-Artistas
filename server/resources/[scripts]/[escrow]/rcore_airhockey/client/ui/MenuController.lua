local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = RageUI
L0_1.LastControl = false
L0_1 = {}
L1_1 = "Left"
L2_1 = "Right"
L3_1 = "Select"
L4_1 = "Click"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L1_1 = RageUI
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = RageUI
  L1_2 = L1_2.CurrentMenu
  if nil ~= L1_2 then
    A0_2 = L1_2.Options
    L2_2 = L1_2
    L2_2 = L2_2()
    if L2_2 then
      if 0 ~= A0_2 then
        L2_2 = L1_2.Pagination
        L2_2 = L2_2.Total
        if A0_2 > L2_2 then
          L2_2 = L1_2.Index
          L3_2 = L1_2.Pagination
          L3_2 = L3_2.Minimum
          if L2_2 <= L3_2 then
            L2_2 = L1_2.Index
            if 1 == L2_2 then
              L2_2 = L1_2.Pagination
              L3_2 = L1_2.Pagination
              L3_2 = L3_2.Total
              L3_2 = L3_2 - 1
              L3_2 = A0_2 - L3_2
              L2_2.Minimum = L3_2
              L2_2 = L1_2.Pagination
              L2_2.Maximum = A0_2
              L1_2.Index = A0_2
            else
              L2_2 = L1_2.Pagination
              L3_2 = L1_2.Pagination
              L3_2 = L3_2.Minimum
              L3_2 = L3_2 - 1
              L2_2.Minimum = L3_2
              L2_2 = L1_2.Pagination
              L3_2 = L1_2.Pagination
              L3_2 = L3_2.Maximum
              L3_2 = L3_2 - 1
              L2_2.Maximum = L3_2
              L2_2 = L1_2.Index
              L2_2 = L2_2 - 1
              L1_2.Index = L2_2
            end
          else
            L2_2 = L1_2.Index
            L2_2 = L2_2 - 1
            L1_2.Index = L2_2
          end
        else
          L2_2 = L1_2.Index
          if 1 == L2_2 then
            L2_2 = L1_2.Pagination
            L3_2 = L1_2.Pagination
            L3_2 = L3_2.Total
            L3_2 = L3_2 - 1
            L3_2 = A0_2 - L3_2
            L2_2.Minimum = L3_2
            L2_2 = L1_2.Pagination
            L2_2.Maximum = A0_2
            L1_2.Index = A0_2
          else
            L2_2 = L1_2.Index
            L2_2 = L2_2 - 1
            L1_2.Index = L2_2
          end
        end
        L2_2 = L1_2.Options
        if L2_2 > 1 then
          L2_2 = Audio
          L2_2 = L2_2.PlaySound
          L3_2 = RageUI
          L3_2 = L3_2.Settings
          L3_2 = L3_2.Audio
          L3_2 = L3_2.UpDown
          L3_2 = L3_2.audioName
          L4_2 = RageUI
          L4_2 = L4_2.Settings
          L4_2 = L4_2.Audio
          L4_2 = L4_2.UpDown
          L4_2 = L4_2.audioRef
          L2_2(L3_2, L4_2)
        end
        L2_2 = RageUI
        L2_2.LastControl = true
        L2_2 = L1_2.onIndexChange
        if nil ~= L2_2 then
          L2_2 = L1_2.onIndexChange
          L3_2 = L1_2.Index
          L2_2(L3_2)
        end
      else
        L2_2 = Audio
        L2_2 = L2_2.PlaySound
        L3_2 = RageUI
        L3_2 = L3_2.Settings
        L3_2 = L3_2.Audio
        L3_2 = L3_2.Error
        L3_2 = L3_2.audioName
        L4_2 = RageUI
        L4_2 = L4_2.Settings
        L4_2 = L4_2.Audio
        L4_2 = L4_2.Error
        L4_2 = L4_2.audioRef
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L1_1.GoUp = L2_1
L1_1 = RageUI
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = RageUI
  L1_2 = L1_2.CurrentMenu
  if nil ~= L1_2 then
    A0_2 = L1_2.Options
    L2_2 = L1_2
    L2_2 = L2_2()
    if L2_2 then
      if 0 ~= A0_2 then
        L2_2 = L1_2.Pagination
        L2_2 = L2_2.Total
        if A0_2 > L2_2 then
          L2_2 = L1_2.Index
          L3_2 = L1_2.Pagination
          L3_2 = L3_2.Maximum
          if L2_2 >= L3_2 then
            L2_2 = L1_2.Index
            if L2_2 == A0_2 then
              L2_2 = L1_2.Pagination
              L2_2.Minimum = 1
              L2_2 = L1_2.Pagination
              L3_2 = L1_2.Pagination
              L3_2 = L3_2.Total
              L2_2.Maximum = L3_2
              L1_2.Index = 1
            else
              L2_2 = L1_2.Pagination
              L3_2 = L1_2.Pagination
              L3_2 = L3_2.Maximum
              L3_2 = L3_2 + 1
              L2_2.Maximum = L3_2
              L2_2 = L1_2.Pagination
              L3_2 = L1_2.Pagination
              L3_2 = L3_2.Maximum
              L4_2 = L1_2.Pagination
              L4_2 = L4_2.Total
              L4_2 = L4_2 - 1
              L3_2 = L3_2 - L4_2
              L2_2.Minimum = L3_2
              L2_2 = L1_2.Index
              L2_2 = L2_2 + 1
              L1_2.Index = L2_2
            end
          else
            L2_2 = L1_2.Index
            L2_2 = L2_2 + 1
            L1_2.Index = L2_2
          end
        else
          L2_2 = L1_2.Index
          if L2_2 == A0_2 then
            L2_2 = L1_2.Pagination
            L2_2.Minimum = 1
            L2_2 = L1_2.Pagination
            L3_2 = L1_2.Pagination
            L3_2 = L3_2.Total
            L2_2.Maximum = L3_2
            L1_2.Index = 1
          else
            L2_2 = L1_2.Index
            L2_2 = L2_2 + 1
            L1_2.Index = L2_2
          end
        end
        L2_2 = L1_2.Options
        if L2_2 > 1 then
          L2_2 = Audio
          L2_2 = L2_2.PlaySound
          L3_2 = RageUI
          L3_2 = L3_2.Settings
          L3_2 = L3_2.Audio
          L3_2 = L3_2.UpDown
          L3_2 = L3_2.audioName
          L4_2 = RageUI
          L4_2 = L4_2.Settings
          L4_2 = L4_2.Audio
          L4_2 = L4_2.UpDown
          L4_2 = L4_2.audioRef
          L2_2(L3_2, L4_2)
        end
        L2_2 = RageUI
        L2_2.LastControl = false
        L2_2 = L1_2.onIndexChange
        if nil ~= L2_2 then
          L2_2 = L1_2.onIndexChange
          L3_2 = L1_2.Index
          L2_2(L3_2)
        end
      else
        L2_2 = Audio
        L2_2 = L2_2.PlaySound
        L3_2 = RageUI
        L3_2 = L3_2.Settings
        L3_2 = L3_2.Audio
        L3_2 = L3_2.Error
        L3_2 = L3_2.audioName
        L4_2 = RageUI
        L4_2 = L4_2.Settings
        L4_2 = L4_2.Audio
        L4_2 = L4_2.Error
        L4_2 = L4_2.audioRef
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L1_1.GoDown = L2_1
L1_1 = RageUI
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = "Left"
  end
  L2_2 = A0_2[L2_2]
  L2_2 = L2_2.Enabled
  if L2_2 then
    L2_2 = 1
    L3_2 = A1_2 or L3_2
    if not A1_2 then
      L3_2 = "Left"
    end
    L3_2 = A0_2[L3_2]
    L3_2 = L3_2.Keys
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A1_2 or L6_2
      if not A1_2 then
        L6_2 = "Left"
      end
      L6_2 = A0_2[L6_2]
      L6_2 = L6_2.Pressed
      if not L6_2 then
        L6_2 = IsDisabledControlJustPressed
        L7_2 = A1_2 or L7_2
        if not A1_2 then
          L7_2 = "Left"
        end
        L7_2 = A0_2[L7_2]
        L7_2 = L7_2.Keys
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2[1]
        L8_2 = A1_2 or L8_2
        if not A1_2 then
          L8_2 = "Left"
        end
        L8_2 = A0_2[L8_2]
        L8_2 = L8_2.Keys
        L8_2 = L8_2[L5_2]
        L8_2 = L8_2[2]
        L6_2 = L6_2(L7_2, L8_2)
        if L6_2 then
          L6_2 = A1_2 or L6_2
          if not A1_2 then
            L6_2 = "Left"
          end
          L6_2 = A0_2[L6_2]
          L6_2.Pressed = true
          L6_2 = Citizen
          L6_2 = L6_2.CreateThread
          function L7_2()
            local L0_3, L1_3, L2_3, L3_3
            L0_3 = A1_2
            if not L0_3 then
              L0_3 = "Left"
            end
            L1_3 = A0_2
            L0_3 = L1_3[L0_3]
            L0_3.Active = true
            L0_3 = Citizen
            L0_3 = L0_3.Wait
            L1_3 = 0.01
            L0_3(L1_3)
            L0_3 = A1_2
            if not L0_3 then
              L0_3 = "Left"
            end
            L1_3 = A0_2
            L0_3 = L1_3[L0_3]
            L0_3.Active = false
            L0_3 = Citizen
            L0_3 = L0_3.Wait
            L1_3 = 175
            L0_3(L1_3)
            while true do
              L0_3 = A1_2
              if not L0_3 then
                L0_3 = "Left"
              end
              L1_3 = A0_2
              L0_3 = L1_3[L0_3]
              L0_3 = L0_3.Enabled
              if not L0_3 then
                break
              end
              L0_3 = IsDisabledControlPressed
              L1_3 = A1_2
              if not L1_3 then
                L1_3 = "Left"
              end
              L2_3 = A0_2
              L1_3 = L2_3[L1_3]
              L1_3 = L1_3.Keys
              L2_3 = L5_2
              L1_3 = L1_3[L2_3]
              L1_3 = L1_3[1]
              L2_3 = A1_2
              if not L2_3 then
                L2_3 = "Left"
              end
              L3_3 = A0_2
              L2_3 = L3_3[L2_3]
              L2_3 = L2_3.Keys
              L3_3 = L5_2
              L2_3 = L2_3[L3_3]
              L2_3 = L2_3[2]
              L0_3 = L0_3(L1_3, L2_3)
              if not L0_3 then
                break
              end
              L0_3 = A1_2
              if not L0_3 then
                L0_3 = "Left"
              end
              L1_3 = A0_2
              L0_3 = L1_3[L0_3]
              L0_3.Active = true
              L0_3 = Citizen
              L0_3 = L0_3.Wait
              L1_3 = 1
              L0_3(L1_3)
              L0_3 = A1_2
              if not L0_3 then
                L0_3 = "Left"
              end
              L1_3 = A0_2
              L0_3 = L1_3[L0_3]
              L0_3.Active = false
              L0_3 = Citizen
              L0_3 = L0_3.Wait
              L1_3 = 124
              L0_3(L1_3)
            end
            L0_3 = A1_2
            if not L0_3 then
              L0_3 = "Left"
            end
            L1_3 = A0_2
            L0_3 = L1_3[L0_3]
            L0_3.Pressed = false
            L0_3 = A1_2
            L1_3 = L0_1
            L1_3 = L1_3[5]
            if L0_3 ~= L1_3 then
              L0_3 = Citizen
              L0_3 = L0_3.Wait
              L1_3 = 10
              L0_3(L1_3)
            end
          end
          L6_2(L7_2)
          break
        end
      end
    end
  end
end
L1_1.GoActionControl = L2_1
L1_1 = RageUI
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2[A1_2]
  L2_2 = L2_2.Enabled
  if L2_2 then
    L2_2 = 1
    L3_2 = A0_2[A1_2]
    L3_2 = L3_2.Keys
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2[A1_2]
      L6_2 = L6_2.Pressed
      if not L6_2 then
        L6_2 = IsDisabledControlJustPressed
        L7_2 = A0_2[A1_2]
        L7_2 = L7_2.Keys
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2[1]
        L8_2 = A0_2[A1_2]
        L8_2 = L8_2.Keys
        L8_2 = L8_2[L5_2]
        L8_2 = L8_2[2]
        L6_2 = L6_2(L7_2, L8_2)
        if L6_2 then
          L6_2 = A0_2[A1_2]
          L6_2.Pressed = true
          L6_2 = Citizen
          L6_2 = L6_2.CreateThread
          function L7_2()
            local L0_3, L1_3, L2_3, L3_3
            L1_3 = A1_2
            L0_3 = A0_2
            L0_3 = L0_3[L1_3]
            L0_3.Active = true
            L0_3 = Citizen
            L0_3 = L0_3.Wait
            L1_3 = 1
            L0_3(L1_3)
            L1_3 = A1_2
            L0_3 = A0_2
            L0_3 = L0_3[L1_3]
            L0_3.Active = false
            while true do
              L1_3 = A1_2
              L0_3 = A0_2
              L0_3 = L0_3[L1_3]
              L0_3 = L0_3.Enabled
              if not L0_3 then
                break
              end
              L0_3 = IsDisabledControlPressed
              L2_3 = A1_2
              L1_3 = A0_2
              L1_3 = L1_3[L2_3]
              L1_3 = L1_3.Keys
              L2_3 = L5_2
              L1_3 = L1_3[L2_3]
              L1_3 = L1_3[1]
              L3_3 = A1_2
              L2_3 = A0_2
              L2_3 = L2_3[L3_3]
              L2_3 = L2_3.Keys
              L3_3 = L5_2
              L2_3 = L2_3[L3_3]
              L2_3 = L2_3[2]
              L0_3 = L0_3(L1_3, L2_3)
              if not L0_3 then
                break
              end
              L1_3 = A1_2
              L0_3 = A0_2
              L0_3 = L0_3[L1_3]
              L0_3.Active = true
              L0_3 = Citizen
              L0_3 = L0_3.Wait
              L1_3 = 1
              L0_3(L1_3)
              L1_3 = A1_2
              L0_3 = A0_2
              L0_3 = L0_3[L1_3]
              L0_3.Active = false
            end
            L1_3 = A1_2
            L0_3 = A0_2
            L0_3 = L0_3[L1_3]
            L0_3.Pressed = false
          end
          L6_2(L7_2)
          break
        end
      end
    end
  end
end
L1_1.GoActionControlSlider = L2_1
L1_1 = RageUI
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = RageUI
  L0_2 = L0_2.CurrentMenu
  if nil ~= L0_2 then
    L1_2 = L0_2
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = L0_2.Open
      if L1_2 then
        L1_2 = L0_2.Controls
        L2_2 = L0_2.Options
        L3_2 = RageUI
        L4_2 = L0_2.Options
        L3_2.Options = L4_2
        L3_2 = L0_2.EnableMouse
        if L3_2 then
          L3_2 = DisableAllControlActions
          L4_2 = 2
          L3_2(L4_2)
        end
        L3_2 = IsInputDisabled
        L4_2 = 2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = 1
          L4_2 = L1_2.Enabled
          L4_2 = L4_2.Controller
          L4_2 = #L4_2
          L5_2 = 1
          for L6_2 = L3_2, L4_2, L5_2 do
            L7_2 = EnableControlAction
            L8_2 = L1_2.Enabled
            L8_2 = L8_2.Controller
            L8_2 = L8_2[L6_2]
            L8_2 = L8_2[1]
            L9_2 = L1_2.Enabled
            L9_2 = L9_2.Controller
            L9_2 = L9_2[L6_2]
            L9_2 = L9_2[2]
            L10_2 = true
            L7_2(L8_2, L9_2, L10_2)
          end
        else
          L3_2 = 1
          L4_2 = L1_2.Enabled
          L4_2 = L4_2.Keyboard
          L4_2 = #L4_2
          L5_2 = 1
          for L6_2 = L3_2, L4_2, L5_2 do
            L7_2 = EnableControlAction
            L8_2 = L1_2.Enabled
            L8_2 = L8_2.Keyboard
            L8_2 = L8_2[L6_2]
            L8_2 = L8_2[1]
            L9_2 = L1_2.Enabled
            L9_2 = L9_2.Keyboard
            L9_2 = L9_2[L6_2]
            L9_2 = L9_2[2]
            L10_2 = true
            L7_2(L8_2, L9_2, L10_2)
          end
        end
        L3_2 = L1_2.Up
        L3_2 = L3_2.Enabled
        if L3_2 then
          L3_2 = 1
          L4_2 = L1_2.Up
          L4_2 = L4_2.Keys
          L4_2 = #L4_2
          L5_2 = 1
          for L6_2 = L3_2, L4_2, L5_2 do
            L7_2 = L1_2.Up
            L7_2 = L7_2.Pressed
            if not L7_2 then
              L7_2 = IsDisabledControlJustPressed
              L8_2 = L1_2.Up
              L8_2 = L8_2.Keys
              L8_2 = L8_2[L6_2]
              L8_2 = L8_2[1]
              L9_2 = L1_2.Up
              L9_2 = L9_2.Keys
              L9_2 = L9_2[L6_2]
              L9_2 = L9_2[2]
              L7_2 = L7_2(L8_2, L9_2)
              if L7_2 then
                L7_2 = L1_2.Up
                L7_2.Pressed = true
                L7_2 = Citizen
                L7_2 = L7_2.CreateThread
                function L8_2()
                  local L0_3, L1_3, L2_3, L3_3
                  L0_3 = RageUI
                  L0_3 = L0_3.GoUp
                  L1_3 = L2_2
                  L0_3(L1_3)
                  L0_3 = Citizen
                  L0_3 = L0_3.Wait
                  L1_3 = 175
                  L0_3(L1_3)
                  while true do
                    L0_3 = L1_2.Up
                    L0_3 = L0_3.Enabled
                    if not L0_3 then
                      break
                    end
                    L0_3 = IsDisabledControlPressed
                    L1_3 = L1_2.Up
                    L1_3 = L1_3.Keys
                    L2_3 = L6_2
                    L1_3 = L1_3[L2_3]
                    L1_3 = L1_3[1]
                    L2_3 = L1_2.Up
                    L2_3 = L2_3.Keys
                    L3_3 = L6_2
                    L2_3 = L2_3[L3_3]
                    L2_3 = L2_3[2]
                    L0_3 = L0_3(L1_3, L2_3)
                    if not L0_3 then
                      break
                    end
                    L0_3 = RageUI
                    L0_3 = L0_3.GoUp
                    L1_3 = L2_2
                    L0_3(L1_3)
                    L0_3 = Citizen
                    L0_3 = L0_3.Wait
                    L1_3 = 50
                    L0_3(L1_3)
                  end
                  L0_3 = L1_2.Up
                  L0_3.Pressed = false
                end
                L7_2(L8_2)
                break
              end
            end
          end
        end
        L3_2 = L1_2.Down
        L3_2 = L3_2.Enabled
        if L3_2 then
          L3_2 = 1
          L4_2 = L1_2.Down
          L4_2 = L4_2.Keys
          L4_2 = #L4_2
          L5_2 = 1
          for L6_2 = L3_2, L4_2, L5_2 do
            L7_2 = L1_2.Down
            L7_2 = L7_2.Pressed
            if not L7_2 then
              L7_2 = IsDisabledControlJustPressed
              L8_2 = L1_2.Down
              L8_2 = L8_2.Keys
              L8_2 = L8_2[L6_2]
              L8_2 = L8_2[1]
              L9_2 = L1_2.Down
              L9_2 = L9_2.Keys
              L9_2 = L9_2[L6_2]
              L9_2 = L9_2[2]
              L7_2 = L7_2(L8_2, L9_2)
              if L7_2 then
                L7_2 = L1_2.Down
                L7_2.Pressed = true
                L7_2 = Citizen
                L7_2 = L7_2.CreateThread
                function L8_2()
                  local L0_3, L1_3, L2_3, L3_3
                  L0_3 = RageUI
                  L0_3 = L0_3.GoDown
                  L1_3 = L2_2
                  L0_3(L1_3)
                  L0_3 = Citizen
                  L0_3 = L0_3.Wait
                  L1_3 = 175
                  L0_3(L1_3)
                  while true do
                    L0_3 = L1_2.Down
                    L0_3 = L0_3.Enabled
                    if not L0_3 then
                      break
                    end
                    L0_3 = IsDisabledControlPressed
                    L1_3 = L1_2.Down
                    L1_3 = L1_3.Keys
                    L2_3 = L6_2
                    L1_3 = L1_3[L2_3]
                    L1_3 = L1_3[1]
                    L2_3 = L1_2.Down
                    L2_3 = L2_3.Keys
                    L3_3 = L6_2
                    L2_3 = L2_3[L3_3]
                    L2_3 = L2_3[2]
                    L0_3 = L0_3(L1_3, L2_3)
                    if not L0_3 then
                      break
                    end
                    L0_3 = RageUI
                    L0_3 = L0_3.GoDown
                    L1_3 = L2_2
                    L0_3(L1_3)
                    L0_3 = Citizen
                    L0_3 = L0_3.Wait
                    L1_3 = 50
                    L0_3(L1_3)
                  end
                  L0_3 = L1_2.Down
                  L0_3.Pressed = false
                end
                L7_2(L8_2)
                break
              end
            end
          end
        end
        L3_2 = 1
        L4_2 = L0_1
        L4_2 = #L4_2
        L5_2 = 1
        for L6_2 = L3_2, L4_2, L5_2 do
          L7_2 = RageUI
          L7_2 = L7_2.GoActionControl
          L8_2 = L1_2
          L9_2 = L0_1
          L9_2 = L9_2[L6_2]
          L7_2(L8_2, L9_2)
        end
        L3_2 = RageUI
        L3_2 = L3_2.GoActionControlSlider
        L4_2 = L1_2
        L5_2 = "SliderLeft"
        L3_2(L4_2, L5_2)
        L3_2 = RageUI
        L3_2 = L3_2.GoActionControlSlider
        L4_2 = L1_2
        L5_2 = "SliderRight"
        L3_2(L4_2, L5_2)
        L3_2 = L1_2.Back
        L3_2 = L3_2.Enabled
        if L3_2 then
          L3_2 = 1
          L4_2 = L1_2.Back
          L4_2 = L4_2.Keys
          L4_2 = #L4_2
          L5_2 = 1
          for L6_2 = L3_2, L4_2, L5_2 do
            L7_2 = L1_2.Back
            L7_2 = L7_2.Pressed
            if not L7_2 then
              L7_2 = IsDisabledControlJustPressed
              L8_2 = L1_2.Back
              L8_2 = L8_2.Keys
              L8_2 = L8_2[L6_2]
              L8_2 = L8_2[1]
              L9_2 = L1_2.Back
              L9_2 = L9_2.Keys
              L9_2 = L9_2[L6_2]
              L9_2 = L9_2[2]
              L7_2 = L7_2(L8_2, L9_2)
              if L7_2 then
                L7_2 = L1_2.Back
                L7_2.Pressed = true
                L7_2 = Citizen
                L7_2 = L7_2.CreateThread
                function L8_2()
                  local L0_3, L1_3
                  L0_3 = Citizen
                  L0_3 = L0_3.Wait
                  L1_3 = 175
                  L0_3(L1_3)
                  L0_3 = L1_2.Down
                  L0_3.Pressed = false
                end
                L7_2(L8_2)
                break
              end
            end
          end
        end
      end
    end
  end
end
L1_1.Controls = L2_1
L1_1 = RageUI
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = RageUI
  L0_2 = L0_2.CurrentMenu
  if nil ~= L0_2 then
    L1_2 = L0_2
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = L0_2.Display
      L1_2 = L1_2.Navigation
      if L1_2 then
        L1_2 = L0_2.EnableMouse
        if L1_2 then
          L1_2 = SetMouseCursorActiveThisFrame
          L1_2()
        end
        L1_2 = RageUI
        L1_2 = L1_2.Options
        L2_2 = L0_2.Pagination
        L2_2 = L2_2.Total
        if L1_2 > L2_2 then
          L1_2 = false
          L2_2 = false
          L3_2 = L0_2.SafeZoneSize
          if not L3_2 then
            L3_2 = {}
            L3_2.X = 0
            L3_2.Y = 0
            L0_2.SafeZoneSize = L3_2
            L3_2 = L0_2.Safezone
            if L3_2 then
              L3_2 = RageUI
              L3_2 = L3_2.GetSafeZoneBounds
              L3_2 = L3_2()
              L0_2.SafeZoneSize = L3_2
              L3_2 = SetScriptGfxAlign
              L4_2 = 76
              L5_2 = 84
              L3_2(L4_2, L5_2)
              L3_2 = SetScriptGfxAlignParams
              L4_2 = 0
              L5_2 = 0
              L6_2 = 0
              L7_2 = 0
              L3_2(L4_2, L5_2, L6_2, L7_2)
            end
          end
          L3_2 = L0_2.EnableMouse
          if L3_2 then
            L3_2 = Graphics
            L3_2 = L3_2.IsMouseInBounds
            L4_2 = L0_2.X
            L5_2 = L0_2.SafeZoneSize
            L5_2 = L5_2.X
            L4_2 = L4_2 + L5_2
            L5_2 = L0_2.Y
            L6_2 = L0_2.SafeZoneSize
            L6_2 = L6_2.Y
            L5_2 = L5_2 + L6_2
            L6_2 = L0_2.SubtitleHeight
            L5_2 = L5_2 + L6_2
            L6_2 = RageUI
            L6_2 = L6_2.ItemOffset
            L5_2 = L5_2 + L6_2
            L6_2 = RageUI
            L6_2 = L6_2.Settings
            L6_2 = L6_2.Items
            L6_2 = L6_2.Navigation
            L6_2 = L6_2.Rectangle
            L6_2 = L6_2.Width
            L7_2 = L0_2.WidthOffset
            L6_2 = L6_2 + L7_2
            L7_2 = RageUI
            L7_2 = L7_2.Settings
            L7_2 = L7_2.Items
            L7_2 = L7_2.Navigation
            L7_2 = L7_2.Rectangle
            L7_2 = L7_2.Height
            L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
            L1_2 = L3_2
            L3_2 = Graphics
            L3_2 = L3_2.IsMouseInBounds
            L4_2 = L0_2.X
            L5_2 = L0_2.SafeZoneSize
            L5_2 = L5_2.X
            L4_2 = L4_2 + L5_2
            L5_2 = L0_2.Y
            L6_2 = RageUI
            L6_2 = L6_2.Settings
            L6_2 = L6_2.Items
            L6_2 = L6_2.Navigation
            L6_2 = L6_2.Rectangle
            L6_2 = L6_2.Height
            L5_2 = L5_2 + L6_2
            L6_2 = L0_2.SafeZoneSize
            L6_2 = L6_2.Y
            L5_2 = L5_2 + L6_2
            L6_2 = L0_2.SubtitleHeight
            L5_2 = L5_2 + L6_2
            L6_2 = RageUI
            L6_2 = L6_2.ItemOffset
            L5_2 = L5_2 + L6_2
            L6_2 = RageUI
            L6_2 = L6_2.Settings
            L6_2 = L6_2.Items
            L6_2 = L6_2.Navigation
            L6_2 = L6_2.Rectangle
            L6_2 = L6_2.Width
            L7_2 = L0_2.WidthOffset
            L6_2 = L6_2 + L7_2
            L7_2 = RageUI
            L7_2 = L7_2.Settings
            L7_2 = L7_2.Items
            L7_2 = L7_2.Navigation
            L7_2 = L7_2.Rectangle
            L7_2 = L7_2.Height
            L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
            L2_2 = L3_2
            L3_2 = L0_2.Controls
            L3_2 = L3_2.Click
            L3_2 = L3_2.Active
            if L3_2 then
              if L1_2 then
                L3_2 = RageUI
                L3_2 = L3_2.GoUp
                L4_2 = RageUI
                L4_2 = L4_2.Options
                L3_2(L4_2)
              elseif L2_2 then
                L3_2 = RageUI
                L3_2 = L3_2.GoDown
                L4_2 = RageUI
                L4_2 = L4_2.Options
                L3_2(L4_2)
              end
            end
            if L1_2 then
              L3_2 = Graphics
              L3_2 = L3_2.Rectangle
              L4_2 = L0_2.X
              L5_2 = L0_2.Y
              L6_2 = L0_2.SubtitleHeight
              L5_2 = L5_2 + L6_2
              L6_2 = RageUI
              L6_2 = L6_2.ItemOffset
              L5_2 = L5_2 + L6_2
              L6_2 = RageUI
              L6_2 = L6_2.Settings
              L6_2 = L6_2.Items
              L6_2 = L6_2.Navigation
              L6_2 = L6_2.Rectangle
              L6_2 = L6_2.Width
              L7_2 = L0_2.WidthOffset
              L6_2 = L6_2 + L7_2
              L7_2 = RageUI
              L7_2 = L7_2.Settings
              L7_2 = L7_2.Items
              L7_2 = L7_2.Navigation
              L7_2 = L7_2.Rectangle
              L7_2 = L7_2.Height
              L8_2 = 30
              L9_2 = 30
              L10_2 = 30
              L11_2 = 255
              L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
            else
              L3_2 = Graphics
              L3_2 = L3_2.Rectangle
              L4_2 = L0_2.X
              L5_2 = L0_2.Y
              L6_2 = L0_2.SubtitleHeight
              L5_2 = L5_2 + L6_2
              L6_2 = RageUI
              L6_2 = L6_2.ItemOffset
              L5_2 = L5_2 + L6_2
              L6_2 = RageUI
              L6_2 = L6_2.Settings
              L6_2 = L6_2.Items
              L6_2 = L6_2.Navigation
              L6_2 = L6_2.Rectangle
              L6_2 = L6_2.Width
              L7_2 = L0_2.WidthOffset
              L6_2 = L6_2 + L7_2
              L7_2 = RageUI
              L7_2 = L7_2.Settings
              L7_2 = L7_2.Items
              L7_2 = L7_2.Navigation
              L7_2 = L7_2.Rectangle
              L7_2 = L7_2.Height
              L8_2 = 0
              L9_2 = 0
              L10_2 = 0
              L11_2 = 200
              L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
            end
            if L2_2 then
              L3_2 = Graphics
              L3_2 = L3_2.Rectangle
              L4_2 = L0_2.X
              L5_2 = L0_2.Y
              L6_2 = RageUI
              L6_2 = L6_2.Settings
              L6_2 = L6_2.Items
              L6_2 = L6_2.Navigation
              L6_2 = L6_2.Rectangle
              L6_2 = L6_2.Height
              L5_2 = L5_2 + L6_2
              L6_2 = L0_2.SubtitleHeight
              L5_2 = L5_2 + L6_2
              L6_2 = RageUI
              L6_2 = L6_2.ItemOffset
              L5_2 = L5_2 + L6_2
              L6_2 = RageUI
              L6_2 = L6_2.Settings
              L6_2 = L6_2.Items
              L6_2 = L6_2.Navigation
              L6_2 = L6_2.Rectangle
              L6_2 = L6_2.Width
              L7_2 = L0_2.WidthOffset
              L6_2 = L6_2 + L7_2
              L7_2 = RageUI
              L7_2 = L7_2.Settings
              L7_2 = L7_2.Items
              L7_2 = L7_2.Navigation
              L7_2 = L7_2.Rectangle
              L7_2 = L7_2.Height
              L8_2 = 30
              L9_2 = 30
              L10_2 = 30
              L11_2 = 255
              L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
            else
              L3_2 = Graphics
              L3_2 = L3_2.Rectangle
              L4_2 = L0_2.X
              L5_2 = L0_2.Y
              L6_2 = RageUI
              L6_2 = L6_2.Settings
              L6_2 = L6_2.Items
              L6_2 = L6_2.Navigation
              L6_2 = L6_2.Rectangle
              L6_2 = L6_2.Height
              L5_2 = L5_2 + L6_2
              L6_2 = L0_2.SubtitleHeight
              L5_2 = L5_2 + L6_2
              L6_2 = RageUI
              L6_2 = L6_2.ItemOffset
              L5_2 = L5_2 + L6_2
              L6_2 = RageUI
              L6_2 = L6_2.Settings
              L6_2 = L6_2.Items
              L6_2 = L6_2.Navigation
              L6_2 = L6_2.Rectangle
              L6_2 = L6_2.Width
              L7_2 = L0_2.WidthOffset
              L6_2 = L6_2 + L7_2
              L7_2 = RageUI
              L7_2 = L7_2.Settings
              L7_2 = L7_2.Items
              L7_2 = L7_2.Navigation
              L7_2 = L7_2.Rectangle
              L7_2 = L7_2.Height
              L8_2 = 0
              L9_2 = 0
              L10_2 = 0
              L11_2 = 200
              L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
            end
          else
            L3_2 = Graphics
            L3_2 = L3_2.Rectangle
            L4_2 = L0_2.X
            L5_2 = L0_2.Y
            L6_2 = L0_2.SubtitleHeight
            L5_2 = L5_2 + L6_2
            L6_2 = RageUI
            L6_2 = L6_2.ItemOffset
            L5_2 = L5_2 + L6_2
            L6_2 = RageUI
            L6_2 = L6_2.Settings
            L6_2 = L6_2.Items
            L6_2 = L6_2.Navigation
            L6_2 = L6_2.Rectangle
            L6_2 = L6_2.Width
            L7_2 = L0_2.WidthOffset
            L6_2 = L6_2 + L7_2
            L7_2 = RageUI
            L7_2 = L7_2.Settings
            L7_2 = L7_2.Items
            L7_2 = L7_2.Navigation
            L7_2 = L7_2.Rectangle
            L7_2 = L7_2.Height
            L8_2 = 0
            L9_2 = 0
            L10_2 = 0
            L11_2 = 200
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
            L3_2 = Graphics
            L3_2 = L3_2.Rectangle
            L4_2 = L0_2.X
            L5_2 = L0_2.Y
            L6_2 = RageUI
            L6_2 = L6_2.Settings
            L6_2 = L6_2.Items
            L6_2 = L6_2.Navigation
            L6_2 = L6_2.Rectangle
            L6_2 = L6_2.Height
            L5_2 = L5_2 + L6_2
            L6_2 = L0_2.SubtitleHeight
            L5_2 = L5_2 + L6_2
            L6_2 = RageUI
            L6_2 = L6_2.ItemOffset
            L5_2 = L5_2 + L6_2
            L6_2 = RageUI
            L6_2 = L6_2.Settings
            L6_2 = L6_2.Items
            L6_2 = L6_2.Navigation
            L6_2 = L6_2.Rectangle
            L6_2 = L6_2.Width
            L7_2 = L0_2.WidthOffset
            L6_2 = L6_2 + L7_2
            L7_2 = RageUI
            L7_2 = L7_2.Settings
            L7_2 = L7_2.Items
            L7_2 = L7_2.Navigation
            L7_2 = L7_2.Rectangle
            L7_2 = L7_2.Height
            L8_2 = 0
            L9_2 = 0
            L10_2 = 0
            L11_2 = 200
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
          end
          L3_2 = Graphics
          L3_2 = L3_2.Sprite
          L4_2 = RageUI
          L4_2 = L4_2.Settings
          L4_2 = L4_2.Items
          L4_2 = L4_2.Navigation
          L4_2 = L4_2.Arrows
          L4_2 = L4_2.Dictionary
          L5_2 = RageUI
          L5_2 = L5_2.Settings
          L5_2 = L5_2.Items
          L5_2 = L5_2.Navigation
          L5_2 = L5_2.Arrows
          L5_2 = L5_2.Texture
          L6_2 = L0_2.X
          L7_2 = RageUI
          L7_2 = L7_2.Settings
          L7_2 = L7_2.Items
          L7_2 = L7_2.Navigation
          L7_2 = L7_2.Arrows
          L7_2 = L7_2.X
          L6_2 = L6_2 + L7_2
          L7_2 = L0_2.WidthOffset
          L7_2 = L7_2 / 2
          L6_2 = L6_2 + L7_2
          L7_2 = L0_2.Y
          L8_2 = RageUI
          L8_2 = L8_2.Settings
          L8_2 = L8_2.Items
          L8_2 = L8_2.Navigation
          L8_2 = L8_2.Arrows
          L8_2 = L8_2.Y
          L7_2 = L7_2 + L8_2
          L8_2 = L0_2.SubtitleHeight
          L7_2 = L7_2 + L8_2
          L8_2 = RageUI
          L8_2 = L8_2.ItemOffset
          L7_2 = L7_2 + L8_2
          L8_2 = RageUI
          L8_2 = L8_2.Settings
          L8_2 = L8_2.Items
          L8_2 = L8_2.Navigation
          L8_2 = L8_2.Arrows
          L8_2 = L8_2.Width
          L9_2 = RageUI
          L9_2 = L9_2.Settings
          L9_2 = L9_2.Items
          L9_2 = L9_2.Navigation
          L9_2 = L9_2.Arrows
          L9_2 = L9_2.Height
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
          L3_2 = RageUI
          L4_2 = RageUI
          L4_2 = L4_2.ItemOffset
          L5_2 = RageUI
          L5_2 = L5_2.Settings
          L5_2 = L5_2.Items
          L5_2 = L5_2.Navigation
          L5_2 = L5_2.Rectangle
          L5_2 = L5_2.Height
          L5_2 = L5_2 * 2
          L4_2 = L4_2 + L5_2
          L3_2.ItemOffset = L4_2
        end
      end
    end
  end
end
L1_1.Navigation = L2_1
L1_1 = RageUI
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = RageUI
  L0_2 = L0_2.CurrentMenu
  if nil ~= L0_2 then
    L1_2 = Audio
    L1_2 = L1_2.PlaySound
    L2_2 = RageUI
    L2_2 = L2_2.Settings
    L2_2 = L2_2.Audio
    L2_2 = L2_2.Back
    L2_2 = L2_2.audioName
    L3_2 = RageUI
    L3_2 = L3_2.Settings
    L3_2 = L3_2.Audio
    L3_2 = L3_2.Back
    L3_2 = L3_2.audioRef
    L1_2(L2_2, L3_2)
    L1_2 = L0_2.Parent
    if nil ~= L1_2 then
      L1_2 = L0_2.Parent
      L1_2 = L1_2()
      if L1_2 then
        L1_2 = RageUI
        L2_2 = L0_2.Parent
        L1_2.NextMenu = L2_2
      else
        L1_2 = RageUI
        L1_2.NextMenu = nil
        L1_2 = RageUI
        L1_2 = L1_2.Visible
        L2_2 = L0_2
        L3_2 = false
        L1_2(L2_2, L3_2)
      end
    else
      L1_2 = RageUI
      L1_2.NextMenu = nil
      L1_2 = RageUI
      L1_2 = L1_2.Visible
      L2_2 = L0_2
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L1_1.GoBack = L2_1

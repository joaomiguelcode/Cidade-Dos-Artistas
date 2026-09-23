local L0_1, L1_1, L2_1
L0_1 = {}
Visual = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 100
  L2_2 = string
  L2_2 = L2_2.len
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = 99
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = string
    L5_2 = L5_2.sub
    L6_2 = A0_2
    L7_2 = L4_2
    L8_2 = L4_2 + 99
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = AddTextComponentSubstringPlayerName
    L7_2 = L5_2
    L6_2(L7_2)
  end
end
L1_1 = Visual
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.dict
  if not L1_2 then
    L1_2 = A0_2.name
    if L1_2 then
      L1_2 = A0_2.name
      A0_2.dict = L1_2
    end
  end
  L1_2 = HasStreamedTextureDictLoaded
  L2_2 = A0_2.dict
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = RequestStreamedTextureDict
    L2_2 = A0_2.dict
    L3_2 = false
    L1_2(L2_2, L3_2)
    while true do
      L1_2 = HasStreamedTextureDictLoaded
      L2_2 = A0_2.dict
      L1_2 = L1_2(L2_2)
      if L1_2 then
        break
      end
      L1_2 = Wait
      L2_2 = 0
      L1_2(L2_2)
    end
  end
  L1_2 = A0_2.backId
  if L1_2 then
    L1_2 = ThefeedNextPostBackgroundColor
    L2_2 = A0_2.backId
    L1_2(L2_2)
  end
  L1_2 = BeginTextCommandThefeedPost
  L2_2 = "jamyfafi"
  L1_2(L2_2)
  L1_2 = A0_2.message
  if L1_2 then
    L1_2 = AddTextComponentSubstringPlayerName
    L2_2 = A0_2.message
    L1_2(L2_2)
    L1_2 = string
    L1_2 = L1_2.len
    L2_2 = A0_2.message
    L1_2 = L1_2(L2_2)
    if L1_2 > 99 then
      L1_2 = L0_1
      L2_2 = A0_2.message
      L1_2(L2_2)
    end
  end
  L1_2 = A0_2.title
  if L1_2 then
    L1_2 = A0_2.subtitle
    if L1_2 then
      L1_2 = A0_2.name
      if L1_2 then
        L1_2 = EndTextCommandThefeedPostMessagetext
        L2_2 = A0_2.dict
        if not L2_2 then
          L2_2 = "CHAR_DEFAULT"
        end
        L3_2 = A0_2.name
        if not L3_2 then
          L3_2 = "CHAR_DEFAULT"
        end
        L4_2 = true
        L5_2 = A0_2.icon
        if not L5_2 then
          L5_2 = 0
        end
        L6_2 = A0_2.title
        if not L6_2 then
          L6_2 = ""
        end
        L7_2 = A0_2.subtitle
        if not L7_2 then
          L7_2 = ""
        end
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
        L1_2 = SetStreamedTextureDictAsNoLongerNeeded
        L2_2 = A0_2.dict
        L1_2(L2_2)
      end
    end
  end
  L1_2 = EndTextCommandThefeedPostTicker
  L2_2 = false
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1.Notification = L2_1
L1_1 = Visual
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ClearPrints
  L2_2()
  L2_2 = BeginTextCommandPrint
  L3_2 = "STRING"
  L2_2(L3_2)
  L2_2 = AddTextComponentSubstringPlayerName
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = EndTextCommandPrint
  if A1_2 then
    L3_2 = math
    L3_2 = L3_2.ceil
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_19
    end
  end
  L3_2 = 0
  ::lbl_19::
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L1_1.Subtitle = L2_1
L1_1 = Visual
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = BeginTextCommandDisplayHelp
  L4_2 = "jamyfafi"
  L3_2(L4_2)
  L3_2 = AddTextComponentSubstringPlayerName
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = string
  L3_2 = L3_2.len
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 > 99 then
    L3_2 = L0_1
    L4_2 = A0_2
    L3_2(L4_2)
  end
  L3_2 = EndTextCommandDisplayHelp
  L4_2 = 0
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = 0
  end
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = false
  end
  L7_2 = -1
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1.FloatingHelpText = L2_1
L1_1 = Visual
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = BeginTextCommandBusyspinnerOn
  L3_2 = "STRING"
  L2_2(L3_2)
  L2_2 = AddTextComponentSubstringPlayerName
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = EndTextCommandBusyspinnerOn
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = 1
  end
  L2_2(L3_2)
end
L1_1.Prompt = L2_1
L1_1 = Visual
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = Citizen
  L3_2 = L3_2.CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = Citizen
    L0_3 = L0_3.Wait
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = Visual
    L0_3 = L0_3.Prompt
    L1_3 = A1_2
    L2_3 = A2_2
    L0_3(L1_3, L2_3)
    L0_3 = Citizen
    L0_3 = L0_3.Wait
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = BusyspinnerIsOn
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = BusyspinnerOff
      L0_3()
    end
  end
  L3_2(L4_2)
end
L1_1.PromptDuration = L2_1
L1_1 = Visual
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = SetFloatingHelpTextScreenPosition
  L4_2 = 1
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetFloatingHelpTextStyle
  L4_2 = 1
  L5_2 = 1
  L6_2 = 2
  L7_2 = -1
  L8_2 = 3
  L9_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = BeginTextCommandDisplayHelp
  L4_2 = "jamyfafi"
  L3_2(L4_2)
  L3_2 = AddTextComponentSubstringPlayerName
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = string
  L3_2 = L3_2.len
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 > 99 then
    L3_2 = L0_1
    L4_2 = A0_2
    L3_2(L4_2)
  end
  L3_2 = EndTextCommandDisplayHelp
  L4_2 = 2
  L5_2 = false
  L6_2 = false
  L7_2 = -1
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1.FloatingHelpTextToEntity = L2_1

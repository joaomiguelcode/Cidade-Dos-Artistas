local L0_1, L1_1, L2_1, L3_1, L4_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "notifybar"
  L3_2.content = A0_2
  L3_2.mugData = A1_2
  L2_2(L3_2)
end
ShowNotifyBar = L0_1
L0_1 = {}
Events = L0_1
L0_1 = {}
L0_1.close = true
L0_1.open = true
L0_1.changeitem = true
L0_1.selectitem = true
L0_1.exit = true
L0_1.inputtext = true
L0_1.updatelabel = true
L0_1.itemupdateLabel = true
L0_1.updatecheck = true
L0_1.updateDescription = true
L0_1.updateItems = true
ValidEvents = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = "string" == L1_2
  return L1_2
end
ValidateEvents = L0_1
function L0_1(A0_2, A1_2)
  local L2_2
  L2_2 = Events
  L2_2 = L2_2[A0_2]
  L2_2 = nil ~= L2_2
  return L2_2
end
ValidateInvokingEvent = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = pairs
  L2_2 = Events
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = pairs
      L14_2 = L12_2
      L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
      for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
        if L17_2 == A0_2 then
          L19_2 = Events
          L19_2 = L19_2[L5_2]
          L19_2 = L19_2[L11_2]
          L19_2[L17_2] = nil
          break
        end
      end
    end
  end
end
RemoveEventsWithNameResource = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = GetInvokingResource
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = A0_2
  end
  L4_2 = string
  L4_2 = L4_2.lower
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = ValidateEvents
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = Events
  L4_2 = L4_2[A0_2]
  if nil == L4_2 then
    L4_2 = Events
    L5_2 = {}
    L4_2[A0_2] = L5_2
  end
  L4_2 = Events
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2[A1_2]
  if nil == L4_2 then
    L4_2 = Events
    L4_2 = L4_2[A0_2]
    L5_2 = {}
    L4_2[A1_2] = L5_2
  end
  L4_2 = Events
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2[A1_2]
  L4_2[L3_2] = A2_2
  L4_2 = true
  return L4_2
end
On = L0_1
function L0_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ValidateInvokingEvent
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = pairs
    L3_2 = Events
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = type
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if "table" ~= L8_2 then
        L8_2 = type
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if "function" ~= L8_2 then
          goto lbl_27
        end
      end
      L8_2 = L7_2
      L9_2 = ...
      L8_2(L9_2)
      ::lbl_27::
    end
  end
end
CallOn = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L1_2.isOpen_ = false
  L2_2 = "RCORE"
  L3_2 = {}
  L4_2 = 113
  L5_2 = 157
  L6_2 = 122
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L1_2.identifier_ = A0_2
  L4_2 = {}
  L4_2.float = "right"
  L4_2.position = "middle"
  L5_2 = {}
  L1_2.items = L5_2
  L1_2.itemIndex = 0
  function L5_2()
    local L0_3, L1_3
    L0_3 = L1_2.identifier_
    return L0_3
  end
  L1_2.GetIdentifier = L5_2
  function L5_2(A0_3)
    local L1_3
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4
      A0_3.enabled = A0_4
      L1_4 = SendNUIMessage
      L2_4 = {}
      L2_4.type = "toggleitemenabled"
      L3_4 = A0_3.index
      L2_4.index = L3_4
      L3_4 = A0_3.enabled
      L2_4.enabled = L3_4
      L1_4(L2_4)
    end
    A0_3.ToggleEnabled = L1_3
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4
      A0_3.label = A0_4
      L1_4 = SendNUIMessage
      L2_4 = {}
      L2_4.type = "itemchangelabel"
      L3_4 = A0_3.index
      L2_4.index = L3_4
      L2_4.label = A0_4
      L1_4(L2_4)
    end
    A0_3.ChangeLabel = L1_3
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4
      A0_3.description = A0_4
      L1_4 = SendNUIMessage
      L2_4 = {}
      L2_4.type = "itemchangedescription"
      L3_4 = A0_3.index
      L2_4.index = L3_4
      L2_4.description = A0_4
      L1_4(L2_4)
    end
    A0_3.ChangeDescription = L1_3
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4
      A0_3.secondLabel = A0_4
      L1_4 = SendNUIMessage
      L2_4 = {}
      L2_4.type = "itemchangelabel"
      L3_4 = A0_3.index
      L2_4.index = L3_4
      L2_4.secondLabel = A0_4
      L1_4(L2_4)
    end
    A0_3.ChangeSecondLabel = L1_3
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4
      A0_3.checked = A0_4
      L1_4 = SendNUIMessage
      L2_4 = {}
      L2_4.type = "togglecheck"
      L3_4 = A0_3.index
      L2_4.index = L3_4
      L3_4 = A0_3.checked
      L2_4.checked = L3_4
      L1_4(L2_4)
    end
    A0_3.ToggleCheck = L1_3
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = SendNUIMessage
      L2_4 = {}
      L2_4.type = "labelchangeindex"
      L3_4 = A0_3.index
      L2_4.index = L3_4
      L2_4.listIndex = A0_4
      L1_4(L2_4)
    end
    A0_3.ChangeIndex = L1_3
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      A0_3.data = A0_4
      A0_3.listIndex = 1
      L1_4 = A0_3.data
      L1_4 = L1_4[1]
      A0_3.displayLabel = L1_4
      L1_4 = A0_3.data
      L1_4 = L1_4[1]
      A0_3.secondLabel = L1_4
      L1_4 = SendNUIMessage
      L2_4 = {}
      L2_4.type = "itemchangeitems"
      L3_4 = A0_3.index
      L2_4.index = L3_4
      L3_4 = json
      L3_4 = L3_4.encode
      L4_4 = A0_4
      L3_4 = L3_4(L4_4)
      L2_4.data = L3_4
      L1_4(L2_4)
    end
    A0_3.ChangeItems = L1_3
  end
  L1_2.AppendSpecialFunctions = L5_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = L1_2.isOpen_
    return L0_3
  end
  L1_2.IsOpen = L5_2
  function L5_2(A0_3)
    local L1_3
    L2_2 = A0_3
  end
  L1_2.SetMenuTitle = L5_2
  function L5_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = {}
    L4_3 = A0_3
    L5_3 = A1_3
    L6_3 = A2_3
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L3_3[3] = L6_3
    L3_2 = L3_3
  end
  L1_2.SetMenuColor = L5_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = L2_2
    return L0_3
  end
  L1_2.GetMenuTitle = L5_2
  function L5_2(A0_3)
    local L1_3
    L4_2 = A0_3
  end
  L1_2.SetProperties = L5_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = L4_2
    return L0_3
  end
  L1_2.GetProperties = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = On
    L2_3 = A0_2
    L3_3 = "close"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2.OnCloseEvent = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = On
    L2_3 = A0_2
    L3_3 = "open"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2.OnOpenEvent = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = On
    L2_3 = A0_2
    L3_3 = "exit"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2.OnExitEvent = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = On
    L2_3 = A0_2
    L3_3 = "changeitem"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2.OnChangeItemEvent = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = On
    L2_3 = A0_2
    L3_3 = "updatelabel"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2.OnUpdateLabelEvent = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = On
    L2_3 = A0_2
    L3_3 = "updatecheck"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2.OnUpdateCheckEvent = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = On
    L2_3 = A0_2
    L3_3 = "itemupdateLabel"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2.OnItemUpdateLabelEvent = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = On
    L2_3 = A0_2
    L3_3 = "updateDescription"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2.OnItemUpdateDescriptionEvent = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = On
    L2_3 = A0_2
    L3_3 = "updateItems"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2.OnItemUpdateItemsEvent = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = On
    L2_3 = A0_2
    L3_3 = "selectitem"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2.OnSelectEvent = L5_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = On
    L3_3 = A0_2
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.On = L5_2
  function L5_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3
    L5_3 = L1_2.itemIndex
    L5_3 = L5_3 + 1
    L1_2.itemIndex = L5_3
    L5_3 = {}
    L5_3.visible = true
    L5_3.enabled = true
    L5_3.type = 1
    L5_3.label = A0_3
    L5_3.secondLabel = A1_3
    L5_3.description = A2_3
    L6_3 = L1_2.itemIndex
    L5_3.index = L6_3
    L6_3 = A4_3 or L6_3
    if not A4_3 then
      L6_3 = {}
    end
    L5_3.data = L6_3
    L5_3.cb = A3_3
    L6_3 = L1_2.items
    L7_3 = L5_3.index
    L6_3[L7_3] = L5_3
    L6_3 = L1_2.AppendSpecialFunctions
    L7_3 = L5_3
    L6_3(L7_3)
    return L5_3
  end
  L1_2.AddItem = L5_2
  function L5_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3
    L4_3 = L1_2.itemIndex
    L4_3 = L4_3 + 1
    L1_2.itemIndex = L4_3
    L4_3 = {}
    L4_3.visible = true
    L4_3.enabled = true
    L4_3.type = 4
    L4_3.label = A0_3
    L4_3.description = A1_3
    L5_3 = L1_2.itemIndex
    L4_3.index = L5_3
    L5_3 = A3_3 or L5_3
    if not A3_3 then
      L5_3 = {}
    end
    L4_3.data = L5_3
    L4_3.cb = A2_3
    L4_3.checked = true
    L5_3 = L1_2.items
    L6_3 = L4_3.index
    L5_3[L6_3] = L4_3
    L5_3 = L1_2.AppendSpecialFunctions
    L6_3 = L4_3
    L5_3(L6_3)
    return L4_3
  end
  L1_2.AddCheck = L5_2
  function L5_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3
    L6_3 = L1_2.itemIndex
    L6_3 = L6_3 + 1
    L1_2.itemIndex = L6_3
    L6_3 = {}
    L6_3.visible = true
    L6_3.enabled = true
    L6_3.type = 5
    L6_3.label = A0_3
    L6_3.secondLabel = A1_3
    L6_3.description = A3_3
    L6_3.mugShot = A2_3
    L7_3 = L1_2.itemIndex
    L6_3.index = L7_3
    L7_3 = A5_3 or L7_3
    if not A5_3 then
      L7_3 = {}
    end
    L6_3.data = L7_3
    L6_3.cb = A4_3
    L6_3.checked = true
    L7_3 = L1_2.items
    L8_3 = L6_3.index
    L7_3[L8_3] = L6_3
    L7_3 = L1_2.AppendSpecialFunctions
    L8_3 = L6_3
    L7_3(L8_3)
    return L6_3
  end
  L1_2.AddLeaderboardRow = L5_2
  function L5_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L6_3 = L1_2.AddLeaderboardRow
    L7_3 = A0_3
    L8_3 = A1_3
    L9_3 = A2_3
    L10_3 = A3_3
    L11_3 = A4_3
    L12_3 = A5_3
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L6_3.type = 6
    return L6_3
  end
  L1_2.AddNearbyPlayerRow = L5_2
  function L5_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3
    L5_3 = L1_2.itemIndex
    L5_3 = L5_3 + 1
    L1_2.itemIndex = L5_3
    L5_3 = {}
    L5_3.visible = true
    L5_3.enabled = true
    L5_3.type = 3
    L5_3.label = A0_3
    L6_3 = L1_2.itemIndex
    L5_3.index = L6_3
    L5_3.black = true
    L5_3.secondLabel = A1_3
    L5_3.description = A2_3
    L6_3 = A4_3 or L6_3
    if not A4_3 then
      L6_3 = {}
    end
    L5_3.data = L6_3
    L5_3.cb = A3_3
    L6_3 = L1_2.items
    L7_3 = L5_3.index
    L6_3[L7_3] = L5_3
    L6_3 = L1_2.AppendSpecialFunctions
    L7_3 = L5_3
    L6_3(L7_3)
    return L5_3
  end
  L1_2.AddGroup = L5_2
  function L5_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3
    L4_3 = L1_2.itemIndex
    L4_3 = L4_3 + 1
    L1_2.itemIndex = L4_3
    L4_3 = {}
    L4_3.visible = true
    L4_3.enabled = true
    L4_3.type = 2
    L4_3.label = A0_3
    L4_3.description = A1_3
    L5_3 = L1_2.itemIndex
    L4_3.index = L5_3
    L4_3.listIndex = 1
    L5_3 = A3_3 or L5_3
    if not A3_3 then
      L5_3 = {}
    end
    L4_3.data = L5_3
    L4_3.cb = A2_3
    L5_3 = L4_3.data
    L5_3 = L5_3[1]
    L4_3.displayLabel = L5_3
    L5_3 = L4_3.data
    L5_3 = L5_3[1]
    L4_3.secondLabel = L5_3
    L5_3 = L1_2.items
    L6_3 = L4_3.index
    L5_3[L6_3] = L4_3
    L5_3 = L1_2.AppendSpecialFunctions
    L6_3 = L4_3
    L5_3(L6_3)
    return L4_3
  end
  L1_2.AddList = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = CachedMenu
    L1_3 = A0_2
    L0_3 = L0_3[L1_3]
    if not L0_3 then
      L0_3 = CachedMenu
      L1_3 = A0_2
      L2_3 = {}
      L0_3[L1_3] = L2_3
    end
    L0_3 = CachedMenu
    L1_3 = A0_2
    L2_3 = {}
    L3_3 = L2_2
    L2_3.MenuTitle = L3_3
    L3_3 = L3_2
    L2_3.MenuColor = L3_3
    L3_3 = L4_2
    L2_3.Properties = L3_3
    L3_3 = L1_2.items
    L2_3.Items = L3_3
    L3_3 = L1_2
    L2_3.self = L3_3
    L0_3[L1_3] = L2_3
    L0_3 = SendNUIMessage
    L1_3 = {}
    L1_3.type = "reset"
    L0_3(L1_3)
    L0_3 = SendNUIMessage
    L1_3 = {}
    L1_3.type = "title"
    L2_3 = L2_2
    L1_3.title = L2_3
    L2_3 = L3_2
    L1_3.color = L2_3
    L0_3(L1_3)
    L0_3 = {}
    L1_3 = pairs
    L2_3 = L1_2.items
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = table
      L7_3 = L7_3.insert
      L8_3 = L0_3
      L9_3 = {}
      L9_3.type = "add"
      L10_3 = L6_3.visible
      L9_3.visible = L10_3
      L10_3 = L6_3.enabled
      L9_3.enabled = L10_3
      L10_3 = L6_3.type
      L9_3.itemType = L10_3
      L10_3 = L6_3.label
      L9_3.label = L10_3
      L10_3 = L6_3.mugShot
      L9_3.mugShot = L10_3
      L10_3 = L6_3.secondLabel
      L9_3.secondLabel = L10_3
      L10_3 = L6_3.description
      L9_3.description = L10_3
      L10_3 = L6_3.checked
      L9_3.checked = L10_3
      L10_3 = L6_3.index
      L9_3.index = L10_3
      L10_3 = L6_3.data
      L9_3.data = L10_3
      L10_3 = L6_3.black
      L9_3.black = L10_3
      L10_3 = L6_3.listIndex
      L9_3.listIndex = L10_3
      L7_3(L8_3, L9_3)
    end
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.type = "addpack"
    L2_3.pack = L0_3
    L1_3(L2_3)
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.type = "ui"
    L3_3 = A0_2
    L2_3.identifier = L3_3
    L3_3 = L4_2
    L2_3.properties = L3_3
    L2_3.status = true
    L1_3(L2_3)
    L1_2.isOpen_ = true
  end
  L1_2.Open = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = SendNUIMessage
    L1_3 = {}
    L1_3.type = "ui"
    L1_3.status = false
    L0_3(L1_3)
    L0_3 = L1_2.isOpen_
    if L0_3 then
      L0_3 = CallOn
      L1_3 = A0_2
      L2_3 = "close"
      L0_3(L1_3, L2_3)
    end
    L1_2.isOpen_ = false
  end
  L1_2.Close = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.type = "togglevisibility"
    L2_3.status = A0_3
    L1_3(L2_3)
  end
  L1_2.ToggleVisibility = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = SendNUIMessage
    L1_3 = {}
    L1_3.type = "ui"
    L1_3.status = false
    L0_3(L1_3)
    L0_3 = CallOn
    L1_3 = A0_2
    L2_3 = "exit"
    L0_3(L1_3, L2_3)
    L0_3 = CachedMenu
    L1_3 = A0_2
    L0_3[L1_3] = nil
    L0_3 = Events
    L1_3 = A0_2
    L0_3[L1_3] = nil
  end
  L1_2.Destroy = L5_2
  return L1_2
end
CreateMenu = L0_1
L0_1 = exports
L1_1 = "CreateMenu"
L2_1 = CreateMenu
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "inputmethod"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CachedMenu
  L2_2 = A0_2.identifier
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L1_2 = CallOn
    L2_2 = A0_2.identifier
    L3_2 = "inputtext"
    L4_2 = A0_2.message
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "close"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CachedMenu
  L2_2 = A0_2.identifier
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = L1_2.self
    L2_2 = L2_2.Close
    L2_2()
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "clickItem"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.identifier
  L2_2 = CachedMenu
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.Items
  L3_2 = A0_2.index
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2.label
  L4_2 = A0_2.displayLabel
  L5_2 = CachedMenu
  L5_2 = L5_2[L1_2]
  if L5_2 and L2_2 then
    L5_2 = L2_2.cb
    if L5_2 then
      L6_2 = L5_2
      L6_2()
    end
    L6_2 = CallOn
    L7_2 = L1_2
    L8_2 = "selectitem"
    L9_2 = A0_2.index
    L10_2 = L2_2.data
    if not L10_2 then
      L10_2 = {}
    end
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "open"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.identifier
  L2_2 = CachedMenu
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = CallOn
    L3_2 = L1_2
    L4_2 = "open"
    L2_2(L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "selectNew"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.identifier
  L2_2 = CachedMenu
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = CachedMenu
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.Items
    L3_2 = A0_2.index
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = CallOn
      L3_2 = L1_2
      L4_2 = "changeitem"
      L5_2 = A0_2.newIndex
      L6_2 = A0_2.oldIndex
      L7_2 = CachedMenu
      L7_2 = L7_2[L1_2]
      L7_2 = L7_2.Items
      L8_2 = A0_2.newIndex
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.data
      if not L7_2 then
        L7_2 = {}
      end
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updateLabel"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.identifier
  L2_2 = CachedMenu
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = CachedMenu
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.Items
    L3_2 = A0_2.index
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = CachedMenu
      L2_2 = L2_2[L1_2]
      L2_2 = L2_2.Items
      L3_2 = A0_2.index
      L2_2 = L2_2[L3_2]
      L3_2 = A0_2.listIndex
      L2_2.listIndex = L3_2
      L2_2 = CachedMenu
      L2_2 = L2_2[L1_2]
      L2_2 = L2_2.Items
      L3_2 = A0_2.index
      L2_2 = L2_2[L3_2]
      L3_2 = A0_2.displayLabel
      L2_2.displayLabel = L3_2
      L2_2 = CachedMenu
      L2_2 = L2_2[L1_2]
      L2_2 = L2_2.Items
      L3_2 = A0_2.index
      L2_2 = L2_2[L3_2]
      L3_2 = A0_2.displayLabel
      L2_2.secondLabel = L3_2
      L2_2 = CallOn
      L3_2 = L1_2
      L4_2 = "updatelabel"
      L5_2 = A0_2.index
      L6_2 = A0_2.listIndex
      L7_2 = A0_2.label
      L8_2 = A0_2.displayLabel
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updatecheck"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.identifier
  L2_2 = CachedMenu
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = CachedMenu
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.Items
    L3_2 = A0_2.index
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = CachedMenu
      L2_2 = L2_2[L1_2]
      L2_2 = L2_2.Items
      L3_2 = A0_2.index
      L2_2 = L2_2[L3_2]
      L3_2 = A0_2.checked
      L2_2.checked = L3_2
      L2_2 = CallOn
      L3_2 = L1_2
      L4_2 = "updatecheck"
      L5_2 = A0_2.index
      L6_2 = A0_2.checked
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "itemupdateLabel"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.identifier
  L2_2 = CachedMenu
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = CachedMenu
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.Items
    L3_2 = A0_2.index
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = CallOn
      L3_2 = L1_2
      L4_2 = "itemupdateLabel"
      L5_2 = A0_2.index
      L6_2 = A0_2.label
      L7_2 = A0_2.secondLabel
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updateDescription"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.identifier
  L2_2 = CachedMenu
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = CachedMenu
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.Items
    L3_2 = A0_2.index
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = CachedMenu
      L2_2 = L2_2[L1_2]
      L2_2 = L2_2.Items
      L3_2 = A0_2.index
      L2_2 = L2_2[L3_2]
      L3_2 = A0_2.description
      L2_2.description = L3_2
      L2_2 = CallOn
      L3_2 = L1_2
      L4_2 = "updateDescription"
      L5_2 = A0_2.index
      L6_2 = A0_2.description
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updateItems"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.identifier
  L2_2 = CachedMenu
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = CachedMenu
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.Items
    L3_2 = A0_2.index
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = CachedMenu
      L2_2 = L2_2[L1_2]
      L2_2 = L2_2.Items
      L3_2 = A0_2.index
      L2_2 = L2_2[L3_2]
      L3_2 = json
      L3_2 = L3_2.encode
      L4_2 = A0_2.data
      L3_2 = L3_2(L4_2)
      L2_2.items = L3_2
      L2_2 = CallOn
      L3_2 = L1_2
      L4_2 = "updateItems"
      L5_2 = A0_2.index
      L6_2 = A0_2.data
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = {}
CachedMenu = L0_1
L0_1 = RegisterKey
function L1_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "up"
  L0_2(L1_2)
end
L2_1 = "ttennisup"
L3_1 = "Key up"
L4_1 = "UP"
L0_1(L1_1, L2_1, L3_1, L4_1)
L0_1 = RegisterKey
function L1_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "down"
  L0_2(L1_2)
end
L2_1 = "ttennisdown"
L3_1 = "Key down"
L4_1 = "DOWN"
L0_1(L1_1, L2_1, L3_1, L4_1)
L0_1 = RegisterKey
function L1_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "right"
  L0_2(L1_2)
end
L2_1 = "ttennisright"
L3_1 = "Key right"
L4_1 = "RIGHT"
L0_1(L1_1, L2_1, L3_1, L4_1)
L0_1 = RegisterKey
function L1_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "left"
  L0_2(L1_2)
end
L2_1 = "ttennisleft"
L3_1 = "Key left"
L4_1 = "LEFT"
L0_1(L1_1, L2_1, L3_1, L4_1)
L0_1 = RegisterKey
function L1_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "enter"
  L0_2(L1_2)
end
L2_1 = "ttennise"
L3_1 = "Key E"
L4_1 = "E"
L0_1(L1_1, L2_1, L3_1, L4_1)
L0_1 = RegisterKey
function L1_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "enter"
  L0_2(L1_2)
end
L2_1 = "ttennisenter"
L3_1 = "Key ENTER"
L4_1 = "RETURN"
L0_1(L1_1, L2_1, L3_1, L4_1)
L0_1 = AddEventHandler
L1_1 = "onResourceStop"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = RemoveEventsWithNameResource
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)

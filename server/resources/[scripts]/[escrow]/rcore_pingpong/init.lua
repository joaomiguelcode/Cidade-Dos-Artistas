local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
Locales = L0_1
function L0_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = type
  L2_2 = Locales
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = string
    L1_2 = L1_2.format
    L2_2 = "[%s] the locales is wrong type, it is not a table.."
    L3_2 = GetCurrentResourceName
    L3_2, L4_2, L5_2 = L3_2()
    return L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = Locales
  L2_2 = Config
  L2_2 = L2_2.Locale
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    L1_2 = string
    L1_2 = L1_2.format
    L2_2 = "[%s] The language does not exists: %s"
    L3_2 = GetCurrentResourceName
    L3_2 = L3_2()
    L4_2 = Config
    L4_2 = L4_2.Locale
    return L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = Locales
  L2_2 = Config
  L2_2 = L2_2.Locale
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = print
    L2_2 = "You're missing this translation in: %s the key is called: %s"
    L3_2 = L2_2
    L2_2 = L2_2.format
    L4_2 = Config
    L4_2 = L4_2.Locale
    L5_2 = A0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = string
    L1_2 = L1_2.format
    L2_2 = Locales
    L2_2 = L2_2.en
    L2_2 = L2_2[A0_2]
    L3_2, L4_2, L5_2 = ...
    return L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = type
  L2_2 = Locales
  L3_2 = Config
  L3_2 = L3_2.Locale
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2[A0_2]
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = Locales
    L2_2 = Config
    L2_2 = L2_2.Locale
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = Locales
  L3_2 = Config
  L3_2 = L3_2.Locale
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2[A0_2]
  L3_2, L4_2, L5_2 = ...
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
_U = L0_1
L0_1 = Config
L0_1 = L0_1.GeneralDebug
if L0_1 then
  L0_1 = AddEventHandler
  L1_1 = RegisterNetEvent
  L2_1 = CreateThread
  L3_1 = RegisterCommand
  L4_1 = RegisterNUICallback
  function L5_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    L2_2 = L4_1
    L3_2 = A0_2
    function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3, A7_3, A8_3, A9_3, A10_3, A11_3)
      local L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
      L12_3 = xpcall
      function L13_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
        L0_4 = A1_2
        L1_4 = A0_3
        L2_4 = A1_3
        L3_4 = A2_3
        L4_4 = A3_3
        L5_4 = A4_3
        L6_4 = A5_3
        L7_4 = A6_3
        L8_4 = A7_3
        L9_4 = A8_3
        L10_4 = A9_3
        L11_4 = A10_3
        L12_4 = A11_3
        L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
      end
      L14_3 = debug
      L14_3 = L14_3.traceback
      L12_3, L13_3 = L12_3(L13_3, L14_3)
      if not L12_3 then
        L14_3 = print
        L15_3 = L13_3
        L16_3 = "^2RegisterNUICallback^0"
        L17_3 = "^1"
        L18_3 = A0_2
        L19_3 = "^0"
        L17_3 = L17_3 .. L18_3 .. L19_3
        L14_3(L15_3, L16_3, L17_3)
      end
    end
    L2_2(L3_2, L4_2)
  end
  RegisterNUICallback = L5_1
  function L5_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    L2_2 = L3_1
    L3_2 = A0_2
    function L4_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L3_3 = xpcall
      function L4_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = A1_2
        L1_4 = A0_3
        L2_4 = A1_3
        L3_4 = A2_3
        L0_4(L1_4, L2_4, L3_4)
      end
      L5_3 = debug
      L5_3 = L5_3.traceback
      L3_3, L4_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L5_3 = print
        L6_3 = L4_3
        L7_3 = "^2RegisterCommand^0"
        L8_3 = "^1"
        L9_3 = A0_2
        L10_3 = "^0"
        L8_3 = L8_3 .. L9_3 .. L10_3
        L5_3(L6_3, L7_3, L8_3)
      end
    end
    L2_2(L3_2, L4_2)
  end
  RegisterCommand = L5_1
  function L5_1(A0_2, A1_2)
    local L2_2, L3_2
    if not A1_2 then
      A1_2 = "non defined"
    end
    L2_2 = L2_1
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      L0_3 = xpcall
      L1_3 = A0_2
      L2_3 = debug
      L2_3 = L2_3.traceback
      L0_3, L1_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L2_3 = print
        L3_3 = L1_3
        L4_3 = "^2CreateThread^0"
        L5_3 = "^1"
        L6_3 = A1_2
        L7_3 = "^0"
        L5_3 = L5_3 .. L6_3 .. L7_3
        L2_3(L3_3, L4_3, L5_3)
      end
    end
    L2_2(L3_2)
  end
  CreateThread = L5_1
  function L5_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    L2_2 = L0_1
    L3_2 = A0_2
    function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3, A7_3, A8_3, A9_3, A10_3, A11_3)
      local L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
      L12_3 = xpcall
      function L13_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
        L0_4 = A1_2
        L1_4 = A0_3
        L2_4 = A1_3
        L3_4 = A2_3
        L4_4 = A3_3
        L5_4 = A4_3
        L6_4 = A5_3
        L7_4 = A6_3
        L8_4 = A7_3
        L9_4 = A8_3
        L10_4 = A9_3
        L11_4 = A10_3
        L12_4 = A11_3
        L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
      end
      L14_3 = debug
      L14_3 = L14_3.traceback
      L12_3, L13_3 = L12_3(L13_3, L14_3)
      if not L12_3 then
        L14_3 = print
        L15_3 = L13_3
        L16_3 = "^2AddEventHandler^0"
        L17_3 = "^1"
        L18_3 = A0_2
        L19_3 = "^0"
        L17_3 = L17_3 .. L18_3 .. L19_3
        L14_3(L15_3, L16_3, L17_3)
      end
    end
    L2_2(L3_2, L4_2)
  end
  AddEventHandler = L5_1
  function L5_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    if A1_2 then
      L2_2 = L1_1
      L3_2 = A0_2
      function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3, A7_3, A8_3, A9_3, A10_3, A11_3)
        local L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
        L12_3 = xpcall
        function L13_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
          L0_4 = A1_2
          L1_4 = A0_3
          L2_4 = A1_3
          L3_4 = A2_3
          L4_4 = A3_3
          L5_4 = A4_3
          L6_4 = A5_3
          L7_4 = A6_3
          L8_4 = A7_3
          L9_4 = A8_3
          L10_4 = A9_3
          L11_4 = A10_3
          L12_4 = A11_3
          L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
        end
        L14_3 = debug
        L14_3 = L14_3.traceback
        L12_3, L13_3 = L12_3(L13_3, L14_3)
        if not L12_3 then
          L14_3 = print
          L15_3 = L13_3
          L16_3 = "^2RegisterNetEvent^0"
          L17_3 = "^1"
          L18_3 = A0_2
          L19_3 = "^0"
          L17_3 = L17_3 .. L18_3 .. L19_3
          L14_3(L15_3, L16_3, L17_3)
        end
      end
      L2_2(L3_2, L4_2)
    else
      L2_2 = L1_1
      L3_2 = A0_2
      L2_2(L3_2)
    end
  end
  RegisterNetEvent = L5_1
end

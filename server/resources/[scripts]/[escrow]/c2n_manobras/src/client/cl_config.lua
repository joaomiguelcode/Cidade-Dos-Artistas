local L0_1, L1_1, L2_1
L0_1 = C2N
if not L0_1 then
  L0_1 = {}
end
C2N = L0_1
L0_1 = ResourceName
if not L0_1 then
  L0_1 = GetCurrentResourceName
  L0_1 = L0_1()
end
ResourceName = L0_1
L0_1 = {}
Config = L0_1
L0_1 = {}
Locale = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = A0_2
  if not L2_2 then
    L3_2 = C2N
    L3_2 = L3_2.Callbacks
    L3_2 = L3_2.TriggerServerCallback
    L4_2 = ResourceBaseEvent
    L5_2 = "RequestConfig"
    L4_2 = L4_2(L5_2)
    function L5_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      L2_2 = A0_3
      Locale = A1_3
      L2_3 = L1_2
      L3_3 = L2_3
      L2_3 = L2_3.resolve
      L4_3 = L2_2
      L2_3(L3_3, L4_3)
    end
    L3_2(L4_2, L5_2)
  else
    L4_2 = L1_2
    L3_2 = L1_2.resolve
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = Citizen
  L3_2 = L3_2.Await
  L4_2 = L1_2
  L3_2(L4_2)
  Config = L2_2
end
RequestConfig = L0_1
L0_1 = RegisterNetEvent
L1_1 = ResourceBaseEvent
L2_1 = "SaveConfig"
L1_1 = L1_1(L2_1)
L2_1 = RequestConfig
L0_1(L1_1, L2_1)
L0_1 = RequestConfig
L0_1()

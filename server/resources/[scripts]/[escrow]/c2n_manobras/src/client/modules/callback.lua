local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = C2N
if not L0_1 then
  L0_1 = {}
end
C2N = L0_1
L0_1 = C2N
L1_1 = {}
L0_1.Callbacks = L1_1
L0_1 = ResourceName
if not L0_1 then
  L0_1 = GetCurrentResourceName
  L0_1 = L0_1()
end
ResourceName = L0_1
L0_1 = 0
L1_1 = {}
L2_1 = {}
L3_1 = C2N
L3_1 = L3_1.Callbacks
function L4_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  L2_2 = L1_1
  L2_2[L3_2] = A1_2
  L2_2 = TriggerServerEvent
  L3_2 = ResourceBaseEvent
  L4_2 = "triggerServerCallback"
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2
  L5_2 = L0_1
  L6_2 = ResourceName
  if not L6_2 then
    L6_2 = "unknown"
  end
  L7_2 = ...
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = L0_1
  L2_2 = L2_2 + 1
  L0_1 = L2_2
end
L3_1.TriggerServerCallback = L4_1
L3_1 = RegisterNetEvent
L4_1 = ResourceBaseEvent
L5_1 = "serverCallback"
L4_1 = L4_1(L5_1)
function L5_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = print
    L3_2 = "[ERROR] Server Callback with requestId %s Was Called by %s but does not exist."
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = A0_2
    L6_2 = A1_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
    return L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L3_2, L4_2, L5_2, L6_2 = ...
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L1_1
  L2_2[A0_2] = nil
end
L3_1(L4_1, L5_1)
L3_1 = C2N
L3_1 = L3_1.Callbacks
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = L2_1
  L2_2[A0_2] = A1_2
end
L3_1.RegisterClientCallback = L4_1
L3_1 = RegisterNetEvent
L4_1 = ResourceBaseEvent
L5_1 = "triggerClientCallback"
L4_1 = L4_1(L5_1)
function L5_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L2_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = print
    L4_2 = "[ERROR] Client Callback not registered, name: %s, invoker resource: %s"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = A0_2
    L7_2 = A2_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
    return L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = L2_1
  L3_2 = L3_2[A0_2]
  function L4_2(...)
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = TriggerServerEvent
    L1_3 = ResourceBaseEvent
    L2_3 = "clientCallback"
    L1_3 = L1_3(L2_3)
    L2_3 = A1_2
    L3_3 = A2_2
    L4_3 = ...
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L5_2, L6_2, L7_2 = ...
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L3_1(L4_1, L5_1)
L3_1 = exports
L4_1 = "getCallbackObject"
function L5_1()
  local L0_2, L1_2
  L0_2 = C2N
  L0_2 = L0_2.Callbacks
  return L0_2
end
L3_1(L4_1, L5_1)

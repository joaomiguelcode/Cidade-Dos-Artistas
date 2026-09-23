local L0_1, L1_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Config
  L2_2 = L2_2.Rcore_Stats
  if not L2_2 then
    return
  end
  L2_2 = TriggerEvent
  L3_2 = "rcore_stats:api:increaseStatValue"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
Stats_Increase = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Config
  L2_2 = L2_2.Rcore_Stats
  if not L2_2 then
    return
  end
  L2_2 = TriggerEvent
  L3_2 = "rcore_stats:api:decreaseStatValue"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
Stats_Decrease = L0_1

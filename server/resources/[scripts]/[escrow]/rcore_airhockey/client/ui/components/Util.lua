local L0_1, L1_1
L0_1 = math
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tonumber
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%."
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = 0
  end
  L6_2 = "f"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.round = L1_1
L0_1 = string
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = string
  L2_2 = L2_2.sub
  L3_2 = A0_2
  L4_2 = 1
  L5_2 = string
  L5_2 = L5_2.len
  L6_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L2_2 == A1_2
  return L2_2
end
L0_1.starts = L1_1

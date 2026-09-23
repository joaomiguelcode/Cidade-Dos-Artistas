local L0_1, L1_1
L0_1 = {}
Keys = L0_1
L0_1 = Keys
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = RegisterKeyMapping
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "keys-%s"
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A2_2
  L7_2 = "keyboard"
  L8_2 = A0_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = RegisterCommand
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "keys-%s"
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  function L6_2()
    local L0_3, L1_3
    L0_3 = A3_2
    if nil ~= L0_3 then
      L0_3 = A3_2
      L0_3()
    end
  end
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.Register = L1_1

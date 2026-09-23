local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2
  while true do
    L1_2 = HasAnimDictLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = RequestAnimDict
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 100
    L1_2(L2_2)
  end
end
loadAnimDict = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DisplayHelpTextThisFrame
  L2_2 = A0_2
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
CustomDisplayHelpTextThisFrame = L0_1

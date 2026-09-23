local L0_1, L1_1
L0_1 = {}
Audio = L0_1
L0_1 = Audio
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = nil
  if not A2_2 then
    L4_2 = PlaySoundFrontend
    L5_2 = -1
    L6_2 = A1_2
    L7_2 = A0_2
    L8_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2)
  elseif not L3_2 then
    L4_2 = Citizen
    L4_2 = L4_2.CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = GetSoundId
      L0_3 = L0_3()
      L3_2 = L0_3
      L0_3 = PlaySoundFrontend
      L1_3 = L3_2
      L2_3 = A1_2
      L3_3 = A0_2
      L4_3 = true
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0.01
      L0_3(L1_3)
      L0_3 = StopSound
      L1_3 = L3_2
      L0_3(L1_3)
      L0_3 = ReleaseSoundId
      L1_3 = L3_2
      L0_3(L1_3)
      L0_3 = nil
      L3_2 = L0_3
    end
    L4_2(L5_2)
  end
end
L0_1.PlaySound = L1_1

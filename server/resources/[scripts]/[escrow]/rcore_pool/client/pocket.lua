local L0_1, L1_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = pairs
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = A1_2.position
    L12_2 = L10_2.xy
    L11_2 = L11_2 - L12_2
    L11_2 = #L11_2
    L12_2 = BALL_RADIUS
    L13_2 = POCKET_RADIUS
    L12_2 = L12_2 + L13_2
    if L11_2 < L12_2 then
      L12_2 = vector2
      L13_2 = 0.0
      L14_2 = 0.0
      L12_2 = L12_2(L13_2, L14_2)
      A1_2.velocity = L12_2
      L12_2 = L10_2.xy
      A1_2.position = L12_2
      A1_2.disabled = true
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = A3_2.events
      L14_2 = {}
      L14_2.t = A4_2
      L14_2.type = "pocketed"
      L14_2.pocket = L10_2
      L14_2.ball = A1_2
      L14_2.tableName = A2_2
      L12_2(L13_2, L14_2)
      L12_2 = true
      return L12_2
    end
  end
end
checkBallInPocket = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = 0.89
  L3_2 = vector2
  L4_2 = -0.84283
  L5_2 = -1.225585
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = vector2
  L5_2 = 0.697048
  L6_2 = 1.482726
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = TABLE_OFFSET
  L5_2 = L5_2[A1_2]
  L6_2 = {}
  L7_2 = GetOffsetFromEntityInWorldCoords
  L8_2 = A0_2
  L9_2 = L3_2.x
  L10_2 = L5_2.x
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 - 0.03
  L10_2 = L3_2.y
  L11_2 = L5_2.y
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 - 0.03
  L11_2 = L2_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = GetOffsetFromEntityInWorldCoords
  L9_2 = A0_2
  L10_2 = L4_2.x
  L11_2 = L5_2.x
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + 0.03
  L11_2 = L3_2.y
  L12_2 = L5_2.y
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 - 0.03
  L12_2 = L2_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = GetOffsetFromEntityInWorldCoords
  L10_2 = A0_2
  L11_2 = L4_2.x
  L12_2 = L5_2.x
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 + 0.03
  L12_2 = L4_2.y
  L13_2 = L5_2.y
  L12_2 = L12_2 + L13_2
  L12_2 = L12_2 + 0.03
  L13_2 = L2_2
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = GetOffsetFromEntityInWorldCoords
  L11_2 = A0_2
  L12_2 = L3_2.x
  L13_2 = L5_2.x
  L12_2 = L12_2 + L13_2
  L12_2 = L12_2 - 0.03
  L13_2 = L4_2.y
  L14_2 = L5_2.y
  L13_2 = L13_2 + L14_2
  L13_2 = L13_2 + 0.03
  L14_2 = L2_2
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L11_2 = GetOffsetFromEntityInWorldCoords
  L12_2 = A0_2
  L13_2 = L5_2.x
  L13_2 = L13_2 + -0.92
  L14_2 = L5_2.y
  L14_2 = 0.125 + L14_2
  L15_2 = L2_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L12_2 = GetOffsetFromEntityInWorldCoords
  L13_2 = A0_2
  L14_2 = L5_2.x
  L14_2 = L14_2 + 0.77
  L15_2 = L5_2.y
  L15_2 = 0.13 + L15_2
  L16_2 = L2_2
  L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L6_2[5] = L11_2
  L6_2[6] = L12_2
  L6_2[7] = L13_2
  L6_2[8] = L14_2
  L6_2[9] = L15_2
  L6_2[10] = L16_2
  return L6_2
end
computePocketColliders = L0_1

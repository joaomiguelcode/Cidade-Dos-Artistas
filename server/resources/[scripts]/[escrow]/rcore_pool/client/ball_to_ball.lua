local L0_1, L1_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.position
  L4_2 = A1_2.position
  L3_2 = L3_2 - L4_2
  L3_2 = #L3_2
  L3_2 = L3_2 * 100
  L4_2 = BALL_RADIUS
  L4_2 = L4_2 * 2
  L4_2 = L4_2 * 100
  L5_2 = math
  L5_2 = L5_2.asin
  L6_2 = math
  L6_2 = L6_2.sin
  L7_2 = math
  L7_2 = L7_2.rad
  L8_2 = A2_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = L6_2 * L3_2
  L6_2 = L6_2 / L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = 180.0
  L6_2 = L6_2 - A2_2
  L7_2 = math
  L7_2 = L7_2.deg
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 - L7_2
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = math
  L8_2 = L8_2.rad
  L9_2 = L6_2
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = BALL_RADIUS
  L7_2 = L7_2 * L8_2
  L7_2 = L7_2 * 2
  L8_2 = math
  L8_2 = L8_2.sin
  L9_2 = math
  L9_2 = L9_2.rad
  L10_2 = A2_2
  L9_2, L10_2 = L9_2(L10_2)
  L8_2 = L8_2(L9_2, L10_2)
  L7_2 = L7_2 / L8_2
  return L7_2
end
GetMoveBakOnVelVector = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2.position
  L3_2 = A1_2.position
  L2_2 = L2_2 - L3_2
  L2_2 = #L2_2
  L3_2 = BALL_RADIUS
  L3_2 = L3_2 * 2
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.velocity
  L3_2 = #L3_2
  if L3_2 > 0 then
    L3_2 = -0.004
    if L2_2 < L3_2 then
      L3_2 = A0_2.position
      L4_2 = A1_2.position
      L3_2 = L3_2 - L4_2
      L3_2 = #L3_2
      if 0.0 ~= L3_2 then
        L3_2 = A0_2.velocity
        L4_2 = A0_2.velocity
        L4_2 = #L4_2
        L3_2 = L3_2 / L4_2
        L4_2 = A0_2.position
        L5_2 = A1_2.position
        L4_2 = L4_2 - L5_2
        L5_2 = A0_2.position
        L6_2 = A1_2.position
        L5_2 = L5_2 - L6_2
        L5_2 = #L5_2
        L4_2 = L4_2 / L5_2
        L5_2 = math
        L5_2 = L5_2.atan2
        L6_2 = L3_2.y
        L7_2 = L4_2.y
        L6_2 = L6_2 - L7_2
        L7_2 = L3_2.x
        L8_2 = L4_2.x
        L7_2 = L7_2 - L8_2
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = math
        L6_2 = L6_2.deg
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        L7_2 = 0.0
        if 0.0 == L6_2 then
          L8_2 = BALL_RADIUS
          L8_2 = L8_2 * 2
          L9_2 = A0_2.position
          L10_2 = A1_2.position
          L9_2 = L9_2 - L10_2
          L9_2 = #L9_2
          L7_2 = L8_2 - L9_2
        else
          L8_2 = 180.0
          L8_2 = L8_2 - L6_2
          L9_2 = GetMoveBakOnVelVector
          L10_2 = A0_2
          L11_2 = A1_2
          L12_2 = L8_2
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          moveBack1 = L9_2
          L9_2 = GetMoveBakOnVelVector
          L10_2 = A0_2
          L11_2 = A1_2
          L12_2 = L6_2
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          moveBack2 = L9_2
          L9_2 = moveBack1
          L10_2 = moveBack2
          if L9_2 < L10_2 then
            L7_2 = moveBack1
          else
            L7_2 = moveBack2
          end
        end
        if L7_2 > 0 then
          L8_2 = A0_2.position
          L9_2 = L3_2 * L7_2
          L8_2 = L8_2 - L9_2
          A0_2.position = L8_2
        end
      end
    end
  end
end
makeBallsNotTouch = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = pairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.entity
    if A0_2 ~= L9_2 then
      L9_2 = L8_2.position
      L9_2 = A1_2 - L9_2
      L9_2 = #L9_2
      L10_2 = BALL_RADIUS
      L10_2 = L10_2 * 2
      L9_2 = L9_2 - L10_2
      L10_2 = -1.0E-4
      if L9_2 < L10_2 then
        L10_2 = true
        return L10_2
      end
    end
  end
  L3_2 = false
  return L3_2
end
isPositionCollidingWithAnyBall = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = A1_2.x
  L5_2 = A3_2.position
  L5_2 = L5_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = A1_2.y
  L6_2 = A3_2.position
  L6_2 = L6_2.y
  L5_2 = L5_2 - L6_2
  L6_2 = A3_2.velocity
  L6_2 = L6_2.x
  L7_2 = A2_2.x
  L6_2 = L6_2 - L7_2
  L7_2 = A3_2.velocity
  L7_2 = L7_2.y
  L8_2 = A2_2.y
  L7_2 = L7_2 - L8_2
  L8_2 = L4_2 * L4_2
  L9_2 = L5_2 * L5_2
  L8_2 = L8_2 + L9_2
  L9_2 = L4_2 * L6_2
  L10_2 = L5_2 * L7_2
  L9_2 = L9_2 + L10_2
  L10_2 = L9_2 / L8_2
  L11_2 = L4_2 * L10_2
  L12_2 = L5_2 * L10_2
  L13_2 = A3_2.velocity
  L14_2 = vector2
  L15_2 = L11_2
  L16_2 = L12_2
  L14_2 = L14_2(L15_2, L16_2)
  L13_2 = L13_2 - L14_2
  L14_2 = FRICTION_BALL_TO_BALL
  L13_2 = L13_2 * L14_2
  A3_2.velocity = L13_2
  L13_2 = vector2
  L14_2 = L11_2
  L15_2 = L12_2
  L13_2 = L13_2(L14_2, L15_2)
  L13_2 = A2_2 + L13_2
  L14_2 = FRICTION_BALL_TO_BALL
  L13_2 = L13_2 * L14_2
  L14_2 = L10_2
  return L13_2, L14_2
end
circleResolution = L0_1

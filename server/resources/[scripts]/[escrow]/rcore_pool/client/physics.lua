local L0_1, L1_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = 180
  L4_2 = A1_2.simStartedAt
  if not L4_2 then
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    L5_2 = GetFrameTime
    L5_2 = L5_2()
    L5_2 = L5_2 * 1000
    L4_2 = L4_2 - L5_2
    A1_2.simStartedAt = L4_2
    A1_2.simulatedSteps = 0
  end
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  while true do
    L5_2 = 1
    L6_2 = L3_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = 1
      L9_2 = L9_2 / L3_2
      L10_2 = ProcessPhysicsStep
      L11_2 = L9_2
      L12_2 = A1_2
      L13_2 = A0_2
      L14_2 = A2_2
      L15_2 = L4_2
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
      L11_2 = L9_2 * 1000
      L4_2 = L4_2 + L11_2
      L11_2 = A1_2.simulatedSteps
      L11_2 = L11_2 + 1
      A1_2.simulatedSteps = L11_2
      if not L10_2 then
        A1_2.active = false
        A1_2.simStartedAt = nil
        A1_2.simulatedSteps = nil
        return
      end
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
  end
end
HandlePoolPhysics = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L5_2 = false
  L6_2 = {}
  L7_2 = pairs
  L8_2 = A1_2.balls
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L12_2.disabled
    if not L13_2 then
      L13_2 = L12_2.velocity
      L13_2 = #L13_2
      L14_2 = 0.005
      if L13_2 > L14_2 then
        L5_2 = true
        L13_2 = L12_2.position
        L14_2 = L12_2.velocity
        L15_2 = advanceBall
        L16_2 = A0_2
        L17_2 = A1_2
        L18_2 = A2_2
        L19_2 = L12_2
        L20_2 = A3_2
        L21_2 = A4_2
        L15_2, L16_2, L17_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        newVel = L17_2
        newPos = L16_2
        pocketed = L15_2
        L15_2 = pocketed
        if not L15_2 then
          L15_2 = pairs
          L16_2 = A1_2.cushionColliders
          L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
          for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
            L21_2 = newPos
            L21_2 = L21_2 - L13_2
            L22_2 = findIntersection
            L23_2 = L20_2[1]
            L24_2 = L20_2[2]
            L25_2 = L13_2
            L26_2 = newPos
            L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2)
            if L22_2 then
              L23_2 = getReflectionVector
              L24_2 = L20_2[1]
              L25_2 = L20_2[2]
              L26_2 = newVel
              L23_2 = L23_2(L24_2, L25_2, L26_2)
              L24_2 = FRICTION_CUSHION
              L23_2 = L23_2 * L24_2
              newVel = L23_2
              L23_2 = #L14_2
              L23_2 = L14_2 / L23_2
              L23_2 = L23_2 * 0.001
              L23_2 = L22_2 - L23_2
              newPos = L23_2
              L23_2 = table
              L23_2 = L23_2.insert
              L24_2 = A3_2.events
              L25_2 = {}
              L25_2.t = A4_2
              L25_2.type = "cushionCollision"
              L26_2 = L12_2.entity
              L25_2.entity = L26_2
              L26_2 = math
              L26_2 = L26_2.min
              L27_2 = 1.0
              L28_2 = math
              L28_2 = L28_2.max
              L29_2 = 0.3
              L30_2 = newVel
              L30_2 = #L30_2
              L30_2 = L30_2 / 8.0
              L28_2, L29_2, L30_2 = L28_2(L29_2, L30_2)
              L26_2 = L26_2(L27_2, L28_2, L29_2, L30_2)
              L25_2.volume = L26_2
              L23_2(L24_2, L25_2)
            end
          end
          L15_2 = pairs
          L16_2 = A1_2.balls
          L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
          for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
            L21_2 = L12_2.entity
            L22_2 = L20_2.entity
            if L21_2 ~= L22_2 then
              L21_2 = L20_2.disabled
              if not L21_2 then
                L21_2 = newPos
                L22_2 = L20_2.position
                L21_2 = L21_2 - L22_2
                L21_2 = #L21_2
                L22_2 = BALL_RADIUS
                L22_2 = L22_2 * 2
                L21_2 = L21_2 - L22_2
                L22_2 = -1.0E-5
                if L21_2 < L22_2 then
                  L22_2 = circleResolution
                  L23_2 = L12_2.entity
                  L24_2 = newPos
                  L25_2 = newVel
                  L26_2 = L20_2
                  L22_2, L23_2 = L22_2(L23_2, L24_2, L25_2, L26_2)
                  collisionScale = L23_2
                  newVel = L22_2
                  newPos = L13_2
                  L22_2 = table
                  L22_2 = L22_2.insert
                  L23_2 = A3_2.events
                  L24_2 = {}
                  L24_2.t = A4_2
                  L24_2.type = "ballCollision"
                  L25_2 = L12_2.entity
                  L24_2.entity = L25_2
                  L25_2 = math
                  L25_2 = L25_2.min
                  L26_2 = 1.0
                  L27_2 = math
                  L27_2 = L27_2.max
                  L28_2 = 0.005
                  L29_2 = collisionScale
                  L29_2 = L29_2 / 150.0
                  L27_2, L28_2, L29_2, L30_2 = L27_2(L28_2, L29_2)
                  L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2, L30_2)
                  L24_2.volume = L25_2
                  L22_2(L23_2, L24_2)
                end
              end
            end
          end
          L15_2 = newPos
          L12_2.position = L15_2
          L15_2 = newVel
          L12_2.velocity = L15_2
        end
      else
        L13_2 = vector2
        L14_2 = 0.0
        L15_2 = 0.0
        L13_2 = L13_2(L14_2, L15_2)
        L12_2.velocity = L13_2
      end
      L13_2 = L12_2.entity
      L14_2 = L12_2.position
      L6_2[L13_2] = L14_2
    end
  end
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = A3_2
  L9_2 = {}
  L9_2.t = A4_2
  L9_2.balls = L6_2
  L7_2(L8_2, L9_2)
  return L5_2
end
ProcessPhysicsStep = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L6_2 = A3_2.position
  L7_2 = A3_2.velocity
  L7_2 = L7_2 * A0_2
  L6_2 = L6_2 + L7_2
  L7_2 = A3_2.velocity
  L8_2 = A3_2.velocity
  L8_2 = #L8_2
  L7_2 = L7_2 / L8_2
  L8_2 = checkBallInPocket
  L9_2 = A1_2.pocketColliders
  L10_2 = A3_2
  L11_2 = A2_2
  L12_2 = A4_2
  L13_2 = A5_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = vector2
  L10_2 = math
  L10_2 = L10_2.max
  L11_2 = A3_2.velocity
  L11_2 = L11_2.x
  L12_2 = L7_2.x
  L13_2 = FRICTION_BALL_TABLE
  L13_2 = L13_2 * A0_2
  L12_2 = L12_2 * L13_2
  L11_2 = L11_2 - L12_2
  L10_2 = L10_2(L11_2)
  L11_2 = math
  L11_2 = L11_2.max
  L12_2 = A3_2.velocity
  L12_2 = L12_2.y
  L13_2 = L7_2.y
  L14_2 = FRICTION_BALL_TABLE
  L14_2 = L14_2 * A0_2
  L13_2 = L13_2 * L14_2
  L12_2 = L12_2 - L13_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = L8_2
  L11_2 = L6_2
  L12_2 = L9_2
  return L10_2, L11_2, L12_2
end
advanceBall = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L3_2 = Config
  L3_2 = L3_2.DrawShotPreviewLine
  if not L3_2 then
    return
  end
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetModelDimensions
  L5_2 = GetEntityModel
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L5_2(L6_2)
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L6_2 = L3_2.xy
  L7_2 = vector2
  L8_2 = L4_2.x
  L8_2 = L8_2 + 0.08
  L9_2 = L4_2.y
  L9_2 = L9_2 + 0.25
  L7_2 = L7_2(L8_2, L9_2)
  L6_2 = L6_2 + L7_2
  L7_2 = L3_2.xy
  L8_2 = vector2
  L9_2 = L5_2.x
  L9_2 = L9_2 - 0.32
  L10_2 = L4_2.y
  L10_2 = L10_2 + 0.08
  L8_2 = L8_2(L9_2, L10_2)
  L7_2 = L7_2 + L8_2
  L8_2 = L3_2.xy
  L9_2 = vector2
  L10_2 = L4_2.x
  L10_2 = L10_2 + 0.35
  L11_2 = L5_2.y
  L11_2 = L11_2 - 0.08
  L9_2 = L9_2(L10_2, L11_2)
  L8_2 = L8_2 + L9_2
  L9_2 = L3_2.xy
  L10_2 = vector2
  L11_2 = L5_2.x
  L11_2 = L11_2 - 0.05
  L12_2 = L5_2.y
  L12_2 = L12_2 - 0.23
  L10_2 = L10_2(L11_2, L12_2)
  L9_2 = L9_2 + L10_2
  L10_2 = {}
  L11_2 = {}
  L12_2 = L7_2
  L13_2 = L6_2
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L12_2 = {}
  L13_2 = L6_2
  L14_2 = L8_2
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L13_2 = {}
  L14_2 = L8_2
  L15_2 = L9_2
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L14_2 = {}
  L15_2 = L9_2
  L16_2 = L7_2
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L11_2 = A1_2.xyz
  L12_2 = A2_2.xyz
  L11_2 = L11_2 - L12_2
  L12_2 = #L11_2
  L12_2 = L11_2 / L12_2
  L11_2 = L12_2 * 3
  L12_2 = vector3
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.02
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L13_2 = L11_2 / 3
  L13_2 = L13_2 * 0.04
  L13_2 = A1_2 + L13_2
  L13_2 = L13_2 + L12_2
  L14_2 = A1_2 + L11_2
  L14_2 = L14_2 + L12_2
  L15_2 = pairs
  L16_2 = L10_2
  L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
  for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
    L21_2 = findIntersection
    L22_2 = L20_2[1]
    L23_2 = L20_2[2]
    L24_2 = L13_2
    L25_2 = L14_2
    L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2)
    if L21_2 then
      L22_2 = DrawLine
      L23_2 = L13_2
      L24_2 = vector3
      L25_2 = L21_2.x
      L26_2 = L21_2.y
      L27_2 = L13_2.z
      L24_2 = L24_2(L25_2, L26_2, L27_2)
      L25_2 = 255
      L26_2 = 255
      L27_2 = 255
      L28_2 = 255
      L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    end
  end
end
RenderPreviewShotLine = L0_1

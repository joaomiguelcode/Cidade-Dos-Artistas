local L0_1, L1_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2.size
  L3_2 = L3_2 / 2.0
  L4_2 = A2_2 / 2.0
  L5_2 = math
  L5_2 = L5_2.abs
  L6_2 = A0_2.offset
  L6_2 = L6_2.x
  L7_2 = A1_2.x
  L6_2 = L6_2 - L7_2
  L5_2 = L5_2(L6_2)
  L6_2 = math
  L6_2 = L6_2.abs
  L7_2 = A0_2.offset
  L7_2 = L7_2.y
  L8_2 = A1_2.y
  L7_2 = L7_2 - L8_2
  L6_2 = L6_2(L7_2)
  L7_2 = L4_2 + L3_2
  if L5_2 > L7_2 then
    L7_2 = false
    return L7_2
  end
  L7_2 = L4_2 + L3_2
  if L6_2 > L7_2 then
    L7_2 = false
    return L7_2
  end
  if L4_2 >= L5_2 then
    L7_2 = true
    return L7_2
  end
  if L4_2 >= L6_2 then
    L7_2 = true
    return L7_2
  end
  L7_2 = L5_2 - L4_2
  L7_2 = L7_2 ^ 2
  L8_2 = L6_2 - L4_2
  L8_2 = L8_2 ^ 2
  L7_2 = L7_2 + L8_2
  L8_2 = L3_2 ^ 2
  if L7_2 <= L8_2 then
    L8_2 = L5_2 - L4_2
    L9_2 = L6_2 - L4_2
    L10_2 = math
    L10_2 = L10_2.sqrt
    L11_2 = L8_2 ^ 2
    L12_2 = L9_2 ^ 2
    L11_2 = L11_2 + L12_2
    L10_2 = L10_2(L11_2)
    if L3_2 >= L10_2 then
      L11_2 = true
      return L11_2
    end
  end
  L8_2 = false
  return L8_2
end
IsBallIntersectsWithBox = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  A1_2.size = 0.24
  L5_2 = A0_2.ballData
  L5_2 = L5_2.velocity
  L5_2 = L5_2.y
  if 0 == L5_2 then
    A2_2 = A2_2 * 3.0
  end
  if not A4_2 then
    A4_2 = 1.0
  end
  L5_2 = A0_2.ignoreInputUntil
  if L5_2 then
    L5_2 = GetGameTimer
    L5_2 = L5_2()
    L6_2 = A0_2.ignoreInputUntil
    if L5_2 < L6_2 then
      return
    end
  end
  L5_2 = A0_2.lastHandledOffset
  if not L5_2 then
    L5_2 = A1_2.offset
    A0_2.lastHandledOffset = L5_2
  end
  L5_2 = A1_2
  L6_2 = A0_2.ballData
  L7_2 = A2_2 * 25.0
  L8_2 = A0_2.lastHandledOffset
  L9_2 = L6_2.velocity
  L10_2 = L5_2.size
  L11_2 = L6_2.size
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 / 2
  L11_2 = vector2
  L12_2 = 0
  L13_2 = 0
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = 0.0
  L13_2 = false
  L14_2 = 0.1
  L15_2 = 1.0
  L16_2 = 0.1
  for L17_2 = L14_2, L15_2, L16_2 do
    L18_2 = VectorLerp
    L19_2 = L8_2
    L20_2 = L5_2.offset
    L21_2 = L17_2
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L8_2 = L18_2
    L18_2 = vector2
    L19_2 = L6_2.offset
    L19_2 = L19_2.x
    L20_2 = L6_2.offset
    L20_2 = L20_2.y
    L18_2 = L18_2(L19_2, L20_2)
    L19_2 = vector2
    L20_2 = L8_2.x
    L21_2 = L8_2.y
    L19_2 = L19_2(L20_2, L21_2)
    L11_2 = L18_2 - L19_2
    L18_2 = math
    L18_2 = L18_2.sqrt
    L19_2 = L11_2.x
    L19_2 = L19_2 ^ 2
    L20_2 = L11_2.y
    L20_2 = L20_2 ^ 2
    L19_2 = L19_2 + L20_2
    L18_2 = L18_2(L19_2)
    L12_2 = L18_2
    L18_2 = IsBallIntersectsWithBox
    L19_2 = L6_2
    L20_2 = L8_2
    L21_2 = L5_2.size
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L13_2 = L18_2
    if L13_2 then
      break
    end
  end
  L14_2 = L5_2.offset
  A0_2.lastHandledOffset = L14_2
  if L13_2 then
    L14_2 = L6_2.isServing
    if L14_2 then
      L14_2 = vector3
      L15_2 = L9_2.x
      L16_2 = L6_2.isServing
      if 1 == L16_2 then
        L16_2 = -1.0
        if L16_2 then
          goto lbl_103
        end
      end
      L16_2 = 1.0
      ::lbl_103::
      L17_2 = L9_2.z
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L9_2 = L14_2
      L6_2.isServing = nil
    end
    L14_2 = math
    L14_2 = L14_2.atan2
    L15_2 = L11_2.y
    L16_2 = L11_2.x
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = L6_2.bounciness
    L15_2 = -1 * L15_2
    L15_2 = L9_2 * L15_2
    L7_2 = L7_2 * A4_2
    L16_2 = vector3
    L17_2 = A3_2 * 30.0
    L17_2 = -L17_2
    L18_2 = L15_2.y
    L19_2 = L15_2.y
    L19_2 = L19_2 * L7_2
    L19_2 = L19_2 * 0.2
    L18_2 = L18_2 + L19_2
    L19_2 = 0.0
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2 = L16_2
    L16_2 = Vector2Magnitude
    L17_2 = L15_2
    L16_2 = L16_2(L17_2)
    L17_2 = A0_2.getBallSide
    L17_2 = L17_2()
    L18_2 = A0_2.gamemode
    if 3 ~= L18_2 then
      L18_2 = CalculateOffsetXWithVelocity
      L19_2 = A0_2.ballData
      L20_2 = L15_2
      if 1 == L17_2 then
        L21_2 = 1.0
        if L21_2 then
          goto lbl_151
        end
      end
      L21_2 = -1.0
      ::lbl_151::
      L18_2 = L18_2(L19_2, L20_2, L21_2)
      L19_2 = math
      L19_2 = L19_2.abs
      L20_2 = L18_2
      L19_2 = L19_2(L20_2)
      L20_2 = 0.57
      if L19_2 > L20_2 then
        L19_2 = L15_2
        if L18_2 > 0 then
          L20_2 = 0.57
          if L20_2 then
            goto lbl_166
          end
        end
        L20_2 = -0.57
        ::lbl_166::
        L21_2 = CreateVelocityTowardsOffset
        L22_2 = A0_2.ballData
        L23_2 = L20_2
        if 1 == L17_2 then
          L24_2 = 1.0
          if L24_2 then
            goto lbl_175
          end
        end
        L24_2 = -1.0
        ::lbl_175::
        L21_2 = L21_2(L22_2, L23_2, L24_2)
        L22_2 = vector3
        L23_2 = L21_2.x
        L24_2 = L21_2.y
        L25_2 = L19_2.z
        L22_2 = L22_2(L23_2, L24_2, L25_2)
        L21_2 = L22_2
        L22_2 = L6_2.bounciness
        L21_2 = L21_2 * L22_2
        L22_2 = vector3
        L23_2 = L21_2.x
        L23_2 = L23_2 * L16_2
        L23_2 = L23_2 * 1.2
        L24_2 = L21_2.y
        L24_2 = L24_2 * L16_2
        L24_2 = L24_2 * 1.2
        L25_2 = 0.0
        L22_2 = L22_2(L23_2, L24_2, L25_2)
        L21_2 = L22_2
        L15_2 = L21_2
      end
    end
    L18_2 = L6_2.friction
    L19_2 = 1
    L18_2 = L19_2 - L18_2
    L15_2 = L15_2 * L18_2
    L18_2 = Vector2Magnitude
    L19_2 = L15_2
    L18_2 = L18_2(L19_2)
    L19_2 = L6_2.minVelocity
    L19_2 = L19_2 * A4_2
    if L18_2 < L19_2 then
      L19_2 = Vector3Normalize
      L20_2 = L15_2
      L19_2 = L19_2(L20_2)
      L20_2 = L6_2.minVelocity
      L19_2 = L19_2 * L20_2
      L15_2 = L19_2 * A4_2
      L19_2 = Vector2Magnitude
      L20_2 = L15_2
      L19_2 = L19_2(L20_2)
      L18_2 = L19_2
    else
      L19_2 = L6_2.maxVelocity
      L19_2 = L19_2 * A4_2
      if L18_2 > L19_2 then
        L19_2 = Vector3Normalize
        L20_2 = L15_2
        L19_2 = L19_2(L20_2)
        L20_2 = L6_2.maxVelocity
        L15_2 = L19_2 * L20_2
        L19_2 = Vector2Magnitude
        L20_2 = L15_2
        L19_2 = L19_2(L20_2)
        L18_2 = L19_2
      end
    end
    L19_2 = L6_2.maxAirVelocity
    L20_2 = PercentageOf
    L21_2 = L18_2
    L22_2 = 0.0
    L23_2 = L6_2.maxVelocity
    L24_2 = L6_2.maxAirVelocity
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
    L19_2 = L19_2 - L20_2
    L20_2 = vector3
    L21_2 = L15_2.x
    L22_2 = L15_2.y
    L23_2 = L15_2.z
    if L23_2 < 0 then
      L23_2 = L6_2.minAirVelocity
      L23_2 = -L23_2
      L23_2 = L23_2 - L19_2
      if L23_2 then
        goto lbl_266
      end
    end
    L23_2 = L6_2.minAirVelocity
    L23_2 = L23_2 + L19_2
    ::lbl_266::
    L20_2 = L20_2(L21_2, L22_2, L23_2)
    L15_2 = L20_2
    L20_2 = math
    L20_2 = L20_2.abs
    L21_2 = L15_2.z
    L20_2 = L20_2(L21_2)
    L21_2 = L6_2.minAirVelocity
    if L20_2 < L21_2 then
      L20_2 = vector3
      L21_2 = L15_2.x
      L22_2 = L15_2.y
      L23_2 = L15_2.z
      if L23_2 < 0 then
        L23_2 = L6_2.minAirVelocity
        L23_2 = -L23_2
        if L23_2 then
          goto lbl_286
        end
      end
      L23_2 = L6_2.minAirVelocity
      ::lbl_286::
      L20_2 = L20_2(L21_2, L22_2, L23_2)
      L15_2 = L20_2
    else
      L20_2 = math
      L20_2 = L20_2.abs
      L21_2 = L15_2.z
      L20_2 = L20_2(L21_2)
      L21_2 = L6_2.maxAirVelocity
      if L20_2 > L21_2 then
        L20_2 = vector3
        L21_2 = L15_2.x
        L22_2 = L15_2.y
        L23_2 = L15_2.z
        if L23_2 < 0 then
          L23_2 = L6_2.maxAirVelocity
          L23_2 = -L23_2
          if L23_2 then
            goto lbl_307
          end
        end
        L23_2 = L6_2.maxAirVelocity
        ::lbl_307::
        L20_2 = L20_2(L21_2, L22_2, L23_2)
        L15_2 = L20_2
      end
    end
    L20_2 = L10_2 - L12_2
    L21_2 = L11_2 / L12_2
    L21_2 = L21_2 * L20_2
    L21_2 = L21_2 / 2
    L22_2 = vector3
    L23_2 = L21_2.x
    L24_2 = L21_2.y
    L25_2 = 0
    L22_2 = L22_2(L23_2, L24_2, L25_2)
    L21_2 = L22_2
    L22_2 = L6_2.offset
    L22_2 = L22_2 + L21_2
    L23_2 = vector3
    L24_2 = L15_2.x
    L25_2 = L15_2.y
    L26_2 = L15_2.z
    L23_2 = L23_2(L24_2, L25_2, L26_2)
    L24_2 = 1
    L25_2 = 50
    L26_2 = 1
    for L27_2 = L24_2, L25_2, L26_2 do
      L28_2 = CopyTable
      L29_2 = A0_2.ballData
      L28_2 = L28_2(L29_2)
      L28_2.offset = L22_2
      L28_2.velocity = L23_2
      L29_2 = math
      L29_2 = L29_2.abs
      L30_2 = A0_2.predictNextGroundPosition
      L31_2 = L28_2
      L30_2 = L30_2(L31_2)
      L30_2 = L30_2.y
      L29_2 = L29_2(L30_2)
      if L29_2 > 1.0 then
        L30_2 = vector3
        L31_2 = L23_2.x
        L32_2 = L23_2.y
        L33_2 = L23_2.z
        L33_2 = L33_2 - 0.05
        L30_2 = L30_2(L31_2, L32_2, L33_2)
        L23_2 = L30_2
      else
        break
      end
    end
    L24_2 = true
    L25_2 = L22_2
    L26_2 = L23_2
    return L24_2, L25_2, L26_2
  end
  L14_2 = false
  L15_2 = nil
  L16_2 = nil
  return L14_2, L15_2, L16_2
end
HandleBallCollision = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = A0_2.getBallSide
  L1_2 = L1_2()
  L2_2 = RandomFloat
  L3_2 = -0.65
  L4_2 = 0.65
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.gamemode
  if 5 == L3_2 then
    L3_2 = A0_2.getBonusNumberMarkerOfPlayer
    L4_2 = A0_2.botSide
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L2_2 = L3_2.x
    end
  end
  L3_2 = RandomFloat
  L4_2 = A0_2.ballData
  L4_2 = L4_2.maxVelocity
  L4_2 = L4_2 * 0.72
  L5_2 = A0_2.ballData
  L5_2 = L5_2.maxVelocity
  L5_2 = L5_2 * 1.0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = RandomFloat
  L5_2 = A0_2.ballData
  L5_2 = L5_2.minAirVelocity
  L6_2 = A0_2.ballData
  L6_2 = L6_2.maxAirVelocity
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = CreateVelocityTowardsOffset
  L6_2 = A0_2.ballData
  L7_2 = L2_2
  if 1 == L1_2 then
    L8_2 = 1.0
    if L8_2 then
      goto lbl_41
    end
  end
  L8_2 = -1.0
  ::lbl_41::
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L5_2 = L5_2 * L3_2
  L6_2 = vector3
  L7_2 = L5_2.x
  L8_2 = L5_2.y
  L9_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L6_2
  L6_2 = A0_2.ballData
  L6_2 = L6_2.offset
  L7_2 = vector3
  L8_2 = L5_2.x
  L9_2 = L5_2.y
  L10_2 = L5_2.z
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = Vector2Magnitude
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L9_2 = A0_2.ballData
  L9_2 = L9_2.minVelocity
  if L8_2 < L9_2 then
    L9_2 = Vector3Normalize
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L10_2 = A0_2.ballData
    L10_2 = L10_2.minVelocity
    L7_2 = L9_2 * L10_2
  else
    L9_2 = A0_2.ballData
    L9_2 = L9_2.maxVelocity
    if L8_2 > L9_2 then
      L9_2 = Vector3Normalize
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L10_2 = A0_2.ballData
      L10_2 = L10_2.maxVelocity
      L7_2 = L9_2 * L10_2
    end
  end
  L9_2 = math
  L9_2 = L9_2.abs
  L10_2 = L7_2.z
  L9_2 = L9_2(L10_2)
  L10_2 = A0_2.ballData
  L10_2 = L10_2.minAirVelocity
  if L9_2 < L10_2 then
    L9_2 = vector3
    L10_2 = L7_2.x
    L11_2 = L7_2.y
    L12_2 = L7_2.z
    if L12_2 < 0 then
      L12_2 = A0_2.ballData
      L12_2 = L12_2.minAirVelocity
      L12_2 = -L12_2
      if L12_2 then
        goto lbl_104
      end
    end
    L12_2 = A0_2.ballData
    L12_2 = L12_2.minAirVelocity
    ::lbl_104::
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L7_2 = L9_2
  else
    L9_2 = math
    L9_2 = L9_2.abs
    L10_2 = L7_2.z
    L9_2 = L9_2(L10_2)
    L10_2 = A0_2.ballData
    L10_2 = L10_2.maxAirVelocity
    if L9_2 > L10_2 then
      L9_2 = vector3
      L10_2 = L7_2.x
      L11_2 = L7_2.y
      L12_2 = L7_2.z
      if L12_2 < 0 then
        L12_2 = A0_2.ballData
        L12_2 = L12_2.maxAirVelocity
        L12_2 = -L12_2
        if L12_2 then
          goto lbl_128
        end
      end
      L12_2 = A0_2.ballData
      L12_2 = L12_2.maxAirVelocity
      ::lbl_128::
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L7_2 = L9_2
    end
  end
  L9_2 = 1
  L10_2 = 50
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = CopyTable
    L14_2 = A0_2.ballData
    L13_2 = L13_2(L14_2)
    L13_2.offset = L6_2
    L13_2.velocity = L7_2
    L14_2 = A0_2.predictNextGroundPosition
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    L14_2 = L14_2.y
    L15_2 = math
    L15_2 = L15_2.abs
    L16_2 = L14_2
    L15_2 = L15_2(L16_2)
    if L15_2 > 1.0 then
      L15_2 = vector3
      L16_2 = L7_2.x
      L17_2 = L7_2.y
      L18_2 = L7_2.z
      L18_2 = L18_2 - 0.05
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L7_2 = L15_2
    else
      break
    end
  end
  L9_2 = A0_2.ballData
  L9_2.velocity = L7_2
  L9_2 = A0_2.ballData
  L9_2.isServing = nil
  L9_2 = A0_2.setSlowDownForTurn
  L10_2 = 0
  L11_2 = A0_2.botSide
  L9_2(L10_2, L11_2)
end
HandleAIBounce = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.offset
  L3_2 = L3_2.y
  L3_2 = A2_2 - L3_2
  L4_2 = A1_2.y
  L3_2 = L3_2 / L4_2
  L4_2 = A0_2.offset
  L4_2 = L4_2.x
  L5_2 = A1_2.x
  L5_2 = L5_2 * L3_2
  L4_2 = L4_2 + L5_2
  return L4_2
end
CalculateOffsetXWithVelocity = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = vector3
  L4_2 = A0_2.offset
  L4_2 = L4_2.x
  L4_2 = A1_2 - L4_2
  L5_2 = A0_2.offset
  L5_2 = L5_2.y
  L5_2 = A2_2 - L5_2
  L6_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = Vector3Normalize
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  return L3_2
end
CreateVelocityTowardsOffset = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = A0_2.ballData
  if not L4_2 then
    L4_2 = A0_2
  end
  L5_2 = vector3
  L6_2 = 0
  L7_2 = 0
  L8_2 = -9.81
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = Vector3Magnitude
  L7_2 = L4_2.velocity
  L6_2 = L6_2(L7_2)
  L7_2 = L4_2.drag
  L7_2 = -1 * L7_2
  L7_2 = L7_2 * L6_2
  L8_2 = L4_2.velocity
  L7_2 = L7_2 * L8_2
  L8_2 = L4_2.mass
  L8_2 = L8_2 * L5_2
  L8_2 = L8_2 + L7_2
  L9_2 = L4_2.mass
  L9_2 = L8_2 / L9_2
  L10_2 = L4_2.velocity
  L11_2 = L9_2 * A1_2
  L10_2 = L10_2 + L11_2
  L4_2.velocity = L10_2
  L10_2 = L4_2.offset
  L11_2 = L4_2.velocity
  L11_2 = L11_2 * A1_2
  L10_2 = L10_2 + L11_2
  L4_2.offset = L10_2
  if A3_2 then
    L10_2 = L4_2.velocity
    L10_2 = L10_2.x
    if L10_2 < 0 then
      L10_2 = L4_2.offset
      L10_2 = L10_2.x
      L11_2 = -0.5799
      if L10_2 < L11_2 then
        L10_2 = vector3
        L11_2 = L4_2.velocity
        L11_2 = L11_2.x
        L11_2 = -L11_2
        L12_2 = L4_2.velocity
        L12_2 = L12_2.y
        L13_2 = L4_2.velocity
        L13_2 = L13_2.z
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L4_2.velocity = L10_2
        L10_2 = A0_2.bounceEffect
        if L10_2 then
          L10_2 = A0_2.bounceEffect
          L11_2 = 1
          L10_2(L11_2)
        end
    end
    else
      L10_2 = L4_2.velocity
      L10_2 = L10_2.x
      if L10_2 > 0 then
        L10_2 = L4_2.offset
        L10_2 = L10_2.x
        L11_2 = 0.5799
        if L10_2 > L11_2 then
          L10_2 = vector3
          L11_2 = L4_2.velocity
          L11_2 = L11_2.x
          L11_2 = -L11_2
          L12_2 = L4_2.velocity
          L12_2 = L12_2.y
          L13_2 = L4_2.velocity
          L13_2 = L13_2.z
          L10_2 = L10_2(L11_2, L12_2, L13_2)
          L4_2.velocity = L10_2
          L10_2 = A0_2.bounceEffect
          if L10_2 then
            L10_2 = A0_2.bounceEffect
            L11_2 = 2
            L10_2(L11_2)
          end
        end
      end
    end
  end
  L10_2 = A0_2.ignoreFailUntil
  if L10_2 then
    L10_2 = GetGameTimer
    L10_2 = L10_2()
    L11_2 = A0_2.ignoreFailUntil
    L10_2 = L10_2 < L11_2
  end
  if A2_2 then
    L11_2 = L4_2.offset
    L11_2 = L11_2.z
    L12_2 = L4_2.ground
    if L11_2 <= L12_2 then
      L11_2 = true
      L12_2 = A0_2.isBallOnTable
      L13_2 = 0.07
      L12_2 = L12_2(L13_2)
      if not L12_2 and not L10_2 then
        L12_2 = A0_2.onBallFellDown
        L12_2()
        return
      end
      L12_2 = vector3
      L13_2 = L4_2.velocity
      L13_2 = L13_2.x
      L14_2 = L4_2.velocity
      L14_2 = L14_2.y
      L15_2 = L4_2.velocity
      L15_2 = L15_2.z
      L16_2 = L4_2.bounciness
      L16_2 = -1 * L16_2
      L15_2 = L15_2 * L16_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L4_2.velocity = L12_2
      L12_2 = vector3
      L13_2 = L4_2.offset
      L13_2 = L13_2.x
      L14_2 = L4_2.offset
      L14_2 = L14_2.y
      L15_2 = L4_2.ground
      L16_2 = L4_2.ground
      L17_2 = L4_2.offset
      L17_2 = L17_2.z
      L16_2 = L16_2 - L17_2
      L15_2 = L15_2 + L16_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L4_2.offset = L12_2
      L12_2 = L4_2.velocity
      L13_2 = L4_2.friction
      L14_2 = 1
      L13_2 = L14_2 - L13_2
      L12_2 = L12_2 * L13_2
      L4_2.velocity = L12_2
      L12_2 = L4_2.velocity
      L12_2 = L12_2.z
      L13_2 = L4_2.minBounceOffVelocity
      if L12_2 < L13_2 then
        L12_2 = vector3
        L13_2 = L4_2.velocity
        L13_2 = L13_2.x
        L14_2 = L4_2.velocity
        L14_2 = L14_2.y
        L15_2 = L4_2.minBounceOffVelocity
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L4_2.velocity = L12_2
      end
      L12_2 = Vector3Magnitude
      L13_2 = vector3
      L14_2 = L4_2.velocity
      L14_2 = L14_2.x
      L15_2 = L4_2.velocity
      L15_2 = L15_2.y
      L16_2 = 0
      L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2, L15_2, L16_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
      L13_2 = L4_2.minVelocity
      if L12_2 < L13_2 then
        L13_2 = Vector3Normalize
        L14_2 = vector3
        L15_2 = L4_2.velocity
        L15_2 = L15_2.x
        L16_2 = L4_2.velocity
        L16_2 = L16_2.y
        L17_2 = 0
        L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2, L16_2, L17_2)
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
        L14_2 = vector3
        L15_2 = L13_2.x
        L16_2 = L4_2.minVelocity
        L15_2 = L15_2 * L16_2
        L16_2 = L13_2.y
        L17_2 = L4_2.minVelocity
        L16_2 = L16_2 * L17_2
        L17_2 = L4_2.velocity
        L17_2 = L17_2.z
        L14_2 = L14_2(L15_2, L16_2, L17_2)
        L4_2.velocity = L14_2
      end
      L13_2 = A0_2.onBallBounceOffTable
      L13_2()
      L13_2 = A0_2.refreshBallMarker
      L13_2()
    end
  end
end
SimulateBallPhysics = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.offset
  L2_2 = L2_2.y
  L3_2 = nil
  L4_2 = A0_2.velocity
  L4_2 = L4_2.y
  if L4_2 > 0 then
    L3_2 = L2_2 + 1.4
  else
    L4_2 = A0_2.velocity
    L4_2 = L4_2.y
    if L4_2 < 0 then
      L3_2 = L2_2 - 1.4
    else
      L4_2 = 0
      return L4_2
    end
  end
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = L3_2 - L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.sqrt
  L6_2 = 2 * L4_2
  L7_2 = math
  L7_2 = L7_2.abs
  L8_2 = A0_2.velocity
  L8_2 = L8_2.y
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 / L7_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 / A1_2
  L6_2 = A0_2.velocity
  L6_2 = L6_2.y
  L6_2 = L6_2 * L5_2
  L6_2 = L2_2 + L6_2
  L7_2 = L5_2
  L8_2 = L6_2
  return L7_2, L8_2
end
CalculateDurationToReachEnd = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.ballData
  if not L2_2 then
    L2_2 = A0_2
  end
  L3_2 = L2_2.offset
  L3_2 = L3_2.y
  L3_2 = A1_2 - L3_2
  L4_2 = L2_2.velocity
  L4_2 = L4_2.y
  L3_2 = L3_2 / L4_2
  L4_2 = L2_2.offset
  L4_2 = L4_2.x
  L5_2 = L2_2.velocity
  L5_2 = L5_2.x
  L5_2 = L5_2 * L3_2
  L4_2 = L4_2 + L5_2
  return L4_2
end
CalculateXFromVelocity = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.ballData
  if not L2_2 then
    L2_2 = A0_2
  end
  L3_2 = L2_2.offset
  L3_2 = A1_2 - L3_2
  L4_2 = Vector3Magnitude
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L4_2 = L3_2 / L4_2
  return L4_2
end
CalculateVelocity = L0_1

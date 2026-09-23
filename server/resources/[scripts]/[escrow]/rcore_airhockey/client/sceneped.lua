local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DeleteEntity
    L7_2 = L5_2.clone
    L6_2(L7_2)
  end
  L0_2 = {}
  L0_1 = L0_2
end
DestroyAllScenePeds = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.ped
    if L6_2 then
      L6_2 = L5_2.used
      if L6_2 then
        L6_2 = SetEntityLocallyInvisible
        L7_2 = L5_2.ped
        L6_2(L7_2)
      end
    end
  end
end
ScenePed_ProcessPedsThisFrame = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A0_2 or not A1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = L2_2.netId
    if L3_2 == A1_2 then
      L3_2 = L2_2.clone
      if L3_2 then
        L3_2 = DoesEntityExist
        L4_2 = L2_2.clone
        L3_2 = L3_2(L4_2)
        if L3_2 then
          return L2_2
        end
      end
    else
      L3_2 = L2_2.clone
      if L3_2 then
        L3_2 = DoesEntityExist
        L4_2 = L2_2.clone
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = DeleteEntity
          L4_2 = L2_2.clone
          L3_2(L4_2)
          L2_2.clone = nil
        end
      end
    end
  end
  L3_2 = NetToPed
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 or 0 == L3_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = GetEntityModel
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if 0 ~= L4_2 then
    L5_2 = 1
    L6_2 = 60
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = HasModelLoaded
      L10_2 = L4_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        break
      end
      L9_2 = RequestModel
      L10_2 = L4_2
      L9_2(L10_2)
      L9_2 = Wait
      L10_2 = 33
      L9_2(L10_2)
    end
  else
    L5_2 = print
    L6_2 = "^1Error: Model of playerid "
    L7_2 = A0_2
    L8_2 = " can't be loaded.^7"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
  end
  L5_2 = HasModelLoaded
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = print
    L6_2 = "^1Error: Model "
    L7_2 = L4_2
    L8_2 = " of playerid "
    L9_2 = A0_2
    L10_2 = " didn't load.^7"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
    L5_2(L6_2)
    L5_2 = nil
    return L5_2
  end
  L5_2 = nil
  L6_2 = HasPedHeadBlendFinished
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = ClonePed
    L7_2 = L3_2
    L8_2 = false
    L9_2 = false
    L10_2 = true
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L5_2 = L6_2
  end
  L6_2 = L0_1
  L7_2 = {}
  L7_2.used = false
  L7_2.playerId = A0_2
  L7_2.netId = A1_2
  L7_2.ped = L3_2
  L7_2.clone = L5_2
  L8_2 = GetEntityCoords
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L7_2.initialCoords = L8_2
  L6_2[A0_2] = L7_2
  L6_2 = Wait
  L7_2 = 33
  L6_2(L7_2)
  L6_2 = GetGameTimer
  L6_2 = L6_2()
  L6_2 = L6_2 + 1000
  while L5_2 do
    L7_2 = DoesEntityExist
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      break
    end
    L7_2 = GetGameTimer
    L7_2 = L7_2()
    if not (L6_2 > L7_2) then
      break
    end
    L7_2 = Wait
    L8_2 = 0
    L7_2(L8_2)
  end
  L7_2 = SetEntityAlpha
  L8_2 = L5_2
  L9_2 = 0
  L10_2 = false
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = DoesEntityExist
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = print
    L8_2 = "^1Error: Ped for player "
    L9_2 = A0_2
    L10_2 = " couldn't be created.^7"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L7_2(L8_2)
  else
    L7_2 = SetEntityCompletelyDisableCollision
    L8_2 = L5_2
    L9_2 = false
    L10_2 = false
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = SetPedBrave
    L8_2 = L5_2
    L7_2(L8_2)
  end
  L7_2 = Wait
  L8_2 = 33
  L7_2(L8_2)
  L7_2 = L0_1
  L7_2 = L7_2[A0_2]
  return L7_2
end
GetCloneOfNetworkedPed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.used
  if A1_2 ~= L2_2 then
    L2_2 = SetEntityAlpha
    L3_2 = A0_2.clone
    if A1_2 then
      L4_2 = 255
      if L4_2 then
        goto lbl_12
      end
    end
    L4_2 = 0
    ::lbl_12::
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    A0_2.used = A1_2
  end
end
ToggleUse = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = L1_2.netId
  L3_2 = L1_2.clone
  L4_2 = L1_2.clone
  if L4_2 then
    L4_2 = L1_2.ped
    L1_2.ped = nil
    L5_2 = Wait
    L6_2 = 33
    L5_2(L6_2)
    L5_2 = DeleteEntity
    L6_2 = L1_2.clone
    L5_2(L6_2)
    L1_2.clone = nil
  end
  L4_2 = L0_1
  L4_2[A0_2] = nil
end
ScenePed_EndForPlayer = L1_1
L1_1 = AddEventHandler
L2_1 = "onResourceStop"
function L3_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = DestroyAllScenePeds
  L1_2()
end
L1_1(L2_1, L3_1)
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = PedToNet
  L1_2 = PlayerPedId
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = NetToPed
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if L1_2 == L2_2 then
    return L0_2
  else
    L1_2 = nil
    return L1_2
  end
end
GetMyPedNetworkId = L1_1
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = ScenePed_ProcessPedsThisFrame
    L0_2()
    L0_2 = GetGameTimer
    L0_2 = L0_2()
    L1_2 = lastPackReceivedTime
    L0_2 = L0_2 - L1_2
    L1_2 = Wait
    L2_2 = 3000
    if L0_2 > L2_2 then
      L2_2 = 200
      if L2_2 then
        goto lbl_16
      end
    end
    L2_2 = 0
    ::lbl_16::
    L1_2(L2_2)
  end
end
L1_1(L2_1)

local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = nil
L1_1 = nil
L2_1 = nil
OnDuty = false
JobVehicleNetId = nil
wearing = false
blockTruckDoors = false
L3_1 = 0
L4_1 = false
function L5_1()
  local L0_2, L1_2
  L0_2 = blockTruckDoors
  L0_2 = not L0_2
  return L0_2
end
canInteractWithVeh = L5_1
L5_1 = nil
L6_1 = {}
L7_1 = 0
L8_1 = {}
L9_1 = GetPlayerServerId
L10_1 = PlayerId
L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1 = L10_1()
L9_1 = L9_1(L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1)
L10_1 = true
L11_1 = ""
L12_1 = false
L13_1 = false
L14_1 = RegisterNUICallback
L15_1 = "driverLoaded"
function L16_1()
  local L0_2, L1_2
  L0_2 = true
  L12_1 = L0_2
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "nuiLoaded"
function L16_1()
  local L0_2, L1_2
  L0_2 = true
  L13_1 = L0_2
end
L14_1(L15_1, L16_1)
L14_1 = CreateThread
function L15_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = L12_1
    if L0_2 then
      break
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  L0_2 = Config
  L0_2 = L0_2.useModernUI
  if L0_2 then
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.ui = "new"
    L0_2(L1_2)
  else
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.ui = "old"
    L0_2(L1_2)
    L0_2 = true
    L13_1 = L0_2
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 500
    L0_2(L1_2)
  end
  while true do
    L0_2 = L13_1
    if L0_2 then
      break
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "setProgressBarAlign"
  L2_2 = Config
  L2_2 = L2_2.ProgressBarAlign
  L1_2.align = L2_2
  L2_2 = Config
  L2_2 = L2_2.ProgressBarOffset
  L1_2.offset = L2_2
  L0_2(L1_2)
  L0_2 = Config
  L0_2 = L0_2.EnableCloakroom
  if not L0_2 then
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "hideCloakroom"
    L0_2(L1_2)
  end
end
L14_1(L15_1)
L14_1 = RegisterNUICallback
L15_1 = "tutorialClosed"
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  tutorialOpen = false
  L0_2 = ""
  L11_1 = L0_2
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "menuClosed"
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = false
  L10_1 = L0_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "dontShowTutorialAgain"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetResourceKvpInt
  L3_2 = "17mov_Tutorials:"
  L4_2 = L11_1
  L3_2 = L3_2 .. L4_2
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "17mov_deliverer:SetMyReward"
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateMyReward"
  L2_2.reward = A0_2
  L1_2(L2_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "17mov_deliverer:UpdateHostPercentages"
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateHostRewards"
  L2_2.value = A0_2
  L1_2(L2_2)
end
L14_1(L15_1, L16_1)
L14_1 = Config
L14_1 = L14_1.letBossSplitReward
if L14_1 then
  L14_1 = RegisterNUICallback
  L15_1 = "checkIfThisRewardIsFine"
  function L16_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = A0_2.value
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2.plyId
    if L2_2 > 100 or L2_2 < 0 then
      L4_2 = Notify
      L5_2 = Config
      L5_2 = L5_2.Lang
      L5_2 = L5_2.wrongReward1
      L4_2(L5_2)
      L4_2 = A1_2
      L5_2 = false
      L4_2(L5_2)
      return
    end
    L4_2 = TriggerServerCallback
    L5_2 = "17mov_deliverer:CheckThisReward"
    function L6_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A1_2
        L2_3 = true
        L1_3(L2_3)
      else
        L1_3 = A1_2
        L2_3 = false
        L1_3(L2_3)
        L1_3 = Notify
        L2_3 = Config
        L2_3 = L2_3.Lang
        L2_3 = L2_3.wrongReward2
        L1_3(L2_3)
      end
    end
    L7_2 = L2_2
    L8_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L14_1(L15_1, L16_1)
else
  L14_1 = CreateThread
  function L15_1()
    local L0_2, L1_2
    while true do
      L0_2 = L13_1
      if L0_2 then
        break
      end
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 100
      L0_2(L1_2)
    end
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "hideManageRewards"
    L0_2(L1_2)
  end
  L14_1(L15_1)
end
L14_1 = RegisterNetEvent
L15_1 = "17mov_deliverer:clearMyLobby"
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L8_1 = L0_2
  L0_2 = TriggerServerCallback
  L1_2 = "17mov_deliverer:init"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "Init"
    L3_3 = A0_3.name
    L2_3.name = L3_3
    L3_3 = A0_3.source
    L2_3.myId = L3_3
    L1_3(L2_3)
    L1_3 = true
    L4_1 = L1_3
  end
  L0_2(L1_2, L2_2)
end
L14_1(L15_1, L16_1)
function L14_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L7_1
  L2_2 = L2_2 + 1
  L7_1 = L2_2
  L2_2 = L7_1
  myId = L2_2
  L2_2 = L6_1
  L3_2 = {}
  L2_2[A0_2] = L3_2
  L2_2 = L6_1
  L2_2 = L2_2[A0_2]
  L3_2 = myId
  L2_2[L3_2] = A1_2
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_Callbacks:GetResponse"
  L4_2 = GetCurrentResourceName
  L4_2 = L4_2()
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L5_2 = myId
  L6_2 = ...
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
TriggerServerCallback = L14_1
L14_1 = RegisterNetEvent
L15_1 = "17mov_Callbacks:receiveData"
L16_1 = GetCurrentResourceName
L16_1 = L16_1()
L15_1 = L15_1 .. L16_1
function L16_1(A0_2, A1_2, ...)
  local L2_2, L3_2
  L2_2 = L6_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L6_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = L6_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = ...
  L2_2(L3_2)
  L2_2 = L6_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L6_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      L2_2 = L6_1
      L2_2 = L2_2[A0_2]
      L2_2[A1_2] = nil
    end
  end
  L2_2 = L6_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L6_1
    L2_2 = L2_2[A0_2]
    L2_2 = #L2_2
    if 0 == L2_2 then
      L2_2 = L6_1
      L2_2[A0_2] = nil
    end
  end
end
L14_1(L15_1, L16_1)
L14_1 = false
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2
  L1_2 = L14_1
  if L1_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = A0_2.job
    L1_2 = L1_2.name
    L2_2 = Config
    L2_2 = L2_2.RequiredJob
    if L1_2 ~= L2_2 then
      L1_2 = false
      L14_1 = L1_2
      return
    end
  end
  L1_2 = true
  L14_1 = L1_2
  L1_2 = Config
  L1_2 = L1_2.UseTarget
  if L1_2 then
    L1_2 = SpawnStartingPed
    L1_2()
    L1_2 = {}
    L2_2 = Config
    L2_2 = L2_2.Locations
    L2_2 = L2_2.FinishJob
    L1_2.FinishJob = L2_2
    while true do
      L2_2 = L14_1
      if not L2_2 then
        break
      end
      L2_2 = Citizen
      L2_2 = L2_2.Wait
      L3_2 = 0
      L2_2(L3_2)
      L2_2 = GetEntityCoords
      L3_2 = PlayerPedId
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L3_2()
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
      L3_2 = false
      L4_2 = false
      L5_2 = true
      L6_2 = nil
      L7_2 = nil
      L8_2 = nil
      L9_2 = Config
      L9_2 = L9_2.RequiredJob
      if "none" ~= L9_2 then
        L9_2 = A0_2.job
        L9_2 = L9_2.name
        L10_2 = Config
        L10_2 = L10_2.RequiredJob
        if L9_2 == L10_2 then
          goto lbl_61
        end
      end
      L9_2 = Config
      L9_2 = L9_2.RequiredJob
      ::lbl_61::
      if "none" == L9_2 then
        L9_2 = pairs
        L10_2 = L1_2
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
          L15_2 = L14_2.grade
          if L15_2 then
            L15_2 = A0_2.job
            L15_2 = L15_2.grade
            L16_2 = L14_2.grade
            if not (L15_2 >= L16_2) then
              goto lbl_195
            end
          end
          L15_2 = OnDuty
          if not L15_2 then
            L15_2 = L14_2.type
            if "duty" ~= L15_2 then
              goto lbl_195
            end
          end
          L15_2 = pairs
          L16_2 = L14_2.Coords
          L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
          for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
            L21_2 = L2_2 - L20_2
            L21_2 = #L21_2
            if L21_2 < 20 then
              L22_2 = L14_2.scale
              L22_2 = L22_2.x
              if L21_2 > L22_2 then
                L22_2 = DrawMarker
                L23_2 = 6
                L24_2 = L20_2.x
                L25_2 = L20_2.y
                L26_2 = L20_2.z
                L26_2 = L26_2 - 1
                L27_2 = 0.0
                L28_2 = 0.0
                L29_2 = 0.0
                L30_2 = -90.0
                L31_2 = 0.0
                L32_2 = 0.0
                L33_2 = L14_2.scale
                L33_2 = L33_2.x
                L34_2 = L14_2.scale
                L34_2 = L34_2.y
                L35_2 = L14_2.scale
                L35_2 = L35_2.z
                L36_2 = Config
                L36_2 = L36_2.MarkerSettings
                L36_2 = L36_2.UnActive
                L36_2 = L36_2.r
                L37_2 = Config
                L37_2 = L37_2.MarkerSettings
                L37_2 = L37_2.UnActive
                L37_2 = L37_2.g
                L38_2 = Config
                L38_2 = L38_2.MarkerSettings
                L38_2 = L38_2.UnActive
                L38_2 = L38_2.b
                L39_2 = Config
                L39_2 = L39_2.MarkerSettings
                L39_2 = L39_2.UnActive
                L39_2 = L39_2.a
                L40_2 = false
                L41_2 = false
                L42_2 = 2
                L43_2 = false
                L44_2 = false
                L45_2 = false
                L46_2 = false
                L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
                L5_2 = false
            end
            else
              L22_2 = L14_2.scale
              L22_2 = L22_2.x
              if L21_2 < L22_2 then
                L5_2 = false
                L22_2 = DrawMarker
                L23_2 = 6
                L24_2 = L20_2.x
                L25_2 = L20_2.y
                L26_2 = L20_2.z
                L26_2 = L26_2 - 1
                L27_2 = 0.0
                L28_2 = 0.0
                L29_2 = 0.0
                L30_2 = -90.0
                L31_2 = 0.0
                L32_2 = 0.0
                L33_2 = L14_2.scale
                L33_2 = L33_2.x
                L34_2 = L14_2.scale
                L34_2 = L34_2.y
                L35_2 = L14_2.scale
                L35_2 = L35_2.z
                L36_2 = Config
                L36_2 = L36_2.MarkerSettings
                L36_2 = L36_2.Active
                L36_2 = L36_2.r
                L37_2 = Config
                L37_2 = L37_2.MarkerSettings
                L37_2 = L37_2.Active
                L37_2 = L37_2.g
                L38_2 = Config
                L38_2 = L38_2.MarkerSettings
                L38_2 = L38_2.Active
                L38_2 = L38_2.b
                L39_2 = Config
                L39_2 = L39_2.MarkerSettings
                L39_2 = L39_2.Active
                L39_2 = L39_2.a
                L40_2 = false
                L41_2 = false
                L42_2 = 2
                L43_2 = false
                L44_2 = false
                L45_2 = false
                L46_2 = false
                L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
                L22_2 = true
                L23_2 = L13_2
                L24_2 = L13_2
                L8_2 = Iterator
                L7_2 = L24_2
                L6_2 = L23_2
                L3_2 = L22_2
              end
            end
          end
          ::lbl_195::
        end
        if L3_2 then
          L9_2 = HasAlreadyEnteredMarker
          if not L9_2 then
            goto lbl_214
          end
        end
        if L3_2 then
          L9_2 = LastStation
          if L9_2 == L6_2 then
            L9_2 = LastPart
            if L9_2 == L7_2 then
              L9_2 = LastPartNum
              if L9_2 == L8_2 then
                goto lbl_247
              end
            end
          end
          ::lbl_214::
          L9_2 = LastStation
          if L9_2 then
            L9_2 = LastPart
            if L9_2 then
              L9_2 = LastPartNum
              if L9_2 then
                L9_2 = LastStation
                if L9_2 == L6_2 then
                  L9_2 = LastPart
                  if L9_2 == L7_2 then
                    L9_2 = LastPartNum
                    if L9_2 == L8_2 then
                      goto lbl_239
                    end
                  end
                end
                L9_2 = TriggerEvent
                L10_2 = "17mov_deliverer:ExitedMarker"
                L11_2 = LastStation
                L12_2 = LastPart
                L13_2 = LastPartNum
                L9_2(L10_2, L11_2, L12_2, L13_2)
                L4_2 = true
              end
            end
          end
          ::lbl_239::
          HasAlreadyEnteredMarker = true
          LastStation = L6_2
          LastPart = L7_2
          LastPartNum = L8_2
          L9_2 = TriggerEvent
          L10_2 = "17mov_deliverer:EnteredMarker"
          L11_2 = L7_2
          L9_2(L10_2, L11_2)
        end
        ::lbl_247::
        if not L4_2 and not L3_2 then
          L9_2 = HasAlreadyEnteredMarker
          if L9_2 then
            HasAlreadyEnteredMarker = false
            L9_2 = TriggerEvent
            L10_2 = "17mov_deliverer:ExitedMarker"
            L11_2 = LastStation
            L12_2 = LastPart
            L13_2 = LastPartNum
            L9_2(L10_2, L11_2, L12_2, L13_2)
          end
        end
        if L5_2 then
          L9_2 = Citizen
          L9_2 = L9_2.Wait
          L10_2 = 500
          L9_2(L10_2)
        end
      end
    end
    L2_2 = DeleteEntity
    L3_2 = spawnedPed
    L2_2(L3_2)
  else
    while true do
      L1_2 = L14_1
      if not L1_2 then
        break
      end
      L1_2 = Citizen
      L1_2 = L1_2.Wait
      L2_2 = 0
      L1_2(L2_2)
      L1_2 = GetEntityCoords
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
      L2_2 = false
      L3_2 = false
      L4_2 = true
      L5_2 = nil
      L6_2 = nil
      L7_2 = nil
      L8_2 = Config
      L8_2 = L8_2.RequiredJob
      if "none" ~= L8_2 then
        L8_2 = A0_2.job
        L8_2 = L8_2.name
        L9_2 = Config
        L9_2 = L9_2.RequiredJob
        if L8_2 == L9_2 then
          goto lbl_301
        end
      end
      L8_2 = Config
      L8_2 = L8_2.RequiredJob
      ::lbl_301::
      if "none" == L8_2 then
        L8_2 = pairs
        L9_2 = Config
        L9_2 = L9_2.Locations
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
          L14_2 = L13_2.grade
          if L14_2 then
            L14_2 = A0_2.job
            L14_2 = L14_2.grade
            L15_2 = L13_2.grade
            if not (L14_2 >= L15_2) then
              goto lbl_436
            end
          end
          L14_2 = OnDuty
          if not L14_2 then
            L14_2 = L13_2.type
            if "duty" ~= L14_2 then
              goto lbl_436
            end
          end
          L14_2 = pairs
          L15_2 = L13_2.Coords
          L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
          for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
            L20_2 = L1_2 - L19_2
            L20_2 = #L20_2
            if L20_2 < 20 then
              L21_2 = L13_2.scale
              L21_2 = L21_2.x
              if L20_2 > L21_2 then
                L21_2 = DrawMarker
                L22_2 = 6
                L23_2 = L19_2.x
                L24_2 = L19_2.y
                L25_2 = L19_2.z
                L25_2 = L25_2 - 1
                L26_2 = 0.0
                L27_2 = 0.0
                L28_2 = 0.0
                L29_2 = -90.0
                L30_2 = 0.0
                L31_2 = 0.0
                L32_2 = L13_2.scale
                L32_2 = L32_2.x
                L33_2 = L13_2.scale
                L33_2 = L33_2.y
                L34_2 = L13_2.scale
                L34_2 = L34_2.z
                L35_2 = Config
                L35_2 = L35_2.MarkerSettings
                L35_2 = L35_2.UnActive
                L35_2 = L35_2.r
                L36_2 = Config
                L36_2 = L36_2.MarkerSettings
                L36_2 = L36_2.UnActive
                L36_2 = L36_2.g
                L37_2 = Config
                L37_2 = L37_2.MarkerSettings
                L37_2 = L37_2.UnActive
                L37_2 = L37_2.b
                L38_2 = Config
                L38_2 = L38_2.MarkerSettings
                L38_2 = L38_2.UnActive
                L38_2 = L38_2.a
                L39_2 = false
                L40_2 = false
                L41_2 = 2
                L42_2 = false
                L43_2 = false
                L44_2 = false
                L45_2 = false
                L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
                L4_2 = false
            end
            else
              L21_2 = L13_2.scale
              L21_2 = L21_2.x
              if L20_2 < L21_2 then
                L4_2 = false
                L21_2 = DrawMarker
                L22_2 = 6
                L23_2 = L19_2.x
                L24_2 = L19_2.y
                L25_2 = L19_2.z
                L25_2 = L25_2 - 1
                L26_2 = 0.0
                L27_2 = 0.0
                L28_2 = 0.0
                L29_2 = -90.0
                L30_2 = 0.0
                L31_2 = 0.0
                L32_2 = L13_2.scale
                L32_2 = L32_2.x
                L33_2 = L13_2.scale
                L33_2 = L33_2.y
                L34_2 = L13_2.scale
                L34_2 = L34_2.z
                L35_2 = Config
                L35_2 = L35_2.MarkerSettings
                L35_2 = L35_2.Active
                L35_2 = L35_2.r
                L36_2 = Config
                L36_2 = L36_2.MarkerSettings
                L36_2 = L36_2.Active
                L36_2 = L36_2.g
                L37_2 = Config
                L37_2 = L37_2.MarkerSettings
                L37_2 = L37_2.Active
                L37_2 = L37_2.b
                L38_2 = Config
                L38_2 = L38_2.MarkerSettings
                L38_2 = L38_2.Active
                L38_2 = L38_2.a
                L39_2 = false
                L40_2 = false
                L41_2 = 2
                L42_2 = false
                L43_2 = false
                L44_2 = false
                L45_2 = false
                L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
                L21_2 = true
                L22_2 = L12_2
                L23_2 = L12_2
                L7_2 = Iterator
                L6_2 = L23_2
                L5_2 = L22_2
                L2_2 = L21_2
              end
            end
          end
          ::lbl_436::
        end
        if L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if not L8_2 then
            goto lbl_455
          end
        end
        if L2_2 then
          L8_2 = LastStation
          if L8_2 == L5_2 then
            L8_2 = LastPart
            if L8_2 == L6_2 then
              L8_2 = LastPartNum
              if L8_2 == L7_2 then
                goto lbl_488
              end
            end
          end
          ::lbl_455::
          L8_2 = LastStation
          if L8_2 then
            L8_2 = LastPart
            if L8_2 then
              L8_2 = LastPartNum
              if L8_2 then
                L8_2 = LastStation
                if L8_2 == L5_2 then
                  L8_2 = LastPart
                  if L8_2 == L6_2 then
                    L8_2 = LastPartNum
                    if L8_2 == L7_2 then
                      goto lbl_480
                    end
                  end
                end
                L8_2 = TriggerEvent
                L9_2 = "17mov_deliverer:ExitedMarker"
                L10_2 = LastStation
                L11_2 = LastPart
                L12_2 = LastPartNum
                L8_2(L9_2, L10_2, L11_2, L12_2)
                L3_2 = true
              end
            end
          end
          ::lbl_480::
          HasAlreadyEnteredMarker = true
          LastStation = L5_2
          LastPart = L6_2
          LastPartNum = L7_2
          L8_2 = TriggerEvent
          L9_2 = "17mov_deliverer:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_488::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_deliverer:ExitedMarker"
            L10_2 = LastStation
            L11_2 = LastPart
            L12_2 = LastPartNum
            L8_2(L9_2, L10_2, L11_2, L12_2)
          end
        end
        if L4_2 then
          L8_2 = Citizen
          L8_2 = L8_2.Wait
          L9_2 = 500
          L8_2(L9_2)
        end
      end
    end
  end
end
StartMarkers = L15_1
L15_1 = Citizen
L15_1 = L15_1.CreateThread
function L16_1()
  local L0_2, L1_2
  L0_2 = GetPlayerData
  L0_2 = L0_2()
  PlayerData = L0_2
  while true do
    L0_2 = HasAnimDictLoaded
    L1_2 = "anim@heists@box_carry@"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      break
    end
    L0_2 = RequestAnimDict
    L1_2 = "anim@heists@box_carry@"
    L0_2(L1_2)
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 5
    L0_2(L1_2)
  end
  L0_2 = GetPlayerData
  L0_2 = L0_2()
  PlayerData = L0_2
  while true do
    L0_2 = PlayerData
    if nil ~= L0_2 then
      L0_2 = PlayerData
      L0_2 = L0_2.job
      if nil ~= L0_2 then
        break
      end
    end
    L0_2 = GetPlayerData
    L0_2 = L0_2()
    PlayerData = L0_2
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
  L0_2 = Config
  L0_2 = L0_2.RestrictBlipToRequiredJob
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.RequiredJob
    L1_2 = PlayerData
    L1_2 = L1_2.job
    L1_2 = L1_2.name
    if L0_2 ~= L1_2 then
      goto lbl_48
    end
  end
  L0_2 = MakeBlip
  L0_2()
  ::lbl_48::
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 5000
  L0_2(L1_2)
  L0_2 = StartMarkers
  L1_2 = PlayerData
  L0_2(L1_2)
end
L15_1(L16_1)
L15_1 = false
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L15_1
  if L0_2 then
    return
  end
  L0_2 = true
  L15_1 = L0_2
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.Blips
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = AddBlipForCoord
    L7_2 = L5_2.Pos
    L7_2 = L7_2.x
    L8_2 = L5_2.Pos
    L8_2 = L8_2.y
    L9_2 = L5_2.Pos
    L9_2 = L9_2.z
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2.blip = L6_2
    L6_2 = SetBlipSprite
    L7_2 = L5_2.blip
    L8_2 = L5_2.Sprite
    L6_2(L7_2, L8_2)
    L6_2 = SetBlipDisplay
    L7_2 = L5_2.blip
    L8_2 = 4
    L6_2(L7_2, L8_2)
    L6_2 = SetBlipScale
    L7_2 = L5_2.blip
    L8_2 = L5_2.Scale
    L6_2(L7_2, L8_2)
    L6_2 = SetBlipColour
    L7_2 = L5_2.blip
    L8_2 = L5_2.Color
    L6_2(L7_2, L8_2)
    L6_2 = SetBlipAsShortRange
    L7_2 = L5_2.blip
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = BeginTextCommandSetBlipName
    L7_2 = "STRING"
    L6_2(L7_2)
    L6_2 = AddTextComponentString
    L7_2 = L5_2.Label
    L6_2(L7_2)
    L6_2 = EndTextCommandSetBlipName
    L7_2 = L5_2.blip
    L6_2(L7_2)
  end
end
MakeBlip = L16_1
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = false
  L15_1 = L0_2
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.Blips
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = RemoveBlip
    L7_2 = L5_2.blip
    L6_2(L7_2)
    L5_2.blip = nil
  end
end
DeleteBlip = L16_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = initalized
  if L1_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.useModernUI
  if L1_2 then
    while true do
      L1_2 = L13_1
      if L1_2 then
        break
      end
      L1_2 = Citizen
      L1_2 = L1_2.Wait
      L2_2 = 100
      L1_2(L2_2)
    end
  else
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 5500
    L1_2(L2_2)
  end
  L1_2 = GetPlayerData
  L1_2 = L1_2()
  PlayerData = L1_2
  if not A0_2 then
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 5500
    L1_2(L2_2)
  end
  initalized = true
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RestrictBlipToRequiredJob
    if L1_2 then
      while true do
        L1_2 = PlayerData
        if nil ~= L1_2 then
          break
        end
        L1_2 = PlayerData
        L1_2 = L1_2.job
        if nil ~= L1_2 then
          break
        end
        L1_2 = GetPlayerData
        L1_2 = L1_2()
        PlayerData = L1_2
        L1_2 = Citizen
        L1_2 = L1_2.Wait
        L2_2 = 100
        L1_2(L2_2)
      end
      L1_2 = PlayerData
      L1_2 = L1_2.job
      L1_2 = L1_2.name
      L2_2 = Config
      L2_2 = L2_2.RequiredJob
      if L1_2 ~= L2_2 then
        L1_2 = Config
        L1_2 = L1_2.RestrictBlipToRequiredJob
      end
      if not L1_2 then
        L1_2 = MakeBlip
        L1_2()
      end
  end
  else
    L1_2 = MakeBlip
    L1_2()
  end
  L1_2 = TriggerServerCallback
  L2_2 = "17mov_deliverer:init"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "Init"
    L3_3 = A0_3.name
    L2_3.name = L3_3
    L3_3 = A0_3.source
    L2_3.myId = L3_3
    L1_3(L2_3)
    L1_3 = true
    L4_1 = L1_3
  end
  L1_2(L2_2, L3_2)
end
InitalizeScript = L16_1
L16_1 = RegisterNetEvent
L17_1 = "QBCore:Client:OnPlayerLoaded"
function L18_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "esx:playerLoaded"
function L18_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "QBCore:Client:OnJobUpdate"
L16_1(L17_1)
L16_1 = AddEventHandler
L17_1 = "QBCore:Client:OnJobUpdate"
function L18_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetPlayerData
  L1_2 = L1_2()
  PlayerData = L1_2
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RestrictBlipToRequiredJob
    if L1_2 then
      L1_2 = PlayerData
      L1_2 = L1_2.job
      L1_2 = L1_2.name
      L2_2 = Config
      L2_2 = L2_2.RequiredJob
      if L1_2 == L2_2 then
        goto lbl_23
      end
    end
  end
  L1_2 = Config
  L1_2 = L1_2.RestrictBlipToRequiredJob
  ::lbl_23::
  if not L1_2 then
    L1_2 = MakeBlip
    L1_2()
  else
    L1_2 = DeleteBlip
    L1_2()
  end
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = PlayerData
    L1_2 = L1_2.job
    L1_2 = L1_2.name
    L2_2 = Config
    L2_2 = L2_2.RequiredJob
    if L1_2 == L2_2 then
      goto lbl_43
    end
  end
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  ::lbl_43::
  if "none" == L1_2 then
    L1_2 = StartMarkers
    L2_2 = PlayerData
    L1_2(L2_2)
  else
    L1_2 = false
    L14_1 = L1_2
  end
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "esx:setJob"
L16_1(L17_1)
L16_1 = AddEventHandler
L17_1 = "esx:setJob"
function L18_1(A0_2)
  local L1_2, L2_2
  while true do
    L1_2 = PlayerData
    if nil ~= L1_2 then
      L1_2 = PlayerData
      L1_2 = L1_2.job
      if nil ~= L1_2 then
        break
      end
    end
    L1_2 = GetPlayerData
    L1_2 = L1_2()
    PlayerData = L1_2
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  L1_2 = PlayerData
  L1_2.job = A0_2
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RestrictBlipToRequiredJob
    if L1_2 then
      L1_2 = PlayerData
      L1_2 = L1_2.job
      L1_2 = L1_2.name
      L2_2 = Config
      L2_2 = L2_2.RequiredJob
      if L1_2 == L2_2 then
        goto lbl_37
      end
    end
  end
  L1_2 = Config
  L1_2 = L1_2.RestrictBlipToRequiredJob
  ::lbl_37::
  if not L1_2 then
    L1_2 = MakeBlip
    L1_2()
  else
    L1_2 = DeleteBlip
    L1_2()
  end
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = PlayerData
    L1_2 = L1_2.job
    L1_2 = L1_2.name
    L2_2 = Config
    L2_2 = L2_2.RequiredJob
    if L1_2 == L2_2 then
      goto lbl_57
    end
  end
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  ::lbl_57::
  if "none" == L1_2 then
    L1_2 = StartMarkers
    L2_2 = PlayerData
    L1_2(L2_2)
  else
    L1_2 = false
    L14_1 = L1_2
  end
end
L16_1(L17_1, L18_1)
L16_1 = AddEventHandler
L17_1 = "17mov_deliverer:EnteredMarker"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.Locations
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.CurrentAction
  CurrentAction = L1_2
  L1_2 = Config
  L1_2 = L1_2.Locations
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.CurrentActionMsg
  CurrentActionMsg = L1_2
  CurrentActionStation = A0_2
  L1_2 = 0
  while true do
    L2_2 = 500
    if not (L1_2 < L2_2) then
      break
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 0
    L2_2(L3_2)
    L2_2 = ShowHelpNotification
    L3_2 = CurrentActionMsg
    L2_2(L3_2)
    L1_2 = L1_2 + 1
  end
end
L16_1(L17_1, L18_1)
L16_1 = AddEventHandler
L17_1 = "17mov_deliverer:ExitedMarker"
function L18_1(A0_2)
  local L1_2
  CurrentAction = nil
  CurrentActionMsg = nil
  CurrentActionStation = nil
end
L16_1(L17_1, L18_1)
L16_1 = RegisterCommand
L17_1 = "+delivererStartMarkerAction"
function L18_1()
  local L0_2, L1_2
end
L16_1(L17_1, L18_1)
L16_1 = RegisterCommand
L17_1 = "-delivererStartMarkerAction"
function L18_1()
  local L0_2, L1_2, L2_2
  L0_2 = CurrentAction
  if nil ~= L0_2 then
    L0_2 = CurrentAction
    if "open_dutyToggle" == L0_2 then
      L0_2 = OpenDutyMenu
      L0_2()
    else
      L0_2 = CurrentAction
      if "finish_job" == L0_2 then
        L0_2 = TriggerServerCallback
        L1_2 = "17mov_deliverer:IfPlayerIsHost"
        function L2_2(A0_3)
          local L1_3, L2_3
          if A0_3 then
            L1_3 = EndJob
            L1_3()
          else
            L1_3 = Notify
            L2_3 = Config
            L2_3 = L2_3.Lang
            L2_3 = L2_3.no_permission
            L1_3(L2_3)
          end
        end
        L0_2(L1_2, L2_2)
      end
    end
  end
end
L16_1(L17_1, L18_1)
L16_1 = true
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L16_1
  if not L0_2 then
    return
  end
  L0_2 = false
  L16_1 = L0_2
  L0_2 = GetPedInVehicleSeat
  L1_2 = GetVehiclePedIsIn
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = -1
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  if L0_2 ~= L1_2 then
    L0_2 = IsPedInAnyVehicle
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = false
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = Notify
      L1_2 = Config
      L1_2 = L1_2.Lang
      L1_2 = L1_2.notADriver
      L0_2(L1_2)
      L0_2 = true
      L16_1 = L0_2
      return
    end
  end
  L0_2 = GetVehiclePedIsIn
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = GetEntityModel
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetHashKey
  L3_2 = Config
  L3_2 = L3_2.JobVehicleModel
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    L1_2 = GetVehiclePedIsIn
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = DeleteVehicleByCore
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = TriggerServerEvent
    L3_2 = "17mov_deliverer:endJob_sv"
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = true
    L16_1 = L2_2
    return
  end
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "openWarning"
  L1_2(L2_2)
  L1_2 = true
  L16_1 = L1_2
end
EndJob = L17_1
L17_1 = RegisterNUICallback
L18_1 = "acceptWarning"
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_deliverer:endJob_sv"
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = Config
  L1_2 = L1_2.DeleteVehicleWithPenalty
  if L1_2 then
    L1_2 = DeleteVehicleByCore
    L2_2 = GetVehiclePedIsIn
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = false
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L17_1(L18_1, L19_1)
L17_1 = TriggerEvent
L18_1 = "chat:removeSuggestion"
L19_1 = "/+delivererStartMarkerAction"
L17_1(L18_1, L19_1)
L17_1 = TriggerEvent
L18_1 = "chat:removeSuggestion"
L19_1 = "/-delivererStartMarkerAction"
L17_1(L18_1, L19_1)
L17_1 = RegisterKeyMapping
L18_1 = "+delivererStartMarkerAction"
L19_1 = Config
L19_1 = L19_1.Lang
L19_1 = L19_1.keybind
L20_1 = "keyboard"
L21_1 = "E"
L17_1(L18_1, L19_1, L20_1, L21_1)
L17_1 = {}
L18_1 = Config
L18_1 = L18_1.useModernUI
if L18_1 then
  function L18_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2
    L0_2 = initalized
    if not L0_2 then
      L0_2 = InitalizeScript
      L1_2 = true
      L0_2(L1_2)
      L0_2 = print
      L1_2 = "SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD"
      L0_2(L1_2)
      return
    end
    L0_2 = L4_1
    if not L0_2 then
      L0_2 = TriggerServerCallback
      L1_2 = "17mov_deliverer:init"
      function L2_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = SendNUIMessage
        L2_3 = {}
        L2_3.action = "Init"
        L3_3 = A0_3.name
        L2_3.name = L3_3
        L3_3 = A0_3.source
        L2_3.myId = L3_3
        L1_3(L2_3)
        L1_3 = true
        L4_1 = L1_3
      end
      L0_2(L1_2, L2_2)
      L0_2 = print
      L1_2 = "SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD"
      L0_2(L1_2)
      return
    end
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "OpenWorkMenu"
    L0_2(L1_2)
    L0_2 = SetNuiFocus
    L1_2 = true
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = true
    L10_1 = L0_2
    L0_2 = false
    L1_2 = false
    L2_2 = false
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
      while true do
        L0_3 = L10_1
        if not L0_3 then
          break
        end
        L0_3 = GetActivePlayers
        L0_3 = L0_3()
        L1_3 = GetEntityCoords
        L2_3 = PlayerPedId
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L2_3()
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
        L2_3 = {}
        L3_3 = false
        L4_3 = pairs
        L5_3 = L0_3
        L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
        for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
          L10_3 = PlayerId
          L10_3 = L10_3()
          if L10_3 ~= L9_3 then
            L10_3 = GetPlayerPed
            L11_3 = L9_3
            L10_3 = L10_3(L11_3)
            L11_3 = GetEntityCoords
            L12_3 = L10_3
            L11_3 = L11_3(L12_3)
            L11_3 = L1_3 - L11_3
            L11_3 = #L11_3
            if L11_3 < 10.0 then
              L11_3 = table
              L11_3 = L11_3.insert
              L12_3 = L2_3
              L13_3 = GetPlayerServerId
              L14_3 = L9_3
              L13_3, L14_3 = L13_3(L14_3)
              L11_3(L12_3, L13_3, L14_3)
            end
          end
        end
        L4_3 = #L2_3
        if 0 == L4_3 then
          L4_3 = L2_2
          if not L4_3 then
            goto lbl_53
          end
        end
        L4_3 = TriggerServerCallback
        L5_3 = "17mov_deliverer:GetPlayersNames"
        function L6_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4
          L1_4 = pairs
          L2_4 = A0_4
          L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
          for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
            L8_4 = L6_4.id
            L7_4 = L8_1
            L7_4 = L7_4[L8_4]
            if nil == L7_4 then
              L7_4 = true
              L3_3 = L7_4
              L8_4 = L6_4.id
              L7_4 = L17_1
              L7_4 = L7_4[L8_4]
              if nil == L7_4 then
                L8_4 = L6_4.id
                L7_4 = L17_1
                L9_4 = {}
                L10_4 = L6_4.id
                L9_4.id = L10_4
                L10_4 = L6_4.name
                L9_4.name = L10_4
                L7_4[L8_4] = L9_4
                L7_4 = CreateThread
                function L8_4()
                  local L0_5, L1_5, L2_5
                  while true do
                    L0_5 = L0_2
                    if L0_5 then
                      break
                    end
                    L0_5 = Citizen
                    L0_5 = L0_5.Wait
                    L1_5 = 10
                    L0_5(L1_5)
                  end
                  L0_5 = SendNUIMessage
                  L1_5 = {}
                  L1_5.action = "addNewNearbyPlayer"
                  L2_5 = L6_4.id
                  L1_5.id = L2_5
                  L2_5 = L6_4.name
                  L1_5.name = L2_5
                  L0_5(L1_5)
                end
                L7_4(L8_4)
              end
            else
              A0_4[L5_4] = nil
            end
          end
          L1_4 = false
          L2_2 = L1_4
          L1_4 = pairs
          L2_4 = L17_1
          L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
          for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
            L7_4 = true
            L2_2 = L7_4
            L7_4 = false
            L8_4 = L6_4.id
            L9_4 = pairs
            L10_4 = A0_4
            L9_4, L10_4, L11_4, L12_4 = L9_4(L10_4)
            for L13_4, L14_4 in L9_4, L10_4, L11_4, L12_4 do
              L15_4 = L14_4.id
              if L15_4 == L8_4 then
                L7_4 = true
                break
              end
            end
            if not L7_4 then
              L9_4 = L17_1
              L9_4[L8_4] = nil
              L9_4 = true
              L1_2 = L9_4
              L9_4 = SendNUIMessage
              L10_4 = {}
              L10_4.action = "DeleteNearbyPlayer"
              L11_4 = L6_4.id
              L10_4.id = L11_4
              L9_4(L10_4)
              L9_4 = CreateThread
              function L10_4()
                local L0_5, L1_5
                L0_5 = Citizen
                L0_5 = L0_5.Wait
                L1_5 = 250
                L0_5(L1_5)
                L0_5 = false
                L1_2 = L0_5
              end
              L9_4(L10_4)
            end
          end
          L1_4 = L3_3
          if not L1_4 then
            L1_4 = L0_2
            if L1_4 then
              L1_4 = CreateThread
              function L2_4()
                local L0_5, L1_5
                while true do
                  L0_5 = L1_2
                  if not L0_5 then
                    break
                  end
                  L0_5 = Citizen
                  L0_5 = L0_5.Wait
                  L1_5 = 10
                  L0_5(L1_5)
                end
                L0_5 = SendNUIMessage
                L1_5 = {}
                L1_5.action = "hideNearbyPlayersTab"
                L0_5(L1_5)
                L0_5 = CreateThread
                function L1_5()
                  local L0_6, L1_6
                  L0_6 = Citizen
                  L0_6 = L0_6.Wait
                  L1_6 = 250
                  L0_6(L1_6)
                  L0_6 = false
                  L0_2 = L0_6
                end
                L0_5(L1_5)
              end
              L1_4(L2_4)
          end
          else
            L1_4 = L3_3
            if L1_4 then
              L1_4 = L0_2
              if not L1_4 then
                L1_4 = SendNUIMessage
                L2_4 = {}
                L2_4.action = "showNearbyPlayersTab"
                L1_4(L2_4)
                L1_4 = CreateThread
                function L2_4()
                  local L0_5, L1_5
                  L0_5 = Citizen
                  L0_5 = L0_5.Wait
                  L1_5 = 250
                  L0_5(L1_5)
                  L0_5 = true
                  L0_2 = L0_5
                end
                L1_4(L2_4)
              end
            end
          end
        end
        L7_3 = L2_3
        L4_3(L5_3, L6_3, L7_3)
        ::lbl_53::
        L4_3 = Citizen
        L4_3 = L4_3.Wait
        L5_3 = 2500
        L4_3(L5_3)
      end
    end
    L3_2(L4_2)
  end
  OpenDutyMenu = L18_1
else
  function L18_1()
    local L0_2, L1_2, L2_2
    L0_2 = initalized
    if not L0_2 then
      L0_2 = InitalizeScript
      L1_2 = true
      L0_2(L1_2)
      L0_2 = print
      L1_2 = "SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD"
      L0_2(L1_2)
      return
    end
    L0_2 = L4_1
    if not L0_2 then
      L0_2 = TriggerServerCallback
      L1_2 = "17mov_deliverer:init"
      function L2_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = SendNUIMessage
        L2_3 = {}
        L2_3.action = "Init"
        L3_3 = A0_3.name
        L2_3.name = L3_3
        L3_3 = A0_3.source
        L2_3.myId = L3_3
        L1_3(L2_3)
        L1_3 = true
        L4_1 = L1_3
      end
      L0_2(L1_2, L2_2)
      L0_2 = print
      L1_2 = "SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD"
      L0_2(L1_2)
      return
    end
    L0_2 = TriggerServerCallback
    L1_2 = "17mov_deliverer:IfPlayerIsHost"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "HostStatusUpdate"
      L2_3.status = A0_3
      L1_3(L2_3)
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "OpenWorkMenu"
      L1_3(L2_3)
      L1_3 = SetNuiFocus
      L2_3 = true
      L3_3 = true
      L1_3(L2_3, L3_3)
    end
    L0_2(L1_2, L2_2)
  end
  OpenDutyMenu = L18_1
end
L18_1 = false
L19_1 = RegisterNUICallback
L20_1 = "changeClothes"
function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.type
  if "work" == L1_2 then
    L2_2 = true
    L18_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "work"
    L2_2(L3_2)
  else
    L2_2 = false
    L18_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "citizen"
    L2_2(L3_2)
  end
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNUICallback
L20_1 = "GetClosestPlayers"
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = GetActivePlayers
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L2_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = PlayerId
    L11_2 = L11_2()
    if L11_2 ~= L10_2 then
      L11_2 = GetPlayerPed
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L12_2 = GetEntityCoords
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      L12_2 = L3_2 - L12_2
      L12_2 = #L12_2
      if L12_2 < 20.0 then
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = L4_2
        L14_2 = GetPlayerServerId
        L15_2 = L10_2
        L14_2, L15_2 = L14_2(L15_2)
        L12_2(L13_2, L14_2, L15_2)
      end
    end
  end
  L5_2 = TriggerServerCallback
  L6_2 = "17mov_deliverer:IfPlayerIsHost"
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = TriggerServerCallback
      L2_3 = "17mov_deliverer:GetPlayersNames"
      function L3_3(A0_4)
        local L1_4, L2_4
        L1_4 = A1_2
        L2_4 = A0_4
        L1_4(L2_4)
        L1_4 = #A0_4
        if 0 == L1_4 then
          L1_4 = Notify
          L2_4 = Config
          L2_4 = L2_4.Lang
          L2_4 = L2_4.nobodyNearby
          L1_4(L2_4)
        end
      end
      L4_3 = L4_2
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = Notify
      L2_3 = Config
      L2_3 = L2_3.Lang
      L2_3 = L2_3.no_permission
      L1_3(L2_3)
    end
  end
  L5_2(L6_2, L7_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNUICallback
L20_1 = "requestReacted"
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.boolean
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_deliverer:ClientReactRequest"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNUICallback
L20_1 = "sendRequest"
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = OnDuty
  if L1_2 then
    L1_2 = Notify
    L2_2 = Config
    L2_2 = L2_2.Lang
    L2_2 = L2_2.cantInvite
    L1_2(L2_2)
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_deliverer:SendRequestToClient_sv"
  L3_2 = tonumber
  L4_2 = A0_2.id
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNUICallback
L20_1 = "kickPlayerFromLobby"
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = tonumber
  L2_2 = A0_2.id
  L1_2 = L1_2(L2_2)
  L2_2 = Notify
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = Config
  L4_2 = L4_2.Lang
  L4_2 = L4_2.kicked
  L5_2 = L8_1
  L5_2 = L5_2[L1_2]
  L5_2 = L5_2.name
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_deliverer:KickPlayerFromLobby"
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNUICallback
L20_1 = "focusOff"
function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNUICallback
L20_1 = "notify"
function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = Notify
  L2_2 = A0_2.msg
  L1_2(L2_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNetEvent
L20_1 = "17mov_deliverer:SendRequestToClient_cl"
L19_1(L20_1)
L19_1 = AddEventHandler
L20_1 = "17mov_deliverer:SendRequestToClient_cl"
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "ShowInviteBox"
  L3_2.name = A0_2
  L2_2(L3_2)
  L2_2 = SetNuiFocus
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L19_1(L20_1, L21_1)
L19_1 = Config
L19_1 = L19_1.useModernUI
if L19_1 then
  L19_1 = RegisterNetEvent
  L20_1 = "17mov_deliverer:RefreshMugs"
  L19_1(L20_1)
  L19_1 = AddEventHandler
  L20_1 = "17mov_deliverer:RefreshMugs"
  function L21_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
    while true do
      L2_2 = L4_1
      if L2_2 then
        break
      end
      L2_2 = Citizen
      L2_2 = L2_2.Wait
      L3_2 = 100
      L2_2(L3_2)
    end
    L2_2 = pairs
    L3_2 = A0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = SendNUIMessage
      L9_2 = {}
      L9_2.action = "DeleteNearbyPlayer"
      L10_2 = L7_2.id
      L9_2.id = L10_2
      L8_2(L9_2)
      L9_2 = L7_2.id
      L8_2 = L8_1
      L8_2 = L8_2[L9_2]
      if nil == L8_2 then
        L8_2 = L9_1
        L9_2 = L7_2.id
        if L8_2 == L9_2 then
          L9_2 = L7_2.id
          L8_2 = L8_1
          L10_2 = {}
          L11_2 = L7_2.name
          L10_2.name = L11_2
          L11_2 = L7_2.id
          L10_2.id = L11_2
          L11_2 = L7_2.isHost
          L10_2.isHost = L11_2
          L11_2 = L7_2.rewardPercent
          L10_2.rewardPercent = L11_2
          L10_2.itsMe = true
          L8_2[L9_2] = L10_2
        else
          L9_2 = L7_2.id
          L8_2 = L8_1
          L10_2 = {}
          L11_2 = L7_2.name
          L10_2.name = L11_2
          L11_2 = L7_2.id
          L10_2.id = L11_2
          L11_2 = L7_2.isHost
          L10_2.isHost = L11_2
          L11_2 = L7_2.rewardPercent
          L10_2.rewardPercent = L11_2
          L10_2.itsMe = false
          L8_2[L9_2] = L10_2
        end
        L8_2 = SendNUIMessage
        L9_2 = {}
        L9_2.action = "addNewMember"
        L10_2 = L7_2.name
        L9_2.name = L10_2
        L10_2 = L7_2.id
        L9_2.id = L10_2
        L10_2 = L7_2.isHost
        L9_2.isHost = L10_2
        L10_2 = L7_2.rewardPercent
        L9_2.rewardPercent = L10_2
        L11_2 = L7_2.id
        L10_2 = L8_1
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.itsMe
        L9_2.showQuitBtn = L10_2
        L8_2(L9_2)
      end
    end
    L2_2 = 0
    L3_2 = pairs
    L4_2 = L8_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.id
      L10_2 = false
      L11_2 = pairs
      L12_2 = A0_2
      L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
      for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
        L17_2 = L16_2.id
        if L17_2 == L9_2 then
          L10_2 = true
          break
        end
      end
      if not L10_2 then
        L11_2 = L8_1
        L11_2[L9_2] = nil
        L11_2 = SendNUIMessage
        L12_2 = {}
        L12_2.action = "DeletePlayer"
        L12_2.id = L9_2
        L11_2(L12_2)
      else
        L2_2 = L2_2 + 1
      end
    end
    if 1 == L2_2 then
      L3_2 = TriggerServerCallback
      L4_2 = "17mov_deliverer:init"
      function L5_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = SendNUIMessage
        L2_3 = {}
        L2_3.action = "Init"
        L3_3 = A0_3.name
        L2_3.name = L3_3
        L3_3 = A0_3.source
        L2_3.myId = L3_3
        L1_3(L2_3)
        L1_3 = true
        L4_1 = L1_3
      end
      L3_2(L4_2, L5_2)
    end
    L3_2 = TriggerServerCallback
    L4_2 = "17mov_deliverer:IfPlayerOwnsTeam"
    function L5_2(A0_3)
      local L1_3, L2_3
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "ToggleHostHUD"
      L2_3.boolean = A0_3
      L1_3(L2_3)
    end
    L3_2(L4_2, L5_2)
  end
  L19_1(L20_1, L21_1)
else
  L19_1 = RegisterNetEvent
  L20_1 = "17mov_deliverer:RefreshMugs"
  L19_1(L20_1)
  L19_1 = AddEventHandler
  L20_1 = "17mov_deliverer:RefreshMugs"
  function L21_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    while true do
      L2_2 = L4_1
      if L2_2 then
        break
      end
      L2_2 = Citizen
      L2_2 = L2_2.Wait
      L3_2 = 100
      L2_2(L3_2)
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 100
    L2_2(L3_2)
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "refreshMugs"
    L3_2.names = A0_2
    L3_2.myId = A1_2
    L2_2(L3_2)
    L2_2 = TriggerServerCallback
    L3_2 = "17mov_deliverer:IfPlayerIsHost"
    function L4_2(A0_3)
      local L1_3, L2_3
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "HostStatusUpdate"
      L2_3.status = A0_3
      L1_3(L2_3)
    end
    L2_2(L3_2, L4_2)
  end
  L19_1(L20_1, L21_1)
end
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = vec3
  L1_2 = Config
  L1_2 = L1_2.SpawnPoint
  L1_2 = L1_2.x
  L2_2 = Config
  L2_2 = L2_2.SpawnPoint
  L2_2 = L2_2.y
  L3_2 = Config
  L3_2 = L3_2.SpawnPoint
  L3_2 = L3_2.z
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L1_2 = GetGamePool
  L2_2 = "CVehicle"
  L1_2 = L1_2(L2_2)
  if nil ~= L1_2 then
    L2_2 = type
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      goto lbl_27
    end
  end
  L2_2 = print
  L3_2 = "FAILED TO FETCH GAMEPOOL - Returning CLEAR"
  L2_2(L3_2)
  L2_2 = true
  do return L2_2 end
  ::lbl_27::
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = GetEntityCoords
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2 - L0_2
    L8_2 = #L8_2
    if L8_2 < 6.0 then
      L8_2 = false
      return L8_2
    end
  end
  L2_2 = true
  return L2_2
end
IsSpawnPointClear = L19_1
L19_1 = RegisterNUICallback
L20_1 = "startJob"
function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = OnDuty
  if not L1_2 then
    L1_2 = IsSpawnPointClear
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "17mov_deliverer:StartJob_sv"
      L1_2(L2_2)
    else
      L1_2 = Notify
      L2_2 = Config
      L2_2 = L2_2.Lang
      L2_2 = L2_2.spawnpointOccupied
      L1_2(L2_2)
    end
  else
    L1_2 = Notify
    L2_2 = Config
    L2_2 = L2_2.Lang
    L2_2 = L2_2.alreadyWorking
    L1_2(L2_2)
  end
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNUICallback
L20_1 = "leaveLobby"
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = OnDuty
  if L1_2 then
    L1_2 = Notify
    L2_2 = Config
    L2_2 = L2_2.Lang
    L2_2 = L2_2.cantLeaveLobby
    L1_2(L2_2)
    return
  end
  L1_2 = tonumber
  L2_2 = A0_2.id
  L1_2 = L1_2(L2_2)
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_deliverer:KickPlayerFromLobby"
  L4_2 = L1_2
  L5_2 = false
  L6_2 = GetPlayerServerId
  L7_2 = PlayerId
  L7_2 = L7_2()
  L6_2, L7_2 = L6_2(L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = Notify
  L3_2 = Config
  L3_2 = L3_2.Lang
  L3_2 = L3_2.quit
  L2_2(L3_2)
end
L19_1(L20_1, L21_1)
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = PrepeareVehicle
  L2_2()
  L2_2 = 100
  L3_2 = RequestModel
  L4_2 = A0_2
  L3_2(L4_2)
  while true do
    L3_2 = HasModelLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not (not L3_2 and L2_2 > 0) then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 100
    L3_2(L4_2)
    L2_2 = L2_2 - 1
    L3_2 = RequestModel
    L4_2 = A0_2
    L3_2(L4_2)
  end
  L3_2 = CreateVehicle
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = true
  L7_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = NetworkGetNetworkIdFromEntity
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = SetEntityAsMissionEntity
  L6_2 = L3_2
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetVehicleNeedsToBeHotwired
  L6_2 = L3_2
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = SetVehRadioStation
  L6_2 = L3_2
  L7_2 = "OFF"
  L5_2(L6_2, L7_2)
  L5_2 = SetVehicleFuelLevel
  L6_2 = L3_2
  L7_2 = 100.0
  L5_2(L6_2, L7_2)
  L5_2 = Config
  L5_2 = L5_2.EnableVehicleTeleporting
  if L5_2 then
    L5_2 = TaskWarpPedIntoVehicle
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = L3_2
    L8_2 = -1
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = SetVehicle
  L6_2 = L3_2
  L5_2(L6_2)
  L5_2 = 100
  while true do
    L6_2 = DoesEntityExist
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    if not (not L6_2 and L5_2 > 0) then
      break
    end
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 100
    L6_2(L7_2)
    L5_2 = L5_2 - 1
  end
  return L3_2
end
SpawnVehicle = L19_1
L19_1 = RegisterNetEvent
L20_1 = "17mov_deliverer:StartJob_cl"
L19_1(L20_1)
L19_1 = AddEventHandler
L20_1 = "17mov_deliverer:StartJob_cl"
function L21_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  OnDuty = true
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3
    L0_3 = L18_1
    if not L0_3 then
      L0_3 = Config
      L0_3 = L0_3.RequireWorkClothes
      if L0_3 then
        L0_3 = true
        L18_1 = L0_3
        L0_3 = ChangeClothes
        L1_3 = "work"
        L0_3(L1_3)
      end
    end
  end
  L6_2(L7_2)
  if A0_2 == A1_2 and not A5_2 then
    L6_2 = Config
    L6_2 = L6_2.EnableVehicleTeleporting
    if L6_2 then
      L6_2 = DoScreenFadeOut
      L7_2 = 500
      L6_2(L7_2)
      L6_2 = Citizen
      L6_2 = L6_2.Wait
      L7_2 = 500
      L6_2(L7_2)
    end
    L6_2 = SpawnVehicle
    L7_2 = Config
    L7_2 = L7_2.JobVehicleModel
    L8_2 = Config
    L8_2 = L8_2.SpawnPoint
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 500
    L7_2(L8_2)
    L7_2 = DoScreenFadeIn
    L8_2 = 500
    L7_2(L8_2)
    JobVehicle = L6_2
    L7_2 = VehToNet
    L8_2 = JobVehicle
    L7_2 = L7_2(L8_2)
    JobVehicleNetId = L7_2
    L7_2 = TriggerServerEvent
    L8_2 = "17mov_deliverer:uploadJobVehicle"
    L9_2 = JobVehicleNetId
    L7_2(L8_2, L9_2)
  else
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 150
    L6_2(L7_2)
    while true do
      L6_2 = "waiting"
      L7_2 = TriggerServerCallback
      L8_2 = "17mov_deliverer:getPartyVeh"
      function L9_2(A0_3)
        local L1_3, L2_3
        if nil ~= A0_3 then
          JobVehicleNetId = A0_3
          L1_3 = NetToVeh
          L2_3 = A0_3
          L1_3 = L1_3(L2_3)
          vehicle = L1_3
          while true do
            L1_3 = vehicle
            if L1_3 ~= A0_3 then
              break
            end
            L1_3 = NetToVeh
            L2_3 = A0_3
            L1_3 = L1_3(L2_3)
            vehicle = L1_3
            L1_3 = print
            L2_3 = "Waiting For Vehicle"
            L1_3(L2_3)
            L1_3 = Citizen
            L1_3 = L1_3.Wait
            L2_3 = 100
            L1_3(L2_3)
          end
          L1_3 = Citizen
          L1_3 = L1_3.Wait
          L2_3 = 1500
          L1_3(L2_3)
          L1_3 = vehicle
          JobVehicle = L1_3
          L1_3 = true
          L6_2 = L1_3
        else
          L1_3 = false
          L6_2 = L1_3
        end
      end
      L7_2(L8_2, L9_2)
      while "waiting" == L6_2 do
        L7_2 = Citizen
        L7_2 = L7_2.Wait
        L8_2 = 10
        L7_2(L8_2)
      end
      if L6_2 then
        break
      end
      L7_2 = Citizen
      L7_2 = L7_2.Wait
      L8_2 = 500
      L7_2(L8_2)
    end
    L6_2 = Config
    L6_2 = L6_2.GiveKeysToAllLobby
    if L6_2 then
      L6_2 = SetVehicle
      L7_2 = JobVehicle
      L6_2(L7_2)
    end
  end
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = JobVehicleNetId
      if 0 ~= L0_3 then
        L0_3 = JobVehicleNetId
        if nil ~= L0_3 then
          L0_3 = NetworkDoesNetworkIdExist
          L1_3 = JobVehicleNetId
          L0_3 = L0_3(L1_3)
          if L0_3 then
            L0_3 = NetToVeh
            L1_3 = JobVehicleNetId
            L0_3 = L0_3(L1_3)
            L1_3 = JobVehicle
            if L1_3 ~= L0_3 then
              L1_3 = JobVehicleNetId
              if L0_3 ~= L1_3 and 0 ~= L0_3 and nil ~= L0_3 then
                L1_3 = NetToVeh
                L2_3 = JobVehicleNetId
                L1_3 = L1_3(L2_3)
                JobVehicle = L1_3
              end
            end
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 5000
      L0_3(L1_3)
    end
  end
  L6_2(L7_2)
  L6_2 = Citizen
  L6_2 = L6_2.Wait
  L7_2 = 500
  L6_2(L7_2)
  if not A5_2 then
    L6_2 = GetResourceKvpInt
    L7_2 = "17mov_Tutorials:"
    L8_2 = "delivererTutorial"
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    if 0 == L6_2 then
      L6_2 = "delivererTutorial"
      L11_1 = L6_2
      L6_2 = SetNuiFocus
      L7_2 = true
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = SendNUIMessage
      L7_2 = {}
      L7_2.action = "showTutorial"
      L8_2 = Config
      L8_2 = L8_2.Lang
      L8_2 = L8_2.tutorial
      L7_2.customText = L8_2
      L6_2(L7_2)
    end
  end
  L6_2 = SendNUIMessage
  L7_2 = {}
  L7_2.action = "showCounter"
  L6_2(L7_2)
  if not A5_2 then
    L6_2 = SendNUIMessage
    L7_2 = {}
    L7_2.action = "updateCounter"
    L7_2.value = "0"
    L6_2(L7_2)
  end
  L6_2 = Config
  L6_2 = L6_2.BlockHostFromWorking
  if L6_2 and A0_2 == A1_2 and 2 == A3_2 then
    return
  end
  L6_2 = Config
  L6_2 = L6_2.UseTarget
  if not L6_2 then
    while true do
      L6_2 = OnDuty
      if not L6_2 then
        break
      end
      L6_2 = Citizen
      L6_2 = L6_2.Wait
      L7_2 = 0
      L6_2(L7_2)
      L6_2 = wearing
      if not L6_2 then
        L6_2 = GetEntityCoords
        L7_2 = PlayerPedId
        L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2()
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L7_2 = GetWorldPositionOfEntityBone
        L8_2 = JobVehicle
        L9_2 = GetEntityBoneIndexByName
        L10_2 = JobVehicle
        L11_2 = Config
        L11_2 = L11_2.VehicleBackBone
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2)
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L8_2 = Config
        L8_2 = L8_2.Debug
        if nil ~= L8_2 then
          L8_2 = print
          L9_2 = "Vh: "
          L10_2 = JobVehicle
          L11_2 = "Distance: "
          L12_2 = L6_2 - L7_2
          L12_2 = #L12_2
          L13_2 = "Native: "
          L14_2 = IsPedSittingInAnyVehicle
          L15_2 = PlayerPedId
          L15_2 = L15_2()
          L14_2, L15_2 = L14_2(L15_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        end
        L8_2 = L6_2 - L7_2
        L8_2 = #L8_2
        if L8_2 < 2.0 then
          L8_2 = IsPedSittingInAnyVehicle
          L9_2 = PlayerPedId
          L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2()
          L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          if not L8_2 then
            L8_2 = Config
            L8_2 = L8_2.Debug
            if nil ~= L8_2 then
              L8_2 = print
              L9_2 = "DRAWING"
              L8_2(L9_2)
            end
            L8_2 = DrawText3Ds
            L9_2 = L7_2.x
            L10_2 = L7_2.y
            L11_2 = L7_2.z
            L12_2 = Config
            L12_2 = L12_2.keybindSettings
            L12_2 = L12_2.bagsInteractionkeyString
            L13_2 = Config
            L13_2 = L13_2.Lang
            L13_2 = L13_2.takeParcel
            L12_2 = L12_2 .. L13_2
            L8_2(L9_2, L10_2, L11_2, L12_2)
            L8_2 = IsControlJustReleased
            L9_2 = 0
            L10_2 = Config
            L10_2 = L10_2.keybindSettings
            L10_2 = L10_2.bagsInteractionKey
            if not L10_2 then
              L10_2 = 38
            end
            L8_2 = L8_2(L9_2, L10_2)
            if L8_2 then
              L8_2 = Pick
              L9_2 = "hei_prop_heist_box"
              L10_2 = "anim@heists@box_carry@"
              L11_2 = "idle"
              L12_2 = L7_2
              L8_2(L9_2, L10_2, L11_2, L12_2)
            end
        end
        else
          L8_2 = Citizen
          L8_2 = L8_2.Wait
          L9_2 = 500
          L8_2(L9_2)
        end
      else
        L6_2 = Citizen
        L6_2 = L6_2.Wait
        L7_2 = 500
        L6_2(L7_2)
      end
    end
  else
    L6_2 = AddJobVehicleToTargetSystem
    L7_2 = JobVehicle
    L6_2(L7_2)
  end
end
L19_1(L20_1, L21_1)
function L19_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L4_2 = wearing
  if not L4_2 then
    L4_2 = GetEntityCoords
    L5_2 = PlayerPedId
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L5_2()
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L5_2 = L5_1
    if nil ~= L5_2 then
      L5_2 = L5_1
      L5_2 = L4_2 - L5_2
      L5_2 = #L5_2
      if L5_2 > 75.0 then
        L5_2 = Notify
        L6_2 = Config
        L6_2 = L6_2.Lang
        L6_2 = L6_2.tooFar
        L5_2(L6_2)
        return
      end
    end
    L5_2 = GetEntityCoords
    L6_2 = PlayerPedId
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L6_2 = GetEntityForwardVector
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L6_2 = L6_2 * 0.5
    L5_2 = L5_2 - L6_2
    L6_2 = SetEntityCoords
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = L5_2.x
    L9_2 = L5_2.y
    L10_2 = L5_2.z
    L10_2 = L10_2 - 1.0
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = SetVehicleDoorOpen
    L7_2 = JobVehicle
    L8_2 = 2
    L9_2 = false
    L10_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = SetVehicleDoorOpen
    L7_2 = JobVehicle
    L8_2 = 3
    L9_2 = false
    L10_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2)
    while true do
      L6_2 = HasAnimDictLoaded
      L7_2 = A1_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        break
      end
      L6_2 = RequestAnimDict
      L7_2 = A1_2
      L6_2(L7_2)
      L6_2 = Citizen
      L6_2 = L6_2.Wait
      L7_2 = 5
      L6_2(L7_2)
    end
    L6_2 = TaskPedSlideToCoord
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = A3_2
    L9_2 = GetEntityHeading
    L10_2 = PlayerPedId
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L10_2()
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L10_2 = 1500
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 750
    L6_2(L7_2)
    L6_2 = ClearPedTasks
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L7_2()
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L6_2 = TaskStartScenarioInPlace
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = Config
    L8_2 = L8_2.VehicleSearchingScenario
    L9_2 = 0
    L10_2 = true
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 2000
    L6_2(L7_2)
    L6_2 = ClearPedTasks
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L7_2()
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 500
    L6_2(L7_2)
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = table
    L7_2 = L7_2.unpack
    L8_2 = GetEntityCoords
    L9_2 = L6_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2(L9_2)
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L10_2 = CreateObject
    L11_2 = GetHashKey
    L12_2 = A0_2
    L11_2 = L11_2(L12_2)
    L12_2 = L7_2
    L13_2 = L8_2
    L14_2 = L9_2 + 0.2
    L15_2 = true
    L16_2 = true
    L17_2 = true
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L0_1 = L10_2
    L11_2 = AttachEntityToEntity
    L12_2 = L10_2
    L13_2 = L6_2
    L14_2 = GetPedBoneIndex
    L15_2 = L6_2
    L16_2 = 60309
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = 0.025
    L16_2 = 0.08
    L17_2 = 0.255
    L18_2 = -145.0
    L19_2 = 290.0
    L20_2 = 180.0
    L21_2 = true
    L22_2 = true
    L23_2 = false
    L24_2 = true
    L25_2 = 1
    L26_2 = true
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L11_2 = TaskPlayAnim
    L12_2 = L6_2
    L13_2 = A1_2
    L14_2 = A2_2
    L15_2 = 3.0
    L16_2 = -8
    L17_2 = -1
    L18_2 = 63
    L19_2 = 0
    L20_2 = 0
    L21_2 = 0
    L22_2 = 0
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L11_2 = Citizen
    L11_2 = L11_2.Wait
    L12_2 = 1500
    L11_2(L12_2)
    L11_2 = SetVehicleDoorShut
    L12_2 = JobVehicle
    L13_2 = 2
    L14_2 = false
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = SetVehicleDoorShut
    L12_2 = JobVehicle
    L13_2 = 3
    L14_2 = false
    L11_2(L12_2, L13_2, L14_2)
    wearing = true
    L11_2 = Citizen
    L11_2 = L11_2.Wait
    L12_2 = 1000
    L11_2(L12_2)
    while true do
      L11_2 = wearing
      if not L11_2 then
        break
      end
      L11_2 = Citizen
      L11_2 = L11_2.Wait
      L12_2 = 300
      L11_2(L12_2)
      L11_2 = IsEntityPlayingAnim
      L12_2 = L6_2
      L13_2 = A1_2
      L14_2 = A2_2
      L15_2 = 3
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      if not L11_2 then
        L11_2 = wearing
        if L11_2 then
          L11_2 = TaskPlayAnim
          L12_2 = L6_2
          L13_2 = A1_2
          L14_2 = A2_2
          L15_2 = 3.0
          L16_2 = -8
          L17_2 = -1
          L18_2 = 63
          L19_2 = 0
          L20_2 = 0
          L21_2 = 0
          L22_2 = 0
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        end
      end
    end
  end
end
Pick = L19_1
L19_1 = RegisterNetEvent
L20_1 = "17mov_deliverer:endJob_cl"
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = RemoveKeys
  if nil ~= L0_2 then
    L0_2 = RemoveKeys
    L0_2()
  end
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L1_2 = Config
  L1_2 = L1_2.Locations
  L1_2 = L1_2.DutyToggle
  L1_2 = L1_2.Coords
  L1_2 = L1_2[1]
  L0_2 = L0_2 - L1_2
  L0_2 = #L0_2
  if L0_2 < 20.0 then
    L0_2 = Config
    L0_2 = L0_2.EnableVehicleTeleporting
    if L0_2 then
      L0_2 = DoScreenFadeOut
      L1_2 = 250
      L0_2(L1_2)
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 250
      L0_2(L1_2)
      L0_2 = SetEntityCoords
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = Config
      L2_2 = L2_2.Locations
      L2_2 = L2_2.DutyToggle
      L2_2 = L2_2.Coords
      L2_2 = L2_2[1]
      L0_2(L1_2, L2_2)
    end
  end
  L0_2 = Config
  L0_2 = L0_2.RequireWorkClothes
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.EnableCloakroom
    if not L0_2 then
      L0_2 = false
      L18_1 = L0_2
      L0_2 = ChangeClothes
      L1_2 = "citizen"
      L0_2(L1_2)
    end
  end
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hideCounter"
  L0_2(L1_2)
  L0_2 = RemoveBlip
  L1_2 = L2_1
  L0_2(L1_2)
  OnDuty = false
  JobVehicleNetId = 0
  JobVehicle = 0
  wearing = false
  L0_2 = Config
  L0_2 = L0_2.RequireWorkClothes
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.EnableCloakroom
    if not L0_2 then
      L0_2 = false
      L18_1 = L0_2
      L0_2 = ChangeClothes
      L1_2 = "citizen"
      L0_2(L1_2)
    end
  end
  L0_2 = DeleteObject
  L1_2 = L0_1
  L0_2(L1_2)
  L0_2 = GetGamePool
  if nil ~= L0_2 then
    L0_2 = GetGamePool
    L1_2 = "CObject"
    L0_2 = L0_2(L1_2)
    if nil ~= L0_2 then
      L1_2 = type
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if "table" == L1_2 then
        L1_2 = pairs
        L2_2 = GetGamePool
        L3_2 = "CObject"
        L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
        L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
          if nil ~= L6_2 then
            L7_2 = GetEntityCoords
            L8_2 = L0_1
            L7_2 = L7_2(L8_2)
            L8_2 = GetEntityCoords
            L9_2 = L6_2
            L8_2 = L8_2(L9_2)
            if L7_2 == L8_2 then
              L7_2 = SetEntityAsMissionEntity
              L8_2 = L6_2
              L9_2 = true
              L10_2 = true
              L7_2(L8_2, L9_2, L10_2)
              L7_2 = DeleteObject
              L8_2 = L6_2
              L7_2(L8_2)
              L7_2 = DeleteEntity
              L8_2 = L6_2
              L7_2(L8_2)
            end
          end
        end
      end
    end
  end
  L0_2 = nil
  L0_1 = L0_2
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 250
  L0_2(L1_2)
  L0_2 = DoScreenFadeIn
  L1_2 = 250
  L0_2(L1_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNetEvent
L20_1 = "17mov_deliverer:updateCounter"
function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = RemoveBlip
  L2_2 = L2_1
  L1_2(L2_2)
  blockTruckDoors = false
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateCounter"
  L2_2.value = A0_2
  L1_2(L2_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNetEvent
L20_1 = "17mov_deliverer:SendNewTarget"
function L21_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_1 = A3_2
  L4_2 = RemoveBlip
  L5_2 = L2_1
  L4_2(L5_2)
  L4_2 = AddBlipForCoord
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  L2_1 = L4_2
  L4_2 = BeginTextCommandSetBlipName
  L5_2 = "STRING"
  L4_2(L5_2)
  L4_2 = AddTextComponentSubstringPlayerName
  L5_2 = Config
  L5_2 = L5_2.Lang
  L5_2 = L5_2.TargetCoords
  L4_2(L5_2)
  L4_2 = EndTextCommandSetBlipName
  L5_2 = blip
  L4_2(L5_2)
  L4_2 = SetBlipRoute
  L5_2 = L2_1
  L6_2 = true
  L4_2(L5_2, L6_2)
  blockTruckDoors = false
  L4_2 = Config
  L4_2 = L4_2.Debug
  if nil ~= L4_2 then
    L4_2 = print
    L5_2 = "NEW LOCATION RECEIVED"
    L4_2(L5_2)
  end
  L4_2 = Config
  L4_2 = L4_2.BlockHostFromWorking
  if L4_2 and A0_2 == A1_2 and 2 == A2_2 then
    return
  end
  L4_2 = Config
  L4_2 = L4_2.Debug
  if nil ~= L4_2 then
    L4_2 = print
    L5_2 = "GRANTED ACCESS TO DELIVERING"
    L4_2(L5_2)
  end
  L4_2 = Config
  L4_2 = L4_2.UseTarget
  if L4_2 then
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 2000
    L4_2(L5_2)
    L4_2 = AddBoxZoneToTargetSystem
    L5_2 = A3_2
    L4_2(L5_2)
  else
    L4_2 = Config
    L4_2 = L4_2.Debug
    if nil ~= L4_2 then
      L4_2 = print
      L5_2 = "STARTING LOOP"
      L4_2(L5_2)
    end
    while true do
      L4_2 = OnDuty
      if not L4_2 then
        break
      end
      L4_2 = Citizen
      L4_2 = L4_2.Wait
      L5_2 = 0
      L4_2(L5_2)
      L4_2 = GetEntityCoords
      L5_2 = PlayerPedId
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = Config
      L5_2 = L5_2.Debug
      if nil ~= L5_2 then
        L5_2 = print
        L6_2 = L4_2
        L7_2 = A3_2
        L8_2 = L4_2 - A3_2
        L8_2 = #L8_2
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = print
        L6_2 = "OnDuty: "
        L7_2 = OnDuty
        L8_2 = "isWearing: "
        L9_2 = wearing
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
      L5_2 = L4_2 - A3_2
      L5_2 = #L5_2
      if L5_2 < 10.0 then
        L5_2 = OnDuty
        if L5_2 then
          L5_2 = wearing
          if L5_2 then
            letSleep = false
            L5_2 = DrawText3Ds
            L6_2 = A3_2.x
            L7_2 = A3_2.y
            L8_2 = A3_2.z
            L9_2 = Config
            L9_2 = L9_2.keybindSettings
            L9_2 = L9_2.bagsInteractionkeyString
            L10_2 = Config
            L10_2 = L10_2.Lang
            L10_2 = L10_2.deliverParcel
            L9_2 = L9_2 .. L10_2
            L5_2(L6_2, L7_2, L8_2, L9_2)
            L5_2 = IsControlJustReleased
            L6_2 = 0
            L7_2 = Config
            L7_2 = L7_2.keybindSettings
            L7_2 = L7_2.bagsInteractionKey
            if not L7_2 then
              L7_2 = 38
            end
            L5_2 = L5_2(L6_2, L7_2)
            if L5_2 then
              L5_2 = L4_2 - A3_2
              L5_2 = #L5_2
              if L5_2 < 2.0 then
                L5_2 = KnockDoorAnim
                L6_2 = A3_2
                L5_2(L6_2)
                wearing = false
                break
              end
            end
        end
      end
      else
        L5_2 = Citizen
        L5_2 = L5_2.Wait
        L6_2 = 500
        L5_2(L6_2)
      end
    end
  end
end
L19_1(L20_1, L21_1)
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = wearing
  if L1_2 then
    wearing = false
    blockTruckDoors = true
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = blockTruckDoors
        if not L0_3 then
          break
        end
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 32
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 33
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 34
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 35
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 31
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 30
        L0_3(L1_3, L2_3)
      end
    end
    L1_2(L2_2)
    L1_2 = "timetable@jimmy@doorknock@"
    L2_2 = "knockdoor_idle"
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    while true do
      L4_2 = HasAnimDictLoaded
      L5_2 = L1_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        break
      end
      L4_2 = RequestAnimDict
      L5_2 = L1_2
      L4_2(L5_2)
      L4_2 = Wait
      L5_2 = 100
      L4_2(L5_2)
    end
    L4_2 = GetEntityCoords
    L5_2 = PlayerPedId
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L5_2()
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L5_2 = GetEntityForwardVector
    L6_2 = PlayerPedId
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L5_2 = L5_2 * 0.25
    L4_2 = L4_2 + L5_2
    L5_2 = DetachEntity
    L6_2 = L0_1
    L5_2(L6_2)
    L5_2 = FreezeEntityPosition
    L6_2 = L0_1
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = SetEntityCoords
    L6_2 = L0_1
    L7_2 = vec3
    L8_2 = L4_2.x
    L9_2 = L4_2.y
    L10_2 = L4_2.z
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L7_2(L8_2, L9_2, L10_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L5_2 = ClearPedTasks
    L6_2 = PlayerPedId
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L6_2()
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L5_2 = TaskPlayAnim
    L6_2 = L3_2
    L7_2 = L1_2
    L8_2 = L2_2
    L9_2 = 3.0
    L10_2 = 3.0
    L11_2 = -1
    L12_2 = 1
    L13_2 = 0
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L5_2 = Wait
    L6_2 = 3500
    L5_2(L6_2)
    L5_2 = TaskPlayAnim
    L6_2 = L3_2
    L7_2 = L1_2
    L8_2 = "exit"
    L9_2 = 3.0
    L10_2 = 3.0
    L11_2 = -1
    L12_2 = 1
    L13_2 = 0
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 1000
    L5_2(L6_2)
    L5_2 = TaskPlayAnim
    L6_2 = L3_2
    L7_2 = "anim@heists@box_carry@"
    L8_2 = "idle"
    L9_2 = 3.0
    L10_2 = -8
    L11_2 = -1
    L12_2 = 63
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 120
    L5_2(L6_2)
    L5_2 = GetEntityCoords
    L6_2 = PlayerPedId
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L6_2 = GetEntityForwardVector
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L6_2 = L6_2 * 0.15
    L5_2 = L5_2 - L6_2
    L6_2 = SetEntityCoords
    L7_2 = L0_1
    L8_2 = vec3
    L9_2 = L5_2.x
    L10_2 = L5_2.y
    L11_2 = L5_2.z
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L8_2(L9_2, L10_2, L11_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L6_2 = AttachEntityToEntity
    L7_2 = L0_1
    L8_2 = L3_2
    L9_2 = GetPedBoneIndex
    L10_2 = L3_2
    L11_2 = 60309
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = 0.025
    L11_2 = 0.08
    L12_2 = 0.255
    L13_2 = -145.0
    L14_2 = 290.0
    L15_2 = 180.0
    L16_2 = true
    L17_2 = true
    L18_2 = false
    L19_2 = true
    L20_2 = 1
    L21_2 = true
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 500
    L6_2(L7_2)
    L6_2 = GetEntityCoords
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L7_2 = GetEntityForwardVector
    L8_2 = PlayerPedId
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L8_2()
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L7_2 = L7_2 * 1
    L6_2 = L6_2 - L7_2
    L7_2 = TaskPedSlideToCoord
    L8_2 = PlayerPedId
    L8_2 = L8_2()
    L9_2 = L6_2
    L10_2 = GetEntityHeading
    L11_2 = PlayerPedId
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2()
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L11_2 = 1500
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 2500
    L7_2(L8_2)
    L7_2 = ObjToNet
    L8_2 = L0_1
    L7_2 = L7_2(L8_2)
    while true do
      if 0 ~= L7_2 then
        L8_2 = L0_1
        if L7_2 ~= L8_2 then
          break
        end
      end
      L8_2 = Citizen
      L8_2 = L8_2.Wait
      L9_2 = 100
      L8_2(L9_2)
      L8_2 = ObjToNet
      L9_2 = L0_1
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    end
    L8_2 = L0_1
    L3_1 = L8_2
    L8_2 = TriggerServerEvent
    L9_2 = "17mov_deliverer:CreatePed"
    L10_2 = A0_2
    L11_2 = L7_2
    L12_2 = GetEntityHeading
    L13_2 = PlayerPedId
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L13_2()
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L12_2 = L12_2 - 180
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = true
    return L8_2
  else
    L1_2 = Notify
    L2_2 = Config
    L2_2 = L2_2.Lang
    L2_2 = L2_2.missingParcel
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
end
KnockDoorAnim = L19_1
L19_1 = RegisterNetEvent
L20_1 = "17mov_deliverer:returnRequest"
function L21_1()
  local L0_2, L1_2
  wearing = true
  L0_2 = L3_1
  L0_1 = L0_2
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNetEvent
L20_1 = "17mov_deliverer:ResetVariables"
function L21_1()
  local L0_2, L1_2
  wearing = false
  L0_2 = nil
  L0_1 = L0_2
  L0_2 = ClearPedTasks
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNetEvent
L20_1 = "17mov_deliverer:AnimPed"
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L3_2 = L3_2 - A0_2
  L3_2 = #L3_2
  if L3_2 < 125.0 then
    L3_2 = NetToObj
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_1
    if 0 ~= L4_2 then
      L3_2 = L3_1
      L4_2 = 0
      L3_1 = L4_2
    end
    L4_2 = Config
    L4_2 = L4_2.enableSpawningPedsInDoors
    if L4_2 then
      L4_2 = GetGameTimer
      L4_2 = L4_2()
      L4_2 = L4_2 + 2500
      while 0 == L3_2 or L3_2 == A2_2 do
        L5_2 = GetGameTimer
        L5_2 = L5_2()
        if not (L4_2 > L5_2) then
          break
        end
        L5_2 = Citizen
        L5_2 = L5_2.Wait
        L6_2 = 100
        L5_2(L6_2)
        L5_2 = NetToObj
        L6_2 = A2_2
        L5_2 = L5_2(L6_2)
        L3_2 = L5_2
      end
      L5_2 = Config
      L5_2 = L5_2.PedModels
      L6_2 = math
      L6_2 = L6_2.random
      L7_2 = 1
      L8_2 = Config
      L8_2 = L8_2.PedModels
      L8_2 = #L8_2
      L6_2 = L6_2(L7_2, L8_2)
      L5_2 = L5_2[L6_2]
      L6_2 = RequestModel
      L7_2 = L5_2
      L6_2(L7_2)
      L6_2 = GetGameTimer
      L6_2 = L6_2()
      L4_2 = L6_2 + 2500
      while true do
        L6_2 = HasModelLoaded
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          break
        end
        L6_2 = GetGameTimer
        L6_2 = L6_2()
        if not (L4_2 > L6_2) then
          break
        end
        L6_2 = Citizen
        L6_2 = L6_2.Wait
        L7_2 = 50
        L6_2(L7_2)
      end
      L6_2 = CreatePed
      L7_2 = 0
      L8_2 = L5_2
      L9_2 = A0_2.x
      L10_2 = A0_2.y
      L11_2 = A0_2.z
      L11_2 = L11_2 - 1.0
      L12_2 = A1_2
      L13_2 = false
      L14_2 = true
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L7_2 = SetEntityVisible
      L8_2 = L6_2
      L9_2 = false
      L10_2 = 0
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = FreezeEntityPosition
      L8_2 = L6_2
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = SetBlockingOfNonTemporaryEvents
      L8_2 = L6_2
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = SetEntityInvincible
      L8_2 = L6_2
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = SetEntityVisible
      L8_2 = L6_2
      L9_2 = true
      L10_2 = 0
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = Citizen
      L7_2 = L7_2.Wait
      L8_2 = 3000
      L7_2(L8_2)
      L7_2 = TaskPlayAnim
      L8_2 = L6_2
      L9_2 = "anim@heists@box_carry@"
      L10_2 = "idle"
      L11_2 = 3.0
      L12_2 = -8
      L13_2 = -1
      L14_2 = 63
      L15_2 = 0
      L16_2 = 0
      L17_2 = 0
      L18_2 = 0
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L7_2 = Citizen
      L7_2 = L7_2.Wait
      L8_2 = 125
      L7_2(L8_2)
      L7_2 = AttachEntityToEntity
      L8_2 = L3_2
      L9_2 = L6_2
      L10_2 = GetPedBoneIndex
      L11_2 = L6_2
      L12_2 = 60309
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = 0.025
      L12_2 = 0.08
      L13_2 = 0.255
      L14_2 = -145.0
      L15_2 = 290.0
      L16_2 = 180.0
      L17_2 = true
      L18_2 = true
      L19_2 = false
      L20_2 = true
      L21_2 = 1
      L22_2 = true
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L7_2 = Citizen
      L7_2 = L7_2.Wait
      L8_2 = 3000
      L7_2(L8_2)
      L7_2 = DeleteEntity
      L8_2 = L3_2
      L7_2(L8_2)
      L7_2 = DeletePed
      L8_2 = L6_2
      L7_2(L8_2)
    else
      L4_2 = Citizen
      L4_2 = L4_2.Wait
      L5_2 = 3125
      L4_2(L5_2)
      L4_2 = DeleteEntity
      L5_2 = L3_2
      L4_2(L5_2)
    end
  end
end
L19_1(L20_1, L21_1)

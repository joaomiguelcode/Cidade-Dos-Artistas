local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1
L0_1 = nil
L1_1 = nil
L2_1 = nil
L3_1 = false
L4_1 = 0
L5_1 = 0
L6_1 = 0
OnDuty = false
JobVehicleNetId = nil
L7_1 = false
L8_1 = {}
L9_1 = 0
L10_1 = {}
L11_1 = GetPlayerServerId
L12_1 = PlayerId
L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1 = L12_1()
L11_1 = L11_1(L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1)
L12_1 = true
L13_1 = ""
L14_1 = NetToObj
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = NetworkDoesNetworkIdExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L14_1
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = 0
    return L1_2
  end
end
NetToObj = L15_1
L15_1 = NetToVeh
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = NetworkDoesNetworkIdExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L15_1
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = 0
    return L1_2
  end
end
NetToVeh = L16_1
L16_1 = false
L17_1 = false
L18_1 = RegisterNUICallback
L19_1 = "driverLoaded"
function L20_1()
  local L0_2, L1_2
  L0_2 = true
  L16_1 = L0_2
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "nuiLoaded"
function L20_1()
  local L0_2, L1_2
  L0_2 = true
  L17_1 = L0_2
end
L18_1(L19_1, L20_1)
L18_1 = CreateThread
function L19_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = L16_1
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
    L17_1 = L0_2
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 500
    L0_2(L1_2)
  end
  while true do
    L0_2 = L17_1
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
L18_1(L19_1)
L18_1 = RegisterNUICallback
L19_1 = "tutorialClosed"
function L20_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  tutorialOpen = false
  L0_2 = ""
  L13_1 = L0_2
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "menuClosed"
function L20_1()
  local L0_2, L1_2, L2_2
  L0_2 = false
  L12_1 = L0_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "dontShowTutorialAgain"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetResourceKvpInt
  L3_2 = "17mov_Tutorials:"
  L4_2 = L13_1
  L3_2 = L3_2 .. L4_2
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "17mov_Garbage:UpdateHostPercentages"
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateHostRewards"
  L2_2.value = A0_2
  L1_2(L2_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "17mov_Garbage:SetMyReward"
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateMyReward"
  L2_2.reward = A0_2
  L1_2(L2_2)
end
L18_1(L19_1, L20_1)
L18_1 = Config
L18_1 = L18_1.letBossSplitReward
if L18_1 then
  L18_1 = RegisterNUICallback
  L19_1 = "checkIfThisRewardIsFine"
  function L20_1(A0_2, A1_2)
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
    L5_2 = "17mov_Garbage:CheckThisReward"
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
  L18_1(L19_1, L20_1)
else
  L18_1 = CreateThread
  function L19_1()
    local L0_2, L1_2
    while true do
      L0_2 = L17_1
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
  L18_1(L19_1)
end
L18_1 = RegisterNetEvent
L19_1 = "17mov_Garbage:clearMyLobby"
function L20_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L10_1 = L0_2
  L0_2 = TriggerServerCallback
  L1_2 = "17mov_Garbage:init"
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
    L7_1 = L1_3
  end
  L0_2(L1_2, L2_2)
end
L18_1(L19_1, L20_1)
function L18_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L9_1
  L2_2 = L2_2 + 1
  L9_1 = L2_2
  L2_2 = L9_1
  myId = L2_2
  L2_2 = L8_1
  L3_2 = {}
  L2_2[A0_2] = L3_2
  L2_2 = L8_1
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
TriggerServerCallback = L18_1
L18_1 = RegisterNetEvent
L19_1 = "17mov_Callbacks:receiveData"
L20_1 = GetCurrentResourceName
L20_1 = L20_1()
L19_1 = L19_1 .. L20_1
function L20_1(A0_2, A1_2, ...)
  local L2_2, L3_2
  L2_2 = L8_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L8_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = L8_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = ...
  L2_2(L3_2)
  L2_2 = L8_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L8_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      L2_2 = L8_1
      L2_2 = L2_2[A0_2]
      L2_2[A1_2] = nil
    end
  end
  L2_2 = L8_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L8_1
    L2_2 = L2_2[A0_2]
    L2_2 = #L2_2
    if 0 == L2_2 then
      L2_2 = L8_1
      L2_2[A0_2] = nil
    end
  end
end
L18_1(L19_1, L20_1)
L18_1 = false
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2
  L1_2 = L18_1
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
      L18_1 = L1_2
      return
    end
  end
  L1_2 = true
  L18_1 = L1_2
  L1_2 = Config
  L1_2 = L1_2.UseTarget
  if L1_2 then
    L1_2 = SpawnStartingPed
    L1_2()
    L1_2 = AddBagsModelsToTargetSystem
    L1_2()
    L1_2 = Config
    L2_2 = {}
    L3_2 = Config
    L3_2 = L3_2.Locations
    L3_2 = L3_2.FinishJob
    L2_2.FinishJob = L3_2
    L1_2.Locations2 = L2_2
    while true do
      L1_2 = L18_1
      if not L1_2 then
        break
      end
      L1_2 = Citizen
      L1_2 = L1_2.Wait
      L2_2 = 0
      L1_2(L2_2)
      L1_2 = GetEntityCoords
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
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
          goto lbl_65
        end
      end
      L8_2 = Config
      L8_2 = L8_2.RequiredJob
      ::lbl_65::
      if "none" == L8_2 then
        L8_2 = pairs
        L9_2 = Config
        L9_2 = L9_2.Locations2
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
          L14_2 = L13_2.grade
          if L14_2 then
            L14_2 = A0_2.job
            L14_2 = L14_2.grade
            L15_2 = L13_2.grade
            if not (L14_2 >= L15_2) then
              goto lbl_200
            end
          end
          L14_2 = OnDuty
          if not L14_2 then
            L14_2 = L13_2.type
            if "duty" ~= L14_2 then
              goto lbl_200
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
          ::lbl_200::
        end
        if L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if not L8_2 then
            goto lbl_219
          end
        end
        if L2_2 then
          L8_2 = LastStation
          if L8_2 == L5_2 then
            L8_2 = LastPart
            if L8_2 == L6_2 then
              L8_2 = LastPartNum
              if L8_2 == L7_2 then
                goto lbl_252
              end
            end
          end
          ::lbl_219::
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
                      goto lbl_244
                    end
                  end
                end
                L8_2 = TriggerEvent
                L9_2 = "17mov_Garbage:ExitedMarker"
                L10_2 = LastStation
                L11_2 = LastPart
                L12_2 = LastPartNum
                L8_2(L9_2, L10_2, L11_2, L12_2)
                L3_2 = true
              end
            end
          end
          ::lbl_244::
          HasAlreadyEnteredMarker = true
          LastStation = L5_2
          LastPart = L6_2
          LastPartNum = L7_2
          L8_2 = TriggerEvent
          L9_2 = "17mov_Garbage:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_252::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_Garbage:ExitedMarker"
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
    L1_2 = DeleteEntity
    L2_2 = spawnedPed
    L1_2(L2_2)
  else
    while true do
      L1_2 = L18_1
      if not L1_2 then
        break
      end
      L1_2 = Citizen
      L1_2 = L1_2.Wait
      L2_2 = 0
      L1_2(L2_2)
      L1_2 = GetEntityCoords
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
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
          goto lbl_306
        end
      end
      L8_2 = Config
      L8_2 = L8_2.RequiredJob
      ::lbl_306::
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
              goto lbl_441
            end
          end
          L14_2 = OnDuty
          if not L14_2 then
            L14_2 = L13_2.type
            if "duty" ~= L14_2 then
              goto lbl_441
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
          ::lbl_441::
        end
        if L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if not L8_2 then
            goto lbl_460
          end
        end
        if L2_2 then
          L8_2 = LastStation
          if L8_2 == L5_2 then
            L8_2 = LastPart
            if L8_2 == L6_2 then
              L8_2 = LastPartNum
              if L8_2 == L7_2 then
                goto lbl_493
              end
            end
          end
          ::lbl_460::
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
                      goto lbl_485
                    end
                  end
                end
                L8_2 = TriggerEvent
                L9_2 = "17mov_Garbage:ExitedMarker"
                L10_2 = LastStation
                L11_2 = LastPart
                L12_2 = LastPartNum
                L8_2(L9_2, L10_2, L11_2, L12_2)
                L3_2 = true
              end
            end
          end
          ::lbl_485::
          HasAlreadyEnteredMarker = true
          LastStation = L5_2
          LastPart = L6_2
          LastPartNum = L7_2
          L8_2 = TriggerEvent
          L9_2 = "17mov_Garbage:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_493::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_Garbage:ExitedMarker"
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
StartMarkers = L19_1
L19_1 = Citizen
L19_1 = L19_1.CreateThread
function L20_1()
  local L0_2, L1_2
  L0_2 = GetPlayerData
  L0_2 = L0_2()
  L2_1 = L0_2
  while true do
    L0_2 = L2_1
    if nil ~= L0_2 then
      L0_2 = L2_1.job
      if nil ~= L0_2 then
        break
      end
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 100
    L0_2(L1_2)
    L0_2 = GetPlayerData
    L0_2 = L0_2()
    L2_1 = L0_2
  end
  L0_2 = Config
  L0_2 = L0_2.RestrictBlipToRequiredJob
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.RequiredJob
    L1_2 = L2_1.job
    L1_2 = L1_2.name
    if L0_2 ~= L1_2 then
      goto lbl_30
    end
  end
  L0_2 = MakeBlip
  L0_2()
  ::lbl_30::
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 5000
  L0_2(L1_2)
  L0_2 = StartMarkers
  L1_2 = L2_1
  L0_2(L1_2)
end
L19_1(L20_1)
L19_1 = false
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L19_1
  if L0_2 then
    return
  end
  L0_2 = true
  L19_1 = L0_2
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
MakeBlip = L20_1
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = false
  L19_1 = L0_2
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
DeleteBlip = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = initalized
  if L1_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.useModernUI
  if L1_2 then
    while true do
      L1_2 = L17_1
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
  L2_1 = L1_2
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
        L1_2 = L2_1
        if nil ~= L1_2 then
          break
        end
        L1_2 = L2_1.job
        if nil ~= L1_2 then
          break
        end
        L1_2 = GetPlayerData
        L1_2 = L1_2()
        L2_1 = L1_2
        L1_2 = Citizen
        L1_2 = L1_2.Wait
        L2_2 = 100
        L1_2(L2_2)
      end
      L1_2 = L2_1.job
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
  L2_2 = "17mov_Garbage:init"
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
    L7_1 = L1_3
  end
  L1_2(L2_2, L3_2)
end
InitalizeScript = L20_1
L20_1 = RegisterNetEvent
L21_1 = "QBCore:Client:OnPlayerLoaded"
function L22_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "esx:playerLoaded"
function L22_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "QBCore:Client:OnJobUpdate"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "QBCore:Client:OnJobUpdate"
function L22_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetPlayerData
  L1_2 = L1_2()
  L2_1 = L1_2
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RestrictBlipToRequiredJob
    if L1_2 then
      L1_2 = L2_1.job
      L1_2 = L1_2.name
      L2_2 = Config
      L2_2 = L2_2.RequiredJob
      if L1_2 == L2_2 then
        goto lbl_22
      end
    end
  end
  L1_2 = Config
  L1_2 = L1_2.RestrictBlipToRequiredJob
  ::lbl_22::
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
    L1_2 = L2_1.job
    L1_2 = L1_2.name
    L2_2 = Config
    L2_2 = L2_2.RequiredJob
    if L1_2 == L2_2 then
      goto lbl_41
    end
  end
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  ::lbl_41::
  if "none" == L1_2 then
    L1_2 = StartMarkers
    L2_2 = L2_1
    L1_2(L2_2)
  else
    L1_2 = false
    L18_1 = L1_2
  end
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "esx:setJob"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "esx:setJob"
function L22_1(A0_2)
  local L1_2, L2_2
  while true do
    L1_2 = L2_1
    if nil ~= L1_2 then
      L1_2 = L2_1.job
      if nil ~= L1_2 then
        break
      end
    end
    L1_2 = GetPlayerData
    L1_2 = L1_2()
    L2_1 = L1_2
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  L2_1.job = A0_2
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RestrictBlipToRequiredJob
    if L1_2 then
      L1_2 = L2_1.job
      L1_2 = L1_2.name
      L2_2 = Config
      L2_2 = L2_2.RequiredJob
      if L1_2 == L2_2 then
        goto lbl_34
      end
    end
  end
  L1_2 = Config
  L1_2 = L1_2.RestrictBlipToRequiredJob
  ::lbl_34::
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
    L1_2 = L2_1.job
    L1_2 = L1_2.name
    L2_2 = Config
    L2_2 = L2_2.RequiredJob
    if L1_2 == L2_2 then
      goto lbl_53
    end
  end
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  ::lbl_53::
  if "none" == L1_2 then
    L1_2 = StartMarkers
    L2_2 = L2_1
    L1_2(L2_2)
  else
    L1_2 = false
    L18_1 = L1_2
  end
end
L20_1(L21_1, L22_1)
L20_1 = AddEventHandler
L21_1 = "17mov_Garbage:EnteredMarker"
function L22_1(A0_2)
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
L20_1(L21_1, L22_1)
L20_1 = AddEventHandler
L21_1 = "17mov_Garbage:ExitedMarker"
function L22_1(A0_2)
  local L1_2
  CurrentAction = nil
  CurrentActionMsg = nil
  CurrentActionStation = nil
end
L20_1(L21_1, L22_1)
L20_1 = RegisterCommand
L21_1 = "+MalizniakSmieciarzStartMarkerAction"
function L22_1()
  local L0_2, L1_2
end
L20_1(L21_1, L22_1)
L20_1 = RegisterCommand
L21_1 = "-MalizniakSmieciarzStartMarkerAction"
function L22_1()
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
        L1_2 = "17mov_Garbage:IfPlayerIsHost"
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
L20_1(L21_1, L22_1)
L20_1 = TriggerEvent
L21_1 = "chat:removeSuggestion"
L22_1 = "/+MalizniakSmieciarzStartMarkerAction"
L20_1(L21_1, L22_1)
L20_1 = TriggerEvent
L21_1 = "chat:removeSuggestion"
L22_1 = "/-MalizniakSmieciarzStartMarkerAction"
L20_1(L21_1, L22_1)
L20_1 = RegisterKeyMapping
L21_1 = "+MalizniakSmieciarzStartMarkerAction"
L22_1 = Config
L22_1 = L22_1.Lang
L22_1 = L22_1.keybind
L23_1 = "keyboard"
L24_1 = "E"
L20_1(L21_1, L22_1, L23_1, L24_1)
L20_1 = {}
L21_1 = Config
L21_1 = L21_1.useModernUI
if L21_1 then
  function L21_1()
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
    L0_2 = L7_1
    if not L0_2 then
      L0_2 = TriggerServerCallback
      L1_2 = "17mov_Garbage:init"
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
        L7_1 = L1_3
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
    L12_1 = L0_2
    L0_2 = false
    L1_2 = false
    L2_2 = false
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
      while true do
        L0_3 = L12_1
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
        L5_3 = "17mov_Garbage:GetPlayersNames"
        function L6_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4
          L1_4 = pairs
          L2_4 = A0_4
          L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
          for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
            L8_4 = L6_4.id
            L7_4 = L10_1
            L7_4 = L7_4[L8_4]
            if nil == L7_4 then
              L7_4 = true
              L3_3 = L7_4
              L8_4 = L6_4.id
              L7_4 = L20_1
              L7_4 = L7_4[L8_4]
              if nil == L7_4 then
                L8_4 = L6_4.id
                L7_4 = L20_1
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
          L2_4 = L20_1
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
              L9_4 = L20_1
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
  OpenDutyMenu = L21_1
else
  function L21_1()
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
    L0_2 = L7_1
    if not L0_2 then
      L0_2 = TriggerServerCallback
      L1_2 = "17mov_Garbage:init"
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
        L7_1 = L1_3
      end
      L0_2(L1_2, L2_2)
      L0_2 = print
      L1_2 = "SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD"
      L0_2(L1_2)
      return
    end
    L0_2 = TriggerServerCallback
    L1_2 = "17mov_Garbage:IfPlayerIsHost"
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
  OpenDutyMenu = L21_1
end
L21_1 = false
L22_1 = RegisterNUICallback
L23_1 = "changeClothes"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.type
  if "work" == L1_2 then
    L2_2 = true
    L21_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "work"
    L2_2(L3_2)
  else
    L2_2 = false
    L21_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "citizen"
    L2_2(L3_2)
  end
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "GetClosestPlayers"
function L24_1(A0_2, A1_2)
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
  L6_2 = "17mov_Garbage:IfPlayerIsHost"
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = TriggerServerCallback
      L2_3 = "17mov_Garbage:GetPlayersNames"
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
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "requestReacted"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.boolean
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_Garbage:ClientReactRequest"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L22_1(L23_1, L24_1)
L22_1 = Config
L22_1 = L22_1.useModernUI
if L22_1 then
  L22_1 = RegisterNUICallback
  L23_1 = "sendRequest"
  function L24_1(A0_2)
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
    L2_2 = "17mov_Garbage:SendRequestToClient_sv"
    L3_2 = tonumber
    L4_2 = A0_2.id
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
  L22_1(L23_1, L24_1)
  L22_1 = RegisterNUICallback
  L23_1 = "kickPlayerFromLobby"
  function L24_1(A0_2)
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
    L5_2 = L10_1
    L5_2 = L5_2[L1_2]
    L5_2 = L5_2.name
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = TriggerServerEvent
    L3_2 = "17mov_Garbage:KickPlayerFromLobby"
    L4_2 = L1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L22_1(L23_1, L24_1)
else
  L22_1 = RegisterNUICallback
  L23_1 = "sendRequest"
  function L24_1(A0_2)
    local L1_2, L2_2, L3_2
    L1_2 = OnDuty
    if L1_2 then
      L1_2 = Notify
      L2_2 = Config
      L2_2 = L2_2.Lang
      L2_2 = L2_2.cantInvite
      L1_2(L2_2)
      return
    end
    L1_2 = Notify
    L2_2 = Config
    L2_2 = L2_2.Lang
    L2_2 = L2_2.inviteSent
    L1_2(L2_2)
    L1_2 = TriggerServerEvent
    L2_2 = "17mov_Garbage:SendRequestToClient_sv"
    L3_2 = A0_2.id
    L1_2(L2_2, L3_2)
  end
  L22_1(L23_1, L24_1)
  L22_1 = RegisterNUICallback
  L23_1 = "kickPlayerFromLobby"
  function L24_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2
    L1_2 = Notify
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = Config
    L3_2 = L3_2.Lang
    L3_2 = L3_2.kicked
    L4_2 = A0_2.name
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = TriggerServerEvent
    L2_2 = "17mov_Garbage:KickPlayerFromLobby"
    L3_2 = A0_2.id
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L22_1(L23_1, L24_1)
end
L22_1 = RegisterNUICallback
L23_1 = "focusOff"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "notify"
function L24_1(A0_2)
  local L1_2, L2_2
  L1_2 = Notify
  L2_2 = A0_2.msg
  L1_2(L2_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "17mov_Garbage:SendRequestToClient_cl"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "17mov_Garbage:SendRequestToClient_cl"
function L24_1(A0_2, A1_2)
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
L22_1(L23_1, L24_1)
L22_1 = Config
L22_1 = L22_1.useModernUI
if L22_1 then
  L22_1 = RegisterNetEvent
  L23_1 = "17mov_Garbage:RefreshMugs"
  L22_1(L23_1)
  L22_1 = AddEventHandler
  L23_1 = "17mov_Garbage:RefreshMugs"
  function L24_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
    while true do
      L2_2 = L7_1
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
      L8_2 = L10_1
      L8_2 = L8_2[L9_2]
      if nil == L8_2 then
        L8_2 = L11_1
        L9_2 = L7_2.id
        if L8_2 == L9_2 then
          L9_2 = L7_2.id
          L8_2 = L10_1
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
          L8_2 = L10_1
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
        L10_2 = L10_1
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.itsMe
        L9_2.showQuitBtn = L10_2
        L8_2(L9_2)
      end
    end
    L2_2 = 0
    L3_2 = pairs
    L4_2 = L10_1
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
        L11_2 = L10_1
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
      L4_2 = "17mov_Garbage:init"
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
        L7_1 = L1_3
      end
      L3_2(L4_2, L5_2)
    end
    L3_2 = TriggerServerCallback
    L4_2 = "17mov_Garbage:IfPlayerOwnsTeam"
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
  L22_1(L23_1, L24_1)
else
  L22_1 = RegisterNetEvent
  L23_1 = "17mov_Garbage:RefreshMugs"
  L22_1(L23_1)
  L22_1 = AddEventHandler
  L23_1 = "17mov_Garbage:RefreshMugs"
  function L24_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    while true do
      L2_2 = L7_1
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
    L3_2 = "17mov_Garbage:IfPlayerIsHost"
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
  L22_1(L23_1, L24_1)
end
function L22_1()
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
IsSpawnPointClear = L22_1
L22_1 = RegisterNUICallback
L23_1 = "startJob"
function L24_1(A0_2)
  local L1_2, L2_2
  L1_2 = OnDuty
  if not L1_2 then
    L1_2 = IsSpawnPointClear
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "17mov_Garbage:StartJob_sv"
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
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "leaveLobby"
function L24_1(A0_2)
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
  L3_2 = "17mov_Garbage:KickPlayerFromLobby"
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
L22_1(L23_1, L24_1)
function L22_1(A0_2, A1_2)
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
SpawnVehicle = L22_1
L22_1 = RegisterNetEvent
L23_1 = "17mov_Garbage:StartJob_cl"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "17mov_Garbage:StartJob_cl"
function L24_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = Config
  L5_2 = L5_2.SpawnPoint
  L6_2 = GetEntityCoords
  L7_2 = PlayerPedId
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = 0
  L6_1 = L7_2
  L7_2 = -1
  if not A3_2 then
    L8_2 = GetResourceKvpInt
    L9_2 = "17mov_Tutorials:"
    L10_2 = "garbageTutorial"
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2(L9_2)
    if 0 == L8_2 then
      L8_2 = "garbageTutorial"
      L13_1 = L8_2
      L8_2 = SendNUIMessage
      L9_2 = {}
      L9_2.action = "showTutorial"
      L10_2 = Config
      L10_2 = L10_2.Lang
      L10_2 = L10_2.tutorial
      L9_2.customText = L10_2
      L8_2(L9_2)
      L8_2 = SetNuiFocus
      L9_2 = true
      L10_2 = true
      L8_2(L9_2, L10_2)
    end
  end
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3
    L0_3 = L21_1
    if not L0_3 then
      L0_3 = Config
      L0_3 = L0_3.RequireWorkClothes
      if L0_3 then
        L0_3 = true
        L21_1 = L0_3
        L0_3 = ChangeClothes
        L1_3 = "work"
        L0_3(L1_3)
      end
    end
  end
  L8_2(L9_2)
  OnDuty = true
  if A0_2 == A1_2 then
    if not A3_2 then
      L8_2 = Config
      L8_2 = L8_2.EnableVehicleTeleporting
      if L8_2 then
        L8_2 = DoScreenFadeOut
        L9_2 = 300
        L8_2(L9_2)
        L8_2 = Citizen
        L8_2 = L8_2.Wait
        L9_2 = 1000
        L8_2(L9_2)
      end
      L8_2 = SpawnVehicle
      L9_2 = Config
      L9_2 = L9_2.JobVehicleModel
      L10_2 = L5_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = Citizen
      L9_2 = L9_2.Wait
      L10_2 = 2000
      L9_2(L10_2)
      L9_2 = DoScreenFadeIn
      L10_2 = 300
      L9_2(L10_2)
      L1_1 = L8_2
      L9_2 = VehToNet
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      JobVehicleNetId = L9_2
    else
      L8_2 = NetToVeh
      L9_2 = A4_2
      L8_2 = L8_2(L9_2)
      L1_1 = L8_2
      JobVehicleNetId = A4_2
      L8_2 = 0
      while true do
        L9_2 = L1_1
        if 0 ~= L9_2 then
          break
        end
        L9_2 = NetToVeh
        L10_2 = A4_2
        L9_2 = L9_2(L10_2)
        L1_1 = L9_2
        L9_2 = Citizen
        L9_2 = L9_2.Wait
        L10_2 = 100
        L9_2(L10_2)
        L8_2 = L8_2 + 1
        L9_2 = 300
        if L8_2 > L9_2 then
          break
        end
      end
      while true do
        L9_2 = DoesEntityExist
        L10_2 = L1_1
        L9_2 = L9_2(L10_2)
        if L9_2 then
          break
        end
        L9_2 = 300
        if not (L8_2 < L9_2) then
          break
        end
        L9_2 = Citizen
        L9_2 = L9_2.Wait
        L10_2 = 100
        L9_2(L10_2)
      end
      L9_2 = Config
      L9_2 = L9_2.UseTarget
      if L9_2 then
        L9_2 = addJobVehicleToTargetSystem
        L10_2 = L1_1
        L9_2(L10_2)
      end
    end
    L8_2 = Config
    L8_2 = L8_2.UseTarget
    if L8_2 then
      L8_2 = addJobVehicleToTargetSystem
      L9_2 = L1_1
      L8_2(L9_2)
    end
    L8_2 = TriggerServerEvent
    L9_2 = "17mov_GarbageJob:SendVehicleNetId"
    L10_2 = JobVehicleNetId
    L8_2(L9_2, L10_2)
  elseif not A3_2 then
    while true do
      L8_2 = Citizen
      L8_2 = L8_2.Wait
      L9_2 = 0
      L8_2(L9_2)
      L8_2 = GetClosestVehicle
      L9_2 = vector3
      L10_2 = L5_2.x
      L11_2 = L5_2.y
      L12_2 = L5_2.z
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      if nil ~= L8_2 then
        L9_2 = vector3
        L10_2 = L5_2.x
        L11_2 = L5_2.y
        L12_2 = L5_2.z
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L10_2 = GetEntityCoords
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        L9_2 = L9_2 - L10_2
        L9_2 = #L9_2
        if L9_2 < 5.0 then
          L9_2 = Citizen
          L9_2 = L9_2.Wait
          L10_2 = 300
          L9_2(L10_2)
          L9_2 = Config
          L9_2 = L9_2.UseTarget
          if L9_2 then
            L9_2 = addJobVehicleToTargetSystem
            L10_2 = L8_2
            L9_2(L10_2)
          end
          L9_2 = VehToNet
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          JobVehicleNetId = L9_2
          L1_1 = L8_2
          break
        end
      end
    end
    L8_2 = Config
    L8_2 = L8_2.GiveKeysToAllLobby
    if L8_2 then
      L8_2 = SetVehicle
      L9_2 = L1_1
      L8_2(L9_2)
    end
  else
    L8_2 = NetToVeh
    L9_2 = A4_2
    L8_2 = L8_2(L9_2)
    L1_1 = L8_2
    JobVehicleNetId = A4_2
    L8_2 = 0
    while true do
      L9_2 = L1_1
      if 0 ~= L9_2 then
        break
      end
      L9_2 = NetToVeh
      L10_2 = A4_2
      L9_2 = L9_2(L10_2)
      L1_1 = L9_2
      L9_2 = Citizen
      L9_2 = L9_2.Wait
      L10_2 = 100
      L9_2(L10_2)
      L8_2 = L8_2 + 1
      L9_2 = 400
      if L8_2 > L9_2 then
        break
      end
    end
    while true do
      L9_2 = DoesEntityExist
      L10_2 = L1_1
      L9_2 = L9_2(L10_2)
      if L9_2 then
        break
      end
      L9_2 = 400
      if not (L8_2 < L9_2) then
        break
      end
      L9_2 = Citizen
      L9_2 = L9_2.Wait
      L10_2 = 100
      L9_2(L10_2)
    end
    L9_2 = Config
    L9_2 = L9_2.UseTarget
    if L9_2 then
      L9_2 = addJobVehicleToTargetSystem
      L10_2 = L1_1
      L9_2(L10_2)
    end
  end
  L8_2 = SendNUIMessage
  L9_2 = {}
  L9_2.action = "showCounter"
  L8_2(L9_2)
  L8_2 = CreateThread
  function L9_2()
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
            L1_3 = L1_1
            if L1_3 ~= L0_3 then
              L1_3 = JobVehicleNetId
              if L0_3 ~= L1_3 then
                L1_3 = Config
                L1_3 = L1_3.UseTarget
                if L1_3 then
                  L1_3 = DeleteEntityFromTarget
                  L2_3 = L1_1
                  L1_3(L2_3)
                end
                L1_3 = NetToVeh
                L2_3 = JobVehicleNetId
                L1_3 = L1_3(L2_3)
                L1_1 = L1_3
                L1_3 = Config
                L1_3 = L1_3.UseTarget
                if L1_3 then
                  L1_3 = addJobVehicleToTargetSystem
                  L2_3 = vehicle
                  L1_3(L2_3)
                end
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
  L8_2(L9_2)
  L8_2 = Config
  L8_2 = L8_2.UseTarget
  if not L8_2 then
    L8_2 = Citizen
    L8_2 = L8_2.CreateThread
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
      while true do
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 200
        L0_3(L1_3)
        L0_3 = OnDuty
        if not L0_3 then
          break
        end
        L0_3 = GetEntityCoords
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        L1_3 = L3_1
        if not L1_3 then
          L1_3 = ipairs
          L2_3 = Config
          L2_3 = L2_3.PropsHashes
          L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
          for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
            L7_3 = GetClosestObjectOfType
            L8_3 = L0_3
            L9_3 = 1.0
            L10_3 = L6_3
            L11_3 = false
            L12_3 = false
            L13_3 = false
            L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
            L5_1 = L7_3
            L7_3 = L5_1
            if L7_3 > 0 then
              L7_3 = GetEntityHealth
              L8_3 = L5_1
              L7_3 = L7_3(L8_3)
              if 999 ~= L7_3 then
                break
              end
            end
          end
          goto lbl_42
          break
        end
        ::lbl_42::
      end
    end
    L8_2(L9_2)
    L8_2 = Citizen
    L8_2 = L8_2.CreateThread
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      while true do
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = OnDuty
        if L0_3 then
          L0_3 = GetEntityCoords
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
          L1_3 = L3_1
          if not L1_3 then
            L1_3 = L5_1
            if L1_3 > 0 then
              L1_3 = L5_1
              entity = L1_3
              L1_3 = GetEntityCoords
              L2_3 = entity
              L1_3 = L1_3(L2_3)
              eCoords = L1_3
              L1_3 = eCoords
              L1_3 = L0_3 - L1_3
              L1_3 = #L1_3
              if L1_3 < 2.0 then
                L1_3 = GetEntityHealth
                L2_3 = entity
                L1_3 = L1_3(L2_3)
                if 999 ~= L1_3 then
                  L1_3 = DrawText3Ds
                  L2_3 = eCoords
                  L2_3 = L2_3.x
                  L3_3 = eCoords
                  L3_3 = L3_3.y
                  L4_3 = eCoords
                  L4_3 = L4_3.z
                  L5_3 = Config
                  L5_3 = L5_3.keybindSettings
                  L5_3 = L5_3.bagsInteractionkeyString
                  if not L5_3 then
                    L5_3 = "~r~[E] | ~s~"
                  end
                  L6_3 = Config
                  L6_3 = L6_3.Lang
                  L6_3 = L6_3.pickGarbage
                  L5_3 = L5_3 .. L6_3
                  L1_3(L2_3, L3_3, L4_3, L5_3)
                  L1_3 = IsControlJustReleased
                  L2_3 = 0
                  L3_3 = Config
                  L3_3 = L3_3.keybindSettings
                  L3_3 = L3_3.bagsInteractionKey
                  if not L3_3 then
                    L3_3 = 38
                  end
                  L1_3 = L1_3(L2_3, L3_3)
                  if L1_3 then
                    L1_3 = Pick
                    L2_3 = entity
                    L3_3 = false
                    L1_3(L2_3, L3_3)
                  end
              end
              else
                L1_3 = Citizen
                L1_3 = L1_3.Wait
                L2_3 = 500
                L1_3(L2_3)
              end
            else
              L1_3 = Citizen
              L1_3 = L1_3.Wait
              L2_3 = 500
              L1_3(L2_3)
            end
          else
            L1_3 = GetClosestVehicle
            L1_3 = L1_3()
            L2_3 = GetEntityModel
            L3_3 = L1_3
            L2_3 = L2_3(L3_3)
            L3_3 = GetHashKey
            L4_3 = Config
            L4_3 = L4_3.JobVehicleModel
            L3_3 = L3_3(L4_3)
            if L2_3 == L3_3 then
              L2_3 = GetWorldPositionOfEntityBone
              L3_3 = L1_3
              L4_3 = GetEntityBoneIndexByName
              L5_3 = L1_3
              L6_3 = Config
              L6_3 = L6_3.VehicleBackBone
              L4_3, L5_3, L6_3, L7_3, L8_3 = L4_3(L5_3, L6_3)
              L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
              L3_3 = L0_3 - L2_3
              L3_3 = #L3_3
              if L3_3 < 2.0 then
                L3_3 = DrawText3Ds
                L4_3 = L2_3.x
                L5_3 = L2_3.y
                L6_3 = L2_3.z
                L7_3 = Config
                L7_3 = L7_3.keybindSettings
                L7_3 = L7_3.bagsInteractionkeyString
                if not L7_3 then
                  L7_3 = "~r~[E] | ~s~"
                end
                L8_3 = Config
                L8_3 = L8_3.Lang
                L8_3 = L8_3.putGarbage
                L7_3 = L7_3 .. L8_3
                L3_3(L4_3, L5_3, L6_3, L7_3)
                L3_3 = IsControlJustReleased
                L4_3 = 0
                L5_3 = Config
                L5_3 = L5_3.keybindSettings
                L5_3 = L5_3.bagsInteractionKey
                if not L5_3 then
                  L5_3 = 38
                end
                L3_3 = L3_3(L4_3, L5_3)
                if L3_3 then
                  L3_3 = Pick
                  L4_3 = 1
                  L5_3 = true
                  L3_3(L4_3, L5_3)
                end
              else
                L3_3 = IsControlJustReleased
                L4_3 = 0
                L5_3 = Config
                L5_3 = L5_3.DropBagKeyIndex
                if not L5_3 then
                  L5_3 = Config
                  L5_3 = L5_3.keybindSettings
                  L5_3 = L5_3.bagsInteractionKey
                  if not L5_3 then
                    L5_3 = 38
                  end
                end
                L3_3 = L3_3(L4_3, L5_3)
                if L3_3 then
                  L3_3 = Pick
                  L4_3 = 1
                  L5_3 = false
                  L3_3(L4_3, L5_3)
                end
              end
            end
          end
        else
          break
        end
      end
    end
    L8_2(L9_2)
  else
    L8_2 = CreateThread
    function L9_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = OnDuty
        if not L0_3 then
          break
        end
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = L3_1
        if L0_3 then
          L0_3 = IsDead
          L1_3 = PlayerPedId
          L1_3, L2_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsControlJustReleased
            L1_3 = 0
            L2_3 = Config
            L2_3 = L2_3.DropBagKeyIndex
            if not L2_3 then
              L2_3 = Config
              L2_3 = L2_3.keybindSettings
              L2_3 = L2_3.bagsInteractionKey
              if not L2_3 then
                L2_3 = 38
              end
            end
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              goto lbl_36
            end
          end
          L0_3 = Pick
          L1_3 = 1
          L2_3 = false
          L0_3(L1_3, L2_3)
        end
        ::lbl_36::
      end
    end
    L8_2(L9_2)
  end
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = L3_1
      if L0_3 then
        L0_3 = IsDead
        L1_3 = PlayerPedId
        L1_3, L2_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          L0_3 = Pick
          L1_3 = 1
          L2_3 = false
          L0_3(L1_3, L2_3)
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 100
      L0_3(L1_3)
    end
  end
  L8_2(L9_2)
end
L22_1(L23_1, L24_1)
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = GetActivePlayers
  L0_2 = L0_2()
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = 5
  L4_2 = ipairs
  L5_2 = L0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = GetPlayerPed
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L1_2 ~= L10_2 then
      L11_2 = GetEntityCoords
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L12_2 = L2_2 - L11_2
      L12_2 = #L12_2
      if L3_2 >= L12_2 then
        L13_2 = true
        return L13_2
      end
    end
  end
  L4_2 = false
  return L4_2
end
IsThereSomebodyClose = L22_1
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = ClearPedTasks
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = L3_1
  if not L3_2 then
    L3_2 = Config
    L3_2 = L3_2.EnableExploitFix
    if L3_2 then
      L3_2 = IsThereSomebodyClose
      L3_2 = L3_2()
      if L3_2 then
        L3_2 = Notify
        L4_2 = Config
        L4_2 = L4_2.Lang
        L4_2 = L4_2.exploit
        L3_2(L4_2)
        return
      end
    end
    L3_2 = GetEntityModel
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = GetEntityCoords
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = ObjToNet
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L6_2 = TriggerServerEvent
    L7_2 = "17mov_Garbage:deleteObject"
    L8_2 = L4_2
    L9_2 = L3_2
    L10_2 = L5_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = RequestAnimDict
    L7_2 = "anim@move_m@trash"
    L6_2(L7_2)
    while true do
      L6_2 = HasAnimDictLoaded
      L7_2 = "anim@move_m@trash"
      L6_2 = L6_2(L7_2)
      if L6_2 then
        break
      end
      L6_2 = RequestAnimDict
      L7_2 = "anim@move_m@trash"
      L6_2(L7_2)
      L6_2 = Citizen
      L6_2 = L6_2.Wait
      L7_2 = 10
      L6_2(L7_2)
    end
    L6_2 = FreezeEntityPosition
    L7_2 = A0_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = TaskTurnPedToFaceEntity
    L7_2 = L2_2
    L8_2 = A0_2
    L9_2 = 1000
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 200
    L6_2(L7_2)
    L6_2 = FreezeEntityPosition
    L7_2 = A0_2
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = TaskPlayAnim
    L7_2 = L2_2
    L8_2 = "anim@move_m@trash"
    L9_2 = "pickup"
    L10_2 = 8.0
    L11_2 = 3.0
    L12_2 = -1
    L13_2 = 0
    L14_2 = 1
    L15_2 = false
    L16_2 = false
    L17_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 1250
    L6_2(L7_2)
    L6_2 = GetEntityHealth
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if 1000 ~= L6_2 then
      L6_2 = true
      L3_1 = L6_2
      L6_2 = CreateObject
      L7_2 = L3_2
      L8_2 = L4_2
      L9_2 = true
      L10_2 = true
      L11_2 = false
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L4_1 = L6_2
      L6_2 = onBagPickup
      L7_2 = A0_2
      L6_2(L7_2)
      L6_2 = SetEntityAsMissionEntity
      L7_2 = A0_2
      L8_2 = false
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = DeleteObject
      L7_2 = A0_2
      L6_2(L7_2)
      L6_2 = DeleteEntity
      L7_2 = A0_2
      L6_2(L7_2)
      L6_2 = SetEntityHealth
      L7_2 = L4_1
      L8_2 = 999
      L6_2(L7_2, L8_2)
      L6_2 = Config
      L6_2 = L6_2.Rotations
      L7_2 = GetEntityModel
      L8_2 = L4_1
      L7_2 = L7_2(L8_2)
      L6_2 = L6_2[L7_2]
      if nil == L6_2 then
        L7_2 = L6_2.xPos
        if nil == L7_2 then
          L7_2 = Config
          L7_2 = L7_2.Rotations
          L8_2 = -1681329307
          L6_2 = L7_2[L8_2]
        end
      end
      L7_2 = AttachEntityToEntity
      L8_2 = L4_1
      L9_2 = L2_2
      L10_2 = GetPedBoneIndex
      L11_2 = L2_2
      L12_2 = L6_2.boneIndex
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = L6_2.xPos
      L12_2 = L6_2.yPos
      L13_2 = L6_2.zPos
      L14_2 = L6_2.xRot
      L15_2 = L6_2.yRot
      L16_2 = L6_2.zRot
      L17_2 = L6_2.p9
      L18_2 = L6_2.useSoft
      L19_2 = L6_2.collision
      L20_2 = L6_2.isPed
      L21_2 = L6_2.vertexIndex
      L22_2 = L6_2.fixedRot
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L7_2 = Citizen
      L7_2 = L7_2.Wait
      L8_2 = 1250
      L7_2(L8_2)
      L7_2 = RequestAnimDict
      L8_2 = "anim@heists@narcotics@trash"
      L7_2(L8_2)
      while true do
        L7_2 = HasAnimDictLoaded
        L8_2 = "anim@heists@narcotics@trash"
        L7_2 = L7_2(L8_2)
        if L7_2 then
          break
        end
        L7_2 = RequestAnimDict
        L8_2 = "anim@heists@narcotics@trash"
        L7_2(L8_2)
        L7_2 = Citizen
        L7_2 = L7_2.Wait
        L8_2 = 10
        L7_2(L8_2)
      end
      L7_2 = TaskPlayAnim
      L8_2 = L2_2
      L9_2 = "anim@heists@narcotics@trash"
      L10_2 = "walk"
      L11_2 = 1.0
      L12_2 = -1.0
      L13_2 = -1
      L14_2 = 49
      L15_2 = 0
      L16_2 = 0
      L17_2 = 0
      L18_2 = 0
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    else
      L6_2 = ClearPedTasks
      L7_2 = L2_2
      L6_2(L7_2)
    end
  else
    L3_2 = RequestAnimDict
    L4_2 = "anim@move_m@trash"
    L3_2(L4_2)
    while true do
      L3_2 = HasAnimDictLoaded
      L4_2 = "anim@move_m@trash"
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = RequestAnimDict
      L4_2 = "anim@move_m@trash"
      L3_2(L4_2)
      L3_2 = Citizen
      L3_2 = L3_2.Wait
      L4_2 = 10
      L3_2(L4_2)
    end
    L3_2 = false
    L3_1 = L3_2
    if not A1_2 then
      L3_2 = SetEntityHealth
      L4_2 = L4_1
      L5_2 = 1000
      L3_2(L4_2, L5_2)
      L3_2 = DetachEntity
      L4_2 = L4_1
      L3_2(L4_2)
      L3_2 = onBagDetach
      L4_2 = L4_1
      L5_2 = false
      L3_2(L4_2, L5_2)
    else
      L3_2 = L6_1
      if L3_2 < 100 then
        L3_2 = PlayerPedId
        L3_2 = L3_2()
        L4_2 = IsEntityAttachedToEntity
        L5_2 = L4_1
        L6_2 = PlayerPedId
        L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L6_2()
        L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        if L4_2 then
          L4_2 = GetWorldPositionOfEntityBone
          L5_2 = L1_1
          L6_2 = GetEntityBoneIndexByName
          L7_2 = L1_1
          L8_2 = Config
          L8_2 = L8_2.VehicleBackBoneCenter
          L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L6_2(L7_2, L8_2)
          L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
          L5_2 = TaskGoStraightToCoord
          L6_2 = L3_2
          L7_2 = L4_2.x
          L8_2 = L4_2.y
          L9_2 = L4_2.z
          L10_2 = 4.0
          L11_2 = 20000
          L12_2 = -1
          L13_2 = 0.5
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
          L5_2 = Citizen
          L5_2 = L5_2.Wait
          L6_2 = 800
          L5_2(L6_2)
          L5_2 = ClearPedTasks
          L6_2 = L3_2
          L5_2(L6_2)
          L5_2 = SetVehicleDoorOpen
          L6_2 = L1_1
          L7_2 = 5
          L8_2 = false
          L5_2(L6_2, L7_2, L8_2)
          L5_2 = SetEntityHeading
          L6_2 = L3_2
          L7_2 = GetEntityHeading
          L8_2 = L1_1
          L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L7_2(L8_2)
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
          L5_2 = Citizen
          L5_2 = L5_2.Wait
          L6_2 = 500
          L5_2(L6_2)
          L5_2 = TaskPlayAnim
          L6_2 = L3_2
          L7_2 = "anim@move_m@trash"
          L8_2 = "pickup"
          L9_2 = 8.0
          L10_2 = 3.0
          L11_2 = -1
          L12_2 = 0
          L13_2 = 1
          L14_2 = false
          L15_2 = false
          L16_2 = false
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          L5_2 = Citizen
          L5_2 = L5_2.Wait
          L6_2 = 1250
          L5_2(L6_2)
          L5_2 = GetEntityModel
          L6_2 = L4_1
          L5_2 = L5_2(L6_2)
          L6_2 = DetachEntity
          L7_2 = L4_1
          L6_2(L7_2)
          L6_2 = onBagDetach
          L7_2 = L4_1
          L8_2 = true
          L6_2(L7_2, L8_2)
          L6_2 = SetEntityAsMissionEntity
          L7_2 = L4_1
          L8_2 = false
          L9_2 = true
          L6_2(L7_2, L8_2, L9_2)
          L6_2 = DeleteObject
          L7_2 = L4_1
          L6_2(L7_2)
          L6_2 = DeleteEntity
          L7_2 = L4_1
          L6_2(L7_2)
          L6_2 = SetVehicleDoorShut
          L7_2 = L1_1
          L8_2 = 5
          L9_2 = false
          L6_2(L7_2, L8_2, L9_2)
          L6_2 = TriggerServerEvent
          L7_2 = "17mov_Garbage:UpdateServerPartyBagsCounter"
          L8_2 = L5_2
          L6_2(L7_2, L8_2)
          L6_2 = Config
          L6_2 = L6_2.EnableGamePoolDeleting
          if L6_2 then
            L6_2 = GetGamePool
            if nil ~= L6_2 then
              L6_2 = GetGamePool
              L7_2 = "CObject"
              L6_2 = L6_2(L7_2)
              if nil ~= L6_2 then
                L7_2 = type
                L8_2 = L6_2
                L7_2 = L7_2(L8_2)
                if "table" == L7_2 then
                  L7_2 = pairs
                  L8_2 = GetGamePool
                  L9_2 = "CObject"
                  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L8_2(L9_2)
                  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
                    if nil ~= L12_2 then
                      L13_2 = IsEntityAttachedToEntity
                      L14_2 = L3_2
                      L15_2 = L12_2
                      L13_2 = L13_2(L14_2, L15_2)
                      if L13_2 then
                        L13_2 = pairs
                        L14_2 = Config
                        L14_2 = L14_2.PropsHashes
                        L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
                        for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
                          L19_2 = GetHashKey
                          L20_2 = L12_2
                          L19_2 = L19_2(L20_2)
                          if L19_2 == L18_2 then
                            L19_2 = SetEntityAsMissionEntity
                            L20_2 = L12_2
                            L21_2 = true
                            L22_2 = true
                            L19_2(L20_2, L21_2, L22_2)
                            L19_2 = DeleteObject
                            L20_2 = L12_2
                            L19_2(L20_2)
                            L19_2 = DeleteEntity
                            L20_2 = L12_2
                            L19_2(L20_2)
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      else
        L3_2 = Notify
        L4_2 = Config
        L4_2 = L4_2.Lang
        L4_2 = L4_2.full
        L3_2(L4_2)
        L3_2 = DetachEntity
        L4_2 = L4_1
        L3_2(L4_2)
        L3_2 = onBagDetach
        L4_2 = L4_1
        L5_2 = false
        L3_2(L4_2, L5_2)
        L3_2 = SetEntityAsMissionEntity
        L4_2 = L4_1
        L5_2 = false
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DeleteObject
        L4_2 = L4_1
        L3_2(L4_2)
        L3_2 = DeleteEntity
        L4_2 = L4_1
        L3_2(L4_2)
        L3_2 = Config
        L3_2 = L3_2.EnableGamePoolDeleting
        if L3_2 then
          L3_2 = GetGamePool
          if nil ~= L3_2 then
            L3_2 = GetGamePool
            L4_2 = "CObject"
            L3_2 = L3_2(L4_2)
            if nil ~= L3_2 then
              L4_2 = type
              L5_2 = L3_2
              L4_2 = L4_2(L5_2)
              if "table" == L4_2 then
                L4_2 = pairs
                L5_2 = GetGamePool
                L6_2 = "CObject"
                L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L5_2(L6_2)
                L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
                  if nil ~= L9_2 then
                    L10_2 = IsEntityAttachedToEntity
                    L11_2 = L2_2
                    L12_2 = L9_2
                    L10_2 = L10_2(L11_2, L12_2)
                    if L10_2 then
                      L10_2 = pairs
                      L11_2 = Config
                      L11_2 = L11_2.PropsHashes
                      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
                      for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
                        L16_2 = GetHashKey
                        L17_2 = L9_2
                        L16_2 = L16_2(L17_2)
                        if L16_2 == L15_2 then
                          L16_2 = SetEntityAsMissionEntity
                          L17_2 = L9_2
                          L18_2 = true
                          L19_2 = true
                          L16_2(L17_2, L18_2, L19_2)
                          L16_2 = DeleteObject
                          L17_2 = L9_2
                          L16_2(L17_2)
                          L16_2 = DeleteEntity
                          L17_2 = L9_2
                          L16_2(L17_2)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
Pick = L22_1
L22_1 = RegisterNetEvent
L23_1 = "17mov_Garbage:UpdateBagsCounter"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "17mov_Garbage:UpdateBagsCounter"
function L24_1(A0_2)
  local L1_2, L2_2
  L6_1 = A0_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateCounter"
  L2_2.value = A0_2
  L1_2(L2_2)
end
L22_1(L23_1, L24_1)
L22_1 = true
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L22_1
  if not L0_2 then
    return
  end
  L0_2 = false
  L22_1 = L0_2
  L0_2 = L6_1
  if L0_2 < 100 then
    L0_2 = Config
    L0_2 = L0_2.RequireFullJob
    if L0_2 then
      L0_2 = Notify
      L1_2 = Config
      L1_2 = L1_2.Lang
      L1_2 = L1_2.notFullJob
      L0_2(L1_2)
      L0_2 = true
      L22_1 = L0_2
      return
    end
  end
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
      L22_1 = L0_2
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
    L1_2 = GetVehicleEngineHealth
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = DeleteVehicleByCore
    L3_2 = L0_2
    L2_2(L3_2)
    L2_2 = TriggerServerEvent
    L3_2 = "17mov_Garbage:endJob_sv"
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = true
    L22_1 = L2_2
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
  L22_1 = L1_2
end
EndJob = L23_1
L23_1 = RegisterNetEvent
L24_1 = "17mov_Garbage:endJob_cl"
L23_1(L24_1)
L23_1 = AddEventHandler
L24_1 = "17mov_Garbage:endJob_cl"
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = RemoveKeys
  if nil ~= L0_2 then
    L0_2 = RemoveKeys
    L0_2()
  end
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = Config
  L1_2 = L1_2.Locations
  L1_2 = L1_2.DutyToggle
  L1_2 = L1_2.Coords
  L1_2 = L1_2[1]
  L0_2 = L0_2 - L1_2
  L0_2 = #L0_2
  if L0_2 < 40.0 then
    L0_2 = Config
    L0_2 = L0_2.EnableVehicleTeleporting
    if L0_2 then
      L0_2 = DoScreenFadeOut
      L1_2 = 250
      L0_2(L1_2)
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 1000
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
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = DoScreenFadeIn
  L1_2 = 300
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "updateCounter"
  L1_2.value = 0
  L0_2(L1_2)
  L0_2 = Config
  L0_2 = L0_2.RequireWorkClothes
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.EnableCloakroom
    if not L0_2 then
      L0_2 = false
      L21_1 = L0_2
      L0_2 = ChangeClothes
      L1_2 = "citizen"
      L0_2(L1_2)
    end
  end
  L0_2 = Config
  L0_2 = L0_2.UseTarget
  if L0_2 then
    L0_2 = DeleteEntityFromTarget
    L1_2 = L1_1
    L0_2(L1_2)
  end
  L0_2 = false
  L1_2 = false
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L6_1 = L4_2
  L5_1 = L3_2
  L4_1 = L2_2
  L3_1 = L1_2
  OnDuty = L0_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hideCounter"
  L0_2(L1_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "17mov_Garbage:deleteObject"
L23_1(L24_1)
L23_1 = AddEventHandler
L24_1 = "17mov_Garbage:deleteObject"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = GetClosestObjectOfType
  L3_2 = A0_2
  L4_2 = 1.0
  L5_2 = A1_2
  L6_2 = false
  L7_2 = false
  L8_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if 0 == L2_2 then
    L3_2 = GetClosestObjectOfType
    L4_2 = A0_2
    L5_2 = 1.0
    L6_2 = A1_2
    L7_2 = true
    L8_2 = true
    L9_2 = true
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L2_2 = L3_2
  end
  L3_2 = SetEntityHealth
  L4_2 = L2_2
  L5_2 = 999
  L3_2(L4_2, L5_2)
  L3_2 = Citizen
  L3_2 = L3_2.Wait
  L4_2 = 1200
  L3_2(L4_2)
  L3_2 = SetEntityAsMissionEntity
  L4_2 = L2_2
  L5_2 = false
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = DeleteObject
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = DeleteEntity
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = Config
  L3_2 = L3_2.EnableGamePoolDeleting
  if L3_2 then
    L3_2 = GetGamePool
    if nil ~= L3_2 then
      L3_2 = GetGamePool
      L4_2 = "CObject"
      L3_2 = L3_2(L4_2)
      if nil ~= L3_2 then
        L4_2 = type
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if "table" == L4_2 then
          L4_2 = pairs
          L5_2 = GetGamePool
          L6_2 = "CObject"
          L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
          L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
          for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
            if nil ~= L9_2 then
              L10_2 = GetEntityCoords
              L11_2 = L9_2
              L10_2 = L10_2(L11_2)
              if L10_2 == A0_2 then
                L10_2 = GetEntityModel
                L11_2 = L9_2
                L10_2 = L10_2(L11_2)
                if L10_2 == A1_2 then
                  L10_2 = SetEntityAsMissionEntity
                  L11_2 = L9_2
                  L12_2 = true
                  L13_2 = true
                  L10_2(L11_2, L12_2, L13_2)
                  L10_2 = DeleteObject
                  L11_2 = L9_2
                  L10_2(L11_2)
                  L10_2 = DeleteEntity
                  L11_2 = L9_2
                  L10_2(L11_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "acceptWarning"
function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_Garbage:endJob_sv"
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
L23_1(L24_1, L25_1)

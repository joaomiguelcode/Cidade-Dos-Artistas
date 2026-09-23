local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1
L0_1 = false
L1_1 = nil
L2_1 = nil
OnDuty = false
JobVehicleNetId = nil
L3_1 = {}
L4_1 = {}
L3_1[1] = L4_1
L4_1 = {}
L3_1[2] = L4_1
L4_1 = {}
L3_1[3] = L4_1
L4_1 = {}
L3_1[4] = L4_1
L4_1 = false
L5_1 = {}
L6_1 = {}
L7_1 = false
L8_1 = 0
L9_1 = false
L10_1 = 0
L11_1 = false
L12_1 = false
L13_1 = false
L14_1 = false
L15_1 = false
L16_1 = false
L17_1 = 0
L18_1 = false
L19_1 = 0
L20_1 = 0
L21_1 = false
L22_1 = 0
L23_1 = false
L24_1 = false
L25_1 = nil
L26_1 = false
L27_1 = 0
L28_1 = nil
L29_1 = false
L30_1 = 0
L31_1 = false
L32_1 = false
L33_1 = false
L34_1 = {}
L35_1 = 0
L36_1 = {}
L37_1 = GetPlayerServerId
L38_1 = PlayerId
L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1 = L38_1()
L37_1 = L37_1(L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1)
L38_1 = true
L39_1 = ""
L40_1 = NetToObj
function L41_1(A0_2)
  local L1_2, L2_2
  L1_2 = NetworkDoesNetworkIdExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L40_1
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = 0
    return L1_2
  end
end
NetToObj = L41_1
L41_1 = NetToVeh
function L42_1(A0_2)
  local L1_2, L2_2
  L1_2 = NetworkDoesNetworkIdExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L41_1
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = 0
    return L1_2
  end
end
NetToVe = L42_1
L42_1 = false
L43_1 = false
L44_1 = RegisterNUICallback
L45_1 = "driverLoaded"
function L46_1()
  local L0_2, L1_2
  L0_2 = true
  L42_1 = L0_2
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNUICallback
L45_1 = "nuiLoaded"
function L46_1()
  local L0_2, L1_2
  L0_2 = true
  L43_1 = L0_2
end
L44_1(L45_1, L46_1)
L44_1 = CreateThread
function L45_1()
  local L0_2, L1_2
  while true do
    L0_2 = L42_1
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
    L43_1 = L0_2
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 500
    L0_2(L1_2)
  end
end
L44_1(L45_1)
L44_1 = RegisterNUICallback
L45_1 = "tutorialClosed"
function L46_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = false
  L11_1 = L0_2
  L0_2 = ""
  L39_1 = L0_2
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNUICallback
L45_1 = "menuClosed"
function L46_1()
  local L0_2, L1_2, L2_2
  L0_2 = false
  L38_1 = L0_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNUICallback
L45_1 = "dontShowTutorialAgain"
function L46_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetResourceKvpInt
  L3_2 = "17mov_Tutorials:"
  L4_2 = L39_1
  L3_2 = L3_2 .. L4_2
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "17mov_GruppeSechs:SetMyReward"
function L46_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateMyReward"
  L2_2.reward = A0_2
  L1_2(L2_2)
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "17mov_construction:UpdateHostPercentages"
function L46_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateHostRewards"
  L2_2.value = A0_2
  L1_2(L2_2)
end
L44_1(L45_1, L46_1)
L44_1 = Config
L44_1 = L44_1.letBossSplitReward
if L44_1 then
  L44_1 = RegisterNUICallback
  L45_1 = "checkIfThisRewardIsFine"
  function L46_1(A0_2, A1_2)
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
    L5_2 = "17mov_GruppeSechs:CheckThisReward"
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
  L44_1(L45_1, L46_1)
else
  L44_1 = CreateThread
  function L45_1()
    local L0_2, L1_2
    while true do
      L0_2 = L43_1
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
  L44_1(L45_1)
end
L44_1 = RegisterNetEvent
L45_1 = "17mov_GruppeSechs:clearMyLobby"
function L46_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L36_1 = L0_2
  L0_2 = TriggerServerCallback
  L1_2 = "17mov_GruppeSechs:init"
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
    L0_1 = L1_3
  end
  L0_2(L1_2, L2_2)
end
L44_1(L45_1, L46_1)
function L44_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L35_1
  L2_2 = L2_2 + 1
  L35_1 = L2_2
  L2_2 = L35_1
  myId = L2_2
  L2_2 = L34_1
  L3_2 = {}
  L2_2[A0_2] = L3_2
  L2_2 = L34_1
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
TriggerServerCallback = L44_1
L44_1 = RegisterNetEvent
L45_1 = "17mov_Callbacks:receiveData"
L46_1 = GetCurrentResourceName
L46_1 = L46_1()
L45_1 = L45_1 .. L46_1
function L46_1(A0_2, A1_2, ...)
  local L2_2, L3_2
  L2_2 = L34_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L34_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = L34_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = ...
  L2_2(L3_2)
  L2_2 = L34_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L34_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      L2_2 = L34_1
      L2_2 = L2_2[A0_2]
      L2_2[A1_2] = nil
    end
  end
  L2_2 = L34_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L34_1
    L2_2 = L2_2[A0_2]
    L2_2 = #L2_2
    if 0 == L2_2 then
      L2_2 = L34_1
      L2_2[A0_2] = nil
    end
  end
end
L44_1(L45_1, L46_1)
L44_1 = false
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2
  L1_2 = L44_1
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
      L44_1 = L1_2
      return
    end
  end
  L1_2 = true
  L44_1 = L1_2
  L1_2 = Config
  L1_2 = L1_2.UseTarget
  if L1_2 then
    L1_2 = SpawnStartingPed
    L1_2()
    L1_2 = Config
    L2_2 = {}
    L3_2 = Config
    L3_2 = L3_2.Locations
    L3_2 = L3_2.FinishJob
    L2_2.FinishJob = L3_2
    L1_2.Locations2 = L2_2
    while true do
      L1_2 = L44_1
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
          goto lbl_63
        end
      end
      L8_2 = Config
      L8_2 = L8_2.RequiredJob
      ::lbl_63::
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
              goto lbl_198
            end
          end
          L14_2 = OnDuty
          if not L14_2 then
            L14_2 = L13_2.type
            if "duty" ~= L14_2 then
              goto lbl_198
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
          ::lbl_198::
        end
        if L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if not L8_2 then
            goto lbl_217
          end
        end
        if L2_2 then
          L8_2 = LastStation
          if L8_2 == L5_2 then
            L8_2 = LastPart
            if L8_2 == L6_2 then
              L8_2 = LastPartNum
              if L8_2 == L7_2 then
                goto lbl_250
              end
            end
          end
          ::lbl_217::
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
                      goto lbl_242
                    end
                  end
                end
                L8_2 = TriggerEvent
                L9_2 = "17mov_GruppeSechs:ExitedMarker"
                L10_2 = LastStation
                L11_2 = LastPart
                L12_2 = LastPartNum
                L8_2(L9_2, L10_2, L11_2, L12_2)
                L3_2 = true
              end
            end
          end
          ::lbl_242::
          HasAlreadyEnteredMarker = true
          LastStation = L5_2
          LastPart = L6_2
          LastPartNum = L7_2
          L8_2 = TriggerEvent
          L9_2 = "17mov_GruppeSechs:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_250::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_GruppeSechs:ExitedMarker"
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
      L1_2 = L44_1
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
          goto lbl_304
        end
      end
      L8_2 = Config
      L8_2 = L8_2.RequiredJob
      ::lbl_304::
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
              goto lbl_439
            end
          end
          L14_2 = OnDuty
          if not L14_2 then
            L14_2 = L13_2.type
            if "duty" ~= L14_2 then
              goto lbl_439
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
          ::lbl_439::
        end
        if L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if not L8_2 then
            goto lbl_458
          end
        end
        if L2_2 then
          L8_2 = LastStation
          if L8_2 == L5_2 then
            L8_2 = LastPart
            if L8_2 == L6_2 then
              L8_2 = LastPartNum
              if L8_2 == L7_2 then
                goto lbl_491
              end
            end
          end
          ::lbl_458::
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
                      goto lbl_483
                    end
                  end
                end
                L8_2 = TriggerEvent
                L9_2 = "17mov_GruppeSechs:ExitedMarker"
                L10_2 = LastStation
                L11_2 = LastPart
                L12_2 = LastPartNum
                L8_2(L9_2, L10_2, L11_2, L12_2)
                L3_2 = true
              end
            end
          end
          ::lbl_483::
          HasAlreadyEnteredMarker = true
          LastStation = L5_2
          LastPart = L6_2
          LastPartNum = L7_2
          L8_2 = TriggerEvent
          L9_2 = "17mov_GruppeSechs:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_491::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_GruppeSechs:ExitedMarker"
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
StartMarkers = L45_1
L45_1 = Citizen
L45_1 = L45_1.CreateThread
function L46_1()
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
    L0_2 = GetPlayerData
    L0_2 = L0_2()
    L2_1 = L0_2
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
L45_1(L46_1)
L45_1 = false
function L46_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L45_1
  if L0_2 then
    return
  end
  L0_2 = true
  L45_1 = L0_2
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
MakeBlip = L46_1
function L46_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = false
  L45_1 = L0_2
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
DeleteBlip = L46_1
function L46_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = initalized
  if L1_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.useModernUI
  if L1_2 then
    while true do
      L1_2 = L43_1
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
  L2_2 = "17mov_GruppeSechs:init"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "Init"
    L3_3 = A0_3.name
    L2_3.name = L3_3
    L3_3 = A0_3.source
    L2_3.myId = L3_3
    L1_3(L2_3)
    L1_3 = pairs
    L2_3 = A0_3.transports
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = Config
      L7_3 = L7_3.ZonesName
      L8_3 = GetNameOfZone
      L9_3 = Config
      L9_3 = L9_3.BankLocations
      L10_3 = L6_3.target
      L9_3 = L9_3[L10_3]
      L9_3 = L9_3.BlipCoords
      L8_3 = L8_3(L9_3)
      L7_3 = L7_3[L8_3]
      L6_3.destination = L7_3
    end
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "updateTransports"
    L3_3 = A0_3.transports
    L2_3.transports = L3_3
    L1_3(L2_3)
    L1_3 = 1
    L2_3 = A0_3.chatMessages
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = SendNUIMessage
      L6_3 = {}
      L6_3.action = "newCrimeMessage"
      L7_3 = A0_3.chatMessages
      L7_3 = L7_3[L4_3]
      L6_3.message = L7_3
      L5_3(L6_3)
    end
    L1_3 = true
    L0_1 = L1_3
  end
  L1_2(L2_2, L3_2)
end
InitalizeScript = L46_1
L46_1 = RegisterNetEvent
L47_1 = "QBCore:Client:OnPlayerLoaded"
function L48_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L46_1(L47_1, L48_1)
L46_1 = RegisterNetEvent
L47_1 = "esx:playerLoaded"
function L48_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L46_1(L47_1, L48_1)
L46_1 = RegisterNetEvent
L47_1 = "QBCore:Client:OnJobUpdate"
L46_1(L47_1)
L46_1 = AddEventHandler
L47_1 = "QBCore:Client:OnJobUpdate"
function L48_1(A0_2)
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
    L44_1 = L1_2
  end
end
L46_1(L47_1, L48_1)
L46_1 = RegisterNetEvent
L47_1 = "esx:setJob"
L46_1(L47_1)
L46_1 = AddEventHandler
L47_1 = "esx:setJob"
function L48_1(A0_2)
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
    L44_1 = L1_2
  end
end
L46_1(L47_1, L48_1)
L46_1 = AddEventHandler
L47_1 = "17mov_GruppeSechs:EnteredMarker"
function L48_1(A0_2)
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
L46_1(L47_1, L48_1)
L46_1 = AddEventHandler
L47_1 = "17mov_GruppeSechs:ExitedMarker"
function L48_1(A0_2)
  local L1_2
  CurrentAction = nil
  CurrentActionMsg = nil
  CurrentActionStation = nil
end
L46_1(L47_1, L48_1)
L46_1 = RegisterCommand
L47_1 = "+17MovGruppeSechsStartMarkerAction"
function L48_1()
  local L0_2, L1_2
end
L46_1(L47_1, L48_1)
L46_1 = RegisterCommand
L47_1 = "-17MovGruppeSechsStartMarkerAction"
function L48_1()
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
        L1_2 = "17mov_GruppeSechs:IfPlayerIsHost"
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
L46_1(L47_1, L48_1)
L46_1 = TriggerEvent
L47_1 = "chat:removeSuggestion"
L48_1 = "/+17MovGruppeSechsStartMarkerAction"
L46_1(L47_1, L48_1)
L46_1 = TriggerEvent
L47_1 = "chat:removeSuggestion"
L48_1 = "/-17MovGruppeSechsStartMarkerAction"
L46_1(L47_1, L48_1)
L46_1 = RegisterKeyMapping
L47_1 = "+17MovGruppeSechsStartMarkerAction"
L48_1 = Config
L48_1 = L48_1.Lang
L48_1 = L48_1.keybind
L49_1 = "keyboard"
L50_1 = "E"
L46_1(L47_1, L48_1, L49_1, L50_1)
L46_1 = {}
L47_1 = Config
L47_1 = L47_1.useModernUI
if L47_1 then
  function L47_1()
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
    L0_2 = L0_1
    if not L0_2 then
      L0_2 = TriggerServerCallback
      L1_2 = "17mov_GruppeSechs:init"
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
        L0_1 = L1_3
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
    L38_1 = L0_2
    L0_2 = false
    L1_2 = false
    L2_2 = false
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
      while true do
        L0_3 = L38_1
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
        L5_3 = "17mov_GruppeSechs:GetPlayersNames"
        function L6_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4
          L1_4 = pairs
          L2_4 = A0_4
          L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
          for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
            L8_4 = L6_4.id
            L7_4 = L36_1
            L7_4 = L7_4[L8_4]
            if nil == L7_4 then
              L7_4 = true
              L3_3 = L7_4
              L8_4 = L6_4.id
              L7_4 = L46_1
              L7_4 = L7_4[L8_4]
              if nil == L7_4 then
                L8_4 = L6_4.id
                L7_4 = L46_1
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
          L2_4 = L46_1
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
              L9_4 = L46_1
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
  OpenDutyMenu = L47_1
else
  function L47_1()
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
    L0_2 = L0_1
    if not L0_2 then
      L0_2 = TriggerServerCallback
      L1_2 = "17mov_GruppeSechs:init"
      function L2_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
        L1_3 = SendNUIMessage
        L2_3 = {}
        L2_3.action = "Init"
        L3_3 = A0_3.name
        L2_3.name = L3_3
        L3_3 = A0_3.source
        L2_3.myId = L3_3
        L1_3(L2_3)
        L1_3 = pairs
        L2_3 = A0_3.transports
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
          L7_3 = Config
          L7_3 = L7_3.ZonesName
          L8_3 = GetNameOfZone
          L9_3 = Config
          L9_3 = L9_3.BankLocations
          L10_3 = L6_3.target
          L9_3 = L9_3[L10_3]
          L9_3 = L9_3.BlipCoords
          L8_3 = L8_3(L9_3)
          L7_3 = L7_3[L8_3]
          L6_3.destination = L7_3
        end
        L1_3 = SendNUIMessage
        L2_3 = {}
        L2_3.action = "updateTransports"
        L3_3 = A0_3.transports
        L2_3.transports = L3_3
        L1_3(L2_3)
        L1_3 = 1
        L2_3 = A0_3.chatMessages
        L2_3 = #L2_3
        L3_3 = 1
        for L4_3 = L1_3, L2_3, L3_3 do
          L5_3 = SendNUIMessage
          L6_3 = {}
          L6_3.action = "newCrimeMessage"
          L7_3 = A0_3.chatMessages
          L7_3 = L7_3[L4_3]
          L6_3.message = L7_3
          L5_3(L6_3)
        end
        L1_3 = true
        L0_1 = L1_3
      end
      L0_2(L1_2, L2_2)
      L0_2 = print
      L1_2 = "SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD"
      L0_2(L1_2)
      return
    end
    L0_2 = TriggerServerCallback
    L1_2 = "17mov_GruppeSechs:IfPlayerIsHost"
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
  OpenDutyMenu = L47_1
end
L47_1 = nil
L48_1 = {}
L49_1 = RegisterNetEvent
L50_1 = "17mov_GruppeSechs:CopsNotify"
function L51_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = PlaySound
  L4_2 = -1
  L5_2 = "Lose_1st"
  L6_2 = "GTAO_FM_Events_Soundset"
  L7_2 = 0
  L8_2 = 0
  L9_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = Notify
  L4_2 = Config
  L4_2 = L4_2.Lang
  L4_2 = L4_2.copsNotification
  L3_2(L4_2)
  L3_2 = L48_1
  L3_2[A1_2] = true
  while true do
    L3_2 = L48_1
    L3_2 = L3_2[A1_2]
    if not L3_2 then
      break
    end
    L3_2 = NetToVeh
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if 0 ~= L3_2 then
      L4_2 = GetVehicleNumberPlateText
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if L4_2 == A2_2 then
        L4_2 = RemoveBlip
        L5_2 = L47_1
        L4_2(L5_2)
        L4_2 = AddBlipForEntity
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L47_1 = L4_2
        L4_2 = SetAlertBlip
        L4_2()
    end
    else
      L4_2 = TriggerServerCallback
      L5_2 = "17mov_GruppeSechs:GetVehicleCoords"
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        L1_3 = RemoveBlip
        L2_3 = L47_1
        L1_3(L2_3)
        L1_3 = vector3
        L2_3 = 0
        L3_3 = 0
        L4_3 = 0
        L1_3 = L1_3(L2_3, L3_3, L4_3)
        if A0_3 ~= L1_3 then
          L1_3 = AddBlipForCoord
          L2_3 = A0_3
          L1_3 = L1_3(L2_3)
          L47_1 = L1_3
        end
        L1_3 = SetAlertBlip
        L1_3()
      end
      L7_2 = A1_2
      L4_2(L5_2, L6_2, L7_2)
    end
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 1500
    L4_2(L5_2)
  end
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNetEvent
L50_1 = "17mov_GruppeSechs:disableCopsNotify"
function L51_1(A0_2)
  local L1_2, L2_2
  L1_2 = L48_1
  L1_2[A0_2] = nil
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 100
  L1_2(L2_2)
  L1_2 = RemoveBlip
  L2_2 = L47_1
  L1_2(L2_2)
end
L49_1(L50_1, L51_1)
function L49_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetBlipSprite
  L1_2 = L47_1
  L2_2 = Config
  L2_2 = L2_2.HeistVehBlipSettings
  L2_2 = L2_2.sprite
  L0_2(L1_2, L2_2)
  L0_2 = SetBlipDisplay
  L1_2 = L47_1
  L2_2 = 4
  L0_2(L1_2, L2_2)
  L0_2 = SetBlipScale
  L1_2 = L47_1
  L2_2 = Config
  L2_2 = L2_2.HeistVehBlipSettings
  L2_2 = L2_2.scale
  L0_2(L1_2, L2_2)
  L0_2 = SetBlipColour
  L1_2 = L47_1
  L2_2 = Config
  L2_2 = L2_2.HeistVehBlipSettings
  L2_2 = L2_2.color
  L0_2(L1_2, L2_2)
  L0_2 = SetBlipAsShortRange
  L1_2 = L47_1
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = BeginTextCommandSetBlipName
  L1_2 = "STRING"
  L0_2(L1_2)
  L0_2 = AddTextComponentString
  L1_2 = Config
  L1_2 = L1_2.HeistVehBlipSettings
  L1_2 = L1_2.labelForCops
  L0_2(L1_2)
  L0_2 = EndTextCommandSetBlipName
  L1_2 = L47_1
  L0_2(L1_2)
end
SetAlertBlip = L49_1
L49_1 = RegisterNUICallback
L50_1 = "playerLoggedOut"
function L51_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "17mov_GruppeSechs:LoggedOut"
  L0_2(L1_2)
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNUICallback
L50_1 = "changeClothes"
function L51_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.type
  if "work" == L1_2 then
    L2_2 = ChangeClothes
    L3_2 = "work"
    L2_2(L3_2)
  else
    L2_2 = ChangeClothes
    L3_2 = "citizen"
    L2_2(L3_2)
  end
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNetEvent
L50_1 = "17mov_GruppeSechs:UpdateTransports"
function L51_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Config
    L7_2 = L7_2.ZonesName
    L8_2 = GetNameOfZone
    L9_2 = Config
    L9_2 = L9_2.BankLocations
    L10_2 = L6_2.target
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.BlipCoords
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2[L8_2]
    L6_2.destination = L7_2
  end
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateTransports"
  L2_2.transports = A0_2
  L1_2(L2_2)
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNetEvent
L50_1 = "17mov_GruppeSechs:RefreshLoggedInValue"
function L51_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "refreshLoggedInUsers"
  L2_2.value = A0_2
  L1_2(L2_2)
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNUICallback
L50_1 = "startHeist"
function L51_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = OnDuty
  if not L2_2 then
    L2_2 = L29_1
    if not L2_2 then
      goto lbl_16
    end
  end
  L2_2 = Notify
  L3_2 = Config
  L3_2 = L3_2.Lang
  L3_2 = L3_2.alreadyBusy
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = false
  L2_2(L3_2)
  do return end
  ::lbl_16::
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_GruppeSechs:StartHeist"
  L4_2 = A0_2.id
  L2_2(L3_2, L4_2)
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNUICallback
L50_1 = "stopHeist"
function L51_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerServerEvent
  L1_2 = "17mov_GruppeSechs:endHeist"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNetEvent
L50_1 = "17mov_GruppeSechs:StartHeist_cl"
function L51_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = PlaySoundFrontend
  L5_2 = -1
  L6_2 = "Beep_Red"
  L7_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
  L8_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.action = "updateSteps"
  L5_2.value = 1
  L4_2(L5_2)
  L4_2 = false
  L31_1 = L4_2
  L4_2 = false
  L32_1 = L4_2
  L4_2 = false
  L33_1 = L4_2
  L4_2 = true
  L29_1 = L4_2
  L4_2 = Config
  L4_2 = L4_2.ZonesName
  L5_2 = GetNameOfZone
  L6_2 = Config
  L6_2 = L6_2.BankLocations
  L7_2 = A3_2.target
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.BlipCoords
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2[L5_2]
  A3_2.destination = L4_2
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.action = "openHeistPage"
  L5_2.info = A3_2
  L4_2(L5_2)
  L4_2 = showTutorial
  L5_2 = "afterStartingHeist"
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = L29_1
      if not L0_3 then
        break
      end
      L0_3 = NetToVeh
      L1_3 = A2_2
      L0_3 = L0_3(L1_3)
      if 0 ~= L0_3 then
        L1_3 = RemoveBlip
        L2_3 = L30_1
        L1_3(L2_3)
        L1_3 = AddBlipForEntity
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        L30_1 = L1_3
        L1_3 = SetHeistVehBlip
        L1_3()
      else
        L1_3 = TriggerServerCallback
        L2_3 = "17mov_GruppeSechs:GetVehicleCoords"
        function L3_3(A0_4)
          local L1_4, L2_4
          L1_4 = RemoveBlip
          L2_4 = L30_1
          L1_4(L2_4)
          L1_4 = AddBlipForCoord
          L2_4 = A0_4
          L1_4 = L1_4(L2_4)
          L30_1 = L1_4
          L1_4 = SetHeistVehBlip
          L1_4()
        end
        L4_3 = A2_2
        L1_3(L2_3, L3_3, L4_3)
      end
      L1_3 = isDeath
      L1_3 = L1_3()
      if L1_3 then
        L1_3 = TriggerServerEvent
        L2_3 = "17mov_GruppeSechs:ImReady"
        L3_3 = true
        L1_3(L2_3, L3_3)
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 2500
      L1_3(L2_3)
    end
  end
  L4_2(L5_2)
  L4_2 = false
  L5_2 = 0
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = L31_1
      if L0_3 then
        break
      end
      L0_3 = 1000
      L1_3 = NetToVeh
      L2_3 = A2_2
      L1_3 = L1_3(L2_3)
      if 0 ~= L1_3 then
        L2_3 = GetEntityCoords
        L3_3 = PlayerPedId
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3()
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L3_3 = GetEntityCoords
        L4_3 = L1_3
        L3_3 = L3_3(L4_3)
        L3_3 = L2_3 - L3_3
        L3_3 = #L3_3
        if L3_3 < 20.0 then
          L4_3 = L4_2
          if not L4_3 then
            L4_3 = true
            L4_2 = L4_3
            L4_3 = PlaySoundFrontend
            L5_3 = -1
            L6_3 = "Beep_Red"
            L7_3 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
            L8_3 = true
            L4_3(L5_3, L6_3, L7_3, L8_3)
            L4_3 = SendNUIMessage
            L5_3 = {}
            L5_3.action = "updateSteps"
            L5_3.value = 2
            L4_3(L5_3)
            L4_3 = Notify
            L5_3 = Config
            L5_3 = L5_3.Lang
            L5_3 = L5_3.startingFetching
            L4_3(L5_3)
            L4_3 = TriggerServerEvent
            L5_3 = "17mov_GruppeSechs:NotifyCops"
            L6_3 = A2_2
            L7_3 = GetVehicleNumberPlateText
            L8_3 = L1_3
            L7_3, L8_3 = L7_3(L8_3)
            L4_3(L5_3, L6_3, L7_3, L8_3)
          end
          L4_3 = L5_2
          L4_3 = L4_3 + 1
          L5_2 = L4_3
        else
          L4_3 = 0
          L5_2 = L4_3
        end
      end
      L2_3 = L5_2
      L3_3 = Config
      L3_3 = L3_3.RequiredSecondsToFetch
      if L2_3 >= L3_3 then
        L2_3 = TriggerServerEvent
        L3_3 = "17mov_GrupeSechs:HasBeenFetched"
        L2_3(L3_3)
      end
      L2_3 = Citizen
      L2_3 = L2_3.Wait
      L3_3 = L0_3
      L2_3(L3_3)
      L2_3 = L29_1
      if not L2_3 then
        break
      end
    end
  end
  L6_2(L7_2)
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNUICallback
L50_1 = "openDoors"
function L51_1()
  local L0_2, L1_2
  L0_2 = L31_1
  if L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "17mov_GruppeSechs:OpenVehicleDoors"
    L0_2(L1_2)
  end
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNUICallback
L50_1 = "blockEngine"
function L51_1()
  local L0_2, L1_2
  L0_2 = L31_1
  if L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "17mov_GruppeSechs:blockEngine"
    L0_2(L1_2)
  end
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNetEvent
L50_1 = "17mov_GruppeSechs:EndHeist_cl"
function L51_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = false
  L29_1 = L0_2
  L0_2 = true
  L31_1 = L0_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "Beep_Red"
  L3_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "turnOfHeist"
  L0_2(L1_2)
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = 20
    L1_3 = 0
    while true do
      L2_3 = DoesBlipExist
      L3_3 = L30_1
      L2_3 = L2_3(L3_3)
      if not (L2_3 and L0_3 > L1_3) then
        break
      end
      L2_3 = RemoveBlip
      L3_3 = L30_1
      L2_3(L3_3)
      L2_3 = Citizen
      L2_3 = L2_3.Wait
      L3_3 = 100
      L2_3(L3_3)
      L1_3 = L1_3 + 1
    end
  end
  L0_2(L1_2)
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = 20
    L1_3 = 0
    while true do
      L2_3 = DoesBlipExist
      L3_3 = L10_1
      L2_3 = L2_3(L3_3)
      if not (L2_3 and L0_3 > L1_3) then
        break
      end
      L2_3 = RemoveBlip
      L3_3 = L10_1
      L2_3(L3_3)
      L2_3 = Citizen
      L2_3 = L2_3.Wait
      L3_3 = 100
      L2_3(L3_3)
      L1_3 = L1_3 + 1
    end
  end
  L0_2(L1_2)
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = 20
    L1_3 = 0
    while true do
      L2_3 = DoesBlipExist
      L3_3 = L27_1
      L2_3 = L2_3(L3_3)
      if not (L2_3 and L0_3 > L1_3) then
        break
      end
      L2_3 = RemoveBlip
      L3_3 = L27_1
      L2_3(L3_3)
      L2_3 = Citizen
      L2_3 = L2_3.Wait
      L3_3 = 100
      L2_3(L3_3)
      L1_3 = L1_3 + 1
    end
  end
  L0_2(L1_2)
  L0_2 = 1
  L1_2 = 10
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = GetBlipCoords
    L5_2 = GetClosestBlipOfType
    L6_2 = L3_2
    L5_2, L6_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L28_1
    if L4_2 == L5_2 then
      L4_2 = RemoveBlip
      L5_2 = GetClosestBlipOfType
      L5_2, L6_2 = L5_2()
      L4_2(L5_2, L6_2)
    end
  end
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNetEvent
L50_1 = "17mov_GruppeSechs:HeistFirstStageReady"
function L51_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = true
  L31_1 = L0_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "Beep_Red"
  L3_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "updateSteps"
  L1_2.value = 3
  L0_2(L1_2)
end
L49_1(L50_1, L51_1)
function L49_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetBlipSprite
  L1_2 = L30_1
  L2_2 = Config
  L2_2 = L2_2.HeistVehBlipSettings
  L2_2 = L2_2.sprite
  L0_2(L1_2, L2_2)
  L0_2 = SetBlipDisplay
  L1_2 = L30_1
  L2_2 = 4
  L0_2(L1_2, L2_2)
  L0_2 = SetBlipScale
  L1_2 = L30_1
  L2_2 = Config
  L2_2 = L2_2.HeistVehBlipSettings
  L2_2 = L2_2.scale
  L0_2(L1_2, L2_2)
  L0_2 = SetBlipColour
  L1_2 = L30_1
  L2_2 = Config
  L2_2 = L2_2.HeistVehBlipSettings
  L2_2 = L2_2.color
  L0_2(L1_2, L2_2)
  L0_2 = SetBlipAsShortRange
  L1_2 = L30_1
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = BeginTextCommandSetBlipName
  L1_2 = "STRING"
  L0_2(L1_2)
  L0_2 = AddTextComponentString
  L1_2 = Config
  L1_2 = L1_2.HeistVehBlipSettings
  L1_2 = L1_2.label
  L0_2(L1_2)
  L0_2 = EndTextCommandSetBlipName
  L1_2 = L30_1
  L0_2(L1_2)
end
SetHeistVehBlip = L49_1
L49_1 = RegisterNetEvent
L50_1 = "17mov_GruppeSechs:tooLate"
function L51_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = false
  L29_1 = L0_2
  L0_2 = RemoveBlip
  L1_2 = L30_1
  L0_2(L1_2)
  L0_2 = RemoveBlip
  L1_2 = L10_1
  L0_2(L1_2)
  L0_2 = true
  L31_1 = L0_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "Beep_Red"
  L3_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "turnOfHeist"
  L0_2(L1_2)
  L0_2 = Notify
  L1_2 = Config
  L1_2 = L1_2.Lang
  L1_2 = L1_2.tooLate
  L0_2(L1_2)
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNetEvent
L50_1 = "17mov_GruppeSechs:OpenTablet"
function L51_1()
  local L0_2, L1_2, L2_2
  L0_2 = OnDuty
  if L0_2 then
    L0_2 = Notify
    L1_2 = Config
    L1_2 = L1_2.Lang
    L1_2 = L1_2.cantOpenTabletWhileOnDuty
    L0_2(L1_2)
    return
  end
  L0_2 = L0_1
  if not L0_2 then
    L0_2 = TriggerServerCallback
    L1_2 = "17mov_GruppeSechs:init"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "Init"
      L3_3 = A0_3.name
      L2_3.name = L3_3
      L3_3 = A0_3.source
      L2_3.myId = L3_3
      L1_3(L2_3)
      L1_3 = pairs
      L2_3 = A0_3.transports
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = Config
        L7_3 = L7_3.ZonesName
        L8_3 = GetNameOfZone
        L9_3 = Config
        L9_3 = L9_3.BankLocations
        L10_3 = L6_3.target
        L9_3 = L9_3[L10_3]
        L9_3 = L9_3.BlipCoords
        L8_3 = L8_3(L9_3)
        L7_3 = L7_3[L8_3]
        L6_3.destination = L7_3
      end
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "updateTransports"
      L3_3 = A0_3.transports
      L2_3.transports = L3_3
      L1_3(L2_3)
      L1_3 = 1
      L2_3 = A0_3.chatMessages
      L2_3 = #L2_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = SendNUIMessage
        L6_3 = {}
        L6_3.action = "newCrimeMessage"
        L7_3 = A0_3.chatMessages
        L7_3 = L7_3[L4_3]
        L6_3.message = L7_3
        L5_3(L6_3)
      end
      L1_3 = true
      L0_1 = L1_3
    end
    L0_2(L1_2, L2_2)
  end
  L0_2 = SetNuiFocus
  L1_2 = true
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "OpenTablet"
  L0_2(L1_2)
end
L49_1(L50_1, L51_1)
L49_1 = true
L50_1 = 0
function L51_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L49_1
  if not L0_2 then
    return
  end
  L0_2 = false
  L49_1 = L0_2
  L0_2 = GetPedInVehicleSeat
  L1_2 = GetVehiclePedIsIn
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
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
      L49_1 = L0_2
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
    L1_2 = L15_1
    if not L1_2 then
      L1_2 = L23_1
      if not L1_2 then
        goto lbl_75
      end
    end
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    L2_2 = L50_1
    L2_2 = L1_2 - L2_2
    L3_2 = 2500
    if L2_2 > L3_2 then
      L50_1 = L1_2
      L2_2 = DeleteVehicleByCore
      L3_2 = L0_2
      L2_2(L3_2)
      L2_2 = TriggerServerEvent
      L3_2 = "17mov_GruppeSechs:endJob_sv"
      L4_2 = false
      L5_2 = true
      L6_2 = L23_1
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = true
      L49_1 = L2_2
      do return end
      goto lbl_112
      ::lbl_75::
      L1_2 = SetNuiFocus
      L2_2 = true
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.action = "openWarning"
      L3_2 = Config
      L3_2 = L3_2.Lang
      L3_2 = L3_2.notReadyWarning
      L2_2.text = L3_2
      L1_2(L2_2)
      L1_2 = 1
      L17_1 = L1_2
      L1_2 = true
      L49_1 = L1_2
      return
    end
  else
    L1_2 = SetNuiFocus
    L2_2 = true
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "openWarning"
    L3_2 = Config
    L3_2 = L3_2.Lang
    L3_2 = L3_2.notReadyWarning
    L2_2.text = L3_2
    L1_2(L2_2)
    L1_2 = 1
    L17_1 = L1_2
    L1_2 = true
    L49_1 = L1_2
    return
  end
  ::lbl_112::
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "openWarning"
  L3_2 = Config
  L3_2 = L3_2.Lang
  L3_2 = L3_2.wrongCarWarning
  L2_2.text = L3_2
  L1_2(L2_2)
  L1_2 = 2
  L17_1 = L1_2
  L1_2 = true
  L49_1 = L1_2
end
EndJob = L51_1
L51_1 = RegisterNUICallback
L52_1 = "GetClosestPlayers"
function L53_1(A0_2, A1_2)
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
  L6_2 = "17mov_GruppeSechs:IfPlayerIsHost"
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = TriggerServerCallback
      L2_3 = "17mov_GruppeSechs:GetPlayersNames"
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
L51_1(L52_1, L53_1)
L51_1 = RegisterNUICallback
L52_1 = "requestReacted"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.boolean
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_GruppeSechs:ClientReactRequest"
  L4_2 = L1_2
  L5_2 = A0_2.isCrime
  L2_2(L3_2, L4_2, L5_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNUICallback
L52_1 = "sendCrimeRequest"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L29_1
  if L1_2 then
    L1_2 = Notify
    L2_2 = Config
    L2_2 = L2_2.Lang
    L2_2 = L2_2.cantInviteCrime
    L1_2(L2_2)
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_GruppeSechs:SendRequestToClient_sv"
  L3_2 = A0_2.id
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNUICallback
L52_1 = "sendRequest"
function L53_1(A0_2)
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
  L2_2 = "17mov_GruppeSechs:SendRequestToClient_sv"
  L3_2 = tonumber
  L4_2 = A0_2.id
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNUICallback
L52_1 = "kickPlayerFromLobby"
function L53_1(A0_2)
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
  L5_2 = L36_1
  L5_2 = L5_2[L1_2]
  L5_2 = L5_2.name
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_GruppeSechs:KickPlayerFromLobby"
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNUICallback
L52_1 = "kickPlayerFromCrimeLobby"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Notify
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = Config
  L3_2 = L3_2.Lang
  L3_2 = L3_2.kicked
  L4_2 = A0_2.name
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_GruppeSechs:KickPlayerFromLobby"
  L3_2 = A0_2.id
  L4_2 = true
  L5_2 = nil
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNUICallback
L52_1 = "focusOff"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNUICallback
L52_1 = "notify"
function L53_1(A0_2)
  local L1_2, L2_2
  L1_2 = Notify
  L2_2 = A0_2.msg
  L1_2(L2_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:SendRequestToClient_cl"
L51_1(L52_1)
L51_1 = AddEventHandler
L52_1 = "17mov_GruppeSechs:SendRequestToClient_cl"
function L53_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "ShowCrimeInviteBox"
    L3_2.name = A0_2
    L2_2(L3_2)
  else
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "ShowInviteBox"
    L3_2.name = A0_2
    L2_2(L3_2)
  end
  L2_2 = SetNuiFocus
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:RefreshCrimeMugs"
function L53_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "refreshCrimeMugs"
  L3_2.names = A0_2
  L3_2.myId = A1_2
  L2_2(L3_2)
  L2_2 = TriggerServerCallback
  L3_2 = "17mov_GruppeSechs:IfPlayerIsCrimeHost"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "CrimeHostStatusUpdate"
    L2_3.status = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNUICallback
L52_1 = "checkPassword"
function L53_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerCallback
  L3_2 = "17mov_GruppeSechs:checkPassword"
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = true
      L1_3(L2_3)
    else
      L1_3 = A1_2
      L2_3 = false
      L1_3(L2_3)
    end
  end
  L5_2 = A0_2.password
  L2_2(L3_2, L4_2, L5_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNUICallback
L52_1 = "sendMessage"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_GruppeSechs:SendMessage"
  L3_2 = A0_2.message
  L1_2(L2_2, L3_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:newMessage"
function L53_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "newCrimeMessage"
  L2_2.message = A0_2
  L1_2(L2_2)
end
L51_1(L52_1, L53_1)
L51_1 = Config
L51_1 = L51_1.useModernUI
if L51_1 then
  L51_1 = RegisterNetEvent
  L52_1 = "17mov_GruppeSechs:RefreshMugs"
  L51_1(L52_1)
  L51_1 = AddEventHandler
  L52_1 = "17mov_GruppeSechs:RefreshMugs"
  function L53_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
    while true do
      L2_2 = L0_1
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
      L8_2 = L36_1
      L8_2 = L8_2[L9_2]
      if nil == L8_2 then
        L8_2 = L37_1
        L9_2 = L7_2.id
        if L8_2 == L9_2 then
          L9_2 = L7_2.id
          L8_2 = L36_1
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
          L8_2 = L36_1
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
        L10_2 = L36_1
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.itsMe
        L9_2.showQuitBtn = L10_2
        L8_2(L9_2)
      end
    end
    L2_2 = 0
    L3_2 = pairs
    L4_2 = L36_1
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
        L11_2 = L36_1
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
      L4_2 = "17mov_GruppeSechs:init"
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
        L0_1 = L1_3
      end
      L3_2(L4_2, L5_2)
    end
    L3_2 = TriggerServerCallback
    L4_2 = "17mov_GruppeSechs:IfPlayerOwnsTeam"
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
  L51_1(L52_1, L53_1)
else
  L51_1 = RegisterNetEvent
  L52_1 = "17mov_GruppeSechs:RefreshMugs"
  L51_1(L52_1)
  L51_1 = AddEventHandler
  L52_1 = "17mov_GruppeSechs:RefreshMugs"
  function L53_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "refreshMugs"
    L3_2.names = A0_2
    L3_2.myId = A1_2
    L2_2(L3_2)
    L2_2 = TriggerServerCallback
    L3_2 = "17mov_GruppeSechs:IfPlayerIsHost"
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
  L51_1(L52_1, L53_1)
end
function L51_1()
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
IsSpawnPointClear = L51_1
L51_1 = RegisterNUICallback
L52_1 = "startJob"
function L53_1(A0_2)
  local L1_2, L2_2
  L1_2 = OnDuty
  if not L1_2 then
    L1_2 = IsSpawnPointClear
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "17mov_GruppeSechs:StartJob_sv"
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
L51_1(L52_1, L53_1)
L51_1 = RegisterNUICallback
L52_1 = "leaveCrimeLobby"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_GruppeSechs:KickPlayerFromLobby"
  L3_2 = A0_2.id
  L4_2 = false
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2 = L6_2()
  L5_2 = L5_2(L6_2)
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = Notify
  L2_2 = Config
  L2_2 = L2_2.Lang
  L2_2 = L2_2.quit
  L1_2(L2_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNUICallback
L52_1 = "leaveLobby"
function L53_1(A0_2)
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
  L3_2 = "17mov_GruppeSechs:KickPlayerFromLobby"
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
L51_1(L52_1, L53_1)
function L51_1(A0_2, A1_2)
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
SpawnVehicle = L51_1
L51_1 = RegisterNUICallback
L52_1 = "tutorialClosed"
function L53_1()
  local L0_2, L1_2
  L0_2 = false
  L11_1 = L0_2
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:BagsDelivered"
function L53_1()
  local L0_2, L1_2
  L0_2 = showTutorial
  L1_2 = "afterBagLoadingTutorial"
  L0_2(L1_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:StartJob_cl"
L51_1(L52_1)
L51_1 = AddEventHandler
L52_1 = "17mov_GruppeSechs:StartJob_cl"
function L53_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2
  L6_2 = Config
  L6_2 = L6_2.SpawnPoint
  L7_2 = GetEntityCoords
  L8_2 = PlayerPedId
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L8_2()
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
  JobVehicleNetId = nil
  L8_2 = nil
  L1_1 = L8_2
  OnDuty = true
  L8_2 = false
  L4_1 = L8_2
  L8_2 = false
  L12_1 = L8_2
  L8_2 = false
  L13_1 = L8_2
  L8_2 = false
  L14_1 = L8_2
  L8_2 = false
  L16_1 = L8_2
  L8_2 = false
  L15_1 = L8_2
  L19_1 = A3_2
  L20_1 = A2_2
  L8_2 = false
  L18_1 = L8_2
  L8_2 = false
  L21_1 = L8_2
  L8_2 = false
  L23_1 = L8_2
  L8_2 = 0
  L22_1 = L8_2
  L8_2 = false
  L24_1 = L8_2
  L8_2 = false
  L26_1 = L8_2
  L8_2 = {}
  L9_2 = {}
  L8_2[1] = L9_2
  L9_2 = {}
  L8_2[2] = L9_2
  L9_2 = {}
  L8_2[3] = L9_2
  L9_2 = {}
  L8_2[4] = L9_2
  L3_1 = L8_2
  L8_2 = Config
  L8_2 = L8_2.EnableClothesChange
  if L8_2 then
    L8_2 = CreateThread
    function L9_2()
      local L0_3, L1_3
      L0_3 = ChangeClothes
      L1_3 = "work"
      L0_3(L1_3)
    end
    L8_2(L9_2)
  end
  if not A5_2 then
    L8_2 = showTutorial
    L9_2 = "startingTutorial"
    L8_2(L9_2)
  end
  if A0_2 == A1_2 then
    if not A5_2 then
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
      L10_2 = Config
      L10_2 = L10_2.SpawnPoint
      L11_2 = true
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L1_1 = L8_2
      L8_2 = DoScreenFadeIn
      L9_2 = 300
      L8_2(L9_2)
      while true do
        L8_2 = JobVehicleNetId
        if 0 ~= L8_2 then
          L8_2 = JobVehicleNetId
          if nil ~= L8_2 then
            break
          end
        end
        L8_2 = VehToNet
        L9_2 = L1_1
        L8_2 = L8_2(L9_2)
        JobVehicleNetId = L8_2
        L8_2 = Citizen
        L8_2 = L8_2.Wait
        L9_2 = 100
        L8_2(L9_2)
      end
      L8_2 = TriggerServerEvent
      L9_2 = "17mov_GruppeSechs:SendVehicleNetId"
      L10_2 = JobVehicleNetId
      L8_2(L9_2, L10_2)
    else
      L8_2 = false
      while not L8_2 do
        L9_2 = Citizen
        L9_2 = L9_2.Wait
        L10_2 = 500
        L9_2(L10_2)
        L9_2 = NetToVeh
        L10_2 = A4_2
        L9_2 = L9_2(L10_2)
        if L9_2 ~= A4_2 and 0 ~= L9_2 then
          L10_2 = DoesEntityExist
          L11_2 = L9_2
          L10_2 = L10_2(L11_2)
          if L10_2 then
            JobVehicleNetId = A4_2
            L1_1 = L9_2
            L8_2 = true
          end
        end
      end
    end
  else
    L8_2 = false
    L9_2 = TriggerServerCallback
    L10_2 = "17mov_GruppeSechs:GetJobVehicleNetId"
    function L11_2(A0_3)
      local L1_3, L2_3, L3_3
      while true do
        L1_3 = Citizen
        L1_3 = L1_3.Wait
        L2_3 = 500
        L1_3(L2_3)
        L1_3 = NetToVeh
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        if L1_3 ~= A0_3 and 0 ~= L1_3 then
          L2_3 = DoesEntityExist
          L3_3 = L1_3
          L2_3 = L2_3(L3_3)
          if L2_3 then
            JobVehicleNetId = A0_3
            L1_1 = L1_3
            L2_3 = true
            L8_2 = L2_3
            break
          end
        end
      end
    end
    L9_2(L10_2, L11_2)
    while not L8_2 do
      L9_2 = Citizen
      L9_2 = L9_2.Wait
      L10_2 = 100
      L9_2(L10_2)
    end
    L9_2 = Config
    L9_2 = L9_2.GiveKeysToAllLobby
    if L9_2 then
      L9_2 = SetVehicle
      L10_2 = L1_1
      L9_2(L10_2)
    end
  end
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
                L1_3 = NetToVeh
                L2_3 = JobVehicleNetId
                L1_3 = L1_3(L2_3)
                L1_1 = L1_3
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
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = Config
  L10_2 = L10_2.BankLocations
  L10_2 = L10_2[A2_2]
  L11_2 = Config
  L11_2 = L11_2.BankLocations
  L11_2 = L11_2[A3_2]
  L12_2 = AddBlipForCoord
  L13_2 = L10_2.BlipCoords
  L12_2 = L12_2(L13_2)
  L10_1 = L12_2
  L12_2 = SetBlipDisplay
  L13_2 = L10_1
  L14_2 = 4
  L12_2(L13_2, L14_2)
  L12_2 = BeginTextCommandSetBlipName
  L13_2 = "STRING"
  L12_2(L13_2)
  L12_2 = AddTextComponentString
  L13_2 = Config
  L13_2 = L13_2.Lang
  L13_2 = L13_2.srcBank
  L12_2(L13_2)
  L12_2 = EndTextCommandSetBlipName
  L13_2 = L10_1
  L12_2(L13_2)
  L12_2 = SetBlipRoute
  L13_2 = L10_1
  L14_2 = true
  L12_2(L13_2, L14_2)
  L12_2 = SetBlipRouteColour
  L13_2 = L10_1
  L14_2 = 2
  L12_2(L13_2, L14_2)
  L12_2 = SetBlipColour
  L13_2 = L10_1
  L14_2 = 2
  L12_2(L13_2, L14_2)
  L12_2 = CreateThread
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        goto lbl_199
      end
      L0_3 = L23_1
      if L0_3 then
        goto lbl_199
      end
      L0_3 = 1000
      L1_3 = nil
      L2_3 = L15_1
      if L2_3 then
        break
      end
      L2_3 = L12_1
      if L2_3 then
        L1_3 = L11_2
        L2_3 = L19_1
        L1_3.bankId = L2_3
      else
        L1_3 = L10_2
        L2_3 = L20_1
        L1_3.bankId = L2_3
      end
      L2_3 = L1_3.doorsRunning
      if not L2_3 then
        L2_3 = L9_1
        if not L2_3 then
          L2_3 = L1_3.isVault
          if L2_3 then
            L2_3 = GetEntityCoords
            L3_3 = PlayerPedId
            L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3()
            L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
            L3_3 = L1_3.DoorsCoords
            L2_3 = L2_3 - L3_3
            L2_3 = #L2_3
            if L2_3 < 100.0 then
              L2_3 = L1_3.DriverCoords
              L3_3 = GetEntityCoords
              L4_3 = PlayerPedId
              L4_3, L5_3, L6_3, L7_3, L8_3 = L4_3()
              L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
              L2_3 = L2_3 - L3_3
              L2_3 = #L2_3
              L3_3 = 0.8
              if L2_3 < L3_3 then
                L0_3 = 0
                L3_3 = DrawText3Ds
                L4_3 = L1_3.DriverCoords
                L4_3 = L4_3.x
                L5_3 = L1_3.DriverCoords
                L5_3 = L5_3.y
                L6_3 = L1_3.DriverCoords
                L6_3 = L6_3.z
                L7_3 = Config
                L7_3 = L7_3.InteractionKey
                L7_3 = L7_3.keyString
                L8_3 = Config
                L8_3 = L8_3.Lang
                L8_3 = L8_3.enterCode
                L7_3 = L7_3 .. L8_3
                L3_3(L4_3, L5_3, L6_3, L7_3)
                L3_3 = 0.8
                if L2_3 < L3_3 then
                  L3_3 = IsControlJustReleased
                  L4_3 = 0
                  L5_3 = Config
                  L5_3 = L5_3.InteractionKey
                  L5_3 = L5_3.keyIndex
                  L3_3 = L3_3(L4_3, L5_3)
                  if L3_3 then
                    L4_3 = L1_3.DoorsCoords
                    L3_3 = L5_1
                    L3_3 = L3_3[L4_3]
                    if nil == L3_3 then
                      L3_3 = L12_1
                      if L3_3 then
                        L3_3 = L14_1
                        if L3_3 then
                          L3_3 = L15_1
                          if not L3_3 then
                            L3_3 = Config
                            L3_3 = L3_3.enableAtmsFillingUp
                            if not L3_3 then
                              goto lbl_112
                            end
                          end
                        end
                      end
                      L3_3 = L12_1
                      if L3_3 then
                        L3_3 = L14_1
                        if L3_3 then
                          L3_3 = L15_1
                          if not L3_3 then
                            L3_3 = L24_1
                            if L3_3 then
                              goto lbl_112
                            end
                          end
                        end
                      end
                      L3_3 = L12_1
                      ::lbl_112::
                      if not L3_3 then
                        L3_3 = EnterCodeAnim
                        L4_3 = L1_3
                        L5_3 = L1_3.bankId
                        L6_3 = "open"
                        L7_3 = A0_2
                        L8_3 = false
                        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
                      else
                        L3_3 = Notify
                        L4_3 = Config
                        L4_3 = L4_3.Lang
                        L4_3 = L4_3.didntMakeThirdStep
                        L3_3(L4_3)
                      end
                    else
                      L3_3 = L12_1
                      if not L3_3 then
                        L3_3 = CheckIfAllPropsDeleted
                        L4_3 = L8_2
                        L3_3 = L3_3(L4_3)
                        if L3_3 then
                          L3_3 = NoOneIsInside
                          L4_3 = L1_3.DeliveryLocations
                          L4_3 = L4_3[1]
                          L4_3 = L4_3.coords
                          L5_3 = 4.0
                          L3_3 = L3_3(L4_3, L5_3)
                          if L3_3 then
                            L3_3 = EnterCodeAnim
                            L4_3 = L1_3
                            L5_3 = L8_2
                            L6_3 = "close"
                            L3_3(L4_3, L5_3, L6_3)
                            L3_3 = TriggerServerEvent
                            L4_3 = "17mov_GruppeSechs:firstStageReady"
                            L5_3 = A0_2
                            L6_3 = false
                            L3_3(L4_3, L5_3, L6_3)
                          else
                            L3_3 = Notify
                            L4_3 = Config
                            L4_3 = L4_3.Lang
                            L4_3 = L4_3.someonesInside
                            L3_3(L4_3)
                          end
                        else
                          L3_3 = Notify
                          L4_3 = Config
                          L4_3 = L4_3.Lang
                          L4_3 = L4_3.notEverythingDone
                          L3_3(L4_3)
                        end
                      else
                        L3_3 = L14_1
                        if L3_3 then
                          L3_3 = NoOneIsInside
                          L4_3 = L1_3.DeliveryLocations
                          L4_3 = L4_3[1]
                          L4_3 = L4_3.coords
                          L5_3 = 4.0
                          L3_3 = L3_3(L4_3, L5_3)
                          if L3_3 then
                            L3_3 = TriggerServerCallback
                            L4_3 = "17mov_GruppeSechs:IsAllAreBagsThrowed"
                            function L5_3(A0_4)
                              local L1_4, L2_4, L3_4, L4_4, L5_4
                              if A0_4 then
                                L1_4 = EnterCodeAnim
                                L2_4 = L1_3
                                L3_4 = L19_1
                                L4_4 = "close"
                                L5_4 = false
                                L1_4(L2_4, L3_4, L4_4, L5_4)
                              else
                                L1_4 = Notify
                                L2_4 = Config
                                L2_4 = L2_4.Lang
                                L2_4 = L2_4.notAllBags
                                L1_4(L2_4)
                              end
                            end
                            L3_3(L4_3, L5_3)
                          else
                            L3_3 = Notify
                            L4_3 = Config
                            L4_3 = L4_3.Lang
                            L4_3 = L4_3.someonesInside
                            L3_3(L4_3)
                          end
                        else
                          L3_3 = Notify
                          L4_3 = Config
                          L4_3 = L4_3.Lang
                          L4_3 = L4_3.didntMakeThirdStep
                          L3_3(L4_3)
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
      L2_3 = Citizen
      L2_3 = L2_3.Wait
      L3_3 = L0_3
      L2_3(L3_3)
    end
    ::lbl_199::
  end
  L12_2(L13_2)
  L12_2 = L10_2.isVault
  if L12_2 then
    L12_2 = false
    L13_2 = CreateThread
    function L14_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      while true do
        L0_3 = OnDuty
        if not L0_3 then
          break
        end
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = GetEntityCoords
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L1_3 = L10_2.DriverCoords
        L0_3 = L0_3 - L1_3
        L0_3 = #L0_3
        if L0_3 < 10.0 then
          L0_3 = L12_2
          if not L0_3 then
            L0_3 = true
            L12_2 = L0_3
            L0_3 = GetGamePool
            if nil == L0_3 then
              L0_3 = print
              L1_3 = "GAME POOL NATIVE IS NOT FOUND. PLEASE UPDATE YOUR SERVER ARTIFACTS"
              L0_3(L1_3)
              return
            end
            L0_3 = GetGamePool
            L1_3 = "CObject"
            L0_3 = L0_3(L1_3)
            L1_3 = 1
            L2_3 = #L0_3
            L3_3 = 1
            for L4_3 = L1_3, L2_3, L3_3 do
              L5_3 = L10_2.ObjectsToDelete
              L6_3 = GetEntityModel
              L7_3 = L0_3[L4_3]
              L6_3 = L6_3(L7_3)
              L5_3 = L5_3[L6_3]
              if L5_3 then
                L5_3 = SetEntityAsMissionEntity
                L6_3 = L0_3[L4_3]
                L7_3 = true
                L8_3 = true
                L5_3(L6_3, L7_3, L8_3)
                L5_3 = DeleteObject
                L6_3 = L0_3[L4_3]
                L5_3(L6_3)
                L5_3 = DeleteEntity
                L6_3 = L0_3[L4_3]
                L5_3(L6_3)
                L5_3 = SetEntityCoords
                L6_3 = L0_3[L4_3]
                L7_3 = vec3
                L8_3 = 0
                L9_3 = 0
                L10_3 = 0
                L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3, L9_3, L10_3)
                L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
              end
            end
          end
        end
        L0_3 = GetEntityCoords
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L1_3 = L10_2.DriverCoords
        L0_3 = L0_3 - L1_3
        L0_3 = #L0_3
        if L0_3 < 3.0 then
          L0_3 = showTutorial
          L1_3 = "beforeMoneyGrabInBank"
          L0_3(L1_3)
          break
        end
      end
    end
    L13_2(L14_2)
  else
    L12_2 = CreateThread
    function L13_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      while true do
        L0_3 = OnDuty
        if not L0_3 then
          break
        end
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = GetEntityCoords
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L1_3 = L10_2.BlipCoords
        L0_3 = L0_3 - L1_3
        L0_3 = #L0_3
        if L0_3 < 5.0 then
          L0_3 = showTutorial
          L1_3 = "beforeMoneyGrab"
          L0_3(L1_3)
          L0_3 = GetGamePool
          L1_3 = "CObject"
          L0_3 = L0_3(L1_3)
          L1_3 = 1
          L2_3 = #L0_3
          L3_3 = 1
          for L4_3 = L1_3, L2_3, L3_3 do
            L5_3 = L10_2.ObjectsToDelete
            L6_3 = GetEntityModel
            L7_3 = L0_3[L4_3]
            L6_3 = L6_3(L7_3)
            L5_3 = L5_3[L6_3]
            if L5_3 then
              L5_3 = SetEntityAsMissionEntity
              L6_3 = L0_3[L4_3]
              L7_3 = true
              L8_3 = true
              L5_3(L6_3, L7_3, L8_3)
              L5_3 = DeleteObject
              L6_3 = L0_3[L4_3]
              L5_3(L6_3)
              L5_3 = DeleteEntity
              L6_3 = L0_3[L4_3]
              L5_3(L6_3)
              L5_3 = SetEntityCoords
              L6_3 = L0_3[L4_3]
              L7_3 = vec3
              L8_3 = 0
              L9_3 = 0
              L10_3 = 0
              L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3, L9_3, L10_3)
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
            end
          end
          break
        end
      end
    end
    L12_2(L13_2)
    L12_2 = L8_2
    while true do
      L13_2 = HasModelLoaded
      L14_2 = Config
      L14_2 = L14_2.TrolleyModel
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L13_2 = HasModelLoaded
        L14_2 = Config
        L14_2 = L14_2.CashModel
        L13_2 = L13_2(L14_2)
        if L13_2 then
          break
        end
      end
      L13_2 = RequestModel
      L14_2 = Config
      L14_2 = L14_2.TrolleyModel
      L13_2(L14_2)
      L13_2 = RequestModel
      L14_2 = Config
      L14_2 = L14_2.CashModel
      L13_2(L14_2)
      L13_2 = Citizen
      L13_2 = L13_2.Wait
      L14_2 = 0
      L13_2(L14_2)
    end
    L13_2 = 1
    L14_2 = L10_2.TrolleysCoords
    L14_2 = #L14_2
    L15_2 = 1
    for L16_2 = L13_2, L14_2, L15_2 do
      L17_2 = Config
      L17_2 = L17_2.BankLocations
      L17_2 = L17_2[L12_2]
      L17_2 = L17_2.TrolleysCoords
      L17_2 = L17_2[L16_2]
      L18_2 = {}
      L17_2.props = L18_2
      L17_2 = Config
      L17_2 = L17_2.BankLocations
      L17_2 = L17_2[L12_2]
      L17_2 = L17_2.TrolleysCoords
      L17_2 = L17_2[L16_2]
      L18_2 = CreateObject
      L19_2 = Config
      L19_2 = L19_2.TrolleyModel
      L20_2 = L10_2.TrolleysCoords
      L20_2 = L20_2[L16_2]
      L20_2 = L20_2.coords
      L21_2 = false
      L22_2 = false
      L23_2 = false
      L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
      L17_2.object = L18_2
      L17_2 = PlaceObjectOnGroundProperly
      L18_2 = Config
      L18_2 = L18_2.BankLocations
      L18_2 = L18_2[L12_2]
      L18_2 = L18_2.TrolleysCoords
      L18_2 = L18_2[L16_2]
      L18_2 = L18_2.object
      L17_2(L18_2)
      L17_2 = SetEntityRotation
      L18_2 = Config
      L18_2 = L18_2.BankLocations
      L18_2 = L18_2[L12_2]
      L18_2 = L18_2.TrolleysCoords
      L18_2 = L18_2[L16_2]
      L18_2 = L18_2.object
      L19_2 = L10_2.TrolleysCoords
      L19_2 = L19_2[L16_2]
      L19_2 = L19_2.rotation
      L17_2(L18_2, L19_2)
      L17_2 = FreezeEntityPosition
      L18_2 = Config
      L18_2 = L18_2.BankLocations
      L18_2 = L18_2[L12_2]
      L18_2 = L18_2.TrolleysCoords
      L18_2 = L18_2[L16_2]
      L18_2 = L18_2.object
      L19_2 = true
      L17_2(L18_2, L19_2)
      L17_2 = 0
      L18_2 = Config
      L18_2 = L18_2.AttachSettings
      L18_2 = L18_2.totalHeight
      L18_2 = L18_2 - 1
      L19_2 = 1
      for L20_2 = L17_2, L18_2, L19_2 do
        L21_2 = 0
        L22_2 = Config
        L22_2 = L22_2.AttachSettings
        L22_2 = L22_2.totalRows
        L22_2 = L22_2 - 1
        L23_2 = 1
        for L24_2 = L21_2, L22_2, L23_2 do
          L25_2 = 0
          L26_2 = Config
          L26_2 = L26_2.AttachSettings
          L26_2 = L26_2.totalLenght
          L26_2 = L26_2 - 1
          L27_2 = 1
          for L28_2 = L25_2, L26_2, L27_2 do
            L29_2 = CreateObject
            L30_2 = Config
            L30_2 = L30_2.CashModel
            L31_2 = L10_2.TrolleysCoords
            L31_2 = L31_2[L16_2]
            L31_2 = L31_2.coords
            L32_2 = false
            L33_2 = false
            L34_2 = false
            L29_2 = L29_2(L30_2, L31_2, L32_2, L33_2, L34_2)
            L30_2 = table
            L30_2 = L30_2.insert
            L31_2 = Config
            L31_2 = L31_2.BankLocations
            L31_2 = L31_2[L12_2]
            L31_2 = L31_2.TrolleysCoords
            L31_2 = L31_2[L16_2]
            L31_2 = L31_2.props
            L32_2 = L29_2
            L30_2(L31_2, L32_2)
            L30_2 = GetOffsetFromEntityInWorldCoords
            L31_2 = Config
            L31_2 = L31_2.BankLocations
            L31_2 = L31_2[L12_2]
            L31_2 = L31_2.TrolleysCoords
            L31_2 = L31_2[L16_2]
            L31_2 = L31_2.object
            L32_2 = Config
            L32_2 = L32_2.AttachSettings
            L32_2 = L32_2.startingOffset
            L32_2 = L32_2.x
            L33_2 = Config
            L33_2 = L33_2.PileXOffset
            if not L33_2 then
              L33_2 = 0.07
            end
            L33_2 = L33_2 * L28_2
            L32_2 = L32_2 + L33_2
            L33_2 = Config
            L33_2 = L33_2.AttachSettings
            L33_2 = L33_2.startingOffset
            L33_2 = L33_2.y
            L34_2 = Config
            L34_2 = L34_2.PileYOffset
            if not L34_2 then
              L34_2 = 0.15
            end
            L34_2 = L34_2 * L24_2
            L33_2 = L33_2 + L34_2
            L34_2 = Config
            L34_2 = L34_2.AttachSettings
            L34_2 = L34_2.startingOffset
            L34_2 = L34_2.z
            L35_2 = Config
            L35_2 = L35_2.PileZOffset
            if not L35_2 then
              L35_2 = 0.04
            end
            L35_2 = L35_2 * L20_2
            L34_2 = L34_2 + L35_2
            L30_2 = L30_2(L31_2, L32_2, L33_2, L34_2)
            L31_2 = SetEntityCoords
            L32_2 = L29_2
            L33_2 = L30_2
            L31_2(L32_2, L33_2)
            L31_2 = SetEntityRotation
            L32_2 = L29_2
            L33_2 = GetEntityRotation
            L34_2 = Config
            L34_2 = L34_2.BankLocations
            L34_2 = L34_2[L12_2]
            L34_2 = L34_2.TrolleysCoords
            L34_2 = L34_2[L16_2]
            L34_2 = L34_2.object
            L33_2, L34_2, L35_2 = L33_2(L34_2)
            L31_2(L32_2, L33_2, L34_2, L35_2)
            L31_2 = FreezeEntityPosition
            L32_2 = L29_2
            L33_2 = true
            L31_2(L32_2, L33_2)
          end
        end
      end
    end
    if A0_2 == A1_2 then
      while true do
        L13_2 = L12_1
        if L13_2 then
          break
        end
        L13_2 = CheckIfAllPropsDeleted
        L14_2 = L8_2
        L13_2 = L13_2(L14_2)
        if L13_2 then
          L13_2 = TriggerServerEvent
          L14_2 = "17mov_GruppeSechs:firstStageReady"
          L15_2 = A0_2
          L13_2(L14_2, L15_2)
          break
        end
        L13_2 = Citizen
        L13_2 = L13_2.Wait
        L14_2 = 150
        L13_2(L14_2)
      end
    end
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:attachEntity"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = NetToObj
  L2_2 = A0_2[1]
  L1_2 = L1_2(L2_2)
  L2_2 = NetToVeh
  L3_2 = A0_2[2]
  L2_2 = L2_2(L3_2)
  if 0 ~= L1_2 then
    L3_2 = A0_2[1]
    if L1_2 ~= L3_2 then
      L3_2 = 25
      while true do
        L4_2 = IsEntityAttachedToEntity
        L5_2 = L1_2
        L6_2 = L2_2
        L4_2 = L4_2(L5_2, L6_2)
        if L4_2 then
          break
        end
        L4_2 = Citizen
        L4_2 = L4_2.Wait
        L5_2 = 200
        L4_2(L5_2)
        L4_2 = AttachEntityToEntity
        L5_2 = L1_2
        L6_2 = L2_2
        L7_2 = A0_2[3]
        L8_2 = A0_2[4]
        L9_2 = A0_2[5]
        L10_2 = A0_2[6]
        L11_2 = A0_2[7]
        L12_2 = A0_2[8]
        L13_2 = A0_2[9]
        L14_2 = A0_2[10]
        L15_2 = A0_2[11]
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L3_2 = L3_2 - 1
        if L3_2 <= 0 then
          break
        end
      end
    end
  end
end
L51_1(L52_1, L53_1)
function L51_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = RequestModel
  L3_2 = "prop_cs_heist_bag_01"
  L2_2(L3_2)
  while true do
    L2_2 = HasModelLoaded
    L3_2 = "prop_cs_heist_bag_01"
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 100
    L2_2(L3_2)
  end
  L2_2 = 1
  L3_2 = A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L3_1
    L6_2 = L6_2[L5_2]
    L7_2 = CreateObject
    L8_2 = "prop_cs_heist_bag_01"
    L9_2 = GetEntityCoords
    L10_2 = L1_1
    L9_2 = L9_2(L10_2)
    L10_2 = false
    L11_2 = false
    L12_2 = false
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2.prop = L7_2
    L6_2 = AttachEntityToEntity
    L7_2 = L3_1
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.prop
    L8_2 = L1_1
    L9_2 = 0
    L10_2 = Config
    L10_2 = L10_2.vehicleRearBagsOffsets
    L10_2 = L10_2[L5_2]
    L10_2 = L10_2.xyz
    L11_2 = Config
    L11_2 = L11_2.vehicleRearBagsOffsets
    L11_2 = L11_2[L5_2]
    L11_2 = L11_2.rotation
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L15_2 = false
    L16_2 = 2
    L17_2 = true
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L6_2 = SetEntityVisible
    L7_2 = L3_1
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.prop
    L8_2 = false
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = Config
    L6_2 = L6_2.EnableHighlightBags
    if L6_2 then
      L6_2 = SetEntityDrawOutline
      L7_2 = L3_1
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.prop
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = SetEntityDrawOutlineColor
      L7_2 = 43
      L8_2 = 150
      L9_2 = 17
      L10_2 = 100
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
  end
  L2_2 = pairs
  L3_2 = L3_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if A0_2 < L6_2 then
      L8_2 = L3_1
      L8_2[L6_2] = nil
    end
  end
  if A1_2 then
    L2_2 = false
    while true do
      L3_2 = L13_1
      if L3_2 then
        break
      end
      L3_2 = Citizen
      L3_2 = L3_2.Wait
      L4_2 = 0
      L3_2(L4_2)
      L3_2 = GetEntityCoords
      L4_2 = L1_1
      L3_2 = L3_2(L4_2)
      L4_2 = GetEntityForwardVector
      L5_2 = L1_1
      L4_2 = L4_2(L5_2)
      L5_2 = Config
      L5_2 = L5_2.OpenDoorsTextBackwardOffset
      L4_2 = L4_2 * L5_2
      L3_2 = L3_2 + L4_2
      L4_2 = GetEntityCoords
      L5_2 = PlayerPedId
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2()
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L4_2 = L4_2 - L3_2
      L4_2 = #L4_2
      if L4_2 < 2.0 then
        L4_2 = DrawText3Ds
        L5_2 = L3_2.x
        L6_2 = L3_2.y
        L7_2 = L3_2.z
        L8_2 = Config
        L8_2 = L8_2.OpenDoorTextUpDownOffset
        L7_2 = L7_2 + L8_2
        L8_2 = Config
        L8_2 = L8_2.InteractionKey
        L8_2 = L8_2.keyString
        L9_2 = Config
        L9_2 = L9_2.Lang
        L9_2 = L9_2.throwBag
        L8_2 = L8_2 .. L9_2
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = IsControlJustReleased
        L5_2 = 0
        L6_2 = Config
        L6_2 = L6_2.InteractionKey
        L6_2 = L6_2.keyIndex
        L4_2 = L4_2(L5_2, L6_2)
        if L4_2 then
          if not L2_2 then
            L2_2 = true
            L4_2 = TriggerServerCallback
            L5_2 = "17mov_GruppeSechs:GetFreeVehBagIndex"
            function L6_2(A0_3)
              local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
              L22_1 = A0_3
              L1_3 = DeleteEntity
              L2_3 = L3_1
              L2_3 = L2_3[A0_3]
              L2_3 = L2_3.prop
              L1_3(L2_3)
              L1_3 = GetOffsetFromEntityInWorldCoords
              L2_3 = L1_1
              L3_3 = Config
              L3_3 = L3_3.vehicleRearBagsOffsets
              L3_3 = L3_3[A0_3]
              L3_3 = L3_3.xyz
              L1_3 = L1_3(L2_3, L3_3)
              L2_3 = L3_1
              L2_3 = L2_3[A0_3]
              L3_3 = ThrowBag
              L4_3 = L1_3
              L5_3 = Config
              L5_3 = L5_3.vehicleRearBagsOffsets
              L5_3 = L5_3[A0_3]
              L5_3 = L5_3.rotation
              L6_3 = 0.1
              L3_3 = L3_3(L4_3, L5_3, L6_3)
              L2_3.realBag = L3_3
              L2_3 = TriggerServerEvent
              L3_3 = "17mov_GruppeSechs:attachEntity"
              L4_3 = {}
              L5_3 = ObjToNet
              L6_3 = L3_1
              L6_3 = L6_3[A0_3]
              L6_3 = L6_3.realBag
              L5_3 = L5_3(L6_3)
              L6_3 = JobVehicleNetId
              L7_3 = 0
              L8_3 = Config
              L8_3 = L8_3.vehicleRearBagsOffsets
              L8_3 = L8_3[A0_3]
              L8_3 = L8_3.xyz
              L9_3 = Config
              L9_3 = L9_3.vehicleRearBagsOffsets
              L9_3 = L9_3[A0_3]
              L9_3 = L9_3.rotation
              L10_3 = false
              L11_3 = false
              L12_3 = false
              L13_3 = false
              L14_3 = 2
              L15_3 = true
              L4_3[1] = L5_3
              L4_3[2] = L6_3
              L4_3[3] = L7_3
              L4_3[4] = L8_3
              L4_3[5] = L9_3
              L4_3[6] = L10_3
              L4_3[7] = L11_3
              L4_3[8] = L12_3
              L4_3[9] = L13_3
              L4_3[10] = L14_3
              L4_3[11] = L15_3
              L2_3(L3_3, L4_3)
            end
            L4_2(L5_2, L6_2)
          else
            break
          end
        end
      end
    end
  else
    while true do
      L2_2 = L14_1
      if L2_2 then
        break
      end
      L2_2 = Citizen
      L2_2 = L2_2.Wait
      L3_2 = 0
      L2_2(L3_2)
      L2_2 = GetEntityCoords
      L3_2 = L1_1
      L2_2 = L2_2(L3_2)
      L3_2 = GetEntityForwardVector
      L4_2 = L1_1
      L3_2 = L3_2(L4_2)
      L4_2 = Config
      L4_2 = L4_2.OpenDoorsTextBackwardOffset
      L3_2 = L3_2 * L4_2
      L2_2 = L2_2 + L3_2
      L3_2 = GetEntityCoords
      L4_2 = PlayerPedId
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L4_2()
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L3_2 = L3_2 - L2_2
      L3_2 = #L3_2
      if L3_2 < 1.0 then
        L3_2 = ShowHelpNotification
        L4_2 = Config
        L4_2 = L4_2.HintNotifications
        L4_2 = L4_2.GrabBag
        L3_2(L4_2)
        L3_2 = IsControlJustReleased
        L4_2 = 0
        L5_2 = 38
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 then
          L3_2 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
          L4_2 = "throw_l_fb_stand"
          while true do
            L5_2 = HasAnimDictLoaded
            L6_2 = L3_2
            L5_2 = L5_2(L6_2)
            if L5_2 then
              break
            end
            L5_2 = RequestAnimDict
            L6_2 = L3_2
            L5_2(L6_2)
            L5_2 = Citizen
            L5_2 = L5_2.Wait
            L6_2 = 0
            L5_2(L6_2)
          end
          L5_2 = TaskPlayAnim
          L6_2 = PlayerPedId
          L6_2 = L6_2()
          L7_2 = L3_2
          L8_2 = L4_2
          L9_2 = 8.0
          L10_2 = 8.0
          L11_2 = -1
          L12_2 = 0
          L13_2 = 0
          L14_2 = false
          L15_2 = false
          L16_2 = false
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          L5_2 = Citizen
          L5_2 = L5_2.Wait
          L6_2 = 500
          L5_2(L6_2)
          L5_2 = L22_1
          if nil ~= L5_2 then
            L5_2 = L22_1
            if L5_2 > 0 then
              L6_2 = L22_1
              L5_2 = L3_1
              L5_2 = L5_2[L6_2]
              L5_2 = L5_2.realBag
              if nil ~= L5_2 then
                L6_2 = L22_1
                L5_2 = L3_1
                L5_2 = L5_2[L6_2]
                L5_2 = L5_2.realBag
                if 0 ~= L5_2 then
                  L5_2 = TriggerServerEvent
                  L6_2 = "17mov_GruppeSechs:DeleteNetId"
                  L7_2 = ObjToNet
                  L9_2 = L22_1
                  L8_2 = L3_1
                  L8_2 = L8_2[L9_2]
                  L8_2 = L8_2.realBag
                  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2(L8_2)
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                  L5_2 = SetEntityAsMissionEntity
                  L7_2 = L22_1
                  L6_2 = L3_1
                  L6_2 = L6_2[L7_2]
                  L6_2 = L6_2.realBag
                  L7_2 = true
                  L8_2 = true
                  L5_2(L6_2, L7_2, L8_2)
                  L5_2 = DeleteEntity
                  L7_2 = L22_1
                  L6_2 = L3_1
                  L6_2 = L6_2[L7_2]
                  L6_2 = L6_2.realBag
                  L5_2(L6_2)
                  L5_2 = DeleteObject
                  L7_2 = L22_1
                  L6_2 = L3_1
                  L6_2 = L6_2[L7_2]
                  L6_2 = L6_2.realBag
                  L5_2(L6_2)
                  L5_2 = DeleteEntity
                  L7_2 = L22_1
                  L6_2 = L3_1
                  L6_2 = L6_2[L7_2]
                  L6_2 = L6_2.prop
                  L5_2(L6_2)
                end
              end
            end
          end
          L5_2 = TriggerServerEvent
          L6_2 = "17mov_GruppeSechs:OneBagGrabbed"
          L7_2 = L22_1
          L5_2(L6_2, L7_2)
          L5_2 = true
          L26_1 = L5_2
          L5_2 = GetEntityModel
          L6_2 = PlayerPedId
          L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2()
          L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
          if 1885233650 == L5_2 then
            L5_2 = pairs
            L6_2 = Config
            L6_2 = L6_2.realClothes
            L6_2 = L6_2.male
            L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
            for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
              L11_2 = L10_2.component_id
              if 5 == L11_2 then
                L11_2 = SetPedComponentVariation
                L12_2 = PlayerPedId
                L12_2 = L12_2()
                L13_2 = L10_2.component_id
                L14_2 = L10_2.drawable
                L15_2 = L10_2.texture
                L16_2 = 0
                L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
              end
            end
            break
          end
          L5_2 = pairs
          L6_2 = Config
          L6_2 = L6_2.realClothes
          L6_2 = L6_2.female
          L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
          for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
            L11_2 = L10_2.component_id
            if 5 == L11_2 then
              L11_2 = SetPedComponentVariation
              L12_2 = PlayerPedId
              L12_2 = L12_2()
              L13_2 = L10_2.component_id
              L14_2 = L10_2.drawable
              L15_2 = L10_2.texture
              L16_2 = 0
              L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
            end
          end
          break
        end
      end
    end
  end
end
highlightBagsOnJobVehicle = L51_1
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:BagGrabbedFromVeh"
function L53_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = DeleteEntity
  L4_2 = L3_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.realBag
  L3_2(L4_2)
  L3_2 = DeleteEntity
  L4_2 = L3_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.prop
  L3_2(L4_2)
  L3_2 = L3_1
  L3_2[A0_2] = nil
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = Config
    L0_3 = L0_3.BankLocations
    L1_3 = L19_1
    L0_3 = L0_3[L1_3]
    while true do
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 150
      L1_3(L2_3)
      L1_3 = GetEntityCoords
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L2_3 = L0_3.DriverCoords
      L1_3 = L1_3 - L2_3
      L1_3 = #L1_3
      if L1_3 < 10.0 then
        L1_3 = GetGamePool
        if nil == L1_3 then
          L1_3 = print
          L2_3 = "GAME POOL NATIVE IS NOT FOUND. PLEASE UPDATE YOUR SERVER ARTIFACTS"
          L1_3(L2_3)
          return
        end
        L1_3 = GetGamePool
        L2_3 = "CObject"
        L1_3 = L1_3(L2_3)
        L2_3 = 1
        L3_3 = #L1_3
        L4_3 = 1
        for L5_3 = L2_3, L3_3, L4_3 do
          L6_3 = L0_3.ObjectsToDelete
          L7_3 = GetEntityModel
          L8_3 = L1_3[L5_3]
          L7_3 = L7_3(L8_3)
          L6_3 = L6_3[L7_3]
          if L6_3 then
            L6_3 = SetEntityAsMissionEntity
            L7_3 = L1_3[L5_3]
            L8_3 = true
            L9_3 = true
            L6_3(L7_3, L8_3, L9_3)
            L6_3 = DeleteObject
            L7_3 = L1_3[L5_3]
            L6_3(L7_3)
            L6_3 = DeleteEntity
            L7_3 = L1_3[L5_3]
            L6_3(L7_3)
            L6_3 = SetEntityCoords
            L7_3 = L1_3[L5_3]
            L8_3 = vec3
            L9_3 = 0
            L10_3 = 0
            L11_3 = 0
            L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3, L10_3, L11_3)
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
          end
        end
        break
      end
    end
  end
  L3_2(L4_2)
  if A1_2 == A2_2 then
    L3_2 = true
    L14_1 = L3_2
    L3_2 = SetVehicleDoorShut
    L4_2 = L1_1
    L5_2 = 2
    L6_2 = false
    L7_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 100
    L3_2(L4_2)
    L3_2 = SetVehicleDoorShut
    L4_2 = L1_1
    L5_2 = 3
    L6_2 = false
    L7_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:DeleteHelpVehBag"
function L53_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = DeleteEntity
  L6_2 = L3_1
  L6_2 = L6_2[A2_2]
  L6_2 = L6_2.prop
  L5_2(L6_2)
  L5_2 = L3_1
  L5_2 = L5_2[A2_2]
  L5_2.prop = 0
  if A2_2 == A3_2 then
    L5_2 = false
    L16_1 = L5_2
    L5_2 = true
    L13_1 = L5_2
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 1000
    L5_2(L6_2)
    L5_2 = CreateThread
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = SetVehicleDoorShut
      L1_3 = L1_1
      L2_3 = 2
      L3_3 = false
      L4_3 = true
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 100
      L0_3(L1_3)
      L0_3 = SetVehicleDoorShut
      L1_3 = L1_1
      L2_3 = 3
      L3_3 = false
      L4_3 = true
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L5_2(L6_2)
    L5_2 = A4_2
    L6_2 = Config
    L6_2 = L6_2.BankLocations
    L6_2 = L6_2[A4_2]
    L7_2 = false
    L8_2 = CreateThread
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
      while true do
        L0_3 = L21_1
        if L0_3 then
          break
        end
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = GetEntityCoords
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
        L1_3 = Config
        L1_3 = L1_3.enableAtmsFillingUp
        if L1_3 then
          L1_3 = L24_1
          if L1_3 then
            goto lbl_23
          end
        end
        L1_3 = Config
        L1_3 = L1_3.enableAtmsFillingUp
        ::lbl_23::
        if not L1_3 then
          L1_3 = L6_2.BlipCoords
          L1_3 = L0_3 - L1_3
          L1_3 = #L1_3
          if L1_3 < 40.0 then
            L1_3 = L7_2
            if not L1_3 then
              L1_3 = true
              L7_2 = L1_3
              L1_3 = showTutorial
              L2_3 = "AfterArrivalToTargetBank"
              L3_3 = true
              L1_3(L2_3, L3_3)
              L1_3 = A0_2
              L2_3 = A1_2
              if L1_3 == L2_3 then
                L1_3 = TriggerServerEvent
                L2_3 = "17mov_GruppeSechs:DisableUsFromTransports"
                L1_3(L2_3)
              end
              L1_3 = GetGamePool
              if nil == L1_3 then
                L1_3 = print
                L2_3 = "GAME POOL NATIVE IS NOT FOUND. PLEASE UPDATE YOUR SERVER ARTIFACTS"
                L1_3(L2_3)
                return
              end
              L1_3 = GetGamePool
              L2_3 = "CObject"
              L1_3 = L1_3(L2_3)
              L2_3 = 1
              L3_3 = #L1_3
              L4_3 = 1
              for L5_3 = L2_3, L3_3, L4_3 do
                L6_3 = L6_2.ObjectsToDelete
                L7_3 = GetEntityModel
                L8_3 = L1_3[L5_3]
                L7_3 = L7_3(L8_3)
                L6_3 = L6_3[L7_3]
                if L6_3 then
                  L6_3 = SetEntityAsMissionEntity
                  L7_3 = L1_3[L5_3]
                  L8_3 = true
                  L9_3 = true
                  L6_3(L7_3, L8_3, L9_3)
                  L6_3 = DeleteObject
                  L7_3 = L1_3[L5_3]
                  L6_3(L7_3)
                  L6_3 = DeleteEntity
                  L7_3 = L1_3[L5_3]
                  L6_3(L7_3)
                  L6_3 = SetEntityCoords
                  L7_3 = L1_3[L5_3]
                  L8_3 = vec3
                  L9_3 = 0
                  L10_3 = 0
                  L11_3 = 0
                  L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3, L10_3, L11_3)
                  L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
                end
              end
            end
            L1_3 = GetEntityCoords
            L2_3 = L1_1
            L1_3 = L1_3(L2_3)
            L2_3 = GetEntityForwardVector
            L3_3 = L1_1
            L2_3 = L2_3(L3_3)
            L3_3 = Config
            L3_3 = L3_3.OpenDoorsTextBackwardOffset
            L2_3 = L2_3 * L3_3
            L1_3 = L1_3 + L2_3
            L1_3 = L0_3 - L1_3
            L1_3 = #L1_3
            if L1_3 < 1.0 then
              L1_3 = ShowHelpNotification
              L2_3 = Config
              L2_3 = L2_3.HintNotifications
              L2_3 = L2_3.OpenDoors
              L1_3(L2_3)
              L1_3 = IsControlJustReleased
              L2_3 = 0
              L3_3 = 38
              L1_3 = L1_3(L2_3, L3_3)
              if L1_3 then
                L1_3 = TriggerServerEvent
                L2_3 = "17mov_GruppeSechs:doorsOpenedOnTarget"
                L3_3 = A0_2
                L4_3 = A3_2
                L1_3(L2_3, L3_3, L4_3)
                break
              end
            end
          end
        end
      end
    end
    L8_2(L9_2)
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:doorsOpenedOnTarget_cl"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = true
  L21_1 = L1_2
  L1_2 = SetVehicleDoorOpen
  L2_2 = L1_1
  L3_2 = 2
  L4_2 = false
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 100
  L1_2(L2_2)
  L1_2 = SetVehicleDoorOpen
  L2_2 = L1_1
  L3_2 = 3
  L4_2 = false
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = highlightBagsOnJobVehicle
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:firstStageReady_cl"
function L53_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = true
  L12_1 = L2_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = SetVehicleDoorOpen
    L1_3 = L1_1
    L2_3 = 2
    L3_3 = false
    L4_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = Citizen
    L0_3 = L0_3.Wait
    L1_3 = 100
    L0_3(L1_3)
    L0_3 = SetVehicleDoorOpen
    L1_3 = L1_1
    L2_3 = 3
    L3_3 = false
    L4_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L2_2(L3_2)
  L2_2 = highlightBagsOnJobVehicle
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = Config
  L2_2 = L2_2.enableAtmsFillingUp
  if L2_2 and nil ~= A1_2 then
    L2_2 = PrepeareATM
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:CrimeCanCollectMoney"
function L53_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = PlaySoundFrontend
  L4_2 = -1
  L5_2 = "Beep_Red"
  L6_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "updateSteps"
  L4_2.value = 4
  L3_2(L4_2)
  L3_2 = NetToVeh
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  while L3_2 == A0_2 or 0 == L3_2 do
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 250
    L4_2(L5_2)
    L4_2 = NetToVeh
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  L4_2 = RequestModel
  L5_2 = "prop_cs_heist_bag_01"
  L4_2(L5_2)
  while true do
    L4_2 = HasModelLoaded
    L5_2 = "prop_cs_heist_bag_01"
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 100
    L4_2(L5_2)
  end
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 1
  L6_2 = 4
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = GetOffsetFromEntityInWorldCoords
  L6_2 = L3_2
  L7_2 = Config
  L7_2 = L7_2.vehicleRearBagsOffsets
  L7_2 = L7_2[L4_2]
  L7_2 = L7_2.xyz
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = CreateObject
  L7_2 = GetHashKey
  L8_2 = "prop_cs_heist_bag_01"
  L7_2 = L7_2(L8_2)
  L8_2 = L5_2
  L9_2 = false
  L10_2 = true
  L11_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = AttachEntityToEntity
  L8_2 = L6_2
  L9_2 = L3_2
  L10_2 = 0
  L11_2 = Config
  L11_2 = L11_2.vehicleRearBagsOffsets
  L11_2 = L11_2[L4_2]
  L11_2 = L11_2.xyz
  L12_2 = Config
  L12_2 = L12_2.vehicleRearBagsOffsets
  L12_2 = L12_2[L4_2]
  L12_2 = L12_2.rotation
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = 2
  L18_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = SetEntityDrawOutline
  L8_2 = L6_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = SetEntityDrawOutlineColor
  L8_2 = 43
  L9_2 = 150
  L10_2 = 17
  L11_2 = 100
  L7_2(L8_2, L9_2, L10_2, L11_2)
  while true do
    L7_2 = L32_1
    if L7_2 then
      break
    end
    L7_2 = 1000
    L8_2 = GetEntityCoords
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L9_2 = GetEntityForwardVector
    L10_2 = L3_2
    L9_2 = L9_2(L10_2)
    L10_2 = Config
    L10_2 = L10_2.OpenDoorsTextBackwardOffset
    L9_2 = L9_2 * L10_2
    L8_2 = L8_2 + L9_2
    L9_2 = GetEntityCoords
    L10_2 = PlayerPedId
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L10_2()
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L9_2 = L9_2 - L8_2
    L9_2 = #L9_2
    if L9_2 < 2.0 then
      L7_2 = 0
      L9_2 = ShowHelpNotification
      L10_2 = Config
      L10_2 = L10_2.HintNotifications
      L10_2 = L10_2.GrabBag
      L9_2(L10_2)
      L9_2 = IsControlJustReleased
      L10_2 = 0
      L11_2 = 38
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L9_2 = SetEntityDrawOutline
        L10_2 = L6_2
        L11_2 = false
        L9_2(L10_2, L11_2)
        L9_2 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
        L10_2 = "throw_l_fb_stand"
        while true do
          L11_2 = HasAnimDictLoaded
          L12_2 = L9_2
          L11_2 = L11_2(L12_2)
          if L11_2 then
            break
          end
          L11_2 = RequestAnimDict
          L12_2 = L9_2
          L11_2(L12_2)
          L11_2 = Citizen
          L11_2 = L11_2.Wait
          L12_2 = 0
          L11_2(L12_2)
        end
        L11_2 = GetEntityModel
        L12_2 = PlayerPedId
        L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L12_2()
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        if 1885233650 == L11_2 then
          L11_2 = pairs
          L12_2 = Config
          L12_2 = L12_2.realClothes
          L12_2 = L12_2.male
          L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
          for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
            L17_2 = L16_2.component_id
            if 5 == L17_2 then
              L17_2 = SetPedComponentVariation
              L18_2 = PlayerPedId
              L18_2 = L18_2()
              L19_2 = L16_2.component_id
              L20_2 = L16_2.drawable
              L21_2 = L16_2.texture
              L22_2 = 0
              L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
              break
            end
          end
        else
          L11_2 = pairs
          L12_2 = Config
          L12_2 = L12_2.realClothes
          L12_2 = L12_2.female
          L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
          for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
            L17_2 = L16_2.component_id
            if 5 == L17_2 then
              L17_2 = SetPedComponentVariation
              L18_2 = PlayerPedId
              L18_2 = L18_2()
              L19_2 = L16_2.component_id
              L20_2 = L16_2.drawable
              L21_2 = L16_2.texture
              L22_2 = 0
              L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
              break
            end
          end
        end
        L11_2 = TaskPlayAnim
        L12_2 = PlayerPedId
        L12_2 = L12_2()
        L13_2 = L9_2
        L14_2 = L10_2
        L15_2 = 8.0
        L16_2 = 8.0
        L17_2 = -1
        L18_2 = 0
        L19_2 = 0
        L20_2 = false
        L21_2 = false
        L22_2 = false
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        L11_2 = Citizen
        L11_2 = L11_2.Wait
        L12_2 = 1000
        L11_2(L12_2)
        L11_2 = DeleteEntity
        L12_2 = L6_2
        L11_2(L12_2)
        L11_2 = true
        L32_1 = L11_2
        L11_2 = TriggerServerEvent
        L12_2 = "17mov_GruppeSechs:RobComplete"
        L11_2(L12_2)
        break
      end
    end
    L9_2 = Citizen
    L9_2 = L9_2.Wait
    L10_2 = L7_2
    L9_2(L10_2)
  end
  while true do
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 1000
    L7_2(L8_2)
    L7_2 = GetEntityCoords
    L8_2 = PlayerPedId
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L8_2()
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L8_2 = GetEntityCoords
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2 - L8_2
    L7_2 = #L7_2
    if L7_2 > 40.0 then
      L8_2 = PlaySoundFrontend
      L9_2 = -1
      L10_2 = "Beep_Red"
      L11_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
      L12_2 = true
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = SendNUIMessage
      L9_2 = {}
      L9_2.action = "updateSteps"
      L9_2.value = 5
      L8_2(L9_2)
      break
    end
  end
  L7_2 = Config
  L7_2 = L7_2.DeliveryLocations
  L7_2 = L7_2[A1_2]
  L7_2 = L7_2.rotation
  L8_2 = Config
  L8_2 = L8_2.DeliveryLocations
  L8_2 = L8_2[A1_2]
  L8_2 = L8_2.coords
  DeliveryLocation = L8_2
  if nil == A2_2 then
    A2_2 = 0
  end
  L8_2 = vector3
  L9_2 = DeliveryLocation
  L9_2 = L9_2.x
  L10_2 = DeliveryLocation
  L10_2 = L10_2.y
  L11_2 = DeliveryLocation
  L11_2 = L11_2.z
  L12_2 = 0.2 * A2_2
  L11_2 = L11_2 + L12_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  DeliveryLocation = L8_2
  L8_2 = DeliveryLocation
  L28_1 = L8_2
  L8_2 = RemoveBlip
  L9_2 = L10_1
  L8_2(L9_2)
  L8_2 = AddBlipForCoord
  L9_2 = DeliveryLocation
  L8_2 = L8_2(L9_2)
  L27_1 = L8_2
  L8_2 = SetBlipDisplay
  L9_2 = L27_1
  L10_2 = 4
  L8_2(L9_2, L10_2)
  L8_2 = BeginTextCommandSetBlipName
  L9_2 = "STRING"
  L8_2(L9_2)
  L8_2 = AddTextComponentString
  L9_2 = Config
  L9_2 = L9_2.Lang
  L9_2 = L9_2.deliveryLocation
  L8_2(L9_2)
  L8_2 = EndTextCommandSetBlipName
  L9_2 = L27_1
  L8_2(L9_2)
  L8_2 = SetBlipRoute
  L9_2 = L27_1
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = SetBlipRouteColour
  L9_2 = L27_1
  L10_2 = 2
  L8_2(L9_2, L10_2)
  L8_2 = SetBlipColour
  L9_2 = L27_1
  L10_2 = 2
  L8_2(L9_2, L10_2)
  L8_2 = false
  L9_2 = nil
  while true do
    L10_2 = L29_1
    if not L10_2 then
      break
    end
    L10_2 = 1000
    L11_2 = GetEntityCoords
    L12_2 = PlayerPedId
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L12_2()
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L12_2 = DeliveryLocation
    L12_2 = L11_2 - L12_2
    L12_2 = #L12_2
    if L12_2 < 20.0 then
      if not L8_2 then
        L8_2 = true
        L13_2 = CreateObject
        L14_2 = GetHashKey
        L15_2 = "prop_cs_heist_bag_01"
        L14_2 = L14_2(L15_2)
        L15_2 = DeliveryLocation
        L16_2 = false
        L17_2 = true
        L18_2 = true
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
        L9_2 = L13_2
        L13_2 = SetEntityVisible
        L14_2 = L9_2
        L15_2 = false
        L13_2(L14_2, L15_2)
        L13_2 = SetEntityRotation
        L14_2 = L9_2
        L13_2(L14_2)
        L13_2 = SetEntityDrawOutline
        L14_2 = L9_2
        L15_2 = true
        L13_2(L14_2, L15_2)
        L13_2 = SetEntityDrawOutlineColor
        L14_2 = 43
        L15_2 = 150
        L16_2 = 17
        L17_2 = 100
        L13_2(L14_2, L15_2, L16_2, L17_2)
      end
      if L12_2 < 4.0 then
        L10_2 = 0
        L13_2 = ShowHelpNotification
        L14_2 = Config
        L14_2 = L14_2.HintNotifications
        L14_2 = L14_2.Throwing
        L13_2(L14_2)
        L13_2 = IsControlJustReleased
        L14_2 = 0
        L15_2 = 38
        L13_2 = L13_2(L14_2, L15_2)
        if L13_2 then
          L13_2 = TriggerServerEvent
          L14_2 = "17mov_GruppeSechs:ImReady"
          L13_2(L14_2)
          L13_2 = ThrowBag
          L14_2 = DeliveryLocation
          L15_2 = L7_2
          L16_2 = 0.05
          L13_2(L14_2, L15_2, L16_2)
          L13_2 = SetEntityDrawOutline
          L14_2 = L9_2
          L15_2 = false
          L13_2(L14_2, L15_2)
          L13_2 = DeleteEntity
          L14_2 = L9_2
          L13_2(L14_2)
          break
        end
      end
    end
    L13_2 = Citizen
    L13_2 = L13_2.Wait
    L14_2 = L10_2
    L13_2(L14_2)
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:BlockMovement"
function L53_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L18_1
  if L0_2 then
    return
  end
  L0_2 = true
  L18_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    L0_3 = Citizen
    L0_3 = L0_3.Wait
    L1_3 = Config
    L1_3 = L1_3.ReEnableEngineAfterBlockingTime
    L0_3(L1_3)
    L0_3 = false
    L18_1 = L0_3
  end
  L0_2(L1_2)
  while true do
    L0_2 = L18_1
    if not L0_2 then
      break
    end
    sleep = 1000
    L0_2 = GetEntityModel
    L1_2 = GetVehiclePedIsIn
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = false
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2)
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    L1_2 = GetHashKey
    L2_2 = Config
    L2_2 = L2_2.JobVehicleModel
    L1_2 = L1_2(L2_2)
    if L0_2 == L1_2 then
      sleep = 0
    end
    L0_2 = SetVehicleEngineOn
    L1_2 = L1_1
    L2_2 = false
    L3_2 = true
    L4_2 = true
    L0_2(L1_2, L2_2, L3_2, L4_2)
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = sleep
    L0_2(L1_2)
  end
  L0_2 = SetVehicleEngineOn
  L1_2 = L1_1
  L2_2 = true
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:UnderAttack"
function L53_1()
  local L0_2, L1_2, L2_2
  L0_2 = L23_1
  if L0_2 then
    return
  end
  L0_2 = true
  L23_1 = L0_2
  L0_2 = showTutorial
  L1_2 = "afterAttack"
  L0_2(L1_2)
  L0_2 = SetNewWaypoint
  L1_2 = Config
  L1_2 = L1_2.Locations
  L1_2 = L1_2.FinishJob
  L1_2 = L1_2.Coords
  L1_2 = L1_2[1]
  L1_2 = L1_2.x
  L2_2 = Config
  L2_2 = L2_2.Locations
  L2_2 = L2_2.FinishJob
  L2_2 = L2_2.Coords
  L2_2 = L2_2[1]
  L2_2 = L2_2.y
  L0_2(L1_2, L2_2)
  L0_2 = true
  L18_1 = L0_2
  OnDuty = true
  L0_2 = false
  L12_1 = L0_2
  L0_2 = false
  L13_1 = L0_2
  L0_2 = false
  L14_1 = L0_2
  L0_2 = false
  L15_1 = L0_2
  L0_2 = RemoveBlip
  L1_2 = L10_1
  L0_2(L1_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:openDoors"
function L53_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = 1
  L1_2 = L3_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = DeleteEntity
    L5_2 = L3_1
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.realBag
    L4_2(L5_2)
  end
  L0_2 = SetVehicleDoorOpen
  L1_2 = L1_1
  L2_2 = 2
  L3_2 = false
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 100
  L0_2(L1_2)
  L0_2 = SetVehicleDoorOpen
  L1_2 = L1_1
  L2_2 = 3
  L3_2 = false
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:MoneyLoaded_cl"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = true
  L4_1 = L1_2
  L1_2 = true
  L16_1 = L1_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = L16_1
      if not L0_3 then
        break
      end
      sleep = 1000
      L0_3 = GetEntityModel
      L1_3 = GetVehiclePedIsIn
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = false
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3, L3_3)
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      L1_3 = GetHashKey
      L2_3 = Config
      L2_3 = L2_3.JobVehicleModel
      L1_3 = L1_3(L2_3)
      if L0_3 == L1_3 then
        sleep = 0
      end
      L0_3 = SetVehicleEngineOn
      L1_3 = L1_1
      L2_3 = false
      L3_3 = true
      L4_3 = true
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = sleep
      L0_3(L1_3)
    end
    L0_3 = SetVehicleEngineOn
    L1_3 = L1_1
    L2_3 = true
    L3_3 = false
    L4_3 = false
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L1_2(L2_2)
  L1_2 = Config
  L1_2 = L1_2.BankLocations
  L2_2 = L20_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.isVault
  if L1_2 then
    L1_2 = showTutorial
    L2_2 = "afterMoneyGrabTutorialInBank"
    L1_2(L2_2)
  else
    L1_2 = showTutorial
    L2_2 = "afterMoneyGrabTutorial"
    L1_2(L2_2)
  end
  L1_2 = nil
  L2_2 = nil
  L3_2 = Config
  L3_2 = L3_2.enableAtmsFillingUp
  if not L3_2 then
    L3_2 = Config
    L3_2 = L3_2.BankLocations
    L4_2 = L19_1
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.BlipCoords
    L4_2 = Config
    L4_2 = L4_2.Lang
    L2_2 = L4_2.targetBank
    A0_2 = L3_2
    L3_2 = RemoveBlip
    L4_2 = L10_1
    L3_2(L4_2)
    L3_2 = AddBlipForCoord
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L10_1 = L3_2
    L3_2 = SetBlipDisplay
    L4_2 = L10_1
    L5_2 = 4
    L3_2(L4_2, L5_2)
    L3_2 = BeginTextCommandSetBlipName
    L4_2 = "STRING"
    L3_2(L4_2)
    L3_2 = AddTextComponentString
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = EndTextCommandSetBlipName
    L4_2 = L10_1
    L3_2(L4_2)
    L3_2 = SetBlipRoute
    L4_2 = L10_1
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = SetBlipRouteColour
    L4_2 = L10_1
    L5_2 = 2
    L3_2(L4_2, L5_2)
    L3_2 = SetBlipColour
    L4_2 = L10_1
    L5_2 = 2
    L3_2(L4_2, L5_2)
  end
end
L51_1(L52_1, L53_1)
function L51_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
    L0_3 = DeleteEntity
    L1_3 = Config
    L1_3 = L1_3.AtmsLocations
    L2_3 = A0_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.ped
    L0_3(L1_3)
    L0_3 = Config
    L0_3 = L0_3.AtmsLocations
    L1_3 = A0_2
    L0_3 = L0_3[L1_3]
    L0_3.ped = nil
    L0_3 = Config
    L0_3 = L0_3.AtmsLocations
    L1_3 = A0_2
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.coords
    L1_3 = Config
    L1_3 = L1_3.Lang
    L1_3 = L1_3.atmBlip
    targetString = L1_3
    target = L0_3
    L0_3 = RemoveBlip
    L1_3 = L10_1
    L0_3(L1_3)
    L0_3 = AddBlipForCoord
    L1_3 = target
    L0_3 = L0_3(L1_3)
    L10_1 = L0_3
    L0_3 = SetBlipDisplay
    L1_3 = L10_1
    L2_3 = 4
    L0_3(L1_3, L2_3)
    L0_3 = BeginTextCommandSetBlipName
    L1_3 = "STRING"
    L0_3(L1_3)
    L0_3 = AddTextComponentString
    L1_3 = targetString
    L0_3(L1_3)
    L0_3 = EndTextCommandSetBlipName
    L1_3 = L10_1
    L0_3(L1_3)
    L0_3 = SetBlipRoute
    L1_3 = L10_1
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = SetBlipRouteColour
    L1_3 = L10_1
    L2_3 = 2
    L0_3(L1_3, L2_3)
    L0_3 = SetBlipColour
    L1_3 = L10_1
    L2_3 = 2
    L0_3(L1_3, L2_3)
    L0_3 = Config
    L0_3 = L0_3.AtmGuardModel
    L1_3 = RequestModel
    L2_3 = L0_3
    L1_3(L2_3)
    while true do
      L1_3 = HasModelLoaded
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        break
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 50
      L1_3(L2_3)
    end
    L1_3 = Config
    L1_3 = L1_3.AtmsLocations
    L2_3 = A0_2
    L1_3 = L1_3[L2_3]
    L2_3 = CreatePed
    L3_3 = 0
    L4_3 = L0_3
    L5_3 = target
    L6_3 = false
    L7_3 = true
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L1_3.ped = L2_3
    while true do
      L1_3 = Config
      L1_3 = L1_3.AtmsLocations
      L2_3 = A0_2
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.ped
      if nil ~= L1_3 then
        break
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 150
      L1_3(L2_3)
    end
    L1_3 = FreezeEntityPosition
    L2_3 = Config
    L2_3 = L2_3.AtmsLocations
    L3_3 = A0_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.ped
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = SetBlockingOfNonTemporaryEvents
    L2_3 = Config
    L2_3 = L2_3.AtmsLocations
    L3_3 = A0_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.ped
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = SetEntityInvincible
    L2_3 = Config
    L2_3 = L2_3.AtmsLocations
    L3_3 = A0_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.ped
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = PlaceObjectOnGroundProperly
    L2_3 = Config
    L2_3 = L2_3.AtmsLocations
    L3_3 = A0_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.ped
    L1_3(L2_3)
    L1_3 = "rcmme_amanda1_stand_loop_cop"
    L2_3 = "anim@amb@nightclub@peds@"
    while true do
      L3_3 = HasAnimDictLoaded
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      if L3_3 then
        break
      end
      L3_3 = RequestAnimDict
      L4_3 = L2_3
      L3_3(L4_3)
      L3_3 = Citizen
      L3_3 = L3_3.Wait
      L4_3 = 10
      L3_3(L4_3)
    end
    L3_3 = TaskPlayAnim
    L4_3 = Config
    L4_3 = L4_3.AtmsLocations
    L5_3 = A0_2
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.ped
    L5_3 = L2_3
    L6_3 = L1_3
    L7_3 = 8.0
    L8_3 = 8.0
    L9_3 = -1
    L10_3 = 1
    L11_3 = 0
    L12_3 = false
    L13_3 = false
    L14_3 = false
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    L3_3 = Config
    L3_3 = L3_3.AtmsLocations
    L4_3 = A0_2
    L3_3 = L3_3[L4_3]
    L3_3.loop = true
    L3_3 = A0_2
    while true do
      L4_3 = Config
      L4_3 = L4_3.AtmsLocations
      L5_3 = A0_2
      L4_3 = L4_3[L5_3]
      L4_3 = L4_3.loop
      if not L4_3 then
        break
      end
      L4_3 = 1000
      L5_3 = Config
      L5_3 = L5_3.AtmsLocations
      L6_3 = A0_2
      L5_3 = L5_3[L6_3]
      L5_3 = L5_3.coords
      target = L5_3
      L5_3 = vector3
      L6_3 = target
      L6_3 = L6_3.x
      L7_3 = target
      L7_3 = L7_3.y
      L8_3 = target
      L8_3 = L8_3.z
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L6_3 = vec3
      L7_3 = 0
      L8_3 = 0
      L9_3 = 0
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      if L5_3 == L6_3 then
        break
      end
      L5_3 = GetEntityCoords
      L6_3 = PlayerPedId
      L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L6_3()
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
      L6_3 = vector3
      L7_3 = target
      L7_3 = L7_3.x
      L8_3 = target
      L8_3 = L8_3.y
      L9_3 = target
      L9_3 = L9_3.z
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L5_3 = L5_3 - L6_3
      L5_3 = #L5_3
      if L5_3 < 4.0 then
        L6_3 = A0_2
        if L3_3 == L6_3 then
          L4_3 = 0
          L6_3 = GetEntityCoords
          L7_3 = Config
          L7_3 = L7_3.AtmsLocations
          L8_3 = A0_2
          L7_3 = L7_3[L8_3]
          L7_3 = L7_3.ped
          L6_3 = L6_3(L7_3)
          L7_3 = DrawText3Ds
          L8_3 = L6_3.x
          L9_3 = L6_3.y
          L10_3 = L6_3.z
          L10_3 = L10_3 + 1.0
          L11_3 = Config
          L11_3 = L11_3.InteractionKey
          L11_3 = L11_3.keyString
          L12_3 = Config
          L12_3 = L12_3.Lang
          L12_3 = L12_3.deliverCash
          L11_3 = L11_3 .. L12_3
          L7_3(L8_3, L9_3, L10_3, L11_3)
          if L5_3 < 2.0 then
            L7_3 = IsControlJustReleased
            L8_3 = 0
            L9_3 = Config
            L9_3 = L9_3.InteractionKey
            L9_3 = L9_3.keyIndex
            L7_3 = L7_3(L8_3, L9_3)
            if L7_3 then
              L7_3 = MakePedFaceEntity
              L8_3 = PlayerPedId
              L8_3 = L8_3()
              L9_3 = Config
              L9_3 = L9_3.AtmsLocations
              L10_3 = A0_2
              L9_3 = L9_3[L10_3]
              L9_3 = L9_3.ped
              L7_3(L8_3, L9_3)
              L7_3 = MakePedFaceEntity
              L8_3 = Config
              L8_3 = L8_3.AtmsLocations
              L9_3 = A0_2
              L8_3 = L8_3[L9_3]
              L8_3 = L8_3.ped
              L9_3 = PlayerPedId
              L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L9_3()
              L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
              L7_3 = GetEntityCoords
              L8_3 = Config
              L8_3 = L8_3.AtmsLocations
              L9_3 = A0_2
              L8_3 = L8_3[L9_3]
              L8_3 = L8_3.ped
              L7_3 = L7_3(L8_3)
              L8_3 = vec3
              L9_3 = 0
              L10_3 = 0
              L11_3 = 0
              L8_3 = L8_3(L9_3, L10_3, L11_3)
              if L7_3 == L8_3 then
                break
              end
              L7_3 = GetEntityCoords
              L8_3 = Config
              L8_3 = L8_3.AtmsLocations
              L9_3 = A0_2
              L8_3 = L8_3[L9_3]
              L8_3 = L8_3.ped
              L7_3 = L7_3(L8_3)
              L8_3 = GetEntityForwardVector
              L9_3 = Config
              L9_3 = L9_3.AtmsLocations
              L10_3 = A0_2
              L9_3 = L9_3[L10_3]
              L9_3 = L9_3.ped
              L8_3 = L8_3(L9_3)
              L8_3 = L8_3 * 0.9
              L7_3 = L7_3 + L8_3
              L8_3 = SetEntityCoords
              L9_3 = PlayerPedId
              L9_3 = L9_3()
              L10_3 = L7_3.x
              L11_3 = L7_3.y
              L12_3 = L7_3.z
              L12_3 = L12_3 - 1.0
              L8_3(L9_3, L10_3, L11_3, L12_3)
              L8_3 = "mp_common"
              L9_3 = "givetake1_a"
              while true do
                L10_3 = HasAnimDictLoaded
                L11_3 = L8_3
                L10_3 = L10_3(L11_3)
                if L10_3 then
                  break
                end
                L10_3 = RequestAnimDict
                L11_3 = L8_3
                L10_3(L11_3)
                L10_3 = Citizen
                L10_3 = L10_3.Wait
                L11_3 = 10
                L10_3(L11_3)
              end
              L10_3 = CreateObject
              L11_3 = GetHashKey
              L12_3 = "hei_prop_heist_cash_pile"
              L11_3 = L11_3(L12_3)
              L12_3 = 0
              L13_3 = 0
              L14_3 = 0
              L15_3 = false
              L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
              L25_1 = L10_3
              L10_3 = AttachEntityToEntity
              L11_3 = L25_1
              L12_3 = PlayerPedId
              L12_3 = L12_3()
              L13_3 = GetPedBoneIndex
              L14_3 = PlayerPedId
              L14_3 = L14_3()
              L15_3 = 57005
              L13_3 = L13_3(L14_3, L15_3)
              L14_3 = 0.13
              L15_3 = 0.02
              L16_3 = 0.0
              L17_3 = -90.0
              L18_3 = 0
              L19_3 = 0
              L20_3 = 1
              L21_3 = 1
              L22_3 = 0
              L23_3 = 1
              L24_3 = 0
              L25_3 = 1
              L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
              L10_3 = TaskPlayAnim
              L11_3 = PlayerPedId
              L11_3 = L11_3()
              L12_3 = L8_3
              L13_3 = L9_3
              L14_3 = 8.0
              L15_3 = 8.0
              L16_3 = -1
              L17_3 = 0
              L18_3 = 0
              L19_3 = false
              L20_3 = false
              L21_3 = false
              L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
              L10_3 = TriggerServerEvent
              L11_3 = "17mov_GruppeSechs:DeliverThisAtm"
              L12_3 = A0_2
              L13_3 = GetEntityHeading
              L14_3 = Config
              L14_3 = L14_3.AtmsLocations
              L15_3 = A0_2
              L14_3 = L14_3[L15_3]
              L14_3 = L14_3.ped
              L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L13_3(L14_3)
              L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
              break
            end
          end
        end
      end
      L6_3 = Citizen
      L6_3 = L6_3.Wait
      L7_3 = L4_3
      L6_3(L7_3)
    end
  end
  L1_2(L2_2)
end
PrepeareATM = L51_1
function L51_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetEntityCoords
  L4_2 = A1_2
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.x
  L5_2 = L2_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = L3_2.y
  L6_2 = L2_2.y
  L5_2 = L5_2 - L6_2
  L6_2 = GetHeadingFromVector_2d
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = SetEntityHeading
  L8_2 = A0_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
MakePedFaceEntity = L51_1
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:DisableThisAtm"
function L53_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = Config
  L3_2 = L3_2.AtmsLocations
  L3_2 = L3_2[A0_2]
  L3_2.loop = false
  L3_2 = SetEntityHeading
  L4_2 = Config
  L4_2 = L4_2.AtmsLocations
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.ped
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = "mp_common"
  L4_2 = "givetake1_a"
  while true do
    L5_2 = HasAnimDictLoaded
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      break
    end
    L5_2 = RequestAnimDict
    L6_2 = L3_2
    L5_2(L6_2)
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 10
    L5_2(L6_2)
  end
  L5_2 = TaskPlayAnim
  L6_2 = Config
  L6_2 = L6_2.AtmsLocations
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.ped
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = 8.0
  L10_2 = 8.0
  L11_2 = -1
  L12_2 = 0
  L13_2 = 0
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 1500
  L5_2(L6_2)
  L5_2 = DeleteEntity
  L6_2 = L25_1
  L5_2(L6_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = Citizen
    L0_3 = L0_3.Wait
    L1_3 = 5000
    L0_3(L1_3)
    L0_3 = Config
    L0_3 = L0_3.AtmsLocations
    L1_3 = A0_2
    L0_3 = L0_3[L1_3]
    if nil ~= L0_3 then
      L0_3 = Config
      L0_3 = L0_3.AtmsLocations
      L1_3 = A0_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.ped
      if nil ~= L0_3 then
        L0_3 = DeleteEntity
        L1_3 = Config
        L1_3 = L1_3.AtmsLocations
        L2_3 = A0_2
        L1_3 = L1_3[L2_3]
        L1_3 = L1_3.ped
        L0_3(L1_3)
      end
    end
  end
  L5_2(L6_2)
  if nil ~= A2_2 then
    L5_2 = PrepeareATM
    L6_2 = A2_2
    L5_2(L6_2)
  else
    L5_2 = true
    L24_1 = L5_2
    L5_2 = Config
    L5_2 = L5_2.BankLocations
    L6_2 = L19_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.BlipCoords
    L6_2 = Config
    L6_2 = L6_2.Lang
    L6_2 = L6_2.targetBank
    targetString = L6_2
    A0_2 = L5_2
    L5_2 = RemoveBlip
    L6_2 = L10_1
    L5_2(L6_2)
    L5_2 = AddBlipForCoord
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L10_1 = L5_2
    L5_2 = SetBlipDisplay
    L6_2 = L10_1
    L7_2 = 4
    L5_2(L6_2, L7_2)
    L5_2 = BeginTextCommandSetBlipName
    L6_2 = "STRING"
    L5_2(L6_2)
    L5_2 = AddTextComponentString
    L6_2 = targetString
    L5_2(L6_2)
    L5_2 = EndTextCommandSetBlipName
    L6_2 = L10_1
    L5_2(L6_2)
    L5_2 = SetBlipRoute
    L6_2 = L10_1
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = SetBlipRouteColour
    L6_2 = L10_1
    L7_2 = 2
    L5_2(L6_2, L7_2)
    L5_2 = SetBlipColour
    L6_2 = L10_1
    L7_2 = 2
    L5_2(L6_2, L7_2)
  end
end
L51_1(L52_1, L53_1)
function L51_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = GetActivePlayers
  L2_2 = L2_2()
  L3_2 = true
  L4_2 = ipairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = GetPlayerPed
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L11_2 = PlayerPedId
    L11_2 = L11_2()
    if L10_2 ~= L11_2 then
      L10_2 = GetEntityCoords
      L11_2 = GetPlayerPed
      L12_2 = L9_2
      L11_2, L12_2 = L11_2(L12_2)
      L10_2 = L10_2(L11_2, L12_2)
      L10_2 = A0_2 - L10_2
      L10_2 = #L10_2
      if A1_2 > L10_2 then
        L3_2 = false
        break
      end
    end
  end
  return L3_2
end
NoOneIsInside = L51_1
function L51_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = true
  L2_2 = pairs
  L3_2 = Config
  L3_2 = L3_2.BankLocations
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.TrolleysCoords
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.props
    if nil ~= L8_2 then
      L8_2 = L7_2.props
      L8_2 = #L8_2
      if L8_2 > 0 then
        L1_2 = false
        break
      end
    end
  end
  if L1_2 then
    L2_2 = L4_1
    if not L2_2 then
      L2_2 = TriggerServerEvent
      L3_2 = "17mov_GruppeSechs:MoneyLoaded"
      L2_2(L3_2)
    end
  end
  return L1_2
end
CheckIfAllPropsDeleted = L51_1
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:RefreshInterior"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if nil == A0_2 then
    return
  end
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = vector3
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L1_2 - L2_2
  L1_2 = #L1_2
  if L1_2 > 100.0 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.EnableInteriorRefreshing
  if L1_2 then
    L1_2 = RefreshInterior
    L2_2 = GetInteriorAtCoords
    L3_2 = A0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L51_1(L52_1, L53_1)
function L51_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2
  L5_2 = true
  L9_1 = L5_2
  L5_2 = false
  L6_2 = nil
  L7_2 = nil
  L8_2 = 5
  while true do
    L9_2 = 1
    L10_2 = Config
    L10_2 = L10_2.VaultDoorsModels
    L10_2 = #L10_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = GetClosestObjectOfType
      L14_2 = A0_2.DoorsCoords
      L15_2 = 3.0
      L16_2 = Config
      L16_2 = L16_2.VaultDoorsModels
      L16_2 = L16_2[L12_2]
      L17_2 = true
      L18_2 = true
      L19_2 = true
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L7_2 = L13_2
      if 0 == L7_2 or nil == L7_2 then
        L13_2 = GetClosestObjectOfType
        L14_2 = A0_2.DoorsCoords
        L15_2 = 3.0
        L16_2 = Config
        L16_2 = L16_2.VaultDoorsModels
        L16_2 = L16_2[L12_2]
        L17_2 = false
        L18_2 = false
        L19_2 = false
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L7_2 = L13_2
      end
      if nil ~= L7_2 and 0 ~= L7_2 then
        L5_2 = true
        L13_2 = Config
        L13_2 = L13_2.VaultDoorsModels
        L6_2 = L13_2[L12_2]
        break
      end
    end
    L8_2 = L8_2 - 1
    if L8_2 <= 0 or L5_2 then
      break
    end
    L9_2 = Config
    L9_2 = L9_2.EnableInteriorRefreshing
    if L9_2 then
      L9_2 = RefreshInterior
      L10_2 = GetInteriorAtCoords
      L11_2 = A0_2.DoorsCoords
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L10_2(L11_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
    end
    L9_2 = Citizen
    L9_2 = L9_2.Wait
    L10_2 = 2000
    L9_2(L10_2)
  end
  L9_2 = GetGamePool
  if nil == L9_2 then
    L9_2 = print
    L10_2 = "GAME POOL NATIVE IS NOT FOUND. PLEASE UPDATE YOUR SERVER ARTIFACTS"
    L9_2(L10_2)
    return
  end
  L9_2 = GetGamePool
  L10_2 = "CObject"
  L9_2 = L9_2(L10_2)
  L10_2 = 1
  L11_2 = #L9_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = Config
    L14_2 = L14_2.BankLocations
    L14_2 = L14_2[A1_2]
    L14_2 = L14_2.ObjectsToDelete
    L15_2 = GetEntityModel
    L16_2 = L9_2[L13_2]
    L15_2 = L15_2(L16_2)
    L14_2 = L14_2[L15_2]
    if L14_2 then
      L14_2 = SetEntityAsMissionEntity
      L15_2 = L9_2[L13_2]
      L16_2 = true
      L17_2 = true
      L14_2(L15_2, L16_2, L17_2)
      L14_2 = DeleteObject
      L15_2 = L9_2[L13_2]
      L14_2(L15_2)
      L14_2 = DeleteEntity
      L15_2 = L9_2[L13_2]
      L14_2(L15_2)
      L14_2 = SetEntityCoords
      L15_2 = L9_2[L13_2]
      L16_2 = vec3
      L17_2 = 0
      L18_2 = 0
      L19_2 = 0
      L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L16_2(L17_2, L18_2, L19_2)
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
    end
  end
  if not L5_2 then
    return
  end
  L10_2 = PlayerPedId
  L10_2 = L10_2()
  L11_2 = GetEntityCoords
  L12_2 = L10_2
  L11_2 = L11_2(L12_2)
  L12_2 = GetEntityHeading
  L13_2 = L10_2
  L12_2 = L12_2(L13_2)
  L13_2 = "anim@mp_radio@garage@low"
  L14_2 = "button_press"
  L15_2 = RequestAnimDict
  L16_2 = L13_2
  L15_2(L16_2)
  while true do
    L15_2 = HasAnimDictLoaded
    L16_2 = L13_2
    L15_2 = L15_2(L16_2)
    if L15_2 then
      break
    end
    L15_2 = Citizen
    L15_2 = L15_2.Wait
    L16_2 = 100
    L15_2(L16_2)
  end
  L15_2 = nil
  L16_2 = nil
  L17_2 = nil
  L18_2 = nil
  L19_2 = nil
  L21_2 = A0_2.DoorsCoords
  L20_2 = L5_1
  L20_2 = L20_2[L21_2]
  if nil ~= L20_2 then
    L20_2 = GetEntityHeading
    L21_2 = L7_2
    L20_2 = L20_2(L21_2)
    L21_2 = SetEntityHeading
    L22_2 = L7_2
    L24_2 = A0_2.DoorsCoords
    L23_2 = L5_1
    L23_2 = L23_2[L24_2]
    L23_2 = L23_2.baseHeading
    L21_2(L22_2, L23_2)
    L21_2 = GetEntityHeading
    L22_2 = L7_2
    L21_2 = L21_2(L22_2)
    L16_2 = L21_2
    L21_2 = GetOffsetFromEntityInWorldCoords
    L22_2 = L7_2
    L23_2 = 2.0
    L24_2 = -0.92
    L25_2 = -0.9
    L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2)
    L15_2 = L21_2
    L21_2 = GetOffsetFromEntityInWorldCoords
    L22_2 = L7_2
    L23_2 = 2.05
    L24_2 = 0.0
    L25_2 = 0.1
    L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2)
    L17_2 = L21_2
    L21_2 = GetOffsetFromEntityInWorldCoords
    L22_2 = L7_2
    L23_2 = 2.05
    L24_2 = 0.0
    L25_2 = 0.0
    L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2)
    L19_2 = L21_2
    L21_2 = SetEntityHeading
    L22_2 = L7_2
    L23_2 = L20_2
    L21_2(L22_2, L23_2)
  else
    L20_2 = GetEntityHeading
    L21_2 = L7_2
    L20_2 = L20_2(L21_2)
    L16_2 = L20_2
    L20_2 = GetOffsetFromEntityInWorldCoords
    L21_2 = L7_2
    L22_2 = 2.0
    L23_2 = -0.92
    L24_2 = -1.1
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
    L15_2 = L20_2
    L20_2 = GetOffsetFromEntityInWorldCoords
    L21_2 = L7_2
    L22_2 = 2.05
    L23_2 = 0.0
    L24_2 = 0.1
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
    L17_2 = L20_2
    L20_2 = GetOffsetFromEntityInWorldCoords
    L21_2 = L7_2
    L22_2 = 2.05
    L23_2 = 0.0
    L24_2 = 0.0
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
    L19_2 = L20_2
  end
  L20_2 = Config
  L20_2 = L20_2.EnableEnteringCodeAnim
  if L20_2 then
    L20_2 = SetEntityCoords
    L21_2 = L10_2
    L22_2 = L15_2.x
    L23_2 = L15_2.y
    L24_2 = L15_2.z
    L24_2 = L24_2 - 0.15
    L20_2(L21_2, L22_2, L23_2, L24_2)
    L20_2 = FreezeEntityPosition
    L21_2 = L10_2
    L22_2 = true
    L20_2(L21_2, L22_2)
    L20_2 = SetEntityHeading
    L21_2 = L10_2
    L22_2 = L16_2
    L20_2(L21_2, L22_2)
    L20_2 = GetOffsetFromEntityInWorldCoords
    L21_2 = L10_2
    L22_2 = 0.0
    L23_2 = 0.15
    L24_2 = 0.61
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
    L21_2 = CreateCamWithParams
    L22_2 = "DEFAULT_SCRIPTED_CAMERA"
    L23_2 = L20_2
    L24_2 = 0.0
    L25_2 = 0.0
    L26_2 = 0.0
    L27_2 = 29.0
    L28_2 = false
    L29_2 = false
    L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
    L22_2 = PointCamAtCoord
    L23_2 = L21_2
    L24_2 = L17_2
    L22_2(L23_2, L24_2)
    L22_2 = SetCamActive
    L23_2 = L21_2
    L24_2 = true
    L22_2(L23_2, L24_2)
    L22_2 = RenderScriptCams
    L23_2 = true
    L24_2 = false
    L25_2 = 1
    L26_2 = true
    L27_2 = true
    L22_2(L23_2, L24_2, L25_2, L26_2, L27_2)
    L22_2 = Citizen
    L22_2 = L22_2.Wait
    L23_2 = 1500
    L22_2(L23_2)
    L22_2 = SetCamActive
    L23_2 = L21_2
    L24_2 = false
    L22_2(L23_2, L24_2)
    L22_2 = DestroyCam
    L23_2 = L21_2
    L24_2 = true
    L22_2(L23_2, L24_2)
    L22_2 = RenderScriptCams
    L23_2 = false
    L24_2 = true
    L25_2 = 0
    L26_2 = true
    L27_2 = true
    L22_2(L23_2, L24_2, L25_2, L26_2, L27_2)
    L22_2 = GetOffsetFromEntityInWorldCoords
    L23_2 = L10_2
    L24_2 = 0.2
    L25_2 = 0.0
    L26_2 = 0.75
    L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2)
    L23_2 = CreateCamWithParams
    L24_2 = "DEFAULT_SCRIPTED_CAMERA"
    L25_2 = L22_2
    L26_2 = 0.0
    L27_2 = 0.0
    L28_2 = 0.0
    L29_2 = 55.0
    L30_2 = 0.0
    L31_2 = false
    L32_2 = false
    L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L24_2 = PointCamAtCoord
    L25_2 = L23_2
    L26_2 = L17_2
    L24_2(L25_2, L26_2)
    L24_2 = SetCamActive
    L25_2 = L23_2
    L26_2 = true
    L24_2(L25_2, L26_2)
    L24_2 = RenderScriptCams
    L25_2 = true
    L26_2 = false
    L27_2 = 1
    L28_2 = true
    L29_2 = true
    L24_2(L25_2, L26_2, L27_2, L28_2, L29_2)
    L24_2 = TaskPlayAnim
    L25_2 = L10_2
    L26_2 = L13_2
    L27_2 = L14_2
    L28_2 = 8.0
    L29_2 = 8.0
    L30_2 = 0.1
    L31_2 = 2
    L32_2 = 0.0
    L33_2 = false
    L34_2 = false
    L35_2 = false
    L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
    L24_2 = Citizen
    L24_2 = L24_2.Wait
    L25_2 = 750
    L24_2(L25_2)
    L24_2 = TaskPlayAnim
    L25_2 = L10_2
    L26_2 = L13_2
    L27_2 = "idle_a"
    L28_2 = 8.0
    L29_2 = 8.0
    L30_2 = 0.1
    L31_2 = 0
    L32_2 = 0.0
    L33_2 = false
    L34_2 = false
    L35_2 = false
    L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
    L24_2 = Citizen
    L24_2 = L24_2.Wait
    L25_2 = 2500
    L24_2(L25_2)
    if "open" == A2_2 then
      L24_2 = TriggerServerEvent
      L25_2 = "17mov_GruppeSechs:OpenDoor"
      L26_2 = A0_2
      L27_2 = A1_2
      L28_2 = A3_2
      L29_2 = L4_1
      L30_2 = L6_2
      L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    else
      L24_2 = TriggerServerEvent
      L25_2 = "17mov_GruppeSechs:closeDoor"
      L26_2 = A0_2
      L27_2 = A1_2
      L28_2 = L6_2
      L24_2(L25_2, L26_2, L27_2, L28_2)
    end
    L24_2 = Citizen
    L24_2 = L24_2.Wait
    L25_2 = 1000
    L24_2(L25_2)
    L24_2 = ClearPedTasks
    L25_2 = L10_2
    L24_2(L25_2)
    L24_2 = SetCamActive
    L25_2 = L23_2
    L26_2 = false
    L24_2(L25_2, L26_2)
    L24_2 = DestroyCam
    L25_2 = L23_2
    L26_2 = true
    L24_2(L25_2, L26_2)
    L24_2 = RenderScriptCams
    L25_2 = false
    L26_2 = true
    L27_2 = 0
    L28_2 = true
    L29_2 = true
    L24_2(L25_2, L26_2, L27_2, L28_2, L29_2)
    L24_2 = SetEntityCoords
    L25_2 = L10_2
    L26_2 = L11_2.x
    L27_2 = L11_2.y
    L28_2 = L11_2.z
    L28_2 = L28_2 - 1.0
    L24_2(L25_2, L26_2, L27_2, L28_2)
    L24_2 = SetEntityHeading
    L25_2 = L10_2
    L26_2 = L12_2
    L24_2(L25_2, L26_2)
    L24_2 = FreezeEntityPosition
    L25_2 = L10_2
    L26_2 = false
    L24_2(L25_2, L26_2)
  elseif "open" == A2_2 then
    L20_2 = TriggerServerEvent
    L21_2 = "17mov_GruppeSechs:OpenDoor"
    L22_2 = A0_2
    L23_2 = A1_2
    L24_2 = A3_2
    L25_2 = L4_1
    L26_2 = L6_2
    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  else
    L20_2 = TriggerServerEvent
    L21_2 = "17mov_GruppeSechs:closeDoor"
    L22_2 = A0_2
    L23_2 = A1_2
    L24_2 = L6_2
    L20_2(L21_2, L22_2, L23_2, L24_2)
  end
  L20_2 = false
  L9_1 = L20_2
end
EnterCodeAnim = L51_1
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:thisStationIsDisabled"
function L53_1(A0_2)
  local L1_2
  L1_2 = L6_1
  L1_2[A0_2] = true
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:thisStationIsEnabled"
function L53_1(A0_2)
  local L1_2
  L1_2 = L6_1
  L1_2[A0_2] = nil
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:DeleteNetId_cl"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DeleteEntity
  L2_2 = NetToObj
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L1_2(L2_2, L3_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:CloseDoor_cl"
function L53_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = Config
  L6_2 = L6_2.EnableInteriorRefreshing
  if false == L6_2 then
    L6_2 = GetEntityCoords
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L6_2 = A0_2 - L6_2
    L6_2 = #L6_2
    if L6_2 > 100.0 then
      L6_2 = OnDuty
      if not L6_2 then
        L6_2 = L5_1
        L6_2 = L6_2[A0_2]
        L6_2 = L6_2.baseHeading
        if nil == L6_2 then
          return
        end
      end
    end
  end
  L6_2 = GetPlayerServerId
  L7_2 = PlayerId
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = L19_1
  if A3_2 == L7_2 then
    L7_2 = true
    L15_1 = L7_2
    L7_2 = 1
    L8_2 = 4
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = DeleteEntity
      L12_2 = Config
      L12_2 = L12_2.BankLocations
      L12_2 = L12_2[A3_2]
      L12_2 = L12_2.DeliveryLocations
      L12_2 = L12_2[L10_2]
      L12_2 = L12_2.realProp
      L11_2(L12_2)
      L11_2 = DeleteEntity
      L12_2 = Config
      L12_2 = L12_2.BankLocations
      L12_2 = L12_2[A3_2]
      L12_2 = L12_2.DeliveryLocations
      L12_2 = L12_2[L10_2]
      L12_2 = L12_2.helpProp
      L11_2(L12_2)
      L11_2 = TriggerServerEvent
      L12_2 = "17mov_GruppeSechs:DeleteNetId"
      L13_2 = ObjToNet
      L14_2 = Config
      L14_2 = L14_2.BankLocations
      L14_2 = L14_2[A3_2]
      L14_2 = L14_2.DeliveryLocations
      L14_2 = L14_2[L10_2]
      L14_2 = L14_2.realProp
      L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
      L11_2 = TriggerServerEvent
      L12_2 = "17mov_GruppeSechs:DeleteNetId"
      L13_2 = ObjToNet
      L14_2 = Config
      L14_2 = L14_2.BankLocations
      L14_2 = L14_2[A3_2]
      L14_2 = L14_2.DeliveryLocations
      L14_2 = L14_2[L10_2]
      L14_2 = L14_2.helpProp
      L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
  L7_2 = L5_1
  L7_2 = L7_2[A0_2]
  L7_2.baseHeading = nil
  L7_2 = Config
  L7_2 = L7_2.BankLocations
  L7_2 = L7_2[A3_2]
  L7_2.doorsRunning = true
  if L6_2 == A4_2 then
    L7_2 = TriggerServerEvent
    L8_2 = "17mov_GruppeSechs:CloseDoorsFunc"
    L9_2 = A3_2
    L7_2(L8_2, L9_2)
  end
  L7_2 = Config
  L7_2 = L7_2.BankLocations
  L7_2 = L7_2[A3_2]
  L7_2.doorsRunning = false
  L7_2 = L5_1
  L7_2[A0_2] = nil
  L7_2 = 1
  L8_2 = Config
  L8_2 = L8_2.BankLocations
  L8_2 = L8_2[A3_2]
  L8_2 = L8_2.TrolleysCoords
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = DeleteEntity
    L12_2 = Config
    L12_2 = L12_2.BankLocations
    L12_2 = L12_2[A3_2]
    L12_2 = L12_2.TrolleysCoords
    L12_2 = L12_2[L10_2]
    L12_2 = L12_2.object
    L11_2(L12_2)
    L11_2 = Config
    L11_2 = L11_2.BankLocations
    L11_2 = L11_2[A3_2]
    L11_2 = L11_2.TrolleysCoords
    L11_2 = L11_2[L10_2]
    L11_2 = L11_2.props
    if nil ~= L11_2 then
      L11_2 = 1
      L12_2 = Config
      L12_2 = L12_2.BankLocations
      L12_2 = L12_2[A3_2]
      L12_2 = L12_2.TrolleysCoords
      L12_2 = L12_2[L10_2]
      L12_2 = L12_2.props
      L12_2 = #L12_2
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = DeleteEntity
        L16_2 = Config
        L16_2 = L16_2.BankLocations
        L16_2 = L16_2[A3_2]
        L16_2 = L16_2.TrolleysCoords
        L16_2 = L16_2[L10_2]
        L16_2 = L16_2.props
        L16_2 = L16_2[L14_2]
        L15_2(L16_2)
      end
    end
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:RunDoorsCloseAnim"
function L53_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = Config
  L4_2 = L4_2.BankLocations
  L4_2 = L4_2[A2_2]
  L4_2.loopOnDoors = false
  L4_2 = NetToObj
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  while 0 == L4_2 or nil == L4_2 do
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 150
    L5_2(L6_2)
  end
  L5_2 = GetEntityHeading
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = SetEntityCollision
  L7_2 = L4_2
  L8_2 = false
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = GetGamePool
    if nil == L0_3 then
      L0_3 = print
      L1_3 = "GAME POOL NATIVE IS NOT FOUND. PLEASE UPDATE YOUR SERVER ARTIFACTS"
      L0_3(L1_3)
    end
    L0_3 = GetGamePool
    L1_3 = "CObject"
    L0_3 = L0_3(L1_3)
    L1_3 = {}
    L2_3 = L4_2
    L1_3[1] = L2_3
    L2_3 = 1
    L3_3 = #L0_3
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = GetEntityModel
      L7_3 = L0_3[L5_3]
      L6_3 = L6_3(L7_3)
      L7_3 = A3_2
      if L6_3 == L7_3 then
        L6_3 = table
        L6_3 = L6_3.insert
        L7_3 = L1_3
        L8_3 = L4_2
        L6_3(L7_3, L8_3)
      end
    end
    L2_3 = 0
    L3_3 = 450
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = L5_2
      L6_3 = L6_3 + 0.2
      L5_2 = L6_3
      L6_3 = 1
      L7_3 = #L0_3
      L8_3 = 1
      for L9_3 = L6_3, L7_3, L8_3 do
        L10_3 = SetEntityHeading
        L11_3 = L4_2
        L12_3 = L5_2
        L10_3(L11_3, L12_3)
      end
      L6_3 = Citizen
      L6_3 = L6_3.Wait
      L7_3 = 5
      L6_3(L7_3)
    end
    L2_3 = SetEntityHeading
    L3_3 = L4_2
    L4_3 = A1_2
    L2_3(L3_3, L4_3)
    L2_3 = SetEntityCollision
    L3_3 = L4_2
    L4_3 = true
    L5_3 = true
    L2_3(L3_3, L4_3, L5_3)
  end
  L6_2(L7_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:RunDoorsOpenAnim"
function L53_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L5_2 = L5_2[A1_2]
  L6_2 = L5_2.DoorsCoords
  L5_2 = L5_1
  L5_2 = L5_2[L6_2]
  L5_2.baseHeading = A4_2
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L5_2 = L5_2[A1_2]
  L6_2 = L5_2.DoorsCoords
  L5_2 = L5_1
  L5_2 = L5_2[L6_2]
  L5_2.baseCoords = A3_2
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L5_2 = L5_2[A1_2]
  L6_2 = L5_2.DoorsCoords
  L5_2 = L5_1
  L5_2 = L5_2[L6_2]
  L6_2 = NetToObj
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L5_2.prop = L6_2
  L5_2 = NetToObj
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  while 0 == L5_2 or nil == L5_2 do
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 150
    L6_2(L7_2)
  end
  L6_2 = GetEntityHeading
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = 25
  while true do
    L8_2 = Config
    L8_2 = L8_2.BankLocations
    L8_2 = L8_2[A1_2]
    L9_2 = L8_2.DoorsCoords
    L8_2 = L5_1
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.baseHeading
    L9_2 = GetEntityHeading
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    if L8_2 == L9_2 then
      break
    end
    L8_2 = SetEntityHeading
    L9_2 = L5_2
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L7_2 = L7_2 - 1
    if L7_2 <= 0 then
      break
    end
    L8_2 = Citizen
    L8_2 = L8_2.Wait
    L9_2 = 10
    L8_2(L9_2)
  end
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = GetGamePool
    if nil == L0_3 then
      L0_3 = print
      L1_3 = "GAME POOL NATIVE IS NOT FOUND. PLEASE UPDATE YOUR SERVER ARTIFACTS"
      L0_3(L1_3)
    end
    L0_3 = GetGamePool
    L1_3 = "CObject"
    L0_3 = L0_3(L1_3)
    L1_3 = {}
    L2_3 = L5_2
    L1_3[1] = L2_3
    L2_3 = 1
    L3_3 = #L0_3
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = GetEntityModel
      L7_3 = L0_3[L5_3]
      L6_3 = L6_3(L7_3)
      L7_3 = A2_2
      if L6_3 == L7_3 then
        L6_3 = table
        L6_3 = L6_3.insert
        L7_3 = L1_3
        L8_3 = L5_2
        L6_3(L7_3, L8_3)
      end
    end
    L2_3 = 0
    L3_3 = 450
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = L6_2
      L6_3 = L6_3 - 0.2
      L6_2 = L6_3
      L6_3 = 1
      L7_3 = #L0_3
      L8_3 = 1
      for L9_3 = L6_3, L7_3, L8_3 do
        L10_3 = SetEntityHeading
        L11_3 = L5_2
        L12_3 = L6_2
        L10_3(L11_3, L12_3)
      end
      L6_3 = Citizen
      L6_3 = L6_3.Wait
      L7_3 = 5
      L6_3(L7_3)
    end
  end
  L8_2(L9_2)
  while true do
    L8_2 = OnDuty
    if not L8_2 then
      break
    end
    L8_2 = NetToObj
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if 0 ~= L8_2 and nil ~= L8_2 then
      L9_2 = GetEntityCoords
      L10_2 = NetToObj
      L11_2 = A0_2
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2(L11_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L10_2 = GetEntityCoords
      L11_2 = PlayerPedId
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L11_2()
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L9_2 = L9_2 - L10_2
      L9_2 = #L9_2
      if L9_2 < 8.0 then
        break
      end
    end
    L9_2 = Citizen
    L9_2 = L9_2.Wait
    L10_2 = 100
    L9_2(L10_2)
  end
  L8_2 = NetToObj
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L5_2 = L8_2
  L8_2 = SetEntityCollision
  L9_2 = L5_2
  L10_2 = false
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = SetEntityHeading
  L9_2 = L5_2
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
  L8_2 = GetGamePool
  if nil == L8_2 then
    L8_2 = print
    L9_2 = "GAME POOL NATIVE IS NOT FOUND. PLEASE UPDATE YOUR SERVER ARTIFACTS"
    L8_2(L9_2)
    return
  end
  L8_2 = GetGamePool
  L9_2 = "CObject"
  L8_2 = L8_2(L9_2)
  L9_2 = 1
  L10_2 = #L8_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = GetEntityModel
    L14_2 = L8_2[L12_2]
    L13_2 = L13_2(L14_2)
    if L13_2 == A2_2 then
      L13_2 = L8_2[L12_2]
      if L13_2 ~= L5_2 then
        L13_2 = GetEntityCoords
        L14_2 = L8_2[L12_2]
        L13_2 = L13_2(L14_2)
        L14_2 = Config
        L14_2 = L14_2.BankLocations
        L14_2 = L14_2[A1_2]
        L14_2 = L14_2.DoorsCoords
        L13_2 = L13_2 - L14_2
        L13_2 = #L13_2
        if L13_2 < 10.0 then
          L13_2 = SetEntityAsMissionEntity
          L14_2 = L8_2[L12_2]
          L15_2 = true
          L16_2 = true
          L13_2(L14_2, L15_2, L16_2)
          L13_2 = DeleteObject
          L14_2 = L8_2[L12_2]
          L13_2(L14_2)
          L13_2 = DeleteEntity
          L14_2 = L8_2[L12_2]
          L13_2(L14_2)
          L13_2 = SetEntityCoords
          L14_2 = L8_2[L12_2]
          L15_2 = vec3
          L16_2 = 0
          L17_2 = 0
          L18_2 = 0
          L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2, L17_2, L18_2)
          L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
        end
      end
    end
  end
  L9_2 = 1
  L10_2 = Config
  L10_2 = L10_2.BankLocations
  L10_2 = L10_2[A1_2]
  L10_2 = L10_2.TrolleysCoords
  L10_2 = #L10_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = PlaceObjectOnGroundProperly
    L14_2 = Config
    L14_2 = L14_2.BankLocations
    L14_2 = L14_2[A1_2]
    L14_2 = L14_2.TrolleysCoords
    L14_2 = L14_2[L12_2]
    L14_2 = L14_2.object
    L13_2(L14_2)
  end
  L9_2 = Config
  L9_2 = L9_2.BankLocations
  L9_2 = L9_2[A1_2]
  L9_2.loopOnDoors = true
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:OpenDoor_cl"
function L53_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L6_2 = Config
  L6_2 = L6_2.EnableInteriorRefreshing
  if false == L6_2 then
    L6_2 = GetEntityCoords
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L6_2 = A0_2 - L6_2
    L6_2 = #L6_2
    if L6_2 > 100.0 then
      L6_2 = OnDuty
      if not L6_2 then
        return
      end
    end
  end
  L6_2 = GetPlayerServerId
  L7_2 = PlayerId
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = L5_1
  L8_2 = {}
  L8_2.model = A1_2
  L7_2[A0_2] = L8_2
  L7_2 = Config
  L7_2 = L7_2.BankLocations
  L7_2 = L7_2[A3_2]
  L7_2.doorsRunning = true
  while true do
    L7_2 = HasModelLoaded
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      break
    end
    L7_2 = RequestModel
    L8_2 = A1_2
    L7_2(L8_2)
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 150
    L7_2(L8_2)
  end
  L7_2 = nil
  L8_2 = GetGamePool
  if nil == L8_2 then
    L8_2 = print
    L9_2 = "GAME POOL NATIVE IS NOT FOUND. PLEASE UPDATE YOUR SERVER ARTIFACTS"
    L8_2(L9_2)
    return
  end
  L8_2 = GetGamePool
  L9_2 = "CObject"
  L8_2 = L8_2(L9_2)
  L9_2 = 1
  L10_2 = #L8_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = GetEntityModel
    L14_2 = L8_2[L12_2]
    L13_2 = L13_2(L14_2)
    if L13_2 == A1_2 then
      L13_2 = GetEntityCoords
      L14_2 = L8_2[L12_2]
      L13_2 = L13_2(L14_2)
      L13_2 = L13_2 - A0_2
      L13_2 = #L13_2
      if L13_2 < 10.0 then
        L13_2 = SetEntityAsMissionEntity
        L14_2 = L8_2[L12_2]
        L15_2 = true
        L16_2 = true
        L13_2(L14_2, L15_2, L16_2)
        L13_2 = GetEntityHeading
        L14_2 = L8_2[L12_2]
        L13_2 = L13_2(L14_2)
        L7_2 = L13_2
        L13_2 = Config
        L13_2 = L13_2.BankLocations
        L13_2 = L13_2[A3_2]
        L13_2.doorsRotation = L7_2
        L13_2 = DeleteObject
        L14_2 = L8_2[L12_2]
        L13_2(L14_2)
        L13_2 = DeleteEntity
        L14_2 = L8_2[L12_2]
        L13_2(L14_2)
        L13_2 = SetEntityCoords
        L14_2 = L8_2[L12_2]
        L15_2 = vec3
        L16_2 = 0
        L17_2 = 0
        L18_2 = 0
        L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2, L17_2, L18_2)
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
      end
    end
  end
  L9_2 = 1
  L10_2 = #L8_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = Config
    L13_2 = L13_2.BankLocations
    L13_2 = L13_2[A3_2]
    L13_2 = L13_2.ObjectsToDelete
    L14_2 = GetEntityModel
    L15_2 = L8_2[L12_2]
    L14_2 = L14_2(L15_2)
    L13_2 = L13_2[L14_2]
    if L13_2 then
      L13_2 = SetEntityAsMissionEntity
      L14_2 = L8_2[L12_2]
      L15_2 = true
      L16_2 = true
      L13_2(L14_2, L15_2, L16_2)
      L13_2 = DeleteObject
      L14_2 = L8_2[L12_2]
      L13_2(L14_2)
      L13_2 = DeleteEntity
      L14_2 = L8_2[L12_2]
      L13_2(L14_2)
      L13_2 = SetEntityCoords
      L14_2 = L8_2[L12_2]
      L15_2 = vec3
      L16_2 = 0
      L17_2 = 0
      L18_2 = 0
      L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2, L17_2, L18_2)
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    end
  end
  if not A4_2 then
    L9_2 = CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3
      while true do
        L0_3 = HasModelLoaded
        L1_3 = Config
        L1_3 = L1_3.TrolleyModel
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = HasModelLoaded
          L1_3 = Config
          L1_3 = L1_3.CashModel
          L0_3 = L0_3(L1_3)
          if L0_3 then
            break
          end
        end
        L0_3 = RequestModel
        L1_3 = Config
        L1_3 = L1_3.TrolleyModel
        L0_3(L1_3)
        L0_3 = RequestModel
        L1_3 = Config
        L1_3 = L1_3.CashModel
        L0_3(L1_3)
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 0
        L0_3(L1_3)
      end
      L0_3 = 1
      L1_3 = A2_2.TrolleysCoords
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = Config
        L4_3 = L4_3.BankLocations
        L5_3 = A3_2
        L4_3 = L4_3[L5_3]
        L4_3 = L4_3.TrolleysCoords
        L4_3 = L4_3[L3_3]
        L5_3 = {}
        L4_3.props = L5_3
        L4_3 = Config
        L4_3 = L4_3.BankLocations
        L5_3 = A3_2
        L4_3 = L4_3[L5_3]
        L4_3 = L4_3.TrolleysCoords
        L4_3 = L4_3[L3_3]
        L5_3 = CreateObject
        L6_3 = Config
        L6_3 = L6_3.TrolleyModel
        L7_3 = A2_2.TrolleysCoords
        L7_3 = L7_3[L3_3]
        L7_3 = L7_3.coords
        L8_3 = false
        L9_3 = false
        L10_3 = false
        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
        L4_3.object = L5_3
        L4_3 = PlaceObjectOnGroundProperly
        L5_3 = Config
        L5_3 = L5_3.BankLocations
        L6_3 = A3_2
        L5_3 = L5_3[L6_3]
        L5_3 = L5_3.TrolleysCoords
        L5_3 = L5_3[L3_3]
        L5_3 = L5_3.object
        L4_3(L5_3)
        L4_3 = SetEntityRotation
        L5_3 = Config
        L5_3 = L5_3.BankLocations
        L6_3 = A3_2
        L5_3 = L5_3[L6_3]
        L5_3 = L5_3.TrolleysCoords
        L5_3 = L5_3[L3_3]
        L5_3 = L5_3.object
        L6_3 = A2_2.TrolleysCoords
        L6_3 = L6_3[L3_3]
        L6_3 = L6_3.rotation
        L4_3(L5_3, L6_3)
        L4_3 = FreezeEntityPosition
        L5_3 = Config
        L5_3 = L5_3.BankLocations
        L6_3 = A3_2
        L5_3 = L5_3[L6_3]
        L5_3 = L5_3.TrolleysCoords
        L5_3 = L5_3[L3_3]
        L5_3 = L5_3.object
        L6_3 = true
        L4_3(L5_3, L6_3)
        L4_3 = 0
        L5_3 = Config
        L5_3 = L5_3.AttachSettings
        L5_3 = L5_3.totalHeight
        L5_3 = L5_3 - 1
        L6_3 = 1
        for L7_3 = L4_3, L5_3, L6_3 do
          L8_3 = 0
          L9_3 = Config
          L9_3 = L9_3.AttachSettings
          L9_3 = L9_3.totalRows
          L9_3 = L9_3 - 1
          L10_3 = 1
          for L11_3 = L8_3, L9_3, L10_3 do
            L12_3 = 0
            L13_3 = Config
            L13_3 = L13_3.AttachSettings
            L13_3 = L13_3.totalLenght
            L13_3 = L13_3 - 1
            L14_3 = 1
            for L15_3 = L12_3, L13_3, L14_3 do
              L16_3 = CreateObject
              L17_3 = Config
              L17_3 = L17_3.CashModel
              L18_3 = A2_2.TrolleysCoords
              L18_3 = L18_3[L3_3]
              L18_3 = L18_3.coords
              L19_3 = false
              L20_3 = false
              L21_3 = false
              L16_3 = L16_3(L17_3, L18_3, L19_3, L20_3, L21_3)
              L17_3 = table
              L17_3 = L17_3.insert
              L18_3 = Config
              L18_3 = L18_3.BankLocations
              L19_3 = A3_2
              L18_3 = L18_3[L19_3]
              L18_3 = L18_3.TrolleysCoords
              L18_3 = L18_3[L3_3]
              L18_3 = L18_3.props
              L19_3 = L16_3
              L17_3(L18_3, L19_3)
              L17_3 = GetOffsetFromEntityInWorldCoords
              L18_3 = Config
              L18_3 = L18_3.BankLocations
              L19_3 = A3_2
              L18_3 = L18_3[L19_3]
              L18_3 = L18_3.TrolleysCoords
              L18_3 = L18_3[L3_3]
              L18_3 = L18_3.object
              L19_3 = Config
              L19_3 = L19_3.AttachSettings
              L19_3 = L19_3.startingOffset
              L19_3 = L19_3.x
              L20_3 = Config
              L20_3 = L20_3.PileXOffset
              if not L20_3 then
                L20_3 = 0.07
              end
              L20_3 = L20_3 * L15_3
              L19_3 = L19_3 + L20_3
              L20_3 = Config
              L20_3 = L20_3.AttachSettings
              L20_3 = L20_3.startingOffset
              L20_3 = L20_3.y
              L21_3 = Config
              L21_3 = L21_3.PileYOffset
              if not L21_3 then
                L21_3 = 0.15
              end
              L21_3 = L21_3 * L11_3
              L20_3 = L20_3 + L21_3
              L21_3 = Config
              L21_3 = L21_3.AttachSettings
              L21_3 = L21_3.startingOffset
              L21_3 = L21_3.z
              L22_3 = Config
              L22_3 = L22_3.PileZOffset
              if not L22_3 then
                L22_3 = 0.04
              end
              L22_3 = L22_3 * L7_3
              L21_3 = L21_3 + L22_3
              L17_3 = L17_3(L18_3, L19_3, L20_3, L21_3)
              L18_3 = SetEntityCoords
              L19_3 = L16_3
              L20_3 = L17_3
              L18_3(L19_3, L20_3)
              L18_3 = SetEntityRotation
              L19_3 = L16_3
              L20_3 = GetEntityRotation
              L21_3 = Config
              L21_3 = L21_3.BankLocations
              L22_3 = A3_2
              L21_3 = L21_3[L22_3]
              L21_3 = L21_3.TrolleysCoords
              L21_3 = L21_3[L3_3]
              L21_3 = L21_3.object
              L20_3, L21_3, L22_3 = L20_3(L21_3)
              L18_3(L19_3, L20_3, L21_3, L22_3)
              L18_3 = FreezeEntityPosition
              L19_3 = L16_3
              L20_3 = true
              L18_3(L19_3, L20_3)
            end
          end
        end
      end
    end
    L9_2(L10_2)
  end
  if L6_2 == A5_2 then
    L9_2 = vec3
    L10_2 = A0_2.x
    L11_2 = A0_2.y
    L12_2 = A0_2.z
    L12_2 = L12_2 - 1.15
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = CreateObject
    L11_2 = A1_2
    L12_2 = L9_2
    L13_2 = true
    L14_2 = true
    L15_2 = true
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L11_2 = SetEntityHeading
    L12_2 = L10_2
    L13_2 = L7_2
    L11_2(L12_2, L13_2)
    while true do
      L11_2 = DoesEntityExist
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        break
      end
      L11_2 = Citizen
      L11_2 = L11_2.Wait
      L12_2 = 0
      L11_2(L12_2)
    end
    L11_2 = FreezeEntityPosition
    L12_2 = L10_2
    L13_2 = true
    L11_2(L12_2, L13_2)
    L11_2 = nil
    while nil == L11_2 or 0 == L11_2 do
      L12_2 = ObjToNet
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
      L11_2 = L12_2
      L12_2 = Citizen
      L12_2 = L12_2.Wait
      L13_2 = 100
      L12_2(L13_2)
    end
    L12_2 = TriggerServerEvent
    L13_2 = "17mov_GruppeSechs:SpawnDoors"
    L14_2 = L11_2
    L15_2 = L9_2
    L16_2 = L7_2
    L17_2 = A3_2
    L18_2 = A1_2
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  end
  L9_2 = Config
  L9_2 = L9_2.BankLocations
  L9_2 = L9_2[A3_2]
  L9_2.doorsRunning = false
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:enableGrabbing"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = A0_2.coords
  L2_2 = A0_2.model
  L3_2 = A0_2.source
  L4_2 = A0_2.bankId
  L5_2 = A0_2.isVault
  if not L5_2 then
    while true do
      L5_2 = L5_1
      L5_2 = L5_2[L1_2]
      if nil ~= L5_2 then
        break
      end
      L5_2 = Citizen
      L5_2 = L5_2.Wait
      L6_2 = 100
      L5_2(L6_2)
    end
  end
  while true do
    L5_2 = L5_1
    L5_2 = L5_2[L1_2]
    if nil == L5_2 then
      L5_2 = A0_2.isVault
      if not L5_2 then
        break
      end
      L5_2 = L12_1
      if L5_2 then
        break
      end
    end
    L5_2 = 1000
    L6_2 = pairs
    L7_2 = L3_2.TrolleysCoords
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L13_2 = L11_2.coords
      L12_2 = L6_1
      L12_2 = L12_2[L13_2]
      if not L12_2 then
        L12_2 = Config
        L12_2 = L12_2.BankLocations
        L12_2 = L12_2[L4_2]
        L12_2 = L12_2.TrolleysCoords
        L12_2 = L12_2[L10_2]
        L12_2 = L12_2.props
        if nil ~= L12_2 then
          L12_2 = Config
          L12_2 = L12_2.BankLocations
          L12_2 = L12_2[L4_2]
          L12_2 = L12_2.TrolleysCoords
          L12_2 = L12_2[L10_2]
          L12_2 = L12_2.props
          L12_2 = #L12_2
          if L12_2 > 0 then
            L12_2 = GetEntityCoords
            L13_2 = PlayerPedId
            L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2()
            L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
            L13_2 = L11_2.coords
            L12_2 = L12_2 - L13_2
            L12_2 = #L12_2
            L13_2 = 1.5
            if L12_2 < L13_2 then
              L5_2 = 0
              L12_2 = DrawText3Ds
              L13_2 = L11_2.coords
              L13_2 = L13_2.x
              L14_2 = L11_2.coords
              L14_2 = L14_2.y
              L15_2 = L11_2.coords
              L15_2 = L15_2.z
              L16_2 = Config
              L16_2 = L16_2.InteractionKey
              L16_2 = L16_2.keyString
              L17_2 = Config
              L17_2 = L17_2.Lang
              L17_2 = L17_2.grabMoney
              L16_2 = L16_2 .. L17_2
              L12_2(L13_2, L14_2, L15_2, L16_2)
              L12_2 = IsControlJustReleased
              L13_2 = 0
              L14_2 = Config
              L14_2 = L14_2.InteractionKey
              L14_2 = L14_2.keyIndex
              L12_2 = L12_2(L13_2, L14_2)
              if L12_2 then
                L12_2 = TriggerServerEvent
                L13_2 = "17mov_GruppeSechs:disableThisStation"
                L14_2 = L11_2.coords
                L12_2(L13_2, L14_2)
                L12_2 = StartGrabbing
                L13_2 = L11_2
                L14_2 = L10_2
                L15_2 = L4_2
                L12_2(L13_2, L14_2, L15_2)
              end
            end
          end
        end
      end
    end
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = L5_2
    L6_2(L7_2)
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:syncEntity"
function L53_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = NetToObj
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= A0_2 and 0 ~= L3_2 then
    L4_2 = 25
    while true do
      L5_2 = GetEntityRotation
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      if L5_2 == A2_2 then
        L5_2 = GetEntityCoords
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        if L5_2 == A1_2 then
          break
        end
      end
      L5_2 = Citizen
      L5_2 = L5_2.Wait
      L6_2 = 100
      L5_2(L6_2)
      L5_2 = SetEntityCoords
      L6_2 = L3_2
      L7_2 = A1_2
      L5_2(L6_2, L7_2)
      L5_2 = SetEntityRotation
      L6_2 = L3_2
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
      L4_2 = L4_2 - 1
      if L4_2 <= 0 then
        break
      end
    end
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:enableBagPlacing"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2.coords
  L2_2 = A0_2.model
  L3_2 = A0_2.source
  L4_2 = A0_2.bankId
  L5_2 = RequestModel
  L6_2 = "prop_cs_heist_bag_01"
  L5_2(L6_2)
  while true do
    L5_2 = HasModelLoaded
    L6_2 = "prop_cs_heist_bag_01"
    L5_2 = L5_2(L6_2)
    if L5_2 then
      break
    end
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 100
    L5_2(L6_2)
  end
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L5_2 = L5_2[L4_2]
  L5_2 = L5_2.isVault
  if not L5_2 then
    while true do
      L5_2 = Citizen
      L5_2 = L5_2.Wait
      L6_2 = 1500
      L5_2(L6_2)
      L5_2 = GetEntityCoords
      L6_2 = PlayerPedId
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2()
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L6_2 = Config
      L6_2 = L6_2.BankLocations
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.DeliveryLocations
      L6_2 = L6_2[1]
      L6_2 = L6_2.coords
      L6_2 = L5_2 - L6_2
      L6_2 = #L6_2
      if L6_2 < 40.0 then
        break
      end
    end
  end
  L5_2 = 1
  L6_2 = A0_2.partyCount
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = Config
    L9_2 = L9_2.BankLocations
    L9_2 = L9_2[L4_2]
    L9_2 = L9_2.DeliveryLocations
    L9_2 = L9_2[L8_2]
    L10_2 = CreateObject
    L11_2 = "prop_cs_heist_bag_01"
    L12_2 = Config
    L12_2 = L12_2.BankLocations
    L12_2 = L12_2[L4_2]
    L12_2 = L12_2.DeliveryLocations
    L12_2 = L12_2[L8_2]
    L12_2 = L12_2.coords
    L13_2 = false
    L14_2 = false
    L15_2 = false
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L9_2.helpProp = L10_2
    L9_2 = SetEntityRotation
    L10_2 = Config
    L10_2 = L10_2.BankLocations
    L10_2 = L10_2[L4_2]
    L10_2 = L10_2.DeliveryLocations
    L10_2 = L10_2[L8_2]
    L10_2 = L10_2.helpProp
    L11_2 = Config
    L11_2 = L11_2.BankLocations
    L11_2 = L11_2[L4_2]
    L11_2 = L11_2.DeliveryLocations
    L11_2 = L11_2[L8_2]
    L11_2 = L11_2.rotation
    L12_2 = 0
    L13_2 = false
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = SetEntityVisible
    L10_2 = Config
    L10_2 = L10_2.BankLocations
    L10_2 = L10_2[L4_2]
    L10_2 = L10_2.DeliveryLocations
    L10_2 = L10_2[L8_2]
    L10_2 = L10_2.helpProp
    L11_2 = false
    L12_2 = false
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = SetEntityDrawOutline
    L10_2 = Config
    L10_2 = L10_2.BankLocations
    L10_2 = L10_2[L4_2]
    L10_2 = L10_2.DeliveryLocations
    L10_2 = L10_2[L8_2]
    L10_2 = L10_2.helpProp
    L11_2 = true
    L9_2(L10_2, L11_2)
    L9_2 = SetEntityDrawOutlineColor
    L10_2 = 43
    L11_2 = 150
    L12_2 = 17
    L13_2 = 100
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L5_2 = false
  while not L5_2 do
    L6_2 = 1000
    L7_2 = GetEntityCoords
    L8_2 = PlayerPedId
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2()
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L8_2 = Config
    L8_2 = L8_2.BankLocations
    L8_2 = L8_2[L4_2]
    L8_2 = L8_2.DeliveryLocations
    L8_2 = L8_2[1]
    L8_2 = L8_2.coords
    L7_2 = L7_2 - L8_2
    L7_2 = #L7_2
    L8_2 = 2.5
    if L7_2 < L8_2 then
      L6_2 = 0
      L7_2 = ShowHelpNotification
      L8_2 = Config
      L8_2 = L8_2.HintNotifications
      L8_2 = L8_2.Throwing
      L7_2(L8_2)
      L7_2 = IsControlJustReleased
      L8_2 = 0
      L9_2 = 38
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L7_2 = L26_1
        if not L7_2 then
          L7_2 = Notify
          L8_2 = Config
          L8_2 = L8_2.Lang
          L8_2 = L8_2.didntMakeThirdStep
          L7_2(L8_2)
        else
          L7_2 = Notify
          L8_2 = Config
          L8_2 = L8_2.Lang
          L8_2 = L8_2.dontForgetDoors
          L7_2(L8_2)
          L5_2 = true
          L7_2 = Config
          L7_2 = L7_2.BankLocations
          L8_2 = L19_1
          L7_2 = L7_2[L8_2]
          L7_2 = L7_2.isVault
          if not L7_2 then
            L7_2 = true
            L15_1 = L7_2
          end
          L7_2 = TriggerServerCallback
          L8_2 = "17mov_GruppeSechs:GetFreeDeliveryLocation"
          function L9_2(A0_3)
            local L1_3, L2_3, L3_3, L4_3, L5_3
            L1_3 = Config
            L1_3 = L1_3.BankLocations
            L2_3 = L4_2
            L1_3 = L1_3[L2_3]
            L1_3 = L1_3.DeliveryLocations
            L1_3 = L1_3[A0_3]
            L2_3 = ThrowBag
            L3_3 = Config
            L3_3 = L3_3.BankLocations
            L4_3 = L4_2
            L3_3 = L3_3[L4_3]
            L3_3 = L3_3.DeliveryLocations
            L3_3 = L3_3[A0_3]
            L3_3 = L3_3.coords
            L4_3 = Config
            L4_3 = L4_3.BankLocations
            L5_3 = L4_2
            L4_3 = L4_3[L5_3]
            L4_3 = L4_3.DeliveryLocations
            L4_3 = L4_3[A0_3]
            L4_3 = L4_3.rotation
            L5_3 = 0.05
            L2_3 = L2_3(L3_3, L4_3, L5_3)
            L1_3.realProp = L2_3
            L1_3 = SetEntityDrawOutline
            L2_3 = Config
            L2_3 = L2_3.BankLocations
            L3_3 = L4_2
            L2_3 = L2_3[L3_3]
            L2_3 = L2_3.DeliveryLocations
            L2_3 = L2_3[A0_3]
            L2_3 = L2_3.helpProp
            L3_3 = false
            L1_3(L2_3, L3_3)
            L1_3 = DeleteEntity
            L2_3 = Config
            L2_3 = L2_3.BankLocations
            L3_3 = L4_2
            L2_3 = L2_3[L3_3]
            L2_3 = L2_3.DeliveryLocations
            L2_3 = L2_3[A0_3]
            L2_3 = L2_3.helpProp
            L1_3(L2_3)
            L1_3 = RemoveBlip
            L2_3 = L10_1
            L1_3(L2_3)
            L1_3 = AddBlipForCoord
            L2_3 = Config
            L2_3 = L2_3.Locations
            L2_3 = L2_3.FinishJob
            L2_3 = L2_3.Coords
            L2_3 = L2_3[1]
            L1_3 = L1_3(L2_3)
            L10_1 = L1_3
            L1_3 = SetBlipDisplay
            L2_3 = L10_1
            L3_3 = 4
            L1_3(L2_3, L3_3)
            L1_3 = BeginTextCommandSetBlipName
            L2_3 = "STRING"
            L1_3(L2_3)
            L1_3 = AddTextComponentString
            L2_3 = Config
            L2_3 = L2_3.Lang
            L2_3 = L2_3.endJob
            L1_3(L2_3)
            L1_3 = EndTextCommandSetBlipName
            L2_3 = L10_1
            L1_3(L2_3)
            L1_3 = SetBlipRoute
            L2_3 = L10_1
            L3_3 = true
            L1_3(L2_3, L3_3)
            L1_3 = SetBlipRouteColour
            L2_3 = L10_1
            L3_3 = 2
            L1_3(L2_3, L3_3)
            L1_3 = SetBlipColour
            L2_3 = L10_1
            L3_3 = 2
            L1_3(L2_3, L3_3)
          end
          L7_2(L8_2, L9_2)
          break
        end
      end
    end
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = L6_2
    L7_2(L8_2)
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_disableHelpDeliveryBag"
function L53_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetEntityDrawOutline
  L3_2 = Config
  L3_2 = L3_2.BankLocations
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.DeliveryLocations
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.helpProp
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = DeleteEntity
  L3_2 = Config
  L3_2 = L3_2.BankLocations
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.DeliveryLocations
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.helpProp
  L2_2(L3_2)
end
L51_1(L52_1, L53_1)
function L51_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = vector3
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L6_2 = L6_2 + 0.4
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2 = L3_2
  L3_2 = RequestModel
  L4_2 = "prop_cs_heist_bag_01"
  L3_2(L4_2)
  while true do
    L3_2 = HasModelLoaded
    L4_2 = "prop_cs_heist_bag_01"
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 100
    L3_2(L4_2)
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = CreateObject
  L5_2 = "prop_cs_heist_bag_01"
  L6_2 = GetEntityCoords
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = true
  L8_2 = true
  L9_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = SetEntityCollision
  L6_2 = L4_2
  L7_2 = false
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetPedComponentVariation
  L6_2 = L3_2
  L7_2 = 5
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = AttachEntityToEntity
  L6_2 = L4_2
  L7_2 = L3_2
  L8_2 = GetPedBoneIndex
  L9_2 = L3_2
  L10_2 = 57005
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = 0.0
  L10_2 = 0.25
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 180.0
  L15_2 = true
  L16_2 = true
  L17_2 = true
  L18_2 = true
  L19_2 = 2
  L20_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
  L6_2 = "throw_l_fb_stand"
  while true do
    L7_2 = HasAnimDictLoaded
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      break
    end
    L7_2 = RequestAnimDict
    L8_2 = L5_2
    L7_2(L8_2)
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 0
    L7_2(L8_2)
  end
  L7_2 = TaskPlayAnim
  L8_2 = L3_2
  L9_2 = L5_2
  L10_2 = L6_2
  L11_2 = 8.0
  L12_2 = 8.0
  L13_2 = -1
  L14_2 = 0
  L15_2 = 0
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = Citizen
  L7_2 = L7_2.Wait
  L8_2 = 250
  L7_2(L8_2)
  L7_2 = DetachEntity
  L8_2 = L4_2
  L9_2 = false
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = GetEntityCoords
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L8_2 = {}
  L8_2.x = false
  L8_2.y = false
  L8_2.z = false
  L9_2 = A0_2.x
  L10_2 = L7_2.x
  if L9_2 < L10_2 then
    L8_2.x = true
  end
  L9_2 = A0_2.y
  L10_2 = L7_2.y
  if L9_2 < L10_2 then
    L8_2.y = true
  end
  L9_2 = A0_2.z
  L10_2 = L7_2.z
  if L9_2 < L10_2 then
    L8_2.z = true
  end
  L9_2 = 50
  while true do
    L10_2 = Citizen
    L10_2 = L10_2.Wait
    L11_2 = 0
    L10_2(L11_2)
    L9_2 = L9_2 - 1
    L10_2 = GetEntityCoords
    L11_2 = L4_2
    L10_2 = L10_2(L11_2)
    L11_2 = L10_2 - A0_2
    L11_2 = #L11_2
    L12_2 = A2_2 + A2_2
    if L11_2 < L12_2 or L9_2 <= 0 then
      break
    end
    L11_2 = L10_2.x
    L12_2 = L8_2.x
    if L12_2 then
      L12_2 = A0_2.x
      if L11_2 > L12_2 then
        L12_2 = L10_2.x
        L11_2 = L12_2 - A2_2
    end
    else
      L12_2 = A0_2.x
      if L11_2 < L12_2 then
        L12_2 = L10_2.x
        L11_2 = L12_2 + A2_2
      end
    end
    L12_2 = L10_2.y
    L13_2 = L8_2.y
    if L13_2 then
      L13_2 = A0_2.y
      if L12_2 > L13_2 then
        L13_2 = L10_2.y
        L12_2 = L13_2 - A2_2
    end
    else
      L13_2 = A0_2.y
      if L12_2 < L13_2 then
        L13_2 = L10_2.y
        L12_2 = L13_2 + A2_2
      end
    end
    L13_2 = L10_2.z
    L14_2 = L8_2.z
    if L14_2 then
      L14_2 = A0_2.z
      if L13_2 > L14_2 then
        L14_2 = L10_2.z
        L13_2 = L14_2 - A2_2
    end
    else
      L14_2 = A0_2.z
      if L13_2 < L14_2 then
        L14_2 = L10_2.z
        L13_2 = L14_2 + A2_2
      end
    end
    L14_2 = SetEntityCoords
    L15_2 = L4_2
    L16_2 = L11_2
    L17_2 = L12_2
    L18_2 = L13_2
    L14_2(L15_2, L16_2, L17_2, L18_2)
  end
  L10_2 = TriggerServerEvent
  L11_2 = "17mov_GruppeSechs:syncEntity"
  L12_2 = ObjToNet
  L13_2 = L4_2
  L12_2 = L12_2(L13_2)
  L13_2 = A0_2
  L14_2 = A1_2
  L10_2(L11_2, L12_2, L13_2, L14_2)
  return L4_2
end
ThrowBag = L51_1
function L51_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L3_2 = true
  L9_1 = L3_2
  L3_2 = false
  L7_1 = L3_2
  L8_1 = A1_2
  L3_2 = RequestAnimDict
  L4_2 = "anim@heists@ornate_bank@grab_cash"
  L3_2(L4_2)
  while true do
    L3_2 = HasAnimDictLoaded
    L4_2 = "anim@heists@ornate_bank@grab_cash"
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 100
    L3_2(L4_2)
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetOffsetFromEntityInWorldCoords
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L5_2 = L5_2[A2_2]
  L5_2 = L5_2.TrolleysCoords
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.object
  L6_2 = 0.0
  L7_2 = 0.5
  L8_2 = -1.0
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = SetEntityCoords
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityHeading
  L6_2 = L3_2
  L7_2 = GetEntityHeading
  L8_2 = Config
  L8_2 = L8_2.BankLocations
  L8_2 = L8_2[A2_2]
  L8_2 = L8_2.TrolleysCoords
  L8_2 = L8_2[A1_2]
  L8_2 = L8_2.props
  L9_2 = Config
  L9_2 = L9_2.AttachSettings
  L9_2 = L9_2.totalLenght
  L8_2 = L8_2[L9_2]
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 - 200.0
  L5_2(L6_2, L7_2)
  L5_2 = TaskPlayAnim
  L6_2 = L3_2
  L7_2 = "anim@heists@ornate_bank@grab_cash"
  L8_2 = "intro"
  L9_2 = 8.0
  L10_2 = 8.0
  L11_2 = -1
  L12_2 = 0.0
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
  L7_2 = "anim@heists@ornate_bank@grab_cash"
  L8_2 = "grab_idle"
  L9_2 = 8.0
  L10_2 = 8.0
  L11_2 = -1
  L12_2 = 0.0
  L13_2 = 0
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = GetOffsetFromEntityInWorldCoords
  L6_2 = L3_2
  L7_2 = 0.5
  L8_2 = 0.0
  L8_2 = -L8_2
  L9_2 = 0.8
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = CreateCamWithParams
  L7_2 = "DEFAULT_SCRIPTED_CAMERA"
  L8_2 = L5_2
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 55.0
  L13_2 = false
  L14_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = PointCamAtEntity
  L8_2 = L6_2
  L9_2 = Config
  L9_2 = L9_2.BankLocations
  L9_2 = L9_2[A2_2]
  L9_2 = L9_2.TrolleysCoords
  L9_2 = L9_2[A1_2]
  L9_2 = L9_2.object
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.3
  L13_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = SetCamActive
  L8_2 = L6_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = RenderScriptCams
  L8_2 = true
  L9_2 = false
  L10_2 = 1
  L11_2 = true
  L12_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L3_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = SetPedComponentVariation
  L8_2 = L3_2
  L9_2 = 5
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = RequestModel
  L8_2 = "prop_cs_heist_bag_01"
  L7_2(L8_2)
  while true do
    L7_2 = HasModelLoaded
    L8_2 = "prop_cs_heist_bag_01"
    L7_2 = L7_2(L8_2)
    if L7_2 then
      break
    end
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 100
    L7_2(L8_2)
  end
  L7_2 = CreateObject
  L8_2 = "prop_cs_heist_bag_01"
  L9_2 = GetEntityCoords
  L10_2 = PlayerPedId
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2()
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L10_2 = true
  L11_2 = true
  L12_2 = true
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = AttachEntityToEntity
  L9_2 = L7_2
  L10_2 = PlayerPedId
  L10_2 = L10_2()
  L11_2 = 0
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0.25
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = -90.0
  L18_2 = false
  L19_2 = true
  L20_2 = true
  L21_2 = true
  L22_2 = 5
  L23_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L8_2 = false
  L9_2 = false
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = L7_1
      if L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 200
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 30
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 31
      L0_3(L1_3, L2_3)
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
      L2_3 = 24
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 25
      L0_3(L1_3, L2_3)
      L0_3 = Config
      L0_3 = L0_3.AutoCashGrabbing
      if L0_3 then
        L0_3 = ShowHelpNotification
        L1_3 = Config
        L1_3 = L1_3.HintNotifications
        L1_3 = L1_3.GrabbingAuto
        L0_3(L1_3)
      else
        L0_3 = ShowHelpNotification
        L1_3 = Config
        L1_3 = L1_3.HintNotifications
        L1_3 = L1_3.Grabbing
        L0_3(L1_3)
      end
      L0_3 = IsDisabledControlJustReleased
      L1_3 = 0
      L2_3 = 200
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = true
        L9_2 = L0_3
        break
      end
    end
  end
  L10_2(L11_2)
  while true do
    L10_2 = L7_1
    if L10_2 then
      break
    end
    L10_2 = Citizen
    L10_2 = L10_2.Wait
    L11_2 = 0
    L10_2(L11_2)
    if L9_2 then
      break
    end
    L10_2 = Config
    L10_2 = L10_2.AutoCashGrabbing
    if not L10_2 then
      L10_2 = IsDisabledControlJustReleased
      L11_2 = 0
      L12_2 = 24
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        goto lbl_312
      end
    end
    L8_2 = true
    L10_2 = TaskPlayAnim
    L11_2 = L3_2
    L12_2 = "anim@heists@ornate_bank@grab_cash"
    L13_2 = "grab"
    L14_2 = 8.0
    L15_2 = 8.0
    L16_2 = -1
    L17_2 = 0.0
    L18_2 = 0
    L19_2 = false
    L20_2 = false
    L21_2 = false
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L10_2 = Citizen
    L10_2 = L10_2.Wait
    L11_2 = 500
    L10_2(L11_2)
    L10_2 = AttachEntityToEntity
    L11_2 = Config
    L11_2 = L11_2.BankLocations
    L11_2 = L11_2[A2_2]
    L11_2 = L11_2.TrolleysCoords
    L11_2 = L11_2[A1_2]
    L11_2 = L11_2.props
    L12_2 = Config
    L12_2 = L12_2.BankLocations
    L12_2 = L12_2[A2_2]
    L12_2 = L12_2.TrolleysCoords
    L12_2 = L12_2[A1_2]
    L12_2 = L12_2.props
    L12_2 = #L12_2
    L11_2 = L11_2[L12_2]
    L12_2 = L3_2
    L13_2 = GetPedBoneIndex
    L14_2 = L3_2
    L15_2 = 60309
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = 0.0
    L17_2 = 0.0
    L18_2 = 0.0
    L19_2 = 0.0
    L20_2 = false
    L21_2 = false
    L22_2 = false
    L23_2 = false
    L24_2 = 0
    L25_2 = true
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L10_2 = Citizen
    L10_2 = L10_2.Wait
    L11_2 = 500
    L10_2(L11_2)
    L10_2 = DeleteEntity
    L11_2 = Config
    L11_2 = L11_2.BankLocations
    L11_2 = L11_2[A2_2]
    L11_2 = L11_2.TrolleysCoords
    L11_2 = L11_2[A1_2]
    L11_2 = L11_2.props
    L12_2 = Config
    L12_2 = L12_2.BankLocations
    L12_2 = L12_2[A2_2]
    L12_2 = L12_2.TrolleysCoords
    L12_2 = L12_2[A1_2]
    L12_2 = L12_2.props
    L12_2 = #L12_2
    L11_2 = L11_2[L12_2]
    L10_2(L11_2)
    L10_2 = TriggerServerEvent
    L11_2 = "17mov_GruppeSechs:RemovePile"
    L12_2 = A1_2
    L13_2 = A2_2
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = Config
    L10_2 = L10_2.BankLocations
    L10_2 = L10_2[A2_2]
    L10_2 = L10_2.TrolleysCoords
    L10_2 = L10_2[A1_2]
    L10_2 = L10_2.props
    if nil ~= L10_2 then
      L11_2 = #L10_2
      L11_2 = L11_2 - 1
      if 0 == L11_2 then
        L11_2 = L8_1
        if L11_2 == A1_2 then
          L11_2 = true
          L7_1 = L11_2
          break
        end
      end
      L11_2 = DeleteEntity
      L12_2 = prop
      L11_2(L12_2)
    end
    L11_2 = TaskPlayAnim
    L12_2 = L3_2
    L13_2 = "anim@heists@ornate_bank@grab_cash"
    L14_2 = "grab_idle"
    L15_2 = 8.0
    L16_2 = 8.0
    L17_2 = -1
    L18_2 = 0.0
    L19_2 = 0
    L20_2 = false
    L21_2 = false
    L22_2 = false
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L8_2 = false
    ::lbl_312::
  end
  L10_2 = TriggerServerEvent
  L11_2 = "17mov_GruppeSechs:enableThisStation"
  L12_2 = A0_2.coords
  L10_2(L11_2, L12_2)
  L10_2 = DeleteEntity
  L11_2 = L7_2
  L10_2(L11_2)
  L10_2 = GetEntityModel
  L11_2 = PlayerPedId
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2()
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  if 1885233650 == L10_2 then
    L10_2 = pairs
    L11_2 = Config
    L11_2 = L11_2.realClothes
    L11_2 = L11_2.male
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      L16_2 = L15_2.component_id
      if 5 == L16_2 then
        L16_2 = SetPedComponentVariation
        L17_2 = L3_2
        L18_2 = L15_2.component_id
        L19_2 = L15_2.drawable
        L20_2 = L15_2.texture
        L21_2 = 0
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
      end
    end
  else
    L10_2 = pairs
    L11_2 = Config
    L11_2 = L11_2.realClothes
    L11_2 = L11_2.female
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      L16_2 = L15_2.component_id
      if 5 == L16_2 then
        L16_2 = SetPedComponentVariation
        L17_2 = L3_2
        L18_2 = L15_2.component_id
        L19_2 = L15_2.drawable
        L20_2 = L15_2.texture
        L21_2 = 0
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
      end
    end
  end
  L10_2 = ClearPedTasks
  L11_2 = L3_2
  L10_2(L11_2)
  L10_2 = FreezeEntityPosition
  L11_2 = L3_2
  L12_2 = false
  L10_2(L11_2, L12_2)
  L10_2 = SetCamActive
  L11_2 = L6_2
  L12_2 = false
  L10_2(L11_2, L12_2)
  L10_2 = DestroyCam
  L11_2 = L6_2
  L12_2 = true
  L10_2(L11_2, L12_2)
  L10_2 = RenderScriptCams
  L11_2 = false
  L12_2 = true
  L13_2 = 0
  L14_2 = true
  L15_2 = true
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = false
  L9_1 = L10_2
  L10_2 = Citizen
  L10_2 = L10_2.Wait
  L11_2 = 250
  L10_2(L11_2)
  L10_2 = ClearPedTasks
  L11_2 = L3_2
  L10_2(L11_2)
end
StartGrabbing = L51_1
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:RemovePile_cl"
function L53_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Config
  L2_2 = L2_2.BankLocations
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.TrolleysCoords
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.props
  if nil == L2_2 then
    return
  end
  L3_2 = #L2_2
  L3_2 = L2_2[L3_2]
  L4_2 = #L2_2
  L2_2[L4_2] = nil
  L4_2 = #L2_2
  if 0 == L4_2 then
    L4_2 = L8_1
    if L4_2 == A1_2 then
      L4_2 = true
      L7_1 = L4_2
    end
  end
  L4_2 = DeleteEntity
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = DeleteObject
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = OnDuty
  if L4_2 then
    L4_2 = L20_1
    if L4_2 == A0_2 then
      L4_2 = CheckIfAllPropsDeleted
      L5_2 = A0_2
      L4_2(L5_2)
    end
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "17mov_GruppeSechs:endJob_cl"
L51_1(L52_1)
L51_1 = AddEventHandler
L52_1 = "17mov_GruppeSechs:endJob_cl"
function L53_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = RemoveKeys
  if nil ~= L2_2 then
    L2_2 = RemoveKeys
    L2_2()
  end
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = Config
  L3_2 = L3_2.Locations
  L3_2 = L3_2.DutyToggle
  L3_2 = L3_2.Coords
  L3_2 = L3_2[1]
  L2_2 = L2_2 - L3_2
  L2_2 = #L2_2
  if L2_2 < 100.0 then
    L2_2 = Config
    L2_2 = L2_2.EnableVehicleTeleporting
    if L2_2 then
      L2_2 = DoScreenFadeOut
      L3_2 = 250
      L2_2(L3_2)
      L2_2 = Citizen
      L2_2 = L2_2.Wait
      L3_2 = 1000
      L2_2(L3_2)
      L2_2 = SetEntityCoords
      L3_2 = PlayerPedId
      L3_2 = L3_2()
      L4_2 = Config
      L4_2 = L4_2.Locations
      L4_2 = L4_2.DutyToggle
      L4_2 = L4_2.Coords
      L4_2 = L4_2[1]
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = RemoveBlip
  L3_2 = L10_1
  L2_2(L3_2)
  L2_2 = L19_1
  if nil ~= L2_2 then
    L2_2 = Config
    L2_2 = L2_2.BankLocations
    L3_2 = L19_1
    L2_2 = L2_2[L3_2]
    if nil ~= L2_2 then
      L2_2 = Config
      L2_2 = L2_2.BankLocations
      L3_2 = L19_1
      L2_2 = L2_2[L3_2]
      L2_2.loopOnDoors = false
    end
  end
  L2_2 = L20_1
  if nil ~= L2_2 then
    L2_2 = Config
    L2_2 = L2_2.BankLocations
    L3_2 = L20_1
    L2_2 = L2_2[L3_2]
    if nil ~= L2_2 then
      L2_2 = Config
      L2_2 = L2_2.BankLocations
      L3_2 = L20_1
      L2_2 = L2_2[L3_2]
      L2_2.loopOnDoors = false
    end
  end
  OnDuty = false
  L2_2 = false
  L4_1 = L2_2
  L2_2 = {}
  L6_1 = L2_2
  L2_2 = false
  L7_1 = L2_2
  L2_2 = 0
  L8_1 = L2_2
  L2_2 = false
  L9_1 = L2_2
  L2_2 = 0
  L10_1 = L2_2
  L2_2 = false
  L11_1 = L2_2
  L2_2 = false
  L12_1 = L2_2
  L2_2 = false
  L13_1 = L2_2
  L2_2 = false
  L14_1 = L2_2
  L2_2 = false
  L15_1 = L2_2
  L2_2 = false
  L16_1 = L2_2
  L2_2 = 0
  L17_1 = L2_2
  L2_2 = false
  L18_1 = L2_2
  L2_2 = 0
  L19_1 = L2_2
  L2_2 = 0
  L20_1 = L2_2
  L2_2 = false
  L21_1 = L2_2
  L2_2 = 0
  L22_1 = L2_2
  L2_2 = false
  L23_1 = L2_2
  L2_2 = false
  L24_1 = L2_2
  L2_2 = nil
  L25_1 = L2_2
  L2_2 = 1
  L3_2 = L3_1
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = DeleteEntity
    L7_2 = L3_1
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.realBag
    L6_2(L7_2)
    L6_2 = DeleteEntity
    L7_2 = L3_1
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.prop
    L6_2(L7_2)
  end
  L2_2 = RemoveBlip
  L3_2 = L10_1
  L2_2(L3_2)
  L2_2 = Config
  L2_2 = L2_2.EnableClothesChange
  if L2_2 then
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3
      L0_3 = ChangeClothes
      L1_3 = "citizen"
      L0_3(L1_3)
    end
    L2_2(L3_2)
  end
  L2_2 = Citizen
  L2_2 = L2_2.Wait
  L3_2 = 1000
  L2_2(L3_2)
  L2_2 = DoScreenFadeIn
  L3_2 = 300
  L2_2(L3_2)
  L2_2 = 1
  L3_2 = Config
  L3_2 = L3_2.BankLocations
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.TrolleysCoords
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = DeleteEntity
    L7_2 = Config
    L7_2 = L7_2.BankLocations
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2.TrolleysCoords
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.object
    L6_2(L7_2)
    L6_2 = Config
    L6_2 = L6_2.BankLocations
    L6_2 = L6_2[A0_2]
    L6_2 = L6_2.TrolleysCoords
    L6_2 = L6_2[L5_2]
    if nil ~= L6_2 then
      L6_2 = Config
      L6_2 = L6_2.BankLocations
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.TrolleysCoords
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.props
      if nil ~= L6_2 then
        L6_2 = 1
        L7_2 = Config
        L7_2 = L7_2.BankLocations
        L7_2 = L7_2[A0_2]
        L7_2 = L7_2.TrolleysCoords
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.props
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = DeleteEntity
          L11_2 = Config
          L11_2 = L11_2.BankLocations
          L11_2 = L11_2[A0_2]
          L11_2 = L11_2.TrolleysCoords
          L11_2 = L11_2[L5_2]
          L11_2 = L11_2.props
          L11_2 = L11_2[L9_2]
          L10_2(L11_2)
        end
      end
    end
  end
  L2_2 = 1
  L3_2 = Config
  L3_2 = L3_2.BankLocations
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.TrolleysCoords
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = DeleteEntity
    L7_2 = Config
    L7_2 = L7_2.BankLocations
    L7_2 = L7_2[A1_2]
    L7_2 = L7_2.TrolleysCoords
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.object
    L6_2(L7_2)
    L6_2 = Config
    L6_2 = L6_2.BankLocations
    L6_2 = L6_2[A0_2]
    L6_2 = L6_2.TrolleysCoords
    L6_2 = L6_2[L5_2]
    if nil ~= L6_2 then
      L6_2 = Config
      L6_2 = L6_2.BankLocations
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.TrolleysCoords
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.props
      if nil ~= L6_2 then
        L6_2 = 1
        L7_2 = Config
        L7_2 = L7_2.BankLocations
        L7_2 = L7_2[A0_2]
        L7_2 = L7_2.TrolleysCoords
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.props
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = DeleteEntity
          L11_2 = Config
          L11_2 = L11_2.BankLocations
          L11_2 = L11_2[A0_2]
          L11_2 = L11_2.TrolleysCoords
          L11_2 = L11_2[L5_2]
          L11_2 = L11_2.props
          L11_2 = L11_2[L9_2]
          L10_2(L11_2)
        end
      end
    end
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNUICallback
L52_1 = "acceptWarning"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L17_1
  if 1 == L1_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "17mov_GruppeSechs:endJob_sv"
    L3_2 = true
    L4_2 = false
    L5_2 = L23_1
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = L17_1
    if 2 == L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "17mov_GruppeSechs:endJob_sv"
      L3_2 = true
      L4_2 = true
      L5_2 = L23_1
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
  L1_2 = Config
  L1_2 = L1_2.DeleteVehicleWithPenalty
  if not L1_2 then
    L1_2 = L17_1
    if 1 ~= L1_2 then
      goto lbl_34
    end
  end
  L1_2 = DeleteVehicleByCore
  L2_2 = GetVehiclePedIsIn
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = false
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  ::lbl_34::
end
L51_1(L52_1, L53_1)
function L51_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetResourceKvpInt
  L2_2 = "17mov_Tutorials:"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L39_1 = A0_2
    while true do
      L1_2 = L9_1
      if not L1_2 then
        break
      end
      L1_2 = Citizen
      L1_2 = L1_2.Wait
      L2_2 = 100
      L1_2(L2_2)
    end
    L1_2 = true
    L11_1 = L1_2
    L1_2 = ClearPedTasks
    L2_2 = PlayerPedId
    L2_2, L3_2 = L2_2()
    L1_2(L2_2, L3_2)
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "showTutorial"
    L3_2 = Config
    L3_2 = L3_2.Lang
    L3_2 = L3_2[A0_2]
    L2_2.customText = L3_2
    L1_2(L2_2)
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3
      while true do
        L0_3 = L11_1
        if not L0_3 then
          break
        end
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 1
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 2
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 3
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 4
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 5
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 6
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 30
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 31
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 32
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 33
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 34
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 35
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 59
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 60
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 61
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 62
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 63
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 64
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
      end
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 1
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 2
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 3
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 4
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 5
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 6
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 30
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 31
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 32
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 33
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 34
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 35
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 59
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 60
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 61
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 62
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 63
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 64
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
    end
    L1_2(L2_2)
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 500
    L1_2(L2_2)
    L1_2 = SetNuiFocus
    L2_2 = true
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
showTutorial = L51_1

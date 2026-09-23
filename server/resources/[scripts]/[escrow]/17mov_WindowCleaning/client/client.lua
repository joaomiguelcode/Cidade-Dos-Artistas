local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1
L0_1 = nil
L1_1 = nil
L2_1 = nil
L3_1 = -1
L4_1 = false
L5_1 = nil
L6_1 = nil
L7_1 = false
L8_1 = false
L9_1 = 0
L10_1 = 0
L11_1 = false
OnDuty = false
JobVehicleNetId = nil
L12_1 = false
L13_1 = {}
L14_1 = {}
L15_1 = 0
L16_1 = {}
L17_1 = GetPlayerServerId
L18_1 = PlayerId
L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1 = L18_1()
L17_1 = L17_1(L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1)
L18_1 = true
L19_1 = ""
L20_1 = false
L21_1 = false
L22_1 = nil
L23_1 = RegisterNUICallback
L24_1 = "driverLoaded"
function L25_1()
  local L0_2, L1_2
  L0_2 = true
  L20_1 = L0_2
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "nuiLoaded"
function L25_1()
  local L0_2, L1_2
  L0_2 = true
  L21_1 = L0_2
end
L23_1(L24_1, L25_1)
L23_1 = CreateThread
function L24_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = L20_1
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
    L21_1 = L0_2
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 500
    L0_2(L1_2)
  end
  while true do
    L0_2 = L21_1
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
L23_1(L24_1)
L23_1 = RegisterNUICallback
L24_1 = "tutorialClosed"
function L25_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  tutorialOpen = false
  L0_2 = ""
  L19_1 = L0_2
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "17mov_Cleaner:UpdateHostPercentages"
function L25_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateHostRewards"
  L2_2.value = A0_2
  L1_2(L2_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "menuClosed"
function L25_1()
  local L0_2, L1_2, L2_2
  L0_2 = false
  L18_1 = L0_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "dontShowTutorialAgain"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetResourceKvpInt
  L3_2 = "17mov_Tutorials:Cleaner:"
  L4_2 = L19_1
  L3_2 = L3_2 .. L4_2
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "17mov_Cleaner:SetMyReward"
function L25_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateMyReward"
  L2_2.reward = A0_2
  L1_2(L2_2)
end
L23_1(L24_1, L25_1)
L23_1 = Config
L23_1 = L23_1.letBossSplitReward
if L23_1 then
  L23_1 = RegisterNUICallback
  L24_1 = "checkIfThisRewardIsFine"
  function L25_1(A0_2, A1_2)
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
    L5_2 = "17mov_Cleaner:CheckThisReward"
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
  L23_1(L24_1, L25_1)
else
  L23_1 = CreateThread
  function L24_1()
    local L0_2, L1_2
    while true do
      L0_2 = L21_1
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
  L23_1(L24_1)
end
L23_1 = RegisterNetEvent
L24_1 = "17mov_Cleaner:clearMyLobby"
function L25_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L16_1 = L0_2
  L0_2 = TriggerServerCallback
  L1_2 = "17mov_Cleaner:init"
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
    L12_1 = L1_3
  end
  L0_2(L1_2, L2_2)
end
L23_1(L24_1, L25_1)
function L23_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L15_1
  L2_2 = L2_2 + 1
  L15_1 = L2_2
  L2_2 = L15_1
  myId = L2_2
  L2_2 = L14_1
  L3_2 = {}
  L2_2[A0_2] = L3_2
  L2_2 = L14_1
  L2_2 = L2_2[A0_2]
  L3_2 = myId
  L2_2[L3_2] = A1_2
  L2_2 = Config
  L2_2 = L2_2.Debug
  if nil ~= L2_2 then
    L2_2 = print
    L3_2 = "SENDING REQUEST: "
    L4_2 = A0_2
    L5_2 = myId
    L2_2(L3_2, L4_2, L5_2)
  end
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
TriggerServerCallback = L23_1
L23_1 = RegisterNetEvent
L24_1 = "17mov_Callbacks:receiveData"
L25_1 = GetCurrentResourceName
L25_1 = L25_1()
L24_1 = L24_1 .. L25_1
function L25_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Config
  L2_2 = L2_2.Debug
  if nil ~= L2_2 then
    L2_2 = print
    L3_2 = "ROOT RESPONSE FROM: "
    L4_2 = A0_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L14_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L14_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      goto lbl_21
    end
  end
  do return end
  ::lbl_21::
  L2_2 = L14_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2, L4_2, L5_2 = ...
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L14_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L14_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      L2_2 = L14_1
      L2_2 = L2_2[A0_2]
      L2_2[A1_2] = nil
    end
  end
  L2_2 = L14_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L14_1
    L2_2 = L2_2[A0_2]
    L2_2 = #L2_2
    if 0 == L2_2 then
      L2_2 = L14_1
      L2_2[A0_2] = nil
    end
  end
end
L23_1(L24_1, L25_1)
L23_1 = false
L24_1 = nil
function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = PlaySoundFromCoord
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2.x
  L8_2 = A2_2.y
  L9_2 = A2_2.z
  L10_2 = A3_2
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
function L26_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L23_1
  if not L0_2 then
    L0_2 = GetEntityCoords
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    L24_1 = L0_2
    L0_2 = L25_1
    L1_2 = l_5F
    L2_2 = "OPENING"
    L3_2 = L24_1
    L4_2 = "DOOR_GARAGE"
    L0_2(L1_2, L2_2, L3_2, L4_2)
    L0_2 = true
    L23_1 = L0_2
  end
end
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L23_1
  if L1_2 then
    L1_2 = StopSound
    L2_2 = l_5F
    L1_2(L2_2)
    L1_2 = L25_1
    L2_2 = -1
    L3_2 = "CLOSED"
    L4_2 = A0_2
    L5_2 = "MP_PROPERTIES_ELEVATOR_DOORS"
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = false
    L23_1 = L1_2
  end
end
L28_1 = false
function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2
  L1_2 = L28_1
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
      L28_1 = L1_2
      return
    end
  end
  L1_2 = true
  L28_1 = L1_2
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
      L1_2 = L28_1
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
                L9_2 = "17mov_Cleaner:ExitedMarker"
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
          L9_2 = "17mov_Cleaner:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_250::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_Cleaner:ExitedMarker"
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
      L1_2 = L28_1
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
                L9_2 = "17mov_Cleaner:ExitedMarker"
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
          L9_2 = "17mov_Cleaner:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_491::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_Cleaner:ExitedMarker"
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
StartMarkers = L29_1
L29_1 = Citizen
L29_1 = L29_1.CreateThread
function L30_1()
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
L29_1(L30_1)
L29_1 = false
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L29_1
  if L0_2 then
    return
  end
  L0_2 = true
  L29_1 = L0_2
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
MakeBlip = L30_1
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = false
  L29_1 = L0_2
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
DeleteBlip = L30_1
function L30_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = initalized
  if L1_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.useModernUI
  if L1_2 then
    while true do
      L1_2 = L21_1
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
  L2_2 = "17mov_Cleaner:init"
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
    L12_1 = L1_3
  end
  L1_2(L2_2, L3_2)
end
InitalizeScript = L30_1
L30_1 = RegisterNetEvent
L31_1 = "QBCore:Client:OnPlayerLoaded"
function L32_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "esx:playerLoaded"
function L32_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "QBCore:Client:OnJobUpdate"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "QBCore:Client:OnJobUpdate"
function L32_1(A0_2)
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
    L28_1 = L1_2
  end
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "esx:setJob"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "esx:setJob"
function L32_1(A0_2)
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
    L28_1 = L1_2
  end
end
L30_1(L31_1, L32_1)
L30_1 = AddEventHandler
L31_1 = "17mov_Cleaner:EnteredMarker"
function L32_1(A0_2)
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
L30_1(L31_1, L32_1)
L30_1 = AddEventHandler
L31_1 = "17mov_Cleaner:ExitedMarker"
function L32_1(A0_2)
  local L1_2
  CurrentAction = nil
  CurrentActionMsg = nil
  CurrentActionStation = nil
end
L30_1(L31_1, L32_1)
L30_1 = RegisterCommand
L31_1 = "+WindowCleanerStartMarkerAction"
function L32_1()
  local L0_2, L1_2
end
L30_1(L31_1, L32_1)
L30_1 = RegisterCommand
L31_1 = "-WindowCleanerStartMarkerAction"
function L32_1()
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
        L1_2 = "17mov_Cleaner:IfPlayerIsHost"
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
L30_1(L31_1, L32_1)
L30_1 = TriggerEvent
L31_1 = "chat:removeSuggestion"
L32_1 = "/+WindowCleanerStartMarkerAction"
L30_1(L31_1, L32_1)
L30_1 = TriggerEvent
L31_1 = "chat:removeSuggestion"
L32_1 = "/-WindowCleanerStartMarkerAction"
L30_1(L31_1, L32_1)
L30_1 = RegisterKeyMapping
L31_1 = "+WindowCleanerStartMarkerAction"
L32_1 = Config
L32_1 = L32_1.Lang
L32_1 = L32_1.keybind
L33_1 = "keyboard"
L34_1 = "E"
L30_1(L31_1, L32_1, L33_1, L34_1)
L30_1 = {}
L31_1 = Config
L31_1 = L31_1.useModernUI
if L31_1 then
  function L31_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2
    L0_2 = initalized
    if not L0_2 then
      L0_2 = print
      L1_2 = "SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD"
      L0_2(L1_2)
      L0_2 = InitalizeScript
      L1_2 = true
      L0_2(L1_2)
      return
    end
    L0_2 = L12_1
    if not L0_2 then
      L0_2 = TriggerServerCallback
      L1_2 = "17mov_Cleaner:init"
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
        L12_1 = L1_3
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
    L18_1 = L0_2
    L0_2 = false
    L1_2 = false
    L2_2 = false
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
      while true do
        L0_3 = L18_1
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
        L5_3 = "17mov_Cleaner:GetPlayersNames"
        function L6_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4
          L1_4 = pairs
          L2_4 = A0_4
          L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
          for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
            L8_4 = L6_4.id
            L7_4 = L16_1
            L7_4 = L7_4[L8_4]
            if nil == L7_4 then
              L7_4 = true
              L3_3 = L7_4
              L8_4 = L6_4.id
              L7_4 = L30_1
              L7_4 = L7_4[L8_4]
              if nil == L7_4 then
                L8_4 = L6_4.id
                L7_4 = L30_1
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
          L2_4 = L30_1
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
              L9_4 = L30_1
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
  OpenDutyMenu = L31_1
else
  function L31_1()
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
    L0_2 = L12_1
    if not L0_2 then
      L0_2 = TriggerServerCallback
      L1_2 = "17mov_Cleaner:init"
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
        L12_1 = L1_3
      end
      L0_2(L1_2, L2_2)
      L0_2 = print
      L1_2 = "SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD"
      L0_2(L1_2)
      return
    end
    L0_2 = TriggerServerCallback
    L1_2 = "17mov_Cleaner:IfPlayerIsHost"
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
  OpenDutyMenu = L31_1
end
L31_1 = false
L32_1 = RegisterNUICallback
L33_1 = "changeClothes"
function L34_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.type
  if "work" == L1_2 then
    L2_2 = true
    L31_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "work"
    L2_2(L3_2)
  else
    L2_2 = false
    L31_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "citizen"
    L2_2(L3_2)
  end
end
L32_1(L33_1, L34_1)
L32_1 = RegisterNUICallback
L33_1 = "GetClosestPlayers"
function L34_1(A0_2, A1_2)
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
  L6_2 = "17mov_Cleaner:IfPlayerIsHost"
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = TriggerServerCallback
      L2_3 = "17mov_Cleaner:GetPlayersNames"
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
L32_1(L33_1, L34_1)
L32_1 = RegisterNUICallback
L33_1 = "requestReacted"
function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.boolean
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_Cleaner:ClientReactRequest"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L32_1(L33_1, L34_1)
L32_1 = Config
L32_1 = L32_1.useModernUI
if L32_1 then
  L32_1 = RegisterNUICallback
  L33_1 = "sendRequest"
  function L34_1(A0_2)
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
    L2_2 = "17mov_Cleaner:SendRequestToClient_sv"
    L3_2 = tonumber
    L4_2 = A0_2.id
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
  L32_1(L33_1, L34_1)
  L32_1 = RegisterNUICallback
  L33_1 = "kickPlayerFromLobby"
  function L34_1(A0_2)
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
    L5_2 = L16_1
    L5_2 = L5_2[L1_2]
    L5_2 = L5_2.name
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = TriggerServerEvent
    L3_2 = "17mov_Cleaner:KickPlayerFromLobby"
    L4_2 = L1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L32_1(L33_1, L34_1)
else
  L32_1 = RegisterNUICallback
  L33_1 = "sendRequest"
  function L34_1(A0_2)
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
    L1_2 = TriggerServerEvent
    L2_2 = "17mov_Cleaner:SendRequestToClient_sv"
    L3_2 = A0_2.id
    L1_2(L2_2, L3_2)
  end
  L32_1(L33_1, L34_1)
  L32_1 = RegisterNUICallback
  L33_1 = "kickPlayerFromLobby"
  function L34_1(A0_2)
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
    L2_2 = "17mov_Cleaner:KickPlayerFromLobby"
    L3_2 = A0_2.id
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L32_1(L33_1, L34_1)
end
L32_1 = RegisterNUICallback
L33_1 = "focusOff"
function L34_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L32_1(L33_1, L34_1)
L32_1 = RegisterNUICallback
L33_1 = "notify"
function L34_1(A0_2)
  local L1_2, L2_2
  L1_2 = Notify
  L2_2 = A0_2.msg
  L1_2(L2_2)
end
L32_1(L33_1, L34_1)
L32_1 = RegisterNetEvent
L33_1 = "17mov_Cleaner:SendRequestToClient_cl"
L32_1(L33_1)
L32_1 = AddEventHandler
L33_1 = "17mov_Cleaner:SendRequestToClient_cl"
function L34_1(A0_2, A1_2)
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
L32_1(L33_1, L34_1)
L32_1 = Config
L32_1 = L32_1.useModernUI
if L32_1 then
  L32_1 = RegisterNetEvent
  L33_1 = "17mov_Cleaner:RefreshMugs"
  L32_1(L33_1)
  L32_1 = AddEventHandler
  L33_1 = "17mov_Cleaner:RefreshMugs"
  function L34_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
    while true do
      L2_2 = L12_1
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
      L8_2 = L16_1
      L8_2 = L8_2[L9_2]
      if nil == L8_2 then
        L8_2 = L17_1
        L9_2 = L7_2.id
        if L8_2 == L9_2 then
          L9_2 = L7_2.id
          L8_2 = L16_1
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
          L8_2 = L16_1
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
        L10_2 = L16_1
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.itsMe
        L9_2.showQuitBtn = L10_2
        L8_2(L9_2)
      end
    end
    L2_2 = 0
    L3_2 = pairs
    L4_2 = L16_1
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
        L11_2 = L16_1
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
      L4_2 = "17mov_Cleaner:init"
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
        L12_1 = L1_3
      end
      L3_2(L4_2, L5_2)
    end
    L3_2 = TriggerServerCallback
    L4_2 = "17mov_Cleaner:IfPlayerOwnsTeam"
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
  L32_1(L33_1, L34_1)
else
  L32_1 = RegisterNetEvent
  L33_1 = "17mov_Cleaner:RefreshMugs"
  L32_1(L33_1)
  L32_1 = AddEventHandler
  L33_1 = "17mov_Cleaner:RefreshMugs"
  function L34_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    while true do
      L2_2 = L12_1
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
    L3_2 = "17mov_Cleaner:IfPlayerIsHost"
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
  L32_1(L33_1, L34_1)
end
function L32_1()
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
IsSpawnPointClear = L32_1
L32_1 = RegisterNUICallback
L33_1 = "startJob"
function L34_1(A0_2)
  local L1_2, L2_2
  L1_2 = OnDuty
  if not L1_2 then
    L1_2 = IsSpawnPointClear
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "17mov_Cleaner:StartJob_sv"
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
L32_1(L33_1, L34_1)
L32_1 = RegisterNUICallback
L33_1 = "leaveLobby"
function L34_1(A0_2)
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
  L3_2 = "17mov_Cleaner:KickPlayerFromLobby"
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
L32_1(L33_1, L34_1)
function L32_1(A0_2, A1_2)
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
SpawnVehicle = L32_1
L32_1 = RegisterNetEvent
L33_1 = "17mov_Cleaner:StartJob_cl"
L32_1(L33_1)
L32_1 = AddEventHandler
L33_1 = "17mov_Cleaner:StartJob_cl"
function L34_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L4_2 = Config
  L4_2 = L4_2.SpawnPoint
  L5_2 = GetEntityCoords
  L6_2 = PlayerPedId
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  BagsCounter = 0
  L6_2 = -1
  L7_2 = nil
  L5_1 = L7_2
  OnDuty = true
  if not A3_2 then
    L7_2 = GetResourceKvpInt
    L8_2 = "17mov_Tutorials:Cleaner:"
    L9_2 = "cleanerFirstTutorial"
    L8_2 = L8_2 .. L9_2
    L7_2 = L7_2(L8_2)
    if 0 == L7_2 then
      L7_2 = "cleanerFirstTutorial"
      L19_1 = L7_2
      L7_2 = SendNUIMessage
      L8_2 = {}
      L8_2.action = "showTutorial"
      L9_2 = Config
      L9_2 = L9_2.Lang
      L9_2 = L9_2.tutorial1
      L8_2.customText = L9_2
      L7_2(L8_2)
      L7_2 = SetNuiFocus
      L8_2 = true
      L9_2 = true
      L7_2(L8_2, L9_2)
    end
  end
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3
    L0_3 = L31_1
    if not L0_3 then
      L0_3 = Config
      L0_3 = L0_3.RequireWorkClothes
      if L0_3 then
        L0_3 = true
        L31_1 = L0_3
        L0_3 = ChangeClothes
        L1_3 = "work"
        L0_3(L1_3)
      end
    end
  end
  L7_2(L8_2)
  if A0_2 == A1_2 then
    L7_2 = Config
    L7_2 = L7_2.EnableVehicleTeleporting
    if L7_2 and not A3_2 then
      L7_2 = DoScreenFadeOut
      L8_2 = 300
      L7_2(L8_2)
      L7_2 = Citizen
      L7_2 = L7_2.Wait
      L8_2 = 1000
      L7_2(L8_2)
    end
    if not A3_2 then
      L7_2 = SpawnVehicle
      L8_2 = Config
      L8_2 = L8_2.JobVehicleModel
      L9_2 = Config
      L9_2 = L9_2.SpawnPoint
      L7_2 = L7_2(L8_2, L9_2)
      L1_1 = L7_2
      L7_2 = Citizen
      L7_2 = L7_2.Wait
      L8_2 = 2000
      L7_2(L8_2)
      L7_2 = DoScreenFadeIn
      L8_2 = 300
      L7_2(L8_2)
      L7_2 = VehToNet
      L8_2 = L1_1
      L7_2 = L7_2(L8_2)
      JobVehicleNetId = L7_2
      L7_2 = TriggerServerEvent
      L8_2 = "17mov_Cleaner:UploadVehicleNetId"
      L9_2 = JobVehicleNetId
      L7_2(L8_2, L9_2)
    else
      L7_2 = false
      while not L7_2 do
        L8_2 = Citizen
        L8_2 = L8_2.Wait
        L9_2 = 300
        L8_2(L9_2)
        L8_2 = TriggerServerCallback
        L9_2 = "17mov_Cleaner:GetLobbyVehicleId"
        function L10_2(A0_3)
          local L1_3, L2_3, L3_3
          if nil ~= A0_3 and 0 ~= A0_3 then
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
                L7_2 = L2_3
              end
            end
          end
        end
        L11_2 = A0_2
        L8_2(L9_2, L10_2, L11_2)
        if L7_2 then
          break
        end
      end
      L8_2 = SetVehicleHasBeenOwnedByPlayer
      L9_2 = L1_1
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = SetNetworkIdCanMigrate
      L9_2 = JobVehicleNetId
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = SetVehicleNeedsToBeHotwired
      L9_2 = L1_1
      L10_2 = false
      L8_2(L9_2, L10_2)
    end
    L7_2 = CreateThread
    function L8_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = OnDuty
        if not L0_3 then
          break
        end
        L0_3 = L4_1
        if not L0_3 then
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
                  if L0_3 ~= L1_3 and 0 ~= L0_3 then
                    L1_3 = NetToVeh
                    L2_3 = JobVehicleNetId
                    L1_3 = L1_3(L2_3)
                    L1_1 = L1_3
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
    L7_2(L8_2)
  else
    while true do
      L7_2 = Citizen
      L7_2 = L7_2.Wait
      L8_2 = 0
      L7_2(L8_2)
      L7_2 = GetGamePool
      L8_2 = "CVehicle"
      L7_2 = L7_2(L8_2)
      L8_2 = 200.0
      L9_2 = 0
      L10_2 = pairs
      L11_2 = L7_2
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
        L16_2 = GetEntityCoords
        L17_2 = L15_2
        L16_2 = L16_2(L17_2)
        L17_2 = vector3
        L18_2 = L4_2.x
        L19_2 = L4_2.y
        L20_2 = L4_2.z
        L17_2 = L17_2(L18_2, L19_2, L20_2)
        L16_2 = L16_2 - L17_2
        L16_2 = #L16_2
        if L8_2 > L16_2 then
          L8_2 = L16_2
          L9_2 = L15_2
        end
      end
      if nil ~= L9_2 then
        L10_2 = vector3
        L11_2 = L4_2.x
        L12_2 = L4_2.y
        L13_2 = L4_2.z
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L11_2 = GetEntityCoords
        L12_2 = L9_2
        L11_2 = L11_2(L12_2)
        L10_2 = L10_2 - L11_2
        L10_2 = #L10_2
        if L10_2 < 2.0 then
          L10_2 = GetEntityModel
          L11_2 = L9_2
          L10_2 = L10_2(L11_2)
          L11_2 = GetHashKey
          L12_2 = Config
          L12_2 = L12_2.JobVehicleModel
          L11_2 = L11_2(L12_2)
          if L10_2 == L11_2 then
            L10_2 = Citizen
            L10_2 = L10_2.Wait
            L11_2 = 300
            L10_2(L11_2)
            while true do
              L10_2 = DoesEntityExist
              L11_2 = L9_2
              L10_2 = L10_2(L11_2)
              if L10_2 then
                break
              end
              L10_2 = Citizen
              L10_2 = L10_2.Wait
              L11_2 = 100
              L10_2(L11_2)
            end
            L10_2 = VehToNet
            L11_2 = L9_2
            L10_2 = L10_2(L11_2)
            JobVehicleNetId = L10_2
            L1_1 = L9_2
            break
          end
        end
      end
    end
    L7_2 = Config
    L7_2 = L7_2.GiveKeysToAllLobby
    if L7_2 then
      L7_2 = SetVehicle
      L8_2 = L1_1
      L7_2(L8_2)
    end
  end
  L7_2 = SendNUIMessage
  L8_2 = {}
  L8_2.action = "showCounter"
  L7_2(L8_2)
end
L32_1(L33_1, L34_1)
function L32_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = DoesBlipExist
  L4_2 = L22_1
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = RemoveBlip
    L4_2 = L22_1
    L3_2(L4_2)
  end
  L3_2 = AddBlipForCoord
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = 0
  end
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L22_1 = L3_2
  L3_2 = SetBlipSprite
  L4_2 = L22_1
  L5_2 = 1
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipDisplay
  L4_2 = L22_1
  L5_2 = 6
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipScale
  L4_2 = L22_1
  L5_2 = 1.0
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipColour
  L4_2 = L22_1
  L5_2 = 83
  L3_2(L4_2, L5_2)
  L3_2 = SetBlipAsShortRange
  L4_2 = L22_1
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = BeginTextCommandSetBlipName
  L4_2 = "STRING"
  L3_2(L4_2)
  L3_2 = AddTextComponentString
  L4_2 = Config
  L4_2 = L4_2.Lang
  L4_2 = L4_2.targetLocation
  if not L4_2 then
    L4_2 = "Target Location"
  end
  L3_2(L4_2)
  L3_2 = EndTextCommandSetBlipName
  L4_2 = L22_1
  L3_2(L4_2)
end
CreateTargetBlip = L32_1
L32_1 = RegisterNetEvent
L33_1 = "17mov_Cleaner:takeNewJob"
function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L3_1 = A0_2
  L1_2 = Config
  L1_2 = L1_2.JobLocations
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.enterCoords
  L2_2 = SetNewWaypoint
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L2_2(L3_2, L4_2)
  L2_2 = CreateTargetBlip
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L5_2 = L1_2.z
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = L3_1
      L1_3 = A0_2
      if L0_3 ~= L1_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L4_1
      if not L0_3 then
        L0_3 = GetEntityCoords
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3 = L1_3()
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
        L1_3 = L1_2
        L1_3 = L0_3 - L1_3
        L1_3 = #L1_3
        if L1_3 <= 15.0 then
          L1_3 = DrawText3Ds
          L2_3 = L1_2.x
          L3_3 = L1_2.y
          L4_3 = L1_2.z
          L5_3 = "~r~[E] | ~s~"
          L6_3 = Config
          L6_3 = L6_3.Lang
          L6_3 = L6_3.enterPlatform
          L5_3 = L5_3 .. L6_3
          L1_3(L2_3, L3_3, L4_3, L5_3)
          L1_3 = L1_2
          L1_3 = L0_3 - L1_3
          L1_3 = #L1_3
          L2_3 = 1.5
          if L1_3 <= L2_3 then
            L1_3 = IsControlJustReleased
            L2_3 = 0
            L3_3 = 38
            L1_3 = L1_3(L2_3, L3_3)
            if L1_3 then
              L1_3 = TriggerServerCallback
              L2_3 = "17mov_Cleaner:IfPlayerIsHost"
              function L3_3(A0_4)
                local L1_4, L2_4, L3_4
                if A0_4 then
                  L1_4 = Config
                  L1_4 = L1_4.Debug
                  if nil ~= L1_4 then
                    L1_4 = print
                    L2_4 = "starting:"
                    L3_4 = A0_2
                    L1_4(L2_4, L3_4)
                  end
                  L1_4 = TriggerServerEvent
                  L2_4 = "17mov_Cleaner:StartSession"
                  L3_4 = A0_2
                  L1_4(L2_4, L3_4)
                else
                  L1_4 = Notify
                  L2_4 = Config
                  L2_4 = L2_4.Lang
                  L2_4 = L2_4.no_permission
                  L1_4(L2_4)
                end
              end
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
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 2000
        L0_3(L1_3)
      end
    end
  end
  L2_2(L3_2)
end
L32_1(L33_1, L34_1)
L32_1 = RegisterNetEvent
L33_1 = "17mov_Cleaner:TeleportToPlatform"
function L34_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Config
  L3_2 = L3_2.Debug
  if nil ~= L3_2 then
    L3_2 = print
    L4_2 = "TELEPORTING:"
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = Config
  L4_2 = L4_2.JobLocations
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2.enterCoords
  L3_2 = L3_2 - L4_2
  L3_2 = #L3_2
  if L3_2 > 100.0 then
    return
  end
  L3_2 = Config
  L3_2 = L3_2.Debug
  if nil ~= L3_2 then
    L3_2 = print
    L4_2 = "CHECK 1"
    L3_2(L4_2)
  end
  L3_2 = DoScreenFadeOut
  L4_2 = 250
  L3_2(L4_2)
  while true do
    L3_2 = DoesEntityExist
    L4_2 = L5_1
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = SpawnHamper
    L4_2 = Config
    L4_2 = L4_2.JobLocations
    L4_2 = L4_2[A2_2]
    L5_2 = A0_2
    L6_2 = A0_2 == A1_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = Config
  L3_2 = L3_2.JobLocations
  L3_2 = L3_2[A2_2]
  L3_2 = L3_2.hamperCoords
  L4_2 = SetEntityCoords
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = Config
  L6_2 = L6_2.JobLocations
  L6_2 = L6_2[A2_2]
  L6_2 = L6_2.exitCoords
  L4_2(L5_2, L6_2)
  L4_2 = FreezeEntityPosition
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = true
  L4_1 = L4_2
  L4_2 = Citizen
  L4_2 = L4_2.Wait
  L5_2 = 2500
  L4_2(L5_2)
  L4_2 = DoScreenFadeIn
  L5_2 = 250
  L4_2(L5_2)
  L4_2 = FreezeEntityPosition
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = Citizen
  L4_2 = L4_2.Wait
  L5_2 = 250
  L4_2(L5_2)
  L4_2 = GetResourceKvpInt
  L5_2 = "17mov_Tutorials:Cleaner:"
  L6_2 = "cleanerSecondTutorial"
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2(L5_2)
  if 0 == L4_2 then
    L4_2 = "cleanerSecondTutorial"
    L19_1 = L4_2
    L4_2 = SendNUIMessage
    L5_2 = {}
    L5_2.action = "show2Tutorial"
    L4_2(L5_2)
    L4_2 = SendNUIMessage
    L5_2 = {}
    L5_2.action = "showTutorial"
    L6_2 = Config
    L6_2 = L6_2.Lang
    L6_2 = L6_2.tutorial2
    L5_2.customText = L6_2
    L4_2(L5_2)
    L4_2 = SetNuiFocus
    L5_2 = true
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    while true do
      L0_3 = L4_1
      if not L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
      L1_3 = Config
      L1_3 = L1_3.JobLocations
      L2_3 = A2_2
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.exitCoords
      L1_3 = L0_3 - L1_3
      L1_3 = #L1_3
      if L1_3 <= 15.0 then
        L1_3 = DrawText3Ds
        L2_3 = Config
        L2_3 = L2_3.JobLocations
        L3_3 = A2_2
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.exitCoords
        L2_3 = L2_3.x
        L3_3 = Config
        L3_3 = L3_3.JobLocations
        L4_3 = A2_2
        L3_3 = L3_3[L4_3]
        L3_3 = L3_3.exitCoords
        L3_3 = L3_3.y
        L4_3 = Config
        L4_3 = L4_3.JobLocations
        L5_3 = A2_2
        L4_3 = L4_3[L5_3]
        L4_3 = L4_3.exitCoords
        L4_3 = L4_3.z
        L5_3 = "~r~[E] | ~s~"
        L6_3 = Config
        L6_3 = L6_3.Lang
        L6_3 = L6_3.exitPlatform
        L5_3 = L5_3 .. L6_3
        L1_3(L2_3, L3_3, L4_3, L5_3)
        L1_3 = Config
        L1_3 = L1_3.JobLocations
        L2_3 = A2_2
        L1_3 = L1_3[L2_3]
        L1_3 = L1_3.exitCoords
        L1_3 = L0_3 - L1_3
        L1_3 = #L1_3
        if L1_3 <= 1.0 then
          L1_3 = IsControlJustReleased
          L2_3 = 0
          L3_3 = 38
          L1_3 = L1_3(L2_3, L3_3)
          if L1_3 then
            L1_3 = false
            L4_1 = L1_3
            L1_3 = TriggerServerEvent
            L2_3 = "17mov_Cleaner:exitSession"
            L3_3 = A2_2
            L4_3 = false
            L5_3 = false
            L1_3(L2_3, L3_3, L4_3, L5_3)
            break
          end
        end
      else
        L1_3 = Citizen
        L1_3 = L1_3.Wait
        L2_3 = 500
        L1_3(L2_3)
      end
    end
  end
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = nil
    while true do
      L1_3 = L4_1
      if not L1_3 then
        break
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      if nil == L0_3 then
        L0_3 = L1_3
      end
      L2_3 = L1_3 - L0_3
      L2_3 = L2_3 / 1000.0
      L0_3 = L1_3
      L3_3 = 1.0
      L4_3 = L3_3 * L2_3
      L5_3 = Config
      L5_3 = L5_3.JobLocations
      L6_3 = L3_1
      L5_3 = L5_3[L6_3]
      L6_3 = GetEntityCoords
      L7_3 = L5_1
      L6_3 = L6_3(L7_3)
      L7_3 = L7_1
      if L7_3 then
        L7_3 = L6_3.z
        L7_3 = L7_3 - L4_3
        L8_3 = L5_3.hamperMaxZ
        if L7_3 < L8_3 then
          L8_3 = L5_3.hamperMinZ
          if L7_3 > L8_3 then
            L8_3 = SetEntityCoords
            L9_3 = L5_1
            L10_3 = L6_3.x
            L11_3 = L6_3.y
            L12_3 = L7_3
            L8_3(L9_3, L10_3, L11_3, L12_3)
          end
        end
      else
        L7_3 = L8_1
        if L7_3 then
          L7_3 = L6_3.z
          L7_3 = L7_3 + L4_3
          L8_3 = L5_3.hamperMaxZ
          if L7_3 < L8_3 then
            L8_3 = L5_3.hamperMinZ
            if L7_3 > L8_3 then
              L8_3 = SetEntityCoords
              L9_3 = L5_1
              L10_3 = L6_3.x
              L11_3 = L6_3.y
              L12_3 = L7_3
              L8_3(L9_3, L10_3, L11_3, L12_3)
            end
          end
        end
      end
    end
  end
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = Config
    L0_3 = L0_3.MaxHamperDistance
    if not L0_3 then
      L0_3 = 30.0
    end
    while true do
      L1_3 = L4_1
      if not L1_3 then
        break
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 2000
      L1_3(L2_3)
      L1_3 = GetEntityCoords
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      L2_3 = GetEntityCoords
      L3_3 = L5_1
      L2_3 = L2_3(L3_3)
      L3_3 = vector3
      L4_3 = 0
      L5_3 = 0
      L6_3 = 0
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      if L2_3 ~= L3_3 then
        L3_3 = L2_3 - L1_3
        L3_3 = #L3_3
        if L0_3 < L3_3 then
          L3_3 = L4_1
          if L3_3 then
            L3_3 = TriggerServerEvent
            L4_3 = "17mov_Cleaner:exitSession"
            L5_3 = A2_2
            L6_3 = true
            L7_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3)
            return
          end
        end
      end
    end
  end
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = L4_1
      if not L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 500
      L0_3(L1_3)
      L0_3 = isDeath
      L0_3 = L0_3()
      if L0_3 then
        L0_3 = TriggerServerEvent
        L1_3 = "17mov_Cleaner:exitSession"
        L2_3 = A2_2
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        return
      end
    end
  end
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3
    while true do
      L0_3 = L4_1
      if not L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = false
      L1_3 = GetEntityCoords
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
      L2_3 = false
      L3_3 = {}
      L3_3.distance = 100
      L3_3.id = 0
      L4_3 = pairs
      L5_3 = Config
      L5_3 = L5_3.JobLocations
      L6_3 = A2_2
      L5_3 = L5_3[L6_3]
      L5_3 = L5_3.windowsLocations
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
      for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
        L10_3 = L9_3.dirty
        if L10_3 then
          L2_3 = true
          L10_3 = L9_3.coords
          L10_3 = L1_3 - L10_3
          L10_3 = #L10_3
          L11_3 = L3_3.distance
          if L10_3 < L11_3 then
            L3_3.distance = L10_3
            L3_3.id = L8_3
          end
          if L10_3 < 30.0 and L10_3 > 1.0 then
            L11_3 = DrawMarker
            L12_3 = Config
            L12_3 = L12_3.WindowMarkerSetting
            L12_3 = L12_3.type
            L13_3 = L9_3.coords
            L14_3 = 0.0
            L15_3 = 0.0
            L16_3 = 0.0
            L17_3 = 0.0
            L18_3 = 0.0
            L19_3 = 0.0
            L20_3 = Config
            L20_3 = L20_3.WindowMarkerSetting
            L20_3 = L20_3.scale
            L20_3 = L20_3[1]
            L21_3 = Config
            L21_3 = L21_3.WindowMarkerSetting
            L21_3 = L21_3.scale
            L21_3 = L21_3[2]
            L22_3 = Config
            L22_3 = L22_3.WindowMarkerSetting
            L22_3 = L22_3.scale
            L22_3 = L22_3[3]
            L23_3 = Config
            L23_3 = L23_3.WindowMarkerSetting
            L23_3 = L23_3.unActiveColor
            L23_3 = L23_3[1]
            L24_3 = Config
            L24_3 = L24_3.WindowMarkerSetting
            L24_3 = L24_3.unActiveColor
            L24_3 = L24_3[2]
            L25_3 = Config
            L25_3 = L25_3.WindowMarkerSetting
            L25_3 = L25_3.unActiveColor
            L25_3 = L25_3[3]
            L26_3 = Config
            L26_3 = L26_3.WindowMarkerSetting
            L26_3 = L26_3.unActiveColor
            L26_3 = L26_3[4]
            L27_3 = false
            L28_3 = true
            L29_3 = 2
            L30_3 = false
            L31_3 = false
            L32_3 = false
            L33_3 = false
            L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
          end
          if L10_3 < 1.0 then
            L11_3 = DrawMarker
            L12_3 = Config
            L12_3 = L12_3.WindowMarkerSetting
            L12_3 = L12_3.type
            L13_3 = L9_3.coords
            L14_3 = 0.0
            L15_3 = 0.0
            L16_3 = 0.0
            L17_3 = 0.0
            L18_3 = 0.0
            L19_3 = 0.0
            L20_3 = Config
            L20_3 = L20_3.WindowMarkerSetting
            L20_3 = L20_3.scale
            L20_3 = L20_3[1]
            L21_3 = Config
            L21_3 = L21_3.WindowMarkerSetting
            L21_3 = L21_3.scale
            L21_3 = L21_3[2]
            L22_3 = Config
            L22_3 = L22_3.WindowMarkerSetting
            L22_3 = L22_3.scale
            L22_3 = L22_3[3]
            L23_3 = Config
            L23_3 = L23_3.WindowMarkerSetting
            L23_3 = L23_3.acviteColor
            L23_3 = L23_3[1]
            L24_3 = Config
            L24_3 = L24_3.WindowMarkerSetting
            L24_3 = L24_3.acviteColor
            L24_3 = L24_3[2]
            L25_3 = Config
            L25_3 = L25_3.WindowMarkerSetting
            L25_3 = L25_3.acviteColor
            L25_3 = L25_3[3]
            L26_3 = Config
            L26_3 = L26_3.WindowMarkerSetting
            L26_3 = L26_3.acviteColor
            L26_3 = L26_3[4]
            L27_3 = false
            L28_3 = true
            L29_3 = 2
            L30_3 = false
            L31_3 = false
            L32_3 = false
            L33_3 = false
            L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
            L11_3 = ShowHelpNotification
            L12_3 = Config
            L12_3 = L12_3.Lang
            L12_3 = L12_3.cleanWindowInfo
            L11_3(L12_3)
            L11_3 = IsControlJustReleased
            L12_3 = 0
            L13_3 = 38
            L11_3 = L11_3(L12_3, L13_3)
            if L11_3 and not L0_3 then
              L0_3 = true
              L11_3 = StartCleaning
              L12_3 = L3_3.id
              L11_3(L12_3)
              L11_3 = Citizen
              L11_3 = L11_3.Wait
              L12_3 = 100
              L11_3(L12_3)
            end
          end
        end
      end
      if not L2_3 then
        L4_3 = TriggerServerEvent
        L5_3 = "17mov_Cleaner:exitSession"
        L6_3 = A2_2
        L7_3 = false
        L8_3 = false
        L9_3 = true
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
        break
      end
    end
  end
  L4_2(L5_2)
end
L32_1(L33_1, L34_1)
L32_1 = nil
function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L32_1
  if L1_2 == A0_2 then
    L1_2 = Config
    L1_2 = L1_2.Debug
    if nil ~= L1_2 then
      L1_2 = print
      L2_2 = "REJECTING"
      L1_2(L2_2)
    end
    return
  end
  L32_1 = A0_2
  L1_2 = Config
  L1_2 = L1_2.Debug
  if nil ~= L1_2 then
    L1_2 = print
    L2_2 = "STARTING CLEANING ID: "
    L3_2 = A0_2
    L4_2 = ", Last ID is: "
    L5_2 = L32_1
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = false
  L2_2 = TriggerServerCallback
  L3_2 = "17mov_cleaner:isThisWindowisFree"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = Config
    L1_3 = L1_3.Debug
    if nil ~= L1_3 then
      L1_3 = print
      L2_3 = "CALLBACK RESPONSE: "
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    if A0_3 then
      L1_3 = A0_2
      L9_1 = L1_3
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "startCleaning"
      L1_3(L2_3)
      L1_3 = SetNuiFocus
      L2_3 = true
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = TaskStartScenarioInPlace
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = "WORLD_HUMAN_MAID_CLEAN"
      L4_3 = 0
      L5_3 = true
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 300
      L1_3(L2_3)
      L1_3 = GetGamePool
      L2_3 = "CObject"
      L1_3 = L1_3(L2_3)
      if nil ~= L1_3 then
        L2_3 = type
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        if "table" == L2_3 then
          L2_3 = pairs
          L3_3 = GetGamePool
          L4_3 = "CObject"
          L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L3_3(L4_3)
          L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
            if nil ~= L7_3 then
              L8_3 = GetEntityModel
              L9_3 = L7_3
              L8_3 = L8_3(L9_3)
              if 679927467 == L8_3 then
                L8_3 = SetEntityAsMissionEntity
                L9_3 = L7_3
                L10_3 = true
                L11_3 = true
                L8_3(L9_3, L10_3, L11_3)
                L8_3 = DeleteObject
                L9_3 = L7_3
                L8_3(L9_3)
                L8_3 = DeleteEntity
                L9_3 = L7_3
                L8_3(L9_3)
              end
            end
          end
        end
      end
    else
      L1_3 = Notify
      L2_3 = Config
      L2_3 = L2_3.Lang
      L2_3 = L2_3.someoneIsAlreadyCleaning
      L1_3(L2_3)
    end
    L1_3 = Config
    L1_3 = L1_3.Debug
    if nil ~= L1_3 then
      L1_3 = print
      L2_3 = "SETTING READY AS TRUE: "
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L1_3 = true
    L1_2 = L1_3
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3
    L0_3 = Citizen
    L0_3 = L0_3.Wait
    L1_3 = 1500
    L0_3(L1_3)
    L0_3 = nil
    L32_1 = L0_3
  end
  L2_2(L3_2)
end
StartCleaning = L33_1
L33_1 = RegisterNUICallback
L34_1 = "stopCleaning"
function L35_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerServerEvent
  L1_2 = "17mov_Cleaner:enableThisWindow"
  L2_2 = L9_1
  L0_2(L1_2, L2_2)
  L0_2 = stopCleaningAnim
  L0_2()
end
L33_1(L34_1, L35_1)
function L33_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = ClearPedTasksImmediately
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
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
          L7_2 = GetEntityModel
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          if 679927467 == L7_2 then
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
stopCleaningAnim = L33_1
L33_1 = RegisterNUICallback
L34_1 = "endCleaning"
function L35_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = stopCleaningAnim
  L0_2()
  L0_2 = TriggerServerEvent
  L1_2 = "17mov_cleaner:ThisWindowReady"
  L2_2 = L3_1
  L3_2 = L9_1
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = 0
  L9_1 = L0_2
end
L33_1(L34_1, L35_1)
L33_1 = RegisterNetEvent
L34_1 = "17mov_Cleaner:disableWindow"
function L35_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "updateCounter"
  L3_2.value = A1_2
  L2_2(L3_2)
  L2_2 = Config
  L2_2 = L2_2.JobLocations
  L3_2 = L3_1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.windowsLocations
  L2_2 = L2_2[A0_2]
  L2_2.dirty = false
  L2_2 = GetGamePool
  L3_2 = "CObject"
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L3_2 = type
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 then
      L3_2 = pairs
      L4_2 = GetGamePool
      L5_2 = "CObject"
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2(L5_2)
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        if nil ~= L8_2 then
          L9_2 = GetEntityModel
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          if 679927467 == L9_2 then
            L9_2 = SetEntityAsMissionEntity
            L10_2 = L8_2
            L11_2 = true
            L12_2 = true
            L9_2(L10_2, L11_2, L12_2)
            L9_2 = DeleteObject
            L10_2 = L8_2
            L9_2(L10_2)
            L9_2 = DeleteEntity
            L10_2 = L8_2
            L9_2(L10_2)
          end
        end
      end
    end
  end
end
L33_1(L34_1, L35_1)
L33_1 = RegisterNetEvent
L34_1 = "17mov_Cleaner:exitPlatform"
function L35_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = GetEntityCoords
  L6_2 = PlayerPedId
  L6_2, L7_2, L8_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = Config
  L6_2 = L6_2.JobLocations
  L7_2 = L3_1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.enterCoords
  L5_2 = L5_2 - L6_2
  L5_2 = #L5_2
  L6_2 = 350.0
  if L5_2 > L6_2 and A1_2 ~= A3_2 then
    return
  end
  L5_2 = DoScreenFadeOut
  L6_2 = 50
  L5_2(L6_2)
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 250
  L5_2(L6_2)
  L5_2 = SetEntityCoords
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = Config
  L7_2 = L7_2.JobLocations
  L7_2 = L7_2[A2_2]
  L7_2 = L7_2.enterCoords
  L5_2(L6_2, L7_2)
  L5_2 = FreezeEntityPosition
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = false
  L4_1 = L5_2
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 2500
  L5_2(L6_2)
  L5_2 = DoScreenFadeIn
  L6_2 = 250
  L5_2(L6_2)
  L5_2 = FreezeEntityPosition
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 250
  L5_2(L6_2)
  L5_2 = DeleteHamper
  L6_2 = Config
  L6_2 = L6_2.JobLocations
  L6_2 = L6_2[A2_2]
  L5_2(L6_2)
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 250
  L5_2(L6_2)
  L5_2 = SetNewWaypoint
  L6_2 = Config
  L6_2 = L6_2.Locations
  L6_2 = L6_2.FinishJob
  L6_2 = L6_2.Coords
  L6_2 = L6_2[1]
  L6_2 = L6_2.x
  L7_2 = Config
  L7_2 = L7_2.Locations
  L7_2 = L7_2.FinishJob
  L7_2 = L7_2.Coords
  L7_2 = L7_2[1]
  L7_2 = L7_2.y
  L5_2(L6_2, L7_2)
  L5_2 = CreateTargetBlip
  L6_2 = Config
  L6_2 = L6_2.Locations
  L6_2 = L6_2.FinishJob
  L6_2 = L6_2.Coords
  L6_2 = L6_2[1]
  L6_2 = L6_2.x
  L7_2 = Config
  L7_2 = L7_2.Locations
  L7_2 = L7_2.FinishJob
  L7_2 = L7_2.Coords
  L7_2 = L7_2[1]
  L7_2 = L7_2.y
  L8_2 = Config
  L8_2 = L8_2.Locations
  L8_2 = L8_2.FinishJob
  L8_2 = L8_2.Coords
  L8_2 = L8_2[1]
  L8_2 = L8_2.z
  L5_2(L6_2, L7_2, L8_2)
end
L33_1(L34_1, L35_1)
L33_1 = true
function L34_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L33_1
  if not L0_2 then
    return
  end
  L0_2 = false
  L33_1 = L0_2
  L0_2 = GetPedInVehicleSeat
  L1_2 = GetVehiclePedIsIn
  L2_2 = PlayerPedId
  L2_2, L3_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2)
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
      L33_1 = L0_2
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
    L1_2 = DeleteVehicleByCore
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = TriggerServerEvent
    L2_2 = "17mov_Cleaner:endJob_sv"
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = true
    L33_1 = L1_2
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
  L33_1 = L1_2
end
EndJob = L34_1
L34_1 = RegisterNetEvent
L35_1 = "17mov_Cleaner:endJob_cl"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "17mov_Cleaner:endJob_cl"
function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = RemoveKeys
  if nil ~= L0_2 then
    L0_2 = RemoveKeys
    L0_2()
  end
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
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
  L0_2 = Config
  L0_2 = L0_2.RequireWorkClothes
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.EnableCloakroom
    if not L0_2 then
      L0_2 = false
      L31_1 = L0_2
      L0_2 = ChangeClothes
      L1_2 = "citizen"
      L0_2(L1_2)
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
  L1_2.action = "hideCounter"
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "updateCounter"
  L1_2.value = 0
  L0_2(L1_2)
  L0_2 = L3_1
  if -1 ~= L0_2 then
    L0_2 = pairs
    L1_2 = Config
    L1_2 = L1_2.JobLocations
    L2_2 = L3_1
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.windowsLocations
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L5_2.dirty = true
    end
  end
  L0_2 = -1
  L1_2 = false
  L2_2 = -1
  L3_2 = -1
  L4_2 = -1
  L10_1 = L4_2
  L9_1 = L3_2
  L3_1 = L2_2
  OnDuty = L1_2
  endingBlip = L0_2
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 150
  L0_2(L1_2)
  L0_2 = DoesBlipExist
  L1_2 = L22_1
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = RemoveBlip
    L1_2 = L22_1
    L0_2(L1_2)
  end
end
L34_1(L35_1, L36_1)
L34_1 = {}
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = false
  L11_1 = L0_2
  L0_2 = DeleteObject
  L1_2 = L5_1
  L0_2(L1_2)
  L0_2 = DeleteObject
  L1_2 = L6_1
  L0_2(L1_2)
  L0_2 = 1
  L1_2 = L34_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = DeleteRope
    L5_2 = L34_1
    L5_2 = L5_2[L3_2]
    L4_2(L5_2)
  end
end
DeleteHamper = L35_1
function L35_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L3_2 = pairs
  L4_2 = Config
  L4_2 = L4_2.JobLocations
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.hamperMaxZ
    L9_2 = L9_2 - 0.5
    L8_2.hamperMaxZ = L9_2
    L9_2 = vec3
    L10_2 = L8_2.exitCoords
    L10_2 = L10_2.x
    L11_2 = L8_2.exitCoords
    L11_2 = L11_2.y
    L12_2 = L8_2.exitCoords
    L12_2 = L12_2.z
    L12_2 = L12_2 - 0.5
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2.exitCoords = L9_2
  end
  L3_2 = true
  L11_1 = L3_2
  while true do
    L3_2 = HasModelLoaded
    L4_2 = A0_2.hamperModel
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = RequestModel
    L4_2 = A0_2.hamperModel
    L3_2(L4_2)
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 10
    L3_2(L4_2)
  end
  while true do
    L3_2 = HasModelLoaded
    L4_2 = A0_2.handleModel
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = RequestModel
    L4_2 = A0_2.handleModel
    L3_2(L4_2)
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 10
    L3_2(L4_2)
  end
  L3_2 = CreateObject
  L4_2 = A0_2.handleModel
  L5_2 = A0_2.handleCoords
  L6_2 = false
  L7_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = SetEntityRotation
  L5_2 = L3_2
  L6_2 = A0_2.handleRotation
  L6_2 = L6_2.x
  L7_2 = A0_2.handleRotation
  L7_2 = L7_2.y
  L8_2 = A0_2.handleRotation
  L8_2 = L8_2.z
  L9_2 = 0
  L10_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = FreezeEntityPosition
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.handleCoords
  L5_2 = GetEntityForwardVector
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.hamperForwardOffsetFromHandle
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 + L5_2
  L5_2 = vec3
  L6_2 = L4_2.x
  L7_2 = L4_2.y
  L8_2 = A0_2.hamperMaxZ
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = CreateObjectNoOffset
  L7_2 = A0_2.hamperModel
  L8_2 = L5_2
  L9_2 = false
  L10_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L5_1 = L6_2
  L13_1 = A0_2
  L6_2 = Config
  L6_2 = L6_2.Debug
  if nil ~= L6_2 then
    L6_2 = print
    L7_2 = "hamperObj: "
    L8_2 = L5_1
    L9_2 = GetEntityCoords
    L10_2 = L5_1
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L9_2(L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  end
  while true do
    L6_2 = GetEntityCoords
    L7_2 = L5_1
    L6_2 = L6_2(L7_2)
    L7_2 = vec3
    L8_2 = L4_2.x
    L9_2 = L4_2.y
    L10_2 = A0_2.hamperMaxZ
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L6_2 - L7_2
    L6_2 = #L6_2
    if not (L6_2 > 1.0) then
      break
    end
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 100
    L6_2(L7_2)
    L6_2 = DeleteEntity
    L7_2 = L5_1
    L6_2(L7_2)
    L6_2 = CreateObjectNoOffset
    L7_2 = A0_2.hamperModel
    L8_2 = L5_2
    L9_2 = false
    L10_2 = true
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L5_1 = L6_2
    L6_2 = print
    L7_2 = "AWAITING FOR PLATFORM. THIS ISSUE CAN BE CAUSED BY ANTICHEAT OR SOMETHING THAT DELETING PROP"
    L6_2(L7_2)
  end
  L6_2 = {}
  L7_2 = {}
  L8_2 = vector3
  L9_2 = 4.84
  L10_2 = 2.96
  L11_2 = 3.42
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.handle = L8_2
  L8_2 = vector3
  L9_2 = 4.87
  L10_2 = 0.012
  L11_2 = 1.4
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.hamper = L8_2
  L8_2 = {}
  L9_2 = vector3
  L10_2 = -4.84
  L11_2 = 2.96
  L12_2 = 3.42
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.handle = L9_2
  L9_2 = vector3
  L10_2 = -4.87
  L11_2 = 0.012
  L12_2 = 1.4
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.hamper = L9_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L7_2 = RopeLoadTextures
  L7_2()
  L7_2 = 1
  L8_2 = #L6_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = GetOffsetFromEntityInWorldCoords
    L12_2 = L3_2
    L13_2 = L6_2[L10_2]
    L13_2 = L13_2.handle
    L13_2 = L13_2.x
    L14_2 = L6_2[L10_2]
    L14_2 = L14_2.handle
    L14_2 = L14_2.y
    L15_2 = L6_2[L10_2]
    L15_2 = L15_2.handle
    L15_2 = L15_2.z
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    L12_2 = GetOffsetFromEntityInWorldCoords
    L13_2 = L5_1
    L14_2 = L6_2[L10_2]
    L14_2 = L14_2.hamper
    L14_2 = L14_2.x
    L15_2 = L6_2[L10_2]
    L15_2 = L15_2.hamper
    L15_2 = L15_2.y
    L16_2 = L6_2[L10_2]
    L16_2 = L16_2.hamper
    L16_2 = L16_2.z
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    L13_2 = vector3
    L14_2 = L12_2.x
    L15_2 = L12_2.y
    L16_2 = A0_2.hamperMinZ
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L14_2 = vector3
    L15_2 = L12_2.x
    L16_2 = L12_2.y
    L17_2 = A0_2.hamperMaxZ
    L14_2 = L14_2(L15_2, L16_2, L17_2)
    L15_2 = GetDistanceBetweenCoords
    L16_2 = L14_2.x
    L17_2 = L14_2.y
    L18_2 = L14_2.z
    L19_2 = L11_2.x
    L20_2 = L11_2.y
    L21_2 = L11_2.z
    L22_2 = true
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L16_2 = L34_1
    L17_2 = AddRope
    L18_2 = L12_2.x
    L19_2 = L12_2.y
    L20_2 = L12_2.z
    L21_2 = 0.0
    L22_2 = 0.0
    L23_2 = 0.0
    L24_2 = 0.3
    L25_2 = 4
    L26_2 = 0.5
    L27_2 = 0.5
    L28_2 = 100.0
    L29_2 = false
    L30_2 = false
    L31_2 = false
    L32_2 = 0.0
    L33_2 = false
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
    L16_2[L10_2] = L17_2
    L16_2 = AttachEntitiesToRope
    L17_2 = L34_1
    L17_2 = L17_2[L10_2]
    L18_2 = L3_2
    L19_2 = L5_1
    L20_2 = L11_2.x
    L21_2 = L11_2.y
    L22_2 = L11_2.z
    L23_2 = L12_2.x
    L24_2 = L12_2.y
    L25_2 = L12_2.z
    L26_2 = 0.5
    L27_2 = true
    L28_2 = true
    L29_2 = 0
    L30_2 = 0
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  end
  L7_2 = SetEntityRotation
  L8_2 = L5_1
  L9_2 = A0_2.handleRotation
  L9_2 = L9_2.x
  L10_2 = A0_2.handleRotation
  L10_2 = L10_2.y
  L11_2 = A0_2.handleRotation
  L11_2 = L11_2.z
  L12_2 = 0
  L13_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L5_1
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = SetEntityCoords
  L8_2 = L5_1
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  if A2_2 then
    L7_2 = false
    L8_2 = false
    L9_2 = CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = 0
      while true do
        L1_3 = L11_1
        if not L1_3 then
          break
        end
        L1_3 = Citizen
        L1_3 = L1_3.Wait
        L2_3 = 0
        L1_3(L2_3)
        L1_3 = IsControlPressed
        L2_3 = 0
        L3_3 = Config
        L3_3 = L3_3.HamperGoUpControl
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L1_3 = GetEntityCoords
          L2_3 = L5_1
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.z
          L1_3 = L1_3 + 0.01
          L2_3 = A0_2.hamperMaxZ
          if L1_3 < L2_3 then
            L2_3 = A0_2.hamperMinZ
            if L1_3 > L2_3 then
              L2_3 = L7_2
              if not L2_3 then
                L2_3 = L8_1
                if not L2_3 then
                  L2_3 = L7_1
                  if not L2_3 then
                    L2_3 = true
                    L7_2 = L2_3
                    L2_3 = GetGameTimer
                    L2_3 = L2_3()
                    L0_3 = L2_3
                    L2_3 = TriggerServerEvent
                    L3_3 = "17mov_cleaner:StartHamperTop"
                    L2_3(L3_3)
                end
              end
              else
                L2_3 = L7_2
                if L2_3 then
                  L2_3 = GetGameTimer
                  L2_3 = L2_3()
                  L2_3 = L2_3 - L0_3
                  L3_3 = 200
                  if L2_3 > L3_3 then
                    L2_3 = GetGameTimer
                    L2_3 = L2_3()
                    L0_3 = L2_3
                    L2_3 = TriggerServerEvent
                    L3_3 = "17mov_cleaner:StartHamperTop"
                    L2_3(L3_3)
                  end
                end
              end
            end
          end
        else
          L1_3 = L7_2
          if L1_3 then
            L1_3 = TriggerServerEvent
            L2_3 = "17mov_cleaner:StopHamperTop"
            L3_3 = GetEntityCoords
            L4_3 = L5_1
            L3_3, L4_3 = L3_3(L4_3)
            L1_3(L2_3, L3_3, L4_3)
            L1_3 = false
            L7_2 = L1_3
          end
        end
      end
    end
    L9_2(L10_2)
    L9_2 = CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = 0
      while true do
        L1_3 = L11_1
        if not L1_3 then
          break
        end
        L1_3 = Citizen
        L1_3 = L1_3.Wait
        L2_3 = 0
        L1_3(L2_3)
        L1_3 = IsControlPressed
        L2_3 = 0
        L3_3 = Config
        L3_3 = L3_3.HamperGoDownControl
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L1_3 = GetEntityCoords
          L2_3 = L5_1
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.z
          L1_3 = L1_3 - 0.01
          L2_3 = A0_2.hamperMaxZ
          if L1_3 < L2_3 then
            L2_3 = A0_2.hamperMinZ
            if L1_3 > L2_3 then
              L2_3 = L8_2
              if not L2_3 then
                L2_3 = L7_1
                if not L2_3 then
                  L2_3 = L8_1
                  if not L2_3 then
                    L2_3 = TriggerServerEvent
                    L3_3 = "17mov_cleaner:StartHamperBottom"
                    L2_3(L3_3)
                    L2_3 = true
                    L8_2 = L2_3
                    L2_3 = GetGameTimer
                    L2_3 = L2_3()
                    L0_3 = L2_3
                end
              end
              else
                L2_3 = L8_2
                if L2_3 then
                  L2_3 = GetGameTimer
                  L2_3 = L2_3()
                  L2_3 = L2_3 - L0_3
                  L3_3 = 200
                  if L2_3 > L3_3 then
                    L2_3 = GetGameTimer
                    L2_3 = L2_3()
                    L0_3 = L2_3
                    L2_3 = TriggerServerEvent
                    L3_3 = "17mov_cleaner:StartHamperBottom"
                    L2_3(L3_3)
                  end
                end
              end
            end
          end
        else
          L1_3 = L8_2
          if L1_3 then
            L1_3 = false
            L8_2 = L1_3
            L1_3 = TriggerServerEvent
            L2_3 = "17mov_cleaner:StopHamperBottom"
            L3_3 = GetEntityCoords
            L4_3 = L5_1
            L3_3, L4_3 = L3_3(L4_3)
            L1_3(L2_3, L3_3, L4_3)
          end
        end
      end
    end
    L9_2(L10_2)
  end
end
SpawnHamper = L35_1
L35_1 = RegisterNetEvent
L36_1 = "17mov_Cleaner:StartHostPlatformCode"
function L37_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L4_1
  if L0_2 then
    L0_2 = Notify
    L1_2 = Config
    L1_2 = L1_2.Lang
    L1_2 = L1_2.youCanControl
    L0_2(L1_2)
    L0_2 = false
    L1_2 = false
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = 0
      while true do
        L1_3 = L11_1
        if not L1_3 then
          break
        end
        L1_3 = Citizen
        L1_3 = L1_3.Wait
        L2_3 = 0
        L1_3(L2_3)
        L1_3 = IsControlPressed
        L2_3 = 0
        L3_3 = Config
        L3_3 = L3_3.HamperGoUpControl
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L1_3 = GetEntityCoords
          L2_3 = L5_1
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.z
          L1_3 = L1_3 + 0.01
          L2_3 = L13_1.hamperMaxZ
          if L1_3 < L2_3 then
            L2_3 = L13_1.hamperMinZ
            if L1_3 > L2_3 then
              L2_3 = L0_2
              if not L2_3 then
                L2_3 = L8_1
                if not L2_3 then
                  L2_3 = L7_1
                  if not L2_3 then
                    L2_3 = true
                    L0_2 = L2_3
                    L2_3 = GetGameTimer
                    L2_3 = L2_3()
                    L0_3 = L2_3
                    L2_3 = TriggerServerEvent
                    L3_3 = "17mov_cleaner:StartHamperTop"
                    L2_3(L3_3)
                end
              end
              else
                L2_3 = L0_2
                if L2_3 then
                  L2_3 = GetGameTimer
                  L2_3 = L2_3()
                  L2_3 = L2_3 - L0_3
                  L3_3 = 200
                  if L2_3 > L3_3 then
                    L2_3 = GetGameTimer
                    L2_3 = L2_3()
                    L0_3 = L2_3
                    L2_3 = TriggerServerEvent
                    L3_3 = "17mov_cleaner:StartHamperTop"
                    L2_3(L3_3)
                  end
                end
              end
            end
          end
        else
          L1_3 = L0_2
          if L1_3 then
            L1_3 = TriggerServerEvent
            L2_3 = "17mov_cleaner:StopHamperTop"
            L3_3 = GetEntityCoords
            L4_3 = L5_1
            L3_3, L4_3 = L3_3(L4_3)
            L1_3(L2_3, L3_3, L4_3)
            L1_3 = false
            L0_2 = L1_3
          end
        end
      end
    end
    L2_2(L3_2)
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = 0
      while true do
        L1_3 = L11_1
        if not L1_3 then
          break
        end
        L1_3 = Citizen
        L1_3 = L1_3.Wait
        L2_3 = 0
        L1_3(L2_3)
        L1_3 = IsControlPressed
        L2_3 = 0
        L3_3 = Config
        L3_3 = L3_3.HamperGoDownControl
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L1_3 = GetEntityCoords
          L2_3 = L5_1
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.z
          L1_3 = L1_3 - 0.01
          L2_3 = L13_1.hamperMaxZ
          if L1_3 < L2_3 then
            L2_3 = L13_1.hamperMinZ
            if L1_3 > L2_3 then
              L2_3 = L1_2
              if not L2_3 then
                L2_3 = L7_1
                if not L2_3 then
                  L2_3 = L8_1
                  if not L2_3 then
                    L2_3 = TriggerServerEvent
                    L3_3 = "17mov_cleaner:StartHamperBottom"
                    L2_3(L3_3)
                    L2_3 = true
                    L1_2 = L2_3
                    L2_3 = GetGameTimer
                    L2_3 = L2_3()
                    L0_3 = L2_3
                end
              end
              else
                L2_3 = L1_2
                if L2_3 then
                  L2_3 = GetGameTimer
                  L2_3 = L2_3()
                  L2_3 = L2_3 - L0_3
                  L3_3 = 200
                  if L2_3 > L3_3 then
                    L2_3 = GetGameTimer
                    L2_3 = L2_3()
                    L0_3 = L2_3
                    L2_3 = TriggerServerEvent
                    L3_3 = "17mov_cleaner:StartHamperBottom"
                    L2_3(L3_3)
                  end
                end
              end
            end
          end
        else
          L1_3 = L1_2
          if L1_3 then
            L1_3 = false
            L1_2 = L1_3
            L1_3 = TriggerServerEvent
            L2_3 = "17mov_cleaner:StopHamperBottom"
            L3_3 = GetEntityCoords
            L4_3 = L5_1
            L3_3, L4_3 = L3_3(L4_3)
            L1_3(L2_3, L3_3, L4_3)
          end
        end
      end
    end
    L2_2(L3_2)
  end
end
L35_1(L36_1, L37_1)
L35_1 = nil
L36_1 = RegisterNetEvent
L37_1 = "17mov_cleaner:startHamperTop"
function L38_1()
  local L0_2, L1_2
  L0_2 = true
  L8_1 = L0_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L35_1 = L0_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = L26_1
    L0_3()
    while true do
      L0_3 = L8_1
      if not L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 100
      L0_3(L1_3)
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = L35_1
      L0_3 = L0_3 - L1_3
      L1_3 = 1000
      if L0_3 > L1_3 then
        L0_3 = false
        L8_1 = L0_3
        L0_3 = TriggerServerCallback
        L1_3 = "17mov_Cleaner:GetMyHamperCoords"
        function L2_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
          L1_4 = GetEntityCoords
          L2_4 = L5_1
          L1_4 = L1_4(L2_4)
          L2_4 = A0_4.z
          L3_4 = L1_4.z
          if L2_4 > L3_4 then
            while true do
              L4_4 = GetEntityCoords
              L5_4 = L5_1
              L4_4 = L4_4(L5_4)
              L4_4 = L4_4.z
              if not (L2_4 > L4_4) then
                break
              end
              L4_4 = Citizen
              L4_4 = L4_4.Wait
              L5_4 = 0
              L4_4(L5_4)
              L4_4 = GetEntityCoords
              L5_4 = L5_1
              L4_4 = L4_4(L5_4)
              L3_4 = L4_4
              L4_4 = SetEntityCoords
              L5_4 = L5_1
              L6_4 = L1_4.xy
              L7_4 = GetEntityCoords
              L8_4 = L5_1
              L7_4 = L7_4(L8_4)
              L7_4 = L7_4.z
              L7_4 = L7_4 + 0.01
              L4_4(L5_4, L6_4, L7_4)
            end
          else
            while true do
              L4_4 = GetEntityCoords
              L5_4 = L5_1
              L4_4 = L4_4(L5_4)
              L4_4 = L4_4.z
              if not (L2_4 < L4_4) then
                break
              end
              L4_4 = Citizen
              L4_4 = L4_4.Wait
              L5_4 = 0
              L4_4(L5_4)
              L4_4 = GetEntityCoords
              L5_4 = L5_1
              L4_4 = L4_4(L5_4)
              L3_4 = L4_4
              L4_4 = SetEntityCoords
              L5_4 = L5_1
              L6_4 = L1_4.xy
              L7_4 = GetEntityCoords
              L8_4 = L5_1
              L7_4 = L7_4(L8_4)
              L7_4 = L7_4.z
              L7_4 = L7_4 - 0.01
              L4_4(L5_4, L6_4, L7_4)
            end
          end
        end
        L0_3(L1_3, L2_3)
      end
    end
    L0_3 = L27_1
    L1_3 = GetEntityCoords
    L2_3 = L5_1
    L1_3, L2_3 = L1_3(L2_3)
    L0_3(L1_3, L2_3)
  end
  L0_2(L1_2)
end
L36_1(L37_1, L38_1)
L36_1 = false
L37_1 = RegisterNetEvent
L38_1 = "17mov_cleaner:stopHamperTop"
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L8_1 = L1_2
  L1_2 = GetEntityCoords
  L2_2 = L5_1
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.z
  L3_2 = L1_2.z
  L4_2 = L36_1
  if not L4_2 then
    L4_2 = true
    L36_1 = L4_2
    if L2_2 > L3_2 then
      while true do
        L4_2 = GetEntityCoords
        L5_2 = L5_1
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2.z
        if not (L2_2 > L4_2) then
          break
        end
        L4_2 = Citizen
        L4_2 = L4_2.Wait
        L5_2 = 0
        L4_2(L5_2)
        L4_2 = GetEntityCoords
        L5_2 = L5_1
        L4_2 = L4_2(L5_2)
        L3_2 = L4_2
        L4_2 = SetEntityCoords
        L5_2 = L5_1
        L6_2 = L1_2.xy
        L7_2 = GetEntityCoords
        L8_2 = L5_1
        L7_2 = L7_2(L8_2)
        L7_2 = L7_2.z
        L7_2 = L7_2 + 0.01
        L4_2(L5_2, L6_2, L7_2)
      end
    else
      while true do
        L4_2 = GetEntityCoords
        L5_2 = L5_1
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2.z
        if not (L2_2 < L4_2) then
          break
        end
        L4_2 = Citizen
        L4_2 = L4_2.Wait
        L5_2 = 0
        L4_2(L5_2)
        L4_2 = GetEntityCoords
        L5_2 = L5_1
        L4_2 = L4_2(L5_2)
        L3_2 = L4_2
        L4_2 = SetEntityCoords
        L5_2 = L5_1
        L6_2 = L1_2.xy
        L7_2 = GetEntityCoords
        L8_2 = L5_1
        L7_2 = L7_2(L8_2)
        L7_2 = L7_2.z
        L7_2 = L7_2 - 0.01
        L4_2(L5_2, L6_2, L7_2)
      end
    end
    L4_2 = false
    L36_1 = L4_2
  end
end
L37_1(L38_1, L39_1)
L37_1 = nil
L38_1 = RegisterNetEvent
L39_1 = "17mov_cleaner:startHamperBottom"
function L40_1()
  local L0_2, L1_2
  L0_2 = true
  L7_1 = L0_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L37_1 = L0_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = L26_1
    L0_3()
    while true do
      L0_3 = L7_1
      if not L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 100
      L0_3(L1_3)
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = L37_1
      L0_3 = L0_3 - L1_3
      L1_3 = 1000
      if L0_3 > L1_3 then
        L0_3 = false
        L7_1 = L0_3
        L0_3 = TriggerServerCallback
        L1_3 = "17mov_Cleaner:GetMyHamperCoords"
        function L2_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
          L1_4 = GetEntityCoords
          L2_4 = L5_1
          L1_4 = L1_4(L2_4)
          L2_4 = A0_4.z
          L3_4 = L1_4.z
          if L2_4 > L3_4 then
            while true do
              L4_4 = GetEntityCoords
              L5_4 = L5_1
              L4_4 = L4_4(L5_4)
              L4_4 = L4_4.z
              if not (L2_4 > L4_4) then
                break
              end
              L4_4 = Citizen
              L4_4 = L4_4.Wait
              L5_4 = 0
              L4_4(L5_4)
              L4_4 = GetEntityCoords
              L5_4 = L5_1
              L4_4 = L4_4(L5_4)
              L3_4 = L4_4
              L4_4 = SetEntityCoords
              L5_4 = L5_1
              L6_4 = L1_4.xy
              L7_4 = GetEntityCoords
              L8_4 = L5_1
              L7_4 = L7_4(L8_4)
              L7_4 = L7_4.z
              L7_4 = L7_4 + 0.01
              L4_4(L5_4, L6_4, L7_4)
            end
          else
            while true do
              L4_4 = GetEntityCoords
              L5_4 = L5_1
              L4_4 = L4_4(L5_4)
              L4_4 = L4_4.z
              if not (L2_4 < L4_4) then
                break
              end
              L4_4 = Citizen
              L4_4 = L4_4.Wait
              L5_4 = 0
              L4_4(L5_4)
              L4_4 = GetEntityCoords
              L5_4 = L5_1
              L4_4 = L4_4(L5_4)
              L3_4 = L4_4
              L4_4 = SetEntityCoords
              L5_4 = L5_1
              L6_4 = L1_4.xy
              L7_4 = GetEntityCoords
              L8_4 = L5_1
              L7_4 = L7_4(L8_4)
              L7_4 = L7_4.z
              L7_4 = L7_4 - 0.01
              L4_4(L5_4, L6_4, L7_4)
            end
          end
        end
        L0_3(L1_3, L2_3)
      end
    end
    L0_3 = L27_1
    L1_3 = GetEntityCoords
    L2_3 = L5_1
    L1_3, L2_3 = L1_3(L2_3)
    L0_3(L1_3, L2_3)
  end
  L0_2(L1_2)
end
L38_1(L39_1, L40_1)
L38_1 = false
L39_1 = RegisterNetEvent
L40_1 = "17mov_cleaner:stopHamperBottom"
function L41_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L7_1 = L1_2
  L1_2 = GetEntityCoords
  L2_2 = L5_1
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.z
  L3_2 = L1_2.z
  L4_2 = L38_1
  if not L4_2 then
    L4_2 = true
    L38_1 = L4_2
    if L2_2 > L3_2 then
      while true do
        L4_2 = GetEntityCoords
        L5_2 = L5_1
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2.z
        if not (L2_2 > L4_2) then
          break
        end
        L4_2 = Citizen
        L4_2 = L4_2.Wait
        L5_2 = 0
        L4_2(L5_2)
        L4_2 = GetEntityCoords
        L5_2 = L5_1
        L4_2 = L4_2(L5_2)
        L3_2 = L4_2
        L4_2 = SetEntityCoords
        L5_2 = L5_1
        L6_2 = L1_2.xy
        L7_2 = GetEntityCoords
        L8_2 = L5_1
        L7_2 = L7_2(L8_2)
        L7_2 = L7_2.z
        L7_2 = L7_2 + 0.01
        L4_2(L5_2, L6_2, L7_2)
      end
    else
      while true do
        L4_2 = GetEntityCoords
        L5_2 = L5_1
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2.z
        if not (L2_2 < L4_2) then
          break
        end
        L4_2 = Citizen
        L4_2 = L4_2.Wait
        L5_2 = 0
        L4_2(L5_2)
        L4_2 = GetEntityCoords
        L5_2 = L5_1
        L4_2 = L4_2(L5_2)
        L3_2 = L4_2
        L4_2 = SetEntityCoords
        L5_2 = L5_1
        L6_2 = L1_2.xy
        L7_2 = GetEntityCoords
        L8_2 = L5_1
        L7_2 = L7_2(L8_2)
        L7_2 = L7_2.z
        L7_2 = L7_2 - 0.01
        L4_2(L5_2, L6_2, L7_2)
      end
    end
    L4_2 = false
    L38_1 = L4_2
  end
end
L39_1(L40_1, L41_1)
L39_1 = RegisterNUICallback
L40_1 = "acceptWarning"
function L41_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_Cleaner:endJob_sv"
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
L39_1(L40_1, L41_1)

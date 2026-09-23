local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1
L0_1 = nil
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = false
L6_1 = false
L7_1 = false
L8_1 = false
L9_1 = false
L10_1 = {}
L11_1 = 0
L12_1 = {}
L13_1 = GetPlayerServerId
L14_1 = PlayerId
L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1 = L14_1()
L13_1 = L13_1(L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1)
L14_1 = true
L15_1 = ""
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
L18_1 = Config
L18_1 = L18_1.useModernUI
if L18_1 then
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
    L15_1 = L0_2
  end
  L18_1(L19_1, L20_1)
  L18_1 = RegisterNetEvent
  L19_1 = "17mov_Electrician:UpdateHostPercentages"
  function L20_1(A0_2)
    local L1_2, L2_2
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "updateHostRewards"
    L2_2.value = A0_2
    L1_2(L2_2)
  end
  L18_1(L19_1, L20_1)
  L18_1 = RegisterNUICallback
  L19_1 = "menuClosed"
  function L20_1()
    local L0_2, L1_2, L2_2
    L0_2 = false
    L14_1 = L0_2
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
    L4_2 = L15_1
    L3_2 = L3_2 .. L4_2
    L4_2 = 1
    L2_2(L3_2, L4_2)
  end
  L18_1(L19_1, L20_1)
  L18_1 = RegisterNetEvent
  L19_1 = "17mov_Electrician:SetMyReward"
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
      L5_2 = "17mov_Electrician:CheckThisReward"
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
  L19_1 = "17mov_Electrician:clearMyLobby"
  function L20_1()
    local L0_2, L1_2, L2_2
    L0_2 = {}
    L12_1 = L0_2
    L0_2 = TriggerServerCallback
    L1_2 = "17mov_Electrician:init"
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
      L8_1 = L1_3
    end
    L0_2(L1_2, L2_2)
  end
  L18_1(L19_1, L20_1)
  L18_1 = RegisterNetEvent
  L19_1 = "17mov_Electrician:RefreshMugs"
  L18_1(L19_1)
  L18_1 = AddEventHandler
  L19_1 = "17mov_Electrician:RefreshMugs"
  function L20_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
    while true do
      L2_2 = L8_1
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
      L8_2 = L12_1
      L8_2 = L8_2[L9_2]
      if nil == L8_2 then
        L8_2 = L13_1
        L9_2 = L7_2.id
        if L8_2 == L9_2 then
          L9_2 = L7_2.id
          L8_2 = L12_1
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
          L8_2 = L12_1
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
        L10_2 = L12_1
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.itsMe
        L9_2.showQuitBtn = L10_2
        L8_2(L9_2)
      end
    end
    L2_2 = 0
    L3_2 = pairs
    L4_2 = L12_1
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
        L11_2 = L12_1
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
      L4_2 = "17mov_Electrician:init"
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
        L8_1 = L1_3
      end
      L3_2(L4_2, L5_2)
    end
    L3_2 = TriggerServerCallback
    L4_2 = "17mov_Electrician:IfPlayerOwnsTeam"
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
  L18_1(L19_1, L20_1)
else
  L18_1 = RegisterNetEvent
  L19_1 = "17mov_Electrician:RefreshMugs"
  L18_1(L19_1)
  L18_1 = AddEventHandler
  L19_1 = "17mov_Electrician:RefreshMugs"
  function L20_1(A0_2, A1_2)
    local L2_2, L3_2
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "refreshMugs"
    L3_2.names = A0_2
    L3_2.myId = A1_2
    L2_2(L3_2)
  end
  L18_1(L19_1, L20_1)
end
function L18_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L11_1
  L2_2 = L2_2 + 1
  L11_1 = L2_2
  L2_2 = L11_1
  myId = L2_2
  L2_2 = L10_1
  L3_2 = {}
  L2_2[A0_2] = L3_2
  L2_2 = L10_1
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
  L2_2 = L10_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L10_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = L10_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = ...
  L2_2(L3_2)
  L2_2 = L10_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L10_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      L2_2 = L10_1
      L2_2 = L2_2[A0_2]
      L2_2[A1_2] = nil
    end
  end
  L2_2 = L10_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L10_1
    L2_2 = L2_2[A0_2]
    L2_2 = #L2_2
    if 0 == L2_2 then
      L2_2 = L10_1
      L2_2[A0_2] = nil
    end
  end
end
L18_1(L19_1, L20_1)
L18_1 = false
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2
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
    L1_2 = {}
    L2_2 = Config
    L2_2 = L2_2.Locations
    L2_2 = L2_2.StoreVeh
    L1_2.StoreVeh = L2_2
    L2_2 = SpawnStartingPed
    L2_2()
    while true do
      L2_2 = L18_1
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
          L15_2 = L5_1
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
              L10_2 = "17mov_Electrician:ExitedMarker"
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
        L10_2 = "17mov_Electrician:EnteredMarker"
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
      end
      ::lbl_247::
      if not L4_2 and not L3_2 then
        L9_2 = HasAlreadyEnteredMarker
        if L9_2 then
          HasAlreadyEnteredMarker = false
          L9_2 = TriggerEvent
          L10_2 = "17mov_Electrician:ExitedMarker"
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
    L2_2 = DeleteEntity
    L3_2 = spawnedPed
    L2_2(L3_2)
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
          L14_2 = L5_1
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
              L9_2 = "17mov_Electrician:ExitedMarker"
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
        L9_2 = "17mov_Electrician:EnteredMarker"
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      end
      ::lbl_488::
      if not L3_2 and not L2_2 then
        L8_2 = HasAlreadyEnteredMarker
        if L8_2 then
          HasAlreadyEnteredMarker = false
          L8_2 = TriggerEvent
          L9_2 = "17mov_Electrician:ExitedMarker"
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
StartMarkers = L19_1
L19_1 = CreateThread
function L20_1()
  local L0_2, L1_2
  L0_2 = GetPlayerData
  L0_2 = L0_2()
  L4_1 = L0_2
  while true do
    L0_2 = L4_1
    if nil ~= L0_2 then
      L0_2 = L4_1.job
      if nil ~= L0_2 then
        break
      end
    end
    L0_2 = GetPlayerData
    L0_2 = L0_2()
    L4_1 = L0_2
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
    L1_2 = L4_1.job
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
  L1_2 = L4_1
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
  L4_1 = L1_2
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
        L1_2 = L4_1
        if nil ~= L1_2 then
          break
        end
        L1_2 = L4_1.job
        if nil ~= L1_2 then
          break
        end
        L1_2 = GetPlayerData
        L1_2 = L1_2()
        L4_1 = L1_2
        L1_2 = Citizen
        L1_2 = L1_2.Wait
        L2_2 = 100
        L1_2(L2_2)
      end
      L1_2 = L4_1.job
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
  L2_2 = "17mov_Electrician:init"
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
    L8_1 = L1_3
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
  L4_1 = L1_2
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RestrictBlipToRequiredJob
    if L1_2 then
      L1_2 = L4_1.job
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
    L1_2 = L4_1.job
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
    L2_2 = L4_1
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
    L1_2 = L4_1
    if nil ~= L1_2 then
      L1_2 = L4_1.job
      if nil ~= L1_2 then
        break
      end
    end
    L1_2 = GetPlayerData
    L1_2 = L1_2()
    L4_1 = L1_2
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  L4_1.job = A0_2
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RestrictBlipToRequiredJob
    if L1_2 then
      L1_2 = L4_1.job
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
    L1_2 = L4_1.job
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
    L2_2 = L4_1
    L1_2(L2_2)
  else
    L1_2 = false
    L18_1 = L1_2
  end
end
L20_1(L21_1, L22_1)
L20_1 = AddEventHandler
L21_1 = "17mov_Electrician:EnteredMarker"
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
L21_1 = "17mov_Electrician:ExitedMarker"
function L22_1(A0_2)
  local L1_2
  CurrentAction = nil
  CurrentActionMsg = nil
  CurrentActionStation = nil
end
L20_1(L21_1, L22_1)
L20_1 = RegisterCommand
L21_1 = "+MalizniakElektrykStartMarkerAction"
function L22_1()
  local L0_2, L1_2
end
L20_1(L21_1, L22_1)
L20_1 = RegisterCommand
L21_1 = "-MalizniakElektrykStartMarkerAction"
function L22_1()
  local L0_2, L1_2
  L0_2 = CurrentAction
  if nil ~= L0_2 then
    L0_2 = CurrentAction
    if "open_dutyToggle" == L0_2 then
      L0_2 = OpenDutyMenu
      L0_2()
    else
      L0_2 = CurrentAction
      if "finish_job" == L0_2 then
        L0_2 = EndJob
        L0_2()
      else
        L0_2 = CurrentAction
        if "take_car" == L0_2 then
          L0_2 = pullCar
          L0_2()
        end
      end
    end
  end
end
L20_1(L21_1, L22_1)
L20_1 = TriggerEvent
L21_1 = "chat:removeSuggestion"
L22_1 = "/+MalizniakElektrykStartMarkerAction"
L20_1(L21_1, L22_1)
L20_1 = TriggerEvent
L21_1 = "chat:removeSuggestion"
L22_1 = "/-MalizniakElektrykStartMarkerAction"
L20_1(L21_1, L22_1)
L20_1 = RegisterKeyMapping
L21_1 = "+MalizniakElektrykStartMarkerAction"
L22_1 = Config
L22_1 = L22_1.Lang
L22_1 = L22_1.keybind
if not L22_1 then
  L22_1 = "Electrician Marker Interaction"
end
L23_1 = "keyboard"
L24_1 = "E"
L20_1(L21_1, L22_1, L23_1, L24_1)
L20_1 = true
function L21_1()
  local L0_2, L1_2, L2_2
  L0_2 = L20_1
  if not L0_2 then
    return
  end
  L0_2 = false
  L20_1 = L0_2
  L0_2 = GetPedInVehicleSeat
  L1_2 = GetVehiclePedIsIn
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L1_2 = L1_2(L2_2)
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
      L20_1 = L0_2
      return
    end
  end
  L0_2 = TriggerServerCallback
  L1_2 = "17mov_Electrician:IfPlayerIsHost"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if A0_3 then
      L1_3 = GetVehiclePedIsIn
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = false
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      if nil ~= L1_3 and -1 ~= L1_3 then
        L3_3 = GetEntityModel
        L4_3 = L1_3
        L3_3 = L3_3(L4_3)
        L4_3 = GetHashKey
        L5_3 = Config
        L5_3 = L5_3.VehicleModel
        L4_3 = L4_3(L5_3)
        if L3_3 == L4_3 then
          L3_3 = DeleteVehicleByCore
          L4_3 = L1_3
          L3_3(L4_3)
          L3_3 = RemoveKeys
          if nil ~= L3_3 then
            L3_3 = RemoveKeys
            L3_3()
          end
          L3_3 = TriggerServerEvent
          L4_3 = "malizniak_electro:DeleteJobCarFromParty"
          L5_3 = true
          L3_3(L4_3, L5_3)
          L3_3 = false
          L5_1 = L3_3
          L3_3 = SetBlipRoute
          L4_3 = L2_1
          L5_3 = false
          L3_3(L4_3, L5_3)
          L3_3 = RemoveBlip
          L4_3 = L2_1
          L3_3(L4_3)
          L3_3 = true
          L20_1 = L3_3
          return
        end
      end
    else
      L1_3 = Notify
      L2_3 = Config
      L2_3 = L2_3.Lang
      L2_3 = L2_3.no_permission
      L1_3(L2_3)
    end
    L1_3 = true
    L20_1 = L1_3
    L1_3 = SetNuiFocus
    L2_3 = true
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "openWarning"
    L1_3(L2_3)
    L1_3 = true
    L20_1 = L1_3
  end
  L0_2(L1_2, L2_2)
end
EndJob = L21_1
L21_1 = RegisterNUICallback
L22_1 = "acceptWarning"
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "malizniak_electro:DeleteJobCarFromParty"
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
L21_1(L22_1, L23_1)
L21_1 = RegisterNetEvent
L22_1 = "17mov_Electrician:StopJob"
function L23_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetBlipRoute
  L1_2 = L2_1
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = RemoveBlip
  L1_2 = L2_1
  L0_2(L1_2)
  L0_2 = false
  L5_1 = L0_2
  L0_2 = Config
  L0_2 = L0_2.RequireWorkClothes
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.EnableCloakroom
    if not L0_2 then
      L0_2 = false
      L9_1 = L0_2
      L0_2 = ChangeClothes
      L1_2 = "citizen"
      L0_2(L1_2)
    end
  end
end
L21_1(L22_1, L23_1)
L21_1 = {}
L22_1 = Config
L22_1 = L22_1.useModernUI
if L22_1 then
  function L22_1()
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
    L0_2 = L8_1
    if not L0_2 then
      L0_2 = TriggerServerCallback
      L1_2 = "17mov_Electrician:init"
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
        L8_1 = L1_3
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
    L14_1 = L0_2
    L0_2 = false
    L1_2 = false
    L2_2 = false
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
      while true do
        L0_3 = L14_1
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
        L5_3 = "17mov_Electrician:GetPlayersNames"
        function L6_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4
          L1_4 = pairs
          L2_4 = A0_4
          L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
          for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
            L8_4 = L6_4.id
            L7_4 = L12_1
            L7_4 = L7_4[L8_4]
            if nil == L7_4 then
              L7_4 = true
              L3_3 = L7_4
              L8_4 = L6_4.id
              L7_4 = L21_1
              L7_4 = L7_4[L8_4]
              if nil == L7_4 then
                L8_4 = L6_4.id
                L7_4 = L21_1
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
          L2_4 = L21_1
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
              L9_4 = L21_1
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
  OpenDutyMenu = L22_1
else
  function L22_1()
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
    L0_2 = L8_1
    if not L0_2 then
      L0_2 = TriggerServerCallback
      L1_2 = "17mov_Electrician:init"
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
        L8_1 = L1_3
      end
      L0_2(L1_2, L2_2)
      L0_2 = print
      L1_2 = "SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD"
      L0_2(L1_2)
      return
    end
    L0_2 = TriggerServerCallback
    L1_2 = "17mov_Electrician:IfPlayerIsHost"
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
  OpenDutyMenu = L22_1
end
L22_1 = RegisterNUICallback
L23_1 = "changeClothes"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.type
  if "work" == L1_2 then
    L2_2 = true
    L9_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "work"
    L2_2(L3_2)
  else
    L2_2 = false
    L9_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "citizen"
    L2_2(L3_2)
  end
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "QBCore:Client:OnPlayerUnload"
function L24_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "17mov_Electrician:QBCorePlayerUnloading"
  L0_2(L1_2)
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
  L5_2 = #L4_2
  if 0 == L5_2 then
    L5_2 = Notify
    L6_2 = Config
    L6_2 = L6_2.Lang
    L6_2 = L6_2.nobodyAround
    L5_2(L6_2)
    L5_2 = A1_2
    L6_2 = {}
    L5_2(L6_2)
    return
  end
  L5_2 = TriggerServerCallback
  L6_2 = "17mov_Electrician:IfPlayerIsHost"
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = TriggerServerCallback
      L2_3 = "17mov_Electrician:GetPlayersNames"
      function L3_3(A0_4)
        local L1_4, L2_4
        L1_4 = A1_2
        L2_4 = A0_4
        L1_4(L2_4)
      end
      L4_3 = L4_2
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = Notify
      L2_3 = Config
      L2_3 = L2_3.Lang
      L2_3 = L2_3.cantInvite
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
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.boolean
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_Electrician:ClientReactRequest"
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
    L1_2 = L5_1
    if L1_2 then
      L1_2 = Notify
      L2_2 = Config
      L2_2 = L2_2.Lang
      L2_2 = L2_2.cantInvite
      L1_2(L2_2)
      return
    end
    L1_2 = TriggerServerEvent
    L2_2 = "17mov_Electrician:SendRequestToClient_sv"
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
    L5_2 = L12_1
    L5_2 = L5_2[L1_2]
    L5_2 = L5_2.name
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = TriggerServerEvent
    L3_2 = "17mov_Electrician:KickPlayerFromLobby"
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
    L1_2 = TriggerServerEvent
    L2_2 = "17mov_Electrician:SendRequestToClient_sv"
    L3_2 = A0_2.id
    L1_2(L2_2, L3_2)
  end
  L22_1(L23_1, L24_1)
  L22_1 = RegisterNUICallback
  L23_1 = "kickPlayerFromLobby"
  function L24_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2
    L1_2 = {}
    L2_2 = A0_2.id
    L1_2[1] = L2_2
    L2_2 = TriggerServerCallback
    L3_2 = "17mov_Electrician:GetPlayersNames"
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      L1_3 = Notify
      L2_3 = string
      L2_3 = L2_3.format
      L3_3 = Config
      L3_3 = L3_3.Lang
      L3_3 = L3_3.kickNotify
      L4_3 = A0_3[1]
      L4_3 = L4_3.name
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3, L4_3)
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = TriggerServerEvent
      L2_3 = "17mov_Electrician:KickPlayerFromLobby"
      L3_3 = A0_2.id
      L4_3 = true
      L5_3 = true
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 300
    L2_2(L3_2)
    L2_2 = TriggerServerCallback
    L3_2 = "17mov_Electrician:IfPlayerIsHost"
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
L22_1 = RegisterNUICallback
L23_1 = "GetMyLevel"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerCallback
  L3_2 = "17mov_Electrician:GetMyLevel"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "17mov_Electrician:SendRequestToClient_cl"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "17mov_Electrician:SendRequestToClient_cl"
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
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.diff
  if "close" == L1_2 then
    L1_2 = AddBlipForCoord
    L2_2 = Config
    L2_2 = L2_2.Locations
    L2_2 = L2_2.StoreVeh
    L2_2 = L2_2.Coords
    L2_2 = L2_2[1]
    L1_2 = L1_2(L2_2)
    L2_1 = L1_2
    L1_2 = BeginTextCommandSetBlipName
    L2_2 = "STRING"
    L1_2(L2_2)
    L1_2 = EndTextCommandSetBlipName
    L2_2 = L2_1
    L1_2(L2_2)
    L1_2 = SetBlipRoute
    L2_2 = L2_1
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2.diff
  L2_2 = string
  L2_2 = L2_2.lower
  L3_2 = Config
  L3_2 = L3_2.Lang
  L3_2 = L3_2.easyLevel
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    A0_2.diff = "easy"
  end
  L1_2 = A0_2.diff
  L2_2 = string
  L2_2 = L2_2.lower
  L3_2 = Config
  L3_2 = L3_2.Lang
  L3_2 = L3_2.mediumLevel
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    A0_2.diff = "medium"
  end
  L1_2 = A0_2.diff
  L2_2 = string
  L2_2 = L2_2.lower
  L3_2 = Config
  L3_2 = L3_2.Lang
  L3_2 = L3_2.hardLevel
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    A0_2.diff = "hard"
  end
  L1_2 = A0_2.nextjob
  if L1_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "17mov_Electrician:StartJob_sv"
    L3_2 = A0_2.diff
    L4_2 = A0_2.nextjob
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = L5_1
  if not L1_2 then
    L1_2 = IsSpawnPointClear
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "17mov_Electrician:StartJob_sv"
      L3_2 = A0_2.diff
      L4_2 = A0_2.nextjob
      L1_2(L2_2, L3_2, L4_2)
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
    L2_2 = L2_2.plyIsBusy
    L1_2(L2_2)
  end
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "leaveLobby"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L5_1
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
  L3_2 = "17mov_Electrician:KickPlayerFromLobby"
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
L23_1 = "17mov_Electrician:StartJob_cl"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "17mov_Electrician:StartJob_cl"
function L24_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2
  L5_2 = Config
  L5_2 = L5_2.SpawnPoint
  L6_2 = GetEntityCoords
  L7_2 = PlayerPedId
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
  L7_2 = true
  L5_1 = L7_2
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  if false == A4_2 then
    L10_2 = CreateThread
    function L11_2()
      local L0_3, L1_3
      L0_3 = L9_1
      if not L0_3 then
        L0_3 = Config
        L0_3 = L0_3.RequireWorkClothes
        if L0_3 then
          L0_3 = true
          L9_1 = L0_3
          L0_3 = ChangeClothes
          L1_3 = "work"
          L0_3(L1_3)
        end
      end
    end
    L10_2(L11_2)
    L10_2 = Config
    L10_2 = L10_2.EnableVehicleTeleporting
    if L10_2 then
      L10_2 = DoScreenFadeOut
      L11_2 = 500
      L10_2(L11_2)
      L10_2 = Citizen
      L10_2 = L10_2.Wait
      L11_2 = 500
      L10_2(L11_2)
    end
    if A0_2 == A1_2 then
      L10_2 = Config
      L10_2 = L10_2.JobLocations
      L10_2 = L10_2[A2_2]
      L10_2 = L10_2[A3_2]
      L7_2 = L10_2[1]
      L8_2 = "host"
      L10_2 = Config
      L10_2 = L10_2.Lang
      L9_2 = L10_2.turnOffVoltage
      L10_2 = Config
      L10_2 = L10_2.Debug
      if true == L10_2 then
        L10_2 = print
        L11_2 = "STARTING SEARCHING HOST"
        L10_2(L11_2)
      end
      L10_2 = TriggerServerCallback
      L11_2 = "17mov_Electrician:checkPartyCar"
      function L12_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
        L1_3 = Config
        L1_3 = L1_3.Debug
        if true == L1_3 then
          L1_3 = print
          L2_3 = "ID:"
          L3_3 = A0_3
          L1_3(L2_3, L3_3)
        end
        if "nil" == A0_3 then
          L1_3 = SpawnVehicle
          L2_3 = Config
          L2_3 = L2_3.VehicleModel
          L3_3 = Config
          L3_3 = L3_3.SpawnPoint
          L1_3 = L1_3(L2_3, L3_3)
          L2_3 = Citizen
          L2_3 = L2_3.Wait
          L3_3 = 500
          L2_3(L3_3)
          L2_3 = DoScreenFadeIn
          L3_3 = 500
          L2_3(L3_3)
          A0_3 = L1_3
          while true do
            L2_3 = VehToNet
            L3_3 = L1_3
            L2_3 = L2_3(L3_3)
            if 0 ~= L2_3 then
              L2_3 = VehToNet
              L3_3 = L1_3
              L2_3 = L2_3(L3_3)
              if nil ~= L2_3 then
                break
              end
            end
            L2_3 = Citizen
            L2_3 = L2_3.Wait
            L3_3 = 100
            L2_3(L3_3)
          end
          L2_3 = Config
          L2_3 = L2_3.Debug
          if true == L2_3 then
            L2_3 = print
            L3_3 = "SENDING:"
            L4_3 = L1_3
            L5_3 = VehToNet
            L6_3 = L1_3
            L5_3, L6_3 = L5_3(L6_3)
            L2_3(L3_3, L4_3, L5_3, L6_3)
          end
          L2_3 = TriggerServerEvent
          L3_3 = "17mov_Electrician:refreshJobVehicle"
          L4_3 = VehToNet
          L5_3 = L1_3
          L4_3, L5_3, L6_3 = L4_3(L5_3)
          L2_3(L3_3, L4_3, L5_3, L6_3)
        else
          L1_3 = Notify
          L2_3 = Config
          L2_3 = L2_3.Lang
          L2_3 = L2_3.dontGiveVehicle2ndTime
          L1_3(L2_3)
        end
      end
      L10_2(L11_2, L12_2)
    else
      L10_2 = Config
      L10_2 = L10_2.JobLocations
      L10_2 = L10_2[A2_2]
      L10_2 = L10_2[A3_2]
      L7_2 = L10_2[2]
      L8_2 = "client"
      L10_2 = Config
      L10_2 = L10_2.Lang
      L9_2 = L10_2.FixFault
      L10_2 = nil
      while nil == L10_2 do
        L11_2 = Citizen
        L11_2 = L11_2.Wait
        L12_2 = 1000
        L11_2(L12_2)
        L11_2 = Config
        L11_2 = L11_2.Debug
        if true == L11_2 then
          L11_2 = print
          L12_2 = "STARTING SEARCHING"
          L11_2(L12_2)
        end
        L11_2 = TriggerServerCallback
        L12_2 = "17mov_Electrician:checkPartyCar"
        function L13_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3
          L1_3 = Config
          L1_3 = L1_3.Debug
          if true == L1_3 then
            L1_3 = print
            L2_3 = "NETID: "
            L3_3 = A0_3
            L1_3(L2_3, L3_3)
          end
          if "nil" ~= A0_3 then
            L1_3 = NetToVeh
            L2_3 = A0_3
            L1_3 = L1_3(L2_3)
            L10_2 = L1_3
            L1_3 = Config
            L1_3 = L1_3.Debug
            if true == L1_3 then
              L1_3 = print
              L2_3 = "CLID: "
              L3_3 = L10_2
              L1_3(L2_3, L3_3)
            end
            L1_3 = Config
            L1_3 = L1_3.Debug
            if true == L1_3 then
              L1_3 = print
              L2_3 = "DISTANCE: "
              L3_3 = GetEntityCoords
              L4_3 = PlayerPedId
              L4_3, L5_3 = L4_3()
              L3_3 = L3_3(L4_3, L5_3)
              L4_3 = GetEntityCoords
              L5_3 = L10_2
              L4_3 = L4_3(L5_3)
              L3_3 = L3_3 - L4_3
              L3_3 = #L3_3
              L1_3(L2_3, L3_3)
            end
            L1_3 = GetEntityCoords
            L2_3 = PlayerPedId
            L2_3, L3_3, L4_3, L5_3 = L2_3()
            L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
            L2_3 = GetEntityCoords
            L3_3 = L10_2
            L2_3 = L2_3(L3_3)
            L1_3 = L1_3 - L2_3
            L1_3 = #L1_3
            if L1_3 < 100.0 then
              L1_3 = Config
              L1_3 = L1_3.EnableVehicleTeleporting
              if L1_3 then
                L1_3 = TaskWarpPedIntoVehicle
                L2_3 = PlayerPedId
                L2_3 = L2_3()
                L3_3 = L10_2
                L4_3 = 0
                L1_3(L2_3, L3_3, L4_3)
              end
            end
          end
        end
        L11_2(L12_2, L13_2)
      end
      L11_2 = Config
      L11_2 = L11_2.GiveKeysToAllLobby
      if L11_2 then
        L11_2 = SetVehicle
        L12_2 = L10_2
        L11_2(L12_2)
      end
      L11_2 = Citizen
      L11_2 = L11_2.Wait
      L12_2 = 500
      L11_2(L12_2)
      L11_2 = DoScreenFadeIn
      L12_2 = 500
      L11_2(L12_2)
    end
    L10_2 = GetResourceKvpInt
    L11_2 = "17mov_Tutorials:"
    L12_2 = "electroTutorial"
    L11_2 = L11_2 .. L12_2
    L10_2 = L10_2(L11_2)
    if 0 == L10_2 then
      L10_2 = "electroTutorial"
      L15_1 = L10_2
      L10_2 = SendNUIMessage
      L11_2 = {}
      L11_2.action = "showTutorial"
      L10_2(L11_2)
      L10_2 = SetNuiFocus
      L11_2 = true
      L12_2 = true
      L10_2(L11_2, L12_2)
    end
  elseif A0_2 == A1_2 then
    L10_2 = Config
    L10_2 = L10_2.JobLocations
    L10_2 = L10_2[A2_2]
    L10_2 = L10_2[A3_2]
    L7_2 = L10_2[1]
    L8_2 = "host"
    L10_2 = Config
    L10_2 = L10_2.Lang
    L9_2 = L10_2.turnOffVoltage
  else
    L10_2 = Config
    L10_2 = L10_2.JobLocations
    L10_2 = L10_2[A2_2]
    L10_2 = L10_2[A3_2]
    L7_2 = L10_2[2]
    L8_2 = "client"
    L10_2 = Config
    L10_2 = L10_2.Lang
    L9_2 = L10_2.FixFault
  end
  L10_2 = AddBlipForCoord
  L11_2 = L7_2
  L10_2 = L10_2(L11_2)
  L2_1 = L10_2
  L10_2 = BeginTextCommandSetBlipName
  L11_2 = "STRING"
  L10_2(L11_2)
  L10_2 = EndTextCommandSetBlipName
  L11_2 = blip
  L10_2(L11_2)
  L10_2 = SetBlipRoute
  L11_2 = L2_1
  L12_2 = true
  L10_2(L11_2, L12_2)
  L10_2 = false
  L6_1 = L10_2
  L10_2 = false
  L7_1 = L10_2
  L10_2 = L7_2
  L11_2 = L9_2
  L12_2 = L8_2
  Gdiff = A2_2
  GclientType = L12_2
  Gmsg = L11_2
  GtargetCoords = L10_2
  L10_2 = Config
  L10_2 = L10_2.UseTarget
  if L10_2 then
    L10_2 = AddBoxZoneToTaget
    L11_2 = L7_2
    L12_2 = L9_2
    L13_2 = L8_2
    L14_2 = A2_2
    L10_2(L11_2, L12_2, L13_2, L14_2)
  end
  while true do
    L10_2 = Citizen
    L10_2 = L10_2.Wait
    L11_2 = 0
    L10_2(L11_2)
    letSleep = true
    L10_2 = GetEntityCoords
    L11_2 = PlayerPedId
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L11_2()
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
    L11_2 = L10_2 - L7_2
    L11_2 = #L11_2
    if L11_2 < 25.0 then
      L11_2 = L5_1
      if L11_2 then
        letSleep = false
        L11_2 = Config
        L11_2 = L11_2.EnableRedArrowMarker
        if L11_2 then
          L11_2 = DrawMarker
          L12_2 = 20
          L13_2 = L7_2.x
          L14_2 = L7_2.y
          L15_2 = L7_2.z
          L15_2 = L15_2 + 2.0
          L16_2 = 0.0
          L17_2 = 0.0
          L18_2 = 0.0
          L19_2 = 0.0
          L20_2 = 180.0
          L21_2 = 0.0
          L22_2 = 2.0
          L23_2 = 2.0
          L24_2 = 2.0
          L25_2 = 191
          L26_2 = 11
          L27_2 = 11
          L28_2 = 150
          L29_2 = true
          L30_2 = false
          L31_2 = 2
          L32_2 = false
          L33_2 = false
          L34_2 = false
          L35_2 = false
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
        end
        L11_2 = L10_2 - L7_2
        L11_2 = #L11_2
        if L11_2 < 2.0 then
          L11_2 = L5_1
          if L11_2 then
            letSleep = false
            L11_2 = L7_1
            if L11_2 then
              L11_2 = Config
              L11_2 = L11_2.Lang
              L9_2 = L11_2.Leave
            else
              L9_2 = Gmsg
            end
            L11_2 = Config
            L11_2 = L11_2.UseTarget
            if L11_2 then
              L11_2 = L7_1
            end
            if L11_2 then
              L11_2 = DrawText3Ds
              L12_2 = L7_2.x
              L13_2 = L7_2.y
              L14_2 = L7_2.z
              L14_2 = L14_2 + 1
              L15_2 = Config
              L15_2 = L15_2.keybindSettings
              L15_2 = L15_2.InteractionkeyString
              if not L15_2 then
                L15_2 = "~r~[E] | ~s~"
              end
              L16_2 = L9_2
              L15_2 = L15_2 .. L16_2
              L11_2(L12_2, L13_2, L14_2, L15_2)
              L11_2 = IsControlJustReleased
              L12_2 = 0
              L13_2 = Config
              L13_2 = L13_2.keybindSettings
              L13_2 = L13_2.InteractionKey
              if not L13_2 then
                L13_2 = 38
              end
              L11_2 = L11_2(L12_2, L13_2)
              if L11_2 then
                L11_2 = L7_1
                if L11_2 then
                  L11_2 = LeaveInteraction
                  L11_2()
                else
                  L11_2 = Interaction
                  L12_2 = L8_2
                  L13_2 = A2_2
                  L11_2(L12_2, L13_2)
                end
              end
            end
          end
        end
    end
    else
      L11_2 = Citizen
      L11_2 = L11_2.Wait
      L12_2 = 1500
      L11_2(L12_2)
    end
    L11_2 = L6_1
    if L11_2 then
      break
    end
  end
end
L22_1(L23_1, L24_1)
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Config
  L0_2 = L0_2.UseTarget
  if L0_2 then
    L0_2 = AddBoxZoneToTaget
    L1_2 = GtargetCoords
    L2_2 = Gmsg
    L3_2 = GclientType
    L4_2 = Gdiff
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
  L0_2 = FreezeEntityPosition
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = false
  L7_1 = L0_2
  L0_2 = TriggerServerEvent
  L1_2 = "17mov_Electrician:thisClientIsReady"
  L2_2 = GclientType
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
end
LeaveInteraction = L22_1
partyReady = false
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetEntityHealth
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if 0 == L2_2 then
    return
  end
  L2_2 = true
  L7_1 = L2_2
  L2_2 = Config
  L2_2 = L2_2.UseTarget
  if L2_2 then
    L2_2 = DeleteBoxZone
    L2_2()
  end
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_Electrician:thisClientIsReady"
  L4_2 = A0_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = FreezeEntityPosition
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = Notify
  L3_2 = Config
  L3_2 = L3_2.Lang
  L3_2 = L3_2.waitingForReady
  L2_2(L3_2)
  partyReady = false
  if "host" == A0_2 then
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      while true do
        L0_3 = partyReady
        if L0_3 then
          break
        end
        L0_3 = L7_1
        if not L0_3 then
          break
        end
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 500
        L0_3(L1_3)
        L0_3 = TriggerServerCallback
        L1_3 = "17mov_Electrician:CheckPartyReady"
        function L2_3(A0_4)
          local L1_4
          partyReady = false
          if A0_4 then
            partyReady = true
          end
        end
        L3_3 = A0_2
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = partyReady
        if L0_3 then
          break
        end
      end
      L0_3 = nil
      L1_3 = L7_1
      if L1_3 then
        L1_3 = A1_2
        if "easy" == L1_3 then
          L1_3 = StartMinigame
          L2_3 = 2
          L3_3 = 5000
          L4_3 = A1_2
          L1_3 = L1_3(L2_3, L3_3, L4_3)
          L0_3 = L1_3
        else
          L1_3 = A1_2
          if "medium" == L1_3 then
            L1_3 = StartMinigame
            L2_3 = 3
            L3_3 = 5000
            L4_3 = A1_2
            L1_3 = L1_3(L2_3, L3_3, L4_3)
            L0_3 = L1_3
          else
            L1_3 = A1_2
            if "hard" == L1_3 then
              L1_3 = StartMinigame
              L2_3 = 4
              L3_3 = 5000
              L4_3 = A1_2
              L1_3 = L1_3(L2_3, L3_3, L4_3)
              L0_3 = L1_3
            end
          end
        end
        L1_3 = SetNuiFocus
        L2_3 = false
        L3_3 = false
        L1_3(L2_3, L3_3)
        L1_3 = TriggerServerEvent
        L2_3 = "17mov_Electrician:HostSuccessMiniGame"
        L3_3 = A1_2
        L4_3 = L0_3
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = false
        L7_1 = L1_3
        if not L0_3 then
          L1_3 = TriggerServerEvent
          L2_3 = "17mov_Electrician:thisClientIsReady"
          L3_3 = "host"
          L4_3 = false
          L1_3(L2_3, L3_3, L4_3)
        else
          L1_3 = true
          L6_1 = L1_3
        end
      end
    end
    L2_2(L3_2)
  end
end
Interaction = L22_1
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = RequestWeaponAsset
  L3_2 = GetHashKey
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  while true do
    L2_2 = HasWeaponAssetLoaded
    L3_2 = GetHashKey
    L4_2 = A1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    if L2_2 then
      break
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = GetPedBoneCoords
  L3_2 = A0_2
  L4_2 = SKEL_ROOT
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = GetPedBoneCoords
  L4_2 = A0_2
  L5_2 = SKEL_R_Hand
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0.2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = GetHashKey
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = ShootSingleBulletBetweenCoords
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L9_2 = L2_2.x
  L10_2 = L2_2.y
  L11_2 = L2_2.z
  L12_2 = Config
  L12_2 = L12_2.ElectrocuteDamage
  L13_2 = 0
  L14_2 = L4_2
  L15_2 = GetPlayerServerId
  L16_2 = A0_2
  L15_2 = L15_2(L16_2)
  L16_2 = true
  L17_2 = true
  L18_2 = 1
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
end
ShootBullet = L22_1
L22_1 = RegisterNetEvent
L23_1 = "17mov_Electrician_launchRepeairing"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "17mov_Electrician_launchRepeairing"
function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  partyReady = false
  if not A2_2 then
    if A0_2 ~= A1_2 then
      L3_2 = L7_1
      if L3_2 then
        L3_2 = PlayerPedId
        L3_2 = L3_2()
        L4_2 = GetEntityCoords
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L5_2 = ShootBullet
        L6_2 = L3_2
        L7_2 = "WEAPON_STUNGUN"
        L5_2(L6_2, L7_2)
        L5_2 = false
        L7_1 = L5_2
        L5_2 = TriggerServerEvent
        L6_2 = "17mov_Electrician:thisClientIsReady"
        L7_2 = "client"
        L8_2 = false
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = FreezeEntityPosition
        L6_2 = PlayerPedId
        L6_2 = L6_2()
        L7_2 = false
        L5_2(L6_2, L7_2)
      end
    end
    L3_2 = Config
    L3_2 = L3_2.UseTarget
    if L3_2 then
      L3_2 = AddBoxZoneToTaget
      L4_2 = GtargetCoords
      L5_2 = Gmsg
      L6_2 = GclientType
      L7_2 = Gdiff
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  elseif A0_2 == A1_2 then
    L3_2 = Notify
    L4_2 = Config
    L4_2 = L4_2.Lang
    L4_2 = L4_2.hostSuccess
    L3_2(L4_2)
    L3_2 = FreezeEntityPosition
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L3_2 = L7_1
    if not L3_2 then
      L3_2 = Notify
      L4_2 = Config
      L4_2 = L4_2.Lang
      L4_2 = L4_2.walkedAway
      L3_2(L4_2)
      while true do
        L3_2 = L7_1
        if L3_2 then
          break
        end
        L3_2 = Citizen
        L3_2 = L3_2.Wait
        L4_2 = 500
        L3_2(L4_2)
      end
    end
    L3_2 = SetNuiFocus
    L4_2 = true
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "showRepeairing"
    L3_2(L4_2)
  end
  L3_2 = FreezeEntityPosition
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "17mov_Electrician_endJob"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "17mov_Electrician_endJob"
function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A2_2 then
    if A0_2 ~= A1_2 then
      L3_2 = Notify
      L4_2 = Config
      L4_2 = L4_2.Lang
      L4_2 = L4_2.failedHostSide
      L3_2(L4_2)
    else
      L3_2 = Notify
      L4_2 = Config
      L4_2 = L4_2.Lang
      L4_2 = L4_2.failedClientSide
      L3_2(L4_2)
    end
  elseif A0_2 ~= A1_2 then
    L3_2 = Notify
    L4_2 = Config
    L4_2 = L4_2.Lang
    L4_2 = L4_2.doneHostSide
    L3_2(L4_2)
    L3_2 = TriggerServerEvent
    L4_2 = "17mov_Electrician:thisClientIsReady"
    L5_2 = "host"
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = Notify
    L4_2 = Config
    L4_2 = L4_2.Lang
    L4_2 = L4_2.doneClientSide
    L3_2(L4_2)
    L3_2 = TriggerServerEvent
    L4_2 = "17mov_Electrician:thisClientIsReady"
    L5_2 = "client"
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = false
  L7_1 = L3_2
  L3_2 = true
  L6_1 = L3_2
  L3_2 = FreezeEntityPosition
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = RemoveBlip
  L4_2 = L2_1
  L3_2(L4_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "finishRepeairing"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_Electrician:ClientSuccessRepeairingGame"
  L3_2 = A0_2.succes
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.succes
  if not L1_2 then
    L1_2 = false
    L7_1 = L1_2
    L1_2 = TriggerServerEvent
    L2_2 = "17mov_Electrician:thisClientIsReady"
    L3_2 = "host"
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = true
    L6_1 = L1_2
  end
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "17mov_Electrician:openDecision"
function L24_1()
  local L0_2, L1_2, L2_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "OpenDifficulties"
  L0_2(L1_2)
  L0_2 = SetNuiFocus
  L1_2 = true
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L22_1(L23_1, L24_1)

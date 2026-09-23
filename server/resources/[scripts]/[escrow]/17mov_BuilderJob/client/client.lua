local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1
L0_1 = false
L1_1 = nil
L2_1 = nil
OnDuty = false
JobVehicleNetId = nil
L3_1 = false
L4_1 = false
L5_1 = 0
L6_1 = nil
L7_1 = {}
L8_1 = nil
L9_1 = {}
L10_1 = {}
L11_1 = 0
L12_1 = 0
L13_1 = 0
L14_1 = false
L15_1 = 0
L16_1 = false
L17_1 = {}
L18_1 = 0
L19_1 = {}
L20_1 = GetPlayerServerId
L21_1 = PlayerId
L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1 = L21_1()
L20_1 = L20_1(L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1)
L21_1 = true
L22_1 = ""
L23_1 = false
L24_1 = false
L25_1 = RegisterNUICallback
L26_1 = "driverLoaded"
function L27_1()
  local L0_2, L1_2
  L0_2 = true
  L23_1 = L0_2
end
L25_1(L26_1, L27_1)
L25_1 = RegisterNUICallback
L26_1 = "nuiLoaded"
function L27_1()
  local L0_2, L1_2
  L0_2 = true
  L24_1 = L0_2
end
L25_1(L26_1, L27_1)
L25_1 = CreateThread
function L26_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = L23_1
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
    L24_1 = L0_2
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 500
    L0_2(L1_2)
  end
  while true do
    L0_2 = L24_1
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
L25_1(L26_1)
L25_1 = Config
L25_1 = L25_1.useModernUI
if L25_1 then
  L25_1 = RegisterNUICallback
  L26_1 = "tutorialClosed"
  function L27_1()
    local L0_2, L1_2, L2_2
    L0_2 = SetNuiFocus
    L1_2 = false
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = false
    L3_1 = L0_2
    L0_2 = ""
    L22_1 = L0_2
  end
  L25_1(L26_1, L27_1)
  L25_1 = RegisterNetEvent
  L26_1 = "17mov_construction:UpdateHostPercentages"
  function L27_1(A0_2)
    local L1_2, L2_2
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "updateHostRewards"
    L2_2.value = A0_2
    L1_2(L2_2)
  end
  L25_1(L26_1, L27_1)
  L25_1 = RegisterNUICallback
  L26_1 = "menuClosed"
  function L27_1()
    local L0_2, L1_2, L2_2
    L0_2 = false
    L21_1 = L0_2
    L0_2 = SetNuiFocus
    L1_2 = false
    L2_2 = false
    L0_2(L1_2, L2_2)
  end
  L25_1(L26_1, L27_1)
  L25_1 = RegisterNUICallback
  L26_1 = "dontShowTutorialAgain"
  function L27_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    L2_2 = SetResourceKvpInt
    L3_2 = "17mov_Tutorials:"
    L4_2 = L22_1
    L3_2 = L3_2 .. L4_2
    L4_2 = 1
    L2_2(L3_2, L4_2)
  end
  L25_1(L26_1, L27_1)
  L25_1 = RegisterNetEvent
  L26_1 = "17mov_construction:SetMyReward"
  function L27_1(A0_2)
    local L1_2, L2_2
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "updateMyReward"
    L2_2.reward = A0_2
    L1_2(L2_2)
  end
  L25_1(L26_1, L27_1)
  L25_1 = Config
  L25_1 = L25_1.letBossSplitReward
  if L25_1 then
    L25_1 = RegisterNUICallback
    L26_1 = "checkIfThisRewardIsFine"
    function L27_1(A0_2, A1_2)
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
      L5_2 = "17mov_construction:CheckThisReward"
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
    L25_1(L26_1, L27_1)
  else
    L25_1 = CreateThread
    function L26_1()
      local L0_2, L1_2
      while true do
        L0_2 = L24_1
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
    L25_1(L26_1)
  end
  L25_1 = RegisterNetEvent
  L26_1 = "17mov_construction:clearMyLobby"
  function L27_1()
    local L0_2, L1_2, L2_2
    L0_2 = {}
    L19_1 = L0_2
    L0_2 = TriggerServerCallback
    L1_2 = "17mov_construction:init"
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
  L25_1(L26_1, L27_1)
  L25_1 = RegisterNetEvent
  L26_1 = "17mov_construction:RefreshMugs"
  L25_1(L26_1)
  L25_1 = AddEventHandler
  L26_1 = "17mov_construction:RefreshMugs"
  function L27_1(A0_2, A1_2)
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
      L8_2 = L19_1
      L8_2 = L8_2[L9_2]
      if nil == L8_2 then
        L8_2 = L20_1
        L9_2 = L7_2.id
        if L8_2 == L9_2 then
          L9_2 = L7_2.id
          L8_2 = L19_1
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
          L8_2 = L19_1
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
        L10_2 = L19_1
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.itsMe
        L9_2.showQuitBtn = L10_2
        L8_2(L9_2)
      end
    end
    L2_2 = 0
    L3_2 = pairs
    L4_2 = L19_1
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
        L11_2 = L19_1
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
      L4_2 = "17mov_construction:init"
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
    L4_2 = "17mov_construction:IfPlayerOwnsTeam"
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
  L25_1(L26_1, L27_1)
else
  L25_1 = RegisterNetEvent
  L26_1 = "17mov_construction:RefreshMugs"
  L25_1(L26_1)
  L25_1 = AddEventHandler
  L26_1 = "17mov_construction:RefreshMugs"
  function L27_1(A0_2, A1_2, A2_2)
    local L3_2, L4_2, L5_2
    while true do
      L3_2 = L0_1
      if L3_2 then
        break
      end
      L3_2 = Citizen
      L3_2 = L3_2.Wait
      L4_2 = 100
      L3_2(L4_2)
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 100
    L3_2(L4_2)
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "refreshMugs"
    L4_2.names = A0_2
    L4_2.myId = A1_2
    L3_2(L4_2)
    L3_2 = TriggerServerCallback
    L4_2 = "17mov_construction:IfPlayerIsHost"
    function L5_2(A0_3)
      local L1_3, L2_3
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "HostStatusUpdate"
      L2_3.status = A0_3
      L1_3(L2_3)
    end
    L3_2(L4_2, L5_2)
  end
  L25_1(L26_1, L27_1)
  L25_1 = RegisterNUICallback
  L26_1 = "GetClosestPlayers"
  function L27_1(A0_2, A1_2)
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
    L6_2 = "17mov_construction:IfPlayerIsHost"
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      if A0_3 then
        L1_3 = TriggerServerCallback
        L2_3 = "17mov_construction:GetPlayersNames"
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
  L25_1(L26_1, L27_1)
end
function L25_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L18_1
  L2_2 = L2_2 + 1
  L18_1 = L2_2
  L2_2 = L18_1
  myId = L2_2
  L2_2 = L17_1
  L3_2 = {}
  L2_2[A0_2] = L3_2
  L2_2 = L17_1
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
TriggerServerCallback = L25_1
L25_1 = RegisterNetEvent
L26_1 = "17mov_Callbacks:receiveData"
L27_1 = GetCurrentResourceName
L27_1 = L27_1()
L26_1 = L26_1 .. L27_1
function L27_1(A0_2, A1_2, ...)
  local L2_2, L3_2
  L2_2 = L17_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L17_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = L17_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = ...
  L2_2(L3_2)
  L2_2 = L17_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L17_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      L2_2 = L17_1
      L2_2 = L2_2[A0_2]
      L2_2[A1_2] = nil
    end
  end
  L2_2 = L17_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L17_1
    L2_2 = L2_2[A0_2]
    L2_2 = #L2_2
    if 0 == L2_2 then
      L2_2 = L17_1
      L2_2[A0_2] = nil
    end
  end
end
L25_1(L26_1, L27_1)
L25_1 = false
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2
  L1_2 = L25_1
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
      L25_1 = L1_2
      return
    end
  end
  L1_2 = true
  L25_1 = L1_2
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
      L1_2 = L25_1
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
                L9_2 = "17mov_construction:ExitedMarker"
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
          L9_2 = "17mov_construction:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_250::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_construction:ExitedMarker"
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
      L1_2 = L25_1
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
                L9_2 = "17mov_construction:ExitedMarker"
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
          L9_2 = "17mov_construction:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_491::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_construction:ExitedMarker"
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
StartMarkers = L26_1
L26_1 = Citizen
L26_1 = L26_1.CreateThread
function L27_1()
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
L26_1(L27_1)
L26_1 = false
function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L26_1
  if L0_2 then
    return
  end
  L0_2 = true
  L26_1 = L0_2
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
MakeBlip = L27_1
function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = false
  L26_1 = L0_2
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
DeleteBlip = L27_1
L27_1 = false
function L28_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L27_1
  if L1_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.useModernUI
  if L1_2 then
    while true do
      L1_2 = L24_1
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
  L1_2 = true
  L27_1 = L1_2
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
  L2_2 = "17mov_construction:init"
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
    L0_1 = L1_3
  end
  L1_2(L2_2, L3_2)
end
InitalizeScript = L28_1
L28_1 = RegisterNetEvent
L29_1 = "QBCore:Client:OnPlayerLoaded"
function L30_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "esx:playerLoaded"
function L30_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "QBCore:Client:OnJobUpdate"
L28_1(L29_1)
L28_1 = AddEventHandler
L29_1 = "QBCore:Client:OnJobUpdate"
function L30_1(A0_2)
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
    L25_1 = L1_2
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "esx:setJob"
L28_1(L29_1)
L28_1 = AddEventHandler
L29_1 = "esx:setJob"
function L30_1(A0_2)
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
    L25_1 = L1_2
  end
end
L28_1(L29_1, L30_1)
L28_1 = AddEventHandler
L29_1 = "17mov_construction:EnteredMarker"
function L30_1(A0_2)
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
L28_1(L29_1, L30_1)
L28_1 = AddEventHandler
L29_1 = "17mov_construction:ExitedMarker"
function L30_1(A0_2)
  local L1_2
  CurrentAction = nil
  CurrentActionMsg = nil
  CurrentActionStation = nil
end
L28_1(L29_1, L30_1)
L28_1 = RegisterCommand
L29_1 = "+17MovConstructionJobStartMarkerAction"
function L30_1()
  local L0_2, L1_2
end
L28_1(L29_1, L30_1)
L28_1 = RegisterCommand
L29_1 = "-17MovConstructionJobStartMarkerAction"
function L30_1()
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
        L1_2 = "17mov_construction:IfPlayerIsHost"
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
L28_1(L29_1, L30_1)
L28_1 = TriggerEvent
L29_1 = "chat:removeSuggestion"
L30_1 = "/+17MovConstructionJobStartMarkerAction"
L28_1(L29_1, L30_1)
L28_1 = TriggerEvent
L29_1 = "chat:removeSuggestion"
L30_1 = "/-17MovConstructionJobStartMarkerAction"
L28_1(L29_1, L30_1)
L28_1 = RegisterKeyMapping
L29_1 = "+17MovConstructionJobStartMarkerAction"
L30_1 = Config
L30_1 = L30_1.Lang
L30_1 = L30_1.keybind
L31_1 = "keyboard"
L32_1 = "E"
L28_1(L29_1, L30_1, L31_1, L32_1)
L28_1 = {}
L29_1 = Config
L29_1 = L29_1.useModernUI
if L29_1 then
  function L29_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2
    L0_2 = L27_1
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
      L1_2 = "17mov_construction:init"
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
    L21_1 = L0_2
    L0_2 = false
    L1_2 = false
    L2_2 = false
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
      while true do
        L0_3 = L21_1
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
        L5_3 = "17mov_construction:GetPlayersNames"
        function L6_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4
          L1_4 = pairs
          L2_4 = A0_4
          L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
          for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
            L8_4 = L6_4.id
            L7_4 = L19_1
            L7_4 = L7_4[L8_4]
            if nil == L7_4 then
              L7_4 = true
              L3_3 = L7_4
              L8_4 = L6_4.id
              L7_4 = L28_1
              L7_4 = L7_4[L8_4]
              if nil == L7_4 then
                L8_4 = L6_4.id
                L7_4 = L28_1
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
          L2_4 = L28_1
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
              L9_4 = L28_1
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
  OpenDutyMenu = L29_1
else
  function L29_1()
    local L0_2, L1_2, L2_2
    L0_2 = L27_1
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
      L1_2 = "17mov_construction:init"
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
    L0_2 = TriggerServerCallback
    L1_2 = "17mov_construction:IfPlayerIsHost"
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
  OpenDutyMenu = L29_1
end
L29_1 = RegisterNUICallback
L30_1 = "changeClothes"
function L31_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.type
  if "work" == L1_2 then
    L2_2 = true
    L16_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "work"
    L2_2(L3_2)
  else
    L2_2 = false
    L16_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "citizen"
    L2_2(L3_2)
  end
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNUICallback
L30_1 = "requestReacted"
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.boolean
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_construction:ClientReactRequest"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L29_1(L30_1, L31_1)
L29_1 = Config
L29_1 = L29_1.useModernUI
if L29_1 then
  L29_1 = RegisterNUICallback
  L30_1 = "sendRequest"
  function L31_1(A0_2)
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
    L2_2 = "17mov_construction:SendRequestToClient_sv"
    L3_2 = tonumber
    L4_2 = A0_2.id
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
  L29_1(L30_1, L31_1)
  L29_1 = RegisterNUICallback
  L30_1 = "kickPlayerFromLobby"
  function L31_1(A0_2)
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
    L5_2 = L19_1
    L5_2 = L5_2[L1_2]
    L5_2 = L5_2.name
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = TriggerServerEvent
    L3_2 = "17mov_construction:KickPlayerFromLobby"
    L4_2 = L1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L29_1(L30_1, L31_1)
else
  L29_1 = RegisterNUICallback
  L30_1 = "sendRequest"
  function L31_1(A0_2)
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
    L2_2 = "17mov_construction:SendRequestToClient_sv"
    L3_2 = A0_2.id
    L1_2(L2_2, L3_2)
  end
  L29_1(L30_1, L31_1)
  L29_1 = RegisterNUICallback
  L30_1 = "kickPlayerFromLobby"
  function L31_1(A0_2)
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
    L2_2 = "17mov_construction:KickPlayerFromLobby"
    L3_2 = A0_2.id
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L29_1(L30_1, L31_1)
end
L29_1 = RegisterNUICallback
L30_1 = "focusOff"
function L31_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNUICallback
L30_1 = "notify"
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = Notify
  L2_2 = A0_2.msg
  L1_2(L2_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "17mov_construction:SendRequestToClient_cl"
L29_1(L30_1)
L29_1 = AddEventHandler
L30_1 = "17mov_construction:SendRequestToClient_cl"
function L31_1(A0_2, A1_2)
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
L29_1(L30_1, L31_1)
function L29_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  L1_2 = vec3
  L2_2 = Config
  L2_2 = L2_2.MixerSpawnPoint
  L2_2 = L2_2.x
  L3_2 = Config
  L3_2 = L3_2.MixerSpawnPoint
  L3_2 = L3_2.y
  L4_2 = Config
  L4_2 = L4_2.MixerSpawnPoint
  L4_2 = L4_2.z
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = GetGamePool
  L3_2 = "CVehicle"
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L3_2 = type
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 then
      goto lbl_38
    end
  end
  L3_2 = print
  L4_2 = "FAILED TO FETCH GAMEPOOL - Returning CLEAR"
  L3_2(L4_2)
  L3_2 = true
  do return L3_2 end
  ::lbl_38::
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = GetEntityCoords
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2 - L0_2
    L9_2 = #L9_2
    if not (L9_2 < 6.0) then
      L9_2 = GetEntityCoords
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2 - L1_2
      L9_2 = #L9_2
      if not (L9_2 < 6.0) then
        goto lbl_60
      end
    end
    L9_2 = false
    do return L9_2 end
    ::lbl_60::
  end
  L3_2 = true
  return L3_2
end
IsSpawnPointClear = L29_1
L29_1 = RegisterNUICallback
L30_1 = "startJob"
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = OnDuty
  if not L1_2 then
    L1_2 = IsSpawnPointClear
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "17mov_construction:StartJob_sv"
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
L29_1(L30_1, L31_1)
L29_1 = RegisterNUICallback
L30_1 = "leaveLobby"
function L31_1(A0_2)
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
  L3_2 = "17mov_construction:KickPlayerFromLobby"
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
L29_1(L30_1, L31_1)
function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = PrepeareVehicle
  L3_2()
  L3_2 = 250
  L4_2 = RequestModel
  L5_2 = A0_2
  L4_2(L5_2)
  while true do
    L4_2 = HasModelLoaded
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if not (not L4_2 and L3_2 > 0) then
      break
    end
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 100
    L4_2(L5_2)
    L3_2 = L3_2 - 1
    L4_2 = RequestModel
    L5_2 = A0_2
    L4_2(L5_2)
  end
  L4_2 = CreateVehicle
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = true
  L8_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = NetworkGetNetworkIdFromEntity
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = SetEntityAsMissionEntity
  L7_2 = L4_2
  L8_2 = true
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = SetVehicleNeedsToBeHotwired
  L7_2 = L4_2
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = SetVehRadioStation
  L7_2 = L4_2
  L8_2 = "OFF"
  L6_2(L7_2, L8_2)
  L6_2 = SetVehicleFuelLevel
  L7_2 = L4_2
  L8_2 = 100.0
  L6_2(L7_2, L8_2)
  if A2_2 then
    L6_2 = Config
    L6_2 = L6_2.EnableVehicleTeleporting
    if L6_2 then
      L6_2 = TaskWarpPedIntoVehicle
      L7_2 = PlayerPedId
      L7_2 = L7_2()
      L8_2 = L4_2
      L9_2 = -1
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L6_2 = SetVehicle
  L7_2 = L4_2
  L6_2(L7_2)
  L6_2 = 50
  while true do
    L7_2 = DoesEntityExist
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    if not (not L7_2 and L6_2 > 0) then
      break
    end
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 100
    L7_2(L8_2)
    L6_2 = L6_2 - 1
  end
  if L6_2 <= 0 then
    L7_2 = SpawnVehicle
    L8_2 = A0_2
    L9_2 = A1_2
    L10_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L4_2 = L7_2
  end
  return L4_2
end
SpawnVehicle = L29_1
function L29_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = AddBlipForCoord
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if nil ~= A1_2 then
    L5_2 = SetBlipSprite
    L6_2 = L4_2
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = SetBlipDisplay
  L6_2 = L4_2
  L7_2 = 4
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipScale
  L6_2 = L4_2
  L7_2 = 0.6
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipColour
  L6_2 = L4_2
  L7_2 = A3_2
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipAsShortRange
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = BeginTextCommandSetBlipName
  L6_2 = "STRING"
  L5_2(L6_2)
  L5_2 = AddTextComponentString
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = EndTextCommandSetBlipName
  L6_2 = L4_2
  L5_2(L6_2)
  return L4_2
end
AddBlip = L29_1
L29_1 = RegisterNetEvent
L30_1 = "17mov_constructionJob:refreshProgressValue"
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = L11_1
  if A0_2 > L1_2 then
    L11_1 = A0_2
    L15_1 = A0_2
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "updateCounter"
    L2_2.value = A0_2
    L1_2(L2_2)
  end
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNUICallback
L30_1 = "tutorialClosed"
function L31_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = false
  L3_1 = L0_2
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 30
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 31
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 32
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 33
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 34
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 35
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "17mov_construction:disableThisCustomTask"
function L31_1(A0_2)
  local L1_2
  L1_2 = L9_1.customTasks
  L1_2 = L1_2[A0_2]
  L1_2.ready = true
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "17mov_Builder:SpawnCustomProps"
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.spawnPropAfter
  if L2_2 then
    while true do
      L2_2 = HasModelLoaded
      L3_2 = A0_2.propSpawnName
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = RequestModel
      L3_2 = A0_2.propSpawnName
      L2_2(L3_2)
      L2_2 = Citizen
      L2_2 = L2_2.Wait
      L3_2 = 0
      L2_2(L3_2)
    end
    L2_2 = CreateObject
    L3_2 = A0_2.propSpawnName
    L4_2 = A0_2.propSpawnCoords
    L5_2 = false
    L6_2 = true
    L7_2 = true
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L10_1
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = SetEntityRotation
    L4_2 = L2_2
    L5_2 = A0_2.propSpawnRotation
    L3_2(L4_2, L5_2)
    L3_2 = FreezeEntityPosition
    L4_2 = L2_2
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = SetEntityInvincible
    L4_2 = L2_2
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  L2_2 = RemoveBlip
  L3_2 = L9_1.customTasks
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.blip
  L2_2(L3_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "17mov_construction:StartJob_cl"
L29_1(L30_1)
L29_1 = AddEventHandler
L30_1 = "17mov_construction:StartJob_cl"
function L31_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L6_2 = A0_2
  L7_2 = Config
  L7_2 = L7_2.SpawnPoint
  L8_2 = GetEntityCoords
  L9_2 = PlayerPedId
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L9_2()
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L9_2 = Config
  L9_2 = L9_2.JobLocations
  L9_2 = L9_2[A2_2]
  OnDuty = true
  L9_1 = L9_2
  L9_2 = false
  L14_1 = L9_2
  L9_2 = 0
  L15_1 = L9_2
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3
    L0_3 = L16_1
    if not L0_3 then
      L0_3 = Config
      L0_3 = L0_3.RequireWorkClothes
      if L0_3 then
        L0_3 = true
        L16_1 = L0_3
        L0_3 = ChangeClothes
        L1_3 = "work"
        L0_3(L1_3)
      end
    end
  end
  L9_2(L10_2)
  if not A5_2 then
    L9_2 = GetResourceKvpInt
    L10_2 = "17mov_Tutorials:"
    L11_2 = Config
    L11_2 = L11_2.Lang
    L11_2 = L11_2.startingTutorial
    L10_2 = L10_2 .. L11_2
    L9_2 = L9_2(L10_2)
    if 0 == L9_2 then
      L9_2 = Config
      L9_2 = L9_2.Lang
      L9_2 = L9_2.startingTutorial
      L22_1 = L9_2
      L9_2 = SendNUIMessage
      L10_2 = {}
      L10_2.action = "showTutorial"
      L11_2 = Config
      L11_2 = L11_2.Lang
      L11_2 = L11_2.startingTutorial
      L10_2.customText = L11_2
      L9_2(L10_2)
      L9_2 = true
      L3_1 = L9_2
      L9_2 = CreateThread
      function L10_2()
        local L0_3, L1_3, L2_3, L3_3
        while true do
          L0_3 = L3_1
          if not L0_3 then
            break
          end
          L0_3 = Citizen
          L0_3 = L0_3.Wait
          L1_3 = 0
          L0_3(L1_3)
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
        end
      end
      L9_2(L10_2)
      L9_2 = SetNuiFocus
      L10_2 = true
      L11_2 = true
      L9_2(L10_2, L11_2)
    end
  end
  if L6_2 == A1_2 then
    L9_2 = Config
    L9_2 = L9_2.EnableVehicleTeleporting
    if L9_2 and not A5_2 then
      L9_2 = DoScreenFadeOut
      L10_2 = 300
      L9_2(L10_2)
      L9_2 = Citizen
      L9_2 = L9_2.Wait
      L10_2 = 1000
      L9_2(L10_2)
    end
    if not A5_2 then
      L9_2 = false
      if not (A3_2 > 1) then
        if 1 ~= A3_2 then
          goto lbl_91
        end
        L10_2 = L9_1.enableConcretePouring
        if L10_2 then
          goto lbl_91
        end
      end
      L10_2 = SpawnVehicle
      L11_2 = Config
      L11_2 = L11_2.JobVehicleModel
      L12_2 = Config
      L12_2 = L12_2.SpawnPoint
      L13_2 = true
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L1_1 = L10_2
      JobVehicleNetId = 0
      L10_2 = CreateThread
      function L11_2()
        local L0_3, L1_3, L2_3
        while true do
          L0_3 = JobVehicleNetId
          if 0 ~= L0_3 then
            L0_3 = JobVehicleNetId
            if nil ~= L0_3 then
              break
            end
          end
          L0_3 = VehToNet
          L1_3 = L1_1
          L0_3 = L0_3(L1_3)
          JobVehicleNetId = L0_3
          L0_3 = Citizen
          L0_3 = L0_3.Wait
          L1_3 = 100
          L0_3(L1_3)
        end
        L0_3 = TriggerServerEvent
        L1_3 = "17mov_construction:SendVehicleNetId"
        L2_3 = JobVehicleNetId
        L0_3(L1_3, L2_3)
      end
      L10_2(L11_2)
      L9_2 = true
      ::lbl_91::
      L10_2 = L9_1.enableConcretePouring
      if L10_2 then
        L10_2 = SpawnVehicle
        L11_2 = Config
        L11_2 = L11_2.MixerModel
        L12_2 = Config
        L12_2 = L12_2.MixerSpawnPoint
        L13_2 = A3_2 <= 1
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L11_2 = 0
        L12_2 = CreateThread
        function L13_2()
          local L0_3, L1_3, L2_3, L3_3
          while true do
            L0_3 = L11_2
            if 0 ~= L0_3 then
              L0_3 = L11_2
              if nil ~= L0_3 then
                break
              end
            end
            L0_3 = VehToNet
            L1_3 = L10_2
            L0_3 = L0_3(L1_3)
            L11_2 = L0_3
            L0_3 = Citizen
            L0_3 = L0_3.Wait
            L1_3 = 100
            L0_3(L1_3)
          end
          L0_3 = TriggerServerEvent
          L1_3 = "17mov_constructionJob:sendMixer"
          L2_3 = L6_2
          L3_3 = L11_2
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = L9_2
          if not L0_3 then
            L0_3 = TriggerServerEvent
            L1_3 = "17mov_construction:SendVehicleNetId"
            L2_3 = L11_2
            L0_3(L1_3, L2_3)
          end
        end
        L12_2(L13_2)
      end
      L10_2 = CreateThread
      function L11_2()
        local L0_3, L1_3
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 2000
        L0_3(L1_3)
        L0_3 = DoScreenFadeIn
        L1_3 = 300
        L0_3(L1_3)
      end
      L10_2(L11_2)
    else
      L9_2 = false
      while not L9_2 do
        L10_2 = Citizen
        L10_2 = L10_2.Wait
        L11_2 = 500
        L10_2(L11_2)
        L10_2 = NetToVeh
        L11_2 = A4_2
        L10_2 = L10_2(L11_2)
        if L10_2 ~= A4_2 and 0 ~= L10_2 then
          L11_2 = DoesEntityExist
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          if L11_2 then
            JobVehicleNetId = A4_2
            L1_1 = L10_2
            L9_2 = true
          end
        end
      end
    end
    L9_2 = CreateThread
    function L10_2()
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
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 5000
        L0_3(L1_3)
      end
    end
    L9_2(L10_2)
  else
    while true do
      L9_2 = Citizen
      L9_2 = L9_2.Wait
      L10_2 = 0
      L9_2(L10_2)
      L9_2 = GetGamePool
      L10_2 = "CVehicle"
      L9_2 = L9_2(L10_2)
      L10_2 = 200.0
      L11_2 = 0
      L12_2 = pairs
      L13_2 = L9_2
      L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
      for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
        L18_2 = GetEntityCoords
        L19_2 = L17_2
        L18_2 = L18_2(L19_2)
        L19_2 = vector3
        L20_2 = L7_2.x
        L21_2 = L7_2.y
        L22_2 = L7_2.z
        L19_2 = L19_2(L20_2, L21_2, L22_2)
        L18_2 = L18_2 - L19_2
        L18_2 = #L18_2
        if L10_2 > L18_2 then
          L10_2 = L18_2
          L11_2 = L17_2
        end
      end
      if nil ~= L11_2 then
        L12_2 = vector3
        L13_2 = L7_2.x
        L14_2 = L7_2.y
        L15_2 = L7_2.z
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L13_2 = GetEntityCoords
        L14_2 = L11_2
        L13_2 = L13_2(L14_2)
        L12_2 = L12_2 - L13_2
        L12_2 = #L12_2
        if L12_2 < 2.0 then
          L12_2 = GetEntityModel
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          L13_2 = GetHashKey
          L14_2 = Config
          L14_2 = L14_2.JobVehicleModel
          L13_2 = L13_2(L14_2)
          if L12_2 == L13_2 then
            L12_2 = Citizen
            L12_2 = L12_2.Wait
            L13_2 = 300
            L12_2(L13_2)
            while "JobVehicleNetId" do
              L12_2 = DoesEntityExist
              L13_2 = L11_2
              L12_2 = L12_2(L13_2)
              if L12_2 then
                break
              end
              L12_2 = Citizen
              L12_2 = L12_2.Wait
              L13_2 = 100
              L12_2(L13_2)
            end
            L12_2 = VehToNet
            L13_2 = L11_2
            L12_2 = L12_2(L13_2)
            JobVehicleNetId = L12_2
            L1_1 = L11_2
            break
          end
        end
      end
    end
    L9_2 = Config
    L9_2 = L9_2.GiveKeysToAllLobby
    if L9_2 then
      L9_2 = SetVehicle
      L10_2 = L1_1
      L9_2(L10_2)
    end
  end
  L9_2 = Config
  L9_2 = L9_2.EnableWaypoint
  if L9_2 then
    L9_2 = L9_1.welding
    L9_2 = L9_2[1]
    if nil ~= L9_2 then
      L9_2 = L9_1.welding
      L9_2 = L9_2[1]
      L9_2 = L9_2.coords
      if nil ~= L9_2 then
        L9_2 = SetNewWaypoint
        L10_2 = L9_1.welding
        L10_2 = L10_2[1]
        L10_2 = L10_2.coords
        L10_2 = L10_2.x
        L11_2 = L9_1.welding
        L11_2 = L11_2[1]
        L11_2 = L11_2.coords
        L11_2 = L11_2.y
        L9_2(L10_2, L11_2)
      end
    end
  end
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3
    L0_3 = pairs
    L1_3 = L9_1.customTasks
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = L9_1.customTasks
      L6_3 = L6_3[L4_3]
      L6_3.ready = false
      L6_3 = AddBlip
      L7_3 = L5_3.blipName
      L8_3 = L5_3.blipSprite
      L9_3 = L5_3.coordsToDrawText
      L10_3 = L5_3.blipColor
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
      L5_3.blip = L6_3
    end
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = 1000
      L1_3 = IsPedInAnyVehicle
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = true
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = pairs
        L2_3 = L9_1.customTasks
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
          L7_3 = L6_3.ready
          if not L7_3 then
            L7_3 = GetEntityCoords
            L8_3 = PlayerPedId
            L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3 = L8_3()
            L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
            L8_3 = L6_3.coordsToDrawText
            L7_3 = L7_3 - L8_3
            L7_3 = #L7_3
            if L7_3 < 50.0 then
              L0_3 = 0
              L8_3 = DrawMarker
              L9_3 = 20
              L10_3 = vec3
              L11_3 = L6_3.coordsToDrawText
              L11_3 = L11_3.x
              L12_3 = L6_3.coordsToDrawText
              L12_3 = L12_3.y
              L13_3 = L6_3.coordsToDrawText
              L13_3 = L13_3.z
              L13_3 = L13_3 + 2.0
              L10_3 = L10_3(L11_3, L12_3, L13_3)
              L11_3 = 0.0
              L12_3 = 0.0
              L13_3 = 0.0
              L14_3 = 0.0
              L15_3 = 180.0
              L16_3 = 0.0
              L17_3 = 0.45
              L18_3 = 0.45
              L19_3 = 0.45
              L20_3 = Config
              L20_3 = L20_3.ArrowMarkerColor
              L20_3 = L20_3.r
              L21_3 = Config
              L21_3 = L21_3.ArrowMarkerColor
              L21_3 = L21_3.g
              L22_3 = Config
              L22_3 = L22_3.ArrowMarkerColor
              L22_3 = L22_3.b
              L23_3 = Config
              L23_3 = L23_3.ArrowMarkerColor
              L23_3 = L23_3.a
              L24_3 = true
              L25_3 = true
              L26_3 = 2
              L27_3 = false
              L28_3 = false
              L29_3 = false
              L30_3 = false
              L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
            end
            if L7_3 < 2.0 then
              L8_3 = L4_1
              if not L8_3 then
                L0_3 = 0
                L8_3 = DrawText3Ds
                L9_3 = L6_3.coordsToDrawText
                L9_3 = L9_3.x
                L10_3 = L6_3.coordsToDrawText
                L10_3 = L10_3.y
                L11_3 = L6_3.coordsToDrawText
                L11_3 = L11_3.z
                L12_3 = "~o~[E] | ~s~"
                L13_3 = L6_3.drawingText
                L12_3 = L12_3 .. L13_3
                L8_3(L9_3, L10_3, L11_3, L12_3)
                L8_3 = IsControlJustReleased
                L9_3 = 0
                L10_3 = 38
                L8_3 = L8_3(L9_3, L10_3)
                if L8_3 then
                  L8_3 = TriggerServerEvent
                  L9_3 = "17movement_builder:disableCustomTask"
                  L10_3 = L6_2
                  L11_3 = L5_3
                  L8_3(L9_3, L10_3, L11_3)
                  L8_3 = SetEntityCoords
                  L9_3 = PlayerPedId
                  L9_3 = L9_3()
                  L10_3 = L6_3.pedInteractionCoords
                  L8_3(L9_3, L10_3)
                  L8_3 = SetEntityHeading
                  L9_3 = PlayerPedId
                  L9_3 = L9_3()
                  L10_3 = L6_3.pedInteractionCoords
                  L10_3 = L10_3.w
                  L8_3(L9_3, L10_3)
                  L8_3 = L6_3.animDict
                  L9_3 = L6_3.animName
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
                  L10_3 = FreezeEntityPosition
                  L11_3 = PlayerPedId
                  L11_3 = L11_3()
                  L12_3 = true
                  L10_3(L11_3, L12_3)
                  L10_3 = TaskPlayAnim
                  L11_3 = PlayerPedId
                  L11_3 = L11_3()
                  L12_3 = L8_3
                  L13_3 = L9_3
                  L14_3 = 8.0
                  L15_3 = -8.0
                  L16_3 = -1
                  L17_3 = 1
                  L18_3 = 0
                  L19_3 = false
                  L20_3 = false
                  L21_3 = false
                  L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                  L10_3 = Citizen
                  L10_3 = L10_3.Wait
                  L11_3 = L6_3.TimeToBuild
                  L10_3(L11_3)
                  L10_3 = ClearPedTasks
                  L11_3 = PlayerPedId
                  L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3 = L11_3()
                  L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
                  L10_3 = FreezeEntityPosition
                  L11_3 = PlayerPedId
                  L11_3 = L11_3()
                  L12_3 = false
                  L10_3(L11_3, L12_3)
                  L10_3 = TriggerServerEvent
                  L11_3 = "17mov_builder:CustomTaskDone"
                  L12_3 = L6_2
                  L13_3 = L6_3
                  L14_3 = L5_3
                  L10_3(L11_3, L12_3, L13_3, L14_3)
                end
              end
            end
          end
        end
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = L0_3
      L1_3(L2_3)
    end
  end
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    L0_3 = pairs
    L1_3 = L9_1.welding
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = AddBlip
      L7_3 = Config
      L7_3 = L7_3.JobBlipsStyle
      L7_3 = L7_3.welding
      L7_3 = L7_3.string
      L8_3 = Config
      L8_3 = L8_3.JobBlipsStyle
      L8_3 = L8_3.welding
      L8_3 = L8_3.sprite
      L9_3 = L5_3.coords
      L10_3 = Config
      L10_3 = L10_3.JobBlipsStyle
      L10_3 = L10_3.welding
      L10_3 = L10_3.color
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
      L5_3.blip = L6_3
    end
    L0_3 = pairs
    L1_3 = L9_1.walls
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = L5_3.frame
      L7_3 = AddBlip
      L8_3 = Config
      L8_3 = L8_3.JobBlipsStyle
      L8_3 = L8_3.buildWall
      L8_3 = L8_3.string
      L9_3 = Config
      L9_3 = L9_3.JobBlipsStyle
      L9_3 = L9_3.buildWall
      L9_3 = L9_3.sprite
      L10_3 = L5_3.frame
      L10_3 = L10_3.coords
      L11_3 = Config
      L11_3 = L11_3.JobBlipsStyle
      L11_3 = L11_3.buildWall
      L11_3 = L11_3.color
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
      L6_3.blip = L7_3
      L6_3 = AddBlip
      L7_3 = Config
      L7_3 = L7_3.JobBlipsStyle
      L7_3 = L7_3.blockPickup
      L7_3 = L7_3.string
      L8_3 = Config
      L8_3 = L8_3.JobBlipsStyle
      L8_3 = L8_3.blockPickup
      L8_3 = L8_3.sprite
      L9_3 = L5_3.blocksSpawnLocation
      L10_3 = Config
      L10_3 = L10_3.JobBlipsStyle
      L10_3 = L10_3.blockPickup
      L10_3 = L10_3.color
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
      L5_3.blocksPickupBlip = L6_3
      L6_3 = {}
      L7_3 = "17mov_wallframe_wall"
      L8_3 = "17mov_brick_001"
      L9_3 = "17mov_brick_002"
      L10_3 = "17mov_brick_003"
      L11_3 = "17mov_brick_004"
      L6_3[1] = L7_3
      L6_3[2] = L8_3
      L6_3[3] = L9_3
      L6_3[4] = L10_3
      L6_3[5] = L11_3
      L7_3 = 1
      L8_3 = #L6_3
      L9_3 = 1
      for L10_3 = L7_3, L8_3, L9_3 do
        L11_3 = RequestModel
        L12_3 = L6_3[L10_3]
        L11_3(L12_3)
        while true do
          L11_3 = HasModelLoaded
          L12_3 = L6_3[L10_3]
          L11_3 = L11_3(L12_3)
          if L11_3 then
            break
          end
          L11_3 = Citizen
          L11_3 = L11_3.Wait
          L12_3 = 10
          L11_3(L12_3)
        end
      end
      L7_3 = L5_3.frame
      L8_3 = CreateObject
      L9_3 = "17mov_wallframe_wall"
      L10_3 = L5_3.frame
      L10_3 = L10_3.coords
      L11_3 = false
      L12_3 = true
      L13_3 = true
      L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
      L7_3.object = L8_3
      L7_3 = table
      L7_3 = L7_3.insert
      L8_3 = L10_1
      L9_3 = L5_3.frame
      L9_3 = L9_3.object
      L7_3(L8_3, L9_3)
      L7_3 = SetEntityRotation
      L8_3 = L5_3.frame
      L8_3 = L8_3.object
      L9_3 = L5_3.frame
      L9_3 = L9_3.rotation
      L7_3(L8_3, L9_3)
      L7_3 = FreezeEntityPosition
      L8_3 = L5_3.frame
      L8_3 = L8_3.object
      L9_3 = true
      L7_3(L8_3, L9_3)
      L7_3 = L5_3.blocksSpawnLocation
      L8_3 = L7_3.z
      L9_3 = 1
      L10_3 = L5_3.blocksInFrameLocations
      L10_3 = #L10_3
      L11_3 = 1
      for L12_3 = L9_3, L10_3, L11_3 do
        L13_3 = L5_3.blocksInFrameLocations
        L13_3 = L13_3[L12_3]
        L14_3 = CreateObject
        L15_3 = "17mov_brick_00"
        L16_3 = math
        L16_3 = L16_3.random
        L17_3 = 1
        L18_3 = 4
        L16_3 = L16_3(L17_3, L18_3)
        L15_3 = L15_3 .. L16_3
        L16_3 = L7_3.x
        L17_3 = L7_3.y
        L18_3 = L8_3
        L19_3 = false
        L20_3 = true
        L21_3 = true
        L14_3 = L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
        L13_3.baseBlock = L14_3
        L13_3 = table
        L13_3 = L13_3.insert
        L14_3 = L10_1
        L15_3 = L5_3.blocksInFrameLocations
        L15_3 = L15_3[L12_3]
        L15_3 = L15_3.baseBlock
        L13_3(L14_3, L15_3)
        L13_3 = SetEntityRotation
        L14_3 = L5_3.blocksInFrameLocations
        L14_3 = L14_3[L12_3]
        L14_3 = L14_3.baseBlock
        L15_3 = L5_3.blocksSpawnRotation
        L13_3(L14_3, L15_3)
        L13_3 = FreezeEntityPosition
        L14_3 = L5_3.blocksInFrameLocations
        L14_3 = L14_3[L12_3]
        L14_3 = L14_3.baseBlock
        L15_3 = true
        L13_3(L14_3, L15_3)
        L8_3 = L8_3 + 0.15
      end
      L9_3 = CreateThread
      function L10_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4, L19_4, L20_4, L21_4, L22_4, L23_4, L24_4, L25_4
        while true do
          L0_4 = OnDuty
          if not L0_4 then
            break
          end
          sleep = 1000
          L0_4 = GetEntityCoords
          L1_4 = PlayerPedId
          L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4, L19_4, L20_4, L21_4, L22_4, L23_4, L24_4, L25_4 = L1_4()
          L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4, L19_4, L20_4, L21_4, L22_4, L23_4, L24_4, L25_4)
          L1_4 = L5_3.blocksSpawnLocation
          L0_4 = L0_4 - L1_4
          L0_4 = #L0_4
          if L0_4 < 50.0 then
            sleep = 0
            L1_4 = DrawMarker
            L2_4 = 20
            L3_4 = L5_3.blocksSpawnLocation
            L3_4 = L3_4.x
            L4_4 = L5_3.blocksSpawnLocation
            L4_4 = L4_4.y
            L5_4 = L8_3
            L5_4 = L5_4 + 1.5
            L6_4 = 0.0
            L7_4 = 0.0
            L8_4 = 0.0
            L9_4 = 0.0
            L10_4 = 180.0
            L11_4 = 0.0
            L12_4 = 0.45
            L13_4 = 0.45
            L14_4 = 0.45
            L15_4 = Config
            L15_4 = L15_4.ArrowMarkerColor
            L15_4 = L15_4.r
            L16_4 = Config
            L16_4 = L16_4.ArrowMarkerColor
            L16_4 = L16_4.g
            L17_4 = Config
            L17_4 = L17_4.ArrowMarkerColor
            L17_4 = L17_4.b
            L18_4 = Config
            L18_4 = L18_4.ArrowMarkerColor
            L18_4 = L18_4.a
            L19_4 = true
            L20_4 = true
            L21_4 = 2
            L22_4 = false
            L23_4 = false
            L24_4 = false
            L25_4 = false
            L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4, L19_4, L20_4, L21_4, L22_4, L23_4, L24_4, L25_4)
          end
          L1_4 = Citizen
          L1_4 = L1_4.Wait
          L2_4 = sleep
          L1_4(L2_4)
          L1_4 = L5_3.spawnClear
          if L1_4 then
            break
          end
        end
      end
      L9_3(L10_3)
    end
  end
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = false
      L1_3 = pairs
      L2_3 = L9_1.welding
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = vec3
        L8_3 = L6_3.coords
        L8_3 = L8_3.x
        L9_3 = L6_3.coords
        L9_3 = L9_3.y
        L10_3 = L6_3.coords
        L10_3 = L10_3.z
        L7_3 = L7_3(L8_3, L9_3, L10_3)
        L8_3 = GetEntityCoords
        L9_3 = PlayerPedId
        L9_3, L10_3 = L9_3()
        L8_3 = L8_3(L9_3, L10_3)
        L7_3 = L7_3 - L8_3
        L7_3 = #L7_3
        if L7_3 < 4.0 then
          L7_3 = L4_1
          if not L7_3 then
            L0_3 = true
            L7_3 = GetResourceKvpInt
            L8_3 = "17mov_Tutorials:"
            L9_3 = Config
            L9_3 = L9_3.Lang
            L9_3 = L9_3.tutorialWelding
            L8_3 = L8_3 .. L9_3
            L7_3 = L7_3(L8_3)
            if 0 == L7_3 then
              L7_3 = Config
              L7_3 = L7_3.Lang
              L7_3 = L7_3.tutorialWelding
              L22_1 = L7_3
              L7_3 = SendNUIMessage
              L8_3 = {}
              L8_3.action = "showTutorial"
              L9_3 = Config
              L9_3 = L9_3.Lang
              L9_3 = L9_3.tutorialWelding
              L8_3.customText = L9_3
              L7_3(L8_3)
              L7_3 = true
              L3_1 = L7_3
              L7_3 = CreateThread
              function L8_3()
                local L0_4, L1_4, L2_4, L3_4
                while true do
                  L0_4 = L3_1
                  if not L0_4 then
                    break
                  end
                  L0_4 = Citizen
                  L0_4 = L0_4.Wait
                  L1_4 = 0
                  L0_4(L1_4)
                  L0_4 = DisableControlAction
                  L1_4 = 0
                  L2_4 = 30
                  L3_4 = true
                  L0_4(L1_4, L2_4, L3_4)
                  L0_4 = DisableControlAction
                  L1_4 = 0
                  L2_4 = 31
                  L3_4 = true
                  L0_4(L1_4, L2_4, L3_4)
                  L0_4 = DisableControlAction
                  L1_4 = 0
                  L2_4 = 32
                  L3_4 = true
                  L0_4(L1_4, L2_4, L3_4)
                  L0_4 = DisableControlAction
                  L1_4 = 0
                  L2_4 = 33
                  L3_4 = true
                  L0_4(L1_4, L2_4, L3_4)
                  L0_4 = DisableControlAction
                  L1_4 = 0
                  L2_4 = 34
                  L3_4 = true
                  L0_4(L1_4, L2_4, L3_4)
                  L0_4 = DisableControlAction
                  L1_4 = 0
                  L2_4 = 35
                  L3_4 = true
                  L0_4(L1_4, L2_4, L3_4)
                end
              end
              L7_3(L8_3)
              L7_3 = SetNuiFocus
              L8_3 = true
              L9_3 = true
              L7_3(L8_3, L9_3)
              break
            end
          end
        end
      end
      if L0_3 then
        break
      end
    end
  end
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = 500
      L1_3 = GetEntityCoords
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
      L2_3 = pairs
      L3_3 = L9_1.welding
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = L7_3.ready
        if not L8_3 then
          L8_3 = vec3
          L9_3 = L7_3.coords
          L9_3 = L9_3.x
          L10_3 = L7_3.coords
          L10_3 = L10_3.y
          L11_3 = L7_3.coords
          L11_3 = L11_3.z
          L8_3 = L8_3(L9_3, L10_3, L11_3)
          L8_3 = L1_3 - L8_3
          L8_3 = #L8_3
          if L8_3 < 50.0 then
            L0_3 = 0
            L9_3 = DrawMarker
            L10_3 = 20
            L11_3 = vec3
            L12_3 = L7_3.coords
            L12_3 = L12_3.x
            L13_3 = L7_3.coords
            L13_3 = L13_3.y
            L14_3 = L7_3.coords
            L14_3 = L14_3.z
            L14_3 = L14_3 + 2.5
            L11_3 = L11_3(L12_3, L13_3, L14_3)
            L12_3 = 0.0
            L13_3 = 0.0
            L14_3 = 0.0
            L15_3 = 0.0
            L16_3 = 180.0
            L17_3 = 0.0
            L18_3 = 0.45
            L19_3 = 0.45
            L20_3 = 0.45
            L21_3 = Config
            L21_3 = L21_3.ArrowMarkerColor
            L21_3 = L21_3.r
            L22_3 = Config
            L22_3 = L22_3.ArrowMarkerColor
            L22_3 = L22_3.g
            L23_3 = Config
            L23_3 = L23_3.ArrowMarkerColor
            L23_3 = L23_3.b
            L24_3 = Config
            L24_3 = L24_3.ArrowMarkerColor
            L24_3 = L24_3.a
            L25_3 = true
            L26_3 = true
            L27_3 = 2
            L28_3 = false
            L29_3 = false
            L30_3 = false
            L31_3 = false
            L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
          end
          if L8_3 < 2.0 then
            L9_3 = L4_1
            if not L9_3 then
              L0_3 = 0
              L9_3 = DrawText3Ds
              L10_3 = L7_3.coords
              L10_3 = L10_3.x
              L11_3 = L7_3.coords
              L11_3 = L11_3.y
              L12_3 = L7_3.coords
              L12_3 = L12_3.z
              L12_3 = L12_3 + 2.0
              L13_3 = "~o~[E] | ~s~"
              L14_3 = Config
              L14_3 = L14_3.Lang
              L14_3 = L14_3.startWelding
              L13_3 = L13_3 .. L14_3
              L9_3(L10_3, L11_3, L12_3, L13_3)
              L9_3 = IsControlJustReleased
              L10_3 = 0
              L11_3 = 38
              L9_3 = L9_3(L10_3, L11_3)
              if L9_3 then
                L9_3 = WeldingMinigame
                if nil ~= L9_3 then
                  L9_3 = SetEntityCoords
                  L10_3 = PlayerPedId
                  L10_3 = L10_3()
                  L11_3 = L7_3.coords
                  L9_3(L10_3, L11_3)
                  L9_3 = SetEntityHeading
                  L10_3 = PlayerPedId
                  L10_3 = L10_3()
                  L11_3 = L7_3.coords
                  L11_3 = L11_3.w
                  L9_3(L10_3, L11_3)
                  L9_3 = FreezeEntityPosition
                  L10_3 = PlayerPedId
                  L10_3 = L10_3()
                  L11_3 = true
                  L9_3(L10_3, L11_3)
                  L9_3 = TaskStartScenarioInPlace
                  L10_3 = PlayerPedId
                  L10_3 = L10_3()
                  L11_3 = "WORLD_HUMAN_WELDING"
                  L12_3 = 0
                  L13_3 = true
                  L9_3(L10_3, L11_3, L12_3, L13_3)
                  L9_3 = WeldingMinigame
                  L9_3 = L9_3()
                  if L9_3 then
                    L9_3 = TriggerServerEvent
                    L10_3 = "17mov_constructionJob:weldingReady"
                    L11_3 = L6_2
                    L12_3 = L6_3
                    L13_3 = L7_3.progressValue
                    L9_3(L10_3, L11_3, L12_3, L13_3)
                  end
                else
                  L9_3 = TriggerServerEvent
                  L10_3 = "17mov_constructionJob:weldingReady"
                  L11_3 = L6_2
                  L12_3 = L6_3
                  L13_3 = L7_3.progressValue
                  L9_3(L10_3, L11_3, L12_3, L13_3)
                  L9_3 = SetEntityCoords
                  L10_3 = PlayerPedId
                  L10_3 = L10_3()
                  L11_3 = L7_3.coords
                  L9_3(L10_3, L11_3)
                  L9_3 = SetEntityHeading
                  L10_3 = PlayerPedId
                  L10_3 = L10_3()
                  L11_3 = L7_3.coords
                  L11_3 = L11_3.w
                  L9_3(L10_3, L11_3)
                  L9_3 = FreezeEntityPosition
                  L10_3 = PlayerPedId
                  L10_3 = L10_3()
                  L11_3 = true
                  L9_3(L10_3, L11_3)
                  L9_3 = TaskStartScenarioInPlace
                  L10_3 = PlayerPedId
                  L10_3 = L10_3()
                  L11_3 = "WORLD_HUMAN_WELDING"
                  L12_3 = 0
                  L13_3 = true
                  L9_3(L10_3, L11_3, L12_3, L13_3)
                  L9_3 = Citizen
                  L9_3 = L9_3.Wait
                  L10_3 = Config
                  L10_3 = L10_3.WeldingTime
                  L9_3(L10_3)
                end
                L9_3 = FreezeEntityPosition
                L10_3 = PlayerPedId
                L10_3 = L10_3()
                L11_3 = false
                L9_3(L10_3, L11_3)
                L9_3 = ClearPedTasks
                L10_3 = PlayerPedId
                L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3 = L10_3()
                L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
                L9_3 = GetGamePool
                L10_3 = "CObject"
                L9_3 = L9_3(L10_3)
                if nil ~= L9_3 then
                  L10_3 = type
                  L11_3 = L9_3
                  L10_3 = L10_3(L11_3)
                  if "table" == L10_3 then
                    L10_3 = pairs
                    L11_3 = GetGamePool
                    L12_3 = "CObject"
                    L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3 = L11_3(L12_3)
                    L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
                    for L14_3, L15_3 in L10_3, L11_3, L12_3, L13_3 do
                      L16_3 = GetEntityModel
                      L17_3 = L15_3
                      L16_3 = L16_3(L17_3)
                      if -1010290664 == L16_3 then
                        L16_3 = SetEntityAsMissionEntity
                        L17_3 = L15_3
                        L18_3 = true
                        L19_3 = true
                        L16_3(L17_3, L18_3, L19_3)
                        L16_3 = DeleteObject
                        L17_3 = L15_3
                        L16_3(L17_3)
                        L16_3 = DeleteEntity
                        L17_3 = L15_3
                        L16_3(L17_3)
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
  end
  L9_2(L10_2)
  L9_2 = false
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = 500
      L1_3 = GetEntityCoords
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      L2_3 = L4_1
      if not L2_3 then
        L2_3 = L9_2
        if not L2_3 then
          L2_3 = pairs
          L3_3 = L9_1.walls
          L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
          for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
            L8_3 = L7_3.spawnClear
            if not L8_3 then
              L8_3 = vec3
              L9_3 = L7_3.blocksSpawnLocation
              L9_3 = L9_3.x
              L10_3 = L7_3.blocksSpawnLocation
              L10_3 = L10_3.y
              L11_3 = L7_3.blocksSpawnLocation
              L11_3 = L11_3.z
              L8_3 = L8_3(L9_3, L10_3, L11_3)
              L9_3 = L1_3 - L8_3
              L9_3 = #L9_3
              L10_3 = 2.5
              if L9_3 < L10_3 then
                L0_3 = 0
                L9_3 = DrawText3Ds
                L10_3 = L7_3.blocksSpawnLocation
                L10_3 = L10_3.x
                L11_3 = L7_3.blocksSpawnLocation
                L11_3 = L11_3.y
                L12_3 = L7_3.blocksSpawnLocation
                L12_3 = L12_3.z
                L12_3 = L12_3 + 2.0
                L13_3 = "~o~[E] | ~s~"
                L14_3 = Config
                L14_3 = L14_3.Lang
                L14_3 = L14_3.pickupBlock
                L13_3 = L13_3 .. L14_3
                L9_3(L10_3, L11_3, L12_3, L13_3)
                L9_3 = IsControlJustReleased
                L10_3 = 0
                L11_3 = 38
                L9_3 = L9_3(L10_3, L11_3)
                if L9_3 then
                  L9_3 = L4_1
                  if not L9_3 then
                    L9_3 = TriggerServerEvent
                    L10_3 = "17mov_constructionJob:deleteBlockFromSpawn"
                    L11_3 = L6_2
                    L12_3 = L6_3
                    L9_3(L10_3, L11_3, L12_3)
                    L9_3 = Pick
                    L10_3 = "17mov_brick_00"
                    L11_3 = math
                    L11_3 = L11_3.random
                    L12_3 = 1
                    L13_3 = 4
                    L11_3 = L11_3(L12_3, L13_3)
                    L10_3 = L10_3 .. L11_3
                    L11_3 = Config
                    L11_3 = L11_3.wearingAnimation
                    L11_3 = L11_3.dict
                    L12_3 = Config
                    L12_3 = L12_3.wearingAnimation
                    L12_3 = L12_3.name
                    L9_3(L10_3, L11_3, L12_3)
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
  end
  L10_2(L11_2)
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = 500
      L1_3 = L4_1
      if L1_3 then
        L1_3 = L9_2
        if not L1_3 then
          L1_3 = GetEntityCoords
          L2_3 = PlayerPedId
          L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L2_3()
          L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
          L2_3 = pairs
          L3_3 = L9_1.walls
          L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
          for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
            L8_3 = IsThereFreeSlotInWall
            L9_3 = L7_3.blocksInFrameLocations
            L8_3 = L8_3(L9_3)
            if L8_3 then
              L8_3 = vec3
              L9_3 = L7_3.frame
              L9_3 = L9_3.interactionCoords
              L9_3 = L9_3.x
              L10_3 = L7_3.frame
              L10_3 = L10_3.interactionCoords
              L10_3 = L10_3.y
              L11_3 = L7_3.frame
              L11_3 = L11_3.interactionCoords
              L11_3 = L11_3.z
              L8_3 = L8_3(L9_3, L10_3, L11_3)
              L8_3 = L1_3 - L8_3
              L8_3 = #L8_3
              if L8_3 < 7.0 then
                L0_3 = 0
                L9_3 = DrawText3Ds
                L10_3 = L7_3.frame
                L10_3 = L10_3.interactionCoords
                L10_3 = L10_3.x
                L11_3 = L7_3.frame
                L11_3 = L11_3.interactionCoords
                L11_3 = L11_3.y
                L12_3 = L7_3.frame
                L12_3 = L12_3.interactionCoords
                L12_3 = L12_3.z
                L13_3 = "~o~[E] | ~s~"
                L14_3 = Config
                L14_3 = L14_3.Lang
                L14_3 = L14_3.installBlock
                L13_3 = L13_3 .. L14_3
                L9_3(L10_3, L11_3, L12_3, L13_3)
                if L8_3 < 2.0 then
                  L9_3 = IsControlJustReleased
                  L10_3 = 0
                  L11_3 = 38
                  L9_3 = L9_3(L10_3, L11_3)
                  if L9_3 then
                    L9_3 = TriggerServerCallback
                    L10_3 = "17mov_Construction:CheckIfWallIsFree"
                    function L11_3(A0_4)
                      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
                      if A0_4 then
                        L1_4 = true
                        L9_2 = L1_4
                        L1_4 = DeleteEntity
                        L2_4 = L5_1
                        L1_4(L2_4)
                        L1_4 = 1
                        L2_4 = L10_1
                        L2_4 = #L2_4
                        L3_4 = 1
                        for L4_4 = L1_4, L2_4, L3_4 do
                          L5_4 = L10_1
                          L5_4 = L5_4[L4_4]
                          L6_4 = L5_1
                          if L5_4 == L6_4 then
                            L5_4 = L10_1
                            L5_4[L4_4] = nil
                          end
                        end
                        L1_4 = false
                        L4_1 = L1_4
                        L1_4 = 0
                        L5_1 = L1_4
                        L1_4 = 0
                        L2_4 = 1
                        L3_4 = L7_3.blocksInFrameLocations
                        L3_4 = #L3_4
                        L4_4 = 1
                        for L5_4 = L2_4, L3_4, L4_4 do
                          L6_4 = L7_3.blocksInFrameLocations
                          L6_4 = L6_4[L5_4]
                          L6_4 = L6_4.ready
                          if not L6_4 then
                            L1_4 = L5_4
                            break
                          end
                        end
                        if 0 ~= L1_4 then
                          L2_4 = SetEntityCoords
                          L3_4 = PlayerPedId
                          L3_4 = L3_4()
                          L4_4 = L7_3.frame
                          L4_4 = L4_4.interactionCoords
                          L4_4 = L4_4.x
                          L5_4 = L7_3.frame
                          L5_4 = L5_4.interactionCoords
                          L5_4 = L5_4.y
                          L6_4 = L7_3.frame
                          L6_4 = L6_4.interactionCoords
                          L6_4 = L6_4.z
                          L6_4 = L6_4 - 2.0
                          L2_4(L3_4, L4_4, L5_4, L6_4)
                          L2_4 = SetEntityHeading
                          L3_4 = PlayerPedId
                          L3_4 = L3_4()
                          L4_4 = L7_3.frame
                          L4_4 = L4_4.interactionCoords
                          L4_4 = L4_4.w
                          L2_4(L3_4, L4_4)
                          L2_4 = FreezeEntityPosition
                          L3_4 = PlayerPedId
                          L3_4 = L3_4()
                          L4_4 = true
                          L2_4(L3_4, L4_4)
                          L2_4 = TaskStartScenarioInPlace
                          L3_4 = PlayerPedId
                          L3_4 = L3_4()
                          L4_4 = Config
                          L4_4 = L4_4.installingBlockToFrameScenario
                          L5_4 = 0.0
                          L6_4 = true
                          L2_4(L3_4, L4_4, L5_4, L6_4)
                          L2_4 = WallMinigame
                          if nil ~= L2_4 then
                            L2_4 = WallMinigame
                            L2_4 = L2_4()
                            if L2_4 then
                              L2_4 = TriggerServerEvent
                              L3_4 = "17mov_constructionJob:installBlockOnWall"
                              L4_4 = L6_2
                              L5_4 = {}
                              L6_4 = L6_3
                              L5_4.wallIndex = L6_4
                              L5_4.placeIndex = L1_4
                              L6_4 = L9_1.walls
                              L7_4 = L6_3
                              L6_4 = L6_4[L7_4]
                              L6_4 = L6_4.blocksInFrameLocations
                              L6_4 = L6_4[L1_4]
                              L6_4 = L6_4.progressValue
                              L2_4(L3_4, L4_4, L5_4, L6_4)
                            end
                          else
                            L2_4 = TriggerServerEvent
                            L3_4 = "17mov_constructionJob:installBlockOnWall"
                            L4_4 = L6_2
                            L5_4 = {}
                            L6_4 = L6_3
                            L5_4.wallIndex = L6_4
                            L5_4.placeIndex = L1_4
                            L6_4 = L9_1.walls
                            L7_4 = L6_3
                            L6_4 = L6_4[L7_4]
                            L6_4 = L6_4.blocksInFrameLocations
                            L6_4 = L6_4[L1_4]
                            L6_4 = L6_4.progressValue
                            L2_4(L3_4, L4_4, L5_4, L6_4)
                            L2_4 = Citizen
                            L2_4 = L2_4.Wait
                            L3_4 = Config
                            L3_4 = L3_4.WallBuildingTime
                            L2_4(L3_4)
                          end
                          L2_4 = ClearPedTasks
                          L3_4 = PlayerPedId
                          L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4 = L3_4()
                          L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
                          L2_4 = FreezeEntityPosition
                          L3_4 = PlayerPedId
                          L3_4 = L3_4()
                          L4_4 = false
                          L2_4(L3_4, L4_4)
                          L2_4 = GetGamePool
                          L3_4 = "CObject"
                          L2_4 = L2_4(L3_4)
                          if nil ~= L2_4 then
                            L3_4 = type
                            L4_4 = L2_4
                            L3_4 = L3_4(L4_4)
                            if "table" == L3_4 then
                              L3_4 = pairs
                              L4_4 = GetGamePool
                              L5_4 = "CObject"
                              L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4 = L4_4(L5_4)
                              L3_4, L4_4, L5_4, L6_4 = L3_4(L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
                              for L7_4, L8_4 in L3_4, L4_4, L5_4, L6_4 do
                                L9_4 = GetEntityModel
                                L10_4 = L8_4
                                L9_4 = L9_4(L10_4)
                                if -127739306 == L9_4 then
                                  L9_4 = SetEntityAsMissionEntity
                                  L10_4 = L8_4
                                  L11_4 = true
                                  L12_4 = true
                                  L9_4(L10_4, L11_4, L12_4)
                                  L9_4 = DeleteObject
                                  L10_4 = L8_4
                                  L9_4(L10_4)
                                  L9_4 = DeleteEntity
                                  L10_4 = L8_4
                                  L9_4(L10_4)
                                end
                              end
                            end
                          end
                          L3_4 = false
                          L9_2 = L3_4
                        end
                      else
                        L1_4 = Notify
                        L2_4 = Config
                        L2_4 = L2_4.Lang
                        L2_4 = L2_4.workstationOccupied
                        L1_4(L2_4)
                      end
                    end
                    L12_3 = L6_2
                    L13_3 = L6_3
                    L9_3(L10_3, L11_3, L12_3, L13_3)
                  end
                end
              end
            end
          end
        end
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = L0_3
      L1_3(L2_3)
    end
  end
  L10_2(L11_2)
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = false
      L1_3 = pairs
      L2_3 = L9_1.mixerTargetLocations
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.targetLocation
        L8_3 = GetEntityCoords
        L9_3 = PlayerPedId
        L9_3 = L9_3()
        L8_3 = L8_3(L9_3)
        L7_3 = L7_3 - L8_3
        L7_3 = #L7_3
        if L7_3 < 8.0 then
          L0_3 = true
          L7_3 = GetResourceKvpInt
          L8_3 = "17mov_Tutorials:"
          L9_3 = Config
          L9_3 = L9_3.Lang
          L9_3 = L9_3.tutorialAboutPipes
          L8_3 = L8_3 .. L9_3
          L7_3 = L7_3(L8_3)
          if 0 == L7_3 then
            L7_3 = Config
            L7_3 = L7_3.Lang
            L7_3 = L7_3.tutorialAboutPipes
            L22_1 = L7_3
            L7_3 = SendNUIMessage
            L8_3 = {}
            L8_3.action = "showTutorial"
            L9_3 = Config
            L9_3 = L9_3.Lang
            L9_3 = L9_3.tutorialAboutPipes
            L8_3.customText = L9_3
            L7_3(L8_3)
            L7_3 = true
            L3_1 = L7_3
            L7_3 = CreateThread
            function L8_3()
              local L0_4, L1_4, L2_4, L3_4
              while true do
                L0_4 = L3_1
                if not L0_4 then
                  break
                end
                L0_4 = Citizen
                L0_4 = L0_4.Wait
                L1_4 = 0
                L0_4(L1_4)
                L0_4 = DisableControlAction
                L1_4 = 0
                L2_4 = 30
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
                L0_4 = DisableControlAction
                L1_4 = 0
                L2_4 = 31
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
                L0_4 = DisableControlAction
                L1_4 = 0
                L2_4 = 32
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
                L0_4 = DisableControlAction
                L1_4 = 0
                L2_4 = 33
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
                L0_4 = DisableControlAction
                L1_4 = 0
                L2_4 = 34
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
                L0_4 = DisableControlAction
                L1_4 = 0
                L2_4 = 35
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
              end
            end
            L7_3(L8_3)
            L7_3 = SetNuiFocus
            L8_3 = true
            L9_3 = true
            L7_3(L8_3, L9_3)
            break
          end
        end
      end
      if L0_3 then
        break
      end
    end
  end
  L10_2(L11_2)
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = false
      L1_3 = pairs
      L2_3 = L9_1.walls
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.frame
        L7_3 = L7_3.coords
        L8_3 = GetEntityCoords
        L9_3 = PlayerPedId
        L9_3 = L9_3()
        L8_3 = L8_3(L9_3)
        L7_3 = L7_3 - L8_3
        L7_3 = #L7_3
        if L7_3 < 8.0 then
          L0_3 = true
          L7_3 = GetResourceKvpInt
          L8_3 = "17mov_Tutorials:"
          L9_3 = Config
          L9_3 = L9_3.Lang
          L9_3 = L9_3.tutorialWallBuilding
          L8_3 = L8_3 .. L9_3
          L7_3 = L7_3(L8_3)
          if 0 == L7_3 then
            L7_3 = Config
            L7_3 = L7_3.Lang
            L7_3 = L7_3.tutorialWallBuilding
            L22_1 = L7_3
            L7_3 = SendNUIMessage
            L8_3 = {}
            L8_3.action = "showTutorial"
            L9_3 = Config
            L9_3 = L9_3.Lang
            L9_3 = L9_3.tutorialWallBuilding
            L8_3.customText = L9_3
            L7_3(L8_3)
            L7_3 = true
            L3_1 = L7_3
            L7_3 = CreateThread
            function L8_3()
              local L0_4, L1_4, L2_4, L3_4
              while true do
                L0_4 = L3_1
                if not L0_4 then
                  break
                end
                L0_4 = Citizen
                L0_4 = L0_4.Wait
                L1_4 = 0
                L0_4(L1_4)
                L0_4 = DisableControlAction
                L1_4 = 0
                L2_4 = 30
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
                L0_4 = DisableControlAction
                L1_4 = 0
                L2_4 = 31
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
                L0_4 = DisableControlAction
                L1_4 = 0
                L2_4 = 32
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
                L0_4 = DisableControlAction
                L1_4 = 0
                L2_4 = 33
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
                L0_4 = DisableControlAction
                L1_4 = 0
                L2_4 = 34
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
                L0_4 = DisableControlAction
                L1_4 = 0
                L2_4 = 35
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
              end
            end
            L7_3(L8_3)
            L7_3 = SetNuiFocus
            L8_3 = true
            L9_3 = true
            L7_3(L8_3, L9_3)
            break
          end
        end
      end
      if L0_3 then
        break
      end
    end
  end
  L10_2(L11_2)
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L0_3 = pairs
    L1_3 = L9_1.mixerTargetLocations
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = pairs
      L7_3 = L5_3.pipes
      L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
      for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
        L12_3 = L11_3.spawnByDefault
        if not L12_3 then
          L12_3 = AddBlip
          L13_3 = Config
          L13_3 = L13_3.JobBlipsStyle
          L13_3 = L13_3.installPipe
          L13_3 = L13_3.string
          L14_3 = Config
          L14_3 = L14_3.JobBlipsStyle
          L14_3 = L14_3.installPipe
          L14_3 = L14_3.sprite
          L15_3 = L11_3.coords
          L16_3 = Config
          L16_3 = L16_3.JobBlipsStyle
          L16_3 = L16_3.installPipe
          L16_3 = L16_3.color
          L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3)
          L11_3.blip = L12_3
        else
          L12_3 = CreateThread
          function L13_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
            L0_4 = RequestModel
            L1_4 = Config
            L1_4 = L1_4.PipeModel
            L0_4(L1_4)
            while true do
              L0_4 = HasModelLoaded
              L1_4 = Config
              L1_4 = L1_4.PipeModel
              L0_4 = L0_4(L1_4)
              if L0_4 then
                break
              end
              L0_4 = RequestModel
              L1_4 = Config
              L1_4 = L1_4.PipeModel
              L0_4(L1_4)
              L0_4 = Citizen
              L0_4 = L0_4.Wait
              L1_4 = 10
              L0_4(L1_4)
            end
            L0_4 = CreateObject
            L1_4 = Config
            L1_4 = L1_4.PipeModel
            L2_4 = L11_3.coords
            L3_4 = false
            L4_4 = true
            L5_4 = true
            L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4, L5_4)
            L1_4 = table
            L1_4 = L1_4.insert
            L2_4 = L10_1
            L3_4 = L0_4
            L1_4(L2_4, L3_4)
            L1_4 = SetEntityRotation
            L2_4 = L0_4
            L3_4 = L11_3.rotation
            L1_4(L2_4, L3_4)
            L1_4 = FreezeEntityPosition
            L2_4 = L0_4
            L3_4 = true
            L1_4(L2_4, L3_4)
          end
          L12_3(L13_3)
        end
      end
    end
  end
  L10_2(L11_2)
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = 1000
      L1_3 = GetEntityCoords
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
      L2_3 = {}
      L3_3 = {}
      L2_3.table = L3_3
      L2_3.distance = 100
      L3_3 = pairs
      L4_3 = L9_1.mixerTargetLocations
      L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
      for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
        L9_3 = pairs
        L10_3 = L8_3.pipes
        L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3)
        for L13_3, L14_3 in L9_3, L10_3, L11_3, L12_3 do
          L15_3 = L14_3.ready
          if not L15_3 then
            L15_3 = L14_3.coords
            L15_3 = L15_3 - L1_3
            L15_3 = #L15_3
            L16_3 = L2_3.distance
            if L15_3 < L16_3 then
              L2_3.distance = L15_3
              L2_3.table = L14_3
              L2_3.holeIndex = L7_3
              L2_3.pipeIndex = L13_3
            end
          end
        end
      end
      L3_3 = L2_3.distance
      if L3_3 < 2.0 then
        L3_3 = IsPedSittingInAnyVehicle
        L4_3 = PlayerPedId
        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L4_3()
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
        if not L3_3 then
          L3_3 = L4_1
          if not L3_3 then
            L0_3 = 0
            L3_3 = L2_3.table
            L3_3 = L3_3.coords
            L4_3 = DrawText3Ds
            L5_3 = L3_3.x
            L6_3 = L3_3.y
            L7_3 = L3_3.z
            L8_3 = "~o~[E] |~s~"
            L9_3 = Config
            L9_3 = L9_3.Lang
            L9_3 = L9_3.installPipe
            L8_3 = L8_3 .. L9_3
            L4_3(L5_3, L6_3, L7_3, L8_3)
            L4_3 = IsControlJustReleased
            L5_3 = 0
            L6_3 = 38
            L4_3 = L4_3(L5_3, L6_3)
            if L4_3 then
              L4_3 = Config
              L4_3 = L4_3.JobLocations
              L5_3 = A2_2
              L4_3 = L4_3[L5_3]
              L4_3 = L4_3.mixerTargetLocations
              L5_3 = L2_3.holeIndex
              L4_3 = L4_3[L5_3]
              L4_3 = L4_3.pipes
              L5_3 = L2_3.pipeIndex
              L4_3 = L4_3[L5_3]
              L4_3.ready = true
              L4_3 = TriggerServerEvent
              L5_3 = "17mov_Construction:DisableThisPipe"
              L6_3 = L6_2
              L7_3 = {}
              L8_3 = A2_2
              L7_3.jobIndex = L8_3
              L8_3 = L2_3.holeIndex
              L7_3.holeIndex = L8_3
              L8_3 = L2_3.pipeIndex
              L7_3.pipeIndex = L8_3
              L4_3(L5_3, L6_3, L7_3)
              L4_3 = Config
              L4_3 = L4_3.JobLocations
              L5_3 = A2_2
              L4_3 = L4_3[L5_3]
              L4_3 = L4_3.mixerTargetLocations
              L5_3 = L2_3.holeIndex
              L4_3 = L4_3[L5_3]
              L4_3 = L4_3.pipes
              L5_3 = L2_3.pipeIndex
              L4_3 = L4_3[L5_3]
              L4_3 = L4_3.animDict
              L5_3 = Config
              L5_3 = L5_3.JobLocations
              L6_3 = A2_2
              L5_3 = L5_3[L6_3]
              L5_3 = L5_3.mixerTargetLocations
              L6_3 = L2_3.holeIndex
              L5_3 = L5_3[L6_3]
              L5_3 = L5_3.pipes
              L6_3 = L2_3.pipeIndex
              L5_3 = L5_3[L6_3]
              L5_3 = L5_3.animName
              while true do
                L6_3 = HasAnimDictLoaded
                L7_3 = L4_3
                L6_3 = L6_3(L7_3)
                if L6_3 then
                  break
                end
                L6_3 = RequestAnimDict
                L7_3 = L4_3
                L6_3(L7_3)
                L6_3 = Citizen
                L6_3 = L6_3.Wait
                L7_3 = 10
                L6_3(L7_3)
              end
              L6_3 = SetEntityCoords
              L7_3 = PlayerPedId
              L7_3 = L7_3()
              L8_3 = L2_3.table
              L8_3 = L8_3.pedInstallingCoords
              L6_3(L7_3, L8_3)
              L6_3 = SetEntityHeading
              L7_3 = PlayerPedId
              L7_3 = L7_3()
              L8_3 = L2_3.table
              L8_3 = L8_3.pedInstallingCoords
              L8_3 = L8_3.w
              L6_3(L7_3, L8_3)
              L6_3 = ClearPedTasks
              L7_3 = PlayerPedId
              L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L7_3()
              L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              L6_3 = TaskPlayAnim
              L7_3 = PlayerPedId
              L7_3 = L7_3()
              L8_3 = L4_3
              L9_3 = L5_3
              L10_3 = 8.0
              L11_3 = -8.0
              L12_3 = -1
              L13_3 = 1
              L14_3 = 0
              L15_3 = false
              L16_3 = false
              L17_3 = false
              L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              L6_3 = FreezeEntityPosition
              L7_3 = PlayerPedId
              L7_3 = L7_3()
              L8_3 = true
              L6_3(L7_3, L8_3)
              L6_3 = PipeMinigame
              if nil ~= L6_3 then
                L6_3 = PipeMinigame
                L6_3 = L6_3()
                if L6_3 then
                  L6_3 = ClearPedTasks
                  L7_3 = PlayerPedId
                  L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L7_3()
                  L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                  L6_3 = TriggerServerEvent
                  L7_3 = "17mov_Construction:SpawnPipe_SV"
                  L8_3 = L6_2
                  L9_3 = L2_3.table
                  L10_3 = {}
                  L11_3 = A2_2
                  L10_3.jobIndex = L11_3
                  L11_3 = L2_3.holeIndex
                  L10_3.holeIndex = L11_3
                  L11_3 = L2_3.pipeIndex
                  L10_3.pipeIndex = L11_3
                  L6_3(L7_3, L8_3, L9_3, L10_3)
                end
              else
                L6_3 = Citizen
                L6_3 = L6_3.Wait
                L7_3 = Config
                L7_3 = L7_3.PipeInstallingTime
                L6_3(L7_3)
                L6_3 = ClearPedTasks
                L7_3 = PlayerPedId
                L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L7_3()
                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                L6_3 = TriggerServerEvent
                L7_3 = "17mov_Construction:SpawnPipe_SV"
                L8_3 = L6_2
                L9_3 = L2_3.table
                L10_3 = {}
                L11_3 = A2_2
                L10_3.jobIndex = L11_3
                L11_3 = L2_3.holeIndex
                L10_3.holeIndex = L11_3
                L11_3 = L2_3.pipeIndex
                L10_3.pipeIndex = L11_3
                L6_3(L7_3, L8_3, L9_3, L10_3)
              end
              L6_3 = FreezeEntityPosition
              L7_3 = PlayerPedId
              L7_3 = L7_3()
              L8_3 = false
              L6_3(L7_3, L8_3)
            end
          end
        end
      end
      L3_3 = Citizen
      L3_3 = L3_3.Wait
      L4_3 = L0_3
      L3_3(L4_3)
    end
  end
  L10_2(L11_2)
  L10_2 = L9_1.enableConcretePouring
  if L10_2 then
    L10_2 = CreateThread
    function L11_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3
      while true do
        L0_3 = OnDuty
        if not L0_3 then
          break
        end
        L0_3 = 1000
        L1_3 = GetVehiclePedIsIn
        L2_3 = PlayerPedId
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3 = L2_3()
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
        L2_3 = GetEntityModel
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        L3_3 = GetHashKey
        L4_3 = Config
        L4_3 = L4_3.MixerModel
        L3_3 = L3_3(L4_3)
        if L2_3 == L3_3 then
          L2_3 = pairs
          L3_3 = L9_1.mixerTargetLocations
          L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
          for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
            L8_3 = L7_3.concreteReady
            if not L8_3 then
              L8_3 = L7_3.targetLocation
              L9_3 = GetEntityCoords
              L10_3 = PlayerPedId
              L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3 = L10_3()
              L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
              L9_3 = L8_3 - L9_3
              L9_3 = #L9_3
              if L9_3 < 20.0 and L9_3 > 4.0 then
                L0_3 = 0
                L10_3 = DrawMarker
                L11_3 = 20
                L12_3 = L8_3
                L13_3 = 0.0
                L14_3 = 0.0
                L15_3 = 0.0
                L16_3 = 0.0
                L17_3 = 180.0
                L18_3 = 0.0
                L19_3 = 2.0
                L20_3 = 2.0
                L21_3 = 2.0
                L22_3 = Config
                L22_3 = L22_3.MarkerSettings
                L22_3 = L22_3.UnActive
                L22_3 = L22_3.r
                L23_3 = Config
                L23_3 = L23_3.MarkerSettings
                L23_3 = L23_3.UnActive
                L23_3 = L23_3.g
                L24_3 = Config
                L24_3 = L24_3.MarkerSettings
                L24_3 = L24_3.UnActive
                L24_3 = L24_3.b
                L25_3 = Config
                L25_3 = L25_3.MarkerSettings
                L25_3 = L25_3.UnActive
                L25_3 = L25_3.a
                L26_3 = true
                L27_3 = false
                L28_3 = 2
                L29_3 = false
                L30_3 = false
                L31_3 = false
                L32_3 = false
                L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
              elseif L9_3 < 4.0 then
                L0_3 = 0
                L10_3 = DrawMarker
                L11_3 = 20
                L12_3 = L8_3
                L13_3 = 0.0
                L14_3 = 0.0
                L15_3 = 0.0
                L16_3 = 0.0
                L17_3 = 180.0
                L18_3 = 0.0
                L19_3 = 2.0
                L20_3 = 2.0
                L21_3 = 2.0
                L22_3 = Config
                L22_3 = L22_3.MarkerSettings
                L22_3 = L22_3.Active
                L22_3 = L22_3.r
                L23_3 = Config
                L23_3 = L23_3.MarkerSettings
                L23_3 = L23_3.Active
                L23_3 = L23_3.g
                L24_3 = Config
                L24_3 = L24_3.MarkerSettings
                L24_3 = L24_3.Active
                L24_3 = L24_3.b
                L25_3 = Config
                L25_3 = L25_3.MarkerSettings
                L25_3 = L25_3.Active
                L25_3 = L25_3.a
                L26_3 = true
                L27_3 = false
                L28_3 = 2
                L29_3 = false
                L30_3 = false
                L31_3 = false
                L32_3 = false
                L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
                L10_3 = ShowHelpNotification
                L11_3 = Config
                L11_3 = L11_3.Lang
                L11_3 = L11_3.clickToPour
                L10_3(L11_3)
                L10_3 = IsControlJustReleased
                L11_3 = 0
                L12_3 = 38
                L10_3 = L10_3(L11_3, L12_3)
                if L10_3 then
                  L10_3 = pipesReady
                  L11_3 = L7_3
                  L10_3 = L10_3(L11_3)
                  if L10_3 then
                    L10_3 = GetVehiclePedIsIn
                    L11_3 = PlayerPedId
                    L11_3 = L11_3()
                    L12_3 = false
                    L10_3 = L10_3(L11_3, L12_3)
                    L11_3 = TriggerServerEvent
                    L12_3 = "17mov_construction:PourConcrete"
                    L13_3 = L6_2
                    L14_3 = L7_3.concreteSettings
                    L15_3 = {}
                    L16_3 = A2_2
                    L15_3.jobIndex = L16_3
                    L15_3.holeIndex = L6_3
                    L16_3 = VehToNet
                    L17_3 = L10_3
                    L16_3 = L16_3(L17_3)
                    L15_3.netId = L16_3
                    L11_3(L12_3, L13_3, L14_3, L15_3)
                    L11_3 = SetEntityHeading
                    L12_3 = L10_3
                    L13_3 = L7_3.mixerFixedTargetLocation
                    L13_3 = L13_3.w
                    L11_3(L12_3, L13_3)
                    L11_3 = SetEntityCoords
                    L12_3 = L10_3
                    L13_3 = L7_3.mixerFixedTargetLocation
                    L11_3(L12_3, L13_3)
                    L11_3 = FreezeEntityPosition
                    L12_3 = L10_3
                    L13_3 = true
                    L11_3(L12_3, L13_3)
                    return
                  else
                    L10_3 = Notify
                    L11_3 = Config
                    L11_3 = L11_3.Lang
                    L11_3 = L11_3.pipesNotReady
                    L10_3(L11_3)
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
    end
    L10_2(L11_2)
  end
  L10_2 = SendNUIMessage
  L11_2 = {}
  L11_2.action = "showCounter"
  L10_2(L11_2)
end
L29_1(L30_1, L31_1)
function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ready
    if not L8_2 then
      L1_2 = true
      break
    end
  end
  return L1_2
end
IsThereFreeSlotInWall = L29_1
L29_1 = RegisterNetEvent
L30_1 = "17mov_constructionJob:sendMixer_cl"
function L31_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = Citizen
  L3_2 = L3_2.Wait
  L4_2 = 1000
  L3_2(L4_2)
  if A1_2 == A2_2 then
    return
  end
  L3_2 = L9_1.enableConcretePouring
  if not L3_2 then
    return
  end
  L3_2 = NetToVeh
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L12_1 = L3_2
  L13_1 = A0_2
  while true do
    L3_2 = L12_1
    if L3_2 ~= A0_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 1000
    L3_2(L4_2)
    L3_2 = NetToVeh
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L12_1 = L3_2
  end
  while true do
    L3_2 = L9_1
    if nil ~= L3_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 100
    L3_2(L4_2)
  end
  L3_2 = SetVehicle
  L4_2 = L12_1
  L3_2(L4_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "17mov_construction:disableThisPipe"
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.JobLocations
  L2_2 = A0_2.jobIndex
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.mixerTargetLocations
  L2_2 = A0_2.holeIndex
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.pipes
  L2_2 = A0_2.pipeIndex
  L1_2 = L1_2[L2_2]
  L1_2.ready = true
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "17mov_constructionJob:disableWeldingBlip"
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = L9_1.welding
  L1_2 = L1_2[A0_2]
  L1_2.ready = true
  L1_2 = RemoveBlip
  L2_2 = L9_1.welding
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.blip
  L1_2(L2_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "17mov_constructionJob:installBlockOnWall_cl"
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L9_1.walls
  L2_2 = A0_2.wallIndex
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.blocksInFrameLocations
  L2_2 = A0_2.placeIndex
  L1_2 = L1_2[L2_2]
  L1_2.ready = true
  L1_2 = "17mov_brick_00"
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = 4
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2 .. L2_2
  L2_2 = RequestModel
  L3_2 = L1_2
  L2_2(L3_2)
  while true do
    L2_2 = HasModelLoaded
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = RequestModel
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 10
    L2_2(L3_2)
  end
  L2_2 = L9_1.walls
  L3_2 = A0_2.wallIndex
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.blocksInFrameLocations
  L3_2 = A0_2.placeIndex
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.coords
  L3_2 = L9_1.walls
  L4_2 = A0_2.wallIndex
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.frame
  L3_2 = L3_2.rotation
  L4_2 = CreateObject
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = false
  L8_2 = true
  L9_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L10_1
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityRotation
  L6_2 = L4_2
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.placeIndex
  L6_2 = L9_1.walls
  L7_2 = A0_2.wallIndex
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.blocksInFrameLocations
  L6_2 = #L6_2
  if L5_2 == L6_2 then
    L5_2 = RemoveBlip
    L6_2 = L9_1.walls
    L7_2 = A0_2.wallIndex
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.frame
    L6_2 = L6_2.blip
    L5_2(L6_2)
  end
end
L29_1(L30_1, L31_1)
function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = L4_1
  if not L3_2 then
    while true do
      L3_2 = HasAnimDictLoaded
      L4_2 = A1_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = RequestAnimDict
      L4_2 = A1_2
      L3_2(L4_2)
      L3_2 = Citizen
      L3_2 = L3_2.Wait
      L4_2 = 5
      L3_2(L4_2)
    end
    L3_2 = RequestModel
    L4_2 = A0_2
    L3_2(L4_2)
    while true do
      L3_2 = HasModelLoaded
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = Citizen
      L3_2 = L3_2.Wait
      L4_2 = 100
      L3_2(L4_2)
      L3_2 = RequestModel
      L4_2 = A0_2
      L3_2(L4_2)
    end
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = table
    L4_2 = L4_2.unpack
    L5_2 = GetEntityCoords
    L6_2 = L3_2
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L5_2(L6_2)
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L7_2 = CreateObject
    L8_2 = GetHashKey
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L9_2 = L4_2
    L10_2 = L5_2
    L11_2 = L6_2 + 0.2
    L12_2 = true
    L13_2 = true
    L14_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L10_1
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = AttachEntityToEntity
    L9_2 = L7_2
    L10_2 = L3_2
    L11_2 = GetPedBoneIndex
    L12_2 = L3_2
    L13_2 = 60309
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = 0.025
    L13_2 = 0.08
    L14_2 = 0.255
    L15_2 = -145.0
    L16_2 = 290.0
    L17_2 = 180.0
    L18_2 = true
    L19_2 = true
    L20_2 = false
    L21_2 = true
    L22_2 = 1
    L23_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L8_2 = TaskPlayAnim
    L9_2 = L3_2
    L10_2 = A1_2
    L11_2 = A2_2
    L12_2 = 3.0
    L13_2 = -8
    L14_2 = -1
    L15_2 = 63
    L16_2 = 0
    L17_2 = 0
    L18_2 = 0
    L19_2 = 0
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L8_2 = true
    L4_1 = L8_2
    L5_1 = L7_2
    L8_2 = CreateThread
    function L9_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = L4_1
        if not L0_3 then
          break
        end
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 278
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 279
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 280
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 281
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 59
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 60
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 61
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 62
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 63
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 64
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 136
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 137
        L0_3(L1_3, L2_3)
      end
    end
    L8_2(L9_2)
    L8_2 = Citizen
    L8_2 = L8_2.Wait
    L9_2 = 1000
    L8_2(L9_2)
    while true do
      L8_2 = L4_1
      if not L8_2 then
        break
      end
      L8_2 = Citizen
      L8_2 = L8_2.Wait
      L9_2 = 300
      L8_2(L9_2)
      L8_2 = IsEntityPlayingAnim
      L9_2 = L3_2
      L10_2 = A1_2
      L11_2 = A2_2
      L12_2 = 3
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      if not L8_2 then
        L8_2 = L4_1
        if L8_2 then
          L8_2 = TaskPlayAnim
          L9_2 = L3_2
          L10_2 = A1_2
          L11_2 = A2_2
          L12_2 = 3.0
          L13_2 = -8
          L14_2 = -1
          L15_2 = 63
          L16_2 = 0
          L17_2 = 0
          L18_2 = 0
          L19_2 = 0
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        end
      end
    end
  end
end
Pick = L29_1
L29_1 = RegisterNetEvent
L30_1 = "17mov_constructionJob:deleteBlockFromSpawn_cl"
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = L9_1.walls
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.blocksInFrameLocations
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L9_1.walls
    L6_2 = L6_2[A0_2]
    L6_2 = L6_2.blocksInFrameLocations
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.baseBlock
    if 0 ~= L6_2 then
      L1_2 = L5_2
    end
  end
  L2_2 = DeleteEntity
  L3_2 = L9_1.walls
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.blocksInFrameLocations
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.baseBlock
  L2_2(L3_2)
  L2_2 = 1
  L3_2 = L10_1
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L10_1
    L6_2 = L6_2[L5_2]
    L7_2 = L9_1.walls
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2.blocksInFrameLocations
    L7_2 = L7_2[L1_2]
    L7_2 = L7_2.baseBlock
    if L6_2 == L7_2 then
      L6_2 = L10_1
      L6_2[L5_2] = nil
    end
  end
  L2_2 = L9_1.walls
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.blocksInFrameLocations
  L2_2 = L2_2[L1_2]
  L2_2.baseBlock = 0
  if 1 == L1_2 then
    L2_2 = L9_1.walls
    L2_2 = L2_2[A0_2]
    L2_2.spawnClear = true
    L2_2 = RemoveBlip
    L3_2 = L9_1.walls
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.blocksPickupBlip
    L2_2(L3_2)
  end
end
L29_1(L30_1, L31_1)
function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2.pipes
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ready
    if not L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  L1_2 = true
  return L1_2
end
pipesReady = L29_1
L29_1 = RegisterNetEvent
L30_1 = "17mov_constructionJob:RemoveMixerPickupBlip_cl"
function L31_1()
  local L0_2, L1_2
  L0_2 = RemoveBlip
  L1_2 = L6_1
  L0_2(L1_2)
  L0_2 = true
  L14_1 = L0_2
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "17mov_construction:PourConcrete_cl"
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Config
  L2_2 = L2_2.JobLocations
  L3_2 = A1_2.jobIndex
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.mixerTargetLocations
  L3_2 = A1_2.holeIndex
  L2_2 = L2_2[L3_2]
  L2_2.concreteReady = true
  L2_2 = RemoveBlip
  L3_2 = Config
  L3_2 = L3_2.JobLocations
  L4_2 = A1_2.jobIndex
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.mixerTargetLocations
  L4_2 = A1_2.holeIndex
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.blip
  L2_2(L3_2)
  L2_2 = RequestModel
  L3_2 = A0_2.model
  L2_2(L3_2)
  while true do
    L2_2 = HasModelLoaded
    L3_2 = A0_2.model
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = RequestModel
    L3_2 = A0_2.model
    L2_2(L3_2)
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 10
    L2_2(L3_2)
  end
  L2_2 = CreateObject
  L3_2 = A0_2.model
  L4_2 = A0_2.startingLoc
  L5_2 = false
  L6_2 = true
  L7_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetEntityRotation
  L4_2 = L2_2
  L5_2 = A0_2.rotation
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L10_1
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  while true do
    L3_2 = GetEntityCoords
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.z
    L4_2 = A0_2.maxZ
    if not (L3_2 <= L4_2) then
      break
    end
    L3_2 = GetEntityCoords
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = SetEntityCoords
    L5_2 = L2_2
    L6_2 = L3_2.x
    L7_2 = L3_2.y
    L8_2 = L3_2.z
    L8_2 = L8_2 + 0.0075
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 0
    L4_2(L5_2)
  end
  L3_2 = FreezeEntityPosition
  L4_2 = NetToVeh
  L5_2 = A1_2.netId
  L4_2 = L4_2(L5_2)
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L29_1(L30_1, L31_1)
L29_1 = AddEventHandler
L30_1 = "onResourceStop"
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = 1
  L2_2 = L10_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = DeleteObject
    L6_2 = L10_1
    L6_2 = L6_2[L4_2]
    L5_2(L6_2)
  end
  L1_2 = SetModelAsNoLongerNeeded
  L2_2 = "concrete"
  L1_2(L2_2)
  L1_2 = SetModelAsNoLongerNeeded
  L2_2 = "17mov_pipe"
  L1_2(L2_2)
  L1_2 = SetModelAsNoLongerNeeded
  L2_2 = "17mov_brick_001"
  L1_2(L2_2)
  L1_2 = SetModelAsNoLongerNeeded
  L2_2 = "17mov_brick_002"
  L1_2(L2_2)
  L1_2 = SetModelAsNoLongerNeeded
  L2_2 = "17mov_brick_003"
  L1_2(L2_2)
  L1_2 = SetModelAsNoLongerNeeded
  L2_2 = "17mov_brick_004"
  L1_2(L2_2)
  L1_2 = SetModelAsNoLongerNeeded
  L2_2 = "17mov_construction_objects"
  L1_2(L2_2)
  L1_2 = SetModelAsNoLongerNeeded
  L2_2 = "17mov_wallframe_wall"
  L1_2(L2_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "17mov_ConstructionJob:SpawnPipe"
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Config
  L2_2 = L2_2.JobLocations
  L3_2 = A1_2.jobIndex
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.mixerTargetLocations
  L3_2 = A1_2.holeIndex
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.pipes
  L3_2 = A1_2.pipeIndex
  L2_2 = L2_2[L3_2]
  L2_2.ready = true
  L2_2 = RemoveBlip
  L3_2 = Config
  L3_2 = L3_2.JobLocations
  L4_2 = A1_2.jobIndex
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.mixerTargetLocations
  L4_2 = A1_2.holeIndex
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.pipes
  L4_2 = A1_2.pipeIndex
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.blip
  L2_2(L3_2)
  L2_2 = RequestModel
  L3_2 = Config
  L3_2 = L3_2.PipeModel
  L2_2(L3_2)
  while true do
    L2_2 = HasModelLoaded
    L3_2 = Config
    L3_2 = L3_2.PipeModel
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = RequestModel
    L3_2 = Config
    L3_2 = L3_2.PipeModel
    L2_2(L3_2)
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 10
    L2_2(L3_2)
  end
  L2_2 = CreateObject
  L3_2 = Config
  L3_2 = L3_2.PipeModel
  L4_2 = A0_2.coords
  L5_2 = false
  L6_2 = true
  L7_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetEntityRotation
  L4_2 = L2_2
  L5_2 = A0_2.rotation
  L3_2(L4_2, L5_2)
  L3_2 = FreezeEntityPosition
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L10_1
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L29_1(L30_1, L31_1)
L29_1 = true
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L29_1
  if not L0_2 then
    return
  end
  L0_2 = false
  L29_1 = L0_2
  L0_2 = L15_1
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
      L29_1 = L0_2
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
    L0_2 = GetEntityModel
    L1_2 = vehicle
    L0_2 = L0_2(L1_2)
    L1_2 = GetHashKey
    L2_2 = Config
    L2_2 = L2_2.JobVehicleModel
    L1_2 = L1_2(L2_2)
    if L0_2 == L1_2 then
      goto lbl_51
    end
  end
  L0_2 = GetEntityModel
  L1_2 = vehicle
  L0_2 = L0_2(L1_2)
  L1_2 = GetHashKey
  L2_2 = Config
  L2_2 = L2_2.MixerModel
  L1_2 = L1_2(L2_2)
  ::lbl_51::
  if L0_2 == L1_2 then
    L0_2 = Notify
    L1_2 = Config
    L1_2 = L1_2.Lang
    L1_2 = L1_2.notADriver
    L0_2(L1_2)
    L0_2 = true
    L29_1 = L0_2
    return
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
  if L1_2 ~= L2_2 then
    L1_2 = GetEntityModel
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = GetHashKey
    L3_2 = Config
    L3_2 = L3_2.MixerModel
    L2_2 = L2_2(L3_2)
    if L1_2 ~= L2_2 then
      goto lbl_93
    end
  end
  L1_2 = DeleteVehicleByCore
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_construction:endJob_sv"
  L3_2 = true
  L4_2 = JobVehicleNetId
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = true
  L29_1 = L1_2
  do return end
  ::lbl_93::
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "openWarning"
  L1_2(L2_2)
  L1_2 = true
  L29_1 = L1_2
end
EndJob = L30_1
L30_1 = RegisterNetEvent
L31_1 = "17mov_construction:endJob_cl"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "17mov_construction:endJob_cl"
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = RemoveKeys
  if nil ~= L0_2 then
    L0_2 = RemoveKeys
    L0_2()
  end
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
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
  OnDuty = false
  L0_2 = 0
  L11_1 = L0_2
  L0_2 = Config
  L0_2 = L0_2.RequireWorkClothes
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.EnableCloakroom
    if not L0_2 then
      L0_2 = false
      L16_1 = L0_2
      L0_2 = ChangeClothes
      L1_2 = "citizen"
      L0_2(L1_2)
    end
  end
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "updateCounter"
  L1_2.value = 0
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hideCounter"
  L0_2(L1_2)
  L0_2 = SetModelAsNoLongerNeeded
  L1_2 = "concrete"
  L0_2(L1_2)
  L0_2 = SetModelAsNoLongerNeeded
  L1_2 = "17mov_pipe"
  L0_2(L1_2)
  L0_2 = SetModelAsNoLongerNeeded
  L1_2 = "17mov_brick_001"
  L0_2(L1_2)
  L0_2 = SetModelAsNoLongerNeeded
  L1_2 = "17mov_brick_002"
  L0_2(L1_2)
  L0_2 = SetModelAsNoLongerNeeded
  L1_2 = "17mov_brick_003"
  L0_2(L1_2)
  L0_2 = SetModelAsNoLongerNeeded
  L1_2 = "17mov_brick_004"
  L0_2(L1_2)
  L0_2 = SetModelAsNoLongerNeeded
  L1_2 = "17mov_construction_objects"
  L0_2(L1_2)
  L0_2 = SetModelAsNoLongerNeeded
  L1_2 = "17mov_wallframe_wall"
  L0_2(L1_2)
  L0_2 = RemoveBlip
  L1_2 = L6_1
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = L9_1.mixerTargetLocations
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = RemoveBlip
    L7_2 = L5_2.blip
    L6_2(L7_2)
    L5_2.concreteReady = false
    L6_2 = pairs
    L7_2 = L5_2.pipes
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L11_2.ready
      if L12_2 then
        L12_2 = L11_2.spawnByDefault
        if not L12_2 then
          L11_2.ready = false
        end
      end
    end
  end
  L0_2 = pairs
  L1_2 = L9_1.welding
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = RemoveBlip
    L7_2 = L5_2.blip
    L6_2(L7_2)
    L5_2.ready = false
  end
  L0_2 = pairs
  L1_2 = L9_1.mixerTargetLocations
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = pairs
    L7_2 = L5_2.pipes
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = RemoveBlip
      L13_2 = L11_2.blip
      L12_2(L13_2)
    end
  end
  L0_2 = pairs
  L1_2 = L9_1.walls
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = RemoveBlip
    L7_2 = L5_2.frame
    L7_2 = L7_2.blip
    L6_2(L7_2)
    L6_2 = RemoveBlip
    L7_2 = L5_2.blocksPickupBlip
    L6_2(L7_2)
    L5_2.spawnClear = false
    L6_2 = pairs
    L7_2 = L5_2.blocksInFrameLocations
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L11_2.ready = false
    end
  end
  L0_2 = pairs
  L1_2 = L9_1.customTasks
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = RemoveBlip
    L7_2 = L5_2.blip
    L6_2(L7_2)
  end
  L0_2 = 1
  L1_2 = L10_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    while true do
      L4_2 = DoesEntityExist
      L5_2 = L10_1
      L5_2 = L5_2[L3_2]
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        break
      end
      L4_2 = DeleteObject
      L5_2 = L10_1
      L5_2 = L5_2[L3_2]
      L4_2(L5_2)
      L4_2 = Citizen
      L4_2 = L4_2.Wait
      L5_2 = 10
      L4_2(L5_2)
    end
    L4_2 = L10_1
    L4_2[L3_2] = nil
  end
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNUICallback
L31_1 = "acceptWarning"
function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_construction:endJob_sv"
  L3_2 = false
  L4_2 = JobVehicleNetId
  L1_2(L2_2, L3_2, L4_2)
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
L30_1(L31_1, L32_1)

local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1
OnDuty = false
L0_1 = false
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = false
L7_1 = {}
L8_1 = 0
L9_1 = {}
L10_1 = {}
L11_1 = GetPlayerServerId
L12_1 = PlayerId
L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1 = L12_1()
L11_1 = L11_1(L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1)
L12_1 = true
L13_1 = false
L14_1 = false
L15_1 = 0
L16_1 = 1
L17_1 = 0
L18_1 = nil
L19_1 = nil
L20_1 = nil
L21_1 = false
L22_1 = false
L23_1 = false
L24_1 = ""
L25_1 = false
L26_1 = nil
L27_1 = 0
L28_1 = {}
L29_1 = NetToObj
L30_1 = NetToVeh
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = NetworkDoesNetworkIdExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L29_1
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = 0
    return L1_2
  end
end
NetToObj = L31_1
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = NetworkDoesNetworkIdExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L30_1
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = 0
    return L1_2
  end
end
NetToVeh = L31_1
L31_1 = CreateThread
function L32_1()
  local L0_2, L1_2
  while true do
    L0_2 = SetVehicle
    if nil ~= L0_2 then
      break
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
  L0_2 = SetVehicle
  function L1_2(A0_3)
    local L1_3, L2_3
    L1_3 = L9_1
    L1_3 = L1_3[A0_3]
    if true == L1_3 then
      return
    end
    L1_3 = L9_1
    L1_3[A0_3] = true
    L1_3 = CreateThread
    function L2_3()
      local L0_4, L1_4
      L0_4 = L0_2
      L1_4 = A0_3
      L0_4(L1_4)
    end
    L1_3(L2_3)
  end
  SetVehicle = L1_2
end
L31_1(L32_1)
L31_1 = RegisterNUICallback
L32_1 = "driverLoaded"
function L33_1()
  local L0_2, L1_2
  L0_2 = true
  L13_1 = L0_2
  L0_2 = cb
  L1_2 = "ok"
  L0_2(L1_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNUICallback
L32_1 = "nuiLoaded"
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = true
  L14_1 = L2_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = Config
  L4_2 = L4_2.Lang
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = string
    L9_2 = L9_2.sub
    L10_2 = L7_2
    L11_2 = 1
    L12_2 = string
    L12_2 = L12_2.len
    L13_2 = "NUI_"
    L12_2, L13_2 = L12_2(L13_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    if "NUI_" == L9_2 then
      L9_2 = string
      L9_2 = L9_2.sub
      L10_2 = L7_2
      L11_2 = string
      L11_2 = L11_2.len
      L12_2 = "NUI_"
      L11_2 = L11_2(L12_2)
      L11_2 = L11_2 + 1
      L9_2 = L9_2(L10_2, L11_2)
      L2_2[L9_2] = L8_2
    end
  end
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "SetupLang"
  L4_2.lang = L2_2
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L31_1(L32_1, L33_1)
function L31_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = Config
  L0_2 = L0_2.RequireAllTeamOnRig
  if not L0_2 then
    L0_2 = true
    return L0_2
  end
  L0_2 = Config
  L0_2 = L0_2.RigsLocations
  L1_2 = L15_1
  L0_2 = L0_2[L1_2]
  if L0_2 then
    L1_2 = L28_1
    L1_2 = #L1_2
    if not (L1_2 < 1) then
      goto lbl_24
    end
  end
  L1_2 = Notify
  L2_2 = Config
  L2_2 = L2_2.Lang
  L2_2 = L2_2.unableToPerform
  L1_2(L2_2)
  L1_2 = false
  do return L1_2 end
  ::lbl_24::
  L1_2 = pairs
  L2_2 = L28_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetPlayerPed
    L8_2 = GetPlayerFromServerId
    L9_2 = L6_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L8_2 = false
    L9_2 = DoesEntityExist
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = GetEntityCoords
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L10_2 = L0_2.Crane
      L10_2 = L10_2.SpawnCoords
      L11_2 = vector3
      L12_2 = -70.0
      L13_2 = -50.0
      L14_2 = -1.0
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L12_2 = vector3
      L13_2 = 60.0
      L14_2 = 50.0
      L15_2 = 20.0
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L13_2 = L10_2 + L11_2
      L14_2 = L10_2 + L12_2
      L15_2 = L9_2.x
      L16_2 = L13_2.x
      if L15_2 >= L16_2 then
        L15_2 = L9_2.x
        L16_2 = L14_2.x
        if L15_2 <= L16_2 then
          L15_2 = L9_2.y
          L16_2 = L13_2.y
          if L15_2 >= L16_2 then
            L15_2 = L9_2.y
            L16_2 = L14_2.y
            if L15_2 <= L16_2 then
              L15_2 = L9_2.z
              L16_2 = L13_2.z
              if L15_2 >= L16_2 then
                L15_2 = L9_2.z
                L16_2 = L14_2.z
                if L15_2 <= L16_2 then
                  L8_2 = true
                end
              end
            end
          end
        end
      end
    end
    if not L8_2 then
      L9_2 = Notify
      L10_2 = Config
      L10_2 = L10_2.Lang
      L10_2 = L10_2.unableToPerform
      L9_2(L10_2)
      L9_2 = false
      return L9_2
    end
  end
  L1_2 = true
  return L1_2
end
CheckMembersAreOnRig = L31_1
L31_1 = RegisterNetEvent
L32_1 = "17mov_OilRig:UpdateLobbyMembers"
function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L28_1 = A0_2
  L1_2 = print
  L2_2 = "Updating members"
  L3_2 = json
  L3_2 = L3_2.encode
  L4_2 = L28_1
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L31_1(L32_1, L33_1)
L31_1 = CreateThread
function L32_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = L14_1
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
  L0_2 = Config
  L0_2 = L0_2.letBossSplitReward
  if L0_2 then
    L0_2 = RegisterNUICallback
    L1_2 = "checkIfThisRewardIsFine"
    function L2_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L2_3 = math
      L2_3 = L2_3.floor
      L3_3 = A0_3.value
      L2_3 = L2_3(L3_3)
      L3_3 = A0_3.plyId
      if L2_3 > 100 or L2_3 < 0 then
        L4_3 = Notify
        L5_3 = Config
        L5_3 = L5_3.Lang
        L5_3 = L5_3.wrongReward1
        L4_3(L5_3)
        L4_3 = A1_3
        L5_3 = false
        L4_3(L5_3)
        return
      end
      L4_3 = TriggerServerCallback
      L5_3 = "17mov_OilRig:CheckThisReward"
      function L6_3(A0_4)
        local L1_4, L2_4
        if A0_4 then
          L1_4 = A1_3
          L2_4 = true
          L1_4(L2_4)
        else
          L1_4 = A1_3
          L2_4 = false
          L1_4(L2_4)
          L1_4 = Notify
          L2_4 = Config
          L2_4 = L2_4.Lang
          L2_4 = L2_4.wrongReward2
          L1_4(L2_4)
        end
      end
      L7_3 = L2_3
      L8_3 = L3_3
      L4_3(L5_3, L6_3, L7_3, L8_3)
    end
    L0_2(L1_2, L2_2)
  else
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "hideManageRewards"
    L0_2(L1_2)
  end
end
L31_1(L32_1)
L31_1 = RegisterNUICallback
L32_1 = "tutorialClosed"
function L33_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = false
  L23_1 = L0_2
  L0_2 = ""
  L24_1 = L0_2
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNetEvent
L32_1 = "17mov_OilRig:UpdateHostPercentages"
function L33_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateHostRewards"
  L2_2.value = A0_2
  L1_2(L2_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNetEvent
L32_1 = "17mov_OilRig:SetMyReward"
function L33_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateMyReward"
  L2_2.reward = A0_2
  L1_2(L2_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNUICallback
L32_1 = "menuClosed"
function L33_1()
  local L0_2, L1_2, L2_2
  L0_2 = false
  L12_1 = L0_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNUICallback
L32_1 = "dontShowTutorialAgain"
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetResourceKvpInt
  L3_2 = "17mov_Tutorials:"
  L4_2 = L24_1
  L3_2 = L3_2 .. L4_2
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNetEvent
L32_1 = "17mov_OilRig:clearMyLobby"
function L33_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L10_1 = L0_2
  L0_2 = TriggerServerCallback
  L1_2 = "17mov_OilRig:init"
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
L31_1(L32_1, L33_1)
L31_1 = RegisterNetEvent
L32_1 = "17mov_OilRig:RefreshMugs"
L31_1(L32_1)
L31_1 = AddEventHandler
L32_1 = "17mov_OilRig:RefreshMugs"
function L33_1(A0_2, A1_2)
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
    L4_2 = "17mov_OilRig:init"
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
  L4_2 = "17mov_OilRig:IfPlayerOwnsTeam"
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
L31_1(L32_1, L33_1)
function L31_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L8_1
  L2_2 = L2_2 + 1
  L8_1 = L2_2
  L2_2 = L8_1
  L3_2 = L7_1
  L4_2 = {}
  L3_2[A0_2] = L4_2
  L3_2 = L7_1
  L3_2 = L3_2[A0_2]
  L3_2[L2_2] = A1_2
  L3_2 = TriggerServerEvent
  L4_2 = "17mov_Callbacks:GetResponse"
  L5_2 = GetCurrentResourceName
  L5_2 = L5_2()
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2
  L6_2 = L2_2
  L7_2 = ...
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
TriggerServerCallback = L31_1
L31_1 = RegisterNetEvent
L32_1 = "17mov_Callbacks:receiveData"
L33_1 = GetCurrentResourceName
L33_1 = L33_1()
L32_1 = L32_1 .. L33_1
function L33_1(A0_2, A1_2, ...)
  local L2_2, L3_2
  L2_2 = L7_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L7_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = L7_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = ...
  L2_2(L3_2)
  L2_2 = L7_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L7_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      L2_2 = L7_1
      L2_2 = L2_2[A0_2]
      L2_2[A1_2] = nil
    end
  end
  L2_2 = L7_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L7_1
    L2_2 = L2_2[A0_2]
    L2_2 = #L2_2
    if 0 == L2_2 then
      L2_2 = L7_1
      L2_2[A0_2] = nil
    end
  end
end
L31_1(L32_1, L33_1)
L31_1 = false
function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2
  L1_2 = L31_1
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
      L31_1 = L1_2
      return
    end
  end
  L1_2 = true
  L31_1 = L1_2
  L1_2 = Config
  L1_2 = L1_2.UseTarget
  if L1_2 then
    L1_2 = Config
    L2_2 = {}
    L1_2.Locations2 = L2_2
    L1_2 = SpawnPeds
    L1_2()
    while true do
      L1_2 = L31_1
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
          goto lbl_59
        end
      end
      L8_2 = Config
      L8_2 = L8_2.RequiredJob
      ::lbl_59::
      if "none" == L8_2 then
        L8_2 = pairs
        L9_2 = Config
        L9_2 = L9_2.Locations2
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
          L14_2 = L13_2.turnedOff
          if not L14_2 then
            L14_2 = OnDuty
            if not L14_2 then
              L14_2 = L13_2.type
              if "duty" ~= L14_2 then
                goto lbl_279
              end
            end
            L14_2 = pairs
            L15_2 = L13_2.Coords
            L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
            for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
              L20_2 = L1_2 - L19_2
              L20_2 = #L20_2
              if L20_2 < 125 then
                L21_2 = L13_2.scale
                L21_2 = L21_2.x
                if L20_2 > L21_2 then
                  if "FinishJobBoat" == L12_2 then
                    L21_2 = DrawMarker
                    L22_2 = 35
                    L23_2 = L19_2.x
                    L24_2 = L19_2.y
                    L25_2 = L19_2.z
                    L25_2 = L25_2 + 3.5
                    L26_2 = 0.0
                    L27_2 = 0.0
                    L28_2 = 0.0
                    L29_2 = 0.0
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
                    L40_2 = true
                    L41_2 = 2
                    L42_2 = false
                    L43_2 = false
                    L44_2 = false
                    L45_2 = false
                    L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
                  end
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
                  if "FinishJobBoat" == L12_2 then
                    L21_2 = DrawMarker
                    L22_2 = 35
                    L23_2 = L19_2.x
                    L24_2 = L19_2.y
                    L25_2 = L19_2.z
                    L25_2 = L25_2 + 3.5
                    L26_2 = 0.0
                    L27_2 = 0.0
                    L28_2 = 0.0
                    L29_2 = 0.0
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
                    L40_2 = true
                    L41_2 = 2
                    L42_2 = false
                    L43_2 = false
                    L44_2 = false
                    L45_2 = false
                    L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
                  end
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
                  L40_2 = true
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
          end
          ::lbl_279::
        end
        if L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if not L8_2 then
            goto lbl_298
          end
        end
        if L2_2 then
          L8_2 = LastStation
          if L8_2 == L5_2 then
            L8_2 = LastPart
            if L8_2 == L6_2 then
              L8_2 = LastPartNum
              if L8_2 == L7_2 then
                goto lbl_331
              end
            end
          end
          ::lbl_298::
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
                      goto lbl_323
                    end
                  end
                end
                L8_2 = TriggerEvent
                L9_2 = "17mov_OilRig:ExitedMarker"
                L10_2 = LastStation
                L11_2 = LastPart
                L12_2 = LastPartNum
                L8_2(L9_2, L10_2, L11_2, L12_2)
                L3_2 = true
              end
            end
          end
          ::lbl_323::
          HasAlreadyEnteredMarker = true
          LastStation = L5_2
          LastPart = L6_2
          LastPartNum = L7_2
          L8_2 = TriggerEvent
          L9_2 = "17mov_OilRig:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_331::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_OilRig:ExitedMarker"
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
    L2_2 = SpawnedPed
    L1_2(L2_2)
  else
    while true do
      L1_2 = L31_1
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
          goto lbl_385
        end
      end
      L8_2 = Config
      L8_2 = L8_2.RequiredJob
      ::lbl_385::
      if "none" == L8_2 then
        L8_2 = pairs
        L9_2 = Config
        L9_2 = L9_2.Locations
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
          L14_2 = L13_2.turnedOff
          if not L14_2 then
            L14_2 = OnDuty
            if not L14_2 then
              L14_2 = L13_2.type
              if "duty" ~= L14_2 then
                goto lbl_605
              end
            end
            L14_2 = pairs
            L15_2 = L13_2.Coords
            L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
            for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
              L20_2 = L1_2 - L19_2
              L20_2 = #L20_2
              if L20_2 < 125 then
                L21_2 = L13_2.scale
                L21_2 = L21_2.x
                if L20_2 > L21_2 then
                  if "FinishJobBoat" == L12_2 then
                    L21_2 = DrawMarker
                    L22_2 = 35
                    L23_2 = L19_2.x
                    L24_2 = L19_2.y
                    L25_2 = L19_2.z
                    L25_2 = L25_2 + 3.5
                    L26_2 = 0.0
                    L27_2 = 0.0
                    L28_2 = 0.0
                    L29_2 = 0.0
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
                    L40_2 = true
                    L41_2 = 2
                    L42_2 = false
                    L43_2 = false
                    L44_2 = false
                    L45_2 = false
                    L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
                  end
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
                  if "FinishJobBoat" == L12_2 then
                    L21_2 = DrawMarker
                    L22_2 = 35
                    L23_2 = L19_2.x
                    L24_2 = L19_2.y
                    L25_2 = L19_2.z
                    L25_2 = L25_2 + 3.5
                    L26_2 = 0.0
                    L27_2 = 0.0
                    L28_2 = 0.0
                    L29_2 = 0.0
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
                    L40_2 = true
                    L41_2 = 2
                    L42_2 = false
                    L43_2 = false
                    L44_2 = false
                    L45_2 = false
                    L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
                  end
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
          end
          ::lbl_605::
        end
        if L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if not L8_2 then
            goto lbl_624
          end
        end
        if L2_2 then
          L8_2 = LastStation
          if L8_2 == L5_2 then
            L8_2 = LastPart
            if L8_2 == L6_2 then
              L8_2 = LastPartNum
              if L8_2 == L7_2 then
                goto lbl_657
              end
            end
          end
          ::lbl_624::
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
                      goto lbl_649
                    end
                  end
                end
                L8_2 = TriggerEvent
                L9_2 = "17mov_OilRig:ExitedMarker"
                L10_2 = LastStation
                L11_2 = LastPart
                L12_2 = LastPartNum
                L8_2(L9_2, L10_2, L11_2, L12_2)
                L3_2 = true
              end
            end
          end
          ::lbl_649::
          HasAlreadyEnteredMarker = true
          LastStation = L5_2
          LastPart = L6_2
          LastPartNum = L7_2
          L8_2 = TriggerEvent
          L9_2 = "17mov_OilRig:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_657::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_OilRig:ExitedMarker"
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
StartMarkers = L32_1
L32_1 = Citizen
L32_1 = L32_1.CreateThread
function L33_1()
  local L0_2, L1_2
  L0_2 = GetPlayerData
  L0_2 = L0_2()
  L1_1 = L0_2
  while true do
    L0_2 = L1_1
    if nil ~= L0_2 then
      L0_2 = L1_1.job
      if nil ~= L0_2 then
        break
      end
    end
    L0_2 = GetPlayerData
    L0_2 = L0_2()
    L1_1 = L0_2
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
    L1_2 = L1_1.job
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
  L1_2 = L1_1
  L0_2(L1_2)
end
L32_1(L33_1)
L32_1 = false
function L33_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L32_1
  if L0_2 then
    return
  end
  L0_2 = true
  L32_1 = L0_2
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
MakeBlip = L33_1
function L33_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = false
  L32_1 = L0_2
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
DeleteBlip = L33_1
L33_1 = false
function L34_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L33_1
  if L1_2 then
    return
  end
  while true do
    L1_2 = L14_1
    if L1_2 then
      break
    end
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = GetPlayerData
  L1_2 = L1_2()
  L1_1 = L1_2
  if not A0_2 then
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 5500
    L1_2(L2_2)
  end
  L1_2 = true
  L33_1 = L1_2
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RestrictBlipToRequiredJob
    if L1_2 then
      while true do
        L1_2 = L1_1
        if nil ~= L1_2 then
          break
        end
        L1_2 = L1_1.job
        if nil ~= L1_2 then
          break
        end
        L1_2 = GetPlayerData
        L1_2 = L1_2()
        L1_1 = L1_2
        L1_2 = Citizen
        L1_2 = L1_2.Wait
        L2_2 = 100
        L1_2(L2_2)
      end
      L1_2 = L1_1.job
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
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 3500
  L1_2(L2_2)
  L1_2 = TriggerServerCallback
  L2_2 = "17mov_OilRig:init"
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
InitalizeScript = L34_1
L34_1 = RegisterNetEvent
L35_1 = "QBCore:Client:OnPlayerLoaded"
function L36_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "esx:playerLoaded"
function L36_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "QBCore:Client:OnJobUpdate"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "QBCore:Client:OnJobUpdate"
function L36_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetPlayerData
  L1_2 = L1_2()
  L1_1 = L1_2
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RestrictBlipToRequiredJob
    if L1_2 then
      L1_2 = L1_1.job
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
    L1_2 = L1_1.job
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
    L2_2 = L1_1
    L1_2(L2_2)
  else
    L1_2 = false
    L31_1 = L1_2
  end
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "esx:setJob"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "esx:setJob"
function L36_1(A0_2)
  local L1_2, L2_2
  while true do
    L1_2 = L1_1
    if nil ~= L1_2 then
      L1_2 = L1_1.job
      if nil ~= L1_2 then
        break
      end
    end
    L1_2 = GetPlayerData
    L1_2 = L1_2()
    L1_1 = L1_2
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  L1_1.job = A0_2
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RestrictBlipToRequiredJob
    if L1_2 then
      L1_2 = L1_1.job
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
    L1_2 = L1_1.job
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
    L2_2 = L1_1
    L1_2(L2_2)
  else
    L1_2 = false
    L31_1 = L1_2
  end
end
L34_1(L35_1, L36_1)
L34_1 = AddEventHandler
L35_1 = "17mov_OilRig:EnteredMarker"
function L36_1(A0_2)
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
L34_1(L35_1, L36_1)
L34_1 = AddEventHandler
L35_1 = "17mov_OilRig:ExitedMarker"
function L36_1(A0_2)
  local L1_2
  CurrentAction = nil
  CurrentActionMsg = nil
  CurrentActionStation = nil
end
L34_1(L35_1, L36_1)
L34_1 = RegisterCommand
L35_1 = "+17MovOilRigJobStartMarkerAction"
function L36_1()
  local L0_2, L1_2
end
L37_1 = false
L34_1(L35_1, L36_1, L37_1)
L34_1 = RegisterCommand
L35_1 = "-17MovOilRigJobStartMarkerAction"
function L36_1()
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
        L1_2 = "17mov_OilRig:IfPlayerIsHost"
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
L37_1 = false
L34_1(L35_1, L36_1, L37_1)
L34_1 = TriggerEvent
L35_1 = "chat:removeSuggestion"
L36_1 = "/+17MovOilRigJobStartMarkerAction"
L34_1(L35_1, L36_1)
L34_1 = TriggerEvent
L35_1 = "chat:removeSuggestion"
L36_1 = "/-17MovOilRigJobStartMarkerAction"
L34_1(L35_1, L36_1)
L34_1 = RegisterKeyMapping
L35_1 = "+17MovOilRigJobStartMarkerAction"
L36_1 = Config
L36_1 = L36_1.Lang
L36_1 = L36_1.keybind
L37_1 = "keyboard"
L38_1 = "E"
L34_1(L35_1, L36_1, L37_1, L38_1)
L34_1 = {}
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L33_1
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
    L1_2 = "17mov_OilRig:init"
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
      L5_3 = "17mov_OilRig:GetPlayersNames"
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
            L7_4 = L34_1
            L7_4 = L7_4[L8_4]
            if nil == L7_4 then
              L8_4 = L6_4.id
              L7_4 = L34_1
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
        L2_4 = L34_1
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
            L9_4 = L34_1
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
OpenDutyMenu = L35_1
L35_1 = RegisterNUICallback
L36_1 = "changeClothes"
function L37_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.type
  if "work" == L1_2 then
    L2_2 = true
    L6_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "work"
    L2_2(L3_2)
  else
    L2_2 = false
    L6_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "citizen"
    L2_2(L3_2)
  end
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNUICallback
L36_1 = "requestReacted"
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.boolean
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_OilRig:ClientReactRequest"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNUICallback
L36_1 = "sendRequest"
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = OnDuty
  if L1_2 then
    L1_2 = Notify
    L2_2 = Config
    L2_2 = L2_2.Lang
    L2_2 = L2_2.cantInvite
    return L1_2(L2_2)
  end
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_OilRig:SendRequestToClient_sv"
  L3_2 = tonumber
  L4_2 = A0_2.id
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNUICallback
L36_1 = "kickPlayerFromLobby"
function L37_1(A0_2)
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
  L3_2 = "17mov_OilRig:KickPlayerFromLobby"
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNUICallback
L36_1 = "focusOff"
function L37_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNUICallback
L36_1 = "notify"
function L37_1(A0_2)
  local L1_2, L2_2
  L1_2 = Notify
  L2_2 = A0_2.msg
  L1_2(L2_2)
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "17mov_OilRig:SendRequestToClient_cl"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "17mov_OilRig:SendRequestToClient_cl"
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetNuiFocus
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "ShowInviteBox"
  L3_2.name = A0_2
  L2_2(L3_2)
end
L35_1(L36_1, L37_1)
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = {}
  L1_2 = 1
  L2_2 = Config
  L2_2 = L2_2.HandlerSpawnLocations
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = Config
    L5_2 = L5_2.HandlerSpawnLocations
    L5_2 = L5_2[L4_2]
    L6_2 = Functions
    L6_2 = L6_2.IsSpawnpointClear
    L7_2 = L5_2
    L8_2 = 5
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = Config
      L7_2 = L7_2.HandlerSpawnLocations
      L7_2 = L7_2[L4_2]
      L0_2.Handler = L7_2
      break
    end
  end
  L1_2 = {}
  L0_2.Containers = L1_2
  L1_2 = {}
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3
    while true do
      L0_3 = Config
      L0_3 = L0_3.ContainerSpawnLocations
      L0_3 = #L0_3
      if not (L0_3 < 4) then
        break
      end
      L0_3 = print
      L1_3 = "^5[ERROR]:^0 Config.ContainerSpawnLocations array needs to contain 4 or more locations. Can't continue"
      L0_3(L1_3)
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 1000
      L0_3(L1_3)
    end
  end
  L2_2(L3_2)
  while true do
    L2_2 = L0_2.Containers
    L2_2 = #L2_2
    if not (L2_2 < 3) then
      break
    end
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = 1
    L4_2 = Config
    L4_2 = L4_2.ContainerSpawnLocations
    L4_2 = #L4_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L1_2[L2_2]
    if not L3_2 then
      L1_2[L2_2] = true
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L0_2.Containers
      L5_2 = Config
      L5_2 = L5_2.ContainerSpawnLocations
      L5_2 = L5_2[L2_2]
      L3_2(L4_2, L5_2)
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  L2_2 = Functions
  L2_2 = L2_2.GetVehicles
  L2_2 = L2_2()
  L3_2 = 1
  L4_2 = Config
  L4_2 = L4_2.BoatSpawnLocations
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = {}
    L8_2 = 1
    L9_2 = #L2_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = GetEntityModel
      L13_2 = L2_2[L11_2]
      L12_2 = L12_2(L13_2)
      L13_2 = Config
      L13_2 = L13_2.BoatModel
      if L12_2 == L13_2 then
        L12_2 = GetEntityCoords
        L13_2 = L2_2[L11_2]
        L12_2 = L12_2(L13_2)
        L13_2 = vec3
        L14_2 = L12_2.x
        L15_2 = L12_2.y
        L16_2 = L12_2.z
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L14_2 = vec3
        L15_2 = Config
        L15_2 = L15_2.BoatSpawnLocations
        L15_2 = L15_2[L6_2]
        L15_2 = L15_2.x
        L16_2 = Config
        L16_2 = L16_2.BoatSpawnLocations
        L16_2 = L16_2[L6_2]
        L16_2 = L16_2.y
        L17_2 = Config
        L17_2 = L17_2.BoatSpawnLocations
        L17_2 = L17_2[L6_2]
        L17_2 = L17_2.z
        L14_2 = L14_2(L15_2, L16_2, L17_2)
        L13_2 = L13_2 - L14_2
        L13_2 = #L13_2
        if L13_2 <= 30.0 then
          L14_2 = table
          L14_2 = L14_2.insert
          L15_2 = L7_2
          L16_2 = L2_2[L11_2]
          L14_2(L15_2, L16_2)
        end
      end
    end
    L8_2 = #L7_2
    if 0 == L8_2 then
      L8_2 = Config
      L8_2 = L8_2.BoatSpawnLocations
      L8_2 = L8_2[L6_2]
      L0_2.Boat = L8_2
      break
    end
  end
  return L0_2
end
IsSpawnPointClear = L35_1
L35_1 = RegisterNUICallback
L36_1 = "startJob"
function L37_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = OnDuty
  if not L0_2 then
    L0_2 = IsSpawnPointClear
    L0_2 = L0_2()
    L1_2 = L0_2.Boat
    if nil == L1_2 then
      L1_2 = Notify
      L2_2 = Config
      L2_2 = L2_2.Lang
      L2_2 = L2_2.noBoatLocation
      return L1_2(L2_2)
    end
    L1_2 = L0_2.Containers
    L1_2 = #L1_2
    if 0 == L1_2 then
      L1_2 = Notify
      L2_2 = Config
      L2_2 = L2_2.Lang
      L2_2 = L2_2.noContainerLocation
      return L1_2(L2_2)
    end
    L1_2 = L0_2.Handler
    if nil == L1_2 then
      L1_2 = Notify
      L2_2 = Config
      L2_2 = L2_2.Lang
      L2_2 = L2_2.noHandlerLocation
      return L1_2(L2_2)
    end
    L1_2 = TriggerServerEvent
    L2_2 = "17mov_OilRig:StartJob_sv"
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
  else
    L0_2 = Notify
    L1_2 = Config
    L1_2 = L1_2.Lang
    L1_2 = L1_2.alreadyWorking
    L0_2(L1_2)
  end
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNUICallback
L36_1 = "leaveLobby"
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = OnDuty
  if L1_2 then
    L1_2 = Notify
    L2_2 = Config
    L2_2 = L2_2.Lang
    L2_2 = L2_2.cantLeaveLobby
    return L1_2(L2_2)
  end
  L1_2 = tonumber
  L2_2 = A0_2.id
  L1_2 = L1_2(L2_2)
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_OilRig:KickPlayerFromLobby"
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
L35_1(L36_1, L37_1)
function L35_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = PrepeareVehicle
  L4_2()
  L4_2 = 250
  L5_2 = RequestModel
  L6_2 = A0_2
  L5_2(L6_2)
  while true do
    L5_2 = HasModelLoaded
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if not (not L5_2 and L4_2 > 0) then
      break
    end
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 100
    L5_2(L6_2)
    L4_2 = L4_2 - 1
    L5_2 = RequestModel
    L6_2 = A0_2
    L5_2(L6_2)
  end
  L5_2 = CreateVehicle
  L6_2 = A0_2
  L7_2 = A1_2.x
  L8_2 = A1_2.y
  L9_2 = A1_2.z
  L10_2 = A1_2.w
  L11_2 = true
  L12_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if A2_2 then
    L6_2 = TaskWarpPedIntoVehicle
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = L5_2
    L9_2 = -1
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = NetworkGetNetworkIdFromEntity
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  while true do
    if 0 ~= L6_2 then
      L7_2 = netId
      if L7_2 ~= L5_2 then
        break
      end
    end
    L7_2 = NetworkGetNetworkIdFromEntity
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 100
    L7_2(L8_2)
  end
  L7_2 = NetworkSetObjectForceStaticBlend
  L8_2 = L5_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = _ENV
  L8_2 = "SetNetworkEnableVehiclePositionCorrection"
  L7_2 = L7_2[L8_2]
  L8_2 = L5_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = NetworkUseHighPrecisionBlending
  L8_2 = L6_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = SetEntityAsMissionEntity
  L8_2 = L5_2
  L9_2 = true
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = SetVehicleNeedsToBeHotwired
  L8_2 = L5_2
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = SetVehRadioStation
  L8_2 = L5_2
  L9_2 = "OFF"
  L7_2(L8_2, L9_2)
  L7_2 = SetVehicleFuelLevel
  L8_2 = L5_2
  L9_2 = 100.0
  L7_2(L8_2, L9_2)
  L7_2 = SetVehicleDirtLevel
  L8_2 = vehicle
  L9_2 = 0.0
  L7_2(L8_2, L9_2)
  L7_2 = SetModelAsNoLongerNeeded
  L8_2 = A0_2
  L7_2(L8_2)
  if not A3_2 then
    L7_2 = SetVehicle
    L8_2 = L5_2
    L7_2(L8_2)
  end
  L7_2 = 50
  while true do
    L8_2 = DoesEntityExist
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
    if not (not L8_2 and L7_2 > 0) then
      break
    end
    L8_2 = Citizen
    L8_2 = L8_2.Wait
    L9_2 = 100
    L8_2(L9_2)
    L7_2 = L7_2 - 1
  end
  if L7_2 <= 0 then
    L8_2 = SpawnVehicle
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L5_2 = L8_2
  end
  return L5_2
end
SpawnVehicle = L35_1
function L35_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = AddBlipForCoord
  L5_2 = A2_2.x
  L6_2 = A2_2.y
  L7_2 = A2_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2)
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
AddBlip17 = L35_1
L35_1 = RegisterNUICallback
L36_1 = "tutorialClosed"
function L37_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = false
  L23_1 = L0_2
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
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "17mov_OilRig:MyLocalContainerDeleted"
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = SpawnedObjects
  L2_2 = L2_2.LocalContainers
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = SpawnedObjects
    L5_2 = L5_2.LocalContainers
    L5_2 = L5_2[L4_2]
    if nil ~= L5_2 then
      L5_2 = SpawnedObjects
      L5_2 = L5_2.LocalContainers
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.coords
      if nil ~= L5_2 then
        L5_2 = SpawnedObjects
        L5_2 = L5_2.LocalContainers
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.coords
        if L5_2 == A0_2 then
          L5_2 = SpawnedObjects
          L5_2 = L5_2.ContainerDoors
          L6_2 = SpawnedObjects
          L6_2 = L6_2.LocalContainers
          L6_2 = L6_2[L4_2]
          L6_2 = L6_2.object
          L5_2 = L5_2[L6_2]
          L5_2 = L5_2.left
          if nil ~= L5_2 then
            L5_2 = DeleteEntity
            L6_2 = SpawnedObjects
            L6_2 = L6_2.ContainerDoors
            L7_2 = SpawnedObjects
            L7_2 = L7_2.LocalContainers
            L7_2 = L7_2[L4_2]
            L7_2 = L7_2.object
            L6_2 = L6_2[L7_2]
            L6_2 = L6_2.left
            L5_2(L6_2)
          end
          L5_2 = SpawnedObjects
          L5_2 = L5_2.ContainerDoors
          L6_2 = SpawnedObjects
          L6_2 = L6_2.LocalContainers
          L6_2 = L6_2[L4_2]
          L6_2 = L6_2.object
          L5_2 = L5_2[L6_2]
          L5_2 = L5_2.right
          if nil ~= L5_2 then
            L5_2 = DeleteEntity
            L6_2 = SpawnedObjects
            L6_2 = L6_2.ContainerDoors
            L7_2 = SpawnedObjects
            L7_2 = L7_2.LocalContainers
            L7_2 = L7_2[L4_2]
            L7_2 = L7_2.object
            L6_2 = L6_2[L7_2]
            L6_2 = L6_2.right
            L5_2(L6_2)
          end
          L5_2 = DeleteEntity
          L6_2 = SpawnedObjects
          L6_2 = L6_2.LocalContainers
          L6_2 = L6_2[L4_2]
          L6_2 = L6_2.object
          L5_2(L6_2)
          L5_2 = SetEntityDrawOutline
          L6_2 = SpawnedObjects
          L6_2 = L6_2.LocalContainers
          L6_2 = L6_2[L4_2]
          L6_2 = L6_2.object
          L7_2 = false
          L5_2(L6_2, L7_2)
          L5_2 = RemoveBlip
          L6_2 = Blips
          L7_2 = "Containers"
          L8_2 = SpawnedObjects
          L8_2 = L8_2.LocalContainers
          L8_2 = L8_2[L4_2]
          L8_2 = L8_2.object
          L7_2 = L7_2 .. L8_2
          L6_2 = L6_2[L7_2]
          L5_2(L6_2)
          L5_2 = table
          L5_2 = L5_2.remove
          L6_2 = SpawnedObjects
          L6_2 = L6_2.LocalContainers
          L7_2 = L4_2
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "17mov_OilRig:UpdateGlobalContainersArr"
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = 2000
  while true do
    L4_2 = NetToObj
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if 0 ~= L4_2 then
      break
    end
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 10
    L4_2(L5_2)
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    L4_2 = L4_2 - L2_2
    if L3_2 <= L4_2 then
      L4_2 = print
      L5_2 = "^1INFORMATION: ^7Can't fetch object with net id: "
      L6_2 = tostring
      L7_2 = A0_2
      L6_2 = L6_2(L7_2)
      L5_2 = L5_2 .. L6_2
      L4_2(L5_2)
    end
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = SpawnedObjects
  L5_2 = L5_2.GlobalContainers
  L6_2 = {}
  L7_2 = NetToObj
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L6_2.object = L7_2
  L6_2.coords = A1_2
  L4_2(L5_2, L6_2)
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "17mov_OilRig:TransformContainerToAttached"
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = 1
  L2_2 = SpawnedObjects
  L2_2 = L2_2.GlobalContainers
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = ObjToNet
    L6_2 = SpawnedObjects
    L6_2 = L6_2.GlobalContainers
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.object
    L5_2 = L5_2(L6_2)
    if L5_2 == A0_2 then
      L5_2 = SpawnedObjects
      L5_2 = L5_2.GlobalContainers
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.object
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = SpawnedObjects
      L7_2 = L7_2.AttachedContainers
      L8_2 = SpawnedObjects
      L8_2 = L8_2.GlobalContainers
      L8_2 = L8_2[L4_2]
      L8_2 = L8_2.object
      L6_2(L7_2, L8_2)
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = SpawnedObjects
      L7_2 = L7_2.AttachedContainersNetIds
      L8_2 = {}
      L9_2 = SpawnedObjects
      L9_2 = L9_2.GlobalContainers
      L9_2 = L9_2[L4_2]
      L9_2 = L9_2.object
      L8_2.object = L9_2
      L8_2.netId = A0_2
      L6_2(L7_2, L8_2)
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = SpawnedObjects
      L7_2 = L7_2.GlobalContainers
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
      L6_2 = NetworkHasControlOfEntity
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = DetachEntity
        L7_2 = L5_2
        L8_2 = false
        L9_2 = false
        L6_2(L7_2, L8_2, L9_2)
      end
      L6_2 = NetworkHasControlOfEntity
      L7_2 = SpawnedVehicles
      L7_2 = L7_2.Boat
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = NetworkRequestControlOfEntity
        L7_2 = L5_2
        L6_2(L7_2)
        while true do
          L6_2 = NetworkHasControlOfEntity
          L7_2 = L5_2
          L6_2 = L6_2(L7_2)
          if L6_2 then
            break
          end
          L6_2 = NetworkRequestControlOfEntity
          L7_2 = L5_2
          L6_2(L7_2)
          L6_2 = Citizen
          L6_2 = L6_2.Wait
          L7_2 = 100
          L6_2(L7_2)
        end
        L6_2 = Config
        L6_2 = L6_2.AttachOffsets
        L6_2 = L6_2.ContainerToBoat
        L7_2 = SpawnedObjects
        L7_2 = L7_2.AttachedContainers
        L7_2 = #L7_2
        L6_2 = L6_2[L7_2]
        L7_2 = AttachEntityToEntity
        L8_2 = L5_2
        L9_2 = SpawnedVehicles
        L9_2 = L9_2.Boat
        L10_2 = 0
        L11_2 = L6_2.pos
        L11_2 = L11_2.x
        L12_2 = L6_2.pos
        L12_2 = L12_2.y
        L13_2 = L6_2.pos
        L13_2 = L13_2.z
        L14_2 = L6_2.rot
        L14_2 = L14_2.x
        L15_2 = L6_2.rot
        L15_2 = L15_2.y
        L16_2 = L6_2.rot
        L16_2 = L16_2.z
        L17_2 = false
        L18_2 = false
        L19_2 = true
        L20_2 = false
        L21_2 = 2
        L22_2 = true
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      end
      AttachedProp = nil
    end
  end
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "17mov_OilRig:DeleteTemporaryContainer"
function L37_1()
  local L0_2, L1_2
  L0_2 = SpawnedObjects
  L0_2 = L0_2.TemporaryContainer
  if nil ~= L0_2 then
    L0_2 = DeleteEntity
    L1_2 = SpawnedObjects
    L1_2 = L1_2.TemporaryContainer
    L0_2(L1_2)
    L0_2 = SpawnedObjects
    L0_2.TemporaryContainer = nil
  end
end
L35_1(L36_1, L37_1)
function L35_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
Lerp = L35_1
function L35_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = math
  L2_2 = L2_2.sqrt
  L3_2 = A1_2.x
  L4_2 = A0_2.x
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 ^ 2
  L4_2 = A1_2.y
  L5_2 = A0_2.y
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 ^ 2
  L3_2 = L3_2 + L4_2
  return L2_2(L3_2)
end
GetDistance = L35_1
function L35_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = math
  L2_2 = L2_2.abs
  L3_2 = A1_2 - A0_2
  return L2_2(L3_2)
end
GetAngleDifference = L35_1
L35_1 = RegisterNetEvent
L36_1 = "17mov_OilRig:StartJob_cl"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "17mov_OilRig:StartJob_cl"
function L37_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  IsDrillBusy = false
  OnDuty = true
  L7_2 = false
  L25_1 = L7_2
  AttachedProp = nil
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  L10_2 = nil
  L11_2 = false
  ContainerOpenTutorialShown = false
  BoxesTutorialShown = L11_2
  L5_1 = L10_2
  L4_1 = L9_2
  L3_1 = L8_2
  L2_1 = L7_2
  L7_2 = A5_2.Rig
  L15_1 = L7_2
  L7_2 = A5_2.parkingIndex
  L26_1 = L7_2
  L7_2 = 1
  L8_2 = Config
  L8_2 = L8_2.RigsLocations
  L9_2 = A5_2.Rig
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.Welding
  L8_2 = L8_2.Coords
  L8_2 = #L8_2
  L17_1 = L8_2
  L16_1 = L7_2
  L7_2 = false
  L21_1 = L7_2
  L7_2 = 1
  L8_2 = Config
  L8_2 = L8_2.RigsLocations
  L9_2 = L15_1
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.Welding
  L8_2 = L8_2.Coords
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = Config
    L11_2 = L11_2.RigsLocations
    L12_2 = L15_1
    L11_2 = L11_2[L12_2]
    L11_2 = L11_2.Welding
    L11_2 = L11_2.Coords
    L11_2 = L11_2[L10_2]
    L11_2.busy = false
  end
  L7_2 = GetGamePool
  L8_2 = "CObject"
  L7_2 = L7_2(L8_2)
  L8_2 = vec3
  L9_2 = A5_2.Boat
  L9_2 = L9_2.x
  L10_2 = A5_2.Boat
  L10_2 = L10_2.y
  L11_2 = A5_2.Boat
  L11_2 = L11_2.z
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = pairs
  L10_2 = L7_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = GetEntityModel
    L16_2 = L14_2
    L15_2 = L15_2(L16_2)
    L16_2 = Config
    L16_2 = L16_2.ContainerDoorsL
    if L15_2 ~= L16_2 then
      L16_2 = Config
      L16_2 = L16_2.ContainerDoorsR
      if L15_2 ~= L16_2 then
        L16_2 = Config
        L16_2 = L16_2.ContainerModel
        if L15_2 ~= L16_2 then
          goto lbl_90
        end
      end
    end
    L16_2 = GetEntityCoords
    L17_2 = L14_2
    L16_2 = L16_2(L17_2)
    L16_2 = L16_2 - L8_2
    L16_2 = #L16_2
    if L16_2 < 12.0 then
      L16_2 = DeleteEntity
      L17_2 = L14_2
      L16_2(L17_2)
    end
    ::lbl_90::
  end
  L9_2 = Config
  L9_2 = L9_2.Locations
  L10_2 = {}
  L11_2 = {}
  L12_2 = vec3
  L13_2 = A5_2.Handler
  L13_2 = L13_2.x
  L14_2 = A5_2.Handler
  L14_2 = L14_2.y
  L15_2 = A5_2.Handler
  L15_2 = L15_2.z
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L11_2[7] = L18_2
  L11_2[8] = L19_2
  L11_2[9] = L20_2
  L11_2[10] = L21_2
  L11_2[11] = L22_2
  L10_2.Coords = L11_2
  L10_2.CurrentAction = "finish_job"
  L11_2 = Config
  L11_2 = L11_2.Lang
  L11_2 = L11_2.endJob
  L10_2.CurrentActionMsg = L11_2
  L11_2 = {}
  L11_2.x = 3.0
  L11_2.y = 3.0
  L11_2.z = 3.0
  L10_2.scale = L11_2
  L9_2.FinishJob = L10_2
  L9_2 = Config
  L9_2 = L9_2.Locations
  L10_2 = {}
  L11_2 = {}
  L12_2 = vec3
  L13_2 = A5_2.Boat
  L13_2 = L13_2.x
  L14_2 = A5_2.Boat
  L14_2 = L14_2.y
  L15_2 = A5_2.Boat
  L15_2 = L15_2.z
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L11_2[7] = L18_2
  L11_2[8] = L19_2
  L11_2[9] = L20_2
  L11_2[10] = L21_2
  L11_2[11] = L22_2
  L10_2.Coords = L11_2
  L10_2.CurrentAction = "finish_job"
  L11_2 = Config
  L11_2 = L11_2.Lang
  L11_2 = L11_2.endJob
  L10_2.CurrentActionMsg = L11_2
  L11_2 = {}
  L11_2.x = 5.0
  L11_2.y = 5.0
  L11_2.z = 5.0
  L10_2.scale = L11_2
  L9_2.FinishJobBoat = L10_2
  L9_2 = AddBlip
  L10_2 = "endjob"
  L11_2 = vec3
  L12_2 = A5_2.Handler
  L12_2 = L12_2.x
  L13_2 = A5_2.Handler
  L13_2 = L13_2.y
  L14_2 = A5_2.Handler
  L14_2 = L14_2.z
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = Config
  L12_2 = L12_2.BlipsStyles
  L12_2 = L12_2.EndJob
  L12_2 = L12_2.sprite
  L13_2 = Config
  L13_2 = L13_2.BlipsStyles
  L13_2 = L13_2.EndJob
  L13_2 = L13_2.scale
  L14_2 = Config
  L14_2 = L14_2.BlipsStyles
  L14_2 = L14_2.EndJob
  L14_2 = L14_2.color
  L15_2 = Config
  L15_2 = L15_2.BlipsStyles
  L15_2 = L15_2.EndJob
  L15_2 = L15_2.label
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = Config
  L10_2 = {}
  L11_2 = {}
  L12_2 = {}
  L13_2 = vec3
  L14_2 = A5_2.Handler
  L14_2 = L14_2.x
  L15_2 = A5_2.Handler
  L15_2 = L15_2.y
  L16_2 = A5_2.Handler
  L16_2 = L16_2.z
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L13_2(L14_2, L15_2, L16_2)
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L12_2[6] = L18_2
  L12_2[7] = L19_2
  L12_2[8] = L20_2
  L12_2[9] = L21_2
  L12_2[10] = L22_2
  L11_2.Coords = L12_2
  L11_2.CurrentAction = "finish_job"
  L12_2 = Config
  L12_2 = L12_2.Lang
  L12_2 = L12_2.endJob
  L11_2.CurrentActionMsg = L12_2
  L12_2 = {}
  L12_2.x = 3.0
  L12_2.y = 3.0
  L12_2.z = 3.0
  L11_2.scale = L12_2
  L10_2.FinishJob = L11_2
  L11_2 = {}
  L12_2 = {}
  L13_2 = vec3
  L14_2 = A5_2.Boat
  L14_2 = L14_2.x
  L15_2 = A5_2.Boat
  L15_2 = L15_2.y
  L16_2 = A5_2.Boat
  L16_2 = L16_2.z
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L13_2(L14_2, L15_2, L16_2)
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L12_2[6] = L18_2
  L12_2[7] = L19_2
  L12_2[8] = L20_2
  L12_2[9] = L21_2
  L12_2[10] = L22_2
  L11_2.Coords = L12_2
  L11_2.CurrentAction = "finish_job"
  L12_2 = Config
  L12_2 = L12_2.Lang
  L12_2 = L12_2.endJob
  L11_2.CurrentActionMsg = L12_2
  L12_2 = {}
  L12_2.x = 5.0
  L12_2.y = 5.0
  L12_2.z = 5.0
  L11_2.scale = L12_2
  L10_2.FinishJobBoat = L11_2
  L9_2.Locations2 = L10_2
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3
    L0_3 = L6_1
    if not L0_3 then
      L0_3 = Config
      L0_3 = L0_3.RequireWorkClothes
      if L0_3 then
        L0_3 = true
        L6_1 = L0_3
        L0_3 = ChangeClothes
        L1_3 = "work"
        L0_3(L1_3)
      end
    end
  end
  L9_2(L10_2)
  L9_2 = isBack
  if not L9_2 then
    L9_2 = GetResourceKvpInt
    L10_2 = "17mov_Tutorials:"
    L11_2 = Config
    L11_2 = L11_2.Lang
    L11_2 = L11_2.startingTutorial
    L10_2 = L10_2 .. L11_2
    L9_2 = L9_2(L10_2)
    if 0 == L9_2 then
      L9_2 = L22_1
      if not L9_2 then
        L9_2 = Config
        L9_2 = L9_2.Lang
        L9_2 = L9_2.startingTutorial
        L24_1 = L9_2
        L9_2 = SendNUIMessage
        L10_2 = {}
        L10_2.action = "showTutorial"
        L11_2 = Config
        L11_2 = L11_2.Lang
        L11_2 = L11_2.startingTutorial
        L10_2.customText = L11_2
        L9_2(L10_2)
        L9_2 = true
        L23_1 = L9_2
        L9_2 = CreateThread
        function L10_2()
          local L0_3, L1_3, L2_3, L3_3
          while true do
            L0_3 = L23_1
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
  end
  if A0_2 == A1_2 then
    L9_2 = isBack
    if not L9_2 then
      L9_2 = DoScreenFadeOut
      L10_2 = 300
      L9_2(L10_2)
      L9_2 = Citizen
      L9_2 = L9_2.Wait
      L10_2 = 1000
      L9_2(L10_2)
    end
    L9_2 = SpawnVehicle
    L10_2 = Config
    L10_2 = L10_2.BoatModel
    L11_2 = A5_2.Boat
    L12_2 = false
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L4_1 = L9_2
    L9_2 = SetHornEnabled
    L10_2 = L4_1
    L11_2 = false
    L9_2(L10_2, L11_2)
    L9_2 = 0
    L5_1 = L9_2
    L9_2 = CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = L5_1
        if 0 ~= L0_3 then
          L0_3 = L5_1
          if nil ~= L0_3 then
            break
          end
        end
        L0_3 = VehToNet
        L1_3 = L4_1
        L0_3 = L0_3(L1_3)
        L5_1 = L0_3
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 100
        L0_3(L1_3)
      end
      L0_3 = TriggerServerEvent
      L1_3 = "17mov_OilRig:SendBoatNetId"
      L2_3 = L5_1
      L0_3(L1_3, L2_3)
    end
    L9_2(L10_2)
    L9_2 = SpawnVehicle
    L10_2 = Config
    L10_2 = L10_2.HandlerModel
    L11_2 = A5_2.Handler
    L12_2 = true
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L2_1 = L9_2
    L9_2 = 0
    L3_1 = L9_2
    L9_2 = CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = L3_1
        if 0 ~= L0_3 then
          L0_3 = L3_1
          if nil ~= L0_3 then
            break
          end
        end
        L0_3 = VehToNet
        L1_3 = L2_1
        L0_3 = L0_3(L1_3)
        L3_1 = L0_3
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 100
        L0_3(L1_3)
      end
      L0_3 = TriggerServerEvent
      L1_3 = "17mov_OilRig:SendVehicleNetId"
      L2_3 = L3_1
      L0_3(L1_3, L2_3)
    end
    L9_2(L10_2)
    L9_2 = CreateThread
    function L10_2()
      local L0_3, L1_3
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 1500
      L0_3(L1_3)
      L0_3 = DoScreenFadeIn
      L1_3 = 300
      L0_3(L1_3)
    end
    L9_2(L10_2)
  else
    L9_2 = DoScreenFadeOut
    L10_2 = 200
    L9_2(L10_2)
    L9_2 = Citizen
    L9_2 = L9_2.Wait
    L10_2 = 300
    L9_2(L10_2)
    L9_2 = false
    while not L9_2 do
      L10_2 = Citizen
      L10_2 = L10_2.Wait
      L11_2 = 500
      L10_2(L11_2)
      L10_2 = GetGameTimer
      L10_2 = L10_2()
      L11_2 = TriggerServerCallback
      L12_2 = "17mov_OilRig:getVehicles"
      function L13_2(A0_3, A1_3)
        local L2_3, L3_3, L4_3
        L3_1 = A0_3
        L5_1 = A1_3
        L2_3 = GetGameTimer
        L2_3 = L2_3()
        L3_3 = L10_2
        L2_3 = L2_3 - L3_3
        L3_3 = 3000
        if L2_3 >= L3_3 then
          L3_3 = print
          L4_3 = "CAN'T FETCH VEHICLES DATA. THEY'RE NOT EXIST, OR THEY ARE SPAWNED ONLY LOCAL. CHECK YOUR ANTICHEAT/PROP BLOCKER SETTINGS - CAN'T CONTINUE"
          L3_3(L4_3)
        end
        L3_3 = L3_1
        if 0 ~= L3_3 then
          L3_3 = L3_1
          if nil ~= L3_3 then
            L3_3 = true
            L9_2 = L3_3
          end
        end
      end
      L11_2(L12_2, L13_2)
    end
    while true do
      L10_2 = L2_1
      if nil ~= L10_2 then
        L10_2 = L2_1
        if 0 ~= L10_2 then
          break
        end
      end
      L10_2 = NetToVeh
      L11_2 = L3_1
      L10_2 = L10_2(L11_2)
      L2_1 = L10_2
      L10_2 = Citizen
      L10_2 = L10_2.Wait
      L11_2 = 100
      L10_2(L11_2)
    end
    while true do
      L10_2 = L4_1
      if nil ~= L10_2 then
        L10_2 = L4_1
        if 0 ~= L10_2 then
          break
        end
      end
      L10_2 = NetToVeh
      L11_2 = L5_1
      L10_2 = L10_2(L11_2)
      L4_1 = L10_2
      L10_2 = Citizen
      L10_2 = L10_2.Wait
      L11_2 = 100
      L10_2(L11_2)
    end
    L10_2 = GetOffsetFromEntityInWorldCoords
    L11_2 = L4_1
    L12_2 = Config
    L12_2 = L12_2.AttachOffsets
    L12_2 = L12_2.PedSpawningOffset
    L12_2 = L12_2.x
    L13_2 = 0.5 * A6_2
    L12_2 = L12_2 + L13_2
    L13_2 = Config
    L13_2 = L13_2.AttachOffsets
    L13_2 = L13_2.PedSpawningOffset
    L13_2 = L13_2.y
    L14_2 = Config
    L14_2 = L14_2.AttachOffsets
    L14_2 = L14_2.PedSpawningOffset
    L14_2 = L14_2.z
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L11_2 = SetEntityCoords
    L12_2 = PlayerPedId
    L12_2 = L12_2()
    L13_2 = L10_2.x
    L14_2 = L10_2.y
    L15_2 = L10_2.z
    L16_2 = false
    L17_2 = false
    L18_2 = false
    L19_2 = false
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L11_2 = SetEntityHeading
    L12_2 = PlayerPedId
    L12_2 = L12_2()
    L13_2 = GetEntityHeading
    L14_2 = L4_1
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L13_2(L14_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L11_2 = PlaceObjectOnGroundProperly
    L12_2 = PlayerPedId
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L12_2()
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L11_2 = Config
    L11_2 = L11_2.GiveKeysToAllLobby
    if L11_2 then
      L11_2 = SetVehicle
      L12_2 = L2_1
      L11_2(L12_2)
      L11_2 = SetVehicle
      L12_2 = L4_1
      L11_2(L12_2)
    end
    L11_2 = DoScreenFadeIn
    L12_2 = 200
    L11_2(L12_2)
    L11_2 = Citizen
    L11_2 = L11_2.Wait
    L12_2 = 300
    L11_2(L12_2)
  end
  L9_2 = Citizen
  L9_2 = L9_2.Wait
  L10_2 = 1500
  L9_2(L10_2)
  while true do
    L9_2 = L2_1
    if nil ~= L9_2 then
      L9_2 = L2_1
      if 0 ~= L9_2 then
        break
      end
    end
    L9_2 = print
    L10_2 = "JOB VEHICLE DOESN't EXIST, OR IT'S SPAWNED ONLY LOCAL. CHECK YOUR ANTICHEAT/PROP BLOCKER SETTIGNS - CAN'T CONTINUE"
    L9_2(L10_2)
    L9_2 = Citizen
    L9_2 = L9_2.Wait
    L10_2 = 100
    L9_2(L10_2)
  end
  while true do
    L9_2 = L4_1
    if nil ~= L9_2 then
      L9_2 = L4_1
      if 0 ~= L9_2 then
        break
      end
    end
    L9_2 = print
    L10_2 = "JOB BOAT DOESN't EXIST, OR IT'S SPAWNED ONLY LOCAL. CHECK YOUR ANTICHEAT/PROP BLOCKER SETTIGNS - CAN'T CONTINUE"
    L9_2(L10_2)
    L9_2 = Citizen
    L9_2 = L9_2.Wait
    L10_2 = 100
    L9_2(L10_2)
  end
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = L3_1
      if L0_3 then
        L0_3 = NetworkDoesEntityExistWithNetworkId
        L1_3 = L3_1
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = NetToVeh
          L1_3 = L3_1
          L0_3 = L0_3(L1_3)
          L1_3 = L2_1
          if L1_3 ~= L0_3 then
            L1_3 = L3_1
            if L0_3 ~= L1_3 then
              L1_3 = NetToVeh
              L2_3 = L3_1
              L1_3 = L1_3(L2_3)
              L2_1 = L1_3
            end
          end
        end
      end
      L0_3 = L5_1
      if L0_3 then
        L0_3 = NetworkDoesEntityExistWithNetworkId
        L1_3 = L5_1
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = NetToVeh
          L1_3 = L5_1
          L0_3 = L0_3(L1_3)
          L1_3 = L4_1
          if L1_3 ~= L0_3 then
            L1_3 = L5_1
            if L0_3 ~= L1_3 then
              L1_3 = NetToVeh
              L2_3 = L5_1
              L1_3 = L1_3(L2_3)
              L4_1 = L1_3
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
  L9_2 = SpawnedVehicles
  L10_2 = L2_1
  L9_2.Handler = L10_2
  L9_2 = SpawnedVehicles
  L10_2 = L4_1
  L9_2.Boat = L10_2
  L9_2 = 1
  L10_2 = A5_2.Containers
  L10_2 = #L10_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = A5_2.Containers
    L13_2 = L13_2[L12_2]
    L14_2 = Functions
    L14_2 = L14_2.IsSpawnpointClear
    L15_2 = L13_2
    L16_2 = 1.0
    L14_2, L15_2, L16_2 = L14_2(L15_2, L16_2)
    if not L14_2 then
      L17_2 = 1
      L18_2 = #L15_2
      L19_2 = 1
      for L20_2 = L17_2, L18_2, L19_2 do
        L21_2 = Functions
        L21_2 = L21_2.DeleteVehicle
        L22_2 = L15_2[L20_2]
        L21_2(L22_2)
      end
      L17_2 = 1
      L18_2 = #L16_2
      L19_2 = 1
      for L20_2 = L17_2, L18_2, L19_2 do
        L21_2 = Functions
        L21_2 = L21_2.DeleteObject
        L22_2 = L16_2[L20_2]
        L21_2(L22_2)
      end
    end
    L17_2 = SpawnContainer
    function L18_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      L1_3 = Blips
      L1_3 = L1_3.Containers
      L1_3 = L1_3[A0_3]
      if not L1_3 then
        L1_3 = Blips
        L1_3 = L1_3.Containers
        L1_3[A0_3] = true
        L1_3 = AddBlip
        L2_3 = "Containers"
        L3_3 = A0_3
        L2_3 = L2_3 .. L3_3
        L3_3 = GetEntityCoords
        L4_3 = A0_3
        L3_3 = L3_3(L4_3)
        L4_3 = Config
        L4_3 = L4_3.BlipsStyles
        L4_3 = L4_3.Containers
        L4_3 = L4_3.sprite
        L5_3 = Config
        L5_3 = L5_3.BlipsStyles
        L5_3 = L5_3.Containers
        L5_3 = L5_3.scale
        L6_3 = Config
        L6_3 = L6_3.BlipsStyles
        L6_3 = L6_3.Containers
        L6_3 = L6_3.color
        L7_3 = Config
        L7_3 = L7_3.BlipsStyles
        L7_3 = L7_3.Containers
        L7_3 = L7_3.label
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      end
      L1_3 = FreezeEntityPosition
      L2_3 = A0_3
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = table
      L1_3 = L1_3.insert
      L2_3 = SpawnedObjects
      L2_3 = L2_3.LocalContainers
      L3_3 = {}
      L3_3.object = A0_3
      L4_3 = L13_2
      L3_3.coords = L4_3
      L1_3(L2_3, L3_3)
      L1_3 = SetEntityDrawOutline
      L2_3 = A0_3
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = SetEntityDrawOutlineColor
      L2_3 = 91
      L3_3 = 127
      L4_3 = 255
      L5_3 = 200
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
    L19_2 = L13_2
    L20_2 = false
    L17_2(L18_2, L19_2, L20_2)
  end
  L9_2 = AddBlip
  L10_2 = "Boat"
  L11_2 = GetEntityCoords
  L12_2 = L4_1
  L11_2 = L11_2(L12_2)
  L12_2 = Config
  L12_2 = L12_2.BlipsStyles
  L12_2 = L12_2.Boat
  L12_2 = L12_2.sprite
  L13_2 = Config
  L13_2 = L13_2.BlipsStyles
  L13_2 = L13_2.Boat
  L13_2 = L13_2.scale
  L14_2 = Config
  L14_2 = L14_2.BlipsStyles
  L14_2 = L14_2.Boat
  L14_2 = L14_2.color
  L15_2 = Config
  L15_2 = L15_2.BlipsStyles
  L15_2 = L15_2.Boat
  L15_2 = L15_2.label
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = Functions
  L9_2 = L9_2.SpawnObject
  L10_2 = Config
  L10_2 = L10_2.ContainerModel
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L1_3 = SpawnedObjects
    L1_3.TemporaryContainer = A0_3
    L1_3 = GetEntityBoneIndexByName
    L2_3 = L4_1
    L3_3 = "bodyshell"
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = Config
    L2_3 = L2_3.AttachOffsets
    L2_3 = L2_3.TemporaryContainer
    L2_3 = L2_3.pos
    L3_3 = Config
    L3_3 = L3_3.AttachOffsets
    L3_3 = L3_3.TemporaryContainer
    L3_3 = L3_3.rot
    L4_3 = AttachEntityToEntity
    L5_3 = A0_3
    L6_3 = L4_1
    L7_3 = L1_3
    L8_3 = L2_3.x
    L9_3 = L2_3.y
    L10_3 = L2_3.z
    L11_3 = L3_3.x
    L12_3 = L3_3.y
    L13_3 = L3_3.z
    L14_3 = true
    L15_3 = true
    L16_3 = false
    L17_3 = false
    L18_3 = 2
    L19_3 = true
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
    L4_3 = FreezeEntityPosition
    L5_3 = A0_3
    L6_3 = true
    L4_3(L5_3, L6_3)
    L4_3 = SetEntityVisible
    L5_3 = A0_3
    L6_3 = false
    L7_3 = false
    L4_3(L5_3, L6_3, L7_3)
  end
  L12_2 = GetEntityCoords
  L13_2 = L4_1
  L12_2 = L12_2(L13_2)
  L13_2 = false
  L14_2 = true
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = Functions
  L9_2 = L9_2.SpawnObject
  L10_2 = Config
  L10_2 = L10_2.RigsLocations
  L11_2 = L15_1
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.Drill
  L10_2 = L10_2.hintPropModel
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = SpawnedObjects
    L1_3.HintDrillProp = A0_3
    L1_3 = FreezeEntityPosition
    L2_3 = hintProp
    L3_3 = true
    L1_3(L2_3, L3_3)
  end
  L12_2 = vec3
  L13_2 = Config
  L13_2 = L13_2.RigsLocations
  L14_2 = A5_2.Rig
  L13_2 = L13_2[L14_2]
  L13_2 = L13_2.Drill
  L13_2 = L13_2.hintPropCoords
  L13_2 = L13_2.x
  L14_2 = Config
  L14_2 = L14_2.RigsLocations
  L15_2 = A5_2.Rig
  L14_2 = L14_2[L15_2]
  L14_2 = L14_2.Drill
  L14_2 = L14_2.hintPropCoords
  L14_2 = L14_2.y
  L15_2 = Config
  L15_2 = L15_2.RigsLocations
  L16_2 = A5_2.Rig
  L15_2 = L15_2[L16_2]
  L15_2 = L15_2.Drill
  L15_2 = L15_2.hintPropCoords
  L15_2 = L15_2.z
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L13_2 = false
  L14_2 = true
  L15_2 = true
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = Functions
  L9_2 = L9_2.SpawnObject
  L10_2 = Config
  L10_2 = L10_2.RigsLocations
  L11_2 = A5_2.Rig
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.Drill
  L10_2 = L10_2.PropModel
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = SetEntityCoords
    L2_3 = A0_3
    L3_3 = Config
    L3_3 = L3_3.RigsLocations
    L4_3 = A5_2.Rig
    L3_3 = L3_3[L4_3]
    L3_3 = L3_3.Drill
    L3_3 = L3_3.PropCoords
    L3_3 = L3_3.x
    L4_3 = Config
    L4_3 = L4_3.RigsLocations
    L5_3 = A5_2.Rig
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.Drill
    L4_3 = L4_3.PropCoords
    L4_3 = L4_3.y
    L5_3 = Config
    L5_3 = L5_3.RigsLocations
    L6_3 = A5_2.Rig
    L5_3 = L5_3[L6_3]
    L5_3 = L5_3.Drill
    L5_3 = L5_3.PropCoords
    L5_3 = L5_3.z
    L6_3 = false
    L7_3 = false
    L8_3 = false
    L9_3 = false
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L1_3 = SetEntityRotation
    L2_3 = A0_3
    L3_3 = Config
    L3_3 = L3_3.RigsLocations
    L4_3 = A5_2.Rig
    L3_3 = L3_3[L4_3]
    L3_3 = L3_3.Drill
    L3_3 = L3_3.PropRotation
    L3_3 = L3_3.x
    L4_3 = Config
    L4_3 = L4_3.RigsLocations
    L5_3 = A5_2.Rig
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.Drill
    L4_3 = L4_3.PropRotation
    L4_3 = L4_3.y
    L5_3 = Config
    L5_3 = L5_3.RigsLocations
    L6_3 = A5_2.Rig
    L5_3 = L5_3[L6_3]
    L5_3 = L5_3.Drill
    L5_3 = L5_3.PropRotation
    L5_3 = L5_3.z
    L6_3 = 2
    L7_3 = false
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    L1_3 = SpawnedObjects
    L1_3.Drill = A0_3
  end
  L12_2 = Config
  L12_2 = L12_2.RigsLocations
  L13_2 = A5_2.Rig
  L12_2 = L12_2[L13_2]
  L12_2 = L12_2.Drill
  L12_2 = L12_2.PropCoords
  L13_2 = false
  L14_2 = true
  L15_2 = true
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = AddBlip
  L10_2 = "Rig"
  L11_2 = Config
  L11_2 = L11_2.RigsLocations
  L12_2 = A5_2.Rig
  L11_2 = L11_2[L12_2]
  L11_2 = L11_2.Drill
  L11_2 = L11_2.PropCoords
  L12_2 = Config
  L12_2 = L12_2.BlipsStyles
  L12_2 = L12_2.Rig
  L12_2 = L12_2.sprite
  L13_2 = Config
  L13_2 = L13_2.BlipsStyles
  L13_2 = L13_2.Rig
  L13_2 = L13_2.scale
  L14_2 = Config
  L14_2 = L14_2.BlipsStyles
  L14_2 = L14_2.Rig
  L14_2 = L14_2.color
  L15_2 = Config
  L15_2 = L15_2.BlipsStyles
  L15_2 = L15_2.Rig
  L15_2 = L15_2.label
  L16_2 = 6
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2 = SetBlipDisplay
  L10_2 = Blips
  L10_2 = L10_2.Rig
  L11_2 = 6
  L9_2(L10_2, L11_2)
  L9_2 = Crane
  L9_2 = L9_2.Setup
  L9_2()
  L9_2 = SendNUIMessage
  L10_2 = {}
  L10_2.action = "updateCounter"
  L10_2.value = 0
  L9_2(L10_2)
  L9_2 = 0
  L27_1 = L9_2
  L9_2 = SendNUIMessage
  L10_2 = {}
  L10_2.action = "updateGas"
  L11_2 = L27_1
  L10_2.value = L11_2
  L9_2(L10_2)
  L9_2 = SendNUIMessage
  L10_2 = {}
  L10_2.action = "showCounter"
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = GetEntityCoords
      L3_3 = L4_1
      L2_3 = L2_3(L3_3)
      L1_3 = L1_3 - L2_3
      L1_3 = #L1_3
      if L1_3 < 10.0 then
        L1_3 = GetEntitySpeed
        L2_3 = L4_1
        L1_3 = L1_3(L2_3)
        if L1_3 > 2.0 then
          L1_3 = SetPedCanRagdoll
          L2_3 = L0_3
          L3_3 = false
          L1_3(L2_3, L3_3)
      end
      else
        L1_3 = SetPedCanRagdoll
        L2_3 = L0_3
        L3_3 = true
        L1_3(L2_3, L3_3)
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 1000
      L1_3(L2_3)
    end
  end
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetVehiclePedIsIn
      L2_3 = L0_3
      L3_3 = false
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = 1000
      if nil ~= L1_3 then
        L3_3 = GetEntityModel
        L4_3 = L1_3
        L3_3 = L3_3(L4_3)
        L4_3 = Config
        L4_3 = L4_3.HandlerModel
        if L3_3 == L4_3 then
          L3_3 = Crane
          L3_3 = L3_3.IsUsing
          if not L3_3 then
            L3_3 = SetEntityCollision
            L4_3 = SpawnedObjects
            L4_3 = L4_3.TemporaryContainer
            L5_3 = false
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
          end
          L3_3 = GetEntityBoneIndexByName
          L4_3 = L1_3
          L5_3 = "frame_2"
          L3_3 = L3_3(L4_3, L5_3)
          L4_3 = GetWorldPositionOfEntityBone
          L5_3 = L1_3
          L6_3 = L3_3
          L4_3 = L4_3(L5_3, L6_3)
          L5_3 = GetEntityCoords
          L6_3 = L1_3
          L5_3 = L5_3(L6_3)
          L6_3 = AttachedProp
          if not L6_3 then
            L6_3 = 1
            L7_3 = SpawnedObjects
            L7_3 = L7_3.LocalContainers
            L7_3 = #L7_3
            L8_3 = 1
            for L9_3 = L6_3, L7_3, L8_3 do
              L10_3 = SpawnedObjects
              L10_3 = L10_3.LocalContainers
              L10_3 = L10_3[L9_3]
              L10_3 = L10_3.coords
              L11_3 = vec3
              L12_3 = L5_3.x
              L13_3 = L5_3.y
              L14_3 = L5_3.z
              L11_3 = L11_3(L12_3, L13_3, L14_3)
              L12_3 = vec3
              L13_3 = L10_3.x
              L14_3 = L10_3.y
              L15_3 = L10_3.z
              L12_3 = L12_3(L13_3, L14_3, L15_3)
              L11_3 = L11_3 - L12_3
              L11_3 = #L11_3
              L12_3 = vec3
              L13_3 = L4_3.x
              L14_3 = L4_3.y
              L15_3 = L4_3.z
              L12_3 = L12_3(L13_3, L14_3, L15_3)
              L13_3 = vec3
              L14_3 = L10_3.x
              L15_3 = L10_3.y
              L16_3 = L10_3.z
              L13_3 = L13_3(L14_3, L15_3, L16_3)
              L12_3 = L12_3 - L13_3
              L12_3 = #L12_3
              L13_3 = 3.8
              if L12_3 < L13_3 then
                L13_3 = 6.8
                if L11_3 < L13_3 then
                  L13_3 = ShowHelpNotification
                  L14_3 = Config
                  L14_3 = L14_3.Lang
                  L14_3 = L14_3.attach_prop
                  L13_3(L14_3)
                  L13_3 = SetEntityDrawOutlineColor
                  L14_3 = 77
                  L15_3 = 255
                  L16_3 = 0
                  L17_3 = 200
                  L13_3(L14_3, L15_3, L16_3, L17_3)
                  L13_3 = IsControlJustReleased
                  L14_3 = 0
                  L15_3 = 38
                  L13_3 = L13_3(L14_3, L15_3)
                  if L13_3 then
                    L13_3 = Notify
                    L14_3 = Config
                    L14_3 = L14_3.Lang
                    L14_3 = L14_3.load_container_on_boat
                    L13_3(L14_3)
                    L13_3 = TriggerServerEvent
                    L14_3 = "17mov_OilRig:MyLocalContainerDeleted"
                    L15_3 = SpawnedObjects
                    L15_3 = L15_3.LocalContainers
                    L15_3 = L15_3[L9_3]
                    L15_3 = L15_3.coords
                    L13_3(L14_3, L15_3)
                    L13_3 = SpawnContainer
                    function L14_3(A0_4)
                      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4
                      L1_4 = AttachEntityToEntity
                      L2_4 = A0_4
                      L3_4 = L1_3
                      L4_4 = L3_3
                      L5_4 = 0.0
                      L6_4 = 2.1
                      L7_4 = -2.0
                      L8_4 = 0.0
                      L9_4 = 0.0
                      L10_4 = 90.0
                      L11_4 = true
                      L12_4 = false
                      L13_4 = true
                      L14_4 = false
                      L15_4 = 2
                      L16_4 = true
                      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4)
                    end
                    L15_3 = L10_3
                    L16_3 = true
                    L17_3 = true
                    L18_3 = true
                    L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
                    break
                  end
                  L2_3 = 0
              end
              else
                L13_3 = SetEntityDrawOutlineColor
                L14_3 = 91
                L15_3 = 127
                L16_3 = 255
                L17_3 = 200
                L13_3(L14_3, L15_3, L16_3, L17_3)
              end
            end
          else
            L6_3 = GetEntityCoords
            L7_3 = AttachedProp
            L6_3 = L6_3(L7_3)
            L7_3 = GetEntityCoords
            L8_3 = SpawnedObjects
            L8_3 = L8_3.TemporaryContainer
            L7_3 = L7_3(L8_3)
            L8_3 = vec3
            L9_3 = L6_3.x
            L10_3 = L6_3.y
            L11_3 = L6_3.z
            L8_3 = L8_3(L9_3, L10_3, L11_3)
            L9_3 = vec3
            L10_3 = L7_3.x
            L11_3 = L7_3.y
            L12_3 = L7_3.z
            L9_3 = L9_3(L10_3, L11_3, L12_3)
            L8_3 = L8_3 - L9_3
            L8_3 = #L8_3
            L9_3 = SpawnedObjects
            L9_3 = L9_3.TemporaryContainer
            OutlinedProp = L9_3
            L9_3 = SetEntityDrawOutline
            L10_3 = OutlinedProp
            L11_3 = true
            L9_3(L10_3, L11_3)
            L9_3 = SetEntityDrawOutlineColor
            L10_3 = 91
            L11_3 = 127
            L12_3 = 255
            L13_3 = 200
            L9_3(L10_3, L11_3, L12_3, L13_3)
            L9_3 = 3.5
            if L8_3 < L9_3 then
              L9_3 = ShowHelpNotification
              L10_3 = Config
              L10_3 = L10_3.Lang
              L10_3 = L10_3.detach_prop
              L9_3(L10_3)
              L9_3 = SetEntityDrawOutlineColor
              L10_3 = 77
              L11_3 = 255
              L12_3 = 0
              L13_3 = 200
              L9_3(L10_3, L11_3, L12_3, L13_3)
              L9_3 = IsControlJustReleased
              L10_3 = 0
              L11_3 = 38
              L9_3 = L9_3(L10_3, L11_3)
              if L9_3 then
                L9_3 = AttachedProp
                L10_3 = 1
                L11_3 = SpawnedObjects
                L11_3 = L11_3.GlobalContainers
                L11_3 = #L11_3
                L12_3 = 1
                for L13_3 = L10_3, L11_3, L12_3 do
                  L14_3 = SpawnedObjects
                  L14_3 = L14_3.GlobalContainers
                  L14_3 = L14_3[L13_3]
                  L14_3 = L14_3.object
                  L15_3 = AttachedProp
                  if L14_3 == L15_3 then
                    L14_3 = TriggerServerEvent
                    L15_3 = "17mov_OilRig:TransformContainerToAttached"
                    L16_3 = ObjToNet
                    L17_3 = SpawnedObjects
                    L17_3 = L17_3.GlobalContainers
                    L17_3 = L17_3[L13_3]
                    L17_3 = L17_3.object
                    L16_3, L17_3, L18_3, L19_3 = L16_3(L17_3)
                    L14_3(L15_3, L16_3, L17_3, L18_3, L19_3)
                    break
                  end
                end
                L10_3 = 1000
                L11_3 = 0
                while true do
                  L12_3 = Citizen
                  L12_3 = L12_3.Wait
                  L13_3 = 15
                  L12_3(L13_3)
                  L11_3 = L11_3 + 100
                  if L10_3 <= L11_3 then
                    L12_3 = print
                    L13_3 = "[ERROR]: AttachedContainer in local array not found..."
                    L12_3(L13_3)
                    L12_3 = Citizen
                    L12_3 = L12_3.Wait
                    L13_3 = 2500
                    L12_3(L13_3)
                  end
                  L12_3 = false
                  L13_3 = pairs
                  L14_3 = SpawnedObjects
                  L14_3 = L14_3.AttachedContainers
                  L13_3, L14_3, L15_3, L16_3 = L13_3(L14_3)
                  for L17_3, L18_3 in L13_3, L14_3, L15_3, L16_3 do
                    if L17_3 == L9_3 or L18_3 == L9_3 then
                      L12_3 = true
                      break
                    end
                  end
                  if L12_3 then
                    break
                  end
                end
                L12_3 = SetEntityDrawOutline
                L13_3 = OutlinedProp
                L14_3 = false
                L12_3(L13_3, L14_3)
                L12_3 = SpawnedObjects
                L12_3 = L12_3.LocalContainers
                L12_3 = #L12_3
                if 0 == L12_3 then
                  L12_3 = GetResourceKvpInt
                  L13_3 = "17mov_Tutorials:"
                  L14_3 = Config
                  L14_3 = L14_3.Lang
                  L14_3 = L14_3.loaded_tutorial
                  L13_3 = L13_3 .. L14_3
                  L12_3 = L12_3(L13_3)
                  if 0 == L12_3 then
                    L12_3 = L22_1
                    if not L12_3 then
                      L12_3 = SendNUIMessage
                      L13_3 = {}
                      L13_3.action = "showTutorial"
                      L14_3 = Config
                      L14_3 = L14_3.Lang
                      L14_3 = L14_3.loaded_tutorial
                      L13_3.customText = L14_3
                      L12_3(L13_3)
                      L12_3 = Config
                      L12_3 = L12_3.Lang
                      L12_3 = L12_3.loaded_tutorial
                      L24_1 = L12_3
                      L12_3 = true
                      L23_1 = L12_3
                      L12_3 = SetNuiFocus
                      L13_3 = true
                      L14_3 = true
                      L12_3(L13_3, L14_3)
                    end
                  end
                  L12_3 = TriggerServerEvent
                  L13_3 = "17mov_OilRig:DeleteTemporaryContainer"
                  L12_3(L13_3)
                  L12_3 = TaskLeaveAnyVehicle
                  L13_3 = PlayerPedId
                  L13_3 = L13_3()
                  L14_3 = 0
                  L15_3 = 0
                  L12_3(L13_3, L14_3, L15_3)
                  L12_3 = Citizen
                  L12_3 = L12_3.SetTimeout
                  L13_3 = 5000
                  function L14_3()
                    local L0_4, L1_4
                    L0_4 = DeleteEntity
                    L1_4 = L2_1
                    L0_4(L1_4)
                    L0_4 = TriggerServerEvent
                    L1_4 = "17mov_OilRig:DeleteHandler"
                    L0_4(L1_4)
                  end
                  L12_3(L13_3, L14_3)
                end
              end
              L2_3 = 0
            else
              L9_3 = SetEntityDrawOutlineColor
              L10_3 = 91
              L11_3 = 127
              L12_3 = 255
              L13_3 = 200
              L9_3(L10_3, L11_3, L12_3, L13_3)
            end
          end
        else
          L3_3 = Crane
          L3_3 = L3_3.IsUsing
          if not L3_3 then
            L3_3 = SetEntityCollision
            L4_3 = SpawnedObjects
            L4_3 = L4_3.TemporaryContainer
            L5_3 = false
            L6_3 = false
            L3_3(L4_3, L5_3, L6_3)
          end
          L3_3 = IsEntityAttachedToAnyObject
          L4_3 = SpawnedObjects
          L4_3 = L4_3.TemporaryContainer
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L3_3 = SetEntityDrawOutline
            L4_3 = SpawnedObjects
            L4_3 = L4_3.TemporaryContainer
            L5_3 = false
            L3_3(L4_3, L5_3)
          end
        end
      end
      L3_3 = Wait
      L4_3 = L2_3
      L3_3(L4_3)
    end
  end
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetVehiclePedIsIn
      L2_3 = L0_3
      L3_3 = false
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = 1000
      L3_3 = WaterOverrideSetStrength
      L4_3 = 0.0
      L3_3(L4_3)
      L3_3 = SetDeepOceanScaler
      L4_3 = 0.0
      L3_3(L4_3)
      L3_3 = SetHornEnabled
      L4_3 = L2_1
      L5_3 = false
      L3_3(L4_3, L5_3)
      L3_3 = 0.0
      L4_3 = 0.0
      L5_3 = 0
      L6_3 = 0
      L7_3 = 0
      L8_3 = 0
      L9_3 = SetWaveQuadDirection
      L10_3 = 0
      L11_3 = L3_3
      L12_3 = L4_3
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      L10_3 = SetWaveQuadBounds
      L11_3 = 0
      L12_3 = L5_3
      L13_3 = L6_3
      L14_3 = L7_3
      L15_3 = L8_3
      L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
      if not L9_3 or not L10_3 then
        L11_3 = print
        L12_3 = "Waves cannot be set"
        L11_3(L12_3)
      end
      if nil ~= L1_3 then
        L11_3 = GetEntityModel
        L12_3 = L1_3
        L11_3 = L11_3(L12_3)
        L12_3 = Config
        L12_3 = L12_3.BoatModel
        if L11_3 == L12_3 then
          L11_3 = GetIsVehicleEngineRunning
          L12_3 = L1_3
          L11_3 = L11_3(L12_3)
          if L11_3 then
            L11_3 = Blips
            L11_3 = L11_3.Boat
            if L11_3 then
              L11_3 = RemoveBlip
              L12_3 = Blips
              L12_3 = L12_3.Boat
              L11_3(L12_3)
              L11_3 = Blips
              L11_3.Boat = nil
              L11_3 = AddBlip
              L12_3 = "endjobBoat"
              L13_3 = vec3
              L14_3 = A5_2.Boat
              L14_3 = L14_3.x
              L15_3 = A5_2.Boat
              L15_3 = L15_3.y
              L16_3 = A5_2.Boat
              L16_3 = L16_3.z
              L13_3 = L13_3(L14_3, L15_3, L16_3)
              L14_3 = Config
              L14_3 = L14_3.BlipsStyles
              L14_3 = L14_3.EndJob
              L14_3 = L14_3.sprite
              L15_3 = Config
              L15_3 = L15_3.BlipsStyles
              L15_3 = L15_3.EndJob
              L15_3 = L15_3.scale
              L16_3 = Config
              L16_3 = L16_3.BlipsStyles
              L16_3 = L16_3.EndJob
              L16_3 = L16_3.color
              L17_3 = Config
              L17_3 = L17_3.BlipsStyles
              L17_3 = L17_3.EndJob
              L17_3 = L17_3.label
              L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
            end
          end
        end
      end
      L11_3 = SpawnedObjects
      L11_3 = L11_3.TemporaryContainer
      if nil ~= L11_3 then
        L11_3 = SetEntityVisible
        L12_3 = SpawnedObjects
        L12_3 = L12_3.TemporaryContainer
        L13_3 = false
        L14_3 = false
        L11_3(L12_3, L13_3, L14_3)
      end
      L11_3 = Wait
      L12_3 = L2_3
      L11_3(L12_3)
    end
  end
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = L4_1
      L1_3 = GetPedInVehicleSeat
      L2_3 = L0_3
      L3_3 = -1
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      if 0 == L1_3 then
        L3_3 = GetEntityCoords
        L4_3 = L0_3
        L3_3 = L3_3(L4_3)
        L4_3 = GetEntityRotation
        L5_3 = L0_3
        L4_3 = L4_3(L5_3)
        while 0 == L1_3 do
          L5_3 = GetVehiclePedIsIn
          L6_3 = L2_3
          L7_3 = false
          L5_3 = L5_3(L6_3, L7_3)
          L6_3 = L4_1
          if L5_3 == L6_3 then
            break
          end
          L5_3 = Citizen
          L5_3 = L5_3.Wait
          L6_3 = 100
          L5_3(L6_3)
          L5_3 = GetPedInVehicleSeat
          L6_3 = L0_3
          L7_3 = -1
          L5_3 = L5_3(L6_3, L7_3)
          L1_3 = L5_3
          L5_3 = GetEntityCoords
          L6_3 = L0_3
          L5_3 = L5_3(L6_3)
          L6_3 = GetEntityRotation
          L7_3 = L0_3
          L6_3 = L6_3(L7_3)
          L7_3 = GetWaterHeight
          L8_3 = L5_3.x
          L9_3 = L5_3.y
          L10_3 = L5_3.z
          L7_3, L8_3 = L7_3(L8_3, L9_3, L10_3)
          if not L7_3 then
            L8_3 = 0.0
          end
          L9_3 = GetDistance
          L10_3 = vector2
          L11_3 = L5_3.x
          L12_3 = L5_3.y
          L10_3 = L10_3(L11_3, L12_3)
          L11_3 = vector2
          L12_3 = L3_3.x
          L13_3 = L3_3.y
          L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L11_3(L12_3, L13_3)
          L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
          L10_3 = GetAngleDifference
          L11_3 = L6_3.z
          L12_3 = L4_3.z
          L10_3 = L10_3(L11_3, L12_3)
          L11_3 = 0.3
          if not (L9_3 > L11_3) then
            L11_3 = math
            L11_3 = L11_3.abs
            L12_3 = L5_3.z
            L12_3 = L12_3 - L8_3
            L12_3 = L12_3 - 3.0
            L11_3 = L11_3(L12_3)
            L12_3 = 2.5
            if not (L11_3 > L12_3) then
              goto lbl_133
            end
          end
          L11_3 = 0
          while true do
            L12_3 = 0.3
            if not (L11_3 < L12_3) or 0 ~= L1_3 then
              break
            end
            L12_3 = GetVehiclePedIsIn
            L13_3 = L2_3
            L14_3 = false
            L12_3 = L12_3(L13_3, L14_3)
            L13_3 = L4_1
            if L12_3 == L13_3 then
              break
            end
            L12_3 = GetPedInVehicleSeat
            L13_3 = L0_3
            L14_3 = -1
            L12_3 = L12_3(L13_3, L14_3)
            L1_3 = L12_3
            L12_3 = Citizen
            L12_3 = L12_3.Wait
            L13_3 = 25
            L12_3(L13_3)
            L11_3 = L11_3 + 0.001
            L12_3 = Lerp
            L13_3 = L5_3.x
            L14_3 = L3_3.x
            L15_3 = L11_3
            L12_3 = L12_3(L13_3, L14_3, L15_3)
            L13_3 = Lerp
            L14_3 = L5_3.y
            L15_3 = L3_3.y
            L16_3 = L11_3
            L13_3 = L13_3(L14_3, L15_3, L16_3)
            L14_3 = GetWaterHeight
            L15_3 = L5_3.x
            L16_3 = L5_3.y
            L17_3 = L5_3.z
            L14_3, L15_3 = L14_3(L15_3, L16_3, L17_3)
            if not L14_3 then
              L15_3 = 0.0
            end
            L16_3 = SetEntityCoords
            L17_3 = L0_3
            L18_3 = L12_3
            L19_3 = L13_3
            L20_3 = L15_3 - 3.0
            L21_3 = false
            L22_3 = false
            L23_3 = false
            L24_3 = false
            L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
          end
          ::lbl_133::
          if L10_3 > 5 then
            L11_3 = 0
            while L11_3 < 1 and 0 == L1_3 do
              L12_3 = GetVehiclePedIsIn
              L13_3 = L2_3
              L14_3 = false
              L12_3 = L12_3(L13_3, L14_3)
              L13_3 = L4_1
              if L12_3 == L13_3 then
                break
              end
              L12_3 = GetPedInVehicleSeat
              L13_3 = L0_3
              L14_3 = -1
              L12_3 = L12_3(L13_3, L14_3)
              L1_3 = L12_3
              L12_3 = Citizen
              L12_3 = L12_3.Wait
              L13_3 = 25
              L12_3(L13_3)
              L11_3 = L11_3 + 0.001
              L12_3 = Lerp
              L13_3 = L6_3.z
              L14_3 = L4_3.z
              L15_3 = L11_3
              L12_3 = L12_3(L13_3, L14_3, L15_3)
              L13_3 = SetEntityRotation
              L14_3 = L0_3
              L15_3 = L6_3.x
              L16_3 = L6_3.y
              L17_3 = L12_3
              L18_3 = 2
              L19_3 = true
              L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
            end
          end
        end
      end
      L3_3 = Citizen
      L3_3 = L3_3.Wait
      L4_3 = 500
      L3_3(L4_3)
    end
  end
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = 500
      L1_3 = GetEntityCoords
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      L2_3 = pairs
      L3_3 = Config
      L3_3 = L3_3.RigsLocations
      L4_3 = A5_2.Rig
      L3_3 = L3_3[L4_3]
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        if "Drill" == L6_3 then
          L8_3 = L7_3.Coords
          if L8_3 then
            L8_3 = 1
            L9_3 = L7_3.Coords
            L9_3 = #L9_3
            L10_3 = 1
            for L11_3 = L8_3, L9_3, L10_3 do
              L12_3 = vec3
              L13_3 = L7_3.Coords
              L13_3 = L13_3[L11_3]
              L13_3 = L13_3.x
              L14_3 = L7_3.Coords
              L14_3 = L14_3[L11_3]
              L14_3 = L14_3.y
              L15_3 = L7_3.Coords
              L15_3 = L15_3[L11_3]
              L15_3 = L15_3.z
              L12_3 = L12_3(L13_3, L14_3, L15_3)
              L12_3 = L1_3 - L12_3
              L12_3 = #L12_3
              L13_3 = 3.5
              if L12_3 < L13_3 then
                L13_3 = GetResourceKvpInt
                L14_3 = "17mov_Tutorials:"
                L15_3 = Config
                L15_3 = L15_3.Lang
                L15_3 = L15_3.drill_tutorial
                L14_3 = L14_3 .. L15_3
                L13_3 = L13_3(L14_3)
                if 0 == L13_3 then
                  L13_3 = L22_1
                  if not L13_3 then
                    L13_3 = SendNUIMessage
                    L14_3 = {}
                    L14_3.action = "showTutorial"
                    L15_3 = Config
                    L15_3 = L15_3.Lang
                    L15_3 = L15_3.drill_tutorial
                    L14_3.customText = L15_3
                    L13_3(L14_3)
                    L13_3 = SetNuiFocus
                    L14_3 = true
                    L15_3 = true
                    L13_3(L14_3, L15_3)
                    L13_3 = Config
                    L13_3 = L13_3.Lang
                    L13_3 = L13_3.drill_tutorial
                    L24_1 = L13_3
                    L13_3 = true
                    L23_1 = L13_3
                  end
                end
                return
              end
            end
          end
        end
      end
      L2_3 = Citizen
      L2_3 = L2_3.Wait
      L3_3 = 500
      L2_3(L3_3)
    end
  end
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = 1000
      L1_3 = GetEntityCoords
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
      L2_3 = pairs
      L3_3 = Config
      L3_3 = L3_3.RigsLocations
      L4_3 = A5_2.Rig
      L3_3 = L3_3[L4_3]
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = L7_3.Coords
        if L8_3 then
          L8_3 = SpawnedObjects
          L8_3 = L8_3.Crane
          L8_3 = L8_3.frame
          if L8_3 then
            L8_3 = SpawnedObjects
            L8_3 = L8_3.Crane
            L8_3 = L8_3.cabin
            if L8_3 then
              L8_3 = SpawnedObjects
              L8_3 = L8_3.Crane
              L8_3 = L8_3.frame
              L9_3 = GetOffsetFromEntityInWorldCoords
              L10_3 = L8_3
              L11_3 = 3.5
              L12_3 = -10.3
              L13_3 = 1.5
              L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
              L10_3 = Config
              L10_3 = L10_3.RigsLocations
              L11_3 = A5_2.Rig
              L10_3 = L10_3[L11_3]
              L10_3 = L10_3.Crane
              L10_3 = L10_3.Coords
              L10_3[1] = L9_3
            end
          end
          L8_3 = 1
          L9_3 = L7_3.Coords
          L9_3 = #L9_3
          L10_3 = 1
          for L11_3 = L8_3, L9_3, L10_3 do
            L12_3 = nil
            L13_3 = false
            L14_3 = type
            L15_3 = L7_3.Coords
            L15_3 = L15_3[L11_3]
            L15_3 = L15_3.x
            L14_3 = L14_3(L15_3)
            if "number" ~= L14_3 then
              L14_3 = L7_3.Coords
              L14_3 = L14_3[L11_3]
              L12_3 = L14_3.coords
              L13_3 = true
            else
              L14_3 = L7_3.Coords
              L12_3 = L14_3[L11_3]
            end
            L14_3 = vec3
            L15_3 = L12_3.x
            L16_3 = L12_3.y
            L17_3 = L12_3.z
            L14_3 = L14_3(L15_3, L16_3, L17_3)
            L14_3 = L1_3 - L14_3
            L14_3 = #L14_3
            L15_3 = L7_3.type
            if "text" == L15_3 then
              if "Crane" == L6_3 then
                L15_3 = Crane
                L15_3 = L15_3.IsUsing
              end
              if not L15_3 or "Crane" ~= L6_3 then
                if "Drill" == L6_3 then
                  L15_3 = L27_1
                  L16_3 = 150.0
                  if L15_3 < L16_3 then
                    L15_3 = L25_1
                  end
                end
                if not L15_3 or "Drill" ~= L6_3 then
                  L15_3 = L21_1
                  if L15_3 and L14_3 < 5.0 then
                    if L13_3 then
                      L15_3 = L7_3.Coords
                      L15_3 = L15_3[L11_3]
                      L15_3 = L15_3.busy
                    end
                    if false == L15_3 or not L13_3 then
                      L0_3 = 0
                      L15_3 = DrawText3Ds
                      L16_3 = L12_3.x
                      L17_3 = L12_3.y
                      L18_3 = L12_3.z
                      L19_3 = L7_3.textMessage
                      L15_3(L16_3, L17_3, L18_3, L19_3)
                      if L14_3 < 1.0 then
                        L15_3 = IsControlJustReleased
                        L16_3 = 0
                        L17_3 = 38
                        L15_3 = L15_3(L16_3, L17_3)
                        if L15_3 then
                          L15_3 = HasInteraction
                          L16_3 = L6_3
                          L17_3 = L11_3
                          L15_3(L16_3, L17_3)
                        end
                      end
                    end
                  end
              end
            end
            else
              L15_3 = L7_3.type
              if "text" ~= L15_3 then
                if "BoatParking" == L6_3 then
                  L15_3 = A5_2.parkingIndex
                  if L11_3 == L15_3 then
                    goto lbl_143
                  end
                end
                if "BoatParking" ~= L6_3 then
                  L15_3 = L21_1
                  ::lbl_143::
                  if L15_3 and "Crane" ~= L6_3 then
                    L15_3 = L7_3.scale
                    if nil ~= L15_3 then
                      L15_3 = L7_3.scale
                      L15_3 = L15_3.x
                      if nil ~= L15_3 then
                        goto lbl_155
                      end
                    end
                    L15_3 = print
                    L16_3 = L6_3
                    L15_3(L16_3)
                    ::lbl_155::
                    if L14_3 < 125.0 then
                      L15_3 = L7_3.scale
                      L15_3 = L15_3.x
                      if L14_3 > L15_3 then
                        L0_3 = 0
                        if "BoatParking" == L6_3 then
                          L15_3 = DrawMarker
                          L16_3 = 35
                          L17_3 = L12_3.x
                          L18_3 = L12_3.y
                          L19_3 = L12_3.z
                          L19_3 = L19_3 + 3.5
                          L20_3 = 0.0
                          L21_3 = 0.0
                          L22_3 = 0.0
                          L23_3 = 0.0
                          L24_3 = 0.0
                          L25_3 = 0.0
                          L26_3 = L7_3.scale
                          L26_3 = L26_3.x
                          L27_3 = L7_3.scale
                          L27_3 = L27_3.y
                          L28_3 = L7_3.scale
                          L28_3 = L28_3.z
                          L29_3 = Config
                          L29_3 = L29_3.MarkerSettings
                          L29_3 = L29_3.UnActive
                          L29_3 = L29_3.r
                          L30_3 = Config
                          L30_3 = L30_3.MarkerSettings
                          L30_3 = L30_3.UnActive
                          L30_3 = L30_3.g
                          L31_3 = Config
                          L31_3 = L31_3.MarkerSettings
                          L31_3 = L31_3.UnActive
                          L31_3 = L31_3.b
                          L32_3 = Config
                          L32_3 = L32_3.MarkerSettings
                          L32_3 = L32_3.UnActive
                          L32_3 = L32_3.a
                          L33_3 = false
                          L34_3 = true
                          L35_3 = 2
                          L36_3 = false
                          L37_3 = false
                          L38_3 = false
                          L39_3 = false
                          L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                        end
                        L15_3 = DrawMarker
                        L16_3 = 6
                        L17_3 = L12_3.x
                        L18_3 = L12_3.y
                        L19_3 = L12_3.z
                        L19_3 = L19_3 - 1.0
                        L20_3 = 0.0
                        L21_3 = 0.0
                        L22_3 = 0.0
                        L23_3 = -90.0
                        L24_3 = 0.0
                        L25_3 = 0.0
                        L26_3 = L7_3.scale
                        L26_3 = L26_3.x
                        L27_3 = L7_3.scale
                        L27_3 = L27_3.y
                        L28_3 = L7_3.scale
                        L28_3 = L28_3.z
                        L29_3 = Config
                        L29_3 = L29_3.MarkerSettings
                        L29_3 = L29_3.UnActive
                        L29_3 = L29_3.r
                        L30_3 = Config
                        L30_3 = L30_3.MarkerSettings
                        L30_3 = L30_3.UnActive
                        L30_3 = L30_3.g
                        L31_3 = Config
                        L31_3 = L31_3.MarkerSettings
                        L31_3 = L31_3.UnActive
                        L31_3 = L31_3.b
                        L32_3 = Config
                        L32_3 = L32_3.MarkerSettings
                        L32_3 = L32_3.UnActive
                        L32_3 = L32_3.a
                        L33_3 = false
                        L34_3 = true
                        L35_3 = 2
                        L36_3 = false
                        L37_3 = false
                        L38_3 = false
                        L39_3 = false
                        L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                    end
                    else
                      L15_3 = L7_3.scale
                      L15_3 = L15_3.x
                      if L14_3 < L15_3 then
                        L0_3 = 0
                        L15_3 = ShowHelpNotification
                        L16_3 = L7_3.HelpNotification
                        L15_3(L16_3)
                        if "BoatParking" == L6_3 then
                          L15_3 = DrawMarker
                          L16_3 = 35
                          L17_3 = L12_3.x
                          L18_3 = L12_3.y
                          L19_3 = L12_3.z
                          L19_3 = L19_3 + 3.5
                          L20_3 = 0.0
                          L21_3 = 0.0
                          L22_3 = 0.0
                          L23_3 = 0.0
                          L24_3 = 0.0
                          L25_3 = 0.0
                          L26_3 = L7_3.scale
                          L26_3 = L26_3.x
                          L27_3 = L7_3.scale
                          L27_3 = L27_3.y
                          L28_3 = L7_3.scale
                          L28_3 = L28_3.z
                          L29_3 = Config
                          L29_3 = L29_3.MarkerSettings
                          L29_3 = L29_3.Active
                          L29_3 = L29_3.r
                          L30_3 = Config
                          L30_3 = L30_3.MarkerSettings
                          L30_3 = L30_3.Active
                          L30_3 = L30_3.g
                          L31_3 = Config
                          L31_3 = L31_3.MarkerSettings
                          L31_3 = L31_3.Active
                          L31_3 = L31_3.b
                          L32_3 = Config
                          L32_3 = L32_3.MarkerSettings
                          L32_3 = L32_3.Active
                          L32_3 = L32_3.a
                          L33_3 = false
                          L34_3 = true
                          L35_3 = 2
                          L36_3 = false
                          L37_3 = false
                          L38_3 = false
                          L39_3 = false
                          L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                        end
                        L15_3 = DrawMarker
                        L16_3 = 6
                        L17_3 = L12_3.x
                        L18_3 = L12_3.y
                        L19_3 = L12_3.z
                        L19_3 = L19_3 - 1.0
                        L20_3 = 0.0
                        L21_3 = 0.0
                        L22_3 = 0.0
                        L23_3 = -90.0
                        L24_3 = 0.0
                        L25_3 = 0.0
                        L26_3 = L7_3.scale
                        L26_3 = L26_3.x
                        L27_3 = L7_3.scale
                        L27_3 = L27_3.y
                        L28_3 = L7_3.scale
                        L28_3 = L28_3.z
                        L29_3 = Config
                        L29_3 = L29_3.MarkerSettings
                        L29_3 = L29_3.Active
                        L29_3 = L29_3.r
                        L30_3 = Config
                        L30_3 = L30_3.MarkerSettings
                        L30_3 = L30_3.Active
                        L30_3 = L30_3.g
                        L31_3 = Config
                        L31_3 = L31_3.MarkerSettings
                        L31_3 = L31_3.Active
                        L31_3 = L31_3.b
                        L32_3 = Config
                        L32_3 = L32_3.MarkerSettings
                        L32_3 = L32_3.Active
                        L32_3 = L32_3.a
                        L33_3 = false
                        L34_3 = true
                        L35_3 = 2
                        L36_3 = false
                        L37_3 = false
                        L38_3 = false
                        L39_3 = false
                        L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                        L15_3 = IsControlJustReleased
                        L16_3 = 0
                        L17_3 = 38
                        L15_3 = L15_3(L16_3, L17_3)
                        if L15_3 then
                          L15_3 = HasInteraction
                          L16_3 = L6_3
                          L15_3(L16_3)
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
  end
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
    L0_3 = 0
    while true do
      L1_3 = OnDuty
      if not L1_3 then
        break
      end
      L1_3 = 1000
      L2_3 = nil
      L3_3 = PlayerPedId
      L3_3 = L3_3()
      L4_3 = IsPedCarrying
      if not L4_3 then
        L4_3 = GetEntityCoords
        L5_3 = PlayerPedId
        L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L5_3()
        L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
        L5_3 = Config
        L5_3 = L5_3.RigsLocations
        L6_3 = A5_2.Rig
        L5_3 = L5_3[L6_3]
        L5_3 = L5_3.Containers
        L5_3 = L5_3.ContainerCoords
        L6_3 = 0
        L7_3 = 1.5
        L8_3 = 0
        L9_3 = 1
        L10_3 = #L5_3
        L11_3 = 1
        for L12_3 = L9_3, L10_3, L11_3 do
          L13_3 = L5_3[L12_3]
          L13_3 = L13_3.opened
          if L13_3 then
            L13_3 = L5_3[L12_3]
            L13_3 = L13_3.props
            if nil ~= L13_3 then
              L13_3 = 1
              L14_3 = L5_3[L12_3]
              L14_3 = L14_3.props
              L14_3 = #L14_3
              L15_3 = 1
              for L16_3 = L13_3, L14_3, L15_3 do
                L17_3 = L5_3[L12_3]
                L17_3 = L17_3.props
                L17_3 = L17_3[L16_3]
                if nil ~= L17_3 then
                  L17_3 = L5_3[L12_3]
                  L17_3 = L17_3.props
                  L17_3 = L17_3[L16_3]
                  L17_3 = L17_3.object
                  if nil ~= L17_3 then
                    L17_3 = GetEntityCoords
                    L18_3 = L5_3[L12_3]
                    L18_3 = L18_3.props
                    L18_3 = L18_3[L16_3]
                    L18_3 = L18_3.object
                    L17_3 = L17_3(L18_3)
                    L17_3 = L4_3 - L17_3
                    L17_3 = #L17_3
                    if L7_3 > L17_3 then
                      L7_3 = L17_3
                      L18_3 = L5_3[L12_3]
                      L18_3 = L18_3.props
                      L18_3 = L18_3[L16_3]
                      L6_3 = L18_3.object
                      L2_3 = L12_3
                      L8_3 = L16_3
                    end
                  end
                end
              end
            end
          end
        end
        if L0_3 ~= L6_3 then
          L9_3 = SetEntityDrawOutline
          L10_3 = L0_3
          L11_3 = false
          L9_3(L10_3, L11_3)
        end
        L9_3 = DoesEntityExist
        L10_3 = L6_3
        L9_3 = L9_3(L10_3)
        if L9_3 and L2_3 then
          L9_3 = Config
          L9_3 = L9_3.RigsLocations
          L10_3 = L15_1
          L9_3 = L9_3[L10_3]
          L9_3 = L9_3.Containers
          L9_3 = L9_3.ContainerCoords
          L9_3 = L9_3[L2_3]
          L9_3 = L9_3.object
          if L9_3 then
            L9_3 = DoesEntityExist
            L10_3 = Config
            L10_3 = L10_3.RigsLocations
            L11_3 = L15_1
            L10_3 = L10_3[L11_3]
            L10_3 = L10_3.Containers
            L10_3 = L10_3.ContainerCoords
            L10_3 = L10_3[L2_3]
            L10_3 = L10_3.object
            L9_3 = L9_3(L10_3)
            if L9_3 then
              L9_3 = Config
              L9_3 = L9_3.RigsLocations
              L10_3 = A5_2.Rig
              L9_3 = L9_3[L10_3]
              L9_3 = L9_3.ContainerContent
              L9_3 = L9_3[L2_3]
              L10_3 = Entity
              L11_3 = L6_3
              L10_3 = L10_3(L11_3)
              L10_3 = L10_3.state
              L10_3 = L10_3.index
              L9_3 = L9_3[L10_3]
              L10_3 = 1.5
              if L7_3 < L10_3 then
                L10_3 = GetEntityCoords
                L11_3 = Config
                L11_3 = L11_3.RigsLocations
                L12_3 = L15_1
                L11_3 = L11_3[L12_3]
                L11_3 = L11_3.Containers
                L11_3 = L11_3.ContainerCoords
                L11_3 = L11_3[L2_3]
                L11_3 = L11_3.object
                L10_3 = L10_3(L11_3)
                L11_3 = 2.5
                L12_3 = 3.8
                L13_3 = L10_3.x
                L14_3 = L11_3 / 2
                L13_3 = L13_3 - L14_3
                L14_3 = L10_3.x
                L15_3 = L11_3 / 2
                L14_3 = L14_3 + L15_3
                L15_3 = L10_3.y
                L16_3 = L12_3 / 2
                L15_3 = L15_3 - L16_3
                L16_3 = L10_3.y
                L17_3 = L12_3 / 2
                L16_3 = L16_3 + L17_3
                L17_3 = L4_3.x
                if L13_3 <= L17_3 then
                  L17_3 = L4_3.x
                  if L14_3 >= L17_3 then
                    L17_3 = L4_3.y
                    if L15_3 <= L17_3 then
                      L17_3 = L4_3.y
                      if L16_3 >= L17_3 then
                        L0_3 = L6_3
                        L17_3 = SetEntityDrawOutline
                        L18_3 = L6_3
                        L19_3 = true
                        L17_3(L18_3, L19_3)
                        L1_3 = 0
                        L17_3 = ShowHelpNotification
                        L18_3 = Config
                        L18_3 = L18_3.Lang
                        L18_3 = L18_3.press_to_pickup
                        L17_3(L18_3)
                        L17_3 = IsControlJustReleased
                        L18_3 = 0
                        L19_3 = 38
                        L17_3 = L17_3(L18_3, L19_3)
                        if L17_3 then
                          L17_3 = math
                          L17_3 = L17_3.random
                          L18_3 = 1
                          L19_3 = L9_3.destinations
                          L19_3 = #L19_3
                          L17_3 = L17_3(L18_3, L19_3)
                          L18_3 = Functions
                          L18_3 = L18_3.SpawnObject
                          L19_3 = L9_3.model
                          function L20_3(A0_4)
                            local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
                            L1_4 = SpawnedObjects
                            L1_4.TemporaryDestinationObj = A0_4
                            L1_4 = SetEntityRotation
                            L2_4 = A0_4
                            L3_4 = L9_3.destinations
                            L4_4 = L17_3
                            L3_4 = L3_4[L4_4]
                            L3_4 = L3_4.rotation
                            L3_4 = L3_4.x
                            L4_4 = L9_3.destinations
                            L5_4 = L17_3
                            L4_4 = L4_4[L5_4]
                            L4_4 = L4_4.rotation
                            L4_4 = L4_4.y
                            L5_4 = L9_3.destinations
                            L6_4 = L17_3
                            L5_4 = L5_4[L6_4]
                            L5_4 = L5_4.rotation
                            L5_4 = L5_4.z
                            L6_4 = 0
                            L7_4 = false
                            L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
                            L1_4 = SetEntityCollision
                            L2_4 = A0_4
                            L3_4 = false
                            L4_4 = true
                            L1_4(L2_4, L3_4, L4_4)
                            L1_4 = SetEntityVisible
                            L2_4 = A0_4
                            L3_4 = false
                            L4_4 = false
                            L1_4(L2_4, L3_4, L4_4)
                            L1_4 = SetEntityDrawOutline
                            L2_4 = A0_4
                            L3_4 = true
                            L1_4(L2_4, L3_4)
                            L1_4 = SetEntityCoords
                            L2_4 = A0_4
                            L3_4 = L9_3.destinations
                            L4_4 = L17_3
                            L3_4 = L3_4[L4_4]
                            L3_4 = L3_4.coords
                            L3_4 = L3_4.x
                            L4_4 = L9_3.destinations
                            L5_4 = L17_3
                            L4_4 = L4_4[L5_4]
                            L4_4 = L4_4.coords
                            L4_4 = L4_4.y
                            L5_4 = L9_3.destinations
                            L6_4 = L17_3
                            L5_4 = L5_4[L6_4]
                            L5_4 = L5_4.coords
                            L5_4 = L5_4.z
                            L6_4 = false
                            L7_4 = false
                            L8_4 = fasle
                            L9_4 = false
                            L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4)
                          end
                          L21_3 = L9_3.destinations
                          L21_3 = L21_3[L17_3]
                          L21_3 = L21_3.coords
                          L22_3 = false
                          L23_3 = true
                          L24_3 = true
                          L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
                          L18_3 = AddBlip
                          L19_3 = "CarryingProp"
                          L20_3 = L9_3.destinations
                          L20_3 = L20_3[L17_3]
                          L20_3 = L20_3.coords
                          L21_3 = Config
                          L21_3 = L21_3.BlipsStyles
                          L21_3 = L21_3.CarryingProp
                          L21_3 = L21_3.sprite
                          L22_3 = Config
                          L22_3 = L22_3.BlipsStyles
                          L22_3 = L22_3.CarryingProp
                          L22_3 = L22_3.scale
                          L23_3 = Config
                          L23_3 = L23_3.BlipsStyles
                          L23_3 = L23_3.CarryingProp
                          L23_3 = L23_3.color
                          L24_3 = Config
                          L24_3 = L24_3.BlipsStyles
                          L24_3 = L24_3.CarryingProp
                          L24_3 = L24_3.label
                          L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
                          L18_3 = Entity
                          L19_3 = L6_3
                          L18_3 = L18_3(L19_3)
                          L18_3 = L18_3.state
                          L18_3 = L18_3.reward
                          L19_3 = TriggerServerEvent
                          L20_3 = "17mov_OilRig:DeleteThisProp"
                          L21_3 = L2_3
                          L22_3 = L8_3
                          L19_3(L20_3, L21_3, L22_3)
                          L19_3 = Citizen
                          L19_3 = L19_3.Wait
                          L20_3 = 50
                          L19_3(L20_3)
                          L19_3 = Functions
                          L19_3 = L19_3.SpawnObject
                          L20_3 = L9_3.model
                          function L21_3(A0_4)
                            local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4
                            L1_4 = Entity
                            L2_4 = A0_4
                            L1_4 = L1_4(L2_4)
                            L1_4 = L1_4.state
                            L2_4 = L9_3.destinations
                            L3_4 = L17_3
                            L2_4 = L2_4[L3_4]
                            L2_4 = L2_4.coords
                            L1_4.destination = L2_4
                            L1_4 = Entity
                            L2_4 = A0_4
                            L1_4 = L1_4(L2_4)
                            L1_4 = L1_4.state
                            L2_4 = L9_3.model
                            L1_4.model = L2_4
                            L1_4 = Entity
                            L2_4 = A0_4
                            L1_4 = L1_4(L2_4)
                            L1_4 = L1_4.state
                            L2_4 = L18_3
                            L1_4.reward = L2_4
                            L1_4 = false
                            L2_4 = GetEntityModel
                            L3_4 = A0_4
                            L2_4 = L2_4(L3_4)
                            if 1209872975 == L2_4 then
                              L1_4 = true
                            end
                            L2_4 = CarryingAnim
                            L3_4 = L1_4
                            L2_4(L3_4)
                            IsPedCarrying = A0_4
                            L2_4 = GetPedBoneIndex
                            L3_4 = PlayerPedId
                            L3_4 = L3_4()
                            L4_4 = 28422
                            L2_4 = L2_4(L3_4, L4_4)
                            if L1_4 then
                              L3_4 = AttachEntityToEntity
                              L4_4 = A0_4
                              L5_4 = L3_3
                              L6_4 = L2_4
                              L7_4 = L9_3.attachOffsets
                              L7_4 = L7_4.pos
                              L7_4 = L7_4.x
                              L8_4 = L9_3.attachOffsets
                              L8_4 = L8_4.pos
                              L8_4 = L8_4.y
                              L9_4 = L9_3.attachOffsets
                              L9_4 = L9_4.pos
                              L9_4 = L9_4.z
                              L10_4 = L9_3.attachOffsets
                              L10_4 = L10_4.rot
                              L10_4 = L10_4.x
                              L11_4 = L9_3.attachOffsets
                              L11_4 = L11_4.rot
                              L11_4 = L11_4.y
                              L12_4 = L9_3.attachOffsets
                              L12_4 = L12_4.rot
                              L12_4 = L12_4.z
                              L13_4 = true
                              L14_4 = true
                              L15_4 = false
                              L16_4 = true
                              L17_4 = 2
                              L18_4 = true
                              L3_4(L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4)
                            else
                              L3_4 = AttachEntityToEntity
                              L4_4 = A0_4
                              L5_4 = L3_3
                              L6_4 = L2_4
                              L7_4 = L9_3.attachOffsets
                              L7_4 = L7_4.pos
                              L7_4 = L7_4.x
                              L8_4 = L9_3.attachOffsets
                              L8_4 = L8_4.pos
                              L8_4 = L8_4.y
                              L8_4 = L8_4 - 1.17
                              L9_4 = L9_3.attachOffsets
                              L9_4 = L9_4.pos
                              L9_4 = L9_4.z
                              L9_4 = L9_4 - 0.15
                              L10_4 = L9_3.attachOffsets
                              L10_4 = L10_4.rot
                              L10_4 = L10_4.x
                              L11_4 = L9_3.attachOffsets
                              L11_4 = L11_4.rot
                              L11_4 = L11_4.y
                              L12_4 = L9_3.attachOffsets
                              L12_4 = L12_4.rot
                              L12_4 = L12_4.z
                              L13_4 = true
                              L14_4 = true
                              L15_4 = false
                              L16_4 = true
                              L17_4 = 2
                              L18_4 = true
                              L3_4(L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4)
                            end
                          end
                          L22_3 = GetEntityCoords
                          L23_3 = PlayerPedId
                          L23_3, L24_3 = L23_3()
                          L22_3 = L22_3(L23_3, L24_3)
                          L23_3 = true
                          L24_3 = true
                          L19_3(L20_3, L21_3, L22_3, L23_3, L24_3)
                        end
                      end
                    end
                  end
                end
              else
                L10_3 = SetEntityDrawOutline
                L11_3 = L0_3
                L12_3 = false
                L10_3(L11_3, L12_3)
              end
            end
          end
        end
      else
        L4_3 = IsPedCarrying
        if L4_3 then
          L4_3 = GetEntityCoords
          L5_3 = L3_3
          L4_3 = L4_3(L5_3)
          L5_3 = Entity
          L6_3 = IsPedCarrying
          L5_3 = L5_3(L6_3)
          L5_3 = L5_3.state
          L5_3 = L5_3.destination
          if L5_3 then
            L6_3 = vec3
            L7_3 = L4_3.x
            L8_3 = L4_3.y
            L9_3 = L4_3.z
            L6_3 = L6_3(L7_3, L8_3, L9_3)
            L7_3 = vec3
            L8_3 = L5_3.x
            L9_3 = L5_3.y
            L10_3 = L5_3.z
            L7_3 = L7_3(L8_3, L9_3, L10_3)
            L6_3 = L6_3 - L7_3
            L6_3 = #L6_3
            L7_3 = SetEntityDrawOutline
            L8_3 = L0_3
            L9_3 = false
            L7_3(L8_3, L9_3)
            if L6_3 < 2.0 then
              L1_3 = 0
              L7_3 = ShowHelpNotification
              L8_3 = Config
              L8_3 = L8_3.Lang
              L8_3 = L8_3.put_down
              L7_3(L8_3)
              L7_3 = IsControlJustReleased
              L8_3 = 0
              L9_3 = 38
              L7_3 = L7_3(L8_3, L9_3)
              if L7_3 then
                L7_3 = OpenSigning
                L7_3()
              end
            end
          end
        end
      end
      L4_3 = Citizen
      L4_3 = L4_3.Wait
      L5_3 = L1_3
      L4_3(L5_3)
    end
  end
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 500
      L0_3(L1_3)
      L0_3 = SetEntityDrawOutlineShader
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = IsDead
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      if L0_3 then
        L0_3 = IsPedCarrying
        if L0_3 then
          L0_3 = IsPedCarrying
          L1_3 = Functions
          L1_3 = L1_3.DeleteObject
          L2_3 = L0_3
          L1_3(L2_3)
          L1_3 = SetEntityDrawOutline
          L2_3 = SpawnedObjects
          L2_3 = L2_3.TemporaryDestinationObj
          L3_3 = false
          L1_3(L2_3, L3_3)
          L1_3 = Functions
          L1_3 = L1_3.DeleteObject
          L2_3 = SpawnedObjects
          L2_3 = L2_3.TemporaryDestinationObj
          L1_3(L2_3)
          IsPedCarrying = nil
          L1_3 = RemoveBlip
          L2_3 = Blips
          L2_3 = L2_3.CarryingProp
          L1_3(L2_3)
          L1_3 = Blips
          L1_3.CarryingProp = nil
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 500
      L0_3(L1_3)
    end
  end
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = 1000
      L1_3 = ipairs
      L2_3 = Config
      L2_3 = L2_3.RigsLocations
      L3_3 = L15_1
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3.Containers
      L2_3 = L2_3.ContainerCoords
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.object
        if nil ~= L7_3 then
          L7_3 = L6_3.opened
          if not L7_3 then
            L7_3 = GetEntityCoords
            L8_3 = PlayerPedId
            L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L8_3()
            L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
            L8_3 = vec3
            L9_3 = L6_3.coords
            L9_3 = L9_3.x
            L10_3 = L6_3.coords
            L10_3 = L10_3.y
            L11_3 = L6_3.coords
            L11_3 = L11_3.z
            L8_3 = L8_3(L9_3, L10_3, L11_3)
            L7_3 = L7_3 - L8_3
            L7_3 = #L7_3
            if L7_3 < 10.0 then
              L8_3 = SetEntityDrawOutline
              L9_3 = SpawnedObjects
              L9_3 = L9_3.ContainerDoors
              L10_3 = L6_3.object
              L9_3 = L9_3[L10_3]
              L9_3 = L9_3.left
              L10_3 = true
              L8_3(L9_3, L10_3)
              L8_3 = SetEntityDrawOutline
              L9_3 = SpawnedObjects
              L9_3 = L9_3.ContainerDoors
              L10_3 = L6_3.object
              L9_3 = L9_3[L10_3]
              L9_3 = L9_3.right
              L10_3 = true
              L8_3(L9_3, L10_3)
              L8_3 = SetEntityDrawOutlineColor
              L9_3 = 91
              L10_3 = 127
              L11_3 = 255
              L12_3 = 200
              L8_3(L9_3, L10_3, L11_3, L12_3)
              L8_3 = GetEntityCoords
              L9_3 = SpawnedObjects
              L9_3 = L9_3.ContainerDoors
              L10_3 = L6_3.object
              L9_3 = L9_3[L10_3]
              L9_3 = L9_3.left
              L8_3 = L8_3(L9_3)
              L9_3 = GetEntityCoords
              L10_3 = SpawnedObjects
              L10_3 = L10_3.ContainerDoors
              L11_3 = L6_3.object
              L10_3 = L10_3[L11_3]
              L10_3 = L10_3.right
              L9_3 = L9_3(L10_3)
              L10_3 = vector3
              L11_3 = L8_3.x
              L12_3 = L9_3.x
              L11_3 = L11_3 + L12_3
              L11_3 = L11_3 / 2
              L12_3 = L8_3.y
              L13_3 = L9_3.y
              L12_3 = L12_3 + L13_3
              L12_3 = L12_3 / 2
              L13_3 = L8_3.z
              L14_3 = L9_3.z
              L13_3 = L13_3 + L14_3
              L13_3 = L13_3 / 2
              L10_3 = L10_3(L11_3, L12_3, L13_3)
              L11_3 = GetEntityCoords
              L12_3 = PlayerPedId
              L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L12_3()
              L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              L11_3 = L11_3 - L10_3
              L11_3 = #L11_3
              if L11_3 < 2.0 then
                L0_3 = 0
                L12_3 = ShowHelpNotification
                L13_3 = Config
                L13_3 = L13_3.Lang
                L13_3 = L13_3.open_container
                L12_3(L13_3)
                L12_3 = IsControlJustReleased
                L13_3 = 0
                L14_3 = 38
                L12_3 = L12_3(L13_3, L14_3)
                if L12_3 then
                  L12_3 = CheckMembersAreOnRig
                  L12_3 = L12_3()
                  if L12_3 then
                    L12_3 = ContainerOpenTutorialShown
                    if not L12_3 then
                      ContainerOpenTutorialShown = true
                      L12_3 = GetResourceKvpInt
                      L13_3 = "17mov_Tutorials:"
                      L14_3 = Config
                      L14_3 = L14_3.Lang
                      L14_3 = L14_3.props_tutorial
                      L13_3 = L13_3 .. L14_3
                      L12_3 = L12_3(L13_3)
                      if 0 == L12_3 then
                        L12_3 = L22_1
                        if not L12_3 then
                          L12_3 = SendNUIMessage
                          L13_3 = {}
                          L13_3.action = "showTutorial"
                          L14_3 = Config
                          L14_3 = L14_3.Lang
                          L14_3 = L14_3.props_tutorial
                          L13_3.customText = L14_3
                          L12_3(L13_3)
                          L12_3 = Config
                          L12_3 = L12_3.Lang
                          L12_3 = L12_3.props_tutorial
                          L24_1 = L12_3
                          L12_3 = true
                          L23_1 = L12_3
                          L12_3 = SetNuiFocus
                          L13_3 = true
                          L14_3 = true
                          L12_3(L13_3, L14_3)
                        end
                      end
                    end
                    L12_3 = TriggerServerEvent
                    L13_3 = "17mov_OilRig:OpenThisContainer"
                    L14_3 = vec3
                    L15_3 = L6_3.coords
                    L15_3 = L15_3.x
                    L16_3 = L6_3.coords
                    L16_3 = L16_3.y
                    L17_3 = L6_3.coords
                    L17_3 = L17_3.z
                    L14_3, L15_3, L16_3, L17_3 = L14_3(L15_3, L16_3, L17_3)
                    L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
                    L6_3.opened = true
                    break
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
  L9_2(L10_2)
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "17mov_OilRig:DeleteThisProp"
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DeleteEntity
  L3_2 = Config
  L3_2 = L3_2.RigsLocations
  L4_2 = L15_1
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.Containers
  L3_2 = L3_2.ContainerCoords
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.props
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.object
  L2_2(L3_2)
  L2_2 = Config
  L2_2 = L2_2.RigsLocations
  L3_2 = L15_1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.Containers
  L2_2 = L2_2.ContainerCoords
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.props
  L2_2 = L2_2[A1_2]
  L2_2.object = nil
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "17mov_OilRig:OpenThisContainer"
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = Config
  L3_2 = L3_2.RigsLocations
  L4_2 = L15_1
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.Containers
  L3_2 = L3_2.ContainerCoords
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = GetEntityCoords
    L9_2 = L7_2.object
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2 - A0_2
    L8_2 = #L8_2
    L9_2 = 0.2
    if L8_2 < L9_2 then
      L1_2 = L6_2
      break
    end
  end
  if 0 == L1_2 then
    L2_2 = print
    L3_2 = "CANT FOUND OPENING CONTAINER"
    L2_2(L3_2)
    return
  end
  L2_2 = Config
  L2_2 = L2_2.RigsLocations
  L3_2 = L15_1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.Containers
  L2_2 = L2_2.ContainerCoords
  L2_2 = L2_2[L1_2]
  L2_2.opened = true
  L3_2 = 0.0
  L4_2 = DoesEntityExist
  L5_2 = L2_2.object
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = SetEntityDrawOutline
    L5_2 = SpawnedObjects
    L5_2 = L5_2.ContainerDoors
    L6_2 = L2_2.object
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.left
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = SetEntityDrawOutline
    L5_2 = SpawnedObjects
    L5_2 = L5_2.ContainerDoors
    L6_2 = L2_2.object
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.right
    L6_2 = false
    L4_2(L5_2, L6_2)
    while L3_2 < 120 do
      L3_2 = L3_2 + 1.0
      L4_2 = AttachContainerDoors
      L5_2 = L2_2.object
      L6_2 = true
      L7_2 = 0.0
      L8_2 = 0.0
      L9_2 = L3_2
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L4_2 = Wait
      L5_2 = 10
      L4_2(L5_2)
    end
  else
    L4_2 = print
    L5_2 = "OPENING CONTAINER DOES NOT EXIST."
    L4_2(L5_2)
  end
end
L35_1(L36_1, L37_1)
L35_1 = {}
L36_1 = {}
L36_1.RequestId = 0
L37_1 = {}
L36_1.ServerRequests = L37_1
L37_1 = {}
L36_1.ClientCallbacks = L37_1
L35_1.Callbacks = L36_1
L36_1 = {}
L37_1 = {}
L36_1.Events = L37_1
L37_1 = {}
L36_1.Confirmed = L37_1
L35_1.Tcp = L36_1
Functions = L35_1
L35_1 = Functions
function L36_1(A0_2)
  local L1_2, L2_2
  L1_2 = HasModelLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = RequestModel
  L2_2 = A0_2
  L1_2(L2_2)
  while true do
    L1_2 = HasModelLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
end
L35_1.LoadModel = L36_1
L35_1 = Functions
function L36_1(A0_2)
  local L1_2, L2_2
  L1_2 = HasAnimDictLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = RequestAnimDict
  L2_2 = A0_2
  L1_2(L2_2)
  while true do
    L1_2 = HasAnimDictLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
end
L35_1.RequestAnimDict = L36_1
L35_1 = Functions
function L36_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = type
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if "string" == L6_2 then
    L6_2 = GetHashKey
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    A0_2 = L6_2 or A0_2
    if not L6_2 then
    end
  end
  L6_2 = IsModelInCdimage
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    return
  end
  if A2_2 then
    L6_2 = type
    L7_2 = A2_2
    L6_2 = L6_2(L7_2)
    if "table" == L6_2 then
      L6_2 = vec3
      L7_2 = A2_2.x
      L8_2 = A2_2.y
      L9_2 = A2_2.z
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      A2_2 = L6_2 or A2_2
      if not L6_2 then
      end
    end
  else
    L6_2 = GetEntityCoords
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    A2_2 = L6_2
  end
  A3_2 = nil == A3_2 or A3_2
  L6_2 = Functions
  L6_2 = L6_2.LoadModel
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = CreateVehicle
  L7_2 = A0_2
  L8_2 = A2_2.x
  L9_2 = A2_2.y
  L10_2 = A2_2.z
  L11_2 = A2_2.w
  L12_2 = A3_2
  L13_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = NetworkGetNetworkIdFromEntity
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = SetVehicleHasBeenOwnedByPlayer
  L9_2 = L6_2
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = SetNetworkIdCanMigrate
  L9_2 = L7_2
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = SetVehicleNeedsToBeHotwired
  L9_2 = L6_2
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = SetVehRadioStation
  L9_2 = L6_2
  L10_2 = "OFF"
  L8_2(L9_2, L10_2)
  L8_2 = SetVehicleFuelLevel
  L9_2 = L6_2
  L10_2 = 100.0
  L8_2(L9_2, L10_2)
  L8_2 = SetModelAsNoLongerNeeded
  L9_2 = A0_2
  L8_2(L9_2)
  if A4_2 then
    L8_2 = TaskWarpPedIntoVehicle
    L9_2 = L5_2
    L10_2 = L6_2
    L11_2 = -1
    L8_2(L9_2, L10_2, L11_2)
  end
  L8_2 = SetVehicle
  L8_2()
  if A1_2 then
    L8_2 = A1_2
    L9_2 = L6_2
    L8_2(L9_2)
  end
end
L35_1.SpawnVehicle = L36_1
L35_1 = Functions
function L36_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  L9_2 = type
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  if "string" == L9_2 then
    L9_2 = GetHashKey
    L10_2 = A0_2
    L9_2 = L9_2(L10_2)
    A0_2 = L9_2 or A0_2
    if not L9_2 then
    end
  end
  L9_2 = IsModelInCdimage
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    return
  end
  if A2_2 then
    L9_2 = type
    L10_2 = A2_2
    L9_2 = L9_2(L10_2)
    if "table" == L9_2 then
      L9_2 = vec3
      L10_2 = A2_2.x
      L11_2 = A2_2.y
      L12_2 = A2_2.z
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      A2_2 = L9_2 or A2_2
      if not L9_2 then
      end
    end
  else
    L9_2 = GetEntityCoords
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    A2_2 = L9_2
  end
  A3_2 = nil == A3_2 or A3_2
  A4_2 = true == A4_2 or A4_2
  L9_2 = Functions
  L9_2 = L9_2.LoadModel
  L10_2 = A0_2
  L9_2(L10_2)
  L9_2 = CreateObject
  L10_2 = A0_2
  L11_2 = A2_2.x
  L12_2 = A2_2.y
  L13_2 = A2_2.z
  L14_2 = A3_2
  L15_2 = true
  L16_2 = true
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if not A7_2 then
    L10_2 = SetEntityLodDist
    L11_2 = L9_2
    L12_2 = 500
    L10_2(L11_2, L12_2)
  end
  L10_2 = A2_2.w
  if nil ~= L10_2 then
    L10_2 = SetEntityHeading
    L11_2 = L9_2
    L12_2 = A2_2.w
    L10_2(L11_2, L12_2)
  end
  if not A5_2 then
    L10_2 = PlaceObjectOnGroundProperly
    L11_2 = L9_2
    L10_2(L11_2)
  end
  if not A6_2 then
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = SpawnedObjects
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L10_2 = FreezeEntityPosition
  L11_2 = L9_2
  L12_2 = A4_2
  L10_2(L11_2, L12_2)
  if A1_2 then
    L10_2 = A1_2
    L11_2 = L9_2
    L10_2(L11_2)
  end
end
L35_1.SpawnObject = L36_1
L35_1 = Functions
function L36_1()
  local L0_2, L1_2
  L0_2 = GetGamePool
  L1_2 = "CVehicle"
  return L0_2(L1_2)
end
L35_1.GetVehicles = L36_1
L35_1 = Functions
function L36_1()
  local L0_2, L1_2
  L0_2 = GetGamePool
  L1_2 = "CObject"
  return L0_2(L1_2)
end
L35_1.GetObjects = L36_1
L35_1 = Functions
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = DeleteVehicleByCore
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = SpawnedVehicles
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L7_2 = 1
      L8_2 = #L6_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = SpawnedVehicles
        L11_2 = L11_2[L5_2]
        L11_2 = L11_2[L10_2]
        if L11_2 == A0_2 then
          L11_2 = table
          L11_2 = L11_2.remove
          L12_2 = SpawnedVehicles
          L12_2 = L12_2[L5_2]
          L13_2 = L10_2
          L11_2(L12_2, L13_2)
          break
        end
      end
    else
      L7_2 = SpawnedVehicles
      L7_2 = L7_2[L5_2]
      if L7_2 == A0_2 then
        L7_2 = SpawnedVehicles
        L7_2[L5_2] = nil
      end
    end
  end
end
L35_1.DeleteVehicle = L36_1
L35_1 = Functions
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 then
    L1_2 = print
    L2_2 = "ATTEMPTED TO DELETE A "
    L3_2 = type
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = " TYPE: "
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
  end
  L1_2 = SetEntityAsMissionEntity
  L2_2 = A0_2
  L3_2 = false
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DeleteObject
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = SpawnedObjects
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L7_2 = 1
      L8_2 = #L6_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = type
        L12_2 = SpawnedObjects
        L12_2 = L12_2[L5_2]
        L12_2 = L12_2[L10_2]
        L11_2 = L11_2(L12_2)
        if "table" == L11_2 then
          L11_2 = pairs
          L12_2 = SpawnedObjects
          L12_2 = L12_2[L5_2]
          L12_2 = L12_2[L10_2]
          L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
          for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
            if L16_2 == A0_2 then
              L17_2 = SpawnedObjects
              L17_2 = L17_2[L5_2]
              L17_2 = L17_2[L10_2]
              L17_2[L15_2] = nil
            end
          end
        else
          L11_2 = SpawnedObjects
          L11_2 = L11_2[L5_2]
          L11_2 = L11_2[L10_2]
          if L11_2 == A0_2 then
            L11_2 = table
            L11_2 = L11_2.remove
            L12_2 = SpawnedObjects
            L12_2 = L12_2[L5_2]
            L13_2 = L10_2
            L11_2(L12_2, L13_2)
            break
          end
        end
      end
    else
      L7_2 = SpawnedObjects
      L7_2 = L7_2[L5_2]
      if L7_2 == A0_2 then
        L7_2 = SpawnedObjects
        L7_2[L5_2] = nil
      end
    end
  end
end
L35_1.DeleteObject = L36_1
L35_1 = Functions
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = Functions
  L2_2 = L2_2.GetVehicles
  L2_2 = L2_2()
  L3_2 = {}
  L4_2 = 1
  L5_2 = #L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = GetEntityCoords
    L9_2 = L2_2[L7_2]
    L8_2 = L8_2(L9_2)
    L9_2 = vec3
    L10_2 = L8_2.x
    L11_2 = L8_2.y
    L12_2 = L8_2.z
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = vec3
    L11_2 = A0_2.x
    L12_2 = A0_2.y
    L13_2 = A0_2.z
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L9_2 = L9_2 - L10_2
    L9_2 = #L9_2
    if A1_2 >= L9_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2
      L12_2 = L2_2[L7_2]
      L10_2(L11_2, L12_2)
    end
  end
  return L3_2
end
L35_1.GetVehiclesInArea = L36_1
L35_1 = Functions
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = Functions
  L2_2 = L2_2.GetObjects
  L2_2 = L2_2()
  L3_2 = {}
  L4_2 = 1
  L5_2 = #L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = GetEntityCoords
    L9_2 = L2_2[L7_2]
    L8_2 = L8_2(L9_2)
    L9_2 = vec3
    L10_2 = L8_2.x
    L11_2 = L8_2.y
    L12_2 = L8_2.z
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = vec3
    L11_2 = A0_2.x
    L12_2 = A0_2.y
    L13_2 = A0_2.z
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L9_2 = L9_2 - L10_2
    L9_2 = #L9_2
    if A1_2 >= L9_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2
      L12_2 = L2_2[L7_2]
      L10_2(L11_2, L12_2)
    end
  end
  return L3_2
end
L35_1.GetObjectsInArea = L36_1
L35_1 = Functions
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Functions
  L2_2 = L2_2.GetVehiclesInArea
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = Functions
  L3_2 = L3_2.GetObjectsInArea
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = #L2_2
  L4_2 = 0 == L4_2
  L5_2 = L2_2
  L6_2 = L3_2
  return L4_2, L5_2, L6_2
end
L35_1.IsSpawnpointClear = L36_1
L35_1 = {}
L36_1 = Functions
function L37_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = L35_1
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  L6_2 = L35_1
  L6_2[L5_2] = false
  L6_2 = Config
  L6_2 = L6_2.SoundVolumeMultipler
  if not L6_2 then
    L6_2 = 1.0
  end
  L6_2 = A1_2 * L6_2
  while true do
    L7_2 = L35_1
    L7_2 = L7_2[L5_2]
    if false ~= L7_2 then
      break
    end
    L7_2 = Wait
    L8_2 = 10
    L7_2(L8_2)
  end
  if A4_2 then
    L7_2 = A2_2
    L8_2 = GetEntityCoords
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    A2_2 = L8_2
    L8_2 = nil
    L9_2 = nil
    L10_2 = nil
    L11_2 = CreateThread
    function L12_2()
      local L0_3, L1_3, L2_3
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 200
      L0_3(L1_3)
      while true do
        L1_3 = L5_2
        L0_3 = L35_1
        L0_3 = L0_3[L1_3]
        if not L0_3 then
          break
        end
        L0_3 = GetEntityCoords
        L1_3 = L7_2
        L0_3 = L0_3(L1_3)
        A2_2 = L0_3
        L0_3 = A2_2
        if nil ~= L0_3 then
          L0_3 = L8_2
          L1_3 = A2_2.x
          if L0_3 == L1_3 then
            L0_3 = L9_2
            L1_3 = A2_2.y
            if L0_3 == L1_3 then
              L0_3 = L10_2
              L1_3 = A2_2.z
              if L0_3 == L1_3 then
                goto lbl_48
              end
            end
          end
          L0_3 = SendNUIMessage
          L1_3 = {}
          L1_3.action = "updateSoundCoords"
          L2_3 = L5_2
          L1_3.id = L2_3
          L2_3 = A2_2.x
          L1_3.x = L2_3
          L2_3 = A2_2.y
          L1_3.y = L2_3
          L2_3 = A2_2.z
          L1_3.z = L2_3
          L0_3(L1_3)
          L0_3 = A2_2.x
          L1_3 = A2_2.y
          L2_3 = A2_2.z
          L10_2 = L2_3
          L9_2 = L1_3
          L8_2 = L0_3
        end
        ::lbl_48::
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 100
        L0_3(L1_3)
      end
    end
    L11_2(L12_2)
  end
  L7_2 = true
  L22_1 = L7_2
  L7_2 = SendNUIMessage
  L8_2 = {}
  L8_2.action = "playSound"
  L8_2.id = L5_2
  L8_2.audioFile = A0_2
  L8_2.volume = L6_2
  L9_2 = A2_2.x
  L8_2.x = L9_2
  L9_2 = A2_2.y
  L8_2.y = L9_2
  L9_2 = A2_2.z
  L8_2.z = L9_2
  L8_2.maxDistance = A3_2
  L7_2(L8_2)
end
L36_1.PlayAudioAtCoords = L37_1
L36_1 = RegisterNUICallback
L37_1 = "soundsEnd"
function L38_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2.id
  L2_2 = L35_1
  L2_2[L3_2] = nil
  L2_2 = L35_1
  L2_2 = #L2_2
  if 0 == L2_2 then
    L2_2 = false
    L22_1 = L2_2
  end
end
L36_1(L37_1, L38_1)
L36_1 = CreateThread
function L37_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = nil
  L1_2 = nil
  L2_2 = nil
  L3_2 = nil
  while true do
    L4_2 = 1000
    L5_2 = L35_1
    L5_2 = #L5_2
    if L5_2 > 0 then
      L5_2 = PlayerPedId
      L5_2 = L5_2()
      L6_2 = GetEntityCoords
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      L7_2 = GetEntityHeading
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L4_2 = 100
      L8_2 = L6_2.x
      if L0_2 == L8_2 then
        L8_2 = L6_2.y
        if L1_2 == L8_2 then
          L8_2 = L6_2.z
          if L2_2 == L8_2 and L3_2 == L7_2 then
            goto lbl_46
          end
        end
      end
      L8_2 = SendNUIMessage
      L9_2 = {}
      L9_2.action = "updateSounds"
      L10_2 = L6_2.x
      L9_2.x = L10_2
      L10_2 = L6_2.y
      L9_2.y = L10_2
      L10_2 = L6_2.z
      L9_2.z = L10_2
      L9_2.h = L7_2
      L8_2(L9_2)
      L8_2 = L6_2.x
      L9_2 = L6_2.y
      L10_2 = L6_2.z
      L3_2 = L7_2
      L2_2 = L10_2
      L1_2 = L9_2
      L0_2 = L8_2
      ::lbl_46::
      L8_2 = pairs
      L9_2 = L35_1
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        if not L13_2 then
          L14_2 = L35_1
          L14_2[L12_2] = true
        end
      end
    end
    L5_2 = Wait
    L6_2 = L4_2
    L5_2(L6_2)
  end
end
L36_1(L37_1)
L36_1 = Functions
function L37_1(A0_2, A1_2)
  local L2_2
  L2_2 = Functions
  L2_2 = L2_2.Tcp
  L2_2 = L2_2.Events
  L2_2[A0_2] = A1_2
end
L36_1.RegisterClientEventTcp = L37_1
L36_1 = RegisterNetEvent
L37_1 = "17movement_Oilrig:triggerClientEventTcp"
function L38_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Functions
  L2_2 = L2_2.Tcp
  L2_2 = L2_2.Events
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = print
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "Tcp client event: %s does not exists."
    L5_2 = A0_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
    return L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = Functions
  L2_2 = L2_2.Tcp
  L2_2 = L2_2.Confirmed
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = print
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "Tcp client event: %s with requestId: %s has been already confirmed."
    L5_2 = A0_2
    L6_2 = A1_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
    return L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = Functions
  L2_2 = L2_2.Tcp
  L2_2 = L2_2.Events
  L2_2 = L2_2[A0_2]
  L3_2, L4_2, L5_2, L6_2 = ...
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = Functions
  L2_2 = L2_2.Tcp
  L2_2 = L2_2.Confirmed
  L2_2[A1_2] = true
  L2_2 = TriggerServerEvent
  L3_2 = "17movement_Oilrig:confirmClientEventTcp"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = SetTimeout
  L3_2 = 60000
  function L4_2()
    local L0_3, L1_3
    L0_3 = Functions
    L0_3 = L0_3.Tcp
    L0_3 = L0_3.Confirmed
    L1_3 = A1_2
    L0_3[L1_3] = nil
  end
  L2_2(L3_2, L4_2)
end
L36_1(L37_1, L38_1)
L36_1 = true
function L37_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L36_1
  if not L0_2 then
    return
  end
  L0_2 = false
  L36_1 = L0_2
  L0_2 = GetVehiclePedIsIn
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = GetEntityModel
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Config
  L2_2 = L2_2.BoatModel
  if L1_2 ~= L2_2 then
    L1_2 = GetEntityModel
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = Config
    L2_2 = L2_2.HandlerModel
    if L1_2 ~= L2_2 then
      goto lbl_53
    end
  end
  L1_2 = GetPedInVehicleSeat
  L2_2 = L0_2
  L3_2 = -1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if L1_2 ~= L2_2 then
    L1_2 = Notify
    L2_2 = Config
    L2_2 = L2_2.Lang
    L2_2 = L2_2.notADriver
    L1_2(L2_2)
    L1_2 = true
    L36_1 = L1_2
    return
  end
  L1_2 = DeleteVehicleByCore
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_OilRig:endJob_sv"
  L3_2 = true
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = true
  L36_1 = L1_2
  do return end
  ::lbl_53::
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "openWarning"
  L1_2(L2_2)
  L1_2 = true
  L36_1 = L1_2
end
EndJob = L37_1
L37_1 = RegisterNetEvent
L38_1 = "17mov_OilRig:endJob_cl"
L37_1(L38_1)
L37_1 = AddEventHandler
L38_1 = "17mov_OilRig:endJob_cl"
function L39_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = RemoveKeys
  if nil ~= L0_2 then
    L0_2 = RemoveKeys
    L0_2()
  end
  OnDuty = false
  L0_2 = 1
  L1_2 = Crane
  L1_2 = L1_2.Ropes
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = DeleteRope
    L5_2 = Crane
    L5_2 = L5_2.Ropes
    L5_2 = L5_2[L3_2]
    L4_2(L5_2)
    L4_2 = Crane
    L4_2 = L4_2.Ropes
    L4_2[L3_2] = nil
  end
  L0_2 = nil
  L1_2 = Config
  L1_2 = L1_2.Locations2
  L1_2 = L1_2.FinishJobBoat
  if nil ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Locations2
    L1_2 = L1_2.FinishJobBoat
    L1_2 = L1_2.Coords
    L0_2 = L1_2[1]
  else
    L1_2 = Config
    L1_2 = L1_2.Locations
    L1_2 = L1_2.FinishJobBoat
    L1_2 = L1_2.Coords
    L0_2 = L1_2[1]
  end
  L1_2 = GetGamePool
  L2_2 = "CObject"
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = GetEntityModel
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = Config
    L9_2 = L9_2.ContainerDoorsL
    if L8_2 ~= L9_2 then
      L9_2 = Config
      L9_2 = L9_2.ContainerDoorsR
      if L8_2 ~= L9_2 then
        L9_2 = Config
        L9_2 = L9_2.ContainerModel
        if L8_2 ~= L9_2 then
          goto lbl_78
        end
      end
    end
    L9_2 = GetEntityCoords
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2 - L0_2
    L9_2 = #L9_2
    if not (L9_2 < 12.0) then
      L9_2 = IsEntityAttachedToEntity
      L10_2 = L7_2
      L11_2 = L4_1
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        goto lbl_78
      end
    end
    L9_2 = DeleteEntity
    L10_2 = L7_2
    L9_2(L10_2)
    ::lbl_78::
  end
  L2_2 = pairs
  L3_2 = SpawnedVehicles
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if "table" == L8_2 then
      L8_2 = pairs
      L9_2 = L7_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = Functions
        L14_2 = L14_2.DeleteVehicle
        L15_2 = L13_2
        L14_2(L15_2)
        L13_2 = nil
      end
    else
      L8_2 = Functions
      L8_2 = L8_2.DeleteVehicle
      L9_2 = SpawnedVehicles
      L9_2 = L9_2[L6_2]
      L8_2(L9_2)
      L8_2 = SpawnedVehicles
      L8_2[L6_2] = nil
    end
  end
  L2_2 = pairs
  L3_2 = SpawnedObjects
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if "table" == L8_2 then
      L8_2 = pairs
      L9_2 = L7_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = type
        L15_2 = L13_2
        L14_2 = L14_2(L15_2)
        if "table" == L14_2 then
          L14_2 = L13_2.left
          if nil ~= L14_2 then
            L14_2 = Functions
            L14_2 = L14_2.DeleteObject
            L15_2 = L13_2.left
            L14_2(L15_2)
            L13_2.left = nil
            L14_2 = SpawnedObjects
            L14_2 = L14_2[L6_2]
            L14_2[L12_2] = nil
          end
          L14_2 = L13_2.right
          if nil ~= L14_2 then
            L14_2 = Functions
            L14_2 = L14_2.DeleteObject
            L15_2 = L13_2.right
            L14_2(L15_2)
            L13_2.right = nil
            L14_2 = SpawnedObjects
            L14_2 = L14_2[L6_2]
            L14_2[L12_2] = nil
          end
          L14_2 = L13_2.object
          if nil ~= L14_2 then
            L14_2 = Functions
            L14_2 = L14_2.DeleteObject
            L15_2 = L13_2.object
            L14_2(L15_2)
            L14_2 = SpawnedObjects
            L14_2 = L14_2[L6_2]
            L14_2[L12_2] = nil
          end
          L14_2 = type
          L15_2 = L13_2
          L14_2 = L14_2(L15_2)
          if "number" == L14_2 then
            L14_2 = Functions
            L14_2 = L14_2.DeleteObject
            L15_2 = L13_2
            L14_2(L15_2)
            L13_2 = nil
          end
          L14_2 = type
          L15_2 = L13_2
          L14_2 = L14_2(L15_2)
          if "table" == L14_2 then
            L14_2 = pairs
            L15_2 = L13_2
            L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
            for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
              L20_2 = type
              L21_2 = L19_2
              L20_2 = L20_2(L21_2)
              if "number" == L20_2 then
                L20_2 = DoesEntityExist
                L21_2 = L19_2
                L20_2 = L20_2(L21_2)
                if L20_2 then
                  L20_2 = Functions
                  L20_2 = L20_2.DeleteObject
                  L21_2 = L19_2
                  L20_2(L21_2)
                  L13_2[L18_2] = nil
                end
              end
            end
            L7_2[L12_2] = nil
          end
        else
          L14_2 = Functions
          L14_2 = L14_2.DeleteObject
          L15_2 = L13_2
          L14_2(L15_2)
          L14_2 = SpawnedObjects
          L14_2 = L14_2[L6_2]
          L14_2[L12_2] = nil
        end
      end
    else
      L8_2 = Functions
      L8_2 = L8_2.DeleteObject
      L9_2 = SpawnedObjects
      L9_2 = L9_2[L6_2]
      L8_2(L9_2)
      L8_2 = SpawnedObjects
      L8_2[L6_2] = nil
    end
  end
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = pairs
    L1_3 = Blips
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = type
      L7_3 = L5_3
      L6_3 = L6_3(L7_3)
      if "table" == L6_3 then
        L6_3 = pairs
        L7_3 = L5_3
        L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
        for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
          L12_3 = RemoveBlip
          L13_3 = L10_3
          L12_3(L13_3)
        end
      else
        L6_3 = RemoveBlip
        L7_3 = L5_3
        L6_3(L7_3)
      end
    end
  end
  L2_2(L3_2)
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L3_2 = Config
  L3_2 = L3_2.Locations
  L3_2 = L3_2.DutyToggle
  L3_2 = L3_2.Coords
  L3_2 = L3_2[1]
  L2_2 = L2_2 - L3_2
  L2_2 = #L2_2
  L3_2 = 200.0
  if L2_2 < L3_2 then
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
    L4_2 = L4_2.x
    L5_2 = Config
    L5_2 = L5_2.Locations
    L5_2 = L5_2.DutyToggle
    L5_2 = L5_2.Coords
    L5_2 = L5_2[1]
    L5_2 = L5_2.y
    L6_2 = Config
    L6_2 = L6_2.Locations
    L6_2 = L6_2.DutyToggle
    L6_2 = L6_2.Coords
    L6_2 = L6_2[1]
    L6_2 = L6_2.z
    L7_2 = false
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "hideCounter"
  L2_2(L3_2)
  L2_2 = DoScreenFadeIn
  L3_2 = 300
  L2_2(L3_2)
  L2_2 = Citizen
  L2_2 = L2_2.Wait
  L3_2 = 1000
  L2_2(L3_2)
  L2_2 = Crane
  L2_2 = L2_2.Delete
  L2_2()
  L2_2 = Config
  L2_2 = L2_2.RequireWorkClothes
  if L2_2 then
    L2_2 = Config
    L2_2 = L2_2.EnableCloakroom
    if not L2_2 then
      L2_2 = false
      L6_1 = L2_2
      L2_2 = ChangeClothes
      L3_2 = "citizen"
      L2_2(L3_2)
    end
  end
end
L37_1(L38_1, L39_1)
L37_1 = RegisterNUICallback
L38_1 = "acceptWarning"
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_OilRig:endJob_sv"
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
L37_1(L38_1, L39_1)
MarkersEnabled = true
OnDuty = false
PipesRounds = 0
IsDrillBusy = false
AttachedProp = nil
OutlinedProp = nil
LobbyId = nil
Lobby = nil
LocationIndex = 1
IsPedCarrying = false
IsBoatFrozen = true
L37_1 = {}
L38_1 = {}
L37_1.Containers = L38_1
Blips = L37_1
L37_1 = {}
L37_1.Handler = nil
L37_1.Boat = nil
SpawnedVehicles = L37_1
L37_1 = {}
L38_1 = {}
L37_1.LocalContainers = L38_1
L38_1 = {}
L37_1.GlobalContainers = L38_1
L38_1 = {}
L37_1.AttachedContainers = L38_1
L38_1 = {}
L37_1.AttachedContainersNetIds = L38_1
L37_1.TemporaryContainer = nil
L38_1 = {}
L37_1.Crane = L38_1
L38_1 = {}
L37_1.CraneContainers = L38_1
L38_1 = {}
L37_1.ContainerDoors = L38_1
L38_1 = {}
L37_1.ContainerBoxes = L38_1
L37_1.Drill = nil
SpawnedObjects = L37_1
L37_1 = {}
Pickups = L37_1
function L37_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2
  L7_2 = Blips
  L7_2 = L7_2[A0_2]
  if L7_2 then
    L7_2 = RemoveBlip
    L8_2 = Blips
    L8_2 = L8_2[A0_2]
    L7_2(L8_2)
  end
  L7_2 = AddBlipForCoord
  L8_2 = A1_2.x
  L9_2 = A1_2.y
  L10_2 = A1_2.z
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = SetBlipSprite
  L9_2 = L7_2
  L10_2 = A2_2
  L8_2(L9_2, L10_2)
  L8_2 = SetBlipScale
  L9_2 = L7_2
  L10_2 = A3_2
  L8_2(L9_2, L10_2)
  L8_2 = SetBlipDisplay
  L9_2 = L7_2
  L10_2 = 4
  L8_2(L9_2, L10_2)
  L8_2 = SetBlipColour
  L9_2 = L7_2
  L10_2 = A4_2
  L8_2(L9_2, L10_2)
  if nil == A6_2 then
    L8_2 = SetBlipAsShortRange
    L9_2 = L7_2
    L10_2 = true
    L8_2(L9_2, L10_2)
  else
    L8_2 = SetBlipAsShortRange
    L9_2 = L7_2
    L10_2 = false
    L8_2(L9_2, L10_2)
  end
  L8_2 = BeginTextCommandSetBlipName
  L9_2 = "STRING"
  L8_2(L9_2)
  L8_2 = AddTextComponentString
  L9_2 = A5_2
  L8_2(L9_2)
  L8_2 = EndTextCommandSetBlipName
  L9_2 = L7_2
  L8_2(L9_2)
  L8_2 = Blips
  L8_2[A0_2] = L7_2
end
AddBlip = L37_1
function L37_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L6_2 = {}
  L7_2 = Functions
  L7_2 = L7_2.SpawnObject
  L8_2 = Config
  L8_2 = L8_2.ContainerModel
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = false
    L2_3 = false
    L3_3 = SpawnedObjects
    L3_3 = L3_3.ContainerDoors
    L4_3 = {}
    L3_3[A0_3] = L4_3
    L3_3 = A2_2
    if L3_3 then
      L3_3 = table
      L3_3 = L3_3.insert
      L4_3 = L6_2
      L5_3 = {}
      L5_3.type = "container"
      L5_3.object = A0_3
      L6_3 = A4_2
      L5_3.isAttached = L6_3
      L3_3(L4_3, L5_3)
    end
    L3_3 = A5_2
    if not L3_3 then
      L3_3 = Functions
      L3_3 = L3_3.SpawnObject
      L4_3 = Config
      L4_3 = L4_3.ContainerDoorsL
      function L5_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4
        L1_4 = true
        L1_3 = L1_4
        L1_4 = SpawnedObjects
        L1_4 = L1_4.ContainerDoors
        L2_4 = A0_3
        L1_4 = L1_4[L2_4]
        L1_4.left = A0_4
        L1_4 = A2_2
        if L1_4 then
          L1_4 = table
          L1_4 = L1_4.insert
          L2_4 = L6_2
          L3_4 = {}
          L3_4.type = "leftDoors"
          L3_4.object = A0_4
          L4_4 = A0_3
          L3_4.parentContainer = L4_4
          L1_4(L2_4, L3_4)
        end
        L1_4 = AttachEntityToEntity
        L2_4 = A0_4
        L3_4 = A0_3
        L4_4 = 0
        L5_4 = -1.3
        L6_4 = -1.83
        L7_4 = 1.4
        L8_4 = 0.0
        L9_4 = 0.0
        L10_4 = 0.0
        L11_4 = true
        L12_4 = true
        L13_4 = true
        L14_4 = false
        L15_4 = 2
        L16_4 = true
        L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4)
        L1_4 = L1_3
        if L1_4 then
          L1_4 = L2_3
          if L1_4 then
            L1_4 = A0_2
            L2_4 = A0_3
            L1_4(L2_4)
          end
        end
      end
      L6_3 = A1_2
      L7_3 = A2_2
      L8_3 = A3_2
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
      L3_3 = Functions
      L3_3 = L3_3.SpawnObject
      L4_3 = Config
      L4_3 = L4_3.ContainerDoorsR
      function L5_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4
        L1_4 = true
        L2_3 = L1_4
        L1_4 = SpawnedObjects
        L1_4 = L1_4.ContainerDoors
        L2_4 = A0_3
        L1_4 = L1_4[L2_4]
        L1_4.right = A0_4
        L1_4 = A2_2
        if L1_4 then
          L1_4 = table
          L1_4 = L1_4.insert
          L2_4 = L6_2
          L3_4 = {}
          L3_4.type = "rightDoors"
          L3_4.object = A0_4
          L4_4 = A0_3
          L3_4.parentContainer = L4_4
          L1_4(L2_4, L3_4)
        end
        L1_4 = AttachEntityToEntity
        L2_4 = A0_4
        L3_4 = A0_3
        L4_4 = 0
        L5_4 = 1.3
        L6_4 = -1.83
        L7_4 = 1.4
        L8_4 = 0.0
        L9_4 = 0.0
        L10_4 = 0.0
        L11_4 = true
        L12_4 = true
        L13_4 = true
        L14_4 = false
        L15_4 = 2
        L16_4 = true
        L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4)
        L1_4 = L1_3
        if L1_4 then
          L1_4 = L2_3
          if L1_4 then
            L1_4 = A0_2
            L2_4 = A0_3
            L1_4(L2_4)
          end
        end
      end
      L6_3 = A1_2
      L7_3 = A2_2
      L8_3 = A3_2
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    else
      L3_3 = A0_2
      L4_3 = A0_3
      L3_3(L4_3)
    end
  end
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = false
  L14_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if A2_2 then
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = NetworkGetEntityIsNetworked
      L14_2 = L12_2.object
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L13_2 = ObjToNet
        L14_2 = L12_2.object
        L13_2 = L13_2(L14_2)
        L12_2.netId = L13_2
      end
    end
    L7_2 = TriggerServerEvent
    L8_2 = "17mov_OilRig:GlobalContainerSpawned"
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
SpawnContainer = L37_1
L37_1 = RegisterNetEvent
L38_1 = "17mov_OilRig:GlobalContainerSpawned"
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = NetToObj
    L8_2 = L6_2.netId
    L7_2 = L7_2(L8_2)
    while nil == L7_2 or 0 == L7_2 do
      L8_2 = Citizen
      L8_2 = L8_2.Wait
      L9_2 = 100
      L8_2(L9_2)
      L8_2 = NetToObj
      L9_2 = L6_2.netId
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    end
    L6_2.object = L7_2
  end
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.type
    if "container" == L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = SpawnedObjects
      L8_2 = L8_2.GlobalContainers
      L9_2 = {}
      L10_2 = L6_2.object
      L9_2.object = L10_2
      L10_2 = GetEntityCoords
      L11_2 = L6_2.object
      L10_2 = L10_2(L11_2)
      L9_2.coords = L10_2
      L7_2(L8_2, L9_2)
      L7_2 = L6_2.isAttached
      if L7_2 then
        L7_2 = L6_2.object
        AttachedProp = L7_2
      end
    end
  end
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.type
    if "leftDoors" == L7_2 then
      L7_2 = SpawnedObjects
      L7_2 = L7_2.ContainerDoors
      L8_2 = L6_2.parentContainer
      L7_2 = L7_2[L8_2]
      if nil == L7_2 then
        L7_2 = SpawnedObjects
        L7_2 = L7_2.ContainerDoors
        L8_2 = L6_2.parentContainer
        L9_2 = {}
        L7_2[L8_2] = L9_2
      end
      L7_2 = SpawnedObjects
      L7_2 = L7_2.ContainerDoors
      L8_2 = L6_2.parentContainer
      L7_2 = L7_2[L8_2]
      L8_2 = L6_2.object
      L7_2.left = L8_2
    else
      L7_2 = L6_2.type
      if "rightDoors" == L7_2 then
        L7_2 = SpawnedObjects
        L7_2 = L7_2.ContainerDoors
        L8_2 = L6_2.parentContainer
        L7_2 = L7_2[L8_2]
        if nil == L7_2 then
          L7_2 = SpawnedObjects
          L7_2 = L7_2.ContainerDoors
          L8_2 = L6_2.parentContainer
          L9_2 = {}
          L7_2[L8_2] = L9_2
        end
        L7_2 = SpawnedObjects
        L7_2 = L7_2.ContainerDoors
        L8_2 = L6_2.parentContainer
        L7_2 = L7_2[L8_2]
        L8_2 = L6_2.object
        L7_2.right = L8_2
      end
    end
  end
end
L37_1(L38_1, L39_1)
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = SpawnedObjects
  L1_2 = L1_2.ContainerDoors
  L1_2 = L1_2[A0_2]
  if nil ~= L1_2 then
    L1_2 = Functions
    L1_2 = L1_2.DeleteObject
    L2_2 = SpawnedObjects
    L2_2 = L2_2.ContainerDoors
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.left
    L1_2(L2_2)
    L1_2 = Functions
    L1_2 = L1_2.DeleteObject
    L2_2 = SpawnedObjects
    L2_2 = L2_2.ContainerDoors
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.right
    L1_2(L2_2)
    L1_2 = SpawnedObjects
    L1_2 = L1_2.ContainerDoors
    L1_2[A0_2] = nil
  end
  L1_2 = pairs
  L2_2 = GetGamePool
  L3_2 = "CObject"
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetEntityModel
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = Config
    L8_2 = L8_2.ContainerDoorsL
    if L7_2 ~= L8_2 then
      L8_2 = Config
      L8_2 = L8_2.ContainerDoorsR
      if L7_2 ~= L8_2 then
        goto lbl_49
      end
    end
    L8_2 = IsEntityAttachedToEntity
    L9_2 = L6_2
    L10_2 = A0_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = DeleteEntity
      L9_2 = L6_2
      L8_2(L9_2)
    end
    ::lbl_49::
  end
  L1_2 = Functions
  L1_2 = L1_2.DeleteObject
  L2_2 = A0_2
  L1_2(L2_2)
end
DeleteContainer = L37_1
function L37_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if nil == A2_2 then
    A2_2 = 0.0
  end
  if nil == A3_2 then
    A3_2 = 0.0
  end
  if nil == A4_2 then
    A4_2 = 0.0
  end
  L5_2 = AttachEntityToEntity
  L6_2 = SpawnedObjects
  L6_2 = L6_2.ContainerDoors
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.left
  L7_2 = A0_2
  L8_2 = 0
  L9_2 = -1.3
  L10_2 = -1.83
  L11_2 = 1.4
  L12_2 = A2_2
  L13_2 = A3_2
  L14_2 = -A4_2
  L15_2 = true
  L16_2 = true
  L17_2 = A1_2
  L18_2 = false
  L19_2 = 2
  L20_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = AttachEntityToEntity
  L6_2 = SpawnedObjects
  L6_2 = L6_2.ContainerDoors
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.right
  L7_2 = A0_2
  L8_2 = 0
  L9_2 = 1.3
  L10_2 = -1.83
  L11_2 = 1.4
  L12_2 = A2_2
  L13_2 = A3_2
  L14_2 = A4_2
  L15_2 = true
  L16_2 = true
  L17_2 = A1_2
  L18_2 = false
  L19_2 = 2
  L20_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
end
AttachContainerDoors = L37_1
function L37_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    while true do
      L0_3 = IsPedCarrying
      if not L0_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = "anim@heists@box_carry@"
      L2_3 = "idle"
      L3_3 = A0_2
      if L3_3 then
        L3_3 = "box_animation"
        L2_3 = "box_anim"
        L1_3 = L3_3
      end
      L3_3 = SetEntityMaxSpeed
      L4_3 = L0_3
      L5_3 = 5.0
      L3_3(L4_3, L5_3)
      L3_3 = SetCurrentPedWeapon
      L4_3 = L0_3
      L5_3 = -1569615261
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisablePlayerFiring
      L4_3 = L0_3
      L5_3 = true
      L3_3(L4_3, L5_3)
      L3_3 = IsEntityPlayingAnim
      L4_3 = L0_3
      L5_3 = L1_3
      L6_3 = L2_3
      L7_3 = 3
      L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
      if not L3_3 then
        L3_3 = Functions
        L3_3 = L3_3.RequestAnimDict
        L4_3 = L1_3
        L3_3(L4_3)
        L3_3 = A0_2
        if L3_3 then
          L3_3 = TaskPlayAnim
          L4_3 = L0_3
          L5_3 = L1_3
          L6_3 = L2_3
          L7_3 = 3.5
          L8_3 = -8
          L9_3 = -1
          L10_3 = 34
          L11_3 = 2
          L12_3 = false
          L13_3 = false
          L14_3 = false
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
        else
          L3_3 = TaskPlayAnim
          L4_3 = L0_3
          L5_3 = L1_3
          L6_3 = L2_3
          L7_3 = 3.5
          L8_3 = -8
          L9_3 = -1
          L10_3 = 49
          L11_3 = 0
          L12_3 = false
          L13_3 = false
          L14_3 = false
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
        end
      end
      L3_3 = Wait
      L4_3 = 10
      L3_3(L4_3)
    end
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = SetEntityMaxSpeed
    L2_3 = L0_3
    L3_3 = -1.0
    L1_3(L2_3, L3_3)
    L1_3 = ClearPedSecondaryTask
    L2_3 = L0_3
    L1_3(L2_3)
  end
  L1_2(L2_2)
end
CarryingAnim = L37_1
function L37_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = IsPedCarrying
  if not L0_2 then
    return
  end
  L0_2 = IsPedCarrying
  L1_2 = Entity
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.state
  L1_2 = L1_2.model
  L2_2 = Entity
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.reward
  L3_2 = Entity
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.state
  L3_2 = L3_2.destination
  L4_2 = GetEntityRotation
  L5_2 = SpawnedObjects
  L5_2 = L5_2.TemporaryDestinationObj
  L4_2 = L4_2(L5_2)
  L5_2 = Functions
  L5_2 = L5_2.DeleteObject
  L6_2 = L0_2
  L5_2(L6_2)
  L5_2 = SetEntityDrawOutline
  L6_2 = SpawnedObjects
  L6_2 = L6_2.TemporaryDestinationObj
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = Functions
  L5_2 = L5_2.DeleteObject
  L6_2 = SpawnedObjects
  L6_2 = L6_2.TemporaryDestinationObj
  L5_2(L6_2)
  IsPedCarrying = nil
  L5_2 = TriggerServerEvent
  L6_2 = "17mov_OilRig:SpawnDestinationObject"
  L7_2 = {}
  L7_2.model = L1_2
  L7_2.destinationHeading = L4_2
  L7_2.destinationPoint = L3_2
  L7_2.reward = L2_2
  L5_2(L6_2, L7_2)
  L5_2 = RemoveBlip
  L6_2 = Blips
  L6_2 = L6_2.CarryingProp
  L5_2(L6_2)
  L5_2 = Blips
  L5_2.CarryingProp = nil
end
ContainerPutDown = L37_1
L37_1 = RegisterNetEvent
L38_1 = "17mov_OilRig:SpawnDestinationObject"
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.model
  L2_2 = A0_2.destinationHeading
  L3_2 = A0_2.destinationPoint
  L4_2 = Functions
  L4_2 = L4_2.SpawnObject
  L5_2 = L1_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = SetEntityRotation
    L2_3 = A0_3
    L3_3 = L2_2.x
    L4_3 = L2_2.y
    L5_3 = L2_2.z
    L6_3 = 0
    L7_3 = false
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    L1_3 = FreezeEntityPosition
    L2_3 = A0_3
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = SetEntityCollision
    L2_3 = A0_3
    L3_3 = true
    L4_3 = true
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = SetEntityCoords
    L2_3 = A0_3
    L3_3 = L3_2.x
    L4_3 = L3_2.y
    L5_3 = L3_2.z
    L6_3 = false
    L7_3 = false
    L8_3 = false
    L9_3 = false
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
  end
  L7_2 = L3_2
  L8_2 = false
  L9_2 = true
  L10_2 = true
  L11_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L37_1(L38_1, L39_1)
function L37_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L6_2 = GetGameTimer
  L6_2 = L6_2()
  L7_2 = L6_2 + A4_2
  L8_2 = table
  L8_2 = L8_2.unpack
  L9_2 = GetEntityCoords
  L10_2 = A0_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L9_2(L10_2)
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L11_2 = GetEntityHeading
  L12_2 = A0_2
  L11_2 = L11_2(L12_2)
  L12_2 = L8_2 + A1_2
  L13_2 = L9_2 + A2_2
  A3_2 = L10_2 + A3_2
  A2_2 = L13_2
  A1_2 = L12_2
  while true do
    L12_2 = GetGameTimer
    L12_2 = L12_2()
    if not (L7_2 > L12_2) then
      break
    end
    L12_2 = Citizen
    L12_2 = L12_2.Wait
    L13_2 = 0
    L12_2(L13_2)
    L12_2 = GetGameTimer
    L12_2 = L12_2()
    L13_2 = L12_2 - L6_2
    L13_2 = L13_2 / A4_2
    L14_2 = A1_2 - L8_2
    L14_2 = L14_2 * L13_2
    L14_2 = L8_2 + L14_2
    L15_2 = A2_2 - L9_2
    L15_2 = L15_2 * L13_2
    L15_2 = L9_2 + L15_2
    L16_2 = A3_2 - L10_2
    L16_2 = L16_2 * L13_2
    L16_2 = L10_2 + L16_2
    L17_2 = SetEntityCoords
    L18_2 = A0_2
    L19_2 = L14_2
    L20_2 = L15_2
    L21_2 = L16_2
    L22_2 = false
    L23_2 = false
    L24_2 = false
    L25_2 = true
    L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    if A5_2 then
      L17_2 = L13_2 * 150
      L17_2 = L17_2 * 24
      L17_2 = 15 * L17_2
      L17_2 = L11_2 + L17_2
      L18_2 = SetEntityHeading
      L19_2 = A0_2
      L20_2 = L17_2 % 360
      L18_2(L19_2, L20_2)
    end
  end
  L12_2 = SetEntityCoords
  L13_2 = A0_2
  L14_2 = A1_2
  L15_2 = A2_2
  L16_2 = A3_2
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L20_2 = true
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  if A5_2 then
    L12_2 = SetEntityHeading
    L13_2 = A0_2
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
end
MoveAndRotateEntity = L37_1
function L37_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    IsDrillBusy = true
    L0_3 = PipesRounds
    L0_3 = L0_3 + 1
    PipesRounds = L0_3
    L0_3 = Functions
    L0_3 = L0_3.PlayAudioAtCoords
    L1_3 = "electric-drill-06"
    L2_3 = 0.2
    L3_3 = SpawnedObjects
    L3_3 = L3_3.Drill
    L4_3 = 50
    L5_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = MoveAndRotateEntity
    L1_3 = SpawnedObjects
    L1_3 = L1_3.Drill
    L2_3 = 0.0
    L3_3 = 0.0
    L4_3 = 4.0
    L5_3 = 4500
    L6_3 = false
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    L0_3 = Citizen
    L0_3 = L0_3.Wait
    L1_3 = 500
    L0_3(L1_3)
    L0_3 = CreateObject
    L1_3 = Config
    L1_3 = L1_3.RigsLocations
    L2_3 = L15_1
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.Drill
    L1_3 = L1_3.hintPropModel
    L2_3 = Config
    L2_3 = L2_3.RigsLocations
    L3_3 = L15_1
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.Drill
    L2_3 = L2_3.PropCoords
    L2_3 = L2_3.x
    L3_3 = Config
    L3_3 = L3_3.RigsLocations
    L4_3 = L15_1
    L3_3 = L3_3[L4_3]
    L3_3 = L3_3.Drill
    L3_3 = L3_3.PropCoords
    L3_3 = L3_3.y
    L4_3 = Config
    L4_3 = L4_3.RigsLocations
    L5_3 = L15_1
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.Drill
    L4_3 = L4_3.PropCoords
    L4_3 = L4_3.z
    L5_3 = false
    L6_3 = true
    L7_3 = false
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    L1_3 = AttachEntityToEntity
    L2_3 = L0_3
    L3_3 = SpawnedObjects
    L3_3 = L3_3.Drill
    L4_3 = 0
    L5_3 = Config
    L5_3 = L5_3.RigsLocations
    L6_3 = L15_1
    L5_3 = L5_3[L6_3]
    L5_3 = L5_3.Drill
    L5_3 = L5_3.addonPropAttachoffset
    L5_3 = L5_3.x
    L6_3 = Config
    L6_3 = L6_3.RigsLocations
    L7_3 = L15_1
    L6_3 = L6_3[L7_3]
    L6_3 = L6_3.Drill
    L6_3 = L6_3.addonPropAttachoffset
    L6_3 = L6_3.y
    L7_3 = Config
    L7_3 = L7_3.RigsLocations
    L8_3 = L15_1
    L7_3 = L7_3[L8_3]
    L7_3 = L7_3.Drill
    L7_3 = L7_3.addonPropAttachoffset
    L7_3 = L7_3.z
    L8_3 = 0.0
    L9_3 = 0.0
    L10_3 = 0.0
    L11_3 = false
    L12_3 = false
    L13_3 = true
    L14_3 = false
    L15_3 = 2
    L16_3 = true
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L1_3 = table
    L1_3 = L1_3.insert
    L2_3 = SpawnedObjects
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
    L1_3 = Citizen
    L1_3 = L1_3.Wait
    L2_3 = 1000
    L1_3(L2_3)
    L1_3 = Functions
    L1_3 = L1_3.PlayAudioAtCoords
    L2_3 = "electric-drill-02"
    L3_3 = 0.2
    L4_3 = SpawnedObjects
    L4_3 = L4_3.Drill
    L5_3 = 50
    L6_3 = true
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L1_3 = MoveAndRotateEntity
    L2_3 = SpawnedObjects
    L2_3 = L2_3.Drill
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = -6.05
    L6_3 = 8350
    L7_3 = true
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    L1_3 = Citizen
    L1_3 = L1_3.Wait
    L2_3 = 500
    L1_3(L2_3)
    L1_3 = DeleteEntity
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = Citizen
    L1_3 = L1_3.Wait
    L2_3 = 500
    L1_3(L2_3)
    L1_3 = Functions
    L1_3 = L1_3.PlayAudioAtCoords
    L2_3 = "electric-drill-06"
    L3_3 = 0.2
    L4_3 = SpawnedObjects
    L4_3 = L4_3.Drill
    L5_3 = 50
    L6_3 = true
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L1_3 = MoveAndRotateEntity
    L2_3 = SpawnedObjects
    L2_3 = L2_3.Drill
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = 2.05
    L6_3 = 4500
    L7_3 = false
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    IsDrillBusy = false
  end
  L0_2(L1_2)
end
HandleDrill = L37_1
L37_1 = RegisterNetEvent
L38_1 = "17mov_OilRig:StartPipesAnim"
L39_1 = HandleDrill
L37_1(L38_1, L39_1)
function L37_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L4_1
  L2_2 = GetResourceKvpInt
  L3_2 = "17mov_Tutorials:"
  L4_2 = Config
  L4_2 = L4_2.Lang
  L4_2 = L4_2.rig_tutorial
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2(L3_2)
  if 0 == L2_2 then
    L2_2 = L22_1
    if not L2_2 then
      L2_2 = SendNUIMessage
      L3_2 = {}
      L3_2.action = "showTutorial"
      L4_2 = Config
      L4_2 = L4_2.Lang
      L4_2 = L4_2.rig_tutorial
      L3_2.customText = L4_2
      L2_2(L3_2)
      L2_2 = Config
      L2_2 = L2_2.Lang
      L2_2 = L2_2.rig_tutorial
      L24_1 = L2_2
      L2_2 = true
      L23_1 = L2_2
      L2_2 = SetNuiFocus
      L3_2 = true
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = L26_1
  L3_2 = Config
  L3_2 = L3_2.RigsLocations
  L4_2 = L15_1
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.BoatParking
  L3_2 = L3_2.Coords
  L3_2 = L3_2[L2_2]
  L4_2 = TaskLeaveAnyVehicle
  L5_2 = L0_2
  L6_2 = 0
  L7_2 = 0
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = GetWaterHeight
  L5_2 = L3_2.x
  L6_2 = L3_2.y
  L7_2 = L3_2.z
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L5_2 = 0.0
  end
  L6_2 = SetEntityCoords
  L7_2 = L1_2
  L8_2 = L3_2.x
  L9_2 = L3_2.y
  L10_2 = L5_2 - 3.0
  L11_2 = true
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = PlaceObjectOnGroundProperly
  L7_2 = L1_2
  L6_2(L7_2)
  L6_2 = SetEntityHeading
  L7_2 = L1_2
  L8_2 = L3_2.w
  L6_2(L7_2, L8_2)
  L6_2 = L21_1
  if not L6_2 then
    L6_2 = true
    L21_1 = L6_2
    L6_2 = 1
    L7_2 = Config
    L7_2 = L7_2.RigsLocations
    L8_2 = L15_1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.Drill
    L7_2 = L7_2.Coords
    L7_2 = #L7_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = AddBlip
      L11_2 = string
      L11_2 = L11_2.format
      L12_2 = "Drilling_%s"
      L13_2 = L9_2
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = Config
      L12_2 = L12_2.RigsLocations
      L13_2 = L15_1
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.Drill
      L12_2 = L12_2.Coords
      L12_2 = L12_2[L9_2]
      L13_2 = Config
      L13_2 = L13_2.BlipsStyles
      L13_2 = L13_2.Drilling
      L13_2 = L13_2.sprite
      L14_2 = Config
      L14_2 = L14_2.BlipsStyles
      L14_2 = L14_2.Drilling
      L14_2 = L14_2.scale
      L15_2 = Config
      L15_2 = L15_2.BlipsStyles
      L15_2 = L15_2.Drilling
      L15_2 = L15_2.color
      L16_2 = Config
      L16_2 = L16_2.BlipsStyles
      L16_2 = L16_2.Drilling
      L16_2 = L16_2.label
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    end
    L6_2 = 1
    L7_2 = Config
    L7_2 = L7_2.RigsLocations
    L8_2 = L15_1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.Welding
    L7_2 = L7_2.Coords
    L7_2 = #L7_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = AddBlip
      L11_2 = string
      L11_2 = L11_2.format
      L12_2 = "Welding_%s"
      L13_2 = L9_2
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = Config
      L12_2 = L12_2.RigsLocations
      L13_2 = L15_1
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.Welding
      L12_2 = L12_2.Coords
      L12_2 = L12_2[L9_2]
      L12_2 = L12_2.coords
      L13_2 = Config
      L13_2 = L13_2.BlipsStyles
      L13_2 = L13_2.Welding
      L13_2 = L13_2.sprite
      L14_2 = Config
      L14_2 = L14_2.BlipsStyles
      L14_2 = L14_2.Welding
      L14_2 = L14_2.scale
      L15_2 = Config
      L15_2 = L15_2.BlipsStyles
      L15_2 = L15_2.Welding
      L15_2 = L15_2.color
      L16_2 = Config
      L16_2 = L16_2.BlipsStyles
      L16_2 = L16_2.Welding
      L16_2 = L16_2.label
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
  L6_2 = RemoveBlip
  L7_2 = Blips
  L7_2 = L7_2.Rig
  L6_2(L7_2)
  L6_2 = TriggerServerEvent
  L7_2 = "17mov_OilRig:DeleteTemporaryContainer"
  L6_2(L7_2)
  L6_2 = TriggerServerEvent
  L7_2 = "17mov_OilRig:DeleteHandler"
  L6_2(L7_2)
  L6_2 = pairs
  L7_2 = SpawnedObjects
  L7_2 = L7_2.LocalContainers
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = TriggerServerEvent
    L13_2 = "17mov_OilRig:MyLocalContainerDeleted"
    L14_2 = L11_2.coords
    L12_2(L13_2, L14_2)
  end
end
ParkBoat = L37_1
L37_1 = RegisterNetEvent
L38_1 = "17mov_OilRig:ParkBoat"
L39_1 = ParkBoat
L37_1(L38_1, L39_1)
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = IsPedCarrying
  if L2_2 then
    L2_2 = Notify
    L3_2 = Config
    L3_2 = L3_2.Lang
    L3_2 = L3_2.finishTask
    return L2_2(L3_2)
  end
  if "BoatParking" ~= A0_2 then
    L2_2 = CheckMembersAreOnRig
    L2_2 = L2_2()
    if not L2_2 then
      return
    end
  end
  if "Crane" == A0_2 then
    L2_2 = TriggerServerCallback
    L3_2 = "17mov_OilRig:CheckIfCraneIsFree"
    function L4_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = Crane
        L1_3 = L1_3.Enter
        L1_3()
      else
        L1_3 = Notify
        L2_3 = Config
        L2_3 = L2_3.Lang
        L2_3 = L2_3.craneBusy
        L1_3(L2_3)
      end
    end
    L2_2(L3_2, L4_2)
  elseif "Drill" == A0_2 then
    L2_2 = IsDrillBusy
    if L2_2 then
      L2_2 = Notify
      L3_2 = Config
      L3_2 = L3_2.Lang
      L3_2 = L3_2.drill_busy
      return L2_2(L3_2)
    end
    L2_2 = OpenPipes
    L2_2()
  elseif "Welding" == A0_2 then
    L2_2 = OpenWelding
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  elseif "BoatParking" == A0_2 then
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = GetVehiclePedIsIn
    L4_2 = L2_2
    L5_2 = false
    L3_2 = L3_2(L4_2, L5_2)
    if 0 ~= L3_2 then
      L4_2 = GetEntityModel
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = Config
      L5_2 = L5_2.BoatModel
      if L4_2 == L5_2 then
        L4_2 = TriggerServerEvent
        L5_2 = "17mov_OilRig:ParkBoat"
        L4_2(L5_2)
    end
    else
      L4_2 = Notify
      L5_2 = Config
      L5_2 = L5_2.Lang
      L5_2 = L5_2.not_in_boat
      L4_2(L5_2)
    end
  end
end
HasInteraction = L37_1
L37_1 = RegisterNetEvent
L38_1 = "17mov_OilRig:DisableThisLocation"
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Config
  L2_2 = L2_2.RigsLocations
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.Welding
  L2_2 = L2_2.Coords
  L2_2 = L2_2[A1_2]
  L2_2.busy = true
  L2_2 = RemoveBlip
  L3_2 = Blips
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "Welding_%s"
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2[L4_2]
  L2_2(L3_2)
end
L37_1(L38_1, L39_1)
L37_1 = RegisterNetEvent
L38_1 = "17mov_OilRig:EnableThisLocation"
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Config
  L2_2 = L2_2.RigsLocations
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.Welding
  L2_2 = L2_2.Coords
  L2_2 = L2_2[A1_2]
  L2_2.busy = false
  L2_2 = AddBlip
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "Welding_%s"
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = Config
  L4_2 = L4_2.RigsLocations
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.Welding
  L4_2 = L4_2.Coords
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.coords
  L5_2 = Config
  L5_2 = L5_2.BlipsStyles
  L5_2 = L5_2.Welding
  L5_2 = L5_2.sprite
  L6_2 = Config
  L6_2 = L6_2.BlipsStyles
  L6_2 = L6_2.Welding
  L6_2 = L6_2.scale
  L7_2 = Config
  L7_2 = L7_2.BlipsStyles
  L7_2 = L7_2.Welding
  L7_2 = L7_2.color
  L8_2 = Config
  L8_2 = L8_2.BlipsStyles
  L8_2 = L8_2.Welding
  L8_2 = L8_2.label
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L37_1(L38_1, L39_1)
L37_1 = RegisterNetEvent
L38_1 = "17mov_OilRig:UpdateQuestProgress"
function L39_1(A0_2, A1_2)
  local L2_2, L3_2
  if "welding" == A1_2 then
    L2_2 = L16_1
    L2_2 = L2_2 + 1
    L16_1 = L2_2
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "updateCounter"
  L3_2.value = A0_2
  L2_2(L3_2)
end
L37_1(L38_1, L39_1)
L37_1 = RegisterNetEvent
L38_1 = "17mov_OilRig:UpdateGasProgress"
function L39_1(A0_2)
  local L1_2, L2_2
  L27_1 = A0_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateGas"
  L2_2.value = A0_2
  L1_2(L2_2)
  L1_2 = L27_1
  L2_2 = 149.0
  if L1_2 >= L2_2 then
    L1_2 = RemoveBlip
    L2_2 = Blips
    L2_2 = L2_2.Drilling_1
    L1_2(L2_2)
  end
end
L37_1(L38_1, L39_1)
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2 = L15_1
  L2_2 = A0_2
  L3_2 = A1_2
  L4_2 = true
  L20_1 = L4_2
  L19_1 = L3_2
  L18_1 = L2_2
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_OilRig:DisableThisLocation"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetNuiFocus
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "updateTasks"
  L4_2 = L16_1
  L3_2.currentTask = L4_2
  L4_2 = L17_1
  L3_2.tasks = L4_2
  L2_2(L3_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "openWelding"
  L4_2 = Config
  L4_2 = L4_2.WeldingLevels
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = 1
  L7_2 = Config
  L7_2 = L7_2.WeldingLevels
  L7_2 = #L7_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2[L5_2]
  L3_2.level = L4_2
  L2_2(L3_2)
end
OpenWelding = L37_1
L37_1 = false
function L38_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerServerCallback
  L1_2 = "17mov_OilRig:IsDrillFree"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = true
      L37_1 = L1_3
      L1_3 = SetNuiFocus
      L2_3 = true
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "openPipes"
      L2_3.level = 10
      L2_3.time = 10
      L3_3 = L27_1
      L2_3.value = L3_3
      L1_3(L2_3)
    else
      L1_3 = Notify
      L2_3 = Config
      L2_3 = L2_3.Lang
      L2_3 = L2_3.drill_busy
      L1_3(L2_3)
    end
  end
  L0_2(L1_2, L2_2)
end
OpenPipes = L38_1
function L38_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = true
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "openSigning"
  L0_2(L1_2)
end
OpenSigning = L38_1
L38_1 = RegisterNUICallback
L39_1 = "exit"
function L40_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = L20_1
  if L0_2 then
    L0_2 = false
    L20_1 = L0_2
    L0_2 = TriggerServerEvent
    L1_2 = "17mov_OilRig:EnableThisLocation"
    L2_2 = L18_1
    L3_2 = L19_1
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = L37_1
  if L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "17mov_OilRig:PipesNowFree"
    L0_2(L1_2)
  end
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNUICallback
L39_1 = "weldingWin"
function L40_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = false
  L20_1 = L0_2
  L0_2 = TriggerServerEvent
  L1_2 = "17mov_OilRig:WeldingWin"
  L2_2 = L18_1
  L3_2 = L19_1
  L0_2(L1_2, L2_2, L3_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNUICallback
L39_1 = "pipesWin"
function L40_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = TriggerServerEvent
  L1_2 = "17mov_OilRig:StartPipesAnim"
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 1400
  L0_2(L1_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNUICallback
L39_1 = "sign"
function L40_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = ContainerPutDown
  L0_2()
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "onResourceStop"
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = Crane
    L1_2 = L1_2.Exit
    L1_2()
    L1_2 = 1
    L2_2 = Crane
    L2_2 = L2_2.Ropes
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = DeleteRope
      L6_2 = Crane
      L6_2 = L6_2.Ropes
      L6_2 = L6_2[L4_2]
      L5_2(L6_2)
      L5_2 = Crane
      L5_2 = L5_2.Ropes
      L5_2[L4_2] = nil
    end
    L1_2 = pairs
    L2_2 = SpawnedVehicles
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = type
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if "table" == L7_2 then
        L7_2 = pairs
        L8_2 = L6_2
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
          L13_2 = Functions
          L13_2 = L13_2.DeleteVehicle
          L14_2 = L12_2
          L13_2(L14_2)
          L12_2 = nil
        end
      else
        L7_2 = Functions
        L7_2 = L7_2.DeleteVehicle
        L8_2 = SpawnedVehicles
        L8_2 = L8_2[L5_2]
        L7_2(L8_2)
        L7_2 = SpawnedVehicles
        L7_2[L5_2] = nil
      end
    end
    L1_2 = pairs
    L2_2 = SpawnedObjects
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = type
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if "table" == L7_2 then
        L7_2 = pairs
        L8_2 = L6_2
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
          L13_2 = type
          L14_2 = L12_2
          L13_2 = L13_2(L14_2)
          if "table" == L13_2 then
            L13_2 = L12_2.left
            if nil ~= L13_2 then
              L13_2 = Functions
              L13_2 = L13_2.DeleteObject
              L14_2 = L12_2.left
              L13_2(L14_2)
              L12_2.left = nil
              L13_2 = SpawnedObjects
              L13_2 = L13_2[L5_2]
              L13_2[L11_2] = nil
            end
            L13_2 = L12_2.right
            if nil ~= L13_2 then
              L13_2 = Functions
              L13_2 = L13_2.DeleteObject
              L14_2 = L12_2.right
              L13_2(L14_2)
              L12_2.right = nil
              L13_2 = SpawnedObjects
              L13_2 = L13_2[L5_2]
              L13_2[L11_2] = nil
            end
            L13_2 = L12_2.object
            if nil ~= L13_2 then
              L13_2 = Functions
              L13_2 = L13_2.DeleteObject
              L14_2 = L12_2.object
              L13_2(L14_2)
              L13_2 = SpawnedObjects
              L13_2 = L13_2[L5_2]
              L13_2[L11_2] = nil
            end
            L13_2 = type
            L14_2 = L12_2
            L13_2 = L13_2(L14_2)
            if "number" == L13_2 then
              L13_2 = DoesEntityExist
              L14_2 = L12_2
              L13_2 = L13_2(L14_2)
              if L13_2 then
                L13_2 = Functions
                L13_2 = L13_2.DeleteObject
                L14_2 = L12_2
                L13_2(L14_2)
                L12_2 = nil
              end
            end
            L13_2 = type
            L14_2 = L12_2
            L13_2 = L13_2(L14_2)
            if "table" == L13_2 then
              L13_2 = pairs
              L14_2 = L12_2
              L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
              for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
                L19_2 = Functions
                L19_2 = L19_2.DeleteObject
                L20_2 = L18_2
                L19_2(L20_2)
                L12_2[L17_2] = nil
              end
              L6_2[L11_2] = nil
            end
          else
            L13_2 = Functions
            L13_2 = L13_2.DeleteObject
            L14_2 = L12_2
            L13_2(L14_2)
            L13_2 = SpawnedObjects
            L13_2 = L13_2[L5_2]
            L13_2[L11_2] = nil
          end
        end
      else
        L7_2 = Functions
        L7_2 = L7_2.DeleteObject
        L8_2 = SpawnedObjects
        L8_2 = L8_2[L5_2]
        L7_2(L8_2)
        L7_2 = SpawnedObjects
        L7_2[L5_2] = nil
      end
    end
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
      L0_3 = pairs
      L1_3 = Blips
      L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
      for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
        L6_3 = type
        L7_3 = L5_3
        L6_3 = L6_3(L7_3)
        if "table" == L6_3 then
          L6_3 = pairs
          L7_3 = L5_3
          L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
          for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
            L12_3 = RemoveBlip
            L13_3 = L10_3
            L12_3(L13_3)
          end
        else
          L6_3 = RemoveBlip
          L7_3 = L5_3
          L6_3(L7_3)
        end
      end
    end
    L1_2(L2_2)
  end
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "17mov_OilRig:DeleteHandler"
function L40_1()
  local L0_2, L1_2
  L0_2 = DeleteVehicle
  L1_2 = L2_1
  L0_2(L1_2)
  L0_2 = 0
  L2_1 = L0_2
end
L38_1(L39_1, L40_1)
L38_1 = {}
L38_1.IsUsing = false
L38_1.AttachedContainer = nil
L38_1.Cam = nil
L38_1.CamAngle = 0
L38_1.CurrentCable = 1
L39_1 = {}
L38_1.Ropes = L39_1
L39_1 = {}
L39_1.min = 1.0
L39_1.max = 20.0
L38_1.RopeLength = L39_1
L39_1 = {}
L38_1.EnabledControls = L39_1
L39_1 = {}
L39_1.W = 32
L39_1.S = 33
L39_1.A = 34
L39_1.D = 35
L39_1.ArrowUp = 172
L39_1.ArrowDown = 173
L39_1.E = 38
L39_1.V = 0
L39_1.ESC = 200
L38_1.Controls = L39_1
L39_1 = {}
L40_1 = {}
L40_1.type = "cabin"
L40_1.model = "p_dock_rtg_ld_cab"
L41_1 = vec3
L42_1 = -0.1
L43_1 = 0.0
L44_1 = 18.0
L41_1 = L41_1(L42_1, L43_1, L44_1)
L40_1.position = L41_1
L40_1.attachTo = "frame"
L41_1 = {}
L41_1.type = "lifter"
L41_1.model = "17mov_dock_crane"
L41_1.freeze = true
L41_1.collision = false
L42_1 = vec3
L43_1 = 0.0
L44_1 = 1.0
L45_1 = 13.0
L42_1 = L42_1(L43_1, L44_1, L45_1)
L41_1.position = L42_1
L42_1 = {}
L42_1.type = "wheel"
L42_1.model = "p_dock_rtg_ld_wheel"
L43_1 = {}
L44_1 = vec3
L45_1 = -5
L46_1 = -9.02
L47_1 = 0.65
L44_1 = L44_1(L45_1, L46_1, L47_1)
L45_1 = vec3
L46_1 = -3.58
L47_1 = -9.02
L48_1 = 0.65
L45_1 = L45_1(L46_1, L47_1, L48_1)
L46_1 = vec3
L47_1 = 3.3
L48_1 = -9.02
L49_1 = 0.65
L46_1 = L46_1(L47_1, L48_1, L49_1)
L47_1 = vec3
L48_1 = 4.7
L49_1 = -9.02
L50_1 = 0.65
L47_1 = L47_1(L48_1, L49_1, L50_1)
L48_1 = vec3
L49_1 = -5
L50_1 = 9.46
L51_1 = 0.65
L48_1 = L48_1(L49_1, L50_1, L51_1)
L49_1 = vec3
L50_1 = -3.58
L51_1 = 9.46
L52_1 = 0.65
L49_1 = L49_1(L50_1, L51_1, L52_1)
L50_1 = vec3
L51_1 = 3.3
L52_1 = 9.46
L53_1 = 0.65
L50_1 = L50_1(L51_1, L52_1, L53_1)
L51_1 = vec3
L52_1 = 4.7
L53_1 = 9.46
L54_1 = 0.65
L51_1, L52_1, L53_1, L54_1 = L51_1(L52_1, L53_1, L54_1)
L43_1[1] = L44_1
L43_1[2] = L45_1
L43_1[3] = L46_1
L43_1[4] = L47_1
L43_1[5] = L48_1
L43_1[6] = L49_1
L43_1[7] = L50_1
L43_1[8] = L51_1
L43_1[9] = L52_1
L43_1[10] = L53_1
L43_1[11] = L54_1
L42_1.positions = L43_1
L42_1.attachTo = "frame"
L39_1[1] = L40_1
L39_1[2] = L41_1
L39_1[3] = L42_1
L38_1.Objects = L39_1
L39_1 = {}
L40_1 = {}
L41_1 = vector3
L42_1 = -1.0
L43_1 = 2.66
L44_1 = 1.97
L41_1 = L41_1(L42_1, L43_1, L44_1)
L40_1.lifter = L41_1
L41_1 = vector3
L42_1 = 2.67
L43_1 = 2.0
L44_1 = 0.2
L41_1 = L41_1(L42_1, L43_1, L44_1)
L40_1.cabin = L41_1
L41_1 = {}
L42_1 = vector3
L43_1 = -0.04
L44_1 = 2.66
L45_1 = 2.13
L42_1 = L42_1(L43_1, L44_1, L45_1)
L41_1.lifter = L42_1
L42_1 = vector3
L43_1 = 2.67
L44_1 = 0.93
L45_1 = 0.2
L42_1 = L42_1(L43_1, L44_1, L45_1)
L41_1.cabin = L42_1
L42_1 = {}
L43_1 = vector3
L44_1 = 0.04
L45_1 = 2.66
L46_1 = 2.13
L43_1 = L43_1(L44_1, L45_1, L46_1)
L42_1.lifter = L43_1
L43_1 = vector3
L44_1 = 2.67
L45_1 = 0.84
L46_1 = 0.2
L43_1 = L43_1(L44_1, L45_1, L46_1)
L42_1.cabin = L43_1
L43_1 = {}
L44_1 = vector3
L45_1 = 1.0
L46_1 = 2.66
L47_1 = 1.97
L44_1 = L44_1(L45_1, L46_1, L47_1)
L43_1.lifter = L44_1
L44_1 = vector3
L45_1 = 2.67
L46_1 = -0.11
L47_1 = 0.2
L44_1 = L44_1(L45_1, L46_1, L47_1)
L43_1.cabin = L44_1
L44_1 = {}
L45_1 = vector3
L46_1 = -1.0
L47_1 = -2.55
L48_1 = 1.97
L45_1 = L45_1(L46_1, L47_1, L48_1)
L44_1.lifter = L45_1
L45_1 = vector3
L46_1 = -2.54
L47_1 = 2.0
L48_1 = 0.2
L45_1 = L45_1(L46_1, L47_1, L48_1)
L44_1.cabin = L45_1
L45_1 = {}
L46_1 = vector3
L47_1 = -0.04
L48_1 = -2.55
L49_1 = 2.13
L46_1 = L46_1(L47_1, L48_1, L49_1)
L45_1.lifter = L46_1
L46_1 = vector3
L47_1 = -2.54
L48_1 = 0.93
L49_1 = 0.2
L46_1 = L46_1(L47_1, L48_1, L49_1)
L45_1.cabin = L46_1
L46_1 = {}
L47_1 = vector3
L48_1 = 0.04
L49_1 = -2.55
L50_1 = 2.13
L47_1 = L47_1(L48_1, L49_1, L50_1)
L46_1.lifter = L47_1
L47_1 = vector3
L48_1 = -2.54
L49_1 = 0.84
L50_1 = 0.2
L47_1 = L47_1(L48_1, L49_1, L50_1)
L46_1.cabin = L47_1
L47_1 = {}
L48_1 = vector3
L49_1 = 1.0
L50_1 = -2.55
L51_1 = 1.97
L48_1 = L48_1(L49_1, L50_1, L51_1)
L47_1.lifter = L48_1
L48_1 = vector3
L49_1 = -2.54
L50_1 = -0.11
L51_1 = 0.2
L48_1 = L48_1(L49_1, L50_1, L51_1)
L47_1.cabin = L48_1
L39_1[1] = L40_1
L39_1[2] = L41_1
L39_1[3] = L42_1
L39_1[4] = L43_1
L39_1[5] = L44_1
L39_1[6] = L45_1
L39_1[7] = L46_1
L39_1[8] = L47_1
L38_1.RopeOffsets = L39_1
L39_1 = {}
L40_1 = {}
L40_1.model = "prop_container_01a"
L39_1["container-red"] = L40_1
L40_1 = {}
L40_1.model = "prop_container_01c"
L39_1["container-bilgeco-blue"] = L40_1
L40_1 = {}
L40_1.model = "prop_container_01d"
L39_1["container-jetsam"] = L40_1
L40_1 = {}
L40_1.model = "prop_container_01e"
L39_1["container-bilgeco-green"] = L40_1
L40_1 = {}
L40_1.model = "prop_container_01b"
L39_1["container-krapea"] = L40_1
L40_1 = {}
L40_1.model = "prop_container_01h"
L39_1["container-postop"] = L40_1
L40_1 = {}
L40_1.model = "prop_container_01g"
L39_1["container-gopostal"] = L40_1
L40_1 = {}
L40_1.model = "prop_container_01f"
L39_1["container-landocorp"] = L40_1
L38_1.Containers = L39_1
Crane = L38_1
L38_1 = Crane
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  L2_2 = Crane
  L2_2 = L2_2.Objects
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = Crane
    L5_2 = L5_2.Objects
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.type
    if L5_2 == A0_2 then
      return L4_2
    end
  end
  L1_2 = false
  return L1_2
end
L38_1.GetElementIndex = L39_1
L38_1 = Crane
function L39_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetHashKey
  L1_2 = "17mov_crane_frame"
  L0_2 = L0_2(L1_2)
  L1_2 = Functions
  L1_2 = L1_2.SpawnObject
  L2_2 = L0_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3
    L1_3 = SpawnedObjects
    L1_3 = L1_3.Crane
    L1_3.frame = A0_3
    L1_3 = SetEntityHeading
    L2_3 = A0_3
    L3_3 = 90.0
    L1_3(L2_3, L3_3)
    L1_3 = 1
    L2_3 = Crane
    L2_3 = L2_3.Objects
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = false
      L6_3 = Crane
      L6_3 = L6_3.Objects
      L6_3 = L6_3[L4_3]
      L6_3 = L6_3.freeze
      if nil ~= L6_3 then
        L6_3 = Crane
        L6_3 = L6_3.Objects
        L6_3 = L6_3[L4_3]
        L5_3 = L6_3.freeze
      end
      L6_3 = Crane
      L6_3 = L6_3.Objects
      L6_3 = L6_3[L4_3]
      L6_3 = L6_3.position
      if L6_3 then
        L6_3 = Functions
        L6_3 = L6_3.SpawnObject
        L7_3 = GetHashKey
        L8_3 = Crane
        L8_3 = L8_3.Objects
        L8_3 = L8_3[L4_3]
        L8_3 = L8_3.model
        L7_3 = L7_3(L8_3)
        function L8_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4
          L1_4 = SpawnedObjects
          L1_4 = L1_4.Crane
          L2_4 = Crane
          L2_4 = L2_4.Objects
          L3_4 = L4_3
          L2_4 = L2_4[L3_4]
          L2_4 = L2_4.type
          L1_4[L2_4] = A0_4
          L1_4 = Crane
          L1_4 = L1_4.Objects
          L2_4 = L4_3
          L1_4 = L1_4[L2_4]
          L1_4 = L1_4.collision
          if nil ~= L1_4 then
            L1_4 = SetEntityCollision
            L2_4 = A0_4
            L3_4 = false
            L4_4 = true
            L1_4(L2_4, L3_4, L4_4)
          end
          L1_4 = Crane
          L1_4 = L1_4.Objects
          L2_4 = L4_3
          L1_4 = L1_4[L2_4]
          L1_4 = L1_4.attachTo
          if L1_4 then
            while true do
              L1_4 = DoesEntityExist
              L2_4 = SpawnedObjects
              L2_4 = L2_4.Crane
              L3_4 = Crane
              L3_4 = L3_4.Objects
              L4_4 = L4_3
              L3_4 = L3_4[L4_4]
              L3_4 = L3_4.attachTo
              L2_4 = L2_4[L3_4]
              L1_4 = L1_4(L2_4)
              if L1_4 then
                break
              end
              L1_4 = Wait
              L2_4 = 10
              L1_4(L2_4)
            end
            L1_4 = AttachEntityToEntity
            L2_4 = A0_4
            L3_4 = SpawnedObjects
            L3_4 = L3_4.Crane
            L4_4 = Crane
            L4_4 = L4_4.Objects
            L5_4 = L4_3
            L4_4 = L4_4[L5_4]
            L4_4 = L4_4.attachTo
            L3_4 = L3_4[L4_4]
            L4_4 = 0
            L5_4 = Crane
            L5_4 = L5_4.Objects
            L6_4 = L4_3
            L5_4 = L5_4[L6_4]
            L5_4 = L5_4.position
            L5_4 = L5_4.x
            L6_4 = Crane
            L6_4 = L6_4.Objects
            L7_4 = L4_3
            L6_4 = L6_4[L7_4]
            L6_4 = L6_4.position
            L6_4 = L6_4.y
            L7_4 = Crane
            L7_4 = L7_4.Objects
            L8_4 = L4_3
            L7_4 = L7_4[L8_4]
            L7_4 = L7_4.position
            L7_4 = L7_4.z
            L8_4 = 0.0
            L9_4 = 0.0
            L10_4 = 0.0
            L11_4 = true
            L12_4 = false
            L13_4 = true
            L14_4 = false
            L15_4 = 2
            L16_4 = true
            L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4)
          end
        end
        L9_3 = GetOffsetFromEntityInWorldCoords
        L10_3 = A0_3
        L11_3 = Crane
        L11_3 = L11_3.Objects
        L11_3 = L11_3[L4_3]
        L11_3 = L11_3.position
        L11_3 = L11_3.x
        L12_3 = Crane
        L12_3 = L12_3.Objects
        L12_3 = L12_3[L4_3]
        L12_3 = L12_3.position
        L12_3 = L12_3.y
        L13_3 = Crane
        L13_3 = L13_3.Objects
        L13_3 = L13_3[L4_3]
        L13_3 = L13_3.position
        L13_3 = L13_3.z
        L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
        L10_3 = false
        L11_3 = L5_3
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      else
        L6_3 = Crane
        L6_3 = L6_3.Objects
        L6_3 = L6_3[L4_3]
        L6_3 = L6_3.positions
        if L6_3 then
          L6_3 = 1
          L7_3 = Crane
          L7_3 = L7_3.Objects
          L7_3 = L7_3[L4_3]
          L7_3 = L7_3.positions
          L7_3 = #L7_3
          L8_3 = 1
          for L9_3 = L6_3, L7_3, L8_3 do
            L10_3 = Functions
            L10_3 = L10_3.SpawnObject
            L11_3 = GetHashKey
            L12_3 = Crane
            L12_3 = L12_3.Objects
            L12_3 = L12_3[L4_3]
            L12_3 = L12_3.model
            L11_3 = L11_3(L12_3)
            function L12_3(A0_4)
              local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4
              L1_4 = SpawnedObjects
              L1_4 = L1_4.Crane
              L2_4 = string
              L2_4 = L2_4.format
              L3_4 = "%s-%s"
              L4_4 = Crane
              L4_4 = L4_4.Objects
              L5_4 = L4_3
              L4_4 = L4_4[L5_4]
              L4_4 = L4_4.type
              L5_4 = L9_3
              L2_4 = L2_4(L3_4, L4_4, L5_4)
              L1_4[L2_4] = A0_4
              L1_4 = Crane
              L1_4 = L1_4.Objects
              L2_4 = L4_3
              L1_4 = L1_4[L2_4]
              L1_4 = L1_4.attachTo
              if L1_4 then
                while true do
                  L1_4 = DoesEntityExist
                  L2_4 = SpawnedObjects
                  L2_4 = L2_4.Crane
                  L3_4 = Crane
                  L3_4 = L3_4.Objects
                  L4_4 = L4_3
                  L3_4 = L3_4[L4_4]
                  L3_4 = L3_4.attachTo
                  L2_4 = L2_4[L3_4]
                  L1_4 = L1_4(L2_4)
                  if L1_4 then
                    break
                  end
                  L1_4 = Wait
                  L2_4 = 10
                  L1_4(L2_4)
                end
                L1_4 = AttachEntityToEntity
                L2_4 = A0_4
                L3_4 = SpawnedObjects
                L3_4 = L3_4.Crane
                L4_4 = Crane
                L4_4 = L4_4.Objects
                L5_4 = L4_3
                L4_4 = L4_4[L5_4]
                L4_4 = L4_4.attachTo
                L3_4 = L3_4[L4_4]
                L4_4 = 0
                L5_4 = Crane
                L5_4 = L5_4.Objects
                L6_4 = L4_3
                L5_4 = L5_4[L6_4]
                L5_4 = L5_4.positions
                L6_4 = L9_3
                L5_4 = L5_4[L6_4]
                L5_4 = L5_4.x
                L6_4 = Crane
                L6_4 = L6_4.Objects
                L7_4 = L4_3
                L6_4 = L6_4[L7_4]
                L6_4 = L6_4.positions
                L7_4 = L9_3
                L6_4 = L6_4[L7_4]
                L6_4 = L6_4.y
                L7_4 = Crane
                L7_4 = L7_4.Objects
                L8_4 = L4_3
                L7_4 = L7_4[L8_4]
                L7_4 = L7_4.positions
                L8_4 = L9_3
                L7_4 = L7_4[L8_4]
                L7_4 = L7_4.z
                L8_4 = 0.0
                L9_4 = 0.0
                L10_4 = 0.0
                L11_4 = true
                L12_4 = false
                L13_4 = true
                L14_4 = false
                L15_4 = 2
                L16_4 = true
                L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4)
              end
            end
            L13_3 = Config
            L13_3 = L13_3.RigsLocations
            L14_3 = L15_1
            L13_3 = L13_3[L14_3]
            L13_3 = L13_3.Crane
            L13_3 = L13_3.SpawnCoords
            L14_3 = false
            L15_3 = L5_3
            L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
          end
        end
      end
    end
    L1_3 = SpawnedObjects
    L1_3 = L1_3.Crane
    L1_3 = L1_3.cabin
    L2_3 = SpawnedObjects
    L2_3 = L2_3.Crane
    L2_3 = L2_3.lifter
    L3_3 = RopeLoadTextures
    L3_3()
    L3_3 = 1
    L4_3 = Crane
    L4_3 = L4_3.RopeOffsets
    L4_3 = #L4_3
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = GetOffsetFromEntityInWorldCoords
      L8_3 = L2_3
      L9_3 = Crane
      L9_3 = L9_3.RopeOffsets
      L9_3 = L9_3[L6_3]
      L9_3 = L9_3.lifter
      L9_3 = L9_3.x
      L10_3 = Crane
      L10_3 = L10_3.RopeOffsets
      L10_3 = L10_3[L6_3]
      L10_3 = L10_3.lifter
      L10_3 = L10_3.y
      L11_3 = Crane
      L11_3 = L11_3.RopeOffsets
      L11_3 = L11_3[L6_3]
      L11_3 = L11_3.lifter
      L11_3 = L11_3.z
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
      L8_3 = GetOffsetFromEntityInWorldCoords
      L9_3 = L1_3
      L10_3 = Crane
      L10_3 = L10_3.RopeOffsets
      L10_3 = L10_3[L6_3]
      L10_3 = L10_3.cabin
      L10_3 = L10_3.x
      L11_3 = Crane
      L11_3 = L11_3.RopeOffsets
      L11_3 = L11_3[L6_3]
      L11_3 = L11_3.cabin
      L11_3 = L11_3.y
      L12_3 = Crane
      L12_3 = L12_3.RopeOffsets
      L12_3 = L12_3[L6_3]
      L12_3 = L12_3.cabin
      L12_3 = L12_3.z
      L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
      L9_3 = Crane
      L9_3 = L9_3.Ropes
      L10_3 = AddRope
      L11_3 = Config
      L11_3 = L11_3.RigsLocations
      L12_3 = L15_1
      L11_3 = L11_3[L12_3]
      L11_3 = L11_3.Crane
      L11_3 = L11_3.SpawnCoords
      L11_3 = L11_3.x
      L12_3 = Config
      L12_3 = L12_3.RigsLocations
      L13_3 = L15_1
      L12_3 = L12_3[L13_3]
      L12_3 = L12_3.Crane
      L12_3 = L12_3.SpawnCoords
      L12_3 = L12_3.y
      L13_3 = Config
      L13_3 = L13_3.RigsLocations
      L14_3 = L15_1
      L13_3 = L13_3[L14_3]
      L13_3 = L13_3.Crane
      L13_3 = L13_3.SpawnCoords
      L13_3 = L13_3.z
      L14_3 = 0.0
      L15_3 = 0.0
      L16_3 = 0.0
      L17_3 = 5.0
      L18_3 = 6
      L19_3 = 3.0
      L20_3 = 3.0
      L21_3 = 0.0
      L22_3 = false
      L23_3 = true
      L24_3 = false
      L25_3 = 0.0
      L26_3 = false
      L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
      L9_3[L6_3] = L10_3
      L9_3 = AttachEntitiesToRope
      L10_3 = Crane
      L10_3 = L10_3.Ropes
      L10_3 = L10_3[L6_3]
      L11_3 = L2_3
      L12_3 = L1_3
      L13_3 = L7_3.x
      L14_3 = L7_3.y
      L15_3 = L7_3.z
      L16_3 = L8_3.x
      L17_3 = L8_3.y
      L18_3 = L8_3.z
      L19_3 = 20.0
      L20_3 = true
      L21_3 = true
      L22_3 = 0
      L23_3 = 0
      L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
    end
  end
  L4_2 = Config
  L4_2 = L4_2.RigsLocations
  L5_2 = L15_1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.Crane
  L4_2 = L4_2.SpawnCoords
  L5_2 = false
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L38_1.Setup = L39_1
L38_1 = Crane
L39_1 = "Delete"
function L40_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = table
  L0_2 = L0_2.remove
  L1_2 = Config
  L1_2 = L1_2.RigsLocations
  L2_2 = L15_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.Crane
  L1_2 = L1_2.Coords
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = pairs
  L1_2 = SpawnedObjects
  L1_2 = L1_2.Crane
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = Functions
    L6_2 = L6_2.DeleteObject
    L7_2 = L5_2
    L6_2(L7_2)
  end
end
L38_1[L39_1] = L40_1
L38_1 = _ENV
L39_1 = "Crane"
L38_1 = L38_1[L39_1]
L39_1 = "Camera"
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetEntityCoords
  L2_2 = SpawnedObjects
  L2_2 = L2_2.Crane
  L2_2 = L2_2.frame
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityCoords
  L3_2 = SpawnedObjects
  L3_2 = L3_2.Crane
  L3_2 = L3_2.cabin
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityCoords
  L4_2 = SpawnedObjects
  L4_2 = L4_2.Crane
  L4_2 = L4_2.lifter
  L3_2 = L3_2(L4_2)
  L4_2 = DoesCamExist
  L5_2 = Crane
  L5_2 = L5_2.Cam
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = Crane
    L5_2 = CreateCam
    L6_2 = "DEFAULT_SCRIPTED_CAMERA"
    L7_2 = true
    L5_2 = L5_2(L6_2, L7_2)
    L4_2.Cam = L5_2
  end
  if 0 == A0_2 then
    L4_2 = Crane
    L4_2.CamAngle = 0
    L4_2 = RenderScriptCams
    L5_2 = false
    L6_2 = false
    L7_2 = 0
    L8_2 = true
    L9_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = DestroyCam
    L5_2 = Crane
    L5_2 = L5_2.Cam
    L6_2 = true
    L4_2(L5_2, L6_2)
  elseif 1 == A0_2 then
    L4_2 = Crane
    L4_2.CamAngle = 1
    L4_2 = L2_2.z
    L5_2 = L3_2.z
    L4_2 = L4_2 - L5_2
    if L4_2 > 11 then
      L4_2 = SetCamCoord
      L5_2 = Crane
      L5_2 = L5_2.Cam
      L6_2 = L3_2.x
      L7_2 = L3_2.y
      L8_2 = L3_2.z
      L8_2 = L8_2 + 10
      L4_2(L5_2, L6_2, L7_2, L8_2)
    else
      L4_2 = SetCamCoord
      L5_2 = Crane
      L5_2 = L5_2.Cam
      L6_2 = L3_2.x
      L7_2 = L3_2.y
      L8_2 = L2_2.z
      L8_2 = L8_2 - 2.8
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
    L4_2 = PointCamAtCoord
    L5_2 = Crane
    L5_2 = L5_2.Cam
    L6_2 = L3_2.x
    L7_2 = L3_2.y
    L7_2 = L7_2 + 1
    L8_2 = L3_2.z
    L8_2 = L8_2 - 10
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = RenderScriptCams
    L5_2 = true
    L6_2 = true
    L7_2 = 0
    L8_2 = true
    L9_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  elseif 2 == A0_2 then
    L4_2 = Crane
    L4_2.CamAngle = 2
    L4_2 = SetCamCoord
    L5_2 = Crane
    L5_2 = L5_2.Cam
    L6_2 = L1_2.x
    L6_2 = L6_2 - 15
    L7_2 = L1_2.y
    L7_2 = L7_2 + 20
    L8_2 = L1_2.z
    L8_2 = L8_2 + 24
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = PointCamAtCoord
    L5_2 = Crane
    L5_2 = L5_2.Cam
    L6_2 = L1_2.x
    L7_2 = L1_2.y
    L8_2 = L3_2.z
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = RenderScriptCams
    L5_2 = true
    L6_2 = true
    L7_2 = 0
    L8_2 = true
    L9_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  elseif 3 == A0_2 then
    L4_2 = Crane
    L4_2.CamAngle = 3
    L4_2 = SetCamCoord
    L5_2 = Crane
    L5_2 = L5_2.Cam
    L6_2 = L1_2.x
    L6_2 = L6_2 + 15
    L7_2 = L1_2.y
    L7_2 = L7_2 - 20
    L8_2 = L1_2.z
    L8_2 = L8_2 + 24
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = PointCamAtCoord
    L5_2 = Crane
    L5_2 = L5_2.Cam
    L6_2 = L1_2.x
    L7_2 = L1_2.y
    L8_2 = L3_2.z
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = RenderScriptCams
    L5_2 = true
    L6_2 = true
    L7_2 = 0
    L8_2 = true
    L9_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L38_1[L39_1] = L40_1
L38_1 = _ENV
L39_1 = "Crane"
L38_1 = L38_1[L39_1]
L39_1 = "Enter"
function L40_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Crane
  L0_2.IsUsing = true
  MarkersEnabled = false
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = FreezeEntityPosition
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityVisible
  L2_2 = L0_2
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DoScreenFadeOut
  L2_2 = 200
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 300
  L1_2(L2_2)
  L1_2 = GetResourceKvpInt
  L2_2 = "17mov_Tutorials:"
  L3_2 = Config
  L3_2 = L3_2.Lang
  L3_2 = L3_2.craneTutorial
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L1_2 = L22_1
    if not L1_2 then
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.action = "showTutorial"
      L3_2 = Config
      L3_2 = L3_2.Lang
      L3_2 = L3_2.craneTutorial
      L2_2.customText = L3_2
      L1_2(L2_2)
      L1_2 = Config
      L1_2 = L1_2.Lang
      L1_2 = L1_2.craneTutorial
      L24_1 = L1_2
      L1_2 = true
      L23_1 = L1_2
      L1_2 = SetNuiFocus
      L2_2 = true
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = Crane
  L1_2 = L1_2.Camera
  L2_2 = 2
  L1_2(L2_2)
  L1_2 = SpawnedObjects
  L1_2 = L1_2.AttachedContainers
  L1_2 = #L1_2
  if L1_2 > 0 then
    L1_2 = OutlinedProp
    if L1_2 then
      L1_2 = SetEntityDrawOutline
      L2_2 = OutlinedProp
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
    L1_2 = SpawnedObjects
    L1_2 = L1_2.AttachedContainers
    L1_2 = L1_2[1]
    OutlinedProp = L1_2
    L1_2 = SetEntityDrawOutline
    L2_2 = OutlinedProp
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = SetEntityDrawOutlineColor
    L2_2 = 91
    L3_2 = 127
    L4_2 = 255
    L5_2 = 200
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    while true do
      L0_3 = Crane
      L0_3 = L0_3.IsUsing
      if not L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 500
      L0_3(L1_3)
      L0_3 = GetEntityCoords
      L1_3 = SpawnedObjects
      L1_3 = L1_3.TemporaryContainer
      L0_3 = L0_3(L1_3)
      L1_3 = SpawnedObjects
      L1_3 = L1_3.TemporaryContainer
      if nil ~= L1_3 then
        L1_3 = vec3
        L2_3 = L0_3.x
        L3_3 = L0_3.y
        L4_3 = L0_3.z
        L1_3 = L1_3(L2_3, L3_3, L4_3)
        L2_3 = vec3
        L3_3 = Config
        L3_3 = L3_3.RigsLocations
        L4_3 = L15_1
        L3_3 = L3_3[L4_3]
        L3_3 = L3_3.Containers
        L3_3 = L3_3.Destination
        L3_3 = L3_3.x
        L4_3 = Config
        L4_3 = L4_3.RigsLocations
        L5_3 = L15_1
        L4_3 = L4_3[L5_3]
        L4_3 = L4_3.Containers
        L4_3 = L4_3.Destination
        L4_3 = L4_3.y
        L5_3 = Config
        L5_3 = L5_3.RigsLocations
        L6_3 = L15_1
        L5_3 = L5_3[L6_3]
        L5_3 = L5_3.Containers
        L5_3 = L5_3.Destination
        L5_3 = L5_3.z
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L1_3 = L1_3 - L2_3
        L1_3 = #L1_3
        if not (L1_3 > 5.0) then
          goto lbl_67
        end
      end
      L1_3 = DeleteEntity
      L2_3 = SpawnedObjects
      L2_3 = L2_3.TemporaryContainer
      L1_3(L2_3)
      L1_3 = SpawnContainer
      function L2_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        L1_4 = SpawnedObjects
        L1_4.TemporaryContainer = A0_4
        L1_4 = SetEntityHeading
        L2_4 = SpawnedObjects
        L2_4 = L2_4.TemporaryContainer
        L3_4 = Config
        L3_4 = L3_4.RigsLocations
        L4_4 = L15_1
        L3_4 = L3_4[L4_4]
        L3_4 = L3_4.Containers
        L3_4 = L3_4.Destination
        L3_4 = L3_4.w
        L1_4(L2_4, L3_4)
        L1_4 = SetEntityCollision
        L2_4 = A0_4
        L3_4 = false
        L4_4 = false
        L1_4(L2_4, L3_4, L4_4)
        L1_4 = SetEntityVisible
        L2_4 = A0_4
        L3_4 = false
        L4_4 = false
        L1_4(L2_4, L3_4, L4_4)
      end
      L3_3 = Config
      L3_3 = L3_3.RigsLocations
      L4_3 = L15_1
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.Containers
      L3_3 = L3_3.Destination
      L4_3 = false
      L5_3 = false
      L6_3 = false
      L7_3 = true
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      ::lbl_67::
    end
  end
  L1_2(L2_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    while true do
      L0_3 = Crane
      L0_3 = L0_3.IsUsing
      if not L0_3 then
        break
      end
      L0_3 = Config
      L0_3 = L0_3.Lang
      L0_3 = L0_3.crane_usage
      L1_3 = 91
      L2_3 = 127
      L3_3 = 255
      L4_3 = 200
      L5_3 = GetEntityCoords
      L6_3 = SpawnedObjects
      L6_3 = L6_3.Crane
      L6_3 = L6_3.frame
      L5_3 = L5_3(L6_3)
      L6_3 = Crane
      L6_3 = L6_3.GetElementIndex
      L7_3 = "lifter"
      L6_3 = L6_3(L7_3)
      L7_3 = SpawnedObjects
      L7_3 = L7_3.Crane
      L8_3 = Crane
      L8_3 = L8_3.Objects
      L8_3 = L8_3[L6_3]
      L8_3 = L8_3.type
      L7_3 = L7_3[L8_3]
      L8_3 = GetEntityCoords
      L9_3 = L7_3
      L8_3 = L8_3(L9_3)
      L9_3 = SetEntityVisible
      L10_3 = SpawnedObjects
      L10_3 = L10_3.TemporaryContainer
      L11_3 = false
      L12_3 = false
      L9_3(L10_3, L11_3, L12_3)
      L9_3 = pairs
      L10_3 = Crane
      L10_3 = L10_3.Controls
      L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3)
      for L13_3, L14_3 in L9_3, L10_3, L11_3, L12_3 do
        L15_3 = DisableControlAction
        L16_3 = 0
        L17_3 = L14_3
        L18_3 = true
        L15_3(L16_3, L17_3, L18_3)
      end
      L9_3 = IsDisabledControlPressed
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.W
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = Crane
        L9_3 = L9_3.Update
        L10_3 = "W"
        L9_3(L10_3)
      end
      L9_3 = IsDisabledControlJustPressed
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.W
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = TriggerServerEvent
        L10_3 = "17movement_Oilrig:enableControl"
        L11_3 = "W"
        L9_3(L10_3, L11_3)
      else
        L9_3 = IsDisabledControlJustReleased
        L10_3 = 0
        L11_3 = Crane
        L11_3 = L11_3.Controls
        L11_3 = L11_3.W
        L9_3 = L9_3(L10_3, L11_3)
        if L9_3 then
          L9_3 = TriggerServerEvent
          L10_3 = "17movement_Oilrig:disableControl"
          L11_3 = "W"
          L12_3 = Crane
          L12_3 = L12_3.Objects
          L13_3 = L5_3
          L9_3(L10_3, L11_3, L12_3, L13_3)
        end
      end
      L9_3 = IsDisabledControlPressed
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.S
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = Crane
        L9_3 = L9_3.Update
        L10_3 = "S"
        L9_3(L10_3)
      end
      L9_3 = IsDisabledControlJustPressed
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.S
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = TriggerServerEvent
        L10_3 = "17movement_Oilrig:enableControl"
        L11_3 = "S"
        L9_3(L10_3, L11_3)
      else
        L9_3 = IsDisabledControlJustReleased
        L10_3 = 0
        L11_3 = Crane
        L11_3 = L11_3.Controls
        L11_3 = L11_3.S
        L9_3 = L9_3(L10_3, L11_3)
        if L9_3 then
          L9_3 = TriggerServerEvent
          L10_3 = "17movement_Oilrig:disableControl"
          L11_3 = "S"
          L12_3 = Crane
          L12_3 = L12_3.Objects
          L13_3 = L5_3
          L9_3(L10_3, L11_3, L12_3, L13_3)
        end
      end
      L9_3 = IsDisabledControlPressed
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.A
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = Crane
        L9_3 = L9_3.Update
        L10_3 = "A"
        L9_3(L10_3)
      end
      L9_3 = IsDisabledControlJustPressed
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.A
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = TriggerServerEvent
        L10_3 = "17movement_Oilrig:enableControl"
        L11_3 = "A"
        L9_3(L10_3, L11_3)
      else
        L9_3 = IsDisabledControlJustReleased
        L10_3 = 0
        L11_3 = Crane
        L11_3 = L11_3.Controls
        L11_3 = L11_3.A
        L9_3 = L9_3(L10_3, L11_3)
        if L9_3 then
          L9_3 = TriggerServerEvent
          L10_3 = "17movement_Oilrig:disableControl"
          L11_3 = "A"
          L12_3 = Crane
          L12_3 = L12_3.Objects
          L13_3 = L5_3
          L9_3(L10_3, L11_3, L12_3, L13_3)
        end
      end
      L9_3 = IsDisabledControlPressed
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.D
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = Crane
        L9_3 = L9_3.Update
        L10_3 = "D"
        L9_3(L10_3)
      end
      L9_3 = IsDisabledControlJustPressed
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.D
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = TriggerServerEvent
        L10_3 = "17movement_Oilrig:enableControl"
        L11_3 = "D"
        L9_3(L10_3, L11_3)
      else
        L9_3 = IsDisabledControlJustReleased
        L10_3 = 0
        L11_3 = Crane
        L11_3 = L11_3.Controls
        L11_3 = L11_3.D
        L9_3 = L9_3(L10_3, L11_3)
        if L9_3 then
          L9_3 = TriggerServerEvent
          L10_3 = "17movement_Oilrig:disableControl"
          L11_3 = "D"
          L12_3 = Crane
          L12_3 = L12_3.Objects
          L13_3 = L5_3
          L9_3(L10_3, L11_3, L12_3, L13_3)
        end
      end
      L9_3 = IsDisabledControlPressed
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.ArrowUp
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = Crane
        L9_3 = L9_3.Update
        L10_3 = "ArrowUp"
        L9_3(L10_3)
      end
      L9_3 = IsDisabledControlJustPressed
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.ArrowUp
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = TriggerServerEvent
        L10_3 = "17movement_Oilrig:enableControl"
        L11_3 = "ArrowUp"
        L9_3(L10_3, L11_3)
      else
        L9_3 = IsDisabledControlJustReleased
        L10_3 = 0
        L11_3 = Crane
        L11_3 = L11_3.Controls
        L11_3 = L11_3.ArrowUp
        L9_3 = L9_3(L10_3, L11_3)
        if L9_3 then
          L9_3 = TriggerServerEvent
          L10_3 = "17movement_Oilrig:disableControl"
          L11_3 = "ArrowUp"
          L12_3 = Crane
          L12_3 = L12_3.Objects
          L13_3 = L5_3
          L9_3(L10_3, L11_3, L12_3, L13_3)
        end
      end
      L9_3 = IsDisabledControlPressed
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.ArrowDown
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = Crane
        L9_3 = L9_3.Update
        L10_3 = "ArrowDown"
        L9_3(L10_3)
      end
      L9_3 = IsDisabledControlJustPressed
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.ArrowDown
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = TriggerServerEvent
        L10_3 = "17movement_Oilrig:enableControl"
        L11_3 = "ArrowDown"
        L9_3(L10_3, L11_3)
      else
        L9_3 = IsDisabledControlJustReleased
        L10_3 = 0
        L11_3 = Crane
        L11_3 = L11_3.Controls
        L11_3 = L11_3.ArrowDown
        L9_3 = L9_3(L10_3, L11_3)
        if L9_3 then
          L9_3 = TriggerServerEvent
          L10_3 = "17movement_Oilrig:disableControl"
          L11_3 = "ArrowDown"
          L12_3 = Crane
          L12_3 = L12_3.Objects
          L13_3 = L5_3
          L9_3(L10_3, L11_3, L12_3, L13_3)
        end
      end
      L9_3 = Crane
      L9_3 = L9_3.AttachedContainer
      if L9_3 then
        L9_3 = SetEntityDrawOutline
        L10_3 = SpawnedObjects
        L10_3 = L10_3.TemporaryContainer
        L11_3 = true
        L9_3(L10_3, L11_3)
        L9_3 = GetEntityCoords
        L10_3 = Crane
        L10_3 = L10_3.AttachedContainer
        L9_3 = L9_3(L10_3)
        L10_3 = GetEntityCoords
        L11_3 = SpawnedObjects
        L11_3 = L11_3.TemporaryContainer
        L10_3 = L10_3(L11_3)
        L11_3 = GetDistanceBetweenCoords
        L12_3 = L9_3.x
        L13_3 = L9_3.y
        L14_3 = L9_3.z
        L15_3 = L10_3.x
        L16_3 = L10_3.y
        L17_3 = L10_3.z
        L18_3 = true
        L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        if L11_3 < 1.0 then
          L12_3 = Config
          L12_3 = L12_3.Lang
          L0_3 = L12_3.crane_detach
          L12_3 = 77
          L13_3 = 255
          L14_3 = 0
          L4_3 = 200
          L3_3 = L14_3
          L2_3 = L13_3
          L1_3 = L12_3
          L12_3 = IsDisabledControlJustReleased
          L13_3 = 0
          L14_3 = Crane
          L14_3 = L14_3.Controls
          L14_3 = L14_3.E
          L12_3 = L12_3(L13_3, L14_3)
          if L12_3 then
            L12_3 = TriggerServerEvent
            L13_3 = "17mov_OilRig:craneDetachContainer"
            L12_3(L13_3)
          end
        end
      else
        L9_3 = SpawnedObjects
        L9_3 = L9_3.AttachedContainers
        L9_3 = L9_3[1]
        L10_3 = GetEntityCoords
        L11_3 = L9_3
        L10_3 = L10_3(L11_3)
        L11_3 = vec3
        L12_3 = 0
        L13_3 = 0
        L14_3 = 0
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L11_3 = L10_3 - L11_3
        L11_3 = #L11_3
        if L11_3 < 10.0 then
          L11_3 = pairs
          L12_3 = SpawnedObjects
          L12_3 = L12_3.AttachedContainersNetIds
          L11_3, L12_3, L13_3, L14_3 = L11_3(L12_3)
          for L15_3, L16_3 in L11_3, L12_3, L13_3, L14_3 do
            L17_3 = L16_3.object
            if L17_3 == L9_3 then
              L17_3 = NetToObj
              L18_3 = L16_3.netId
              L17_3 = L17_3(L18_3)
              L16_3.object = L17_3
              L17_3 = SpawnedObjects
              L17_3 = L17_3.AttachedContainers
              L18_3 = NetToObj
              L19_3 = L16_3.netId
              L18_3 = L18_3(L19_3)
              L17_3[1] = L18_3
              L17_3 = SpawnedObjects
              L17_3 = L17_3.AttachedContainers
              L17_3 = L17_3[1]
              OutlinedProp = L17_3
              L17_3 = SetEntityDrawOutline
              L18_3 = OutlinedProp
              L19_3 = true
              L17_3(L18_3, L19_3)
              L17_3 = SetEntityDrawOutlineColor
              L18_3 = 91
              L19_3 = 127
              L20_3 = 255
              L21_3 = 200
              L17_3(L18_3, L19_3, L20_3, L21_3)
            end
          end
        end
        L11_3 = GetDistanceBetweenCoords
        L12_3 = L10_3.x
        L13_3 = L10_3.y
        L14_3 = L10_3.z
        L15_3 = L8_3.x
        L16_3 = L8_3.y
        L17_3 = L8_3.z
        L18_3 = true
        L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        L12_3 = 3.7
        if L11_3 < L12_3 and 0 ~= L9_3 then
          L12_3 = Config
          L12_3 = L12_3.Lang
          L0_3 = L12_3.crane_attach
          L12_3 = IsDisabledControlJustReleased
          L13_3 = 0
          L14_3 = Crane
          L14_3 = L14_3.Controls
          L14_3 = L14_3.E
          L12_3 = L12_3(L13_3, L14_3)
          if L12_3 then
            L12_3 = 77
            L13_3 = 255
            L14_3 = 0
            L4_3 = 200
            L3_3 = L14_3
            L2_3 = L13_3
            L1_3 = L12_3
            L12_3 = TriggerServerEvent
            L13_3 = "17mov_OilRig:AttachContainerToLifter"
            L12_3(L13_3)
          end
        end
      end
      L9_3 = SetEntityDrawOutlineColor
      L10_3 = L1_3
      L11_3 = L2_3
      L12_3 = L3_3
      L13_3 = L4_3
      L9_3(L10_3, L11_3, L12_3, L13_3)
      L9_3 = IsDisabledControlJustReleased
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.V
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = Crane
        L10_3 = Crane
        L10_3 = L10_3.CamAngle
        L10_3 = L10_3 + 1
        L9_3.CamAngle = L10_3
        L9_3 = Crane
        L9_3 = L9_3.CamAngle
        if L9_3 > 3 then
          L9_3 = Crane
          L9_3.CamAngle = 1
        end
      end
      L9_3 = ShowHelpNotification
      L10_3 = L0_3
      L9_3(L10_3)
      L9_3 = IsDisabledControlJustReleased
      L10_3 = 0
      L11_3 = Crane
      L11_3 = L11_3.Controls
      L11_3 = L11_3.ESC
      L9_3 = L9_3(L10_3, L11_3)
      if L9_3 then
        L9_3 = Crane
        L9_3 = L9_3.Exit
        L9_3()
      end
      L9_3 = Crane
      L9_3 = L9_3.Camera
      L10_3 = Crane
      L10_3 = L10_3.CamAngle
      L9_3(L10_3)
      L9_3 = Wait
      L10_3 = 0
      L9_3(L10_3)
    end
    L0_3 = pairs
    L1_3 = Crane
    L1_3 = L1_3.Controls
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = DisableControlAction
      L7_3 = 0
      L8_3 = L5_3
      L9_3 = false
      L6_3(L7_3, L8_3, L9_3)
    end
  end
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 100
  L1_2(L2_2)
  L1_2 = DoScreenFadeIn
  L2_2 = 200
  L1_2(L2_2)
end
L38_1[L39_1] = L40_1
L38_1 = _ENV
L39_1 = "Crane"
L38_1 = L38_1[L39_1]
L39_1 = "Update"
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L1_2 = SpawnedObjects
  L1_2 = L1_2.Crane
  L1_2 = L1_2.frame
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = SpawnedObjects
  L3_2 = L3_2.Crane
  L3_2 = L3_2.cabin
  L4_2 = Crane
  L4_2 = L4_2.GetElementIndex
  L5_2 = "cabin"
  L4_2 = L4_2(L5_2)
  L5_2 = Crane
  L5_2 = L5_2.GetElementIndex
  L6_2 = "lifter"
  L5_2 = L5_2(L6_2)
  if "W" == A0_2 then
    L6_2 = L2_2.y
    L7_2 = Config
    L7_2 = L7_2.RigsLocations
    L8_2 = L15_1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.Crane
    L7_2 = L7_2.SpawnCoords
    L7_2 = L7_2.y
    L8_2 = Config
    L8_2 = L8_2.RigsLocations
    L9_2 = L15_1
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.Crane
    L8_2 = L8_2.MaxY
    L7_2 = L7_2 + L8_2
    if L6_2 < L7_2 then
      L6_2 = SetEntityCoords
      L7_2 = L1_2
      L8_2 = L2_2.x
      L9_2 = L2_2.y
      L9_2 = L9_2 + 0.025
      L10_2 = L2_2.z
      L11_2 = false
      L12_2 = false
      L13_2 = false
      L14_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
  elseif "S" == A0_2 then
    L6_2 = L2_2.y
    L7_2 = Config
    L7_2 = L7_2.RigsLocations
    L8_2 = L15_1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.Crane
    L7_2 = L7_2.SpawnCoords
    L7_2 = L7_2.y
    L8_2 = Config
    L8_2 = L8_2.RigsLocations
    L9_2 = L15_1
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.Crane
    L8_2 = L8_2.MinY
    L7_2 = L7_2 + L8_2
    if L6_2 > L7_2 then
      L6_2 = SetEntityCoords
      L7_2 = L1_2
      L8_2 = L2_2.x
      L9_2 = L2_2.y
      L9_2 = L9_2 - 0.025
      L10_2 = L2_2.z
      L11_2 = false
      L12_2 = false
      L13_2 = false
      L14_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
  elseif "A" == A0_2 then
    L6_2 = Crane
    L6_2 = L6_2.Objects
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.position
    L6_2 = L6_2.y
    L7_2 = 2.39
    if L6_2 < L7_2 then
      L6_2 = Crane
      L6_2 = L6_2.Objects
      L6_2 = L6_2[L4_2]
      L7_2 = vector3
      L8_2 = Crane
      L8_2 = L8_2.Objects
      L8_2 = L8_2[L4_2]
      L8_2 = L8_2.position
      L8_2 = L8_2.x
      L9_2 = Crane
      L9_2 = L9_2.Objects
      L9_2 = L9_2[L4_2]
      L9_2 = L9_2.position
      L9_2 = L9_2.y
      L9_2 = L9_2 + 0.02
      L10_2 = Crane
      L10_2 = L10_2.Objects
      L10_2 = L10_2[L4_2]
      L10_2 = L10_2.position
      L10_2 = L10_2.z
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.position = L7_2
      L6_2 = Crane
      L6_2 = L6_2.Objects
      L6_2 = L6_2[L5_2]
      L7_2 = vector3
      L8_2 = Crane
      L8_2 = L8_2.Objects
      L8_2 = L8_2[L5_2]
      L8_2 = L8_2.position
      L8_2 = L8_2.x
      L9_2 = Crane
      L9_2 = L9_2.Objects
      L9_2 = L9_2[L5_2]
      L9_2 = L9_2.position
      L9_2 = L9_2.y
      L9_2 = L9_2 + 0.02
      L10_2 = Crane
      L10_2 = L10_2.Objects
      L10_2 = L10_2[L5_2]
      L10_2 = L10_2.position
      L10_2 = L10_2.z
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.position = L7_2
    end
  elseif "D" == A0_2 then
    L6_2 = Crane
    L6_2 = L6_2.Objects
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.position
    L6_2 = L6_2.y
    L7_2 = -3.59
    if L6_2 > L7_2 then
      L6_2 = Crane
      L6_2 = L6_2.Objects
      L6_2 = L6_2[L4_2]
      L7_2 = vector3
      L8_2 = Crane
      L8_2 = L8_2.Objects
      L8_2 = L8_2[L4_2]
      L8_2 = L8_2.position
      L8_2 = L8_2.x
      L9_2 = Crane
      L9_2 = L9_2.Objects
      L9_2 = L9_2[L4_2]
      L9_2 = L9_2.position
      L9_2 = L9_2.y
      L9_2 = L9_2 - 0.02
      L10_2 = Crane
      L10_2 = L10_2.Objects
      L10_2 = L10_2[L4_2]
      L10_2 = L10_2.position
      L10_2 = L10_2.z
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.position = L7_2
      L6_2 = Crane
      L6_2 = L6_2.Objects
      L6_2 = L6_2[L5_2]
      L7_2 = vector3
      L8_2 = Crane
      L8_2 = L8_2.Objects
      L8_2 = L8_2[L5_2]
      L8_2 = L8_2.position
      L8_2 = L8_2.x
      L9_2 = Crane
      L9_2 = L9_2.Objects
      L9_2 = L9_2[L5_2]
      L9_2 = L9_2.position
      L9_2 = L9_2.y
      L9_2 = L9_2 - 0.02
      L10_2 = Crane
      L10_2 = L10_2.Objects
      L10_2 = L10_2[L5_2]
      L10_2 = L10_2.position
      L10_2 = L10_2.z
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.position = L7_2
    end
  elseif "ArrowUp" == A0_2 then
    L6_2 = Crane
    L6_2 = L6_2.Objects
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.position
    L6_2 = L6_2.z
    L7_2 = Config
    L7_2 = L7_2.RigsLocations
    L8_2 = L15_1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.Crane
    L7_2 = L7_2.MaxZ
    if L6_2 < L7_2 then
      L6_2 = Crane
      L6_2 = L6_2.Objects
      L6_2 = L6_2[L5_2]
      L7_2 = vector3
      L8_2 = Crane
      L8_2 = L8_2.Objects
      L8_2 = L8_2[L5_2]
      L8_2 = L8_2.position
      L8_2 = L8_2.x
      L9_2 = Crane
      L9_2 = L9_2.Objects
      L9_2 = L9_2[L5_2]
      L9_2 = L9_2.position
      L9_2 = L9_2.y
      L10_2 = Crane
      L10_2 = L10_2.Objects
      L10_2 = L10_2[L5_2]
      L10_2 = L10_2.position
      L10_2 = L10_2.z
      L10_2 = L10_2 + 0.05
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.position = L7_2
    end
  elseif "ArrowDown" == A0_2 then
    L6_2 = Crane
    L6_2 = L6_2.Objects
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.position
    L6_2 = L6_2.z
    L7_2 = Config
    L7_2 = L7_2.RigsLocations
    L8_2 = L15_1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.Crane
    L7_2 = L7_2.MinZ
    if L6_2 > L7_2 then
      L6_2 = Crane
      L6_2 = L6_2.Objects
      L6_2 = L6_2[L5_2]
      L7_2 = vector3
      L8_2 = Crane
      L8_2 = L8_2.Objects
      L8_2 = L8_2[L5_2]
      L8_2 = L8_2.position
      L8_2 = L8_2.x
      L9_2 = Crane
      L9_2 = L9_2.Objects
      L9_2 = L9_2[L5_2]
      L9_2 = L9_2.position
      L9_2 = L9_2.y
      L10_2 = Crane
      L10_2 = L10_2.Objects
      L10_2 = L10_2[L5_2]
      L10_2 = L10_2.position
      L10_2 = L10_2.z
      L10_2 = L10_2 - 0.05
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.position = L7_2
    end
  end
  L6_2 = 1
  L7_2 = Crane
  L7_2 = L7_2.Objects
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = Crane
    L10_2 = L10_2.Objects
    L10_2 = L10_2[L9_2]
    L10_2 = L10_2.position
    if L10_2 then
      L10_2 = Crane
      L10_2 = L10_2.Objects
      L10_2 = L10_2[L9_2]
      L10_2 = L10_2.attachTo
      if L10_2 then
        L10_2 = AttachEntityToEntity
        L11_2 = SpawnedObjects
        L11_2 = L11_2.Crane
        L12_2 = Crane
        L12_2 = L12_2.Objects
        L12_2 = L12_2[L9_2]
        L12_2 = L12_2.type
        L11_2 = L11_2[L12_2]
        L12_2 = SpawnedObjects
        L12_2 = L12_2.Crane
        L13_2 = Crane
        L13_2 = L13_2.Objects
        L13_2 = L13_2[L9_2]
        L13_2 = L13_2.attachTo
        L12_2 = L12_2[L13_2]
        L13_2 = 0
        L14_2 = Crane
        L14_2 = L14_2.Objects
        L14_2 = L14_2[L9_2]
        L14_2 = L14_2.position
        L14_2 = L14_2.x
        L15_2 = Crane
        L15_2 = L15_2.Objects
        L15_2 = L15_2[L9_2]
        L15_2 = L15_2.position
        L15_2 = L15_2.y
        L16_2 = Crane
        L16_2 = L16_2.Objects
        L16_2 = L16_2[L9_2]
        L16_2 = L16_2.position
        L16_2 = L16_2.z
        L17_2 = 0.0
        L18_2 = 0.0
        L19_2 = 0.0
        L20_2 = true
        L21_2 = false
        L22_2 = true
        L23_2 = false
        L24_2 = 2
        L25_2 = true
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      else
        L10_2 = GetOffsetFromEntityInWorldCoords
        L11_2 = SpawnedObjects
        L11_2 = L11_2.Crane
        L11_2 = L11_2.frame
        L12_2 = Crane
        L12_2 = L12_2.Objects
        L12_2 = L12_2[L9_2]
        L12_2 = L12_2.position
        L12_2 = L12_2.x
        L13_2 = Crane
        L13_2 = L13_2.Objects
        L13_2 = L13_2[L9_2]
        L13_2 = L13_2.position
        L13_2 = L13_2.y
        L14_2 = Crane
        L14_2 = L14_2.Objects
        L14_2 = L14_2[L9_2]
        L14_2 = L14_2.position
        L14_2 = L14_2.z
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
        L11_2 = SetEntityCoords
        L12_2 = SpawnedObjects
        L12_2 = L12_2.Crane
        L13_2 = Crane
        L13_2 = L13_2.Objects
        L13_2 = L13_2[L9_2]
        L13_2 = L13_2.type
        L12_2 = L12_2[L13_2]
        L13_2 = L10_2.x
        L14_2 = L10_2.y
        L15_2 = L10_2.z
        L16_2 = true
        L17_2 = false
        L18_2 = false
        L19_2 = false
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      end
    end
  end
  L6_2 = AttachEntityToEntity
  L7_2 = L3_2
  L8_2 = L1_2
  L9_2 = 0
  L10_2 = Crane
  L10_2 = L10_2.Objects
  L10_2 = L10_2[L4_2]
  L10_2 = L10_2.position
  L10_2 = L10_2.x
  L11_2 = Crane
  L11_2 = L11_2.Objects
  L11_2 = L11_2[L4_2]
  L11_2 = L11_2.position
  L11_2 = L11_2.y
  L12_2 = Crane
  L12_2 = L12_2.Objects
  L12_2 = L12_2[L4_2]
  L12_2 = L12_2.position
  L12_2 = L12_2.z
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = true
  L17_2 = false
  L18_2 = true
  L19_2 = false
  L20_2 = 2
  L21_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
end
L38_1[L39_1] = L40_1
L38_1 = _ENV
L39_1 = "Crane"
L38_1 = L38_1[L39_1]
L39_1 = "LifterAttach"
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = Crane
  L1_2 = L1_2.GetElementIndex
  L2_2 = "lifter"
  L1_2 = L1_2(L2_2)
  L2_2 = SpawnedObjects
  L2_2 = L2_2.Crane
  L3_2 = Crane
  L3_2 = L3_2.Objects
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.type
  L2_2 = L2_2[L3_2]
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = SpawnContainer
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L1_3 = table
    L1_3 = L1_3.insert
    L2_3 = SpawnedObjects
    L2_3 = L2_3.LocalContainers
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = AttachContainerDoors
    L2_3 = A0_3
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = AttachEntityToEntity
    L2_3 = A0_3
    L3_3 = L2_2
    L4_3 = 0
    L5_3 = 0.0
    L6_3 = 0.0
    L7_3 = -3.1
    L8_3 = 0.0
    L9_3 = 0.0
    L10_3 = 0.0
    L11_3 = true
    L12_3 = false
    L13_3 = false
    L14_3 = false
    L15_3 = 2
    L16_3 = true
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L1_3 = Crane
    L1_3.AttachedContainer = A0_3
  end
  L6_2 = L3_2
  L7_2 = false
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = DeleteContainer
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = Crane
  L4_2 = L4_2.IsUsing
  if L4_2 then
    L4_2 = SetEntityCoords
    L5_2 = SpawnedObjects
    L5_2 = L5_2.TemporaryContainer
    L6_2 = Config
    L6_2 = L6_2.RigsLocations
    L7_2 = L15_1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.Containers
    L6_2 = L6_2.Destination
    L6_2 = L6_2.x
    L7_2 = Config
    L7_2 = L7_2.RigsLocations
    L8_2 = L15_1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.Containers
    L7_2 = L7_2.Destination
    L7_2 = L7_2.y
    L8_2 = Config
    L8_2 = L8_2.RigsLocations
    L9_2 = L15_1
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.Containers
    L8_2 = L8_2.Destination
    L8_2 = L8_2.z
    L9_2 = true
    L10_2 = false
    L11_2 = false
    L12_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L4_2 = SetEntityHeading
    L5_2 = SpawnedObjects
    L5_2 = L5_2.TemporaryContainer
    L6_2 = Config
    L6_2 = L6_2.RigsLocations
    L7_2 = L15_1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.Containers
    L6_2 = L6_2.Destination
    L6_2 = L6_2.w
    L4_2(L5_2, L6_2)
    L4_2 = SpawnedObjects
    L4_2 = L4_2.TemporaryContainer
    OutlinedProp = L4_2
    L4_2 = SetEntityDrawOutline
    L5_2 = OutlinedProp
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = SetEntityDrawOutlineColor
    L5_2 = 91
    L6_2 = 127
    L7_2 = 255
    L8_2 = 200
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L38_1[L39_1] = L40_1
L38_1 = _ENV
L39_1 = "Crane"
L38_1 = L38_1[L39_1]
L39_1 = "LifterDetach"
function L40_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = SetEntityCollision
  L1_2 = Crane
  L1_2 = L1_2.AttachedContainer
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = FreezeEntityPosition
  L1_2 = Crane
  L1_2 = L1_2.AttachedContainer
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = DetachEntity
  L1_2 = Crane
  L1_2 = L1_2.AttachedContainer
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = 1
  L1_2 = Config
  L1_2 = L1_2.RigsLocations
  L2_2 = L15_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.Containers
  L1_2 = L1_2.ContainerCoords
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = Config
    L4_2 = L4_2.RigsLocations
    L5_2 = L15_1
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.Containers
    L4_2 = L4_2.ContainerCoords
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.coords
    L5_2 = Functions
    L5_2 = L5_2.IsSpawnpointClear
    L6_2 = L4_2
    L7_2 = 2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = SetEntityCoords
      L7_2 = Crane
      L7_2 = L7_2.AttachedContainer
      L8_2 = L4_2.x
      L9_2 = L4_2.y
      L10_2 = L4_2.z
      L11_2 = true
      L12_2 = false
      L13_2 = false
      L14_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L6_2 = SetEntityHeading
      L7_2 = Crane
      L7_2 = L7_2.AttachedContainer
      L8_2 = L4_2.w
      L6_2(L7_2, L8_2)
      L6_2 = AttachContainerDoors
      L7_2 = Crane
      L7_2 = L7_2.AttachedContainer
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = Config
      L6_2 = L6_2.RigsLocations
      L7_2 = L15_1
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.Containers
      L6_2 = L6_2.ContainerCoords
      L6_2 = L6_2[L3_2]
      L7_2 = Crane
      L7_2 = L7_2.AttachedContainer
      L6_2.object = L7_2
      L6_2 = SpawnedObjects
      L6_2 = L6_2.ContainerBoxes
      L7_2 = Crane
      L7_2 = L7_2.AttachedContainer
      L8_2 = {}
      L6_2[L7_2] = L8_2
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = SpawnedObjects
      L8_2 = Crane
      L8_2 = L8_2.AttachedContainer
      L6_2(L7_2, L8_2)
      L6_2 = L3_2
      L7_2 = Config
      L7_2 = L7_2.RigsLocations
      L8_2 = L15_1
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.Containers
      L7_2 = L7_2.ContainerCoords
      L7_2 = L7_2[L3_2]
      L8_2 = {}
      L7_2.props = L8_2
      L7_2 = 1
      L8_2 = Config
      L8_2 = L8_2.RigsLocations
      L9_2 = L15_1
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.ContainerContent
      L8_2 = L8_2[L6_2]
      L8_2 = #L8_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = Functions
        L11_2 = L11_2.SpawnObject
        L12_2 = Config
        L12_2 = L12_2.RigsLocations
        L13_2 = L15_1
        L12_2 = L12_2[L13_2]
        L12_2 = L12_2.ContainerContent
        L12_2 = L12_2[L6_2]
        L12_2 = L12_2[L10_2]
        L12_2 = L12_2.model
        function L13_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
          L1_3 = Entity
          L2_3 = A0_3
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.state
          L2_3 = L6_2
          L1_3.containerIndex = L2_3
          L1_3 = Entity
          L2_3 = A0_3
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.state
          L2_3 = table
          L2_3 = L2_3.insert
          L3_3 = Config
          L3_3 = L3_3.RigsLocations
          L4_3 = L15_1
          L3_3 = L3_3[L4_3]
          L3_3 = L3_3.Containers
          L3_3 = L3_3.ContainerCoords
          L4_3 = L6_2
          L3_3 = L3_3[L4_3]
          L3_3 = L3_3.props
          L4_3 = {}
          L4_3.object = A0_3
          L2_3 = L2_3(L3_3, L4_3)
          L1_3.selfIndex = L2_3
          L1_3 = Entity
          L2_3 = A0_3
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.state
          L2_3 = L10_2
          L1_3.index = L2_3
          L1_3 = Entity
          L2_3 = A0_3
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.state
          L2_3 = Config
          L2_3 = L2_3.RigsLocations
          L3_3 = L15_1
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3.ContainerContent
          L3_3 = L6_2
          L2_3 = L2_3[L3_3]
          L3_3 = L10_2
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3.percentReward
          L1_3.reward = L2_3
          L1_3 = table
          L1_3 = L1_3.insert
          L2_3 = SpawnedObjects
          L2_3 = L2_3.ContainerBoxes
          L3_3 = Crane
          L3_3 = L3_3.AttachedContainer
          L2_3 = L2_3[L3_3]
          L3_3 = A0_3
          L1_3(L2_3, L3_3)
          L1_3 = table
          L1_3 = L1_3.insert
          L2_3 = Pickups
          L3_3 = A0_3
          L1_3(L2_3, L3_3)
          L1_3 = AttachEntityToEntity
          L2_3 = A0_3
          L3_3 = Crane
          L3_3 = L3_3.AttachedContainer
          L4_3 = 0
          L5_3 = Config
          L5_3 = L5_3.RigsLocations
          L6_3 = L15_1
          L5_3 = L5_3[L6_3]
          L5_3 = L5_3.ContainerContent
          L6_3 = L6_2
          L5_3 = L5_3[L6_3]
          L6_3 = L10_2
          L5_3 = L5_3[L6_3]
          L5_3 = L5_3.spawnOffsets
          L5_3 = L5_3.pos
          L5_3 = L5_3.x
          L6_3 = Config
          L6_3 = L6_3.RigsLocations
          L7_3 = L15_1
          L6_3 = L6_3[L7_3]
          L6_3 = L6_3.ContainerContent
          L7_3 = L6_2
          L6_3 = L6_3[L7_3]
          L7_3 = L10_2
          L6_3 = L6_3[L7_3]
          L6_3 = L6_3.spawnOffsets
          L6_3 = L6_3.pos
          L6_3 = L6_3.y
          L7_3 = Config
          L7_3 = L7_3.RigsLocations
          L8_3 = L15_1
          L7_3 = L7_3[L8_3]
          L7_3 = L7_3.ContainerContent
          L8_3 = L6_2
          L7_3 = L7_3[L8_3]
          L8_3 = L10_2
          L7_3 = L7_3[L8_3]
          L7_3 = L7_3.spawnOffsets
          L7_3 = L7_3.pos
          L7_3 = L7_3.z
          L8_3 = Config
          L8_3 = L8_3.RigsLocations
          L9_3 = L15_1
          L8_3 = L8_3[L9_3]
          L8_3 = L8_3.ContainerContent
          L9_3 = L6_2
          L8_3 = L8_3[L9_3]
          L9_3 = L10_2
          L8_3 = L8_3[L9_3]
          L8_3 = L8_3.spawnOffsets
          L8_3 = L8_3.rot
          L8_3 = L8_3.x
          L9_3 = Config
          L9_3 = L9_3.RigsLocations
          L10_3 = L15_1
          L9_3 = L9_3[L10_3]
          L9_3 = L9_3.ContainerContent
          L10_3 = L6_2
          L9_3 = L9_3[L10_3]
          L10_3 = L10_2
          L9_3 = L9_3[L10_3]
          L9_3 = L9_3.spawnOffsets
          L9_3 = L9_3.rot
          L9_3 = L9_3.y
          L10_3 = Config
          L10_3 = L10_3.RigsLocations
          L11_3 = L15_1
          L10_3 = L10_3[L11_3]
          L10_3 = L10_3.ContainerContent
          L11_3 = L6_2
          L10_3 = L10_3[L11_3]
          L11_3 = L10_2
          L10_3 = L10_3[L11_3]
          L10_3 = L10_3.spawnOffsets
          L10_3 = L10_3.rot
          L10_3 = L10_3.z
          L11_3 = false
          L12_3 = false
          L13_3 = true
          L14_3 = false
          L15_3 = 0
          L16_3 = true
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        end
        L14_2 = L4_2
        L15_2 = false
        L16_2 = true
        L17_2 = true
        L18_2 = false
        L19_2 = true
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L11_2 = Citizen
        L11_2 = L11_2.Wait
        L12_2 = 0
        L11_2(L12_2)
      end
      break
    end
  end
  L0_2 = Crane
  L0_2.AttachedContainer = nil
  L0_2 = Crane
  L0_2 = L0_2.IsUsing
  if L0_2 then
    L0_2 = SetEntityDrawOutline
    L1_2 = SpawnedObjects
    L1_2 = L1_2.TemporaryContainer
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = SpawnedObjects
    L0_2 = L0_2.AttachedContainers
    L0_2 = #L0_2
    if L0_2 > 0 then
      L0_2 = SpawnedObjects
      L0_2 = L0_2.AttachedContainers
      L0_2 = L0_2[1]
      OutlinedProp = L0_2
      L0_2 = SetEntityDrawOutline
      L1_2 = OutlinedProp
      L2_2 = true
      L0_2(L1_2, L2_2)
      L0_2 = SetEntityDrawOutlineColor
      L1_2 = 91
      L2_2 = 127
      L3_2 = 255
      L4_2 = 200
      L0_2(L1_2, L2_2, L3_2, L4_2)
    else
      L0_2 = GetResourceKvpInt
      L1_2 = "17mov_Tutorials:"
      L2_2 = Config
      L2_2 = L2_2.Lang
      L2_2 = L2_2.afterLoadTutorial
      L1_2 = L1_2 .. L2_2
      L0_2 = L0_2(L1_2)
      if 0 == L0_2 then
        L0_2 = L22_1
        if not L0_2 then
          L0_2 = SendNUIMessage
          L1_2 = {}
          L1_2.action = "showTutorial"
          L2_2 = Config
          L2_2 = L2_2.Lang
          L2_2 = L2_2.afterLoadTutorial
          L1_2.customText = L2_2
          L0_2(L1_2)
          L0_2 = Config
          L0_2 = L0_2.Lang
          L0_2 = L0_2.afterLoadTutorial
          L24_1 = L0_2
          L0_2 = true
          L23_1 = L0_2
          L0_2 = SetNuiFocus
          L1_2 = true
          L2_2 = true
          L0_2(L1_2, L2_2)
        end
      end
    end
  end
end
L38_1[L39_1] = L40_1
L38_1 = _ENV
L39_1 = "Crane"
L38_1 = L38_1[L39_1]
L39_1 = "Exit"
function L40_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = SetEntityDrawOutline
  L1_2 = SpawnedObjects
  L1_2 = L1_2.TemporaryContainer
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetEntityDrawOutline
  L1_2 = SpawnedObjects
  L1_2 = L1_2.AttachedContainers
  L1_2 = L1_2[1]
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = TriggerServerEvent
  L1_2 = "17mov_OilRig:CraneIsNowFree"
  L0_2(L1_2)
  L0_2 = Crane
  L0_2 = L0_2.Camera
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = Crane
  L0_2 = L0_2.IsUsing
  if L0_2 then
    L0_2 = Crane
    L0_2.IsUsing = false
    L0_2 = DoScreenFadeOut
    L1_2 = 200
    L0_2(L1_2)
    L0_2 = Wait
    L1_2 = 400
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = FreezeEntityPosition
    L2_2 = L0_2
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = SetEntityVisible
    L2_2 = L0_2
    L3_2 = true
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    MarkersEnabled = true
    L1_2 = SetEntityCoords
    L2_2 = L0_2
    L3_2 = Config
    L3_2 = L3_2.RigsLocations
    L4_2 = L15_1
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.Crane
    L3_2 = L3_2.Coords
    L3_2 = L3_2[1]
    L3_2 = L3_2.x
    L4_2 = Config
    L4_2 = L4_2.RigsLocations
    L5_2 = L15_1
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.Crane
    L4_2 = L4_2.Coords
    L4_2 = L4_2[1]
    L4_2 = L4_2.y
    L5_2 = Config
    L5_2 = L5_2.RigsLocations
    L6_2 = L15_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.Crane
    L5_2 = L5_2.Coords
    L5_2 = L5_2[1]
    L5_2 = L5_2.z
    L5_2 = L5_2 - 1.0
    L6_2 = true
    L7_2 = false
    L8_2 = false
    L9_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
    L1_2 = DoScreenFadeIn
    L2_2 = 200
    L1_2(L2_2)
  end
end
L38_1[L39_1] = L40_1
L38_1 = _ENV
L39_1 = "CreateThread"
L38_1 = L38_1[L39_1]
function L39_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  while true do
    L0_2 = 500
    L1_2 = SpawnedObjects
    L1_2 = L1_2.Crane
    L1_2 = L1_2.frame
    if L1_2 then
      L1_2 = Crane
      L1_2 = L1_2.EnabledControls
      L1_2 = #L1_2
      if L1_2 > 0 then
        L1_2 = 1
        L2_2 = Crane
        L2_2 = L2_2.EnabledControls
        L2_2 = #L2_2
        L3_2 = 1
        for L4_2 = L1_2, L2_2, L3_2 do
          L5_2 = Crane
          L5_2 = L5_2.Update
          L6_2 = Crane
          L6_2 = L6_2.EnabledControls
          L6_2 = L6_2[L4_2]
          L5_2(L6_2)
        end
        L0_2 = 0
      end
    end
    L1_2 = Wait
    L2_2 = L0_2
    L1_2(L2_2)
  end
end
L38_1(L39_1)
L38_1 = RegisterNetEvent
L39_1 = "17movement:spawnCrane"
function L40_1()
  local L0_2, L1_2
  L0_2 = Crane
  L0_2 = L0_2.Setup
  L0_2()
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "17movement:deleteCrane"
function L40_1()
  local L0_2, L1_2
  L0_2 = Crane
  L0_2 = L0_2.Delete
  L0_2()
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "17mov_OilRig:craneEnableControl"
function L40_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = Crane
  L2_2 = L2_2.EnabledControls
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "17mov_OilRig:AttachContainerToLifter"
function L40_1(A0_2)
  local L1_2, L2_2
  L1_2 = Crane
  L1_2 = L1_2.LifterAttach
  L2_2 = SpawnedObjects
  L2_2 = L2_2.AttachedContainers
  L2_2 = L2_2[1]
  L1_2(L2_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "17mov_OilRig:craneDetachContainer"
function L40_1()
  local L0_2, L1_2
  L0_2 = Crane
  L0_2 = L0_2.LifterDetach
  L0_2()
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "17movement:craneDisableControl"
function L40_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = SpawnedObjects
  L3_2 = L3_2.Crane
  L3_2 = L3_2.frame
  L4_2 = 1
  L5_2 = Crane
  L5_2 = L5_2.EnabledControls
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = Crane
    L8_2 = L8_2.EnabledControls
    L8_2 = L8_2[L7_2]
    if L8_2 == A0_2 then
      L8_2 = table
      L8_2 = L8_2.remove
      L9_2 = Crane
      L9_2 = L9_2.EnabledControls
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L4_2 = SetEntityCoords
  L5_2 = L3_2
  L6_2 = A2_2.x
  L7_2 = A2_2.y
  L8_2 = A2_2.z
  L9_2 = true
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = pairs
  L5_2 = Crane
  L5_2 = L5_2.Objects
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = pairs
    L11_2 = A1_2
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      L16_2 = L9_2.type
      L17_2 = L15_2.type
      if L16_2 == L17_2 then
        L16_2 = L9_2.position
        if L16_2 then
          L16_2 = Crane
          L16_2 = L16_2.Objects
          L16_2 = L16_2[L8_2]
          L17_2 = L15_2.position
          L16_2.position = L17_2
        end
      end
    end
  end
  L4_2 = Crane
  L4_2 = L4_2.Update
  L4_2()
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "17mov_OilRig:RigExplode"
function L40_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Notify
  L1_2 = Config
  L1_2 = L1_2.Lang
  L1_2 = L1_2.rig_exploded
  L0_2(L1_2)
  L0_2 = true
  L25_1 = L0_2
  L0_2 = RemoveBlip
  L1_2 = Blips
  L1_2 = L1_2.Drilling_1
  L0_2(L1_2)
  L0_2 = Functions
  L0_2 = L0_2.PlayAudioAtCoords
  L1_2 = "explosion-001"
  L2_2 = 0.6
  L3_2 = SpawnedObjects
  L3_2 = L3_2.HintDrillProp
  L4_2 = 100
  L5_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = ShakeGameplayCam
  L1_2 = "MEDIUM_EXPLOSION_SHAKE"
  L2_2 = 0.5
  L0_2(L1_2, L2_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hideGas"
  L0_2(L1_2)
end
L38_1(L39_1, L40_1)

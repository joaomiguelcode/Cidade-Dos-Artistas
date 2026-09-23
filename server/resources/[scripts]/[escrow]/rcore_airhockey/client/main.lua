local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1
localPeer = nil
opponentPeer = nil
lastPackReceivedTime = 0
L0_1 = {}
s_Session = nil
L1_1 = false
L2_1 = 1
L3_1 = 1
L4_1 = false
L5_1 = nil
L6_1 = nil
L7_1 = nil
s_myServerId = -1
L8_1 = 0
L9_1 = {}
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = false
L14_1 = false
L15_1 = false
s_tickingBar = nil
L16_1 = false
L17_1 = nil
function L18_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2)
  local L11_2, L12_2
  L11_2 = SendNUIMessage
  L12_2 = {}
  L12_2.fName = A0_2
  L12_2.a1 = A1_2
  L12_2.a2 = A2_2
  L12_2.a3 = A3_2
  L12_2.a4 = A4_2
  L12_2.a5 = A5_2
  L12_2.a6 = A6_2
  L12_2.a7 = A7_2
  L12_2.a8 = A8_2
  L12_2.a9 = A9_2
  L12_2.a10 = A10_2
  L12_2.action = "javascript"
  L11_2(L12_2)
end
SendToJavascript = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L10_1 = L1_2
  L1_2 = A0_2.scoreOptions
  L2_2 = A0_2.rounds
  L1_2 = L1_2[L2_2]
  L2_2 = 0.15
  L3_2 = A0_2.ballSpeed
  if 2 == L3_2 then
    L2_2 = 0.2
  else
    L3_2 = A0_2.ballSpeed
    if 3 == L3_2 then
      L2_2 = 0.3
    end
  end
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L3_2.action = "go"
  L4_2 = L1_2 + 0
  L3_2.maxScore = L4_2
  L4_2 = L2_2 + 0
  L3_2.ballSpeed = L4_2
  L4_2 = A0_2.puckSkin
  L4_2 = L4_2 + 0
  L3_2.puckSkin = L4_2
  L4_2 = L2_1
  L4_2 = L4_2 + 0
  L3_2.hostSkin = L4_2
  L4_2 = s_Session
  L4_2.settings = L3_2
  L4_2 = opponentPeer
  L4_2 = L4_2.Send
  L5_2 = json
  L5_2 = L5_2.encode
  L6_2 = L3_2
  L5_2, L6_2 = L5_2(L6_2)
  L4_2(L5_2, L6_2)
  L4_2 = PrepareMatch
  L4_2()
  L4_2 = StartRound
  L4_2()
  L4_2 = Config
  L4_2 = L4_2.Framework
  if 0 ~= L4_2 then
    L4_2 = Config
    L4_2 = L4_2.EnableBets
    if L4_2 then
      L4_2 = TriggerServerEvent
      L5_2 = "AirHockey:PayStakes"
      L6_2 = s_Session
      L6_2 = L6_2.table
      L6_2 = L6_2.tableCoords
      L4_2(L5_2, L6_2)
    end
  end
end
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L12_1
  if not L1_2 then
    L1_2 = GetPlayerData
    L1_2 = L1_2()
    L2_2 = {}
    L3_2 = L1_2.accounts
    L2_2.accounts = L3_2
    L2_2.selectedAccount = 1
    L2_2.stake = 0
    L2_2.confirmedBet = 0
    L12_1 = L2_2
    L2_2 = {}
    L12_1.accountNames = L2_2
    L2_2 = 1
    L3_2 = L12_1.accounts
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L12_1.accountNames
      L7_2 = L12_1.accounts
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.label
      L6_2[L5_2] = L7_2
    end
  end
  L1_2 = {}
  L2_2 = 0
  L3_2 = L12_1.stake
  L4_2 = 0
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L2_2 = L12_1.accountNames
  L3_2 = L12_1.selectedAccount
  L2_2 = L2_2[L3_2]
  L3_2 = L12_1.accounts
  L4_2 = L12_1.selectedAccount
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.money
  L4_2 = Config
  L4_2 = L4_2.MaxBet
  if L3_2 > L4_2 then
    L4_2 = Config
    L3_2 = L4_2.MaxBet
  end
  L5_2 = A0_2
  L4_2 = A0_2.AddList
  L6_2 = Translation
  L6_2 = L6_2.Get
  L7_2 = "BETTING_ACC"
  L6_2 = L6_2(L7_2)
  L7_2 = L12_1.accountNames
  L8_2 = L12_1.selectedAccount
  L9_2 = string
  L9_2 = L9_2.format
  L10_2 = Translation
  L10_2 = L10_2.Get
  L11_2 = "BETTINGS_USE_ACC_DESC"
  L10_2 = L10_2(L11_2)
  L11_2 = L2_2
  L12_2 = FormatPrice
  L13_2 = L3_2
  L12_2, L13_2 = L12_2(L13_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = {}
  L11_2 = L12_1.confirmedBet
  L11_2 = L11_2 > 0
  L10_2.IsDisabled = L11_2
  function L11_2(A0_3, A1_3, A2_3)
    if A2_3 then
      L12_1.selectedAccount = A0_3
      L12_1.stake = 0
    end
    if A1_3 then
    end
  end
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = A0_2
  L4_2 = A0_2.AddList
  L6_2 = Translation
  L6_2 = L6_2.Get
  L7_2 = "BETTING_STAKE"
  L6_2 = L6_2(L7_2)
  L7_2 = L1_2
  L8_2 = 2
  L9_2 = string
  L9_2 = L9_2.format
  L10_2 = Translation
  L10_2 = L10_2.Get
  L11_2 = "PRESS_TO_CONFIRM_BET"
  L10_2 = L10_2(L11_2)
  L11_2 = FormatPrice
  L12_2 = L12_1.stake
  L11_2, L12_2, L13_2 = L11_2(L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = {}
  L11_2 = L12_1.confirmedBet
  L11_2 = L11_2 > 0
  L10_2.IsDisabled = L11_2
  function L11_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    if A2_3 then
      if 1 == A0_3 then
        L3_3 = L12_1.stake
        if 0 == L3_3 then
          L3_3 = L3_2
          L12_1.stake = L3_3
        else
          L3_3 = L12_1.stake
          L3_3 = L3_3 - 1000
          L12_1.stake = L3_3
          L3_3 = L12_1.stake
          if L3_3 < 0 then
            L12_1.stake = 0
          end
        end
      elseif 3 == A0_3 then
        L3_3 = L12_1.stake
        L4_3 = L3_2
        if L3_3 == L4_3 then
          L12_1.stake = 0
        else
          L3_3 = L12_1.stake
          L3_3 = L3_3 + 1000
          L12_1.stake = L3_3
          L3_3 = L12_1.stake
          L4_3 = L3_2
          if L3_3 > L4_3 then
            L3_3 = L3_2
            L12_1.stake = L3_3
          end
        end
      end
      L3_3 = Clamp
      L4_3 = L12_1.stake
      L5_3 = Config
      L5_3 = L5_3.MinBet
      L6_3 = Config
      L6_3 = L6_3.MaxBet
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L12_1.stake = L3_3
    end
    if A1_3 then
      L3_3 = L12_1.stake
      L12_1.confirmedBet = L3_3
      L3_3 = L12_1.accounts
      L4_3 = L12_1.selectedAccount
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.name
      L4_3 = TriggerServerEvent
      L5_3 = "AirHockey:ConfirmBet"
      L6_3 = s_Session
      L6_3 = L6_3.table
      L6_3 = L6_3.tableCoords
      L7_3 = L3_3
      L8_3 = L12_1.confirmedBet
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = PlaySoundFrontend
      L5_3 = -1
      L6_3 = "Goon_Paid_Large"
      L7_3 = "GTAO_Boss_Goons_FM_Soundset"
      L4_3(L5_3, L6_3, L7_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = nil
  L12_1 = L0_2
  L0_2 = RageUI
  L0_2 = L0_2.CreateMenu
  L1_2 = ""
  L2_2 = Translation
  L2_2 = L2_2.Get
  L3_2 = "MATCH_SETTINGS"
  L2_2 = L2_2(L3_2)
  L3_2 = 25
  L4_2 = 25
  L5_2 = "rcore_airhockey"
  L6_2 = "rcore_airhockey"
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L11_1 = L0_2
  L0_2 = 30
  L1_2 = RageUI
  L1_2 = L1_2.PoolMenus
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = s_Session
    if not L1_3 then
      return
    end
    L1_3 = L11_1
    if not L1_3 then
      return
    end
    L1_3 = L11_1
    L2_3 = L1_3
    L1_3 = L1_3.IsVisible
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4
      L1_4 = Config
      L1_4 = L1_4.Framework
      if 0 ~= L1_4 then
        L1_4 = Config
        L1_4 = L1_4.EnableBets
        if L1_4 then
          L1_4 = L19_1
          L2_4 = A0_4
          L1_4(L2_4)
        end
      end
      L2_4 = A0_4
      L1_4 = A0_4.AddList
      L3_4 = Translation
      L3_4 = L3_4.Get
      L4_4 = "PADDLE_SKIN"
      L3_4 = L3_4(L4_4)
      L4_4 = {}
      L5_4 = Translation
      L5_4 = L5_4.Get
      L6_4 = "COLOR_BLUE"
      L5_4 = L5_4(L6_4)
      L6_4 = Translation
      L6_4 = L6_4.Get
      L7_4 = "COLOR_GREEN"
      L6_4 = L6_4(L7_4)
      L7_4 = Translation
      L7_4 = L7_4.Get
      L8_4 = "COLOR_RED"
      L7_4 = L7_4(L8_4)
      L8_4 = Translation
      L8_4 = L8_4.Get
      L9_4 = "COLOR_ORANGE"
      L8_4 = L8_4(L9_4)
      L9_4 = Translation
      L9_4 = L9_4.Get
      L10_4 = "COLOR_GRAY"
      L9_4 = L9_4(L10_4)
      L10_4 = Translation
      L10_4 = L10_4.Get
      L11_4 = "COLOR_PURPLE"
      L10_4 = L10_4(L11_4)
      L11_4 = Translation
      L11_4 = L11_4.Get
      L12_4 = "COLOR_PINK"
      L11_4 = L11_4(L12_4)
      L12_4 = Translation
      L12_4 = L12_4.Get
      L13_4 = "COLOR_BLACK"
      L12_4, L13_4 = L12_4(L13_4)
      L4_4[1] = L5_4
      L4_4[2] = L6_4
      L4_4[3] = L7_4
      L4_4[4] = L8_4
      L4_4[5] = L9_4
      L4_4[6] = L10_4
      L4_4[7] = L11_4
      L4_4[8] = L12_4
      L4_4[9] = L13_4
      L5_4 = L2_1
      L6_4 = Translation
      L6_4 = L6_4.Get
      L7_4 = "PADDLE_SKIN_DESC"
      L6_4 = L6_4(L7_4)
      L7_4 = {}
      L7_4.IsDisabled = false
      function L8_4(A0_5, A1_5, A2_5)
        if A2_5 then
          L2_1 = A0_5
        end
        if A1_5 then
        end
      end
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
      L2_4 = A0_4
      L1_4 = A0_4.AddButton
      L3_4 = Translation
      L3_4 = L3_4.Get
      L4_4 = "READY"
      L3_4 = L3_4(L4_4)
      L4_4 = Translation
      L4_4 = L4_4.Get
      L5_4 = "READY_DESC"
      L4_4 = L4_4(L5_4)
      L5_4 = {}
      L5_4.IsDisabled = false
      L6_4 = L0_2
      L7_4 = "s"
      L6_4 = L6_4 .. L7_4
      L5_4.RightLabel = L6_4
      L6_4 = RageUI
      L6_4 = L6_4.ItemsColour
      L6_4 = L6_4.White
      L5_4.RightLabelColor = L6_4
      L6_4 = nil
      function L7_4()
        local L0_5, L1_5, L2_5, L3_5
        L0_5 = opponentPeer
        L0_5 = L0_5.Send
        L1_5 = json
        L1_5 = L1_5.encode
        L2_5 = {}
        L2_5.action = "opready"
        L3_5 = L2_1
        L2_5.paddleSkin = L3_5
        L1_5, L2_5, L3_5 = L1_5(L2_5)
        L0_5(L1_5, L2_5, L3_5)
        L0_5 = RageUI
        L0_5 = L0_5.CloseAll
        L0_5()
      end
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
    end
    function L4_3(A0_4)
      local L1_4
    end
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2.HockeyUI = L2_2
  L1_2 = RageUI
  L1_2 = L1_2.Visible
  L2_2 = L11_1
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3
    while true do
      L0_3 = L11_1
      if not L0_3 then
        break
      end
      L0_3 = L0_2
      if not (L0_3 > 0) then
        break
      end
      L0_3 = L0_2
      L0_3 = L0_3 - 1
      L0_2 = L0_3
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = nil
  L12_1 = L0_2
  L0_2 = RageUI
  L0_2 = L0_2.CreateMenu
  L1_2 = ""
  L2_2 = Translation
  L2_2 = L2_2.Get
  L3_2 = "MATCH_SETTINGS"
  L2_2 = L2_2(L3_2)
  L3_2 = 25
  L4_2 = 25
  L5_2 = "rcore_airhockey"
  L6_2 = "rcore_airhockey"
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L10_1 = L0_2
  L0_2 = {}
  L0_2.ballSpeed = 2
  L0_2.rounds = 3
  L1_2 = {}
  L2_2 = Translation
  L2_2 = L2_2.Get
  L3_2 = "SLOW"
  L2_2 = L2_2(L3_2)
  L3_2 = Translation
  L3_2 = L3_2.Get
  L4_2 = "MEDIUM"
  L3_2 = L3_2(L4_2)
  L4_2 = Translation
  L4_2 = L4_2.Get
  L5_2 = "FAST"
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L0_2.ballSpeedOptions = L1_2
  L1_2 = {}
  L2_2 = "5"
  L3_2 = "10"
  L4_2 = "15"
  L5_2 = "20"
  L6_2 = "25"
  L7_2 = "30"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L0_2.scoreOptions = L1_2
  L0_2.countdown = 30
  L0_2.puckSkin = 8
  L10_1.selections = L0_2
  L0_2 = RageUI
  L0_2 = L0_2.PoolMenus
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = s_Session
    if not L1_3 then
      return
    end
    L1_3 = L10_1
    if not L1_3 then
      return
    end
    L1_3 = s_Session
    L1_3 = L1_3.ping
    if L1_3 > 75 then
      L1_3 = string
      L1_3 = L1_3.format
      L2_3 = Translation
      L2_3 = L2_3.Get
      L3_3 = "LATENCY_HIGH"
      L2_3 = L2_3(L3_3)
      L3_3 = s_Session
      L3_3 = L3_3.ping
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        goto lbl_33
      end
    end
    L1_3 = string
    L1_3 = L1_3.format
    L2_3 = Translation
    L2_3 = L2_3.Get
    L3_3 = "LATENCY_NORMAL"
    L2_3 = L2_3(L3_3)
    L3_3 = s_Session
    L3_3 = L3_3.ping
    L1_3 = L1_3(L2_3, L3_3)
    ::lbl_33::
    L2_3 = s_Session
    L2_3 = L2_3.ping
    if L2_3 > 75 then
      L2_3 = RageUI
      L2_3 = L2_3.BadgeStyle
      L2_3 = L2_3.Alert
      if L2_3 then
        goto lbl_43
      end
    end
    L2_3 = nil
    ::lbl_43::
    L3_3 = L10_1
    L4_3 = L3_3
    L3_3 = L3_3.IsVisible
    function L5_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4
      L2_4 = A0_4
      L1_4 = A0_4.AddList
      L3_4 = Translation
      L3_4 = L3_4.Get
      L4_4 = "PUCK_SPEED"
      L3_4 = L3_4(L4_4)
      L4_4 = L10_1.selections
      L4_4 = L4_4.ballSpeedOptions
      L5_4 = L10_1.selections
      L5_4 = L5_4.ballSpeed
      L6_4 = Translation
      L6_4 = L6_4.Get
      L7_4 = "PUCK_SPEED_DESC"
      L6_4 = L6_4(L7_4)
      L7_4 = {}
      L7_4.IsDisabled = false
      L8_4 = RageUI
      L8_4 = L8_4.BadgeStyle
      L8_4 = L8_4.HockeyPuck
      L7_4.LeftBadge = L8_4
      function L8_4(A0_5, A1_5, A2_5)
        local L3_5
        if A2_5 then
          L3_5 = L10_1.selections
          L3_5.ballSpeed = A0_5
        end
        if A1_5 then
        end
      end
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
      L2_4 = A0_4
      L1_4 = A0_4.AddList
      L3_4 = Translation
      L3_4 = L3_4.Get
      L4_4 = "PUCK_SKIN"
      L3_4 = L3_4(L4_4)
      L4_4 = {}
      L5_4 = Translation
      L5_4 = L5_4.Get
      L6_4 = "COLOR_BLUE"
      L5_4 = L5_4(L6_4)
      L6_4 = Translation
      L6_4 = L6_4.Get
      L7_4 = "COLOR_GREEN"
      L6_4 = L6_4(L7_4)
      L7_4 = Translation
      L7_4 = L7_4.Get
      L8_4 = "COLOR_RED"
      L7_4 = L7_4(L8_4)
      L8_4 = Translation
      L8_4 = L8_4.Get
      L9_4 = "COLOR_ORANGE"
      L8_4 = L8_4(L9_4)
      L9_4 = Translation
      L9_4 = L9_4.Get
      L10_4 = "COLOR_GRAY"
      L9_4 = L9_4(L10_4)
      L10_4 = Translation
      L10_4 = L10_4.Get
      L11_4 = "COLOR_PURPLE"
      L10_4 = L10_4(L11_4)
      L11_4 = Translation
      L11_4 = L11_4.Get
      L12_4 = "COLOR_PINK"
      L11_4 = L11_4(L12_4)
      L12_4 = Translation
      L12_4 = L12_4.Get
      L13_4 = "COLOR_BLACK"
      L12_4, L13_4 = L12_4(L13_4)
      L4_4[1] = L5_4
      L4_4[2] = L6_4
      L4_4[3] = L7_4
      L4_4[4] = L8_4
      L4_4[5] = L9_4
      L4_4[6] = L10_4
      L4_4[7] = L11_4
      L4_4[8] = L12_4
      L4_4[9] = L13_4
      L5_4 = L10_1.selections
      L5_4 = L5_4.puckSkin
      L6_4 = Translation
      L6_4 = L6_4.Get
      L7_4 = "PUCK_SKIN_DESC"
      L6_4 = L6_4(L7_4)
      L7_4 = {}
      L7_4.IsDisabled = false
      function L8_4(A0_5, A1_5, A2_5)
        local L3_5
        if A2_5 then
          L3_5 = L10_1.selections
          L3_5.puckSkin = A0_5
        end
        if A1_5 then
        end
      end
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
      L2_4 = A0_4
      L1_4 = A0_4.AddList
      L3_4 = Translation
      L3_4 = L3_4.Get
      L4_4 = "PADDLE_SKIN"
      L3_4 = L3_4(L4_4)
      L4_4 = {}
      L5_4 = Translation
      L5_4 = L5_4.Get
      L6_4 = "COLOR_BLUE"
      L5_4 = L5_4(L6_4)
      L6_4 = Translation
      L6_4 = L6_4.Get
      L7_4 = "COLOR_GREEN"
      L6_4 = L6_4(L7_4)
      L7_4 = Translation
      L7_4 = L7_4.Get
      L8_4 = "COLOR_RED"
      L7_4 = L7_4(L8_4)
      L8_4 = Translation
      L8_4 = L8_4.Get
      L9_4 = "COLOR_ORANGE"
      L8_4 = L8_4(L9_4)
      L9_4 = Translation
      L9_4 = L9_4.Get
      L10_4 = "COLOR_GRAY"
      L9_4 = L9_4(L10_4)
      L10_4 = Translation
      L10_4 = L10_4.Get
      L11_4 = "COLOR_PURPLE"
      L10_4 = L10_4(L11_4)
      L11_4 = Translation
      L11_4 = L11_4.Get
      L12_4 = "COLOR_PINK"
      L11_4 = L11_4(L12_4)
      L12_4 = Translation
      L12_4 = L12_4.Get
      L13_4 = "COLOR_BLACK"
      L12_4, L13_4 = L12_4(L13_4)
      L4_4[1] = L5_4
      L4_4[2] = L6_4
      L4_4[3] = L7_4
      L4_4[4] = L8_4
      L4_4[5] = L9_4
      L4_4[6] = L10_4
      L4_4[7] = L11_4
      L4_4[8] = L12_4
      L4_4[9] = L13_4
      L5_4 = L2_1
      L6_4 = Translation
      L6_4 = L6_4.Get
      L7_4 = "PADDLE_SKIN_DESC"
      L6_4 = L6_4(L7_4)
      L7_4 = {}
      L7_4.IsDisabled = false
      function L8_4(A0_5, A1_5, A2_5)
        if A2_5 then
          L2_1 = A0_5
        end
        if A1_5 then
        end
      end
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
      L2_4 = A0_4
      L1_4 = A0_4.AddList
      L3_4 = Translation
      L3_4 = L3_4.Get
      L4_4 = "MAX_SCORE"
      L3_4 = L3_4(L4_4)
      L4_4 = L10_1.selections
      L4_4 = L4_4.scoreOptions
      L5_4 = L10_1.selections
      L5_4 = L5_4.rounds
      L6_4 = Translation
      L6_4 = L6_4.Get
      L7_4 = "MAX_SCORE_DESC"
      L6_4 = L6_4(L7_4)
      L7_4 = {}
      L7_4.IsDisabled = false
      L8_4 = RageUI
      L8_4 = L8_4.BadgeStyle
      L8_4 = L8_4.HockeyScoreboard
      L7_4.LeftBadge = L8_4
      function L8_4(A0_5, A1_5, A2_5)
        local L3_5
        if A2_5 then
          L3_5 = L10_1.selections
          L3_5.rounds = A0_5
        end
        if A1_5 then
        end
      end
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
      L1_4 = Config
      L1_4 = L1_4.Framework
      if 0 ~= L1_4 then
        L1_4 = Config
        L1_4 = L1_4.EnableBets
        if L1_4 then
          L1_4 = L19_1
          L2_4 = A0_4
          L1_4(L2_4)
        end
      end
      L2_4 = A0_4
      L1_4 = A0_4.AddSeparator
      L3_4 = ""
      L4_4 = RageUI
      L4_4 = L4_4.ItemsColour
      L4_4 = L4_4.Yellow
      L1_4(L2_4, L3_4, L4_4)
      L1_4 = L13_1
      if L1_4 then
        L1_4 = Translation
        L1_4 = L1_4.Get
        L2_4 = "START_DESC"
        L1_4 = L1_4(L2_4)
        L2_4 = L1_3
        L1_4 = L1_4 .. L2_4
        if L1_4 then
          goto lbl_178
        end
      end
      L1_4 = Translation
      L1_4 = L1_4.Get
      L2_4 = "WAITING_FOR_OP_READY"
      L1_4 = L1_4(L2_4)
      ::lbl_178::
      L3_4 = A0_4
      L2_4 = A0_4.AddButton
      L4_4 = Translation
      L4_4 = L4_4.Get
      L5_4 = "START"
      L4_4 = L4_4(L5_4)
      L5_4 = L1_4
      L6_4 = {}
      L7_4 = L13_1
      L7_4 = not L7_4
      L6_4.IsDisabled = L7_4
      L7_4 = L10_1.selections
      L7_4 = L7_4.countdown
      L8_4 = "s"
      L7_4 = L7_4 .. L8_4
      L6_4.RightLabel = L7_4
      L7_4 = L2_3
      L6_4.LeftBadge = L7_4
      L7_4 = RageUI
      L7_4 = L7_4.ItemsColour
      L7_4 = L7_4.White
      L6_4.RightLabelColor = L7_4
      L7_4 = nil
      function L8_4()
        local L0_5, L1_5
        L0_5 = L13_1
        if L0_5 then
          L0_5 = L18_1
          L1_5 = L10_1.selections
          L0_5(L1_5)
        end
      end
      L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
    end
    function L6_3(A0_4)
      local L1_4
    end
    L3_3(L4_3, L5_3, L6_3)
  end
  L0_2.HockeyUI = L1_2
  L0_2 = RageUI
  L0_2 = L0_2.Visible
  L1_2 = L10_1
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = L10_1
      if not L0_3 then
        break
      end
      L0_3 = L10_1.selections
      L0_3 = L0_3.countdown
      if not (L0_3 > 0) then
        break
      end
      L0_3 = L10_1.selections
      L1_3 = L10_1.selections
      L1_3 = L1_3.countdown
      L1_3 = L1_3 - 1
      L0_3.countdown = L1_3
      L0_3 = L10_1.selections
      L0_3 = L0_3.countdown
      if 0 == L0_3 then
        L0_3 = L18_1
        L1_3 = L10_1.selections
        L0_3(L1_3)
      end
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
    end
  end
  L0_2(L1_2)
end
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = L0_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_1
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.tableCoords
    L6_2 = L6_2 - A0_2
    L6_2 = #L6_2
    L7_2 = 0.1
    if L6_2 < L7_2 then
      return L5_2
    end
  end
  L1_2 = nil
  return L1_2
end
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = Objects
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.entity
    if L6_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2.entity
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = DeleteEntity
        L7_2 = L5_2.entity
        L6_2(L7_2)
        L5_2.entity = nil
      end
    end
  end
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.deletePlayableObjects
    L6_2()
    L6_2 = L5_2.deleteReplayObjects
    L6_2()
    L6_2 = L5_2.disableCamera
    L6_2()
  end
end
function L24_1()
  local L0_2, L1_2
  L0_2 = L16_1
  if L0_2 then
    return
  end
  L0_2 = true
  L16_1 = L0_2
  L0_2 = TriggerServerEvent
  L1_2 = "AirHockey:GetInfo"
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = RegisterPedheadshot
    L1_3 = PlayerPedId
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3 = L1_3()
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L1_3 = L1_3 + 10000
    while true do
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      if not (L1_3 > L2_3) then
        break
      end
      L2_3 = IsPedheadshotReady
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      if L2_3 then
        break
      end
      L2_3 = Wait
      L3_3 = 33
      L2_3(L3_3)
    end
    L2_3 = IsPedheadshotValid
    L3_3 = L0_3
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L2_3 = GetPedheadshotTxdString
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      L3_3 = string
      L3_3 = L3_3.format
      L4_3 = "https://nui-img/%s/%s"
      L5_3 = L2_3
      L6_3 = L2_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L3_3
      L3_3 = SendNUIMessage
      L4_3 = {}
      L4_3.txdName = L2_3
      L4_3.action = "mugconvert"
      L3_3(L4_3)
    end
    L2_3 = Wait
    L3_3 = 1000
    L2_3(L3_3)
    L2_3 = UnregisterPedheadshot
    L3_3 = L0_3
    L2_3(L3_3)
  end
  L0_2(L1_2)
end
function L25_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L0_3 = L0_3 + 5000
    while true do
      L1_3 = s_Session
      if not L1_3 then
        break
      end
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      if not (L0_3 > L1_3) then
        break
      end
      L1_3 = s_Session
      L1_3 = L1_3.ready
      if L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 33
      L1_3(L2_3)
    end
    L1_3 = s_Session
    if L1_3 then
      L1_3 = localPeer
      L1_3 = L1_3.Connect
      L2_3 = s_Session
      L2_3 = L2_3.matchPeerId
      L3_3 = OpponentPeer_OnOpen
      L4_3 = OpponentPeer_OnClose
      L5_3 = OpponentPeer_OnError
      L6_3 = OpponentPeer_OnData
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      opponentPeer = L1_3
    end
  end
  L0_2(L1_2)
end
function L26_1()
  local L0_2, L1_2
  L0_2 = L14_1
  if L0_2 then
    return
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = true
    L14_1 = L0_3
    while true do
      L0_3 = s_Session
      if not L0_3 then
        break
      end
      L0_3 = s_Session
      L0_3 = L0_3.host
      if not L0_3 then
        break
      end
      L0_3 = L15_1
      L1_3 = s_Session
      L1_3 = L1_3.table
      L1_3 = L1_3.packFrame
      L2_3 = false
      L3_3 = L0_3
      L1_3(L2_3, L3_3)
      if L0_3 then
        L1_3 = false
        L15_1 = L1_3
      end
      L1_3 = Wait
      L2_3 = 33
      L1_3(L2_3)
    end
    L0_3 = false
    L14_1 = L0_3
  end
  L0_2(L1_2)
end
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = s_Session
  if L1_2 then
    L1_2 = s_Session
    L1_2 = L1_2.host
    if L1_2 then
      L1_2 = opponentPeer
      L1_2 = L1_2.Send
      L2_2 = json
      L2_2 = L2_2.encode
      L3_2 = {}
      L3_2.action = "startsin"
      L3_2.seconds = A0_2
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
  L1_2 = "#fcdb7cb3"
  if 0 == A0_2 then
    A0_2 = "GO"
    L1_2 = "#34eb83CC"
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3
      L0_3 = Wait
      L1_3 = 500
      L0_3(L1_3)
      L0_3 = SendToJavascript
      L1_3 = "ShowCounter"
      L0_3(L1_3)
    end
    L2_2(L3_2)
    L2_2 = PlaySoundFrontend
    L3_2 = -1
    L4_2 = "GO"
    L5_2 = "HUD_MINI_GAME_SOUNDSET"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = AnimpostfxPlay
    L3_2 = "HeistLocate"
    L4_2 = 1000
    L2_2(L3_2, L4_2)
  else
    L2_2 = PlaySoundFrontend
    L3_2 = -1
    L4_2 = "3_2_1"
    L5_2 = "HUD_MINI_GAME_SOUNDSET"
    L2_2(L3_2, L4_2, L5_2)
  end
  if 3 == A0_2 then
    L2_2 = SendToJavascript
    L3_2 = "ToggleLoading"
    L2_2(L3_2)
  end
  L2_2 = SendToJavascript
  L3_2 = "ShowCounter"
  L4_2 = A0_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
function L28_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SendToJavascript
  L1_2 = "ResetSession"
  L0_2(L1_2)
  L0_2 = SendToJavascript
  L1_2 = "ToggleHockeyUI"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SendToJavascript
  L1_2 = "ToggleGameInfo"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SendToJavascript
  L1_2 = "ToggleBettingBar"
  L2_2 = false
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = SendToJavascript
  L1_2 = "ToggleLoading"
  L0_2(L1_2)
end
function L29_1()
  local L0_2, L1_2, L2_2
  L0_2 = L28_1
  L0_2()
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = s_Session
  if L0_2 then
    L0_2 = s_Session
    L0_2 = L0_2.table
    L0_2 = L0_2.deleteReplayObjects
    L0_2()
    L0_2 = s_Session
    L0_2 = L0_2.table
    L0_2 = L0_2.deletePlayableObjects
    L0_2()
    L0_2 = s_Session
    L0_2 = L0_2.table
    L0_2 = L0_2.disableCamera
    L0_2()
  end
  s_Session = nil
  L0_2 = false
  L4_1 = L0_2
  L0_2 = false
  L1_1 = L0_2
  L0_2 = nil
  L6_1 = L0_2
  L0_2 = 0
  L8_1 = L0_2
  L0_2 = {}
  L9_1 = L0_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  L0_2 = Config
  L0_2 = L0_2.EnableBets
  L0_2 = 0 == L0_2 or L0_2
  L13_1 = L0_2
  L0_2 = nil
  L10_1 = L0_2
  L0_2 = nil
  L11_1 = L0_2
  L0_2 = opponentPeer
  if L0_2 then
    L0_2 = opponentPeer
    L0_2 = L0_2.Close
    L0_2()
    opponentPeer = nil
  end
  L0_2 = localPeer
  if L0_2 then
    L0_2 = localPeer
    L0_2 = L0_2.Destroy
    L0_2()
    localPeer = nil
  end
end
function L30_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = s_Session
  if L0_2 then
    L0_2 = s_Session
    L0_2 = L0_2.finished
    if not L0_2 then
      L0_2 = TriggerServerEvent
      L1_2 = "AirHockey:LeaveRequest"
      L0_2(L1_2)
      L0_2 = PlaySoundFrontend
      L1_2 = -1
      L2_2 = "EDIT"
      L3_2 = "HUD_DEATHMATCH_SOUNDSET"
      L0_2(L1_2, L2_2, L3_2)
    end
  end
  L0_2 = L29_1
  L0_2()
end
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = s_Session
  L2_2 = A0_2.ballTravelDistance
  L1_2.ballTravelDistance = L2_2
  L1_2 = s_Session
  L1_2.finished = true
  L1_2 = s_Session
  L2_2 = math
  L2_2 = L2_2.ceil
  L3_2 = s_Session
  L3_2 = L3_2.playerTravelDistance
  L2_2 = L2_2(L3_2)
  L1_2.playerTravelDistance = L2_2
  L1_2 = s_Session
  L2_2 = math
  L2_2 = L2_2.ceil
  L3_2 = s_Session
  L3_2 = L3_2.ballTravelDistance
  L2_2 = L2_2(L3_2)
  L1_2.ballTravelDistance = L2_2
  L1_2 = s_Session
  L1_2 = L1_2.localSide
  L2_2 = A0_2.winner
  L1_2 = L1_2 == L2_2
  if L1_2 then
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "END_WINNER"
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_39
    end
  end
  L2_2 = Translation
  L2_2 = L2_2.Get
  L3_2 = "END_LOSER"
  L2_2 = L2_2(L3_2)
  ::lbl_39::
  L3_2 = A0_2.winnerScore
  L4_2 = ":"
  L5_2 = A0_2.loserScore
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = {}
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = Translation
  L6_2 = L6_2.Get
  L7_2 = "END_STATS_SAVES"
  L6_2 = L6_2(L7_2)
  L7_2 = s_Session
  L7_2 = L7_2.saves
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = Translation
  L7_2 = L7_2.Get
  L8_2 = "END_STATS_SHOTS"
  L7_2 = L7_2(L8_2)
  L8_2 = s_Session
  L8_2 = L8_2.shotsOnNet
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = string
  L7_2 = L7_2.format
  L8_2 = Translation
  L8_2 = L8_2.Get
  L9_2 = "END_STATS_GOALS"
  L8_2 = L8_2(L9_2)
  L9_2 = s_Session
  L9_2 = L9_2.goals
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = string
  L8_2 = L8_2.format
  L9_2 = Translation
  L9_2 = L9_2.Get
  L10_2 = "END_STATS_PLAYER"
  L9_2 = L9_2(L10_2)
  L10_2 = s_Session
  L10_2 = L10_2.playerTravelDistance
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = string
  L9_2 = L9_2.format
  L10_2 = Translation
  L10_2 = L10_2.Get
  L11_2 = "END_STATS_PUCK"
  L10_2 = L10_2(L11_2)
  L11_2 = s_Session
  L11_2 = L11_2.ballTravelDistance
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L4_2[5] = L9_2
  L4_2[6] = L10_2
  L4_2[7] = L11_2
  L5_2 = s_Session
  L5_2 = L5_2.table
  L6_2 = s_Session
  L6_2 = L6_2.localSide
  if L1_2 then
    L7_2 = Stats_Increase
    L8_2 = "rcore_airhockey_games_won"
    L9_2 = 1
    L7_2(L8_2, L9_2)
  else
    L7_2 = Stats_Increase
    L8_2 = "rcore_airhockey_games_lost"
    L9_2 = 1
    L7_2(L8_2, L9_2)
  end
  L7_2 = Stats_Increase
  L8_2 = "rcore_airhockey_games_played"
  L9_2 = 1
  L7_2(L8_2, L9_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = DoScreenFadeOut
    L1_3 = 500
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 500
    L0_3(L1_3)
    L0_3 = L28_1
    L0_3()
    L0_3 = L5_2.enableFinalCamera
    L1_3 = L6_2
    L0_3(L1_3)
    L0_3 = LoadAnimdictAndWait
    L1_3 = "mini@golfclubhouse"
    L0_3(L1_3)
    L0_3 = DoScreenFadeIn
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = GetObjectOffsetFromCoords
    L1_3 = L5_2.tableCoords
    L2_3 = L5_2.tableHeading
    L3_3 = 0.0
    L4_3 = L6_2
    if 1 == L4_3 then
      L4_3 = -1.5
      if L4_3 then
        goto lbl_29
      end
    end
    L4_3 = 1.5
    ::lbl_29::
    L5_3 = 1.0
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L1_3 = L1_2
    if L1_3 then
      L1_3 = "clubhouse_leave_win_plyr"
      if L1_3 then
        goto lbl_38
      end
    end
    L1_3 = "clubhouse_leave_lose_plyr"
    ::lbl_38::
    L2_3 = SetEntityCoordsNoOffset
    L3_3 = PlayerPedId
    L3_3 = L3_3()
    L4_3 = L0_3
    L2_3(L3_3, L4_3)
    L2_3 = SetEntityHeading
    L3_3 = PlayerPedId
    L3_3 = L3_3()
    L4_3 = L5_2.tableHeading
    L5_3 = L6_2
    if 1 == L5_3 then
      L5_3 = 180.0
      if L5_3 then
        goto lbl_54
      end
    end
    L5_3 = 0.0
    ::lbl_54::
    L4_3 = L4_3 + L5_3
    L2_3(L3_3, L4_3)
    L2_3 = TaskPlayAnim
    L3_3 = PlayerPedId
    L3_3 = L3_3()
    L4_3 = "mini@golfclubhouse"
    L5_3 = L1_3
    L6_3 = 8.0
    L7_3 = -8.0
    L8_3 = -1
    L9_3 = 0
    L10_3 = 0.2
    L11_3 = 0
    L12_3 = 0
    L13_3 = 0
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L2_3 = Wait
    L3_3 = 1000
    L2_3(L3_3)
    L2_3 = ShowFullscreenBonusNotify
    L3_3 = Translation
    L3_3 = L3_3.Get
    L4_3 = "END_STATS_TITLE"
    L3_3 = L3_3(L4_3)
    L4_3 = L2_2
    L5_3 = L3_2
    L6_3 = "HUD_COLOUR_PAUSE_BG"
    L7_3 = L4_2
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L2_3 = Wait
    L3_3 = 7000
    L2_3(L3_3)
    L2_3 = L30_1
    L2_3()
  end
  L7_2(L8_2)
end
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L2_2 = s_Session
    L2_2 = L2_2.roundStarted
    if not L2_2 then
      return
    end
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = s_Session
  L3_2 = L3_2.lastGoalTime
  L2_2 = L2_2 - L3_2
  L3_2 = 1000
  if L2_2 < L3_2 then
    return
  end
  L2_2 = s_Session
  L2_2 = L2_2.table
  L2_2 = L2_2.animateGoal
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = ToggleMovement
  L3_2 = false
  L2_2(L3_2)
  if A1_2 then
    L2_2 = opponentPeer
    L2_2 = L2_2.Send
    L3_2 = json
    L3_2 = L3_2.encode
    L4_2 = {}
    L4_2.action = "ongoal"
    L4_2.net = A0_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  if 1 == A0_2 then
    L2_2 = 2
    if L2_2 then
      goto lbl_44
    end
  end
  L2_2 = 1
  ::lbl_44::
  L3_2 = s_Session
  L3_2.roundStarted = false
  L3_2 = s_Session
  L3_2.playerMovement = false
  L3_2 = s_Session
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L3_2.lastGoalTime = L4_2
  L3_2 = s_Session
  L3_2 = L3_2.table
  L3_2 = L3_2.ballData
  L4_2 = vector2
  L5_2 = 0
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.velocity = L4_2
  L3_2 = s_Session
  L3_2 = L3_2.table
  L3_2 = L3_2.ballData
  L3_2.pendingState = nil
  L3_2 = s_Session
  L3_2 = L3_2.localSide
  if L2_2 == L3_2 then
    L3_2 = s_Session
    L4_2 = s_Session
    L4_2 = L4_2.goals
    L4_2 = L4_2 + 1
    L3_2.goals = L4_2
    L3_2 = s_Session
    L4_2 = s_Session
    L4_2 = L4_2.shotsOnNet
    L4_2 = L4_2 + 1
    L3_2.shotsOnNet = L4_2
  end
  L3_2 = s_Session
  L3_2 = L3_2.table
  L3_2 = L3_2.toggleTicking
  L4_2 = false
  L3_2(L4_2)
  L3_2 = s_Session
  L3_2 = L3_2.table
  L3_2 = L3_2.ballData
  L3_2.touched = false
  L3_2 = s_Session
  L3_2 = L3_2.table
  L3_2 = L3_2.ballData
  L4_2 = vector2
  L5_2 = 0
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.playablePosition = L4_2
  L3_2 = s_Session
  L3_2 = L3_2.localSide
  if L2_2 == L3_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "AirHockey:AddGoal"
    L5_2 = s_Session
    L5_2 = L5_2.table
    L5_2 = L5_2.tableCoords
    L6_2 = s_Session
    L6_2 = L6_2.localSide
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = SendToJavascript
  L4_2 = "PlayGoalSound"
  L3_2(L4_2)
  L3_2 = AnimpostfxPlay
  L4_2 = "HeistLocate"
  L5_2 = 1000
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityCoordsNoOffset
  L4_2 = s_Session
  L4_2 = L4_2.table
  L4_2 = L4_2.playableObjects
  L4_2 = L4_2[1]
  L5_2 = vector3
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = s_Session
  L3_2 = L3_2.host
  if L3_2 then
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = s_Session
      if L0_3 then
        L0_3 = s_Session
        L0_3.recordPeds = false
      end
    end
    L3_2(L4_2)
  end
end
OnGoal = L32_1
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = nil
  L1_2 = 50.0
  L2_2 = GetHockeyTables
  L2_2 = L2_2()
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L22_1
    L10_2 = L8_2.coords
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      L10_2 = CreateAirHockeyTable
      L11_2 = L8_2.coords
      L12_2 = L8_2.heading
      L10_2 = L10_2(L11_2, L12_2)
      L9_2 = L10_2
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L0_1
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L4_2 = pairs
  L5_2 = L0_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.tableCoords
    L10_2 = L3_2 - L10_2
    L10_2 = #L10_2
    L11_2 = L10_2 < 10.0
    L12_2 = L10_2 <= 2.0
    if L1_2 > L10_2 then
      L1_2 = L10_2
      L0_2 = L9_2
    end
    L13_2 = L9_2.toggleSubscription
    L14_2 = L11_2
    L13_2(L14_2)
    L13_2 = L9_2.toggleNearBy
    L14_2 = L12_2
    L13_2(L14_2)
    if not L12_2 then
      L13_2 = L5_1
      if L9_2 == L13_2 then
        L13_2 = nil
        L5_1 = L13_2
      end
    end
  end
  L4_2 = L0_2
  L5_2 = L1_2
  return L4_2, L5_2
end
function L33_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = s_Session
  if L0_2 then
    return
  end
  L0_2 = L5_1
  if not L0_2 then
    return
  end
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = L5_1.getPlayerPosition
  L2_2 = 1
  L1_2 = L1_2(L2_2)
  L1_2 = L0_2 - L1_2
  L1_2 = #L1_2
  L2_2 = L5_1.getPlayerPosition
  L3_2 = 2
  L2_2 = L2_2(L3_2)
  L2_2 = L0_2 - L2_2
  L2_2 = #L2_2
  if L1_2 > L2_2 then
    L2_2 = 2
    if L2_2 then
      goto lbl_31
    end
  end
  L2_2 = 1
  ::lbl_31::
  L3_2 = TriggerServerEvent
  L4_2 = "AirHockey:JoinRequest"
  L5_2 = L5_1.tableCoords
  L6_2 = L17_1
  L7_2 = L2_2
  L8_2 = GetMyPedNetworkId
  L8_2 = L8_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L34_1 = RegisterNUICallback
L35_1 = "mugcallback"
function L36_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
  L2_2 = A0_2.base64
  L17_1 = L2_2
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "AirHockey:CheckTableState"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "AirHockey:CheckTableState"
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = s_Session
  if L1_2 then
    return
  end
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 + 5000
  L8_1 = L1_2
  L1_2 = A0_2.isUsed
  if L1_2 then
    L1_2 = Translation
    L1_2 = L1_2.Get
    L2_2 = "TABLE_USED"
    L1_2 = L1_2(L2_2)
    L6_1 = L1_2
    return
  end
  L1_2 = A0_2.nearbyPlayers
  L2_2 = s_myServerId
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    L1_2 = Translation
    L1_2 = L1_2.Get
    L2_2 = "NOT_CLOSE_ENOGUH"
    L1_2 = L1_2(L2_2)
    L6_1 = L1_2
    return
  end
  L1_2 = 0
  L2_2 = nil
  L3_2 = pairs
  L4_2 = A0_2.nearbyPlayers
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L1_2 = L1_2 + 1
    L9_2 = L8_2.playerId
    L10_2 = s_myServerId
    if L9_2 ~= L10_2 then
      L2_2 = L8_2
    end
  end
  if not L2_2 then
    L3_2 = Translation
    L3_2 = L3_2.Get
    L4_2 = "NOT_ENOUGH_PLAYERS"
    L3_2 = L3_2(L4_2)
    L6_1 = L3_2
    return
  end
  L3_2 = A0_2.players
  L3_2 = L3_2[1]
  if L3_2 then
    L3_2 = A0_2.players
    L3_2 = L3_2[1]
    L3_2 = L3_2.playerId
    L4_2 = s_myServerId
    if L3_2 == L4_2 then
      goto lbl_74
    end
  end
  L3_2 = A0_2.players
  L3_2 = L3_2[2]
  if L3_2 then
    L3_2 = A0_2.players
    L3_2 = L3_2[2]
    L3_2 = L3_2.playerId
    L4_2 = s_myServerId
    ::lbl_74::
    if L3_2 == L4_2 then
      L3_2 = Translation
      L3_2 = L3_2.Get
      L4_2 = "WAITING_FOR_OP_TO_JOIN"
      L3_2 = L3_2(L4_2)
      L6_1 = L3_2
      return
    end
  end
  L3_2 = Translation
  L3_2 = L3_2.Get
  L4_2 = "PRESS_TO_PLAY"
  L3_2 = L3_2(L4_2)
  L6_1 = L3_2
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "AirHockey:TableInfo"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "AirHockey:TableInfo"
function L36_1(A0_2)
  local L1_2, L2_2
  L1_2 = L22_1
  L2_2 = A0_2.tableCoords
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2.players
    L1_2.players = L2_2
  end
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "AirHockey:StakePaid"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "AirHockey:StakePaid"
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = SendToJavascript
  L2_2 = "ToggleBettingBar"
  L3_2 = true
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = Translation
  L5_2 = L5_2.Get
  L6_2 = "BETTINGS_INFOPANEL"
  L5_2 = L5_2(L6_2)
  L6_2 = FormatPrice
  L7_2 = A0_2
  L6_2, L7_2 = L6_2(L7_2)
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "AirHockey:ScoreChangedForTable"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "AirHockey:ScoreChangedForTable"
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L22_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = 1
    L4_2 = 2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2.players
      L7_2 = L7_2[L6_2]
      L8_2 = A1_2[L6_2]
      L8_2 = L8_2.score
      L7_2.score = L8_2
    end
  end
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "AirHockey:ScoreChanged"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "AirHockey:ScoreChanged"
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = s_Session
  if not L2_2 then
    return
  end
  L2_2 = A1_2.players
  L2_2 = L2_2[A0_2]
  if 1 == A0_2 then
    L3_2 = A1_2.players
    L3_2 = L3_2[1]
    L3_2 = L3_2.score
    if L3_2 then
      goto lbl_17
    end
  end
  L3_2 = A1_2.players
  L3_2 = L3_2[2]
  L3_2 = L3_2.score
  ::lbl_17::
  if 1 == A0_2 then
    L4_2 = A1_2.players
    L4_2 = L4_2[2]
    L4_2 = L4_2.score
    if L4_2 then
      goto lbl_27
    end
  end
  L4_2 = A1_2.players
  L4_2 = L4_2[1]
  L4_2 = L4_2.score
  ::lbl_27::
  L5_2 = SendToJavascript
  L6_2 = "ShowAnnounce"
  L7_2 = L3_2
  L8_2 = "-"
  L9_2 = L4_2
  L7_2 = L7_2 .. L8_2 .. L9_2
  L5_2(L6_2, L7_2)
  L5_2 = SendToJavascript
  L6_2 = "ScoreChanged"
  L7_2 = L2_2.playerId
  L8_2 = L2_2.score
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = Wait
    L1_3 = 2500
    L0_3(L1_3)
    L0_3 = SendToJavascript
    L1_3 = "ShowAnnounce"
    L0_3(L1_3)
    L0_3 = s_Session
    if not L0_3 then
      return
    end
    L0_3 = s_Session
    L0_3 = L0_3.host
    if L0_3 then
      L0_3 = L2_2.score
      L1_3 = s_Session
      L1_3 = L1_3.settings
      L1_3 = L1_3.maxScore
      if L0_3 >= L1_3 then
        L0_3 = {}
        L0_3.action = "end"
        L1_3 = s_Session
        L1_3 = L1_3.ballTravelDistance
        L0_3.ballTravelDistance = L1_3
        L1_3 = L2_2.side
        L0_3.winner = L1_3
        L1_3 = L3_2
        L0_3.winnerScore = L1_3
        L1_3 = L4_2
        L0_3.loserScore = L1_3
        L1_3 = opponentPeer
        L1_3 = L1_3.Send
        L2_3 = json
        L2_3 = L2_3.encode
        L3_3 = L0_3
        L2_3, L3_3, L4_3 = L2_3(L3_3)
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = L31_1
        L2_3 = L0_3
        L1_3(L2_3)
        L1_3 = Wait
        L2_3 = 3000
        L1_3(L2_3)
        L1_3 = TriggerServerEvent
        L2_3 = "AirHockey:MatchFinished"
        L3_3 = s_Session
        L3_3 = L3_3.table
        L3_3 = L3_3.tableCoords
        L4_3 = L0_3.winner
        L1_3(L2_3, L3_3, L4_3)
      else
        L0_3 = StartRound
        L0_3()
      end
    end
  end
  L5_2(L6_2)
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "AirHockey:Joined"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "AirHockey:Joined"
function L36_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "EDIT"
  L3_2 = "HUD_DEATHMATCH_SOUNDSET"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Translation
  L0_2 = L0_2.Get
  L1_2 = "WAITING_FOR_OP"
  L0_2 = L0_2(L1_2)
  L6_1 = L0_2
  L0_2 = 5000
  L8_1 = L0_2
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "AirHockey:StartMatch"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "AirHockey:StartMatch"
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = true
  L4_1 = L2_2
  L2_2 = A0_2.useFivem
  L1_1 = L2_2
  L2_2 = PeerJS
  L2_2.IgnoreErrorsAndDisconnects = true
  L2_2 = A0_2.players
  L2_2 = L2_2[1]
  if L2_2 then
    L2_2 = A0_2.players
    L2_2 = L2_2[1]
    L2_2 = L2_2.playerId
    L3_2 = s_myServerId
    L2_2 = L2_2 == L3_2
  end
  L3_2 = PeerJS
  L3_2 = L3_2.CreatePeer
  L4_2 = L1_1
  L5_2 = LocalPeer_Open
  L6_2 = LocalPeer_OnConnection
  L7_2 = LocalPeer_OnClose
  L8_2 = LocalPeer_OnDisconnected
  L9_2 = LocalPeer_OnError
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  localPeer = L3_2
  L3_2 = L22_1
  L4_2 = A0_2.tableCoords
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = L30_1
    L4_2()
    return
  end
  L4_2 = {}
  L4_2.recordPeds = false
  L4_2.roundNumber = 0
  L4_2.goals = 0
  L4_2.opSaves = 0
  L4_2.saves = 0
  L4_2.playerTravelDistance = 0
  L4_2.ballTravelDistance = 0
  L4_2.shotsOnNet = 0
  L4_2.closeToBallTime = 0
  L4_2.lastGoalTime = 0
  L4_2.sideTicking = false
  L4_2.playerMovement = false
  L4_2.ready = false
  L4_2.matchPeerId = "-1"
  L4_2.host = L2_2
  L4_2.roundStarted = false
  L4_2.playersJoined = false
  L4_2.ping = 0
  L4_2.table = L3_2
  L4_2.serverTable = A0_2
  L5_2 = {}
  L4_2.replayPack = L5_2
  s_Session = L4_2
  L4_2 = 1
  L5_2 = 2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2.players
    L8_2 = L8_2[L7_2]
    if L8_2 then
      L8_2 = A0_2.players
      L8_2 = L8_2[L7_2]
      L8_2 = L8_2.playerId
      L9_2 = s_myServerId
      if L8_2 ~= L9_2 then
        L8_2 = s_Session
        L9_2 = A0_2.players
        L9_2 = L9_2[L7_2]
        L9_2 = L9_2.playerId
        L8_2.opponentServerId = L9_2
      end
    end
  end
  L4_2 = L1_1
  L3_2.useFivem = L4_2
  L3_2.lastBallHit = 0
  L3_2.lastMovementUpdate = 0
  L3_2.lastReplayPack = 0
  L4_2 = L3_2.resetPositions
  L4_2()
  L4_2 = GetObjectOffsetFromCoords
  L5_2 = L3_2.tableCoords
  L6_2 = L3_2.tableHeading
  L7_2 = L3_2.playableMin
  L7_2 = L7_2.x
  L8_2 = L3_2.playableMin
  L8_2 = L8_2.y
  L9_2 = L3_2.playerZ
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.topLeft = L4_2
  L4_2 = GetObjectOffsetFromCoords
  L5_2 = L3_2.tableCoords
  L6_2 = L3_2.tableHeading
  L7_2 = L3_2.playableMax
  L7_2 = L7_2.x
  L8_2 = L3_2.playableMax
  L8_2 = L8_2.y
  L9_2 = L3_2.playerZ
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.bottomRight = L4_2
  L9_1 = A1_2
  L4_2 = A0_2.players
  L4_2 = #L4_2
  if L4_2 >= 2 then
    L4_2 = s_Session
    L4_2 = L4_2.table
    L4_2 = L4_2.enableIdleCamera
    L4_2()
    L4_2 = s_Session
    L4_2 = L4_2.table
    L4_2 = L4_2.createPlayableObjects
    L4_2()
    L4_2 = L22_1
    L5_2 = A0_2.tableCoords
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L5_2 = A0_2.players
      L4_2.players = L5_2
    end
    L5_2 = 1
    L6_2 = 2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = A0_2.players
      L9_2 = L9_2[L8_2]
      L9_2 = L9_2.playerId
      L10_2 = A0_2.players
      L10_2 = L10_2[L8_2]
      L11_2 = L9_1
      L11_2 = L11_2[L9_2]
      if not L11_2 then
        L11_2 = ""
      end
      L10_2.mugshot = L11_2
      L10_2 = s_myServerId
      if L9_2 == L10_2 then
        L10_2 = SetEntityCoordsNoOffset
        L11_2 = PlayerPedId
        L11_2 = L11_2()
        L12_2 = s_Session
        L12_2 = L12_2.table
        L12_2 = L12_2.getPlayerPosition
        L13_2 = A0_2.players
        L13_2 = L13_2[L8_2]
        L13_2 = L13_2.side
        L12_2, L13_2 = L12_2(L13_2)
        L10_2(L11_2, L12_2, L13_2)
        L10_2 = SetEntityHeading
        L11_2 = PlayerPedId
        L11_2 = L11_2()
        L12_2 = s_Session
        L12_2 = L12_2.table
        L12_2 = L12_2.tableHeading
        L13_2 = A0_2.players
        L13_2 = L13_2[L8_2]
        L13_2 = L13_2.side
        if 2 == L13_2 then
          L13_2 = 180.0
          if L13_2 then
            goto lbl_174
          end
        end
        L13_2 = 0.0
        ::lbl_174::
        L12_2 = L12_2 + L13_2
        L10_2(L11_2, L12_2)
      end
    end
    L5_2 = CreateThread
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = 1
      L1_3 = 5
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = Wait
        L5_3 = 1000
        L4_3(L5_3)
        L4_3 = s_Session
        if L4_3 then
          L4_3 = s_Session
          L4_3 = L4_3.playersJoined
          if L4_3 then
            break
          end
        end
      end
      L0_3 = s_Session
      if L0_3 then
        L0_3 = s_Session
        L0_3 = L0_3.playersJoined
        if L0_3 then
          goto lbl_39
        end
      end
      L0_3 = L4_1
      if L0_3 then
        L0_3 = L1_1
        if not L0_3 then
          L0_3 = L2_2
          if L0_3 then
            L0_3 = TriggerServerEvent
            L1_3 = "AirHockey:SwitchToFiveM"
            L2_3 = A0_2.tableCoords
            L0_3(L1_3, L2_3)
          end
        else
          L0_3 = L30_1
          L0_3()
        end
      end
      ::lbl_39::
      L0_3 = false
      L4_1 = L0_3
      L0_3 = PeerJS
      L0_3.IgnoreErrorsAndDisconnects = false
    end
    L5_2(L6_2)
  end
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "AirHockey:StartWatch"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "AirHockey:StartWatch"
function L36_1(A0_2)
  local L1_2, L2_2
  L1_2 = L22_1
  L2_2 = A0_2.tableCoords
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2.players
    L1_2.players = L2_2
  end
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "AirHockey:MatchFinished"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "AirHockey:MatchFinished"
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = s_Session
  if L2_2 then
    L2_2 = s_Session
    L2_2 = L2_2.finished
    if L2_2 then
      return
    end
  end
  if -1 == A1_2 then
    L2_2 = PlaySoundFrontend
    L3_2 = -1
    L4_2 = "Bomb_Disarmed"
    L5_2 = "GTAO_Speed_Convoy_Soundset"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = FullscreenPrompt
    L3_2 = Translation
    L3_2 = L3_2.Get
    L4_2 = "MATCH_CANCELLED"
    L3_2 = L3_2(L4_2)
    L4_2 = Translation
    L4_2 = L4_2.Get
    L5_2 = "MATCH_CANCELLED_DESC"
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L30_1
  L2_2()
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "AirHockey:ServerReady"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "AirHockey:ServerReady"
function L36_1(A0_2)
  local L1_2
  L1_2 = s_Session
  if not L1_2 then
    return
  end
  L1_2 = s_Session
  L1_2.matchPeerId = A0_2
  L1_2 = L25_1
  L1_2()
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "AirHockey:ReplayPack"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "AirHockey:ReplayPack"
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L22_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L2_2.players
  if L3_2 then
    L3_2 = 1
    L4_2 = 2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2.players
      L7_2 = L7_2[L6_2]
      if L7_2 then
        L7_2 = L2_2.players
        L7_2 = L7_2[L6_2]
        L7_2 = L7_2.playerId
        L8_2 = s_myServerId
        if L7_2 == L8_2 then
          return
        end
      end
    end
  end
  L3_2 = L2_2.replayPackReceived
  L4_2 = A1_2
  L3_2(L4_2)
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  lastPackReceivedTime = L3_2
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "AirHockey:GetInfo"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "AirHockey:GetInfo"
function L36_1(A0_2)
  local L1_2
  s_myServerId = A0_2
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "AirHockey:WonStake"
L34_1(L35_1)
L34_1 = AddEventHandler
L35_1 = "AirHockey:WonStake"
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PlaySoundFrontend
  L2_2 = -1
  L3_2 = "Goon_Paid_Large"
  L4_2 = "GTAO_Boss_Goons_FM_Soundset"
  L1_2(L2_2, L3_2, L4_2)
end
L34_1(L35_1, L36_1)
L34_1 = AddEventHandler
L35_1 = "onResourceStop"
function L36_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = L23_1
  L1_2()
end
L34_1(L35_1, L36_1)
function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = pairs
  L2_2 = Objects
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.pos
    L7_2 = L7_2 - A0_2
    L7_2 = #L7_2
    L8_2 = Config
    L8_2 = L8_2.SpawnDistance
    if L7_2 < L8_2 then
      L7_2 = L6_2.entity
      if L7_2 then
        L7_2 = DoesEntityExist
        L8_2 = L6_2.entity
        L7_2 = L7_2(L8_2)
        if L7_2 then
          goto lbl_61
        end
      end
      L7_2 = RequestModel
      L8_2 = Models
      L8_2 = L8_2.Table
      L7_2(L8_2)
      while true do
        L7_2 = HasModelLoaded
        L8_2 = Models
        L8_2 = L8_2.Table
        L7_2 = L7_2(L8_2)
        if L7_2 then
          break
        end
        L7_2 = Wait
        L8_2 = 33
        L7_2(L8_2)
      end
      L7_2 = CreateObject
      L8_2 = Models
      L8_2 = L8_2.Table
      L9_2 = L6_2.pos
      L10_2 = false
      L11_2 = false
      L12_2 = false
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      L6_2.entity = L7_2
      L7_2 = SetEntityHeading
      L8_2 = L6_2.entity
      L9_2 = L6_2.heading
      L7_2(L8_2, L9_2)
    else
      L7_2 = L6_2.entity
      if L7_2 then
        L7_2 = DoesEntityExist
        L8_2 = L6_2.entity
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = DeleteEntity
          L8_2 = L6_2.entity
          L7_2(L8_2)
          L6_2.entity = nil
        end
      end
    end
    ::lbl_61::
  end
end
L35_1 = CreateThread
function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  while true do
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    L2_2 = Config
    L2_2 = L2_2.NotifySystem
    if 1 ~= L2_2 then
      L2_2 = L7_1
      L3_2 = L6_1
      if L2_2 ~= L3_2 then
        L2_2 = ShowCustomNotify
        L3_2 = L6_1
        L2_2(L3_2)
        L2_2 = L6_1
        L7_1 = L2_2
      end
    end
    L2_2 = L6_1
    if L2_2 then
      L2_2 = DrawNotification
      L3_2 = L6_1
      L2_2(L3_2)
      L2_2 = L8_1
      if L1_2 > L2_2 then
        L2_2 = nil
        L6_1 = L2_2
      end
      L2_2 = IsControlJustPressed
      L3_2 = 2
      L4_2 = Keys
      L4_2 = L4_2.Action
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L2_2 = L33_1
        L2_2()
      end
    end
    L2_2 = s_Session
    if L2_2 then
      L2_2 = HideHudAndRadarThisFrame
      L2_2()
      L2_2 = RestrictControls
      L2_2()
      L2_2 = s_Session
      L2_2 = L2_2.playersJoined
      if L2_2 then
        L2_2 = s_Session
        L2_2 = L2_2.finished
        if not L2_2 then
          L2_2 = L1_2 - L0_2
          L3_2 = 1500
          if L2_2 > L3_2 then
            L2_2 = s_Session
            L3_2 = GetGameTimer
            L3_2 = L3_2()
            L2_2.pingSendTime = L3_2
            L2_2 = opponentPeer
            L2_2 = L2_2.Send
            L3_2 = json
            L3_2 = L3_2.encode
            L4_2 = {}
            L4_2.action = "ping"
            L3_2, L4_2 = L3_2(L4_2)
            L2_2(L3_2, L4_2)
            L0_2 = L1_2
          end
        end
      end
      L2_2 = IsControlJustPressed
      L3_2 = 2
      L4_2 = 200
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L2_2 = L30_1
        L2_2()
        L2_2 = RageUI
        L2_2 = L2_2.CloseAll
        L2_2()
        L2_2 = nil
        L10_1 = L2_2
        L2_2 = nil
        L11_1 = L2_2
      end
    end
    L2_2 = s_Session
    if not L2_2 then
      L2_2 = L6_1
      if not L2_2 then
        L2_2 = L5_1
        if not L2_2 then
          goto lbl_99
        end
      end
    end
    L2_2 = 0
    ::lbl_99::
    if not L2_2 then
      L2_2 = 250
    end
    L3_2 = Wait
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L35_1(L36_1)
L35_1 = CreateThread
function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Wait
  L1_2 = 3000
  L0_2(L1_2)
  L0_2 = false
  while true do
    L1_2 = GetEntityCoords
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2 = s_Session
    if not L2_2 then
      L2_2 = GetClosestObjectOfType
      L3_2 = L1_2
      L4_2 = 25.0
      L5_2 = Models
      L5_2 = L5_2.Table
      L6_2 = false
      L7_2 = false
      L8_2 = false
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      L2_2 = 0 ~= L2_2
      if not L2_2 then
        if L2_2 == L0_2 then
          goto lbl_44
        end
        L3_2 = s_Session
        if L3_2 then
          goto lbl_44
        end
      end
      L3_2 = L32_1
      L3_2, L4_2 = L3_2()
      if L3_2 then
        L5_2 = L24_1
        L5_2()
      end
      if L4_2 <= 2.0 then
        L5_2 = s_Session
        if not L5_2 then
          L5_1 = L3_2
        end
      end
      ::lbl_44::
      L0_2 = L2_2
    else
      L2_2 = nil
      L5_1 = L2_2
    end
    L2_2 = L34_1
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 2000
    L2_2(L3_2)
  end
end
L35_1(L36_1)
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = s_Session
  if L1_2 then
    L1_2 = s_Session
    L1_2.ready = true
    L1_2 = s_Session
    L1_2 = L1_2.host
    if L1_2 then
      L1_2 = s_Session
      L1_2.matchPeerId = A0_2
    end
    L1_2 = s_Session
    L1_2 = L1_2.table
    L1_2 = L1_2.enableCamera
    L1_2()
    L1_2 = SendToJavascript
    L2_2 = "ToggleLoading"
    L3_2 = Translation
    L3_2 = L3_2.Get
    L4_2 = "STARTING"
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = s_Session
    L1_2 = L1_2.host
    if L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "AirHockey:ServerReady"
      L3_2 = s_Session
      L3_2 = L3_2.table
      L3_2 = L3_2.tableCoords
      L4_2 = s_Session
      L4_2 = L4_2.matchPeerId
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = L26_1
      L1_2()
    end
  else
    L1_2 = L30_1
    L1_2()
  end
end
LocalPeer_Open = L35_1
function L35_1(A0_2)
  local L1_2, L2_2
  L1_2 = OpponentPeer_AssignEvents
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = L1_1
  if L1_2 then
    L1_2 = OpponentPeer_OnOpen
    L1_2()
  end
end
LocalPeer_OnConnection = L35_1
function L35_1()
  local L0_2, L1_2
  L0_2 = L30_1
  L0_2()
end
LocalPeer_OnClose = L35_1
function L35_1()
  local L0_2, L1_2
  L0_2 = L30_1
  L0_2()
end
LocalPeer_OnDisconnected = L35_1
function L35_1(A0_2)
  local L1_2
  L1_2 = L30_1
  L1_2()
end
LocalPeer_OnError = L35_1
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = s_Session
  if L0_2 then
    L0_2 = s_Session
    L0_2.playersJoined = true
    L0_2 = s_Session
    L0_2 = L0_2.serverTable
    if L0_2 then
      L0_2 = s_Session
      L0_2 = L0_2.serverTable
      L0_2 = L0_2.players
      if L0_2 then
        L0_2 = pairs
        L1_2 = s_Session
        L1_2 = L1_2.serverTable
        L1_2 = L1_2.players
        L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
        for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
          L6_2 = L5_2.playerId
          L7_2 = s_myServerId
          if L6_2 == L7_2 then
            L6_2 = s_Session
            L7_2 = L5_2.side
            L6_2.localSide = L7_2
          end
        end
      end
    end
    L0_2 = s_Session
    L0_2 = L0_2.localSide
    if 1 == L0_2 then
      L0_2 = 3
      L2_1 = L0_2
    else
      L0_2 = 1
      L2_1 = L0_2
    end
    L0_2 = s_Session
    L0_2 = L0_2.host
    if L0_2 then
      L0_2 = s_Session
      L1_2 = GetGameTimer
      L1_2 = L1_2()
      L0_2.pingSendTime = L1_2
      L0_2 = opponentPeer
      L0_2 = L0_2.Send
      L1_2 = json
      L1_2 = L1_2.encode
      L2_2 = {}
      L2_2.action = "ping"
      L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2(L2_2)
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
      L0_2 = L21_1
      L0_2()
    else
      L0_2 = s_Session
      L0_2 = L0_2.serverTable
      L0_2 = L0_2.players
      L0_2 = L0_2[1]
      L0_2 = L0_2.name
      L1_2 = SendToJavascript
      L2_2 = "ToggleLoading"
      L3_2 = string
      L3_2 = L3_2.format
      L4_2 = Translation
      L4_2 = L4_2.Get
      L5_2 = "WAITING_FOR_HOST"
      L4_2 = L4_2(L5_2)
      L5_2 = L0_2
      L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
      L1_2 = L20_1
      L1_2()
    end
  end
end
OpponentPeer_OnOpen = L35_1
function L35_1()
  local L0_2, L1_2
  L0_2 = L30_1
  L0_2()
end
OpponentPeer_OnClose = L35_1
function L35_1(A0_2)
  local L1_2
  L1_2 = L30_1
  L1_2()
end
OpponentPeer_OnError = L35_1
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = s_Session
  if not L1_2 then
    return
  end
  L1_2 = json
  L1_2 = L1_2.decode
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.action
    if L2_2 then
      L2_2 = L1_2.action
      if "go" == L2_2 then
        L2_2 = L1_2.hostSkin
        L3_1 = L2_2
        L2_2 = s_Session
        L2_2.settings = L1_2
        L2_2 = PrepareMatch
        L2_2()
      else
        L2_2 = L1_2.action
        if "ongoal" == L2_2 then
          L2_2 = OnGoal
          L3_2 = L1_2.net
          L4_2 = false
          L2_2(L3_2, L4_2)
        else
          L2_2 = L1_2.action
          if "opready" == L2_2 then
            L2_2 = true
            L13_1 = L2_2
            L2_2 = L1_2.paddleSkin
            L3_1 = L2_2
          else
            L2_2 = L1_2.action
            if "end" == L2_2 then
              L2_2 = L31_1
              L3_2 = L1_2
              L2_2(L3_2)
            else
              L2_2 = L1_2.action
              if "startsin" == L2_2 then
                L2_2 = L1_2.seconds
                L3_2 = L27_1
                L4_2 = L2_2
                L3_2(L4_2)
              else
                L2_2 = L1_2.action
                if "opcoords" == L2_2 then
                  L2_2 = s_Session
                  L2_2 = L2_2.table
                  L2_2 = L2_2.opCoordsReceived
                  L3_2 = L1_2
                  L2_2(L3_2)
                else
                  L2_2 = L1_2.action
                  if "startround" == L2_2 then
                    L2_2 = s_Session
                    L2_2.roundStarted = true
                    L2_2 = s_Session
                    L3_2 = L1_2.roundNumber
                    L2_2.roundNumber = L3_2
                    L2_2 = SummonObjectsAtCoords
                    L3_2 = L1_2
                    L2_2(L3_2)
                  else
                    L2_2 = L1_2.action
                    if "phit" == L2_2 then
                      L2_2 = s_Session
                      L2_2 = L2_2.table
                      L2_2 = L2_2.opHitReceived
                      L3_2 = L1_2
                      L2_2(L3_2)
                    else
                      L2_2 = L1_2.action
                      if "toggleMovement" == L2_2 then
                        L2_2 = ToggleMovement
                        L3_2 = L1_2.toggle
                        L2_2(L3_2)
                      else
                        L2_2 = L1_2.action
                        if "ping" == L2_2 then
                          L2_2 = {}
                          L2_2.action = "pong"
                          L3_2 = s_Session
                          if L3_2 then
                            L3_2 = s_Session
                            L3_2 = L3_2.host
                            if L3_2 then
                              L3_2 = GetGameTimer
                              L3_2 = L3_2()
                              L2_2.hostTime = L3_2
                            end
                          end
                          L3_2 = opponentPeer
                          if L3_2 then
                            L3_2 = opponentPeer
                            L3_2 = L3_2.Send
                            L4_2 = json
                            L4_2 = L4_2.encode
                            L5_2 = L2_2
                            L4_2, L5_2 = L4_2(L5_2)
                            L3_2(L4_2, L5_2)
                          end
                        else
                          L2_2 = L1_2.action
                          if "pong" == L2_2 then
                            L2_2 = s_Session
                            if L2_2 then
                              L2_2 = s_Session
                              L2_2 = L2_2.pingSendTime
                              if L2_2 then
                                L2_2 = GetGameTimer
                                L2_2 = L2_2()
                                L3_2 = s_Session
                                L3_2 = L3_2.pingSendTime
                                L2_2 = L2_2 - L3_2
                                L3_2 = SendToJavascript
                                L4_2 = "SetPing"
                                L5_2 = L2_2
                                L3_2(L4_2, L5_2)
                                L3_2 = s_Session
                                L3_2.ping = L2_2
                                L3_2 = L1_2.hostTime
                                if L3_2 then
                                  L3_2 = L1_2.hostTime
                                  L4_2 = L2_2 / 2
                                  L3_2 = L3_2 + L4_2
                                  L4_2 = s_Session
                                  L4_2.hostTime = L3_2
                                  L4_2 = s_Session
                                  L5_2 = GetGameTimer
                                  L5_2 = L5_2()
                                  L4_2.hostTimeStarted = L5_2
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
      end
    end
  end
end
OpponentPeer_OnData = L35_1
function L35_1()
  local L0_2, L1_2
  L0_2 = s_Session
  if L0_2 then
    L0_2 = s_Session
    L0_2 = L0_2.hostTime
    if L0_2 then
      L0_2 = s_Session
      L0_2 = L0_2.host
      if not L0_2 then
        goto lbl_15
      end
    end
  end
  L0_2 = GetGameTimer
  do return L0_2() end
  ::lbl_15::
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = s_Session
  L1_2 = L1_2.hostTimeStarted
  L0_2 = L0_2 - L1_2
  L1_2 = s_Session
  L1_2 = L1_2.hostTime
  L1_2 = L1_2 + L0_2
  return L1_2
end
GetSyncedGameTimer = L35_1
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  opponentPeer = A0_2
  L1_2 = PeerJS
  L1_2 = L1_2.AssignConnectionEvents
  L2_2 = A0_2.connId
  L3_2 = OpponentPeer_OnOpen
  L4_2 = OpponentPeer_OnClose
  L5_2 = OpponentPeer_OnError
  L6_2 = OpponentPeer_OnData
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
OpponentPeer_AssignEvents = L35_1
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = RageUI
  L0_2 = L0_2.CloseAll
  L0_2()
  L0_2 = SendToJavascript
  L1_2 = "ToggleGameInfo"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SendToJavascript
  L1_2 = "ToggleHockeyUI"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = s_Session
  L0_2 = L0_2.serverTable
  L1_2 = 1
  L2_2 = 2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = s_Session
    L5_2 = L5_2.table
    L5_2 = L5_2.playerData
    L5_2 = L5_2[L4_2]
    L6_2 = s_Session
    L6_2 = L6_2.table
    L6_2 = L6_2.localSide
    if L4_2 == L6_2 then
      L6_2 = L2_1
      L5_2.skin = L6_2
    else
      L6_2 = L3_1
      L5_2.skin = L6_2
    end
  end
  L1_2 = 1
  L2_2 = 2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_2.players
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.playerId
    L6_2 = s_myServerId
    if L5_2 == L6_2 then
      L5_2 = L0_2.players
      L5_2 = L5_2[L4_2]
      L6_2 = L2_1
      L5_2.skin = L6_2
    else
      L5_2 = L0_2.players
      L5_2 = L5_2[L4_2]
      L6_2 = L3_1
      L5_2.skin = L6_2
    end
  end
  L1_2 = s_Session
  L1_2 = L1_2.table
  L1_2 = L1_2.ballData
  L2_2 = s_Session
  L2_2 = L2_2.settings
  L2_2 = L2_2.puckSkin
  L1_2.skin = L2_2
  L1_2 = SendToJavascript
  L2_2 = "FillPlayerData"
  L3_2 = L0_2.players
  L3_2 = L3_2[1]
  L3_2 = L3_2.name
  L4_2 = L0_2.players
  L4_2 = L4_2[1]
  L4_2 = L4_2.mugshot
  L5_2 = L0_2.players
  L5_2 = L5_2[1]
  L5_2 = L5_2.skin
  L6_2 = L0_2.players
  L6_2 = L6_2[1]
  L6_2 = L6_2.playerId
  L7_2 = L0_2.players
  L7_2 = L7_2[2]
  L7_2 = L7_2.name
  L8_2 = L0_2.players
  L8_2 = L8_2[2]
  L8_2 = L8_2.mugshot
  L9_2 = L0_2.players
  L9_2 = L9_2[2]
  L9_2 = L9_2.skin
  L10_2 = L0_2.players
  L10_2 = L10_2[2]
  L10_2 = L10_2.playerId
  L11_2 = s_myServerId
  L12_2 = s_Session
  L12_2 = L12_2.settings
  L12_2 = L12_2.maxScore
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L1_2 = pairs
  L2_2 = s_Session
  L2_2 = L2_2.serverTable
  L2_2 = L2_2.players
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.playerId
    L8_2 = s_myServerId
    if L7_2 == L8_2 then
      L7_2 = s_Session
      L8_2 = L6_2.side
      L7_2.localSide = L8_2
      L7_2 = s_Session
      L7_2 = L7_2.table
      L8_2 = L6_2.side
      L7_2.localSide = L8_2
      L7_2 = s_Session
      L7_2 = L7_2.table
      L7_2 = L7_2.startAiming
      L7_2()
    end
  end
end
PrepareMatch = L35_1
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = s_Session
  if L1_2 then
    L1_2 = s_Session
    L1_2 = L1_2.host
    if L1_2 then
      L1_2 = opponentPeer
      L1_2 = L1_2.Send
      L2_2 = json
      L2_2 = L2_2.encode
      L3_2 = {}
      L3_2.action = "toggleMovement"
      L3_2.toggle = A0_2
      L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
  L1_2 = s_Session
  L1_2.playerMovement = A0_2
  L1_2 = 1
  L2_2 = 2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = s_Session
    L5_2 = L5_2.table
    L5_2 = L5_2.playerData
    L5_2 = L5_2[L4_2]
    if A0_2 then
      L6_2 = L5_2.summonMouseCoords
      L5_2.actualPosition = L6_2
      L5_2.moveSpeed = 1.5
    else
      L5_2.moveSpeed = 0
    end
  end
end
ToggleMovement = L35_1
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = s_Session
  L1_2 = L1_2.table
  L2_2 = L1_2.summonObjectAtCoords
  L3_2 = 2
  L4_2 = A0_2.side1spawn
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.summonObjectAtCoords
  L3_2 = 3
  L4_2 = A0_2.side2spawn
  L2_2(L3_2, L4_2)
  L2_2 = s_Session
  L2_2 = L2_2.roundNumber
  L2_2 = L2_2 % 2
  L2_2 = 0 == L2_2
  L3_2 = vector2
  L4_2 = 0.0
  if L2_2 then
    L5_2 = 0.15
    if L5_2 then
      goto lbl_27
    end
  end
  L5_2 = -0.15
  ::lbl_27::
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_2.summonObjectAtCoords
  L5_2 = 1
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
SummonObjectsAtCoords = L35_1
function L35_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = s_Session
  if L0_2 then
    L0_2 = s_Session
    L0_2 = L0_2.host
    if L0_2 then
      L0_2 = s_Session
      L0_2 = L0_2.roundStarted
      if not L0_2 then
        goto lbl_13
      end
    end
  end
  do return end
  ::lbl_13::
  L0_2 = s_Session
  L0_2.roundStarted = true
  L0_2 = s_Session
  L1_2 = s_Session
  L1_2 = L1_2.roundNumber
  L1_2 = L1_2 + 1
  L0_2.roundNumber = L1_2
  L0_2 = true
  L15_1 = L0_2
  L0_2 = {}
  L0_2.action = "startround"
  L1_2 = RandomNumber
  L2_2 = 1
  L3_2 = 2
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.side1spawn = L1_2
  L1_2 = RandomNumber
  L2_2 = 1
  L3_2 = 2
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = 2 + L1_2
  L0_2.side2spawn = L1_2
  L1_2 = L2_1
  L0_2.hostSkin = L1_2
  L1_2 = s_Session
  L1_2 = L1_2.roundNumber
  L0_2.roundNumber = L1_2
  L1_2 = opponentPeer
  L1_2 = L1_2.Send
  L2_2 = json
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2, L3_2 = L2_2(L3_2)
  L1_2(L2_2, L3_2)
  L1_2 = SummonObjectsAtCoords
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = 3
    L1_3 = 0
    L2_3 = -1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = s_Session
      if L4_3 then
        L4_3 = s_Session
        L4_3 = L4_3.roundStarted
        if L4_3 then
          L4_3 = L27_1
          L5_3 = L3_3
          L4_3(L5_3)
          if 1 == L3_3 then
            L4_3 = s_Session
            L4_3.recordPeds = true
          end
          L4_3 = Wait
          L5_3 = 1000
          L4_3(L5_3)
        end
      end
    end
    L0_3 = s_Session
    if L0_3 then
      L0_3 = s_Session
      L0_3 = L0_3.roundStarted
      if L0_3 then
        L0_3 = ToggleMovement
        L1_3 = true
        L0_3(L1_3)
      end
    end
  end
  L1_2(L2_2)
end
StartRound = L35_1

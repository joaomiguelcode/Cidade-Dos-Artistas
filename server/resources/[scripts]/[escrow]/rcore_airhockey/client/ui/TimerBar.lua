local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
TimerBar = L0_1
L0_1 = TimerBar
L0_1.gfxAlignWidth = 0.952
L0_1 = TimerBar
L0_1.gfxAlignHeight = 0.949
L0_1 = TimerBar
L0_1.initialX = 0.795
L0_1 = TimerBar
L0_1.initialY = 0.923
L0_1 = TimerBar
L0_1.initialBusySpinnerY = 0.887
L0_1 = TimerBar
L0_1.bgBaseX = 0.874
L0_1 = TimerBar
L0_1.progressBaseX = 0.913
L0_1 = TimerBar
L0_1.checkpointBaseX = 0.9445
L0_1 = TimerBar
L0_1.bgOffset = 0.008
L0_1 = TimerBar
L0_1.bgThinOffset = 0.012
L0_1 = TimerBar
L0_1.textOffset = -0.006
L0_1 = TimerBar
L0_1.playerTitleOffset = -0.005
L0_1 = TimerBar
L0_1.barOffset = 0.012
L0_1 = TimerBar
L0_1.checkpointOffsetX = 0.0094
L0_1 = TimerBar
L0_1.checkpointOffsetY = 0.012
L0_1 = TimerBar
L0_1.timerBarWidth = 0.165
L0_1 = TimerBar
L0_1.timerBarHeight = 0.035
L0_1 = TimerBar
L0_1.timerBarThinHeight = 0.028
L0_1 = TimerBar
L0_1.timerBarMargin = 0.0399
L0_1 = TimerBar
L0_1.timerBarThinMargin = 0.0319
L0_1 = TimerBar
L0_1.progressWidth = 0.069
L0_1 = TimerBar
L0_1.progressHeight = 0.011
L0_1 = TimerBar
L0_1.checkpointWidth = 0.012
L0_1 = TimerBar
L0_1.checkpointHeight = 0.023
L0_1 = TimerBar
L0_1.titleScale = 0.288
L0_1 = TimerBar
L0_1.titleWrap = 0.867
L0_1 = TimerBar
L0_1.textScale = 0.494
L0_1 = TimerBar
L0_1.textWrap = 0.95
L0_1 = TimerBar
L0_1.playertitleScale = 0.447
L0_1 = TimerBar
L0_1.timerbarUnique = 0
L0_1 = TimerBar
L1_1 = {}
L0_1.pool = L1_1
L0_1 = TimerBar
L0_1.Progress = 0
L0_1 = TimerBar
L0_1.Player = 1
L0_1 = TimerBar
L0_1.Text = 2
L0_1 = TimerBar
L0_1.Checkpoint = 3
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Config
  L3_2 = L3_2.UIFontID
  A2_2.font = L3_2
  L3_2 = SetTextFont
  L4_2 = A2_2.font
  L3_2(L4_2)
  L3_2 = SetTextScale
  L4_2 = 0.0
  L5_2 = A2_2.scale
  L3_2(L4_2, L5_2)
  L3_2 = SetTextColour
  L4_2 = A2_2.color
  L4_2 = L4_2[1]
  L5_2 = A2_2.color
  L5_2 = L5_2[2]
  L6_2 = A2_2.color
  L6_2 = L6_2[3]
  L7_2 = A2_2.color
  L7_2 = L7_2[4]
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetTextJustification
  L4_2 = A2_2.justification
  L3_2(L4_2)
  L3_2 = A2_2.wrap
  if L3_2 then
    L3_2 = SetTextWrap
    L4_2 = 0.0
    L5_2 = A2_2.wrap
    L3_2(L4_2, L5_2)
  end
  L3_2 = A2_2.shadow
  if L3_2 then
    L3_2 = SetTextDropShadow
    L3_2()
  end
  L3_2 = A2_2.outline
  if L3_2 then
    L3_2 = SetTextOutline
    L3_2()
  end
  L3_2 = BeginTextCommandDisplayText
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = EndTextCommandDisplayText
  L4_2 = A1_2[1]
  L5_2 = A1_2[2]
  L3_2(L4_2, L5_2)
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = TimerBar
  L3_2 = TimerBar
  L3_2 = L3_2.timerbarUnique
  L3_2 = L3_2 + 1
  L2_2.timerbarUnique = L3_2
  L2_2 = TimerBar
  L2_2 = L2_2.timerbarUnique
  L1_2._id = L2_2
  L1_2._thin = false
  L1_2._highlightColor = nil
  L2_2 = "TMRB_TITLE_"
  L3_2 = L1_2._id
  L2_2 = L2_2 .. L3_2
  L1_2._titleGxtName = L2_2
  L1_2._title = A0_2
  L2_2 = AddTextEntry
  L3_2 = L1_2._titleGxtName
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L2_2.font = 0
  L3_2 = {}
  L4_2 = 240
  L5_2 = 240
  L6_2 = 240
  L7_2 = 255
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L2_2.color = L3_2
  L3_2 = TimerBar
  L3_2 = L3_2.titleScale
  L2_2.scale = L3_2
  L2_2.justification = 2
  L3_2 = TimerBar
  L3_2 = L3_2.titleWrap
  L2_2.wrap = L3_2
  L2_2.shadow = false
  L2_2.outline = false
  L1_2.titleDrawParams = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_2._title = A0_3
    L1_3 = AddTextEntry
    L2_3 = L1_2._titleGxtName
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2.setTitle = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_3 = L1_2.titleDrawParams
    L1_3.color = A0_3
  end
  L1_2.setTitleColor = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2._highlightColor = A0_3
  end
  L1_2.setHighlightColor = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = L1_2._thin
    if L1_3 then
      L1_3 = TimerBar
      L1_3 = L1_3.bgThinOffset
      if L1_3 then
        goto lbl_10
      end
    end
    L1_3 = TimerBar
    L1_3 = L1_3.bgThinOffset
    ::lbl_10::
    A0_3 = A0_3 + L1_3
    L1_3 = L1_2._highlightColor
    if L1_3 then
      L1_3 = DrawSprite
      L2_3 = "timerbars"
      L3_3 = "all_white_bg"
      L4_3 = TimerBar
      L4_3 = L4_3.bgBaseX
      L5_3 = A0_3
      L6_3 = TimerBar
      L6_3 = L6_3.timerBarWidth
      L7_3 = L1_2._thin
      if L7_3 then
        L7_3 = TimerBar
        L7_3 = L7_3.timerBarThinHeight
        if L7_3 then
          goto lbl_32
        end
      end
      L7_3 = TimerBar
      L7_3 = L7_3.timerBarHeight
      ::lbl_32::
      L8_3 = 0.0
      L9_3 = L1_2._highlightColor
      L9_3 = L9_3[1]
      L10_3 = L1_2._highlightColor
      L10_3 = L10_3[2]
      L11_3 = L1_2._highlightColor
      L11_3 = L11_3[3]
      L12_3 = L1_2._highlightColor
      L12_3 = L12_3[4]
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    end
    L1_3 = DrawSprite
    L2_3 = "timerbars"
    L3_3 = "all_black_bg"
    L4_3 = TimerBar
    L4_3 = L4_3.bgBaseX
    L5_3 = A0_3
    L6_3 = TimerBar
    L6_3 = L6_3.timerBarWidth
    L7_3 = L1_2._thin
    if L7_3 then
      L7_3 = TimerBar
      L7_3 = L7_3.timerBarThinHeight
      if L7_3 then
        goto lbl_59
      end
    end
    L7_3 = TimerBar
    L7_3 = L7_3.timerBarHeight
    ::lbl_59::
    L8_3 = 0.0
    L9_3 = 255
    L10_3 = 255
    L11_3 = 255
    L12_3 = 140
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
  end
  L1_2.drawBackground = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L0_1
    L2_3 = L1_2._titleGxtName
    L3_3 = {}
    L4_3 = TimerBar
    L4_3 = L4_3.initialX
    L5_3 = A0_3
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L4_3 = L1_2.titleDrawParams
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2.drawTitle = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = L1_2.drawBackground
    L2_3 = A0_3
    L1_3(L2_3)
    L1_3 = L1_2.drawTitle
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L1_2.draw = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = AddTextEntry
    L1_3 = L1_2._titleGxtName
    L2_3 = ""
    L0_3(L1_3, L2_3)
  end
  L1_2.onDestroy = L2_2
  return L1_2
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = L1_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.base = L3_2
  L3_2 = L2_2.base
  L3_2._thin = false
  L3_2 = {}
  L4_2 = 155
  L5_2 = 155
  L6_2 = 155
  L7_2 = 255
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L2_2._bgColor = L3_2
  L3_2 = {}
  L4_2 = 240
  L5_2 = 240
  L6_2 = 240
  L7_2 = 255
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L2_2._fgColor = L3_2
  L2_2._fgWidth = 0.0
  L2_2._fgX = 0.0
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = Clamp
    L2_3 = A0_3
    L3_3 = 0.0
    L4_3 = 1.0
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L2_2._progress = L1_3
    L1_3 = TimerBar
    L1_3 = L1_3.progressWidth
    L2_3 = L2_2._progress
    L1_3 = L1_3 * L2_3
    L2_2._fgWidth = L1_3
    L1_3 = TimerBar
    L1_3 = L1_3.progressBaseX
    L2_3 = TimerBar
    L2_3 = L2_3.progressWidth
    L2_3 = L2_3 * 0.5
    L1_3 = L1_3 - L2_3
    L2_3 = L2_2._fgWidth
    L2_3 = L2_3 * 0.5
    L1_3 = L1_3 + L2_3
    L2_2._fgX = L1_3
  end
  L2_2.setProgress = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = L2_2.base
    L1_3 = L1_3.draw
    L2_3 = A0_3
    L1_3(L2_3)
    L1_3 = TimerBar
    L1_3 = L1_3.barOffset
    A0_3 = A0_3 + L1_3
    L1_3 = DrawRect
    L2_3 = TimerBar
    L2_3 = L2_3.progressBaseX
    L3_3 = A0_3
    L4_3 = TimerBar
    L4_3 = L4_3.progressWidth
    L5_3 = TimerBar
    L5_3 = L5_3.progressHeight
    L6_3 = L2_2._bgColor
    L6_3 = L6_3[1]
    L7_3 = L2_2._bgColor
    L7_3 = L7_3[2]
    L8_3 = L2_2._bgColor
    L8_3 = L8_3[3]
    L9_3 = L2_2._bgColor
    L9_3 = L9_3[4]
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L1_3 = DrawRect
    L2_3 = L2_2._fgX
    L3_3 = A0_3
    L4_3 = L2_2._fgWidth
    L5_3 = TimerBar
    L5_3 = L5_3.progressHeight
    L6_3 = L2_2._fgColor
    L6_3 = L6_3[1]
    L7_3 = L2_2._fgColor
    L7_3 = L7_3[2]
    L8_3 = L2_2._fgColor
    L8_3 = L8_3[3]
    L9_3 = L2_2._fgColor
    L9_3 = L9_3[4]
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
  end
  L2_2.draw = L3_2
  function L3_2(A0_3)
    local L1_3
    L2_2._bgColor = A0_3
  end
  L2_2.setBackgroundColor = L3_2
  function L3_2(A0_3)
    local L1_3
    L2_2._fgColor = A0_3
  end
  L2_2.setForegroundColor = L3_2
  L2_2._progress = A1_2
  L3_2 = L2_2.setProgress
  L4_2 = A1_2
  L3_2(L4_2)
  L3_2 = L2_2.base
  L3_2 = L3_2.setHighlightColor
  L2_2.setHighlightColor = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2.setTitleColor
  L2_2.setTitleColor = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2._thin
  L2_2._thin = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2._id
  L2_2._id = L3_2
  function L3_2()
    local L0_3, L1_3
    L0_3 = L2_2.base
    L0_3 = L0_3.onDestroy
    L0_3()
  end
  L2_2.onDestroy = L3_2
  return L2_2
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L3_2 = L1_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.base = L3_2
  L3_2 = "TMRB_TEXT_"
  L4_2 = L2_2.base
  L4_2 = L4_2._id
  L3_2 = L3_2 .. L4_2
  L2_2._textGxtName = L3_2
  L2_2._text = A1_2
  L3_2 = AddTextEntry
  L4_2 = L2_2._textGxtName
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L3_2.font = 0
  L4_2 = {}
  L5_2 = 238
  L6_2 = 232
  L7_2 = 170
  L8_2 = 255
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L3_2.color = L4_2
  L4_2 = TimerBar
  L4_2 = L4_2.textScale
  L3_2.scale = L4_2
  L3_2.justification = 2
  L4_2 = TimerBar
  L4_2 = L4_2.textWrap
  L3_2.wrap = L4_2
  L2_2.textDrawParams = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = AddTextEntry
    L2_3 = L2_2._textGxtName
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2.setText = L3_2
  function L3_2(A0_3)
    local L1_3
    L1_3 = L2_2.textDrawParams
    L1_3.color = A0_3
  end
  L2_2.setTextColor = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L2_2.base
    L1_3 = L1_3.draw
    L2_3 = A0_3
    L1_3(L2_3)
    L1_3 = TimerBar
    L1_3 = L1_3.textOffset
    A0_3 = A0_3 + L1_3
    L1_3 = L0_1
    L2_3 = L2_2._textGxtName
    L3_3 = {}
    L4_3 = TimerBar
    L4_3 = L4_3.initialX
    L5_3 = A0_3
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L4_3 = L2_2.textDrawParams
    L1_3(L2_3, L3_3, L4_3)
  end
  L2_2.draw = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2.setHighlightColor
  L2_2.setHighlightColor = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2.setTitleColor
  L2_2.setTitleColor = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2._thin
  L2_2._thin = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2._id
  L2_2._id = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2.setTitle
  L2_2.setTitle = L3_2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2.base
    L0_3 = L0_3.onDestroy
    L0_3()
    L0_3 = AddTextEntry
    L1_3 = L2_2._textGxtName
    L2_3 = ""
    L0_3(L1_3, L2_3)
  end
  L2_2.onDestroy = L3_2
  return L2_2
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L3_2 = L3_1
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.base = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2.base
  L3_2 = L3_2.titleDrawParams
  L3_2.font = 4
  L4_2 = {}
  L5_2 = 238
  L6_2 = 232
  L7_2 = 170
  L8_2 = 255
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L3_2.color = L4_2
  L4_2 = TimerBar
  L4_2 = L4_2.playertitleScale
  L3_2.scale = L4_2
  L3_2.justification = 2
  L4_2 = TimerBar
  L4_2 = L4_2.titleWrap
  L3_2.wrap = L4_2
  L3_2.shadow = true
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L2_2.base
    L1_3 = L1_3.base
    L1_3 = L1_3.drawBackground
    L2_3 = A0_3
    L1_3(L2_3)
    L1_3 = L0_1
    L2_3 = L2_2.base
    L2_3 = L2_3.base
    L2_3 = L2_3._titleGxtName
    L3_3 = {}
    L4_3 = TimerBar
    L4_3 = L4_3.initialX
    L5_3 = TimerBar
    L5_3 = L5_3.playerTitleOffset
    L5_3 = A0_3 + L5_3
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L4_3 = L3_2
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L0_1
    L2_3 = L2_2.base
    L2_3 = L2_3._textGxtName
    L3_3 = {}
    L4_3 = TimerBar
    L4_3 = L4_3.initialX
    L5_3 = TimerBar
    L5_3 = L5_3.textOffset
    L5_3 = A0_3 + L5_3
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L4_3 = L2_2.base
    L4_3 = L4_3.textDrawParams
    L1_3(L2_3, L3_3, L4_3)
  end
  L2_2.draw = L4_2
  L4_2 = L2_2.base
  L4_2 = L4_2.setTextColor
  L2_2.setTextColor = L4_2
  L4_2 = L2_2.base
  L4_2 = L4_2.base
  L4_2 = L4_2.setHighlightColor
  L2_2.setHighlightColor = L4_2
  L4_2 = L2_2.base
  L4_2 = L4_2.base
  L4_2 = L4_2.setTitleColor
  L2_2.setTitleColor = L4_2
  L4_2 = L2_2.base
  L4_2 = L4_2.base
  L4_2 = L4_2._thin
  L2_2._thin = L4_2
  L4_2 = L2_2.base
  L4_2 = L4_2.base
  L4_2 = L4_2._id
  L2_2._id = L4_2
  function L4_2()
    local L0_3, L1_3
    L0_3 = L2_2.base
    L0_3 = L0_3.onDestroy
    L0_3()
  end
  L2_2.onDestroy = L4_2
  return L2_2
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = L1_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.base = L3_2
  L3_2 = L2_2.base
  L3_2._thin = false
  L3_2 = {}
  L2_2._checkpointStates = L3_2
  L2_2._numCheckpoints = A1_2
  L3_2 = {}
  L4_2 = 113
  L5_2 = 204
  L6_2 = 111
  L7_2 = 255
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L2_2._color = L3_2
  L3_2 = {}
  L4_2 = 255
  L5_2 = 255
  L6_2 = 255
  L7_2 = 51
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L2_2._inProgressColor = L3_2
  L3_2 = {}
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 255
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L2_2._failedColor = L3_2
  L3_2 = 1
  L4_2 = A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2._checkpointStates
    L7_2[L6_2] = 0
  end
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = 1
    L2_3 = A1_2
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L2_2._checkpointStates
      L5_3[L4_3] = A0_3
    end
  end
  L2_2.toggleAll = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L2_2._numCheckpoints = A0_3
    L1_3 = 1
    L2_3 = A1_2
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L2_2._checkpointStates
      L5_3[L4_3] = 0
    end
  end
  L2_2.changeNumCheckpoints = L3_2
  function L3_2()
    local L0_3, L1_3
    L0_3 = L2_2.toggleAll
    L1_3 = 1
    L0_3(L1_3)
  end
  L2_2.checkAll = L3_2
  function L3_2()
    local L0_3, L1_3
    L0_3 = L2_2.toggleAll
    L1_3 = 0
    L0_3(L1_3)
  end
  L2_2.uncheckAll = L3_2
  function L3_2(A0_3, A1_3)
    local L2_3
    L2_3 = L2_2._checkpointStates
    L2_3 = L2_3[A0_3]
    if nil == L2_3 then
      return
    end
    L2_3 = L2_2._checkpointStates
    L2_3[A0_3] = A1_3
  end
  L2_2.setCheckpointState = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L1_3 = L2_2.base
    L1_3 = L1_3.draw
    L2_3 = A0_3
    L1_3(L2_3)
    L1_3 = TimerBar
    L1_3 = L1_3.checkpointOffsetY
    A0_3 = A0_3 + L1_3
    L1_3 = TimerBar
    L1_3 = L1_3.checkpointBaseX
    L2_3 = 1
    L3_3 = L2_2._numCheckpoints
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = L2_2._checkpointStates
      L6_3 = L6_3[L5_3]
      if 0 == L6_3 then
        L7_3 = L2_2._inProgressColor
        if L7_3 then
          goto lbl_28
        end
      end
      if -1 == L6_3 then
        L7_3 = L2_2._failedColor
        if L7_3 then
          goto lbl_28
        end
      end
      L7_3 = L2_2._color
      ::lbl_28::
      L8_3 = DrawSprite
      L9_3 = "timerbars"
      L10_3 = "circle_checkpoints"
      L11_3 = L1_3
      L12_3 = A0_3
      L13_3 = TimerBar
      L13_3 = L13_3.checkpointWidth
      L14_3 = TimerBar
      L14_3 = L14_3.checkpointHeight
      L15_3 = 0.0
      L16_3 = L7_3[1]
      L17_3 = L7_3[2]
      L18_3 = L7_3[3]
      L19_3 = L7_3[4]
      L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
      L8_3 = TimerBar
      L8_3 = L8_3.checkpointOffsetX
      L1_3 = L1_3 - L8_3
    end
  end
  L2_2.draw = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2.setHighlightColor
  L2_2.setHighlightColor = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2.setTitleColor
  L2_2.setTitleColor = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2._thin
  L2_2._thin = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2._id
  L2_2._id = L3_2
  L3_2 = L2_2.base
  L3_2 = L3_2.setTextColor
  L2_2.setTextColor = L3_2
  function L3_2()
    local L0_3, L1_3
    L0_3 = L2_2.base
    L0_3 = L0_3.onDestroy
    L0_3()
  end
  L2_2.onDestroy = L3_2
  return L2_2
end
L6_1 = TimerBar
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = nil
  if 0 == A0_2 then
    L4_2 = L2_1
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  elseif 1 == A0_2 then
    L4_2 = L4_1
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  elseif 2 == A0_2 then
    L4_2 = L3_1
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  elseif 3 == A0_2 then
    L4_2 = L5_1
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = TimerBar
  L5_2 = L5_2.pool
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L3_2.visible = true
  L4_2 = RequestStreamedTextureDict
  L5_2 = "timerbars"
  L4_2(L5_2)
  return L3_2
end
L6_1.Create = L7_1
L6_1 = TimerBar
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = TimerBar
  L2_2 = L2_2.pool
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 == A0_2 then
      L7_2 = A0_2.onDestroy
      L7_2()
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = TimerBar
      L8_2 = L8_2.pool
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
end
L6_1.Destroy = L7_1
L6_1 = TimerBar
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = pairs
  L1_2 = TimerBar
  L1_2 = L1_2.pool
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.onDestroy
    L6_2()
  end
  L0_2 = TimerBar
  L1_2 = {}
  L0_2.pool = L1_2
end
L6_1.DestroyAll = L7_1
L6_1 = TimerBar
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = HideHudComponentThisFrame
  L1_2 = 6
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 7
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 8
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 9
  L0_2(L1_2)
  L0_2 = SetScriptGfxAlign
  L1_2 = 82
  L2_2 = 66
  L0_2(L1_2, L2_2)
  L0_2 = SetScriptGfxAlignParams
  L1_2 = 0.0
  L2_2 = 0.0
  L3_2 = TimerBar
  L3_2 = L3_2.gfxAlignWidth
  L4_2 = TimerBar
  L4_2 = L4_2.gfxAlignHeight
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L6_1.BeginDraw = L7_1
L6_1 = TimerBar
function L7_1()
  local L0_2, L1_2
  L0_2 = ResetScriptGfxAlign
  L0_2()
end
L6_1.EndDraw = L7_1
L6_1 = TimerBar
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = TimerBar
  L0_2 = L0_2.pool
  L0_2 = #L0_2
  if 0 == L0_2 then
    return
  end
  L0_2 = TimerBar
  L0_2 = L0_2.BeginDraw
  L0_2()
  L0_2 = BusyspinnerIsOn
  L0_2 = L0_2()
  if L0_2 then
    L1_2 = TimerBar
    L1_2 = L1_2.initialBusySpinnerY
    if L1_2 then
      goto lbl_20
    end
  end
  L1_2 = TimerBar
  L1_2 = L1_2.initialY
  ::lbl_20::
  L2_2 = pairs
  L3_2 = TimerBar
  L3_2 = L3_2.pool
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.visible
    if L8_2 then
      L8_2 = L7_2.draw
      L9_2 = L1_2
      L8_2(L9_2)
      L8_2 = L7_2._thin
      if L8_2 then
        L8_2 = TimerBar
        L8_2 = L8_2.timerBarThinMargin
        if L8_2 then
          goto lbl_40
        end
      end
      L8_2 = TimerBar
      L8_2 = L8_2.timerBarMargin
      ::lbl_40::
      L1_2 = L1_2 - L8_2
    end
  end
  L2_2 = TimerBar
  L2_2 = L2_2.EndDraw
  L2_2()
end
L6_1.DrawAll = L7_1

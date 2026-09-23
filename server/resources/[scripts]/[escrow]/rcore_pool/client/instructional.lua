local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = BeginTextCommandScaleformString
  L2_2 = "STRING"
  L1_2(L2_2)
  L1_2 = AddTextComponentScaleform
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = EndTextCommandScaleformString
  L1_2()
end
InstructionalButtonMessage = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = _ENV
  L2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2
  L1_2(L2_2)
end
InstructionalButton = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = RequestScaleformMovie
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  while true do
    L2_2 = HasScaleformMovieLoaded
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "CLEAR_ALL"
  L2_2(L3_2, L4_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_CLEAR_SPACE"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 200
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_DATA_SLOT"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 5
  L2_2(L3_2)
  L2_2 = InstructionalButton
  L3_2 = GetControlInstructionalButton
  L4_2 = 2
  L5_2 = Config
  L5_2 = L5_2.Keys
  L5_2 = L5_2.BACK
  L5_2 = L5_2.code
  L6_2 = true
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = InstructionalButtonMessage
  L3_2 = Config
  L3_2 = L3_2.Text
  L3_2 = L3_2.BACK
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_DATA_SLOT"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 4
  L2_2(L3_2)
  L2_2 = InstructionalButton
  L3_2 = GetControlInstructionalButton
  L4_2 = 2
  L5_2 = Config
  L5_2 = L5_2.Keys
  L5_2 = L5_2.BALL_IN_HAND
  L5_2 = L5_2.code
  L6_2 = true
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = InstructionalButtonMessage
  L3_2 = Config
  L3_2 = L3_2.Text
  L3_2 = L3_2.BALL_IN_HAND
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_DATA_SLOT"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 3
  L2_2(L3_2)
  L2_2 = InstructionalButton
  L3_2 = GetControlInstructionalButton
  L4_2 = 2
  L5_2 = Config
  L5_2 = L5_2.Keys
  L5_2 = L5_2.CUE_HIT
  L5_2 = L5_2.code
  L6_2 = true
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = InstructionalButtonMessage
  L3_2 = Config
  L3_2 = L3_2.Text
  L3_2 = L3_2.HIT
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_DATA_SLOT"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 2
  L2_2(L3_2)
  L2_2 = InstructionalButton
  L3_2 = GetControlInstructionalButton
  L4_2 = 2
  L5_2 = Config
  L5_2 = L5_2.Keys
  L5_2 = L5_2.CUE_LEFT
  L5_2 = L5_2.code
  L6_2 = true
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = InstructionalButtonMessage
  L3_2 = Config
  L3_2 = L3_2.Text
  L3_2 = L3_2.AIM_LEFT
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_DATA_SLOT"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = InstructionalButton
  L3_2 = GetControlInstructionalButton
  L4_2 = 2
  L5_2 = Config
  L5_2 = L5_2.Keys
  L5_2 = L5_2.CUE_RIGHT
  L5_2 = L5_2.code
  L6_2 = true
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = InstructionalButtonMessage
  L3_2 = Config
  L3_2 = L3_2.Text
  L3_2 = L3_2.AIM_RIGHT
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_DATA_SLOT"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = InstructionalButton
  L3_2 = GetControlInstructionalButton
  L4_2 = 2
  L5_2 = Config
  L5_2 = L5_2.Keys
  L5_2 = L5_2.AIM_SLOWER
  L5_2 = L5_2.code
  L6_2 = true
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = InstructionalButtonMessage
  L3_2 = Config
  L3_2 = L3_2.Text
  L3_2 = L3_2.AIM_SLOWER
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  L2_2(L3_2, L4_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_BACKGROUND_COLOUR"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 80
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  return L1_2
end
setupInstructionalScaleform = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = RequestScaleformMovie
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  while true do
    L2_2 = HasScaleformMovieLoaded
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "CLEAR_ALL"
  L2_2(L3_2, L4_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_CLEAR_SPACE"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 200
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_DATA_SLOT"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 4
  L2_2(L3_2)
  L2_2 = InstructionalButton
  L3_2 = GetControlInstructionalButton
  L4_2 = 2
  L5_2 = Config
  L5_2 = L5_2.Keys
  L5_2 = L5_2.BALL_IN_HAND_LEFT
  L5_2 = L5_2.code
  L6_2 = true
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = InstructionalButtonMessage
  L3_2 = Config
  L3_2 = L3_2.Text
  L3_2 = L3_2.BALL_IN_HAND_LEFT
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_DATA_SLOT"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 3
  L2_2(L3_2)
  L2_2 = InstructionalButton
  L3_2 = GetControlInstructionalButton
  L4_2 = 2
  L5_2 = Config
  L5_2 = L5_2.Keys
  L5_2 = L5_2.BALL_IN_HAND_RIGHT
  L5_2 = L5_2.code
  L6_2 = true
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = InstructionalButtonMessage
  L3_2 = Config
  L3_2 = L3_2.Text
  L3_2 = L3_2.BALL_IN_HAND_RIGHT
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_DATA_SLOT"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 2
  L2_2(L3_2)
  L2_2 = InstructionalButton
  L3_2 = GetControlInstructionalButton
  L4_2 = 2
  L5_2 = Config
  L5_2 = L5_2.Keys
  L5_2 = L5_2.BALL_IN_HAND_UP
  L5_2 = L5_2.code
  L6_2 = true
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = InstructionalButtonMessage
  L3_2 = Config
  L3_2 = L3_2.Text
  L3_2 = L3_2.BALL_IN_HAND_UP
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_DATA_SLOT"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = InstructionalButton
  L3_2 = GetControlInstructionalButton
  L4_2 = 2
  L5_2 = Config
  L5_2 = L5_2.Keys
  L5_2 = L5_2.BALL_IN_HAND_DOWN
  L5_2 = L5_2.code
  L6_2 = true
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = InstructionalButtonMessage
  L3_2 = Config
  L3_2 = L3_2.Text
  L3_2 = L3_2.BALL_IN_HAND_DOWN
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_DATA_SLOT"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = InstructionalButton
  L3_2 = GetControlInstructionalButton
  L4_2 = 2
  L5_2 = Config
  L5_2 = L5_2.Keys
  L5_2 = L5_2.BALL_IN_HAND
  L5_2 = L5_2.code
  L6_2 = true
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = InstructionalButtonMessage
  L3_2 = Config
  L3_2 = L3_2.Text
  L3_2 = L3_2.BALL_IN_HAND_BACK
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  L2_2(L3_2, L4_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  L2_2 = PushScaleformMovieFunction
  L3_2 = L1_2
  L4_2 = "SET_BACKGROUND_COLOUR"
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = PushScaleformMovieFunctionParameterInt
  L3_2 = 80
  L2_2(L3_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
  return L1_2
end
setupInstructionalBallInHandScaleform = L0_1

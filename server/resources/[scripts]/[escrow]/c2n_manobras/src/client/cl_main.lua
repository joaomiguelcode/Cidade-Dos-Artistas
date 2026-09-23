local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = C2N
if not L0_1 then
  L0_1 = {}
end
C2N = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = promise
  L0_2 = L0_2.new
  L0_2 = L0_2()
  L1_2 = SetTimeout
  L2_2 = 5000
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_2
    L1_3 = L0_3
    L0_3 = L0_3.resolve
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = C2N
  L1_2 = L1_2.Callbacks
  L1_2 = L1_2.TriggerServerCallback
  L2_2 = ResourceBaseEvent
  L3_2 = "Vqd00bBngymZ7yaU498mXHmt"
  L2_2 = L2_2(L3_2)
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L0_2
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L3_3 = A0_3
    return L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = Citizen
  L1_2 = L1_2.Await
  L2_2 = L0_2
  return L1_2(L2_2)
end
L1_1 = 0
L2_1 = {}
L2_1.id = 1
L2_1.dict = ""
L2_1.anim = ""
L3_1 = {}
L3_1.stunts = false
L3_1.in_stunt = false
L3_1.scrape_plate = false
L4_1 = Citizen
L4_1 = L4_1.CreateThread
function L5_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = L0_1
  L0_2 = L0_2()
  if "nWw6CQrqNfJf3HQPJeR56c6W" == L0_2 then
    L0_2 = AddCommands
    L0_2()
  end
end
L4_1(L5_1)
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = L0_1
  L6_2 = L6_2()
  if "nWw6CQrqNfJf3HQPJeR56c6W" == L6_2 then
    L6_2 = L3_1.in_stunt
    if L6_2 then
      L3_1.in_stunt = false
    end
    L6_2 = LoadAnimDict
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = Notify
      L7_2 = "failed"
      L8_2 = "stunts.error_anim"
      return L6_2(L7_2, L8_2)
    end
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    if not A5_2 then
      L7_2 = GetVehiclePedIsIn
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      A5_2 = L7_2
    end
    L7_2 = GetPedInVehicleSeat
    L8_2 = A5_2
    L9_2 = -1
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= L6_2 then
      L7_2 = false
      L8_2 = Notify
      L9_2 = "failed"
      L10_2 = "vehicle.not_piloting"
      L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
      return L7_2, L8_2, L9_2, L10_2
    end
    L7_2 = L2_1.id
    if not L7_2 then
      L7_2 = 1
    end
    L7_2 = L7_2 + 1
    L2_1.id = L7_2
    L2_1.dict = A0_2
    L2_1.anim = A1_2
    L7_2 = {}
    L7_2["0x124"] = 35
    L7_2["0x125"] = 48
    L7_2["0x126"] = 50
    L7_2["0x210"] = 4127
    if nil == A2_2 then
      A2_2 = 35
    else
      L8_2 = L7_2[A2_2]
      if L8_2 then
        A2_2 = L7_2[A2_2]
      end
    end
    if nil == A3_2 then
      A3_2 = 0
    else
      L8_2 = L7_2[A3_2]
      if L8_2 then
        A3_2 = L7_2[A3_2]
      end
    end
    function L8_2()
      local L0_3, L1_3
      L3_1.in_stunt = true
      L0_3 = vehicleAnimLoop
      L0_3()
    end
    L9_2 = {}
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
      L0_3 = GetEntityCoords
      L1_3 = L6_2
      L0_3 = L0_3(L1_3)
      L1_3 = GetEntityHeading
      L2_3 = L6_2
      L1_3 = L1_3(L2_3)
      L2_3 = TaskPlayAnimAdvanced
      L3_3 = L6_2
      L4_3 = L2_1.dict
      L5_3 = L2_1.anim
      L6_3 = L0_3
      L7_3 = 0.0
      L8_3 = 0.0
      L9_3 = L1_3
      L10_3 = 1.5
      L11_3 = 5.0
      L12_3 = A4_2
      L13_3 = A2_2
      L14_3 = 1.0
      L15_3 = 1
      L16_3 = A3_2
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      L2_3 = L8_2
      L2_3()
      L2_3 = A4_2
      if -1 ~= L2_3 then
        L2_3 = Citizen
        L2_3 = L2_3.SetTimeout
        L3_3 = A4_2
        function L4_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4
          L0_4 = IsEntityPlayingAnim
          L1_4 = L6_2
          L2_4 = L2_1.dict
          L3_4 = L2_1.anim
          L4_4 = 3
          L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4)
          if L0_4 then
            L3_1.in_stunt = false
            L0_4 = ClearPedSecondaryTask
            L1_4 = L6_2
            L0_4(L1_4)
          end
        end
        L2_3(L3_3, L4_3)
      end
    end
    L9_2.default = L10_2
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
      L0_3 = IsEntityInAir
      L1_3 = A5_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = false
        return L0_3
      end
      L0_3 = TaskPlayAnim
      L1_3 = L6_2
      L2_3 = L2_1.dict
      L3_3 = L2_1.anim
      L4_3 = 8.0
      L5_3 = -8.0
      L6_3 = -1
      L7_3 = A2_2
      L8_3 = 0.0
      L9_3 = false
      L10_3 = A3_2
      L11_3 = false
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L0_3 = L8_2
      L0_3()
      while true do
        L0_3 = GetEntityHeightAboveGround
        L1_3 = A5_2
        L0_3 = L0_3(L1_3)
        L1_3 = Config
        L1_3 = L1_3.min_altitude
        if not (L0_3 < L1_3) then
          L0_3 = IsPedInAnyVehicle
          L1_3 = L6_2
          L0_3 = L0_3(L1_3)
          if L0_3 then
            goto lbl_40
          end
        end
        L3_1.in_stunt = false
        L0_3 = ClearPedSecondaryTask
        L1_3 = L6_2
        L0_3(L1_3)
        do break end
        ::lbl_40::
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 50
        L0_3(L1_3)
      end
    end
    L9_2.free_back = L10_2
    L10_2 = L9_2[A1_2]
    if L10_2 then
      L10_2 = L9_2[A1_2]
      L10_2()
    else
      L10_2 = L9_2.default
      L10_2()
    end
  end
end
PlayTrick = L4_1
L4_1 = RegisterNetEvent
L5_1 = ResourceBaseEvent
L6_1 = "cl:PlayTrick"
L5_1 = L5_1(L6_1)
L6_1 = PlayTrick
L4_1(L5_1, L6_1)
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Config
  L2_2 = L2_2.check_vehicle
  L2_2 = L2_2.active
  if L2_2 then
    if 0 == L1_2 then
      L2_2 = false
      L3_2 = Notify
      L4_2 = "failed"
      L5_2 = "vehicle.not_vehicle"
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2, L5_2)
      return L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
    end
    L2_2 = GetPedInVehicleSeat
    L3_2 = L1_2
    L4_2 = -1
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= L0_2 then
      L2_2 = false
      L3_2 = Notify
      L4_2 = "failed"
      L5_2 = "vehicle.not_piloting"
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2, L5_2)
      return L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
    end
    L2_2 = pairs
    L3_2 = Config
    L3_2 = L3_2.check_vehicle
    L3_2 = L3_2.permitted_vehicles
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = GetEntityModel
      L9_2 = L1_2
      L8_2 = L8_2(L9_2)
      L9_2 = GetHashKey
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      if L8_2 == L9_2 then
        return L1_2
      end
    end
    L2_2 = false
    L3_2 = Notify
    L4_2 = "failed"
    L5_2 = "vehicle.invalid_vehicle"
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2, L5_2)
    return L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  else
    if 0 == L1_2 then
      L2_2 = false
      L3_2 = Notify
      L4_2 = "failed"
      L5_2 = "vehicle.not_vehicle"
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2, L5_2)
      return L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
    end
    L2_2 = GetPedInVehicleSeat
    L3_2 = L1_2
    L4_2 = -1
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= L0_2 then
      L2_2 = false
      L3_2 = Notify
      L4_2 = "failed"
      L5_2 = "vehicle.not_piloting"
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2, L5_2)
      return L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
    end
    return L1_2
  end
end
checkVehicle = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = GetVehiclePedIsIn
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      if 0 == L0_3 then
        L0_3 = StopStunts
        L0_3()
        L0_3 = Notify
        L1_3 = "warning"
        L2_3 = "vehicle.exit_vehicle"
        L0_3(L1_3, L2_3)
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 500
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
vehicleExitLoop = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = IsControlJustReleased
      L1_3 = 0
      L2_3 = 23
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = L3_1.in_stunt
        if L0_3 then
          goto lbl_13
        end
      end
      L0_3 = CancelStunts
      L0_3()
      do break end
      ::lbl_13::
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 5
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
vehicleAnimLoop = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L0_1
  L1_2 = L1_2()
  if "nWw6CQrqNfJf3HQPJeR56c6W" == L1_2 then
    L1_2 = Config
    L1_2 = L1_2.stunts
    if not L1_2 then
      return
    end
    L1_2 = pairs
    L2_2 = Config
    L2_2 = L2_2.stunts
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.active
      if L7_2 then
        L7_2 = A0_2.command
        L8_2 = L5_2
        L7_2 = L7_2 .. L8_2
        L8_2 = RegisterCommand
        L9_2 = L7_2
        function L10_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
          L0_3 = L3_1.stunts
          if not L0_3 then
            return
          end
          L0_3 = checkVehicle
          L0_3 = L0_3()
          if not L0_3 then
            return
          end
          L1_3 = L3_1.stunts
          if not L1_3 then
            L1_3 = L1_1
            if L1_3 <= 0 then
              L1_3 = 1
              L1_1 = L1_3
              L1_3 = Notify
              L2_3 = "warning"
              L3_3 = Translate
              L4_3 = "stunts.cooldown"
              L5_3 = {}
              L6_3 = L1_1
              L5_3.cooldown = L6_3
              L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3(L4_3, L5_3)
              L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
            end
            return
          end
          L1_3 = Config
          L1_3 = L1_3.auxiliary_key
          L1_3 = L1_3.active
          if L1_3 then
            L1_3 = IsControlPressed
            L2_3 = 0
            L3_3 = Config
            L3_3 = L3_3.key_auxiliar
            L3_3 = L3_3.key
            L1_3 = L1_3(L2_3, L3_3)
            if not L1_3 then
              L1_3 = L1_1
              if L1_3 <= 0 then
                L1_3 = 1
                L1_1 = L1_3
                L1_3 = Notify
                L2_3 = "warning"
                L3_3 = "stunts.not_pressed"
                L1_3(L2_3, L3_3)
              end
              return
            end
          end
          L1_3 = L6_2.min_speed
          if L1_3 then
            L1_3 = GetEntitySpeed
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            L1_3 = L1_3 * 3.6
            L2_3 = Config
            L2_3 = L2_3.min_speed
            if L1_3 < L2_3 then
              L1_3 = Notify
              L2_3 = "warning"
              L3_3 = "stunts.more_speed"
              return L1_3(L2_3, L3_3)
            end
          end
          L1_3 = TriggerServerEvent
          L2_3 = ResourceBaseEvent
          L3_3 = "sv:PlayTrick"
          L2_3 = L2_3(L3_3)
          L3_3 = L6_2.dict
          L4_3 = L6_2.anim
          L5_3 = L6_2.flag
          L6_3 = L6_2.flag2
          L7_3 = L6_2.duration
          L8_3 = L0_3
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        end
        L8_2(L9_2, L10_2)
        L8_2 = A0_2.keymapping
        if L8_2 then
          L8_2 = RegisterKeyMapping
          L9_2 = L7_2
          L10_2 = L6_2.title
          L11_2 = "keyboard"
          L12_2 = L6_2.key
          L8_2(L9_2, L10_2, L11_2, L12_2)
        end
      end
    end
  end
end
CreateStunts = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1
  L0_2 = L0_2()
  if "nWw6CQrqNfJf3HQPJeR56c6W" == L0_2 then
    L0_2 = L3_1.stunts
    if not L0_2 then
      L0_2 = checkVehicle
      L0_2 = L0_2()
      if not L0_2 then
        return
      end
      L0_2 = true
      L1_2 = Config
      L1_2 = L1_2.check_vip
      L1_2 = L1_2.active
      if L1_2 then
        L1_2 = C2N
        L1_2 = L1_2.Callbacks
        L1_2 = L1_2.TriggerServerCallback
        L2_2 = ResourceBaseEvent
        L3_2 = "CheckPerm"
        L2_2 = L2_2(L3_2)
        function L3_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3
          L0_2 = A0_3
          if not A0_3 then
            L1_3 = Notify
            L2_3 = "failed"
            L3_3 = Translate
            L4_3 = "stunts.without_perm"
            L3_3, L4_3 = L3_3(L4_3)
            L1_3(L2_3, L3_3, L4_3)
          end
        end
        L4_2 = Config
        L4_2 = L4_2.check_vip
        L4_2 = L4_2.perms
        L1_2(L2_2, L3_2, L4_2)
      end
      if L0_2 then
        L3_1.stunts = true
        L1_2 = vehicleExitLoop
        L1_2()
        L1_2 = Notify
        L2_2 = "success"
        L3_2 = "stunts.ready"
        return L1_2(L2_2, L3_2)
      end
      L1_2 = Notify
      L2_2 = "failed"
      L3_2 = "stunts.error_start"
      return L1_2(L2_2, L3_2)
    else
      L0_2 = StopStunts
      L0_2()
      L0_2 = Notify
      L1_2 = "success"
      L2_2 = "stunts.stopped"
      return L0_2(L1_2, L2_2)
    end
  end
end
StartStunts = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1
  L0_2 = L0_2()
  if "nWw6CQrqNfJf3HQPJeR56c6W" == L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = L3_1.scrape_plate
    if L1_2 then
      L1_2 = SetPedCanBeKnockedOffVehicle
      L2_2 = L0_2
      L3_2 = 0
      L1_2(L2_2, L3_2)
    end
    L1_2 = ClearPedSecondaryTask
    L2_2 = L0_2
    L1_2(L2_2)
    L3_1.stunts = false
    L3_1.in_stunt = false
    L3_1.scrape_plate = false
    L1_2 = {}
    L2_1 = L1_2
  end
end
StopStunts = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2()
  if "nWw6CQrqNfJf3HQPJeR56c6W" == L0_2 then
    L0_2 = checkVehicle
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = L3_1.stunts
      if L0_2 then
        L0_2 = L3_1.in_stunt
        if L0_2 then
          goto lbl_16
        end
      end
    end
    do return end
    ::lbl_16::
    L3_1.in_stunt = false
    L0_2 = {}
    L2_1 = L0_2
    L0_2 = ClearPedSecondaryTask
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L0_2(L1_2)
  end
end
CancelStunts = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L1_2 = L1_2()
  if "nWw6CQrqNfJf3HQPJeR56c6W" == L1_2 then
    L1_2 = L3_1.stunts
    if L1_2 then
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = L3_1.scrape_plate
      L2_2 = not L2_2
      L3_1.scrape_plate = L2_2
      L2_2 = L3_1.scrape_plate
      if L2_2 then
        L2_2 = SetPedCanBeKnockedOffVehicle
        L3_2 = L1_2
        L4_2 = 1
        L2_2(L3_2, L4_2)
        L2_2 = Notify
        L3_2 = "success"
        L4_2 = "stunts.ready_plate"
        return L2_2(L3_2, L4_2)
      else
        L2_2 = SetPedCanBeKnockedOffVehicle
        L3_2 = L1_2
        L4_2 = 0
        L2_2(L3_2, L4_2)
        L2_2 = Notify
        L3_2 = "success"
        L4_2 = "stunts.stopped_plate"
        return L2_2(L3_2, L4_2)
      end
    else
      L1_2 = L1_1
      if L1_2 <= 0 then
        L1_2 = 1
        L1_1 = L1_2
        L1_2 = Notify
        L2_2 = "warning"
        L3_2 = Translate
        L4_2 = "stunts.warning_command"
        L5_2 = {}
        L5_2.command = A0_2
        L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
        return L1_2(L2_2, L3_2, L4_2, L5_2)
      end
    end
  end
end
ScrapePlate = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = TriggerEvent
  L4_2 = ResourceBaseEvent
  L5_2 = "Notify"
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
Notify = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 0
  while true do
    L2_2 = HasAnimDictLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = 600
    if not (L1_2 <= L2_2) then
      break
    end
    L1_2 = L1_2 + 1
    L2_2 = RequestAnimDict
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 10
    L2_2(L3_2)
  end
  L2_2 = HasAnimDictLoaded
  L3_2 = A0_2
  return L2_2(L3_2)
end
LoadAnimDict = L4_1
L4_1 = Citizen
L4_1 = L4_1.CreateThread
function L5_1()
  local L0_2, L1_2
  while true do
    L0_2 = L1_1
    if L0_2 > 0 then
      L0_2 = L1_1
      L0_2 = L0_2 - 1
      L1_1 = L0_2
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
end
L4_1(L5_1)

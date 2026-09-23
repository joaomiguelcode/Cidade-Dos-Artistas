local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  while true do
    L0_2 = 1000
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = GetVehiclePedIsIn
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = pairs
      L4_2 = Dynamometers
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = GetEntityCoords
        L10_2 = L1_2
        L9_2 = L9_2(L10_2)
        L10_2 = vec3
        L11_2 = L8_2.coords
        L11_2 = L11_2[1]
        L12_2 = L8_2.coords
        L12_2 = L12_2[2]
        L13_2 = L8_2.coords
        L13_2 = L13_2[3]
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L9_2 = L9_2 - L10_2
        L9_2 = #L9_2
        if L9_2 <= 7 then
          L10_2 = indyno
          if not L10_2 then
            L10_2 = table
            L10_2 = L10_2.unpack
            L11_2 = L8_2.coords
            L10_2, L11_2, L12_2 = L10_2(L11_2)
            L0_2 = 0
            L13_2 = IsPedInAnyVehicle
            L14_2 = L1_2
            L13_2 = L13_2(L14_2)
            if L13_2 then
              L13_2 = GetClosestObjectOfType
              L14_2 = L8_2.coords
              L14_2 = L14_2[1]
              L15_2 = L8_2.coords
              L15_2 = L15_2[2]
              L16_2 = L8_2.coords
              L16_2 = L16_2[3]
              L17_2 = 4.0
              L18_2 = L8_2.prop
              L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
              L14_2 = L8_2.prop
              if L14_2 then
                L14_2 = DoesEntityExist
                L15_2 = L13_2
                L14_2 = L14_2(L15_2)
                if not L14_2 then
                  goto lbl_93
                end
                L14_2 = IsEntityTouchingEntity
                L15_2 = L2_2
                L16_2 = L13_2
                L14_2 = L14_2(L15_2, L16_2)
                if not L14_2 then
                  goto lbl_93
                end
              end
              L14_2 = DrawText3D
              L15_2 = L8_2.coords
              L15_2 = L15_2[1]
              L16_2 = L8_2.coords
              L16_2 = L16_2[2]
              L17_2 = L8_2.coords
              L17_2 = L17_2[3]
              L18_2 = "~g~[E] ~w~ Para iniciar."
              L14_2(L15_2, L16_2, L17_2, L18_2)
              if L9_2 <= 3 then
                L14_2 = IsControlJustPressed
                L15_2 = 1
                L16_2 = 51
                L14_2 = L14_2(L15_2, L16_2)
                if L14_2 then
                  L14_2 = vSERVER
                  L14_2 = L14_2.canDyno
                  L15_2 = L7_2
                  L14_2 = L14_2(L15_2)
                  if L14_2 then
                    L14_2 = Dyno
                    L15_2 = L8_2
                    L16_2 = L7_2
                    L14_2(L15_2, L16_2)
                  end
                end
              end
            end
          end
        end
        ::lbl_93::
      end
    end
    L3_2 = Wait
    L4_2 = L0_2
    L3_2(L4_2)
  end
end
L0_1(L1_1)
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L4_2 = World3dToScreen2d
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2)
  L7_2 = table
  L7_2 = L7_2.unpack
  L8_2 = GetGameplayCamCoords
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2()
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L10_2 = SetTextScale
  L11_2 = 0.28
  L12_2 = 0.28
  L10_2(L11_2, L12_2)
  L10_2 = SetTextFont
  L11_2 = 4
  L10_2(L11_2)
  L10_2 = SetTextProportional
  L11_2 = 1
  L10_2(L11_2)
  L10_2 = SetTextColour
  L11_2 = 255
  L12_2 = 255
  L13_2 = 255
  L14_2 = 215
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = SetTextEntry
  L11_2 = "STRING"
  L10_2(L11_2)
  L10_2 = SetTextCentre
  L11_2 = 1
  L10_2(L11_2)
  L10_2 = AddTextComponentString
  L11_2 = A3_2
  L10_2(L11_2)
  L10_2 = DrawText
  L11_2 = L5_2
  L12_2 = L6_2
  L10_2(L11_2, L12_2)
  L10_2 = string
  L10_2 = L10_2.len
  L11_2 = A3_2
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2 / 370
  L11_2 = DrawRect
  L12_2 = L5_2
  L13_2 = L6_2 + 0.0125
  L14_2 = 0.005 + L10_2
  L15_2 = 0.03
  L16_2 = 41
  L17_2 = 11
  L18_2 = 41
  L19_2 = 68
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
end
DrawText3D = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = GetVehiclePedIsIn
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = Entity
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.state
  L3_2.dyno = false
  L3_2 = DoesEntityExist
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = Entity
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.state
    if L4_2 then
      L4_2 = L4_2.dyno
    end
  end
  L5_2 = GetPedInVehicleSeat
  L6_2 = GetVehiclePedIsIn
  L7_2 = PlayerPedId
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = -1
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L5_2 = L5_2 == L6_2
  indyno = true
  invehicle = L2_2
  L6_2 = manual
  if L6_2 then
    manual = false
    L6_2 = Wait
    L7_2 = 2000
    L6_2(L7_2)
  end
  L6_2 = GetVehiclePedIsIn
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = true
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = GetEntityCoords
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = vec3
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2 = L7_2 + L8_2
  L8_2 = {}
  L9_2 = A0_2.platform
  L8_2.coord = L9_2
  L9_2 = A0_2.offsets
  L8_2.offsets = L9_2
  zoffset = L8_2
  L8_2 = DisableVehicleWorldCollision
  L9_2 = L6_2
  L8_2(L9_2)
  L8_2 = FreezeEntityPosition
  L9_2 = L6_2
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = {}
  L9_2 = {}
  L9_2.label = "TORQUE (N/m)"
  L10_2 = {}
  L9_2.data = L10_2
  L9_2.borderWidth = 2
  L9_2.backgroundColor = "#FFF06880"
  L9_2.borderColor = "#FFF06880"
  L10_2 = {}
  L10_2.label = "Speed (KM/H)"
  L11_2 = {}
  L10_2.data = L11_2
  L10_2.borderWidth = 2
  L10_2.backgroundColor = "#7BC0FF66"
  L10_2.borderColor = "#7BC0FF66"
  L11_2 = {}
  L11_2.label = "Horsepower (HP)"
  L12_2 = {}
  L11_2.data = L12_2
  L11_2.borderWidth = 2
  L11_2.backgroundColor = "#ffffff70"
  L11_2.borderColor = "#ffffff70"
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  dynoDatabase = L8_2
  L8_2 = SetVehicleManualGears
  L9_2 = L6_2
  L10_2 = true
  L11_2 = false
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = SendNUIMessage
  L9_2 = {}
  L10_2 = "openDyno"
  L9_2[1] = L10_2
  L8_2(L9_2)
end
Dyno = L0_1
nextgearhash = 977626868
setcurrentgearhash = -1994138302
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Citizen
  L2_2 = L2_2.InvokeNative
  L3_2 = nextgearhash
  L3_2 = L3_2 & 4294967295
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
SetVehicleNextGear = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Citizen
  L2_2 = L2_2.InvokeNative
  L3_2 = setcurrentgearhash
  L3_2 = L3_2 & 4294967295
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
SetVehicleCurrentGear = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetVehicleCurrentGear
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = SetVehicleNextGear
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  return A1_2
end
ForceVehicleGear = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 then
    return
  end
  L3_2 = ForceVehicleGear
  L4_2 = A0_2
  L5_2 = 1
  L3_2(L4_2, L5_2)
  L3_2 = SetVehicleHighGear
  L4_2 = A0_2
  L5_2 = 1
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityMaxSpeed
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = SetVehicleMaxSpeed
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = ModifyVehicleTopSpeed
  L4_2 = A0_2
  L5_2 = 0.999
  L3_2(L4_2, L5_2)
end
ForceVehicleSingleGear = L0_1
L0_1 = {}
L1_1 = {}
L1_1.item = "engine_oil"
L1_1.label = "Engine Oil"
L2_1 = {}
L3_1 = "fInitialDriveMaxFlatVel"
L2_1[1] = L3_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.1
L1_1.affects = "Top Speed"
L1_1.cost = 25000
L0_1[1] = L1_1
L1_1 = {}
L1_1.item = "engine_sparkplug"
L1_1.label = "Engine Spark Plug"
L2_1 = {}
L3_1 = "fDriveInertia"
L2_1[1] = L3_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.2
L1_1.affects = "Torque"
L1_1.cost = 25000
L0_1[2] = L1_1
L1_1 = {}
L1_1.item = "engine_gasket"
L1_1.label = "Engine Head Gasket"
L2_1 = {}
L3_1 = "fDriveInertia"
L2_1[1] = L3_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.3
L1_1.affects = "Torque"
L1_1.cost = 25000
L0_1[3] = L1_1
L1_1 = {}
L1_1.item = "engine_airfilter"
L1_1.label = "Engine Air Filter"
L2_1 = {}
L3_1 = "fInitialDriveForce"
L2_1[1] = L3_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.15
L1_1.affects = "Horsepower"
L1_1.cost = 25000
L0_1[4] = L1_1
L1_1 = {}
L1_1.item = "engine_fuelinjector"
L1_1.label = "Engine Fuel Injectors"
L2_1 = {}
L3_1 = "fInitialDriveForce"
L2_1[1] = L3_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.15
L1_1.affects = "Horsepower"
L1_1.cost = 25000
L0_1[5] = L1_1
L1_1 = {}
L1_1.item = "engine_pistons"
L1_1.label = "Engine Pistons"
L2_1 = {}
L3_1 = "fInitialDriveMaxFlatVel"
L2_1[1] = L3_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.2
L1_1.affects = "Top Speed"
L1_1.cost = 25000
L0_1[6] = L1_1
L1_1 = {}
L1_1.item = "engine_connectingrods"
L1_1.label = "Engine Connecting Rods"
L2_1 = {}
L3_1 = "fInitialDriveForce"
L2_1[1] = L3_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.2
L1_1.affects = "Top Speed"
L1_1.cost = 25000
L0_1[7] = L1_1
L1_1 = {}
L1_1.item = "engine_valves"
L1_1.label = "Engine Valves"
L2_1 = {}
L3_1 = "fInitialDriveForce"
L2_1[1] = L3_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.2
L1_1.affects = "Horsepower"
L1_1.cost = 25000
L0_1[8] = L1_1
L1_1 = {}
L1_1.item = "engine_block"
L1_1.label = "Engine Block"
L2_1 = {}
L3_1 = "fInitialDriveMaxFlatVel"
L2_1[1] = L3_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.2
L1_1.affects = "Top Speed"
L1_1.cost = 25000
L0_1[9] = L1_1
L1_1 = {}
L1_1.item = "engine_crankshaft"
L1_1.label = "Engine CranfkShaft"
L2_1 = {}
L3_1 = "fDriveInertia"
L2_1[1] = L3_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.3
L1_1.affects = "Torque"
L1_1.cost = 25000
L0_1[10] = L1_1
L1_1 = {}
L1_1.item = "transmition_clutch"
L1_1.label = "Transmission Clutch"
L2_1 = {}
L3_1 = "fClutchChangeRateScaleUpShift"
L2_1[1] = L3_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.7
L1_1.affects = "Down Shifting"
L1_1.cost = 25000
L0_1[11] = L1_1
L1_1 = {}
L1_1.item = "engine_flywheel"
L1_1.label = "Engine FlyWheel"
L2_1 = {}
L3_1 = "fClutchChangeRateScaleDownShift"
L2_1[1] = L3_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.8
L1_1.affects = "Up Shifting"
L1_1.cost = 25000
L0_1[12] = L1_1
L1_1 = {}
L1_1.item = "engine_camshaft"
L1_1.label = "Engine Camshaft"
L2_1 = {}
L3_1 = "fInitialDriveMaxFlatVel"
L2_1[1] = L3_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.5
L1_1.affects = "Top Speed"
L1_1.cost = 25000
L0_1[13] = L1_1
L1_1 = {}
L1_1.item = "oem_brakes"
L1_1.label = "OEM Brakes"
L2_1 = {}
L3_1 = "fBrakeForce"
L4_1 = "fHandBrakeForce"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.8
L1_1.affects = "Brake Power"
L1_1.cost = 25000
L0_1[14] = L1_1
L1_1 = {}
L1_1.item = "oem_suspension"
L1_1.label = "OEM Suspension"
L2_1 = {}
L3_1 = "fSuspensionForce"
L4_1 = "fSuspensionCompDamp"
L5_1 = "fSuspensionReboundDamp"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.8
L1_1.affects = "Suspension"
L1_1.cost = 25000
L0_1[15] = L1_1
L1_1 = {}
L1_1.item = "oem_gearbox"
L1_1.label = "OEM Gearbox"
L2_1 = {}
L3_1 = "nInitialDriveGears"
L4_1 = "fDriveInertia"
L5_1 = "fClutchChangeRateScaleUpShift"
L6_1 = "fClutchChangeRateScaleDownShift"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L1_1.handling = L2_1
L1_1.maxdegrade = 0.2
L1_1.affects = "Acceleration"
L1_1.cost = 25000
L0_1[16] = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Entity
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L3_2 = L2_2.defaulthandling
  L4_2 = L2_2.engine
  if not L4_2 then
    L5_2 = L2_2
    L4_2 = L2_2.set
    L6_2 = "currentengine"
    L7_2 = "default"
    L8_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  if not L3_2 then
    L4_2 = L2_2.engine
    if not L4_2 then
      goto lbl_25
    end
  end
  L4_2 = hashandling
  if not L4_2 then
    L4_2 = L2_2.defaulthandling
    ::lbl_25::
    if not L4_2 then
      hashandling = true
      L4_2 = {}
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fInitialDriveForce"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fInitialDriveForce = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fDriveInertia"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fDriveInertia = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fInitialDriveMaxFlatVel"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fInitialDriveMaxFlatVel = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fClutchChangeRateScaleUpShift"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fClutchChangeRateScaleUpShift = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fClutchChangeRateScaleDownShift"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fClutchChangeRateScaleDownShift = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fLowSpeedTractionLossMult"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fLowSpeedTractionLossMult = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fTractionLossMult"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fTractionLossMult = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fTractionCurveMin"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fTractionCurveMin = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fTractionCurveMax"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fTractionCurveMax = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fTractionCurveLateral"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fTractionCurveLateral = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fBrakeForce"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fBrakeForce = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fHandBrakeForce"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fHandBrakeForce = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fSuspensionForce"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fSuspensionForce = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fSuspensionCompDamp"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fSuspensionCompDamp = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fSuspensionReboundDamp"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fSuspensionReboundDamp = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fSuspensionUpperLimit"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fSuspensionUpperLimit = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fSuspensionLowerLimit"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fSuspensionLowerLimit = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fSuspensionRaise"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fSuspensionRaise = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fSuspensionBiasFront"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fSuspensionBiasFront = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fAntiRollBarForce"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fAntiRollBarForce = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fAntiRollBarBiasFront"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fAntiRollBarBiasFront = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fRollCentreHeightFront"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fRollCentreHeightFront = L5_2
      L5_2 = GetVehicleHandlingFloat
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "fRollCentreHeightRear"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.fRollCentreHeightRear = L5_2
      L5_2 = GetVehicleHandlingInt
      L6_2 = A0_2
      L7_2 = "CHandlingData"
      L8_2 = "nInitialDriveGears"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.nInitialDriveGears = L5_2
      L3_2 = L4_2
      L5_2 = L2_2
      L4_2 = L2_2.set
      L6_2 = "defaulthandling"
      L7_2 = L3_2
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      return L3_2
    end
  end
  return L3_2
end
GetDefaultHandling = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = string
  L3_2 = L3_2.gsub
  L4_2 = GetVehicleNumberPlateText
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = "^%s*(.-)%s*$"
  L6_2 = "%1"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L3_2
  L3_2 = L3_2.upper
  L3_2 = L3_2(L4_2)
  plate = L3_2
  L3_2 = Citizen
  L3_2 = L3_2.CreateThreadNow
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = GetDefaultHandling
    L1_3 = A0_2
    L2_3 = plate
    L0_3(L1_3, L2_3)
    L0_3 = Wait
    L1_3 = 100
    L0_3(L1_3)
    L0_3 = ipairs
    L1_3 = L0_1
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L7_3 = L5_3.item
      L6_3 = A1_2
      L6_3 = L6_3[L7_3]
      if not L6_3 then
        L6_3 = A2_2
        if L6_3 then
          L6_3 = Wait
          L7_3 = 100
          L6_3(L7_3)
          L6_3 = A1_2
          L7_3 = L6_3
          L6_3 = L6_3.set
          L8_3 = L5_3.item
          L9_3 = tonumber
          L11_3 = L5_3.item
          L10_3 = A2_2
          L10_3 = L10_3[L11_3]
          L9_3 = L9_3(L10_3)
          if not L9_3 then
            L9_3 = 100
          end
          L10_3 = false
          L6_3(L7_3, L8_3, L9_3, L10_3)
        end
      end
    end
  end
  L3_2(L4_2)
end
LoadVehicleSetup = L1_1
L1_1 = {}
L1_1.compression = 100.0
L1_1.airpressure = 100.0
L1_1.fuelpressure = 100.0
L1_1.ignition = 100.0
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L4_2 = GetVehicleCurrentRpm
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = Entity
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.state
  L5_2 = L5_2.nitroenable
  L6_2 = A3_2 or L6_2
  if not A3_2 then
    L6_2 = 1.0
  end
  if L5_2 and 1.0 == A3_2 then
    L6_2 = 1.0
  end
  L7_2 = A2_2.fInitialDriveForce
  if not L7_2 then
    L7_2 = 1.0
  end
  L8_2 = A2_2.fDriveInertia
  if not L8_2 then
    L8_2 = 1.0
  end
  L9_2 = {}
  L10_2 = pairs
  L11_2 = L1_1
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L9_2[L14_2] = L15_2
  end
  L10_2 = pairs
  L11_2 = A1_2
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    if "duration" == L14_2 then
      L16_2 = L9_2.compression
      L16_2 = L16_2 - L15_2
      L9_2.compression = L16_2
    elseif "fuelpressure" == L14_2 then
      L16_2 = L9_2[L14_2]
      L17_2 = L15_2 * L4_2
      L16_2 = L16_2 + L17_2
      L9_2[L14_2] = L16_2
      L16_2 = L15_2 * 0.1
      L6_2 = L6_2 - L16_2
    elseif "ignition" == L14_2 then
      L16_2 = L9_2[L14_2]
      L17_2 = L15_2 * L4_2
      L16_2 = L16_2 + L17_2
      L9_2[L14_2] = L16_2
    else
      L16_2 = L9_2[L14_2]
      L16_2 = L16_2 + L15_2
      L9_2[L14_2] = L16_2
    end
  end
  L10_2 = L9_2.ignition
  L11_2 = L7_2 - 1.0
  L11_2 = L11_2 * L4_2
  L11_2 = 1.0 + L11_2
  L10_2 = L10_2 * L11_2
  L9_2.ignition = L10_2
  L10_2 = L9_2.fuelpressure
  L11_2 = L8_2 - 1.0
  L11_2 = L11_2 * L4_2
  L11_2 = 1.0 + L11_2
  L10_2 = L10_2 * L11_2
  L9_2.fuelpressure = L10_2
  L10_2 = L9_2.fuelpressure
  L10_2 = L10_2 / 100
  L11_2 = L9_2.ignition
  L11_2 = L11_2 / 100
  if L6_2 > 1.0 then
    L12_2 = L6_2 - 1.0
    if L12_2 then
      goto lbl_108
    end
  end
  L12_2 = 1.0
  ::lbl_108::
  L13_2 = L9_2.compression
  L13_2 = L13_2 / 100
  L13_2 = L13_2 * L11_2
  L14_2 = L11_2 / L10_2
  L14_2 = L13_2 * L14_2
  if L10_2 < L11_2 then
    L15_2 = 13.5 * L11_2
    L15_2 = L15_2 * L14_2
    if L15_2 then
      goto lbl_132
    end
  end
  L15_2 = 13.5
  L15_2 = L15_2 / L10_2
  L15_2 = L15_2 * L11_2
  L15_2 = L15_2 * L14_2
  ::lbl_132::
  if L6_2 > 1.0 then
    L16_2 = L6_2 * L13_2
    if L16_2 then
      goto lbl_139
    end
  end
  L16_2 = 0.0
  ::lbl_139::
  L16_2 = L16_2 * L14_2
  L16_2 = L15_2 + L16_2
  L17_2 = L6_2 or L17_2
  if not (L6_2 > 1.0) or not L6_2 then
    L17_2 = 0.0
  end
  L16_2 = L16_2 + L17_2
  L17_2 = 13.5
  if L16_2 > L17_2 then
    L17_2 = 13.5
    L17_2 = L17_2 / L16_2
    if L17_2 then
      goto lbl_160
    end
  end
  L17_2 = L16_2 / 13.5
  ::lbl_160::
  L17_2 = 1.0 * L17_2
  if L17_2 > 1.0 then
    L18_2 = 1.0
    if L18_2 then
      goto lbl_168
    end
  end
  L18_2 = L17_2
  ::lbl_168::
  L19_2 = L18_2 or L19_2
  if not (L18_2 < 1.0) or not L18_2 then
    L19_2 = L18_2
  end
  L19_2 = L19_2 * L14_2
  L20_2 = L18_2
  L21_2 = L15_2
  L22_2 = L16_2
  return L20_2, L21_2, L22_2
end
EngineEfficiency = L2_1
L2_1 = {}
L3_1 = {}
L4_1 = 0.9
L3_1[1] = L4_1
L2_1[1] = L3_1
L3_1 = {}
L4_1 = 3.33
L5_1 = 0.9
L3_1[1] = L4_1
L3_1[2] = L5_1
L2_1[2] = L3_1
L3_1 = {}
L4_1 = 3.33
L5_1 = 1.57
L6_1 = 0.9
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L2_1[3] = L3_1
L3_1 = {}
L4_1 = 3.33
L5_1 = 1.83
L6_1 = 1.22
L7_1 = 0.9
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L2_1[4] = L3_1
L3_1 = {}
L4_1 = 3.33
L5_1 = 1.92
L6_1 = 1.36
L7_1 = 1.05
L8_1 = 0.9
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L3_1[5] = L8_1
L2_1[5] = L3_1
L3_1 = {}
L4_1 = 3.33
L5_1 = 1.95
L6_1 = 1.39
L7_1 = 1.09
L8_1 = 0.95
L9_1 = 0.9
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L3_1[5] = L8_1
L3_1[6] = L9_1
L2_1[6] = L3_1
L3_1 = {}
L4_1 = 4.0
L5_1 = 2.34
L6_1 = 1.67
L7_1 = 1.31
L8_1 = 1.14
L9_1 = 1.08
L10_1 = 0.9
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L3_1[5] = L8_1
L3_1[6] = L9_1
L3_1[7] = L10_1
L2_1[7] = L3_1
L3_1 = {}
L4_1 = 4.025
L5_1 = 2.025
L6_1 = 1.523
L7_1 = 1.314
L8_1 = 1.154
L9_1 = 1.073
L10_1 = 1.0
L11_1 = 0.9
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L3_1[5] = L8_1
L3_1[6] = L9_1
L3_1[7] = L10_1
L3_1[8] = L11_1
L2_1[8] = L3_1
L3_1 = {}
L4_1 = 7.7
L5_1 = 4.51
L6_1 = 3.22
L7_1 = 2.52
L8_1 = 2.2
L9_1 = 2.08
L10_1 = 1.73
L11_1 = 1.31
L12_1 = 0.9
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L3_1[5] = L8_1
L3_1[6] = L9_1
L3_1[7] = L10_1
L3_1[8] = L11_1
L3_1[9] = L12_1
L2_1[9] = L3_1
L3_1 = false
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  invehicle = A0_2
  if A0_2 then
    L1_2 = GetDefaultHandling
    L2_2 = A0_2
    L1_2(L2_2)
  end
  while "fInitialDriveForce" do
    L1_2 = invehicle
    if not L1_2 then
      break
    end
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fInitialDriveForce"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fInitialDriveForce = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fDriveInertia"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fDriveInertia = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fInitialDriveMaxFlatVel"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fInitialDriveMaxFlatVel = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fClutchChangeRateScaleUpShift"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fClutchChangeRateScaleUpShift = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fClutchChangeRateScaleDownShift"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fClutchChangeRateScaleDownShift = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fLowSpeedTractionLossMult"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fLowSpeedTractionLossMult = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fTractionLossMult"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fTractionLossMult = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fTractionCurveMin"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fTractionCurveMin = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fTractionCurveMax"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fTractionCurveMax = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fTractionCurveLateral"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fTractionCurveLateral = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fBrakeForce"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fBrakeForce = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fHandBrakeForce"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fHandBrakeForce = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fSuspensionForce"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fSuspensionForce = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fSuspensionCompDamp"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fSuspensionCompDamp = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fSuspensionReboundDamp"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fSuspensionReboundDamp = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fSuspensionUpperLimit"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fSuspensionUpperLimit = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fSuspensionLowerLimit"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fSuspensionLowerLimit = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fSuspensionRaise"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fSuspensionRaise = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fSuspensionBiasFront"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fSuspensionBiasFront = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fAntiRollBarForce"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fAntiRollBarForce = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fAntiRollBarBiasFront"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fAntiRollBarBiasFront = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fRollCentreHeightFront"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fRollCentreHeightFront = L1_2
    L1_2 = GetVehicleHandlingFloat
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "fRollCentreHeightRear"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    fRollCentreHeightRear = L1_2
    L1_2 = GetVehicleHandlingInt
    L2_2 = A0_2
    L3_2 = "CHandlingData"
    L4_2 = "nInitialDriveGears"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    nInitialDriveGears = L1_2
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
end
Sandbox = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  if A0_2 >= 0 then
    L1_2 = math
    L1_2 = L1_2.floor
    L2_2 = A0_2 + 0.5
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_15
    end
  end
  L1_2 = math
  L1_2 = L1_2.ceil
  L2_2 = A0_2 - 0.5
  L1_2 = L1_2(L2_2)
  ::lbl_15::
  return L1_2
end
round = L4_1
L4_1 = {}
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2
  while true do
    L4_2 = invehicle
    if L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 1
    L4_2(L5_2)
  end
  L4_2 = manual
  if L4_2 then
    return
  end
  L4_2 = async
  function L5_2()
    local L0_3, L1_3
    L0_3 = Sandbox
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L4_2(L5_2)
  indyno = A1_2
  L4_2 = invehicle
  if L4_2 then
    L4_2 = Entity
    L5_2 = invehicle
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.state
  end
  fInitialDriveMaxFlatVel = nil
  fDriveInertia = nil
  fInitialDriveForce = nil
  L5_2 = DoesEntityExist
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    return
  end
  nInitialDriveGears = nil
  L5_2 = LoadVehicleSetup
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = string
  L5_2 = L5_2.gsub
  L6_2 = GetVehicleNumberPlateText
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = "^%s*(.-)%s*$"
  L8_2 = "%1"
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L5_2
  L5_2 = L5_2.upper
  L5_2 = L5_2(L6_2)
  while true do
    L6_2 = fInitialDriveMaxFlatVel
    if nil ~= L6_2 then
      L6_2 = fDriveInertia
      if nil ~= L6_2 then
        L6_2 = nInitialDriveGears
        if nil ~= L6_2 then
          L6_2 = fInitialDriveForce
          if nil ~= L6_2 then
            break
          end
        end
      end
    end
    L6_2 = Wait
    L7_2 = 1
    L6_2(L7_2)
  end
  L6_2 = nInitialDriveGears
  if not L6_2 then
    L6_2 = 1
  end
  L7_2 = fDriveInertia
  L8_2 = 1
  L9_2 = {}
  L10_2 = L2_1
  L11_2 = nil
  L12_2 = L4_1
  L12_2 = L12_2[L5_2]
  if L12_2 then
    L12_2 = L4_1
    L12_2 = L12_2[L5_2]
    L12_2 = L12_2.active
    if L12_2 then
      L12_2 = L12_2.gear_ratio
    end
  end
  if L12_2 then
    L13_2 = {}
    L11_2 = L13_2
    L11_2[L6_2] = L12_2
  end
  L9_2 = L11_2 or L9_2
  if not L11_2 then
    L9_2 = L10_2
  end
  L13_2 = GetVehicleHandlingInt
  L14_2 = A0_2
  L15_2 = "CCarHandlingData"
  L16_2 = "strAdvancedFlags"
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L14_2 = GetVehicleHandlingInt
  L15_2 = A0_2
  L16_2 = "CHandlingData"
  L17_2 = "fHandBrakeForce"
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = fInitialDriveMaxFlatVel
  L16_2 = fInitialDriveForce
  L17_2 = fDriveInertia
  L18_2 = 0
  L19_2 = 0.1
  L20_2 = 0
  L21_2 = nil
  L22_2 = false
  L23_2 = false
  L24_2 = 0.0
  L25_2 = true
  L26_2 = L6_2
  L27_2 = SetVehicleHandlingInt
  L28_2 = A0_2
  L29_2 = "CCarHandlingData"
  L30_2 = "strAdvancedFlags"
  L31_2 = L13_2 + 131072
  L31_2 = L31_2 + 512
  L31_2 = L31_2 + 4096
  L31_2 = L31_2 + 16
  L31_2 = L31_2 + 64
  L27_2(L28_2, L29_2, L30_2, L31_2)
  manual = true
  L27_2 = 1.0
  function L28_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = fInitialDriveMaxFlatVel
    L1_3 = L1_3 * 3.6
    L2_3 = fInitialDriveForce
    L1_3 = L1_3 * L2_3
    L2_3 = L27_2
    L1_3 = L1_3 * L2_3
    L2_3 = A0_3 / 10000
    L1_3 = L1_3 * L2_3
    L2_3 = L8_2
    L3_3 = L6_2
    L2_3 = L2_3 / L3_3
    L1_3 = L1_3 * L2_3
    L2_3 = L1_3 * 5252
    L2_3 = L2_3 / A0_3
    L3_3 = A0_3 / 10000
    L3_3 = L1_3 * L3_3
    L4_3 = L3_3
    L5_3 = L2_3
    return L4_3, L5_3
  end
  L29_2 = 1.0
  L30_2 = L4_1
  L30_2 = L30_2[L5_2]
  if L30_2 then
    L30_2 = L4_1
    L30_2 = L30_2[L5_2]
    L30_2 = L30_2.active
    if L30_2 then
      L30_2 = L30_2.boostpergear
    end
    if L30_2 then
      goto lbl_147
    end
  end
  L30_2 = {}
  ::lbl_147::
  boostpergear = L30_2
  L30_2 = EngineEfficiency
  L31_2 = A0_2
  L32_2 = {}
  L33_2 = {}
  L34_2 = L29_2
  L30_2, L31_2, L32_2 = L30_2(L31_2, L32_2, L33_2, L34_2)
  maxafr = L32_2
  Fuel_Air_Volume = L31_2
  efficiency = L30_2
  L30_2 = 14.0
  L31_2 = false
  L32_2 = false
  L33_2 = 1
  L34_2 = L15_2
  function L35_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L17_2
    L2_3 = L6_2
    L1_3 = L1_3 / L2_3
    L2_3 = L27_2
    L2_3 = L1_3 * L2_3
    L3_3 = L27_2
    L3_3 = L1_3 * L3_3
    L3_3 = L3_3 / A0_3
    L2_3 = L2_3 - L3_3
    return L2_3
  end
  L36_2 = Citizen
  L36_2 = L36_2.CreateThreadNow
  function L37_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    while "boostpergear" do
      L0_3 = A1_2
      if not L0_3 then
        break
      end
      L0_3 = L4_1
      L1_3 = L5_2
      L1_3 = L0_3[L1_3]
      if L1_3 then
        L1_3 = L5_2
        L1_3 = L0_3[L1_3]
        L1_3 = L1_3.active
        if L1_3 then
          L1_3 = L1_3.boostpergear
        end
        if L1_3 then
          goto lbl_19
        end
      end
      L1_3 = {}
      ::lbl_19::
      boostpergear = L1_3
      L2_3 = L6_2
      L1_3 = L9_2
      L3_3 = L5_2
      L3_3 = L0_3[L3_3]
      if L3_3 then
        L3_3 = L5_2
        L3_3 = L0_3[L3_3]
        L3_3 = L3_3.active
        if L3_3 then
          L3_3 = L3_3.gear_ratio
        end
        if L3_3 then
          goto lbl_37
        end
      end
      L4_3 = L6_2
      L3_3 = L10_2
      L3_3 = L3_3[L4_3]
      ::lbl_37::
      L1_3[L2_3] = L3_3
      L1_3 = EngineEfficiency
      L2_3 = A0_2
      L3_3 = {}
      L4_3 = {}
      L5_3 = L29_2
      L1_3, L2_3, L3_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      maxafr = L3_3
      Fuel_Air_Volume = L2_3
      efficiency = L1_3
      L1_3 = Fuel_Air_Volume
      L1_3 = L1_3 + 0.5
      L2_3 = maxafr
      L3_3 = Fuel_Air_Volume
      L2_3 = L2_3 - L3_3
      L3_3 = L19_2
      L2_3 = L2_3 * L3_3
      L1_3 = L1_3 + L2_3
      L2_3 = L19_2
      L2_3 = 0.5 * L2_3
      L1_3 = L1_3 - L2_3
      L30_2 = L1_3
      L1_3 = Wait
      L2_3 = 1000
      L1_3(L2_3)
    end
  end
  L36_2(L37_2)
  L36_2 = Citizen
  L36_2 = L36_2.CreateThreadNow
  function L37_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = A1_2
    if L0_3 then
      L0_3 = SetDisableVehicleEngineFires
      L1_3 = A0_2
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    while true do
      L0_3 = invehicle
      if not L0_3 then
        break
      end
      L0_3 = A1_2
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = A1_2
      if L0_3 then
        L0_3 = math
        L0_3 = L0_3.floor
        L1_3 = L34_2
        L1_3 = L1_3 * 1.2
        L1_3 = L1_3 / 0.9
        L2_3 = L19_2
        L1_3 = L1_3 * L2_3
        L0_3 = L0_3(L1_3)
        if L0_3 then
          goto lbl_37
        end
      end
      L0_3 = math
      L0_3 = L0_3.floor
      L1_3 = L24_2
      L0_3 = L0_3(L1_3)
      ::lbl_37::
      L20_2 = L0_3
      L0_3 = L28_2
      L1_3 = L19_2
      L1_3 = L1_3 * 10000
      L0_3, L1_3 = L0_3(L1_3)
      L2_3 = GetIsVehicleEngineRunning
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L2_3 = L8_2
        if L2_3 >= 1 then
          L2_3 = dynoDatabase
          L2_3 = L2_3[1]
          L2_3 = L2_3.data
          L2_3 = #L2_3
          if L2_3 > 9 then
            L2_3 = table
            L2_3 = L2_3.remove
            L3_3 = dynoDatabase
            L3_3 = L3_3[1]
            L3_3 = L3_3.data
            L4_3 = 1
            L2_3(L3_3, L4_3)
            L2_3 = table
            L2_3 = L2_3.remove
            L3_3 = dynoDatabase
            L3_3 = L3_3[2]
            L3_3 = L3_3.data
            L4_3 = 1
            L2_3(L3_3, L4_3)
            L2_3 = table
            L2_3 = L2_3.remove
            L3_3 = dynoDatabase
            L3_3 = L3_3[3]
            L3_3 = L3_3.data
            L4_3 = 1
            L2_3(L3_3, L4_3)
          end
          L2_3 = math
          L2_3 = L2_3.floor
          L3_3 = efficiency
          L3_3 = L1_3 * L3_3
          L2_3 = L2_3(L3_3)
          L3_3 = table
          L3_3 = L3_3.insert
          L4_3 = dynoDatabase
          L4_3 = L4_3[1]
          L4_3 = L4_3.data
          L5_3 = L2_3
          L3_3(L4_3, L5_3)
          L3_3 = table
          L3_3 = L3_3.insert
          L4_3 = dynoDatabase
          L4_3 = L4_3[2]
          L4_3 = L4_3.data
          L5_3 = L20_2
          L3_3(L4_3, L5_3)
          L3_3 = math
          L3_3 = L3_3.floor
          L4_3 = efficiency
          L4_3 = L0_3 * L4_3
          L3_3 = L3_3(L4_3)
          L4_3 = table
          L4_3 = L4_3.insert
          L5_3 = dynoDatabase
          L5_3 = L5_3[3]
          L5_3 = L5_3.data
          L6_3 = L3_3
          L4_3(L5_3, L6_3)
          L4_3 = SendNUIMessage
          L5_3 = {}
          L6_3 = "updateDyno"
          L7_3 = dynoDatabase
          L8_3 = L8_2
          L5_3[1] = L6_3
          L5_3[2] = L7_3
          L5_3[3] = L8_3
          L4_3(L5_3)
        end
      end
    end
  end
  L36_2(L37_2)
  L36_2 = 0.2
  L37_2 = Citizen
  L37_2 = L37_2.CreateThreadNow
  function L38_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = A1_2
    if L0_3 then
      L1_3 = L6_2
      L0_3 = L9_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3[1]
      L0_3 = L0_3 * 1.1111111111111112
      L21_2 = L0_3
      L0_3 = Entity
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      L0_3 = L0_3.state
      L1_3 = L35_2
      L2_3 = L21_2
      L1_3 = L1_3(L2_3)
      L3_3 = L0_3
      L2_3 = L0_3.set
      L4_3 = "dynodata"
      L5_3 = {}
      L6_3 = L1_3 + 0.04
      L5_3.inertia = L6_3
      L5_3.gear = 1
      L5_3.rpm = 0.2
      L6_3 = true
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L3_3 = L0_3
      L2_3 = L0_3.set
      L4_3 = "startdyno"
      L5_3 = {}
      L6_3 = GetGameTimer
      L6_3 = L6_3()
      L5_3.ts = L6_3
      L6_3 = zoffset
      L5_3.platform = L6_3
      L5_3.dyno = true
      L6_3 = L17_2
      L5_3.inertia = L6_3
      L6_3 = true
      L2_3(L3_3, L4_3, L5_3, L6_3)
    else
      L1_3 = L6_2
      L0_3 = L9_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3[1]
      L0_3 = L0_3 * 1.1111111111111112
      L21_2 = L0_3
      L0_3 = L4_2
      L1_3 = L0_3
      L0_3 = L0_3.set
      L2_3 = "gearshift"
      L3_3 = {}
      L3_3.gear = 1
      L4_3 = L15_2
      L4_3 = L4_3 * 1.32
      L4_3 = L4_3 / 3.6
      L5_3 = L21_2
      L4_3 = L4_3 / L5_3
      L3_3.gearmaxspeed = L4_3
      L4_3 = L15_2
      L5_3 = L21_2
      L4_3 = L4_3 / L5_3
      L3_3.flatspeed = L4_3
      L4_3 = L16_2
      L5_3 = L21_2
      L4_3 = L4_3 * L5_3
      L3_3.driveforce = L4_3
      L4_3 = true
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L0_3 = nil
    while true do
      L1_3 = invehicle
      if not L1_3 then
        break
      end
      L1_3 = manual
      if not L1_3 then
        break
      end
      L1_3 = A1_2
      if L1_3 then
        L1_3 = HideHudAndRadarThisFrame
        L1_3()
        L1_3 = L35_2
        L2_3 = L21_2
        L1_3 = L1_3(L2_3)
        L2_3 = SetVehicleHandlingFloat
        L3_3 = A0_2
        L4_3 = "CHandlingData"
        L5_3 = "fDriveInertia"
        L6_3 = L1_3 + 0.04
        L2_3(L3_3, L4_3, L5_3, L6_3)
      end
      L1_3 = GetControlNormal
      L2_3 = 0
      L3_3 = 21
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = tuning_inertia
      if not L2_3 then
        L2_3 = L17_2
      end
      L17_2 = L2_3
      L2_3 = nInitialDriveGears
      L6_2 = L2_3
      L2_3 = fInitialDriveForce
      L16_2 = L2_3
      L2_3 = fInitialDriveMaxFlatVel
      L15_2 = L2_3
      L3_3 = L6_2
      L2_3 = L9_2
      L2_3 = L2_3[L3_3]
      L3_3 = L8_2
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3 * 1.1111111111111112
      L21_2 = L2_3
      L2_3 = L15_2
      L2_3 = L2_3 * 1.32
      L2_3 = L2_3 / 3.6
      L3_3 = L21_2
      L2_3 = L2_3 / L3_3
      L18_2 = L2_3
      L2_3 = L15_2
      L3_3 = L21_2
      L2_3 = L2_3 / L3_3
      L34_2 = L2_3
      L2_3 = GetVehicleCurrentRpm
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      L19_2 = L2_3
      L2_3 = GetEntitySpeed
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      L2_3 = L2_3 * 3.6
      L24_2 = L2_3
      L2_3 = L32_2
      if L2_3 then
        L2_3 = A1_2
        if not L2_3 then
          L2_3 = 0.1
          if L1_3 < L2_3 then
            L3_3 = L6_2
            L2_3 = L9_2
            L2_3 = L2_3[L3_3]
            L3_3 = L8_2
            L2_3 = L2_3[L3_3]
            L2_3 = L2_3 * 1.1111111111111112
            L21_2 = L2_3
            L2_3 = L15_2
            L2_3 = L2_3 * 1.32
            L2_3 = L2_3 / 3.6
            L3_3 = L21_2
            L2_3 = L2_3 / L3_3
            L18_2 = L2_3
            L2_3 = DisableControlAction
            L3_3 = 0
            L4_3 = 71
            L2_3(L3_3, L4_3)
            L2_3 = SetVehicleCheatPowerIncrease
            L3_3 = A0_2
            L4_3 = 1.0
            L2_3(L3_3, L4_3)
            L2_3 = ForceVehicleSingleGear
            L3_3 = A0_2
            L4_3 = L18_2
            L5_3 = A1_2
            L2_3(L3_3, L4_3, L5_3)
            L2_3 = Wait
            L3_3 = 10
            L2_3(L3_3)
            L2_3 = false
            L32_2 = L2_3
          end
        end
      end
      L2_3 = L27_2
      L29_2 = L2_3
      L2_3 = GetControlNormal
      L3_3 = 0
      L4_3 = 71
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = GetVehicleCheatPowerIncrease
      L4_3 = A0_2
      L3_3 = L3_3(L4_3)
      L3_3 = L3_3 * L2_3
      L27_2 = L3_3
      if L2_3 > 0.0 then
        L3_3 = A1_2
        if not L3_3 then
          L3_3 = L32_2
          if not L3_3 then
            L3_3 = 0.1
            if L1_3 < L3_3 then
              L3_3 = L8_2
              L4_3 = A2_2
              if L4_3 then
                L4_3 = 0
                if L4_3 then
                  goto lbl_222
                end
              end
              L4_3 = 0
              ::lbl_222::
              if L3_3 > L4_3 then
                L3_3 = L8_2
                L4_3 = L6_2
                if L3_3 <= L4_3 then
                  L3_3 = L19_2
                  L4_3 = 0.99999
                  if L3_3 < L4_3 then
                    goto lbl_239
                  end
                end
              end
              L3_3 = L11_2
              if L3_3 then
                L3_3 = L19_2
                L4_3 = 0.99999
                ::lbl_239::
                if L3_3 < L4_3 then
                  L3_3 = false
                  L25_2 = L3_3
                  L3_3 = L26_2
                  if not (L3_3 > 1) then
                  end
                  L3_3 = 1
                  L26_2 = L3_3
                  L3_3 = SetVehicleHandlingFloat
                  L4_3 = A0_2
                  L5_3 = "CHandlingData"
                  L6_3 = "fInitialDriveMaxFlatVel"
                  L7_3 = L34_2
                  L3_3(L4_3, L5_3, L6_3, L7_3)
                  L3_3 = SetVehicleHandlingFloat
                  L4_3 = A0_2
                  L5_3 = "CHandlingData"
                  L6_3 = "fInitialDriveForce"
                  L7_3 = L16_2
                  L8_3 = L21_2
                  L7_3 = L7_3 * L8_3
                  L7_3 = L7_3 * L2_3
                  L3_3(L4_3, L5_3, L6_3, L7_3)
                  L3_3 = SetVehicleHandlingInt
                  L4_3 = A0_2
                  L5_3 = "CHandlingData"
                  L6_3 = "nInitialDriveGears"
                  L7_3 = 1
                  L3_3(L4_3, L5_3, L6_3, L7_3)
                  L3_3 = SetVehicleMaxSpeed
                  L4_3 = A0_2
                  L5_3 = L18_2
                  L5_3 = L5_3 + 1.0
                  L3_3(L4_3, L5_3)
                  L3_3 = ModifyVehicleTopSpeed
                  L4_3 = A0_2
                  L5_3 = 1.0
                  L3_3(L4_3, L5_3)
                  L3_3 = SetVehicleHandlingInt
                  L4_3 = A0_2
                  L5_3 = "CCarHandlingData"
                  L6_3 = "strAdvancedFlags"
                  L7_3 = L13_2
                  L7_3 = L7_3 + 4194304
                  L7_3 = L7_3 + 131072
                  L7_3 = L7_3 + 67108864
                  L7_3 = L7_3 + 536870912
                  L3_3(L4_3, L5_3, L6_3, L7_3)
                  L3_3 = SetVehicleHandlingFloat
                  L4_3 = A0_2
                  L5_3 = "CHandlingData"
                  L6_3 = "fDriveInertia"
                  L7_3 = L17_2
                  L7_3 = L7_3 * L2_3
                  L3_3(L4_3, L5_3, L6_3, L7_3)
              end
              else
                L3_3 = L32_2
                if not L3_3 then
                  L3_3 = A2_2
                  if not L3_3 then
                    L3_3 = L8_2
                    L4_3 = L6_2
                    if L3_3 < L4_3 then
                      L3_3 = L19_2
                      L4_3 = 0.9
                      if L3_3 > L4_3 then
                        L3_3 = SetVehicleCurrentRpm
                        L4_3 = A0_2
                        L5_3 = 1.1
                        L3_3(L4_3, L5_3)
                      end
                      L3_3 = true
                      L25_2 = L3_3
                      L3_3 = L26_2
                      if 1 ~= L3_3 then
                      end
                      L3_3 = L6_2
                      L26_2 = L3_3
                      L3_3 = SetVehicleHandlingFloat
                      L4_3 = A0_2
                      L5_3 = "CHandlingData"
                      L6_3 = "fInitialDriveMaxFlatVel"
                      L7_3 = L15_2
                      L7_3 = L7_3 + 0.01
                      L3_3(L4_3, L5_3, L6_3, L7_3)
                      L3_3 = SetVehicleHandlingFloat
                      L4_3 = A0_2
                      L5_3 = "CHandlingData"
                      L6_3 = "fInitialDriveForce"
                      L7_3 = L16_2
                      L8_3 = 0.0 * L2_3
                      L7_3 = L7_3 + L8_3
                      L3_3(L4_3, L5_3, L6_3, L7_3)
                      L3_3 = SetVehicleHandlingInt
                      L4_3 = A0_2
                      L5_3 = "CHandlingData"
                      L6_3 = "nInitialDriveGears"
                      L7_3 = L6_2
                      L3_3(L4_3, L5_3, L6_3, L7_3)
                      L3_3 = SetVehicleHandlingFloat
                      L4_3 = A0_2
                      L5_3 = "CHandlingData"
                      L6_3 = "fDriveInertia"
                      L7_3 = L17_2
                      L7_3 = L7_3 * L2_3
                      L3_3(L4_3, L5_3, L6_3, L7_3)
                      L3_3 = SetVehicleCheatPowerIncrease
                      L4_3 = A0_2
                      L5_3 = 1.0
                      L3_3(L4_3, L5_3)
                      L3_3 = ForceVehicleGear
                      L4_3 = A0_2
                      L5_3 = L25_2
                      if L5_3 then
                        L5_3 = L8_2
                        if L5_3 then
                          goto lbl_372
                        end
                      end
                      L5_3 = 1
                      ::lbl_372::
                      L3_3(L4_3, L5_3)
                      L3_3 = SetVehicleHighGear
                      L4_3 = A0_2
                      L5_3 = L25_2
                      if L5_3 then
                        L5_3 = L6_2
                        if L5_3 then
                          goto lbl_382
                        end
                      end
                      L5_3 = 1
                      ::lbl_382::
                      L3_3(L4_3, L5_3)
                      L3_3 = SetEntityMaxSpeed
                      L4_3 = A0_2
                      L5_3 = L18_2
                      L3_3(L4_3, L5_3)
                      L3_3 = SetVehicleMaxSpeed
                      L4_3 = A0_2
                      L5_3 = L18_2
                      L3_3(L4_3, L5_3)
                      L3_3 = ModifyVehicleTopSpeed
                      L4_3 = A0_2
                      L5_3 = 1.0
                      L3_3(L4_3, L5_3)
                      L3_3 = Wait
                      L4_3 = 1
                      L3_3(L4_3)
                    end
                  end
                end
              end
              L3_3 = L33_2
              L4_3 = L8_2
              if L3_3 ~= L4_3 then
                L3_3 = Wait
                L4_3 = 50
                L3_3(L4_3)
              end
              L3_3 = L8_2
              L33_2 = L3_3
              L3_3 = L8_2
              L4_3 = L6_2
              if L3_3 == L4_3 then
                L3_3 = SetVehicleHandlingInt
                L4_3 = A0_2
                L5_3 = "CCarHandlingData"
                L6_3 = "strAdvancedFlags"
                L7_3 = L13_2
                L3_3(L4_3, L5_3, L6_3, L7_3)
              else
                L3_3 = L8_2
                if 1 == L3_3 then
                  L3_3 = SetVehicleHandlingInt
                  L4_3 = A0_2
                  L5_3 = "CCarHandlingData"
                  L6_3 = "strAdvancedFlags"
                  L7_3 = L13_2
                  L7_3 = L7_3 + 131072
                  L7_3 = L7_3 + 512
                  L7_3 = L7_3 + 4096
                  L3_3(L4_3, L5_3, L6_3, L7_3)
                end
              end
          end
        end
      end
      else
        L3_3 = A1_2
        if not L3_3 then
          L3_3 = GetControlNormal
          L4_3 = 0
          L5_3 = 72
          L3_3 = L3_3(L4_3, L5_3)
          L4_3 = 0.1
          if L3_3 < L4_3 then
            L3_3 = L21_2
            if L3_3 then
              L3_3 = L19_2
              L4_3 = 0.3
              if L3_3 > L4_3 then
                L3_3 = 0.1
                if L1_3 < L3_3 then
                  L3_3 = L24_2
                  L3_3 = L3_3 / 3.6
                  L4_3 = L18_2
                  L3_3 = L3_3 / L4_3
                  L3_3 = L3_3 * 1.01
                  L4_3 = false
                  L25_2 = L4_3
                  L4_3 = SetVehicleHandlingFloat
                  L5_3 = A0_2
                  L6_3 = "CHandlingData"
                  L7_3 = "fDriveInertia"
                  L8_3 = L17_2
                  L9_3 = L8_2
                  L8_3 = L8_3 / L9_3
                  L9_3 = 1.0
                  L9_3 = L9_3 - L3_3
                  L8_3 = L8_3 * L9_3
                  L8_3 = 0.1 + L8_3
                  L4_3(L5_3, L6_3, L7_3, L8_3)
                  L4_3 = SetVehicleHandlingFloat
                  L5_3 = A0_2
                  L6_3 = "CHandlingData"
                  L7_3 = "fInitialDriveForce"
                  L8_3 = L16_2
                  L9_3 = L8_2
                  L10_3 = L6_2
                  L9_3 = L9_3 / L10_3
                  L8_3 = L8_3 * L9_3
                  L9_3 = 1
                  L9_3 = L9_3 - L3_3
                  L8_3 = L8_3 * L9_3
                  L4_3(L5_3, L6_3, L7_3, L8_3)
                end
              end
            end
          end
        end
      end
      L3_3 = GetControlNormal
      L4_3 = 0
      L5_3 = 72
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = A1_2
      if not L4_3 then
        L4_3 = 0.1
        if L3_3 < L4_3 then
          L4_3 = 0.1
          if L1_3 < L4_3 then
            L4_3 = SetVehicleHandlingInt
            L5_3 = A0_2
            L6_3 = "CHandlingData"
            L7_3 = "nInitialDriveGears"
            L8_3 = L25_2
            if L8_3 then
              L8_3 = L6_2
              if L8_3 then
                goto lbl_521
              end
            end
            L8_3 = 1
            ::lbl_521::
            L4_3(L5_3, L6_3, L7_3, L8_3)
            L4_3 = ForceVehicleGear
            L5_3 = A0_2
            L6_3 = L25_2
            if L6_3 then
              L6_3 = L8_2
              if L6_3 then
                goto lbl_531
              end
            end
            L6_3 = 1
            ::lbl_531::
            L4_3(L5_3, L6_3)
            L4_3 = SetVehicleHighGear
            L5_3 = A0_2
            L6_3 = L25_2
            if L6_3 then
              L6_3 = L6_2
              if L6_3 then
                goto lbl_541
              end
            end
            L6_3 = 1
            ::lbl_541::
            L4_3(L5_3, L6_3)
          end
        end
      end
      L4_3 = 0.4
      if L3_3 > L4_3 then
        L4_3 = L24_2
        if L4_3 < 1 then
          L4_3 = SetVehicleHandlingFloat
          L5_3 = A0_2
          L6_3 = "CHandlingData"
          L7_3 = "fInitialDriveForce"
          L8_3 = L16_2
          L8_3 = L8_3 + 0.0
          L4_3(L5_3, L6_3, L7_3, L8_3)
          while true do
            L4_3 = GetControlNormal
            L5_3 = 0
            L6_3 = 72
            L4_3 = L4_3(L5_3, L6_3)
            L5_3 = 0.5
            if not (L4_3 > L5_3) then
              break
            end
            L4_3 = Wait
            L5_3 = 111
            L4_3(L5_3)
            L4_3 = SetVehicleHandlingFloat
            L5_3 = A0_2
            L6_3 = "CHandlingData"
            L7_3 = "fInitialDriveForce"
            L8_3 = L16_2
            L8_3 = L8_3 + 0.0
            L4_3(L5_3, L6_3, L7_3, L8_3)
          end
        end
      end
      L4_3 = A1_2
      if L4_3 then
        L4_3 = IsControlJustPressed
        L5_3 = 0
        L6_3 = 246
        L4_3 = L4_3(L5_3, L6_3)
        if L4_3 then
          L4_3 = SendNUIMessage
          L5_3 = {}
          L6_3 = "openDyno"
          L7_3 = true
          L5_3[1] = L6_3
          L5_3[2] = L7_3
          L4_3(L5_3)
          manual = false
          indyno = false
          invehicle = false
          L4_3 = 1
          L8_2 = L4_3
          break
        end
        L4_3 = IsControlJustPressed
        L5_3 = 0
        L6_3 = 303
        L4_3 = L4_3(L5_3, L6_3)
        if L4_3 then
          L4_3 = SendNUIMessage
          L5_3 = {}
          L6_3 = "resetDyno"
          L5_3[1] = L6_3
          L4_3(L5_3)
          L4_3 = SetVehicleCurrentRpm
          L5_3 = A0_2
          L6_3 = 0
          L4_3(L5_3, L6_3)
          L4_3 = 1
          L8_2 = L4_3
          L4_3 = {}
          L5_3 = {}
          L5_3.label = "TORQUE (N/m)"
          L6_3 = {}
          L5_3.data = L6_3
          L5_3.borderWidth = 2
          L5_3.backgroundColor = "#FFF06880"
          L5_3.borderColor = "#FFF06880"
          L6_3 = {}
          L6_3.label = "Speed (KM/H)"
          L7_3 = {}
          L6_3.data = L7_3
          L6_3.borderWidth = 2
          L6_3.backgroundColor = "#7BC0FF66"
          L6_3.borderColor = "#7BC0FF66"
          L7_3 = {}
          L7_3.label = "Horsepower (HP)"
          L8_3 = {}
          L7_3.data = L8_3
          L7_3.borderWidth = 2
          L7_3.backgroundColor = "#ffffff70"
          L7_3.borderColor = "#ffffff70"
          L4_3[1] = L5_3
          L4_3[2] = L6_3
          L4_3[3] = L7_3
          dynoDatabase = L4_3
        end
        L4_3 = IsControlJustPressed
        L5_3 = 0
        L6_3 = 27
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          L4_3 = IsControlJustPressed
          L5_3 = 0
          L6_3 = 188
          L4_3 = L4_3(L5_3, L6_3)
          if not L4_3 then
            goto lbl_660
          end
        end
        L4_3 = UpshiftGear
        L4_3()
        ::lbl_660::
        L4_3 = IsControlJustPressed
        L5_3 = 0
        L6_3 = 173
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          L4_3 = IsControlJustPressed
          L5_3 = 0
          L6_3 = 187
          L4_3 = L4_3(L5_3, L6_3)
          if not L4_3 then
            goto lbl_674
          end
        end
        L4_3 = DownShiftGear
        L4_3()
      end
      ::lbl_674::
      L4_3 = L22_2
      if not L4_3 then
        L4_3 = 0.1
        if not (L1_3 > L4_3) then
          goto lbl_777
        end
      end
      L4_3 = SetVehicleClutch
      L5_3 = A0_2
      L6_3 = 1.0
      L4_3(L5_3, L6_3)
      L4_3 = SetVehicleHandlingInt
      L5_3 = A0_2
      L6_3 = "CHandlingData"
      L7_3 = "nInitialDriveGears"
      L8_3 = L6_2
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = ForceVehicleGear
      L5_3 = A0_2
      L6_3 = L6_2
      L4_3(L5_3, L6_3)
      L4_3 = SetVehicleHandlingInt
      L5_3 = A0_2
      L6_3 = "CCarHandlingData"
      L7_3 = "strAdvancedFlags"
      L8_3 = L13_2
      L8_3 = L8_3 + 131072
      L8_3 = L8_3 + 512
      L8_3 = L8_3 + 4096
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = SetVehicleHandlingFloat
      L5_3 = A0_2
      L6_3 = "CHandlingData"
      L7_3 = "fDriveInertia"
      L8_3 = L17_2
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = SetVehicleHandlingFloat
      L5_3 = A0_2
      L6_3 = "CHandlingData"
      L7_3 = "fHandBrakeForce"
      L8_3 = 9.9999999E7
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = SetControlNormal
      L5_3 = 0
      L6_3 = 76
      L7_3 = L1_3 + 0.0
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = SetVehicleHandlingFloat
      L5_3 = A0_2
      L6_3 = "CHandlingData"
      L7_3 = "fHandBrakeForce"
      L8_3 = 9.9999999E7
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = SetVehicleHandlingFloat
      L5_3 = A0_2
      L6_3 = "CHandlingData"
      L7_3 = "fInitialDriveForce"
      L8_3 = L16_2
      L8_3 = L8_3 + 0.0
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = SetVehicleHandlingFloat
      L5_3 = A0_2
      L6_3 = "CHandlingData"
      L7_3 = "fInitialDriveMaxFlatVel"
      L8_3 = L15_2
      L8_3 = L8_3 + 0.01
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = SetVehicleCheatPowerIncrease
      L5_3 = A0_2
      L6_3 = 1.0
      L4_3(L5_3, L6_3)
      L4_3 = ModifyVehicleTopSpeed
      L5_3 = A0_2
      L6_3 = 1.0
      L4_3(L5_3, L6_3)
      L5_3 = L6_2
      L4_3 = L9_2
      L4_3 = L4_3[L5_3]
      L5_3 = L8_2
      L4_3 = L4_3[L5_3]
      L4_3 = L4_3 * 1.1111111111111112
      L21_2 = L4_3
      L4_3 = L15_2
      L4_3 = L4_3 * 1.32
      L4_3 = L4_3 / 3.6
      L5_3 = L21_2
      L4_3 = L4_3 / L5_3
      L18_2 = L4_3
      L4_3 = ForceVehicleSingleGear
      L5_3 = A0_2
      L6_3 = L18_2
      L7_3 = false
      L4_3(L5_3, L6_3, L7_3)
      goto lbl_781
      ::lbl_777::
      if L0_3 then
        L8_2 = L0_3
        L0_3 = nil
      end
      ::lbl_781::
      L4_3 = Wait
      L5_3 = 0
      L4_3(L5_3)
    end
    L1_3 = A1_2
    if L1_3 then
      L1_3 = Entity
      L2_3 = A0_2
      L1_3 = L1_3(L2_3)
      L1_3 = L1_3.state
      L2_3 = L1_3
      L1_3 = L1_3.set
      L3_3 = "startdyno"
      L4_3 = {}
      L5_3 = GetGameTimer
      L5_3 = L5_3()
      L4_3.ts = L5_3
      L5_3 = zoffset
      L4_3.platform = L5_3
      L4_3.dyno = false
      L5_3 = L17_2
      L4_3.inertia = L5_3
      L5_3 = true
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = false
      A1_2 = L1_3
      L1_3 = SetEntityHasGravity
      L2_3 = A0_2
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = SetVehicleGravity
      L2_3 = A0_2
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = SetEntityCollision
      L2_3 = A0_2
      L3_3 = true
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = SetVehicleOnGroundProperly
      L2_3 = A0_2
      L1_3(L2_3)
      L1_3 = SendNuiMessage
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = {}
      L3_3.dyno = false
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    end
    L1_3 = Wait
    L2_3 = 1500
    L1_3(L2_3)
    L1_3 = SetVehicleCurrentRpm
    L2_3 = A0_2
    L3_3 = 0.2
    L1_3(L2_3, L3_3)
    L1_3 = SetEntityAsMissionEntity
    L2_3 = A0_2
    L3_3 = true
    L4_3 = true
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = L4_2
    L2_3 = L1_3
    L1_3 = L1_3.set
    L3_3 = "vehiclestatreset"
    L4_3 = {}
    L5_3 = L13_2
    L4_3.strAdvancedFlags = L5_3
    L5_3 = L15_2
    L4_3.fInitialDriveMaxFlatVel = L5_3
    L5_3 = L16_2
    L4_3.fInitialDriveForce = L5_3
    L5_3 = L7_2
    L4_3.fDriveInertia = L5_3
    L5_3 = L6_2
    L4_3.nInitialDriveGears = L5_3
    L5_3 = true
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = SetVehicleHandlingFloat
    L2_3 = A0_2
    L3_3 = "CHandlingData"
    L4_3 = "fHandBrakeForce"
    L5_3 = L14_2
    L5_3 = L5_3 + 0.0
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = SetVehicleHighGear
    L2_3 = A0_2
    L3_3 = L6_2
    L1_3(L2_3, L3_3)
    L1_3 = ForceVehicleGear
    L2_3 = A0_2
    L3_3 = 0
    L1_3(L2_3, L3_3)
    L1_3 = SetEntityMaxSpeed
    L2_3 = A0_2
    L3_3 = L15_2
    L3_3 = L3_3 * 1.3
    L3_3 = L3_3 / 3.6
    L1_3(L2_3, L3_3)
    L1_3 = SetVehicleMaxSpeed
    L2_3 = A0_2
    L3_3 = 0.0
    L1_3(L2_3, L3_3)
    L1_3 = SetVehicleCheatPowerIncrease
    L2_3 = A0_2
    L3_3 = GetVehicleCheatPowerIncrease
    L4_3 = A0_2
    L3_3 = L3_3(L4_3)
    L3_3 = L3_3 + 0.0
    L1_3(L2_3, L3_3)
    L1_3 = ModifyVehicleTopSpeed
    L2_3 = A0_2
    L3_3 = 1.01
    L1_3(L2_3, L3_3)
    L1_3 = SetVehicleHandbrake
    L2_3 = A0_2
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = SetEntityCollision
    L2_3 = A0_2
    L3_3 = true
    L4_3 = true
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = SetEntityControlable
    L2_3 = A0_2
    L1_3(L2_3)
    L1_3 = SetEntityHasGravity
    L2_3 = A0_2
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = SetVehicleGravity
    L2_3 = A0_2
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = DetachEntity
    L2_3 = A0_2
    L3_3 = false
    L4_3 = false
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = FreezeEntityPosition
    L2_3 = A0_2
    L3_3 = false
    L1_3(L2_3, L3_3)
    manual = false
    L1_3 = false
    A1_2 = L1_3
    indyno = false
    tuning_inertia = nil
  end
  L37_2(L38_2)
  if A2_2 then
    L37_2 = Citizen
    L37_2 = L37_2.CreateThreadNow
    function L38_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      while true do
        L0_3 = invehicle
        if not L0_3 then
          break
        end
        L0_3 = L24_2
        L1_3 = L18_2
        L1_3 = L1_3 * 3.6
        L0_3 = L0_3 / L1_3
        L1_3 = A3_2
        if L1_3 then
          L1_3 = 0.6
          if L1_3 then
            goto lbl_17
          end
        end
        L1_3 = 0.9
        ::lbl_17::
        L2_3 = L19_2
        if L1_3 <= L2_3 then
          L2_3 = L8_2
          L3_3 = L6_2
          if L2_3 < L3_3 then
            L2_3 = A3_2
            if L2_3 then
              L2_3 = 0.65
              if L2_3 then
                goto lbl_31
              end
            end
            L2_3 = 0.89
            ::lbl_31::
            if L0_3 > L2_3 then
              L3_3 = L18_2
              L4_3 = L8_2
              L4_3 = L4_3 + 1
              L8_2 = L4_3
              L4_3 = true
              L32_2 = L4_3
              while true do
                L4_3 = L32_2
                if not L4_3 then
                  break
                end
                L4_3 = Wait
                L5_3 = 1
                L4_3(L5_3)
              end
            end
          end
        end
        L2_3 = A3_2
        if L2_3 then
          L2_3 = L19_2
          L3_3 = 0.75
          if L2_3 > L3_3 then
            L2_3 = L8_2
            L3_3 = L6_2
            if L2_3 == L3_3 then
              L2_3 = SetVehicleCurrentRpm
              L3_3 = A0_2
              L4_3 = 0.75
              L2_3(L3_3, L4_3)
            end
          end
        end
        L2_3 = 0.6
        if L0_3 < L2_3 then
          L2_3 = GetControlNormal
          L3_3 = 0
          L4_3 = 71
          L2_3 = L2_3(L3_3, L4_3)
          L3_3 = 0.1
          if L2_3 < L3_3 then
            L2_3 = L8_2
            if L2_3 > 1 then
              L2_3 = L8_2
              L2_3 = L2_3 - 1
              L8_2 = L2_3
              L2_3 = Wait
              L3_3 = 100
              L2_3(L3_3)
            end
          end
        end
        L2_3 = Wait
        L3_3 = 0
        L2_3(L3_3)
      end
    end
    L37_2(L38_2)
  end
  function L37_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = manual
    if L0_3 then
      L0_3 = L8_2
      L0_3 = L0_3 + 1
      L1_3 = L6_2
      if L0_3 <= L1_3 then
        L0_3 = true
        L32_2 = L0_3
        L1_3 = L6_2
        L0_3 = L9_2
        L0_3 = L0_3[L1_3]
        L1_3 = L8_2
        L1_3 = L1_3 + 1
        L0_3 = L0_3[L1_3]
        L0_3 = L0_3 * 1.1111111111111112
        L1_3 = L15_2
        L1_3 = L1_3 * 1.32
        L1_3 = L1_3 / 3.6
        L1_3 = L1_3 / L0_3
        nextgearspeed = L1_3
        L1_3 = L8_2
        L1_3 = L1_3 + 1
        L8_2 = L1_3
        L1_3 = A1_2
        if L1_3 then
          L1_3 = math
          L1_3 = L1_3.floor
          L2_3 = L18_2
          L3_3 = L19_2
          L2_3 = L2_3 * L3_3
          L1_3 = L1_3(L2_3)
          if L1_3 then
            goto lbl_53
          end
        end
        L1_3 = math
        L1_3 = L1_3.floor
        L2_3 = GetEntitySpeed
        L3_3 = A0_2
        L2_3 = L2_3(L3_3)
        L2_3 = L2_3 * 4.2
        L1_3 = L1_3(L2_3)
        ::lbl_53::
        wheelspeed = L1_3
        L1_3 = L35_2
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        L36_2 = L1_3
        L2_3 = A1_2
        if L2_3 then
          L2_3 = wheelspeed
          L3_3 = nextgearspeed
          L2_3 = L2_3 / L3_3
          L3_3 = L4_2
          L4_3 = L3_3
          L3_3 = L3_3.set
          L5_3 = "dynodata"
          L6_3 = {}
          L7_3 = L1_3 + 0.04
          L6_3.inertia = L7_3
          L7_3 = L8_2
          L6_3.gear = L7_3
          L6_3.rpm = L2_3
          L7_3 = true
          L3_3(L4_3, L5_3, L6_3, L7_3)
          L3_3 = Wait
          L4_3 = 1
          L3_3(L4_3)
          L3_3 = SetVehicleHandlingFloat
          L4_3 = A0_2
          L5_3 = "CHandlingData"
          L6_3 = "fDriveInertia"
          L7_3 = L1_3 + 0.04
          L3_3(L4_3, L5_3, L6_3, L7_3)
          L3_3 = SetVehicleForwardSpeed
          L4_3 = A0_2
          L5_3 = nextgearspeed
          L3_3(L4_3, L5_3)
        else
          L2_3 = L4_2
          L3_3 = L2_3
          L2_3 = L2_3.set
          L4_3 = "gearshift"
          L5_3 = {}
          L6_3 = L8_2
          L5_3.gear = L6_3
          L6_3 = L18_2
          L5_3.gearmaxspeed = L6_3
          L6_3 = L15_2
          L6_3 = L6_3 / L0_3
          L5_3.flatspeed = L6_3
          L6_3 = L16_2
          L6_3 = L6_3 * L0_3
          L5_3.driveforce = L6_3
          L6_3 = true
          L2_3(L3_3, L4_3, L5_3, L6_3)
        end
        L2_3 = SetVehicleHandlingInt
        L3_3 = A0_2
        L4_3 = "CCarHandlingData"
        L5_3 = "strAdvancedFlags"
        L6_3 = L13_2
        L6_3 = L6_3 + 131072
        L6_3 = L6_3 + 512
        L6_3 = L6_3 + 4096
        L2_3(L3_3, L4_3, L5_3, L6_3)
        L2_3 = SetVehicleCheatPowerIncrease
        L3_3 = A0_2
        L4_3 = L27_2
        L4_3 = L4_3 + 0.0
        L2_3(L3_3, L4_3)
        L2_3 = ForceVehicleSingleGear
        L3_3 = A0_2
        L4_3 = nextgearspeed
        L5_3 = A1_2
        L2_3(L3_3, L4_3, L5_3)
        L2_3 = Wait
        L3_3 = 50
        L2_3(L3_3)
        L2_3 = false
        L32_2 = L2_3
      end
    end
  end
  UpshiftGear = L37_2
  function L37_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = manual
    if L0_3 then
      L1_3 = L6_2
      L0_3 = L9_2
      L0_3 = L0_3[L1_3]
      L1_3 = L8_2
      L1_3 = L1_3 - 1
      L0_3 = L0_3[L1_3]
      if L0_3 then
        L0_3 = L8_2
        L0_3 = L0_3 - 1
        if L0_3 >= 1 then
          L0_3 = true
          L32_2 = L0_3
          L0_3 = L8_2
          L0_3 = L0_3 - 1
          L8_2 = L0_3
          L1_3 = L6_2
          L0_3 = L9_2
          L0_3 = L0_3[L1_3]
          L1_3 = L8_2
          if L1_3 > 1 then
            L1_3 = L8_2
            if L1_3 then
              goto lbl_34
            end
          end
          L1_3 = 1
          ::lbl_34::
          L0_3 = L0_3[L1_3]
          L0_3 = L0_3 * 1.1111111111111112
          L1_3 = L15_2
          L1_3 = L1_3 * 1.32
          L1_3 = L1_3 / 3.6
          L1_3 = L1_3 / L0_3
          nextgearspeed = L1_3
          L1_3 = A1_2
          if L1_3 then
            L1_3 = math
            L1_3 = L1_3.floor
            L2_3 = L18_2
            L3_3 = L19_2
            L2_3 = L2_3 * L3_3
            L1_3 = L1_3(L2_3)
            if L1_3 then
              goto lbl_65
            end
          end
          L1_3 = math
          L1_3 = L1_3.floor
          L2_3 = GetEntitySpeed
          L3_3 = A0_2
          L2_3 = L2_3(L3_3)
          L2_3 = L2_3 * 4.2
          L1_3 = L1_3(L2_3)
          ::lbl_65::
          wheelspeed = L1_3
          L1_3 = L35_2
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          L36_2 = L1_3
          L2_3 = A1_2
          if L2_3 then
            L2_3 = wheelspeed
            L3_3 = nextgearspeed
            L2_3 = L2_3 / L3_3
            L3_3 = SetVehicleCurrentRpm
            L4_3 = A0_2
            L5_3 = L2_3 <= 0.0 and L5_3
            L3_3(L4_3, L5_3)
            L3_3 = SetVehicleHandlingFloat
            L4_3 = A0_2
            L5_3 = "CHandlingData"
            L6_3 = "fDriveInertia"
            L7_3 = L1_3 + 0.04
            L3_3(L4_3, L5_3, L6_3, L7_3)
            L3_3 = L4_2
            L4_3 = L3_3
            L3_3 = L3_3.set
            L5_3 = "dynodata"
            L6_3 = {}
            L7_3 = L1_3 + 0.04
            L6_3.inertia = L7_3
            L7_3 = L8_2
            L6_3.gear = L7_3
            L6_3.rpm = L2_3
            L7_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3)
          else
            L2_3 = L4_2
            L3_3 = L2_3
            L2_3 = L2_3.set
            L4_3 = "gearshift"
            L5_3 = {}
            L6_3 = L8_2
            L5_3.gear = L6_3
            L6_3 = nextgearspeed
            L5_3.gearmaxspeed = L6_3
            L6_3 = L15_2
            L6_3 = L6_3 / L0_3
            L5_3.flatspeed = L6_3
            L6_3 = L16_2
            L6_3 = L6_3 * L0_3
            L5_3.driveforce = L6_3
            L6_3 = true
            L2_3(L3_3, L4_3, L5_3, L6_3)
          end
          L2_3 = SetVehicleHandlingInt
          L3_3 = A0_2
          L4_3 = "CCarHandlingData"
          L5_3 = "strAdvancedFlags"
          L6_3 = L13_2
          L6_3 = L6_3 + 131072
          L6_3 = L6_3 + 512
          L6_3 = L6_3 + 4096
          L2_3(L3_3, L4_3, L5_3, L6_3)
          L2_3 = SetVehicleCheatPowerIncrease
          L3_3 = A0_2
          L4_3 = L27_2
          L4_3 = L4_3 + 0.0
          L2_3(L3_3, L4_3)
          L2_3 = ForceVehicleSingleGear
          L3_3 = A0_2
          L4_3 = nextgearspeed
          L5_3 = A1_2
          L2_3(L3_3, L4_3, L5_3)
          L2_3 = Wait
          L3_3 = 50
          L2_3(L3_3)
          L2_3 = false
          L32_2 = L2_3
        end
      end
    end
  end
  DownShiftGear = L37_2
  L37_2 = 1
  L38_2 = exports
  L39_2 = "Gear"
  function L40_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    if 0 == A0_3 then
      L1_3 = print
      L2_3 = L22_2
      L1_3(L2_3)
      L1_3 = true
      L22_2 = L1_3
      return
    end
    L1_3 = L6_2
    if A0_3 > L1_3 then
      L1_3 = true
      L23_2 = L1_3
      return
    end
    L1_3 = GetControlNormal
    L2_3 = 0
    L3_3 = 21
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = 0.3
    if L1_3 < L2_3 then
      return
    end
    L1_3 = true
    L32_2 = L1_3
    L1_3 = false
    L23_2 = L1_3
    L8_2 = A0_3
    L1_3 = false
    L22_2 = L1_3
    L2_3 = L6_2
    L1_3 = L9_2
    L1_3 = L1_3[L2_3]
    L2_3 = L8_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3 * 1.1111111111111112
    L2_3 = L15_2
    L2_3 = L2_3 * 1.32
    L2_3 = L2_3 / 3.6
    L2_3 = L2_3 / L1_3
    nextgearspeed = L2_3
    L2_3 = L37_2
    L3_3 = L8_2
    if L2_3 > L3_3 then
      L2_3 = SetVehicleCurrentRpm
      L3_3 = A0_2
      L4_3 = GetEntitySpeed
      L5_3 = A0_2
      L4_3 = L4_3(L5_3)
      L5_3 = nextgearspeed
      L4_3 = L4_3 / L5_3
      L2_3(L3_3, L4_3)
    end
    L2_3 = L8_2
    L37_2 = L2_3
    L2_3 = SetVehicleHandlingInt
    L3_3 = A0_2
    L4_3 = "CCarHandlingData"
    L5_3 = "strAdvancedFlags"
    L6_3 = L13_2
    L6_3 = L6_3 + 131072
    L6_3 = L6_3 + 512
    L6_3 = L6_3 + 4096
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = SetVehicleCheatPowerIncrease
    L3_3 = A0_2
    L4_3 = L27_2
    L4_3 = L4_3 + 0.0
    L2_3(L3_3, L4_3)
    L2_3 = ForceVehicleSingleGear
    L3_3 = A0_2
    L4_3 = nextgearspeed
    L5_3 = A1_2
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = L4_2
    L3_3 = L2_3
    L2_3 = L2_3.set
    L4_3 = "gearshift"
    L5_3 = {}
    L6_3 = L8_2
    L5_3.gear = L6_3
    L6_3 = L18_2
    L5_3.gearmaxspeed = L6_3
    L6_3 = L15_2
    L6_3 = L6_3 / L1_3
    L5_3.flatspeed = L6_3
    L6_3 = L16_2
    L6_3 = L6_3 * L1_3
    L5_3.driveforce = L6_3
    L6_3 = true
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = Wait
    L3_3 = 50
    L2_3(L3_3)
    L2_3 = false
    L32_2 = L2_3
  end
  L38_2(L39_2, L40_2)
  function L38_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = FreezeEntityPosition
    L1_3 = A0_2
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = DetachEntity
    L1_3 = A0_2
    L2_3 = false
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    manual = false
  end
  ManualOff = L38_2
  L38_2 = math
  L38_2 = L38_2.random
  L39_2 = 1
  L40_2 = 999
  L38_2 = L38_2(L39_2, L40_2)
  L39_2 = L6_2
  L40_2 = L13_2
  return L39_2, L40_2
end
SetVehicleManualGears = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = NetworkGetNetworkIdFromEntity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = SetNetworkIdExistsOnAllMachines
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityAsMissionEntity
  L3_2 = A0_2
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = NetworkRequestControlOfEntity
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = 0
  while true do
    L3_2 = NetworkHasControlOfEntity
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = 2000
    if not (L2_2 < L3_2) then
      break
    end
    L3_2 = DoesEntityExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = NetworkRequestControlOfEntity
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 0
    L3_2(L4_2)
    L2_2 = L2_2 + 1
  end
end
SetEntityControlable = L5_1
L5_1 = nil
L6_1 = AddStateBagChangeHandler
L7_1 = "dynodata"
L8_1 = nil
function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = Wait
  L6_2 = 0
  L5_2(L6_2)
  if not A2_2 then
    return
  end
  L5_2 = GetEntityFromStateBagName
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = DoesEntityExist
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L5_1 = L5_2
    L6_2 = SetVehicleCurrentRpm
    L7_2 = L5_2
    L8_2 = A2_2.rpm
    L6_2(L7_2, L8_2)
    L6_2 = SetVehicleHandlingFloat
    L7_2 = L5_2
    L8_2 = "CHandlingData"
    L9_2 = "fDriveInertia"
    L10_2 = A2_2.inertia
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = GetVehicleHandlingFloat
    L7_2 = L5_2
    L8_2 = "CHandlingData"
    L9_2 = "fDriveInertia"
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = SetVehicleCheatPowerIncrease
    L8_2 = L5_2
    L9_2 = 1.0
    L7_2(L8_2, L9_2)
    L7_2 = ModifyVehicleTopSpeed
    L8_2 = L5_2
    L9_2 = 1.0
    L7_2(L8_2, L9_2)
    L7_2 = SetVehicleHandbrake
    L8_2 = L5_2
    L9_2 = true
    L7_2(L8_2, L9_2)
  end
end
L6_1(L7_1, L8_1, L9_1)
L6_1 = {}
L7_1 = AddStateBagChangeHandler
L8_1 = "startdyno"
L9_1 = nil
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = Wait
  L6_2 = 0
  L5_2(L6_2)
  if A4_2 then
    return
  end
  if not A2_2 then
    return
  end
  L5_2 = tonumber
  L7_2 = A0_2
  L6_2 = A0_2.gsub
  L8_2 = "entity:"
  L9_2 = ""
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = 10
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    return
  end
  L6_2 = GetEntityFromStateBagName
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = L6_1
  L7_2 = L7_2[L5_2]
  if false == L7_2 then
    L7_2 = A2_2.dyno
    if L7_2 then
      return
    end
  end
  L7_2 = L6_1
  L7_2 = L7_2[L5_2]
  if L7_2 then
    L7_2 = L6_1
    L7_2[L5_2] = false
  end
  L7_2 = DoesEntityExist
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L7_2 = A2_2.dyno
    if L7_2 then
      L7_2 = L6_1
      L7_2 = L7_2[L5_2]
      if not L7_2 then
        L7_2 = L6_1
        L8_2 = A2_2.dyno
        L7_2[L5_2] = L8_2
        L7_2 = SetVehicleOnGroundProperly
        L8_2 = L5_1
        L7_2(L8_2)
        L7_2 = FreezeEntityPosition
        L8_2 = veh
        L9_2 = false
        L7_2(L8_2, L9_2)
        L7_2 = Wait
        L8_2 = 50
        L7_2(L8_2)
        L7_2 = SetVehicleGravity
        L8_2 = L6_2
        L9_2 = false
        L7_2(L8_2, L9_2)
        L7_2 = Citizen
        L7_2 = L7_2.CreateThreadNow
        function L8_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
          L0_3 = GetEntityCoords
          L1_3 = L5_1
          L0_3 = L0_3(L1_3)
          L1_3 = GetEntityRotation
          L2_3 = L5_1
          L1_3 = L1_3(L2_3)
          L2_3 = GetVehicleHandlingFloat
          L3_3 = L5_1
          L4_3 = "CHandlingData"
          L5_3 = "fDriveBiasFront"
          L2_3 = L2_3(L3_3, L4_3, L5_3)
          while true do
            L4_3 = L5_2
            L3_3 = L6_1
            L3_3 = L3_3[L4_3]
            if not L3_3 then
              break
            end
            L3_3 = A2_2.dyno
            if not L3_3 then
              break
            end
            L3_3 = Wait
            L4_3 = 0
            L3_3(L4_3)
            L3_3 = SetEntityRotation
            L4_3 = L5_1
            L5_3 = L1_3
            L3_3(L4_3, L5_3)
            L3_3 = GetVehicleCurrentRpm
            L4_3 = L5_1
            L3_3 = L3_3(L4_3)
            L4_3 = 0.25
            if L3_3 > L4_3 then
              L4_3 = 0
              L5_3 = 7
              L6_3 = 1
              for L7_3 = L4_3, L5_3, L6_3 do
                if 0.0 == L2_3 and L7_3 >= 2 then
                  L8_3 = SetVehicleWheelRotationSpeed
                  L9_3 = L5_1
                  L10_3 = L7_3
                  L11_3 = -44.1 * L3_3
                  L8_3(L9_3, L10_3, L11_3)
                elseif 1.0 == L2_3 and L7_3 <= 1 then
                  L8_3 = SetVehicleWheelRotationSpeed
                  L9_3 = L5_1
                  L10_3 = L7_3
                  L11_3 = -44.1 * L3_3
                  L8_3(L9_3, L10_3, L11_3)
                elseif L2_3 < 1.0 and L2_3 > 0.0 then
                  L8_3 = SetVehicleWheelRotationSpeed
                  L9_3 = L5_1
                  L10_3 = L7_3
                  L11_3 = -44.1 * L3_3
                  L8_3(L9_3, L10_3, L11_3)
                end
              end
            end
            L4_3 = Wait
            L5_3 = 0
            L4_3(L5_3)
          end
          L3_3 = Wait
          L4_3 = 1500
          L3_3(L4_3)
          L3_3 = SetVehicleHandlingFloat
          L4_3 = L5_1
          L5_3 = "CHandlingData"
          L6_3 = "fDriveInertia"
          L7_3 = A2_2.inertia
          L7_3 = L7_3 + 0.0
          L3_3(L4_3, L5_3, L6_3, L7_3)
          L3_3 = SetVehicleHandbrake
          L4_3 = L5_1
          L5_3 = false
          L3_3(L4_3, L5_3)
          L3_3 = FreezeEntityPosition
          L4_3 = L5_1
          L5_3 = false
          L3_3(L4_3, L5_3)
          L3_3 = SetEntityHasGravity
          L4_3 = L5_1
          L5_3 = true
          L3_3(L4_3, L5_3)
          L3_3 = SetVehicleGravity
          L4_3 = L5_1
          L5_3 = true
          L3_3(L4_3, L5_3)
          L4_3 = L5_2
          L3_3 = L6_1
          L3_3[L4_3] = nil
        end
        L7_2(L8_2)
      end
    end
  end
end
L7_1(L8_1, L9_1, L10_1)
L7_1 = AddStateBagChangeHandler
L8_1 = "gearshift"
L9_1 = nil
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = Wait
  L6_2 = 0
  L5_2(L6_2)
  if not A2_2 then
    return
  end
  L5_2 = GetEntityFromStateBagName
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = DoesEntityExist
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    return
  end
  L6_2 = DoesEntityExist
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = SetVehicleHandlingFloat
    L7_2 = L5_2
    L8_2 = "CHandlingData"
    L9_2 = "fInitialDriveMaxFlatVel"
    L10_2 = A2_2.flatspeed
    L10_2 = L10_2 + 0.0
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = SetVehicleHandlingFloat
    L7_2 = L5_2
    L8_2 = "CHandlingData"
    L9_2 = "fInitialDriveForce"
    L10_2 = A2_2.driveforce
    L10_2 = L10_2 + 0.0
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = ForceVehicleSingleGear
    L7_2 = L5_2
    L8_2 = A2_2.gearmaxspeed
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
  end
end
L7_1(L8_1, L9_1, L10_1)
L7_1 = AddStateBagChangeHandler
L8_1 = "vehiclestatreset"
L9_1 = nil
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = Wait
  L6_2 = 0
  L5_2(L6_2)
  if not A2_2 then
    return
  end
  L5_2 = tonumber
  L7_2 = A0_2
  L6_2 = A0_2.gsub
  L8_2 = "entity:"
  L9_2 = ""
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = 10
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = GetEntityFromStateBagName
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = DoesEntityExist
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L7_2 = SetVehicleHandlingInt
    L8_2 = L6_2
    L9_2 = "CCarHandlingData"
    L10_2 = "strAdvancedFlags"
    L11_2 = A2_2.strAdvancedFlags
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetVehicleHandlingFloat
    L8_2 = L6_2
    L9_2 = "CHandlingData"
    L10_2 = "fInitialDriveMaxFlatVel"
    L11_2 = A2_2.fInitialDriveMaxFlatVel
    L11_2 = L11_2 + 0.0
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetVehicleHandlingFloat
    L8_2 = L6_2
    L9_2 = "CHandlingData"
    L10_2 = "fInitialDriveForce"
    L11_2 = A2_2.fInitialDriveForce
    L11_2 = L11_2 + 0.0
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetVehicleHandlingFloat
    L8_2 = L6_2
    L9_2 = "CHandlingData"
    L10_2 = "fDriveInertia"
    L11_2 = A2_2.fDriveInertia
    L11_2 = L11_2 + 0.0
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetVehicleHandlingInt
    L8_2 = L6_2
    L9_2 = "CHandlingData"
    L10_2 = "nInitialDriveGears"
    L11_2 = A2_2.nInitialDriveGears
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = ModifyVehicleTopSpeed
    L8_2 = L6_2
    L9_2 = 1.0
    L7_2(L8_2, L9_2)
    L7_2 = SetVehicleCheatPowerIncrease
    L8_2 = L6_2
    L9_2 = 1.0
    L7_2(L8_2, L9_2)
    L7_2 = SetVehicleHighGear
    L8_2 = L6_2
    L9_2 = A2_2.nInitialDriveGears
    L7_2(L8_2, L9_2)
    L7_2 = SetVehicleHandbrake
    L8_2 = L6_2
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = L6_1
    L7_2[L5_2] = nil
  end
end
L7_1(L8_1, L9_1, L10_1)

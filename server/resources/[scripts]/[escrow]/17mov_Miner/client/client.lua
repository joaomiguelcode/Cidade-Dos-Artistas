local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1
L0_1 = nil
L1_1 = {}
L2_1 = nil
L3_1 = nil
L4_1 = 0
L5_1 = {}
L6_1 = nil
L7_1 = {}
L8_1 = {}
L9_1 = {}
L8_1.Rails = L9_1
L9_1 = {}
L8_1.Lights = L9_1
L9_1 = {}
L8_1.SupportPillarLeft = L9_1
L9_1 = {}
L8_1.SupportPillarRight = L9_1
L9_1 = {}
L8_1.SupportConnectorLeft = L9_1
L9_1 = {}
L8_1.SupportConnectorRight = L9_1
L9_1 = {}
L8_1.SupportLintel = L9_1
L9_1 = nil
L10_1 = nil
L11_1 = {}
L12_1 = {}
L13_1 = false
OnDuty = false
L14_1 = false
L15_1 = nil
L16_1 = false
L17_1 = {}
L18_1 = GetPlayerServerId
L19_1 = PlayerId
L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1 = L19_1()
L18_1 = L18_1(L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1)
L19_1 = true
L20_1 = false
L21_1 = false
L22_1 = ""
L23_1 = false
L24_1 = false
L25_1 = false
L26_1 = false
L27_1 = 0
L28_1 = 0
L29_1 = 0
L30_1 = NetToObj
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
NetToObj = L31_1
L31_1 = NetToVeh
function L32_1(A0_2)
  local L1_2, L2_2
  L1_2 = NetworkDoesNetworkIdExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L31_1
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = 0
    return L1_2
  end
end
NetToVeh = L32_1
L32_1 = RegisterNUICallback
L33_1 = "nuiLoaded"
function L34_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = true
  L20_1 = L2_2
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
L32_1(L33_1, L34_1)
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = {}
  L0_2.ElevatorModel = 2064695006
  L0_2.rightDoorModel = -2064916375
  L0_2.leftDoorModel = 937182807
  L0_2.buttonModel = -1231044648
  L0_2.DoorsBeingAnimated = false
  L0_2.beingAnimated = false
  L0_2.frontDoorsOpened = false
  L0_2.backDoorsOpened = false
  L0_2.currentState = "up"
  L0_2.doorsClosed = true
  L0_2.movementSpeed = 5.0
  L0_2.sizeX = 7.7
  L0_2.sizeY = 9.8
  L1_2 = Functions
  L1_2 = L1_2.SpawnObject
  L2_2 = L0_2.ElevatorModel
  function L3_2(A0_3)
    local L1_3, L2_3
    L0_2.elevator = A0_3
    L1_3 = GetEntityCoords
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L0_2.coordinates = L1_3
  end
  L4_2 = vec3
  L5_2 = 2428.1875
  L6_2 = 1531.82007
  L7_2 = 41.1022453
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = false
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = {}
  L2_2 = {}
  L2_2.variable = "frontRDoor"
  L3_2 = {}
  L4_2 = vec3
  L5_2 = 3.4
  L6_2 = 0.81
  L7_2 = -0.47
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.offset = L4_2
  L4_2 = vec3
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.rotation = L4_2
  L2_2.offset = L3_2
  L3_2 = L0_2.rightDoorModel
  L2_2.model = L3_2
  L1_2.frontRDoor = L2_2
  L2_2 = {}
  L2_2.variable = "frontLDoor"
  L3_2 = {}
  L4_2 = vec3
  L5_2 = 3.4
  L6_2 = -0.81
  L7_2 = -0.47
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.offset = L4_2
  L4_2 = vec3
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.rotation = L4_2
  L2_2.offset = L3_2
  L3_2 = L0_2.leftDoorModel
  L2_2.model = L3_2
  L1_2.frontLDoor = L2_2
  L2_2 = {}
  L2_2.variable = "backRDoor"
  L3_2 = {}
  L4_2 = vec3
  L5_2 = -3.4
  L6_2 = 0.81
  L7_2 = -0.47
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.offset = L4_2
  L4_2 = vec3
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.rotation = L4_2
  L2_2.offset = L3_2
  L3_2 = L0_2.rightDoorModel
  L2_2.model = L3_2
  L1_2.backRDoor = L2_2
  L2_2 = {}
  L2_2.variable = "backLDoor"
  L3_2 = {}
  L4_2 = vec3
  L5_2 = -3.4
  L6_2 = -0.81
  L7_2 = -0.47
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.offset = L4_2
  L4_2 = vec3
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.rotation = L4_2
  L2_2.offset = L3_2
  L3_2 = L0_2.leftDoorModel
  L2_2.model = L3_2
  L1_2.backLDoor = L2_2
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.offset
    L9_2 = L7_2.offset
    L9_2 = L9_2.offset
    L8_2.ogOffset = L9_2
    L8_2 = Functions
    L8_2 = L8_2.SpawnObject
    L9_2 = L7_2.model
    function L10_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
      L2_3 = L7_2.variable
      L1_3 = L0_2
      L1_3[L2_3] = A0_3
      L1_3 = AttachEntityToEntity
      L2_3 = A0_3
      L3_3 = L0_2.elevator
      L4_3 = 0
      L5_3 = L7_2.offset
      L5_3 = L5_3.offset
      L5_3 = L5_3.x
      L6_3 = L7_2.offset
      L6_3 = L6_3.offset
      L6_3 = L6_3.y
      L7_3 = L7_2.offset
      L7_3 = L7_3.offset
      L7_3 = L7_3.z
      L8_3 = L7_2.offset
      L8_3 = L8_3.rotation
      L8_3 = L8_3.x
      L9_3 = L7_2.offset
      L9_3 = L9_3.rotation
      L9_3 = L9_3.y
      L10_3 = L7_2.offset
      L10_3 = L10_3.rotation
      L10_3 = L10_3.z
      L11_3 = false
      L12_3 = false
      L13_3 = true
      L14_3 = false
      L15_3 = 2
      L16_3 = true
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    end
    L11_2 = L0_2.coordinates
    L12_2 = false
    L13_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L2_2 = {}
  L3_2 = {}
  L3_2.variable = "upBtn"
  L4_2 = vector3
  L5_2 = 2432.0
  L6_2 = 1533.79
  L7_2 = 40.2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.coords = L4_2
  L4_2 = vec3
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.rotation = L4_2
  L2_2.upBtn = L3_2
  L3_2 = {}
  L3_2.variable = "insideBtn"
  L3_2.attach = true
  L4_2 = L0_2.coordinates
  L3_2.coords = L4_2
  L4_2 = vec3
  L5_2 = -3.17
  L6_2 = -1.95
  L7_2 = -0.71
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.offset = L4_2
  L4_2 = vec3
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.rotation = L4_2
  L2_2.insideBtn = L3_2
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = Functions
    L9_2 = L9_2.SpawnObject
    L10_2 = L0_2.buttonModel
    function L11_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
      L1_3 = "btn"
      L2_3 = L8_2.variable
      L1_3 = L1_3 .. L2_3
      L2_3 = L0_2
      L2_3[L1_3] = A0_3
      L1_3 = L8_2.attach
      if L1_3 then
        L1_3 = AttachEntityToEntity
        L2_3 = A0_3
        L3_3 = L0_2.elevator
        L4_3 = 0
        L5_3 = L8_2.offset
        L5_3 = L5_3.x
        L6_3 = L8_2.offset
        L6_3 = L6_3.y
        L7_3 = L8_2.offset
        L7_3 = L7_3.z
        L8_3 = L8_2.rotation
        L8_3 = L8_3.x
        L9_3 = L8_2.rotation
        L9_3 = L9_3.y
        L10_3 = L8_2.rotation
        L10_3 = L10_3.z
        L11_3 = false
        L12_3 = false
        L13_3 = true
        L14_3 = false
        L15_3 = 2
        L16_3 = true
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      else
        L1_3 = SetEntityRotation
        L2_3 = A0_3
        L3_3 = L8_2.rotation
        L3_3 = L3_3.x
        L4_3 = L8_2.rotation
        L4_3 = L4_3.y
        L5_3 = L8_2.rotation
        L5_3 = L5_3.z
        L6_3 = 0
        L7_3 = false
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      end
    end
    L12_2 = L8_2.coords
    L13_2 = false
    L14_2 = true
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = pairs
    L2_3 = L1_2
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = Functions
      L7_3 = L7_3.SpawnObject
      L8_3 = L6_3.model
      function L9_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4
        L1_4 = Entity
        L2_4 = A0_4
        L1_4 = L1_4(L2_4)
        L1_4 = L1_4.state
        L1_4.isProtection = true
        L1_4 = "protection"
        L2_4 = L6_3.variable
        L1_4 = L1_4 .. L2_4
        L2_4 = L0_2
        L2_4[L1_4] = A0_4
        L1_4 = AttachEntityToEntity
        L2_4 = A0_4
        L3_4 = L0_2.elevator
        L4_4 = 0
        L5_4 = L6_3.offset
        L5_4 = L5_4.ogOffset
        L5_4 = L5_4.x
        L6_4 = L6_3.offset
        L6_4 = L6_4.ogOffset
        L6_4 = L6_4.y
        L7_4 = L6_3.offset
        L7_4 = L7_4.ogOffset
        L7_4 = L7_4.z
        L8_4 = L6_3.offset
        L8_4 = L8_4.rotation
        L8_4 = L8_4.x
        L9_4 = L6_3.offset
        L9_4 = L9_4.rotation
        L9_4 = L9_4.y
        L10_4 = L6_3.offset
        L10_4 = L10_4.rotation
        L10_4 = L10_4.z
        L11_4 = false
        L12_4 = false
        L13_4 = true
        L14_4 = false
        L15_4 = 2
        L16_4 = true
        L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4)
        L1_4 = SetEntityVisible
        L2_4 = A0_4
        L3_4 = false
        L4_4 = false
        L1_4(L2_4, L3_4, L4_4)
      end
      L10_3 = L0_2.coordinates
      L11_3 = false
      L12_3 = true
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
    end
  end
  L0_2.buildProtection = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = pairs
    L2_3 = L1_2
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = Functions
      L7_3 = L7_3.DeleteEntity
      L8_3 = "protection"
      L9_3 = L6_3.variable
      L8_3 = L8_3 .. L9_3
      L9_3 = L0_2
      L8_3 = L9_3[L8_3]
      L7_3(L8_3)
    end
    L1_3 = GetGamePool
    L2_3 = "CObject"
    L1_3 = L1_3(L2_3)
    L2_3 = pairs
    L3_3 = L1_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = Entity
      L9_3 = L7_3
      L8_3 = L8_3(L9_3)
      L8_3 = L8_3.state
      L8_3 = L8_3.isProtection
      if true == L8_3 then
        L8_3 = DeleteEntity
        L9_3 = L7_3
        L8_3(L9_3)
      end
    end
  end
  L0_2.removeProtection = L3_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3
    L2_3 = 1.77
    L3_3 = 0.0075
    L4_3 = A1_3
    if not A0_3 then
      A1_3 = not A1_3
    end
    if not A0_3 then
      L5_3 = L0_2.frontDoorsOpened
      if L5_3 and not A1_3 then
        L5_3 = Functions
        L5_3 = L5_3.Error
        L6_3 = "TRIED TO OPEN FRONT DOORS WHILE THEY'RE ALREADY OPENED"
        return L5_3(L6_3)
      end
    end
    if A0_3 then
      L5_3 = L0_2.backDoorsOpened
      if L5_3 and A1_3 then
        L5_3 = Functions
        L5_3 = L5_3.Error
        L6_3 = "TRIED TO OPEN BACK DOORS WHILE THEY'RE ALREADY OPENED"
        return L5_3(L6_3)
      end
    end
    if true ~= L4_3 then
      L5_3 = L0_2.buildProtection
      L5_3()
    end
    L5_3 = {}
    if A1_3 then
      L6_3 = -1
      if L6_3 then
        goto lbl_43
      end
    end
    L6_3 = 1
    ::lbl_43::
    if not A0_3 then
      L7_3 = not A1_3
      L0_2.frontDoorsOpened = L7_3
      L7_3 = table
      L7_3 = L7_3.insert
      L8_3 = L5_3
      L9_3 = {}
      L10_3 = L0_2.frontRDoor
      L9_3.object = L10_3
      L9_3.key = "frontRDoor"
      L10_3 = L1_2.frontRDoor
      L10_3 = L10_3.offset
      L10_3 = L10_3.offset
      L9_3.currOffset = L10_3
      L10_3 = L1_2.frontRDoor
      L10_3 = L10_3.offset
      L10_3 = L10_3.offset
      L10_3 = L10_3.y
      L11_3 = L2_3 * L6_3
      L10_3 = L10_3 + L11_3
      L9_3.targetOffsetY = L10_3
      L10_3 = L1_2.frontRDoor
      L10_3 = L10_3.offset
      L10_3 = L10_3.rotation
      L9_3.currRotation = L10_3
      L10_3 = 1 * L6_3
      L9_3.direction = L10_3
      L7_3(L8_3, L9_3)
      L7_3 = table
      L7_3 = L7_3.insert
      L8_3 = L5_3
      L9_3 = {}
      L10_3 = L0_2.frontLDoor
      L9_3.object = L10_3
      L9_3.key = "frontLDoor"
      L10_3 = L1_2.frontLDoor
      L10_3 = L10_3.offset
      L10_3 = L10_3.offset
      L9_3.currOffset = L10_3
      L10_3 = L1_2.frontLDoor
      L10_3 = L10_3.offset
      L10_3 = L10_3.offset
      L10_3 = L10_3.y
      L11_3 = L2_3 * L6_3
      L10_3 = L10_3 - L11_3
      L9_3.targetOffsetY = L10_3
      L10_3 = L1_2.frontLDoor
      L10_3 = L10_3.offset
      L10_3 = L10_3.rotation
      L9_3.currRotation = L10_3
      L10_3 = -1 * L6_3
      L9_3.direction = L10_3
      L7_3(L8_3, L9_3)
    else
      L7_3 = not A1_3 and not A0_3 or L7_3
      L0_2.backDoorsOpened = L7_3
      if A1_3 then
        L7_3 = 1
        if L7_3 then
          goto lbl_121
        end
      end
      L7_3 = -1
      ::lbl_121::
      L8_3 = table
      L8_3 = L8_3.insert
      L9_3 = L5_3
      L10_3 = {}
      L11_3 = L0_2.backRDoor
      L10_3.object = L11_3
      L10_3.key = "backRDoor"
      L11_3 = L1_2.backRDoor
      L11_3 = L11_3.offset
      L11_3 = L11_3.offset
      L10_3.currOffset = L11_3
      L11_3 = L1_2.backRDoor
      L11_3 = L11_3.offset
      L11_3 = L11_3.offset
      L11_3 = L11_3.y
      L12_3 = L2_3 * L7_3
      L11_3 = L11_3 + L12_3
      L10_3.targetOffsetY = L11_3
      L11_3 = L1_2.backRDoor
      L11_3 = L11_3.offset
      L11_3 = L11_3.rotation
      L10_3.currRotation = L11_3
      L11_3 = 1 * L7_3
      L10_3.direction = L11_3
      L8_3(L9_3, L10_3)
      L8_3 = table
      L8_3 = L8_3.insert
      L9_3 = L5_3
      L10_3 = {}
      L11_3 = L0_2.backLDoor
      L10_3.object = L11_3
      L10_3.key = "backLDoor"
      L11_3 = L1_2.backLDoor
      L11_3 = L11_3.offset
      L11_3 = L11_3.offset
      L10_3.currOffset = L11_3
      L11_3 = L1_2.backLDoor
      L11_3 = L11_3.offset
      L11_3 = L11_3.offset
      L11_3 = L11_3.y
      L12_3 = L2_3 * L7_3
      L11_3 = L11_3 - L12_3
      L10_3.targetOffsetY = L11_3
      L11_3 = L1_2.backLDoor
      L11_3 = L11_3.offset
      L11_3 = L11_3.rotation
      L10_3.currRotation = L11_3
      L11_3 = -1 * L7_3
      L10_3.direction = L11_3
      L8_3(L9_3, L10_3)
    end
    L0_2.beingAnimated = true
    L7_3 = false
    L8_3 = 16.666666666666668
    while not L7_3 do
      L7_3 = true
      L9_3 = GetGameTimer
      L9_3 = L9_3()
      L10_3 = ipairs
      L11_3 = L5_3
      L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3)
      for L14_3, L15_3 in L10_3, L11_3, L12_3, L13_3 do
        L16_3 = L15_3.currOffset
        L16_3 = L16_3.y
        L17_3 = L15_3.direction
        L17_3 = L3_3 * L17_3
        L16_3 = L16_3 + L17_3
        L17_3 = L15_3.direction
        if L17_3 > 0 then
          L17_3 = L15_3.targetOffsetY
          if L16_3 > L17_3 then
            goto lbl_210
          end
        end
        L17_3 = L15_3.direction
        if L17_3 < 0 then
          L17_3 = L15_3.targetOffsetY
          ::lbl_210::
          if L16_3 < L17_3 then
            L16_3 = L15_3.targetOffsetY
        end
        else
          L7_3 = false
        end
        L17_3 = vec3
        L18_3 = L15_3.currOffset
        L18_3 = L18_3.x
        L19_3 = L16_3
        L20_3 = L15_3.currOffset
        L20_3 = L20_3.z
        L17_3 = L17_3(L18_3, L19_3, L20_3)
        L15_3.currOffset = L17_3
        L18_3 = L15_3.key
        L17_3 = L1_2
        L17_3 = L17_3[L18_3]
        L17_3 = L17_3.offset
        L18_3 = L15_3.currOffset
        L17_3.offset = L18_3
        L17_3 = AttachEntityToEntity
        L18_3 = L15_3.object
        L19_3 = L0_2.elevator
        L20_3 = 0
        L21_3 = L15_3.currOffset
        L21_3 = L21_3.x
        L22_3 = L15_3.currOffset
        L22_3 = L22_3.y
        L23_3 = L15_3.currOffset
        L23_3 = L23_3.z
        L24_3 = L15_3.currRotation
        L24_3 = L24_3.x
        L25_3 = L15_3.currRotation
        L25_3 = L25_3.y
        L26_3 = L15_3.currRotation
        L26_3 = L26_3.z
        L27_3 = false
        L28_3 = false
        L29_3 = true
        L30_3 = false
        L31_3 = 2
        L32_3 = true
        L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
      end
      L10_3 = GetGameTimer
      L10_3 = L10_3()
      L11_3 = L10_3 - L9_3
      if L8_3 > L11_3 then
        L12_3 = Wait
        L13_3 = L8_3 - L11_3
        L12_3(L13_3)
      end
    end
    if true ~= L4_3 then
      L9_3 = L0_2.removeProtection
      L9_3()
    end
    if L4_3 then
      L9_3 = pairs
      L10_3 = L5_3
      L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3)
      for L13_3, L14_3 in L9_3, L10_3, L11_3, L12_3 do
        L15_3 = AttachEntityToEntity
        L16_3 = L14_3.object
        L17_3 = L0_2.elevator
        L18_3 = 0
        L19_3 = L14_3.currOffset
        L19_3 = L19_3.x
        L20_3 = L14_3.currOffset
        L20_3 = L20_3.y
        L21_3 = L14_3.direction
        L21_3 = -L21_3
        L21_3 = L2_3 * L21_3
        L20_3 = L20_3 - L21_3
        L21_3 = L14_3.currOffset
        L21_3 = L21_3.z
        L22_3 = L14_3.currRotation
        L22_3 = L22_3.x
        L23_3 = L14_3.currRotation
        L23_3 = L23_3.y
        L24_3 = L14_3.currRotation
        L24_3 = L24_3.z
        L25_3 = false
        L26_3 = false
        L27_3 = true
        L28_3 = false
        L29_3 = 2
        L30_3 = true
        L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
      end
    else
      L9_3 = pairs
      L10_3 = L5_3
      L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3)
      for L13_3, L14_3 in L9_3, L10_3, L11_3, L12_3 do
        L15_3 = AttachEntityToEntity
        L16_3 = L14_3.object
        L17_3 = L0_2.elevator
        L18_3 = 0
        L19_3 = L14_3.currOffset
        L19_3 = L19_3.x
        L20_3 = L14_3.currOffset
        L20_3 = L20_3.y
        L21_3 = L14_3.currOffset
        L21_3 = L21_3.z
        L22_3 = L14_3.currRotation
        L22_3 = L22_3.x
        L23_3 = L14_3.currRotation
        L23_3 = L23_3.y
        L24_3 = L14_3.currRotation
        L24_3 = L24_3.z
        L25_3 = false
        L26_3 = false
        L27_3 = true
        L28_3 = false
        L29_3 = 2
        L30_3 = true
        L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
      end
    end
    L0_2.beingAnimated = false
  end
  L0_2.animateDoors = L3_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = L0_2
    L2_3 = L2_3[A0_3]
    if nil == L2_3 then
      L3_3 = Functions
      L3_3 = L3_3.Error
      L4_3 = "Cant Find the "
      L5_3 = A0_3
      L6_3 = " button in GlowButton method"
      L4_3 = L4_3 .. L5_3 .. L6_3
      return L3_3(L4_3)
    end
    L3_3 = Config
    L3_3 = L3_3.MarkerSettings
    L3_3 = L3_3.Active
    L3_3 = A1_3 or L3_3
    if not L3_3 or not A1_3 then
      L3_3 = Config
      L3_3 = L3_3.MarkerSettings
      L3_3 = L3_3.UnActive
    end
    L4_3 = L0_2.DisableBtnsGlow
    L4_3()
    L4_3 = SetEntityDrawOutlineColor
    L5_3 = L3_3.r
    L6_3 = L3_3.g
    L7_3 = L3_3.b
    L8_3 = L3_3.a
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = SetEntityDrawOutlineShader
    L5_3 = 0
    L4_3(L5_3)
    L4_3 = SetEntityDrawOutline
    L5_3 = L2_3
    L6_3 = true
    L4_3(L5_3, L6_3)
  end
  L0_2.GlowButton = L3_2
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = pairs
    L1_3 = L2_2
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = SetEntityDrawOutline
      L7_3 = "btn"
      L8_3 = L5_3.variable
      L7_3 = L7_3 .. L8_3
      L8_3 = L0_2
      L7_3 = L8_3[L7_3]
      L8_3 = false
      L6_3(L7_3, L8_3)
    end
  end
  L0_2.DisableBtnsGlow = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L1_3 = L0_2.beingAnimated
    if L1_3 then
      L1_3 = Functions
      L1_3 = L1_3.Error
      L2_3 = "Can't call TaskGoToCoords method because elevator is already in run"
      return L1_3(L2_3)
    end
    L0_2.beingAnimated = true
    L1_3 = GetEntityCoords
    L2_3 = L0_2.elevator
    L1_3 = L1_3(L2_3)
    L2_3 = A0_3
    L3_3 = vec3
    L4_3 = L1_3.x
    L5_3 = L1_3.y
    L6_3 = L1_3.z
    L6_3 = L6_3 + A0_3
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    A0_3 = L3_3
    L3_3 = L1_3 - A0_3
    L3_3 = #L3_3
    L4_3 = L0_2.movementSpeed
    L4_3 = L3_3 / L4_3
    L5_3 = Wait
    L6_3 = L4_3 * 1000
    L5_3(L6_3)
    L5_3 = PlayerPedId
    L5_3 = L5_3()
    L6_3 = GetEntityCoords
    L7_3 = L5_3
    L6_3 = L6_3(L7_3)
    L6_3 = L6_3 - L1_3
    L7_3 = SetEntityCoords
    L8_3 = L0_2.elevator
    L9_3 = A0_3.x
    L10_3 = A0_3.y
    L11_3 = A0_3.z
    L12_3 = false
    L13_3 = false
    L14_3 = false
    L15_3 = false
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    L7_3 = GetEntityCoords
    L8_3 = L0_2.elevator
    L7_3 = L7_3(L8_3)
    L8_3 = L7_3 + L6_3
    L9_3 = GetEntityCoords
    L10_3 = PlayerPedId
    L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L10_3()
    L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    L9_3 = L9_3.z
    if L9_3 >= 0 and L2_3 > 0 then
      L9_3 = Functions
      L9_3 = L9_3.Error
      L10_3 = "Attempt to set invalid player coordinates in elevator"
      return L9_3(L10_3)
    end
    L9_3 = math
    L9_3 = L9_3.abs
    L10_3 = L6_3.x
    L9_3 = L9_3(L10_3)
    L10_3 = L0_2.sizeX
    L10_3 = L10_3 / 2
    if not (L9_3 > L10_3) then
      L9_3 = math
      L9_3 = L9_3.abs
      L10_3 = L6_3.y
      L9_3 = L9_3(L10_3)
      L10_3 = L0_2.sizeY
      L10_3 = L10_3 / 2
      if not (L9_3 > L10_3) then
        goto lbl_104
      end
    end
    L9_3 = vec3
    L10_3 = 0.0
    L11_3 = 0.0
    L12_3 = -1.0
    L9_3 = L9_3(L10_3, L11_3, L12_3)
    L7_3 = L7_3 + L9_3
    L9_3 = SetEntityCoords
    L10_3 = L5_3
    L11_3 = L7_3.x
    L12_3 = L7_3.y
    L13_3 = L7_3.z
    L14_3 = false
    L15_3 = false
    L16_3 = false
    L17_3 = false
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    goto lbl_116
    ::lbl_104::
    L9_3 = SetEntityCoords
    L10_3 = L5_3
    L11_3 = L8_3.x
    L12_3 = L8_3.y
    L13_3 = L8_3.z
    L13_3 = L13_3 - 1.0
    L14_3 = false
    L15_3 = false
    L16_3 = false
    L17_3 = false
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    ::lbl_116::
    L0_2.beingAnimated = false
  end
  L0_2.TaskGoToCoords = L3_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = GetEntityCoords
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if nil ~= A1_3 then
      L2_3 = A1_3
    end
    L3_3 = GetEntityCoords
    L4_3 = L0_2.elevator
    L3_3 = L3_3(L4_3)
    L4_3 = L3_3.x
    L5_3 = L0_2.sizeX
    L5_3 = L5_3 / 2
    L4_3 = L4_3 - L5_3
    L5_3 = L3_3.x
    L6_3 = L0_2.sizeX
    L6_3 = L6_3 / 2
    L5_3 = L5_3 + L6_3
    L6_3 = L3_3.y
    L7_3 = L0_2.sizeY
    L7_3 = L7_3 / 2
    L6_3 = L6_3 - L7_3
    L7_3 = L3_3.y
    L8_3 = L0_2.sizeY
    L8_3 = L8_3 / 2
    L7_3 = L7_3 + L8_3
    L8_3 = L2_3.x
    if L4_3 <= L8_3 then
      L8_3 = L2_3.x
      if L5_3 >= L8_3 then
        L8_3 = L2_3.y
        if L6_3 <= L8_3 then
          L8_3 = L2_3.y
          if L7_3 >= L8_3 then
            L8_3 = true
            return L8_3
        end
      end
    end
    else
      L8_3 = false
      return L8_3
    end
  end
  L0_2.isInside = L3_2
  return L0_2
end
CreateNewElevator = L32_1
L32_1 = CreateThread
function L33_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  while true do
    L0_2 = L20_1
    if L0_2 then
      break
    end
    L0_2 = Wait
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
      L4_3 = Functions
      L4_3 = L4_3.TriggerServerCallback
      L5_3 = "17mov_Miner:CheckThisReward"
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
  L0_2 = CreateNewElevator
  L0_2 = L0_2()
  L0_1 = L0_2
  L0_2 = TriggerEvent
  L1_2 = "17mov_Miner:UpdateWalls"
  L0_2(L1_2)
  L0_2 = {}
  L1_2 = vector3
  L2_2 = 2410.42
  L3_2 = 1591.86
  L4_2 = -32.68
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = vector3
  L3_2 = 2417.86
  L4_2 = 1531.65
  L5_2 = -32.75
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = vector3
  L4_2 = 2402.12
  L5_2 = 1592.73
  L6_2 = -32.75
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = vector3
  L5_2 = 2394.51
  L6_2 = 1592.07
  L7_2 = -32.75
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = vector3
  L6_2 = 2336.03
  L7_2 = 1535.63
  L8_2 = -32.75
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = vector3
  L7_2 = 2336.01
  L8_2 = 1527.9
  L9_2 = -32.75
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = vector3
  L8_2 = 2394.33
  L9_2 = 1471.67
  L10_2 = -32.75
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = vector3
  L9_2 = 2402.78
  L10_2 = 1472.59
  L11_2 = -32.75
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = vector3
  L10_2 = 2410.8
  L11_2 = 1472.36
  L12_2 = -32.75
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = vector3
  L11_2 = 2427.75
  L12_2 = 1531.9
  L13_2 = 39.97
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L0_2[10] = L10_2
  L0_2[11] = L11_2
  L0_2[12] = L12_2
  L0_2[13] = L13_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3
    L0_3 = false
    while true do
      L1_3 = 1000
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = GetEntityCoords
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = pairs
      L5_3 = L0_2
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
      for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
        L10_3 = L3_3 - L9_3
        L10_3 = #L10_3
        L11_3 = OnDuty
        if not L11_3 and L10_3 < 30.0 then
          L1_3 = 0
          L11_3 = DrawMarker
          L12_3 = 42
          L13_3 = L9_3.x
          L14_3 = L9_3.y
          L15_3 = L9_3.z
          L15_3 = L15_3 + 1.5
          L16_3 = 0.0
          L17_3 = 0.0
          L18_3 = 0.0
          L19_3 = 0.0
          L20_3 = 0.0
          L21_3 = 0.0
          L22_3 = 3.0
          L23_3 = 3.0
          L24_3 = 3.0
          L25_3 = Config
          L25_3 = L25_3.MarkerSettings
          L25_3 = L25_3.UnActive
          L25_3 = L25_3.r
          L26_3 = Config
          L26_3 = L26_3.MarkerSettings
          L26_3 = L26_3.UnActive
          L26_3 = L26_3.g
          L27_3 = Config
          L27_3 = L27_3.MarkerSettings
          L27_3 = L27_3.UnActive
          L27_3 = L27_3.b
          L28_3 = Config
          L28_3 = L28_3.MarkerSettings
          L28_3 = L28_3.UnActive
          L28_3 = L28_3.a
          L29_3 = false
          L30_3 = true
          L31_3 = 2
          L32_3 = false
          L33_3 = nil
          L34_3 = nil
          L35_3 = false
          L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
          if L10_3 < 3.0 then
            L11_3 = ShowHelpNotification
            L12_3 = Config
            L12_3 = L12_3.Lang
            L12_3 = L12_3.forceExit
            L11_3(L12_3)
            L11_3 = IsControlJustReleased
            L12_3 = 0
            L13_3 = 38
            L11_3 = L11_3(L12_3, L13_3)
            if L11_3 then
              L11_3 = SetEntityCoords
              L12_3 = L2_3
              L13_3 = 2432.08
              L14_3 = 1531.85
              L15_3 = 39.89
              L16_3 = true
              L17_3 = false
              L18_3 = false
              L19_3 = false
              L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
              L11_3 = SetEntityHeading
              L12_3 = L2_3
              L13_3 = 272.08
              L11_3(L12_3, L13_3)
            end
          end
        end
      end
      L4_3 = GetGamePool
      L5_3 = "CObject"
      L4_3 = L4_3(L5_3)
      if nil ~= L4_3 then
        L5_3 = pairs
        L6_3 = L4_3
        L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
        for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
          L11_3 = GetEntityModel
          L12_3 = L10_3
          L11_3 = L11_3(L12_3)
          if 1885822738 == L11_3 then
            L11_3 = IsEntityAttachedToAnyPed
            L12_3 = L10_3
            L11_3 = L11_3(L12_3)
            if not L11_3 then
              L11_3 = DeleteObject
              L12_3 = L10_3
              L11_3(L12_3)
              L11_3 = SetEntityCoords
              L12_3 = L10_3
              L13_3 = 0.0
              L14_3 = 0.0
              L15_3 = 0.0
              L16_3 = false
              L17_3 = false
              L18_3 = false
              L19_3 = false
              L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
            end
          end
        end
      end
      L5_3 = GetEntityCoords
      L6_3 = PlayerPedId
      L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3 = L6_3()
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
      L6_3 = Config
      L6_3 = L6_3.DeadCoords
      L5_3 = L5_3 - L6_3
      L5_3 = #L5_3
      L6_3 = 500.0
      if L5_3 < L6_3 then
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_VEHICLE_DRIVE_SOLO"
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_HUMAN_SMOKING"
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_HUMAN_HANG_OUT_STREET"
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_VEHICLE_DRIVE_PASSENGERS"
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "DRIVE"
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_RABBIT_EATING"
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_DEER_GRAZING"
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_HUMAN_STAND_IMPATIENT"
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_VEHICLE_EMPTY"
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_HUMAN_STAND_MOBILE"
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_HUMAN_DRINKING"
        L7_3 = false
        L5_3(L6_3, L7_3)
        L0_3 = true
      elseif L0_3 then
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_VEHICLE_DRIVE_SOLO"
        L7_3 = true
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_HUMAN_SMOKING"
        L7_3 = true
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_HUMAN_HANG_OUT_STREET"
        L7_3 = true
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_VEHICLE_DRIVE_PASSENGERS"
        L7_3 = true
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "DRIVE"
        L7_3 = true
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_RABBIT_EATING"
        L7_3 = true
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_DEER_GRAZING"
        L7_3 = true
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_HUMAN_STAND_IMPATIENT"
        L7_3 = true
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_VEHICLE_EMPTY"
        L7_3 = true
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_HUMAN_STAND_MOBILE"
        L7_3 = true
        L5_3(L6_3, L7_3)
        L5_3 = SetScenarioTypeEnabled
        L6_3 = "WORLD_HUMAN_DRINKING"
        L7_3 = true
        L5_3(L6_3, L7_3)
        L0_3 = false
      end
      L5_3 = Wait
      L6_3 = L1_3
      L5_3(L6_3)
    end
  end
  L1_2(L2_2)
  L1_2 = Functions
  L1_2 = L1_2.TriggerServerCallback
  L2_2 = "17mov_Miner:DownloadTakenSeats"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = pairs
    L2_3 = A0_3
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3 in L1_3, L2_3, L3_3, L4_3 do
      L6_3 = Config
      L6_3 = L6_3.Restaurant
      L6_3 = L6_3.objects
      L6_3 = L6_3[L5_3]
      L6_3.taken = true
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.Restaurant
  L2_2 = L2_2.objects
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Functions
    L7_2 = L7_2.SpawnObject
    L8_2 = L6_2.model
    function L9_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      L6_2.obj = A0_3
      L1_3 = FreezeEntityPosition
      L2_3 = A0_3
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = SetEntityRotation
      L2_3 = A0_3
      L3_3 = L6_2.rotation
      L3_3 = L3_3.x
      L4_3 = L6_2.rotation
      L4_3 = L4_3.y
      L5_3 = L6_2.rotation
      L5_3 = L5_3.z
      L6_3 = 0
      L7_3 = false
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    end
    L10_2 = L6_2.coordinates
    L11_2 = false
    L12_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
L32_1(L33_1)
L32_1 = RegisterNUICallback
L33_1 = "tutorialClosed"
function L34_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = false
  L21_1 = L0_2
  L0_2 = ""
  L22_1 = L0_2
end
L32_1(L33_1, L34_1)
L32_1 = RegisterNetEvent
L33_1 = "17mov_Miner:UpdateHostPercentages"
function L34_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateHostRewards"
  L2_2.value = A0_2
  L1_2(L2_2)
end
L32_1(L33_1, L34_1)
L32_1 = RegisterNetEvent
L33_1 = "17mov_Miner:SetMyReward"
function L34_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateMyReward"
  L2_2.reward = A0_2
  L1_2(L2_2)
end
L32_1(L33_1, L34_1)
L32_1 = RegisterNUICallback
L33_1 = "menuClosed"
function L34_1()
  local L0_2, L1_2, L2_2
  L0_2 = false
  L19_1 = L0_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L32_1(L33_1, L34_1)
L32_1 = RegisterNUICallback
L33_1 = "dontShowTutorialAgain"
function L34_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetResourceKvpInt
  L3_2 = "17mov_Tutorials:"
  L4_2 = L22_1
  L3_2 = L3_2 .. L4_2
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L32_1(L33_1, L34_1)
L32_1 = RegisterNetEvent
L33_1 = "17mov_Miner:clearMyLobby"
function L34_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L17_1 = L0_2
  L0_2 = Functions
  L0_2 = L0_2.TriggerServerCallback
  L1_2 = "17mov_Miner:init"
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
    L14_1 = L1_3
  end
  L0_2(L1_2, L2_2)
end
L32_1(L33_1, L34_1)
L32_1 = RegisterNetEvent
L33_1 = "17mov_Miner:RefreshMugs"
L32_1(L33_1)
L32_1 = AddEventHandler
L33_1 = "17mov_Miner:RefreshMugs"
function L34_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  while true do
    L2_2 = L14_1
    if L2_2 then
      break
    end
    L2_2 = Wait
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
    L8_2 = L17_1
    L8_2 = L8_2[L9_2]
    if nil == L8_2 then
      L8_2 = L18_1
      L9_2 = L7_2.id
      if L8_2 == L9_2 then
        L9_2 = L7_2.id
        L8_2 = L17_1
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
        L8_2 = L17_1
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
      L10_2 = L17_1
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.itsMe
      L9_2.showQuitBtn = L10_2
      L8_2(L9_2)
    end
  end
  L2_2 = 0
  L3_2 = pairs
  L4_2 = L17_1
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
      L11_2 = L17_1
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
    L3_2 = Functions
    L3_2 = L3_2.TriggerServerCallback
    L4_2 = "17mov_Miner:init"
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
      L14_1 = L1_3
    end
    L3_2(L4_2, L5_2)
  end
  L3_2 = Functions
  L3_2 = L3_2.TriggerServerCallback
  L4_2 = "17mov_Miner:IfPlayerOwnsTeam"
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
L32_1 = false
function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2
  L1_2 = L32_1
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
      L32_1 = L1_2
      return
    end
  end
  L1_2 = true
  L32_1 = L1_2
  L1_2 = Config
  L1_2 = L1_2.UseTarget
  if L1_2 then
    L1_2 = Config
    L2_2 = {}
    L1_2.Locations2 = L2_2
    L1_2 = SpawnPeds
    L1_2()
    while true do
      L1_2 = L32_1
      if not L1_2 then
        break
      end
      L1_2 = Wait
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
          goto lbl_58
        end
      end
      L8_2 = Config
      L8_2 = L8_2.RequiredJob
      ::lbl_58::
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
                goto lbl_274
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
                    L43_2 = nil
                    L44_2 = nil
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
                  L43_2 = nil
                  L44_2 = nil
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
                    L43_2 = nil
                    L44_2 = nil
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
                  L43_2 = nil
                  L44_2 = nil
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
          ::lbl_274::
        end
        if L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if not L8_2 then
            goto lbl_293
          end
        end
        if L2_2 then
          L8_2 = LastStation
          if L8_2 == L5_2 then
            L8_2 = LastPart
            if L8_2 == L6_2 then
              L8_2 = LastPartNum
              if L8_2 == L7_2 then
                goto lbl_326
              end
            end
          end
          ::lbl_293::
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
                      goto lbl_318
                    end
                  end
                end
                L8_2 = TriggerEvent
                L9_2 = "17mov_Miner:ExitedMarker"
                L10_2 = LastStation
                L11_2 = LastPart
                L12_2 = LastPartNum
                L8_2(L9_2, L10_2, L11_2, L12_2)
                L3_2 = true
              end
            end
          end
          ::lbl_318::
          HasAlreadyEnteredMarker = true
          LastStation = L5_2
          LastPart = L6_2
          LastPartNum = L7_2
          L8_2 = TriggerEvent
          L9_2 = "17mov_Miner:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_326::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_Miner:ExitedMarker"
            L10_2 = LastStation
            L11_2 = LastPart
            L12_2 = LastPartNum
            L8_2(L9_2, L10_2, L11_2, L12_2)
          end
        end
        if L4_2 then
          L8_2 = Wait
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
      L1_2 = L32_1
      if not L1_2 then
        break
      end
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
          goto lbl_375
        end
      end
      L8_2 = Config
      L8_2 = L8_2.RequiredJob
      ::lbl_375::
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
                goto lbl_503
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
                  L43_2 = nil
                  L44_2 = nil
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
                  L43_2 = nil
                  L44_2 = nil
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
          ::lbl_503::
        end
        if L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if not L8_2 then
            goto lbl_522
          end
        end
        if L2_2 then
          L8_2 = LastStation
          if L8_2 == L5_2 then
            L8_2 = LastPart
            if L8_2 == L6_2 then
              L8_2 = LastPartNum
              if L8_2 == L7_2 then
                goto lbl_555
              end
            end
          end
          ::lbl_522::
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
                      goto lbl_547
                    end
                  end
                end
                L8_2 = TriggerEvent
                L9_2 = "17mov_Miner:ExitedMarker"
                L10_2 = LastStation
                L11_2 = LastPart
                L12_2 = LastPartNum
                L8_2(L9_2, L10_2, L11_2, L12_2)
                L3_2 = true
              end
            end
          end
          ::lbl_547::
          HasAlreadyEnteredMarker = true
          LastStation = L5_2
          LastPart = L6_2
          LastPartNum = L7_2
          L8_2 = TriggerEvent
          L9_2 = "17mov_Miner:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_555::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_Miner:ExitedMarker"
            L10_2 = LastStation
            L11_2 = LastPart
            L12_2 = LastPartNum
            L8_2(L9_2, L10_2, L11_2, L12_2)
          end
        end
        if L4_2 then
          L8_2 = Wait
          L9_2 = 500
          L8_2(L9_2)
        end
      end
      L8_2 = Wait
      L9_2 = 0
      L8_2(L9_2)
    end
  end
end
StartMarkers = L33_1
L33_1 = Citizen
L33_1 = L33_1.CreateThread
function L34_1()
  local L0_2, L1_2
  L0_2 = GetPlayerData
  L0_2 = L0_2()
  L15_1 = L0_2
  while true do
    L0_2 = L15_1
    if nil ~= L0_2 then
      L0_2 = L15_1.job
      if nil ~= L0_2 then
        break
      end
    end
    L0_2 = GetPlayerData
    L0_2 = L0_2()
    L15_1 = L0_2
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
  L0_2 = Config
  L0_2 = L0_2.RestrictBlipToRequiredJob
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.RequiredJob
    L1_2 = L15_1.job
    L1_2 = L1_2.name
    if L0_2 ~= L1_2 then
      goto lbl_29
    end
  end
  L0_2 = MakeBlip
  L0_2()
  ::lbl_29::
  L0_2 = Wait
  L1_2 = 5000
  L0_2(L1_2)
  L0_2 = StartMarkers
  L1_2 = L15_1
  L0_2(L1_2)
end
L33_1(L34_1)
L33_1 = false
function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L33_1
  if L0_2 then
    return
  end
  L0_2 = true
  L33_1 = L0_2
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
MakeBlip = L34_1
function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = false
  L33_1 = L0_2
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
DeleteBlip = L34_1
L34_1 = false
function L35_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L34_1
  if L1_2 then
    return
  end
  while true do
    L1_2 = L20_1
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = GetPlayerData
  L1_2 = L1_2()
  L15_1 = L1_2
  if not A0_2 then
    L1_2 = Wait
    L2_2 = 5500
    L1_2(L2_2)
  end
  L1_2 = true
  L34_1 = L1_2
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RestrictBlipToRequiredJob
    if L1_2 then
      while true do
        L1_2 = L15_1
        if nil ~= L1_2 then
          L1_2 = L15_1.job
          if nil ~= L1_2 then
            break
          end
        end
        L1_2 = GetPlayerData
        L1_2 = L1_2()
        L15_1 = L1_2
        L1_2 = Wait
        L2_2 = 100
        L1_2(L2_2)
      end
      L1_2 = L15_1.job
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
  L1_2 = Wait
  L2_2 = 3500
  L1_2(L2_2)
  L1_2 = Functions
  L1_2 = L1_2.TriggerServerCallback
  L2_2 = "17mov_Miner:init"
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
    L14_1 = L1_3
  end
  L1_2(L2_2, L3_2)
end
InitalizeScript = L35_1
L35_1 = RegisterNetEvent
L36_1 = "QBCore:Client:OnPlayerLoaded"
function L37_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "esx:playerLoaded"
function L37_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "QBCore:Client:OnJobUpdate"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "QBCore:Client:OnJobUpdate"
function L37_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetPlayerData
  L1_2 = L1_2()
  L15_1 = L1_2
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RestrictBlipToRequiredJob
    if L1_2 then
      L1_2 = L15_1.job
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
    L1_2 = L15_1.job
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
    L2_2 = L15_1
    L1_2(L2_2)
  else
    L1_2 = false
    L32_1 = L1_2
  end
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "esx:setJob"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "esx:setJob"
function L37_1(A0_2)
  local L1_2, L2_2
  while true do
    L1_2 = L15_1
    if nil ~= L1_2 then
      L1_2 = L15_1.job
      if nil ~= L1_2 then
        break
      end
    end
    L1_2 = GetPlayerData
    L1_2 = L1_2()
    L15_1 = L1_2
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  L15_1.job = A0_2
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  if "none" ~= L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RestrictBlipToRequiredJob
    if L1_2 then
      L1_2 = L15_1.job
      L1_2 = L1_2.name
      L2_2 = Config
      L2_2 = L2_2.RequiredJob
      if L1_2 == L2_2 then
        goto lbl_33
      end
    end
  end
  L1_2 = Config
  L1_2 = L1_2.RestrictBlipToRequiredJob
  ::lbl_33::
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
    L1_2 = L15_1.job
    L1_2 = L1_2.name
    L2_2 = Config
    L2_2 = L2_2.RequiredJob
    if L1_2 == L2_2 then
      goto lbl_52
    end
  end
  L1_2 = Config
  L1_2 = L1_2.RequiredJob
  ::lbl_52::
  if "none" == L1_2 then
    L1_2 = StartMarkers
    L2_2 = L15_1
    L1_2(L2_2)
  else
    L1_2 = false
    L32_1 = L1_2
  end
end
L35_1(L36_1, L37_1)
L35_1 = AddEventHandler
L36_1 = "17mov_Miner:EnteredMarker"
function L37_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 0
  L2_2 = Config
  L2_2 = L2_2.Locations
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.CurrentAction
  CurrentAction = L2_2
  L2_2 = Config
  L2_2 = L2_2.Locations
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.CurrentActionMsg
  CurrentActionMsg = L2_2
  CurrentActionStation = A0_2
  while true do
    L2_2 = 500
    if not (L1_2 < L2_2) then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
    L2_2 = ShowHelpNotification
    L3_2 = CurrentActionMsg
    L2_2(L3_2)
    L1_2 = L1_2 + 1
  end
end
L35_1(L36_1, L37_1)
L35_1 = AddEventHandler
L36_1 = "17mov_Miner:ExitedMarker"
function L37_1(A0_2)
  local L1_2
  CurrentAction = nil
  CurrentActionMsg = nil
  CurrentActionStation = nil
end
L35_1(L36_1, L37_1)
L35_1 = RegisterCommand
L36_1 = "+17MovMinerJobStartMarkerAction"
function L37_1()
  local L0_2, L1_2
end
L38_1 = false
L35_1(L36_1, L37_1, L38_1)
L35_1 = RegisterCommand
L36_1 = "-17MovMinerJobStartMarkerAction"
function L37_1()
  local L0_2, L1_2
  L0_2 = CurrentAction
  if nil ~= L0_2 then
    L0_2 = CurrentAction
    if "open_dutyToggle" == L0_2 then
      L0_2 = OpenDutyMenu
      L0_2()
    end
  end
end
L38_1 = false
L35_1(L36_1, L37_1, L38_1)
L35_1 = TriggerEvent
L36_1 = "chat:removeSuggestion"
L37_1 = "/+17MovMinerJobStartMarkerAction"
L35_1(L36_1, L37_1)
L35_1 = TriggerEvent
L36_1 = "chat:removeSuggestion"
L37_1 = "/-17MovMinerJobStartMarkerAction"
L35_1(L36_1, L37_1)
L35_1 = RegisterKeyMapping
L36_1 = "+17MovMinerJobStartMarkerAction"
L37_1 = Config
L37_1 = L37_1.Lang
L37_1 = L37_1.keybind
L38_1 = "keyboard"
L39_1 = "E"
L35_1(L36_1, L37_1, L38_1, L39_1)
L35_1 = {}
function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L34_1
  if not L0_2 then
    L0_2 = InitalizeScript
    L1_2 = true
    L0_2(L1_2)
    L0_2 = print
    L1_2 = "SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD"
    return L0_2(L1_2)
  end
  L0_2 = L14_1
  if not L0_2 then
    L0_2 = Functions
    L0_2 = L0_2.TriggerServerCallback
    L1_2 = "17mov_Miner:init"
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
      L14_1 = L1_3
    end
    L0_2(L1_2, L2_2)
    L0_2 = print
    L1_2 = "SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD"
    return L0_2(L1_2)
  end
  L0_2 = SetNuiFocus
  L1_2 = true
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "OpenWorkMenu"
  L0_2(L1_2)
  L0_2 = true
  L19_1 = L0_2
  L0_2 = false
  L1_2 = false
  L2_2 = false
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    while true do
      L0_3 = L19_1
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
          goto lbl_54
        end
      end
      L4_3 = Functions
      L4_3 = L4_3.TriggerServerCallback
      L5_3 = "17mov_Miner:GetPlayersNames"
      function L6_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4
        L1_4 = pairs
        L2_4 = A0_4
        L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
        for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
          L8_4 = L6_4.id
          L7_4 = L17_1
          L7_4 = L7_4[L8_4]
          if nil == L7_4 then
            L7_4 = true
            L3_3 = L7_4
            L8_4 = L6_4.id
            L7_4 = L35_1
            L7_4 = L7_4[L8_4]
            if nil == L7_4 then
              L8_4 = L6_4.id
              L7_4 = L35_1
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
                  L0_5 = Wait
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
        L2_4 = L35_1
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
            L9_4 = L35_1
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
              L0_5 = Wait
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
                L0_5 = Wait
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
                L0_6 = Wait
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
                L0_5 = Wait
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
      ::lbl_54::
      L4_3 = Wait
      L5_3 = 2500
      L4_3(L5_3)
    end
  end
  L3_2(L4_2)
end
OpenDutyMenu = L36_1
L36_1 = RegisterNUICallback
L37_1 = "changeClothes"
function L38_1(A0_2)
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
L36_1(L37_1, L38_1)
L36_1 = RegisterNUICallback
L37_1 = "requestReacted"
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.boolean
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_Miner:ClientReactRequest"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNUICallback
L37_1 = "sendRequest"
function L38_1(A0_2)
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
  L2_2 = "17mov_Miner:SendRequestToClient_sv"
  L3_2 = tonumber
  L4_2 = A0_2.id
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNUICallback
L37_1 = "kickPlayerFromLobby"
function L38_1(A0_2)
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
  L5_2 = L17_1
  L5_2 = L5_2[L1_2]
  L5_2 = L5_2.name
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_Miner:KickPlayerFromLobby"
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNUICallback
L37_1 = "focusOff"
function L38_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNUICallback
L37_1 = "notify"
function L38_1(A0_2)
  local L1_2, L2_2
  L1_2 = Notify
  L2_2 = A0_2.msg
  L1_2(L2_2)
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "17mov_Miner:SendRequestToClient_cl"
L36_1(L37_1)
L36_1 = AddEventHandler
L37_1 = "17mov_Miner:SendRequestToClient_cl"
function L38_1(A0_2, A1_2)
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
L36_1(L37_1, L38_1)
L36_1 = RegisterNUICallback
L37_1 = "startJob"
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = OnDuty
  if not L1_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "17mov_Miner:StartJob_sv"
    L1_2(L2_2)
  else
    L1_2 = TriggerServerEvent
    L2_2 = "17mov_Miner:endJob_sv"
    L3_2 = true
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNUICallback
L37_1 = "leaveLobby"
function L38_1(A0_2)
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
  L3_2 = "17mov_Miner:KickPlayerFromLobby"
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
L36_1(L37_1, L38_1)
function L36_1(A0_2, A1_2, A2_2, A3_2)
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
AddBlip17 = L36_1
L36_1 = RegisterNUICallback
L37_1 = "tutorialClosed"
function L38_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = false
  L21_1 = L0_2
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
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "17mov_Miner:StartJob_cl"
L36_1(L37_1)
L36_1 = AddEventHandler
L37_1 = "17mov_Miner:StartJob_cl"
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  OnDuty = true
  L2_2 = true
  L13_1 = L2_2
  L2_2 = false
  L23_1 = L2_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "replaceStartBtn"
  L2_2(L3_2)
  L2_2 = CreateThread
  function L3_2()
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
  L2_2(L3_2)
  L2_2 = isBack
  if not L2_2 then
    L2_2 = GetResourceKvpInt
    L3_2 = "17mov_Tutorials:"
    L4_2 = Config
    L4_2 = L4_2.Lang
    L4_2 = L4_2.startingTutorial
    L3_2 = L3_2 .. L4_2
    L2_2 = L2_2(L3_2)
    if 0 == L2_2 then
      L2_2 = Config
      L2_2 = L2_2.Lang
      L2_2 = L2_2.startingTutorial
      L22_1 = L2_2
      L2_2 = SendNUIMessage
      L3_2 = {}
      L3_2.action = "showTutorial"
      L4_2 = Config
      L4_2 = L4_2.Lang
      L4_2 = L4_2.startingTutorial
      L3_2.customText = L4_2
      L2_2(L3_2)
      L2_2 = true
      L21_1 = L2_2
      L2_2 = CreateThread
      function L3_2()
        local L0_3, L1_3, L2_3, L3_3
        while true do
          L0_3 = L21_1
          if not L0_3 then
            break
          end
          L0_3 = Wait
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
      L2_2(L3_2)
      L2_2 = SetNuiFocus
      L3_2 = true
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "updateCounter"
  L3_2.value = 0
  L2_2(L3_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "showCounter"
  L2_2(L3_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = 1000
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = GetEntityCoords
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L3_3 = Config
      L3_3 = L3_3.GrabGearCoordinates
      L4_3 = L2_3 - L3_3
      L4_3 = #L4_3
      if L4_3 < 5.0 then
        L0_3 = 0
        L5_3 = DrawText3Ds
        L6_3 = L3_3.x
        L7_3 = L3_3.y
        L8_3 = L3_3.z
        L9_3 = HaveGear
        if L9_3 then
          L9_3 = Config
          L9_3 = L9_3.Lang
          L9_3 = L9_3.putGear
          if L9_3 then
            goto lbl_33
          end
        end
        L9_3 = Config
        L9_3 = L9_3.Lang
        L9_3 = L9_3.grabGear
        ::lbl_33::
        L5_3(L6_3, L7_3, L8_3, L9_3)
        L5_3 = IsControlJustReleased
        L6_3 = 0
        L7_3 = 38
        L5_3 = L5_3(L6_3, L7_3)
        if L5_3 and L4_3 < 2.0 then
          L5_3 = ToggleGear
          L5_3()
          L5_3 = TriggerServerEvent
          L6_3 = "17mov_Miner:GearStatus"
          L7_3 = HaveGear
          L8_3 = ObjToNet
          L9_3 = L10_1
          L8_3, L9_3 = L8_3(L9_3)
          L5_3(L6_3, L7_3, L8_3, L9_3)
        end
      end
      L5_3 = Wait
      L6_3 = L0_3
      L5_3(L6_3)
    end
  end
  L2_2(L3_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = 1000
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = GetEntityCoords
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L3_3 = Config
      L3_3 = L3_3.ChangeClothesCoordinates
      L4_3 = L2_3 - L3_3
      L4_3 = #L4_3
      if L4_3 < 5.0 then
        L0_3 = 0
        L5_3 = DrawText3Ds
        L6_3 = L3_3.x
        L7_3 = L3_3.y
        L8_3 = L3_3.z
        L9_3 = HaveClothes
        if L9_3 then
          L9_3 = Config
          L9_3 = L9_3.Lang
          L9_3 = L9_3.civClothes
          if L9_3 then
            goto lbl_33
          end
        end
        L9_3 = Config
        L9_3 = L9_3.Lang
        L9_3 = L9_3.workClothes
        ::lbl_33::
        L5_3(L6_3, L7_3, L8_3, L9_3)
        L5_3 = IsControlJustReleased
        L6_3 = 0
        L7_3 = 38
        L5_3 = L5_3(L6_3, L7_3)
        if L5_3 and L4_3 < 2.0 then
          L5_3 = ChangeClothes
          L6_3 = HaveClothes
          if L6_3 then
            L6_3 = "civ"
            if L6_3 then
              goto lbl_50
            end
          end
          L6_3 = "work"
          ::lbl_50::
          L5_3(L6_3)
          L5_3 = TriggerServerEvent
          L6_3 = "17mov_Miner:ClothesStatus"
          L7_3 = HaveClothes
          L5_3(L6_3, L7_3)
        end
      end
      L5_3 = Wait
      L6_3 = L0_3
      L5_3(L6_3)
    end
  end
  L2_2(L3_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = Config
    L0_3 = L0_3.Restaurant
    L0_3 = L0_3.enable
    if L0_3 then
      while true do
        L0_3 = L13_1
        if not L0_3 then
          break
        end
        L0_3 = 1000
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = GetEntityCoords
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        L3_3 = DoesEntityExist
        L4_3 = L27_1
        L3_3 = L3_3(L4_3)
        if not L3_3 then
          L3_3 = Config
          L3_3 = L3_3.Restaurant
          L3_3 = L3_3.coordinates
          L3_3 = L2_3 - L3_3
          L3_3 = #L3_3
          if L3_3 < 10.0 then
            L0_3 = 0
            L4_3 = DrawText3Ds
            L5_3 = Config
            L5_3 = L5_3.Restaurant
            L5_3 = L5_3.coordinates
            L5_3 = L5_3.x
            L6_3 = Config
            L6_3 = L6_3.Restaurant
            L6_3 = L6_3.coordinates
            L6_3 = L6_3.y
            L7_3 = Config
            L7_3 = L7_3.Restaurant
            L7_3 = L7_3.coordinates
            L7_3 = L7_3.z
            L8_3 = Config
            L8_3 = L8_3.Lang
            L8_3 = L8_3.takeFood
            L4_3(L5_3, L6_3, L7_3, L8_3)
            if L3_3 < 2.0 then
              L4_3 = IsControlJustReleased
              L5_3 = 0
              L6_3 = 38
              L4_3 = L4_3(L5_3, L6_3)
              if L4_3 then
                L4_3 = TakeFoodTray
                L4_3()
              end
            end
          end
        else
          L3_3 = pairs
          L4_3 = Config
          L4_3 = L4_3.Restaurant
          L4_3 = L4_3.objects
          L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
          for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
            L9_3 = L8_3.taken
            if not L9_3 then
              L9_3 = L8_3.type
              if "chair" == L9_3 then
                L9_3 = L8_3.coordinates
                L9_3 = L2_3 - L9_3
                L9_3 = #L9_3
                if L9_3 < 5.0 then
                  L0_3 = 0
                  L10_3 = DrawText3Ds
                  L11_3 = L8_3.coordinates
                  L11_3 = L11_3.x
                  L12_3 = L8_3.coordinates
                  L12_3 = L12_3.y
                  L13_3 = L8_3.coordinates
                  L13_3 = L13_3.z
                  L13_3 = L13_3 + 1.0
                  L14_3 = Config
                  L14_3 = L14_3.Lang
                  L14_3 = L14_3.sitChair
                  L10_3(L11_3, L12_3, L13_3, L14_3)
                  if L9_3 < 2.0 then
                    L10_3 = IsControlJustReleased
                    L11_3 = 0
                    L12_3 = 38
                    L10_3 = L10_3(L11_3, L12_3)
                    if L10_3 then
                      L10_3 = SitOnChair
                      L11_3 = L8_3
                      L12_3 = L7_3
                      L10_3(L11_3, L12_3)
                    end
                  end
                end
              end
            end
          end
        end
        L3_3 = Wait
        L4_3 = L0_3
        L3_3(L4_3)
      end
    end
  end
  L2_2(L3_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = false
    while true do
      L1_3 = OnDuty
      if not L1_3 then
        break
      end
      L1_3 = 1000
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = GetEntityCoords
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = GetEntityCoords
      L5_3 = L0_1.elevator
      L4_3 = L4_3(L5_3)
      L4_3 = L3_3 - L4_3
      L4_3 = #L4_3
      if L4_3 < 50.0 then
        L5_3 = L0_1.beingAnimated
        if not L5_3 then
          L5_3 = L0_1.DoorsBeingAnimated
          if not L5_3 then
            L5_3 = L0_1.isInside
            L6_3 = L2_3
            L5_3 = L5_3(L6_3)
            L6_3 = L0_1.frontDoorsOpened
            if not L6_3 and not L5_3 then
              L6_3 = L0_1.currentState
              if "up" == L6_3 then
                L6_3 = L0_1.GlowButton
                L7_3 = "btnupBtn"
                L6_3(L7_3)
                L6_3 = GetEntityCoords
                L7_3 = L0_1.btnupBtn
                L6_3 = L6_3(L7_3)
                L6_3 = L3_3 - L6_3
                L6_3 = #L6_3
                if L6_3 < 3.0 then
                  L1_3 = 0
                  L7_3 = ShowHelpNotification
                  L8_3 = Config
                  L8_3 = L8_3.Lang
                  L8_3 = L8_3.openDoors
                  L7_3(L8_3)
                  L7_3 = IsControlJustReleased
                  L8_3 = 0
                  L9_3 = 38
                  L7_3 = L7_3(L8_3, L9_3)
                  if L7_3 then
                    L7_3 = Functions
                    L7_3 = L7_3.TriggerServerCallback
                    L8_3 = "17mov_Miner:CheckTeamIsReady"
                    function L9_3(A0_4)
                      local L1_4, L2_4
                      if not A0_4 then
                        L1_4 = Config
                        L1_4 = L1_4.RequireGear
                        if false ~= L1_4 then
                          goto lbl_11
                        end
                      end
                      L1_4 = TriggerServerEvent
                      L2_4 = "17mov_Miner:ElevatorOpenDoors"
                      L1_4(L2_4)
                      goto lbl_16
                      ::lbl_11::
                      L1_4 = Notify
                      L2_4 = Config
                      L2_4 = L2_4.Lang
                      L2_4 = L2_4.noClothes
                      L1_4(L2_4)
                      ::lbl_16::
                    end
                    L7_3(L8_3, L9_3)
                  end
                end
            end
            else
              L6_3 = L0_1.frontDoorsOpened
              if L6_3 and L5_3 then
                L6_3 = L0_1.currentState
                if "up" == L6_3 then
                  L6_3 = L0_1.GlowButton
                  L7_3 = "btninsideBtn"
                  L6_3(L7_3)
                  L6_3 = GetEntityCoords
                  L7_3 = L0_1.btninsideBtn
                  L6_3 = L6_3(L7_3)
                  L6_3 = L3_3 - L6_3
                  L6_3 = #L6_3
                  if L6_3 < 3.0 then
                    L1_3 = 0
                    L7_3 = ShowHelpNotification
                    L8_3 = Config
                    L8_3 = L8_3.Lang
                    L8_3 = L8_3.goDown
                    L7_3(L8_3)
                    L7_3 = IsControlJustReleased
                    L8_3 = 0
                    L9_3 = 38
                    L7_3 = L7_3(L8_3, L9_3)
                    if L7_3 then
                      L7_3 = Functions
                      L7_3 = L7_3.TriggerServerCallback
                      L8_3 = "17mov_Miner:GetTeamCoordinates"
                      function L9_3(A0_4)
                        local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4
                        L1_4 = type
                        L2_4 = A0_4
                        L1_4 = L1_4(L2_4)
                        if "table" == L1_4 then
                          L1_4 = false
                          L2_4 = pairs
                          L3_4 = A0_4
                          L2_4, L3_4, L4_4, L5_4 = L2_4(L3_4)
                          for L6_4, L7_4 in L2_4, L3_4, L4_4, L5_4 do
                            L8_4 = L0_1.isInside
                            L9_4 = nil
                            L10_4 = L7_4
                            L8_4 = L8_4(L9_4, L10_4)
                            if not L8_4 then
                              L8_4 = Notify
                              L9_4 = Config
                              L9_4 = L9_4.Lang
                              L9_4 = L9_4.somebodyNotInElevator
                              L8_4(L9_4)
                              L1_4 = true
                              break
                            end
                          end
                          if not L1_4 then
                            L2_4 = TriggerServerEvent
                            L3_4 = "17mov_Miner:ElevatorGoDown"
                            L2_4(L3_4)
                          end
                        else
                          L1_4 = Notify
                          L2_4 = Config
                          L2_4 = L2_4.Lang
                          L2_4 = L2_4.noClothes
                          L1_4(L2_4)
                        end
                      end
                      L7_3(L8_3, L9_3)
                    end
                  end
              end
              elseif L4_3 < 10.0 then
                L6_3 = L0_1.backDoorsOpened
                if L6_3 then
                  L6_3 = L0_1.currentState
                  if "down" == L6_3 then
                    L6_3 = L0_1.GlowButton
                    L7_3 = "btninsideBtn"
                    L6_3(L7_3)
                    L6_3 = GetEntityCoords
                    L7_3 = L0_1.btninsideBtn
                    L6_3 = L6_3(L7_3)
                    L6_3 = L3_3 - L6_3
                    L6_3 = #L6_3
                    if L6_3 < 3.0 then
                      L1_3 = 0
                      L7_3 = ShowHelpNotification
                      L8_3 = Config
                      L8_3 = L8_3.Lang
                      L8_3 = L8_3.goBack
                      L7_3(L8_3)
                      L7_3 = IsControlJustReleased
                      L8_3 = 0
                      L9_3 = 38
                      L7_3 = L7_3(L8_3, L9_3)
                      if L7_3 and not L0_3 then
                        L0_3 = true
                        L7_3 = Functions
                        L7_3 = L7_3.TriggerServerCallback
                        L8_3 = "17mov_Miner:IfPlayerIsHost"
                        function L9_3(A0_4)
                          local L1_4, L2_4, L3_4, L4_4
                          if A0_4 then
                            L1_4 = Functions
                            L1_4 = L1_4.TriggerServerCallback
                            L2_4 = "17mov_Miner:GetTeamCoordinates"
                            function L3_4(A0_5)
                              local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5
                              L1_5 = true
                              L2_5 = pairs
                              L3_5 = A0_5
                              L2_5, L3_5, L4_5, L5_5 = L2_5(L3_5)
                              for L6_5, L7_5 in L2_5, L3_5, L4_5, L5_5 do
                                L8_5 = L0_1.isInside
                                L9_5 = nil
                                L10_5 = L7_5
                                L8_5 = L8_5(L9_5, L10_5)
                                if not L8_5 then
                                  L8_5 = Notify
                                  L9_5 = Config
                                  L9_5 = L9_5.Lang
                                  L9_5 = L9_5.somebodyNotInElevator
                                  L8_5(L9_5)
                                  L1_5 = false
                                  break
                                end
                              end
                              L2_5 = false
                              L0_3 = L2_5
                              if L1_5 then
                                L2_5 = Functions
                                L2_5 = L2_5.TableJoin
                                L3_5 = L5_1.rails
                                L4_5 = L5_1.lights
                                L5_5 = L5_1.supports
                                L2_5 = L2_5(L3_5, L4_5, L5_5)
                                L3_5 = #L2_5
                                if L3_5 > 0 then
                                  L3_5 = Config
                                  L3_5 = L3_5.Events
                                  L3_5 = L3_5.gas
                                  L3_5 = L3_5.running
                                  if false == L3_5 then
                                    L3_5 = SendNUIMessage
                                    L4_5 = {}
                                    L4_5.action = "openWarning"
                                    L3_5(L4_5)
                                    L3_5 = SetNuiFocus
                                    L4_5 = true
                                    L5_5 = true
                                    L3_5(L4_5, L5_5)
                                end
                                else
                                  L3_5 = TriggerServerEvent
                                  L4_5 = "17mov_Miner:ElevatorBack"
                                  return L3_5(L4_5)
                                end
                              end
                            end
                            L4_4 = true
                            L1_4(L2_4, L3_4, L4_4)
                          else
                            L1_4 = Notify
                            L2_4 = Config
                            L2_4 = L2_4.Lang
                            L2_4 = L2_4.no_permission
                            L1_4(L2_4)
                          end
                        end
                        L7_3(L8_3, L9_3)
                      end
                    end
                end
                else
                  L6_3 = L0_1.DisableBtnsGlow
                  L6_3()
                end
              else
                L6_3 = L0_1.DisableBtnsGlow
                L6_3()
              end
            end
        end
      end
      else
        L5_3 = L0_1.DisableBtnsGlow
        L5_3()
      end
      L5_3 = Wait
      L6_3 = L1_3
      L5_3(L6_3)
    end
  end
  L2_2(L3_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3
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
      L2_3 = Functions
      L2_3 = L2_3.TableJoin
      L3_3 = L5_1.rails
      L4_3 = L5_1.lights
      L5_3 = L5_1.supports
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L3_3 = 1000
      L4_3 = L8_1
      if nil ~= L4_3 then
        L4_3 = pairs
        L5_3 = L8_1
        L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
        for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
          L10_3 = 1
          L11_3 = #L9_3
          L12_3 = 1
          for L13_3 = L10_3, L11_3, L12_3 do
            L14_3 = SetEntityDrawOutline
            L15_3 = L9_3[L13_3]
            L16_3 = false
            L14_3(L15_3, L16_3)
          end
        end
      end
      L4_3 = L3_1
      if L4_3 then
        L4_3 = GetEntityModel
        L5_3 = L3_1
        L4_3 = L4_3(L5_3)
        L5_3 = L8_1
        if nil ~= L5_3 then
          L5_3 = pairs
          L6_3 = L8_1
          L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
          for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
            L11_3 = #L10_3
            L12_3 = L10_3[L11_3]
            L13_3 = Config
            L13_3 = L13_3.Props
            L13_3 = L13_3[L9_3]
            L14_3 = nil
            L15_3 = nil
            L16_3 = nil
            if L12_3 then
              L17_3 = DoesEntityExist
              L18_3 = L12_3
              L17_3 = L17_3(L18_3)
              if L17_3 then
                L17_3 = GetEntityModel
                L18_3 = L12_3
                L17_3 = L17_3(L18_3)
                L14_3 = L17_3
                L17_3 = GetEntityCoords
                L18_3 = L12_3
                L17_3 = L17_3(L18_3)
                L15_3 = L17_3
            end
            else
              L14_3 = L13_3.model
              L17_3 = L13_3.stackCoordinates
              if L17_3 then
                L17_3 = L13_3.stackCoordinates
                L15_3 = L17_3[1]
              else
                L15_3 = L13_3.stackCoords
              end
            end
            L17_3 = vec3
            L18_3 = L1_3.x
            L19_3 = L1_3.y
            L20_3 = L1_3.z
            L17_3 = L17_3(L18_3, L19_3, L20_3)
            L18_3 = vec3
            L19_3 = L15_3.x
            L20_3 = L15_3.y
            L21_3 = L15_3.z
            L18_3 = L18_3(L19_3, L20_3, L21_3)
            L17_3 = L17_3 - L18_3
            L16_3 = #L17_3
            if (L4_3 == L14_3 or -478635748 == L4_3 and -2021346006 == L14_3) and L16_3 < 5 then
              L17_3 = math
              L17_3 = L17_3.abs
              L18_3 = L1_3.z
              L19_3 = L15_3.z
              L18_3 = L18_3 - L19_3
              L17_3 = L17_3(L18_3)
              if L17_3 < 20 then
                L3_3 = 0
                L17_3 = L13_3.stackCoordinates
                if nil ~= L17_3 then
                  L17_3 = L13_3.stackCoordinates
                  L17_3 = #L17_3
                  if L11_3 < L17_3 then
                    goto lbl_119
                  end
                end
                L17_3 = L13_3.stackCoordinates
                ::lbl_119::
                if nil == L17_3 then
                  L17_3 = L13_3.interactionDistance
                  if L16_3 < L17_3 then
                    L17_3 = ShowHelpNotification
                    L18_3 = Config
                    L18_3 = L18_3.Lang
                    L18_3 = L18_3.placePropBack
                    L17_3(L18_3)
                    L17_3 = IsControlJustReleased
                    L18_3 = 0
                    L19_3 = 38
                    L17_3 = L17_3(L18_3, L19_3)
                    if L17_3 then
                      L17_3 = nil
                      L18_3 = L13_3.stackCoords
                      if L18_3 then
                        L18_3 = vec3
                        L19_3 = L15_3.x
                        L20_3 = L13_3.stackOffest
                        L20_3 = L20_3.x
                        L19_3 = L19_3 + L20_3
                        L20_3 = L15_3.y
                        L21_3 = L13_3.stackOffest
                        L21_3 = L21_3.y
                        L20_3 = L20_3 + L21_3
                        L21_3 = L15_3.z
                        L22_3 = L13_3.stackOffest
                        L22_3 = L22_3.z
                        L21_3 = L21_3 + L22_3
                        L18_3 = L18_3(L19_3, L20_3, L21_3)
                        L17_3 = L18_3
                      else
                        L18_3 = vec3
                        L19_3 = L9_1.x
                        L20_3 = L9_1.y
                        L21_3 = L9_1.z
                        L18_3 = L18_3(L19_3, L20_3, L21_3)
                        L17_3 = L18_3
                      end
                      L18_3 = L13_3.stackRotation
                      L19_3 = TriggerServerEvent
                      L20_3 = "17mov_miner:MagazinePropPutBack"
                      L21_3 = L4_3
                      L22_3 = L17_3
                      L23_3 = L18_3
                      L24_3 = L9_3
                      L19_3(L20_3, L21_3, L22_3, L23_3, L24_3)
                      L19_3 = DeleteEntity
                      L20_3 = L3_1
                      L19_3(L20_3)
                      L19_3 = nil
                      L3_1 = L19_3
                    end
                  end
                end
              end
            end
          end
        end
        L5_3 = 1
        L6_3 = #L2_3
        L7_3 = 1
        for L8_3 = L5_3, L6_3, L7_3 do
          L9_3 = L3_1
          if L9_3 then
            L9_3 = GetEntityModel
            L10_3 = L2_3[L8_3]
            L9_3 = L9_3(L10_3)
            if L4_3 ~= L9_3 then
              if -478635748 == L4_3 then
                L9_3 = GetEntityModel
                L10_3 = L2_3[L8_3]
                L9_3 = L9_3(L10_3)
                if -2021346006 == L9_3 then
                  goto lbl_204
                end
              end
              if -653882587 ~= L4_3 then
                goto lbl_305
              end
              L9_3 = GetEntityModel
              L10_3 = L2_3[L8_3]
              L9_3 = L9_3(L10_3)
              if -915189888 ~= L9_3 then
                goto lbl_305
              end
            end
            ::lbl_204::
            L9_3 = GetEntityCoords
            L10_3 = L2_3[L8_3]
            L9_3 = L9_3(L10_3)
            L10_3 = math
            L10_3 = L10_3.abs
            L11_3 = L1_3.z
            L12_3 = L9_3.z
            L11_3 = L11_3 - L12_3
            L10_3 = L10_3(L11_3)
            if L10_3 < 10 then
              L3_3 = 0
              L10_3 = vec2
              L11_3 = L1_3.x
              L12_3 = L1_3.y
              L10_3 = L10_3(L11_3, L12_3)
              L11_3 = vec2
              L12_3 = L9_3.x
              L13_3 = L9_3.y
              L11_3 = L11_3(L12_3, L13_3)
              L10_3 = L10_3 - L11_3
              L10_3 = #L10_3
              L11_3 = 1.5
              if L10_3 < L11_3 then
                L11_3 = ShowHelpNotification
                L12_3 = Config
                L12_3 = L12_3.Lang
                L12_3 = L12_3.placeProp
                L11_3(L12_3)
                L11_3 = IsControlJustReleased
                L12_3 = 0
                L13_3 = 38
                L11_3 = L11_3(L12_3, L13_3)
                if L11_3 then
                  L11_3 = nil
                  L12_3 = nil
                  L14_3 = L2_1
                  L13_3 = L11_1
                  L13_3 = L13_3[L14_3]
                  if nil ~= L13_3 then
                    L13_3 = pairs
                    L15_3 = L2_1
                    L14_3 = L11_1
                    L14_3 = L14_3[L15_3]
                    L13_3, L14_3, L15_3, L16_3 = L13_3(L14_3)
                    for L17_3, L18_3 in L13_3, L14_3, L15_3, L16_3 do
                      if "rails" == L17_3 or "lights" == L17_3 then
                        L19_3 = pairs
                        L20_3 = L18_3
                        L19_3, L20_3, L21_3, L22_3 = L19_3(L20_3)
                        for L23_3, L24_3 in L19_3, L20_3, L21_3, L22_3 do
                          L25_3 = L2_3[L8_3]
                          if L24_3 == L25_3 then
                            L11_3 = L17_3
                            L12_3 = L23_3
                          end
                        end
                      elseif "supports" == L17_3 then
                        L19_3 = pairs
                        L20_3 = L18_3
                        L19_3, L20_3, L21_3, L22_3 = L19_3(L20_3)
                        for L23_3, L24_3 in L19_3, L20_3, L21_3, L22_3 do
                          L25_3 = pairs
                          L26_3 = L24_3
                          L25_3, L26_3, L27_3, L28_3 = L25_3(L26_3)
                          for L29_3, L30_3 in L25_3, L26_3, L27_3, L28_3 do
                            L31_3 = L2_3[L8_3]
                            if L30_3 == L31_3 then
                              L11_3 = L29_3
                              L12_3 = L23_3
                            end
                          end
                        end
                      end
                    end
                    L13_3 = DeleteEntity
                    L14_3 = L3_1
                    L13_3(L14_3)
                    L13_3 = TriggerServerEvent
                    L14_3 = "17mov_Miner:PlaceProp"
                    L15_3 = L11_3
                    L16_3 = L12_3
                    L13_3(L14_3, L15_3, L16_3)
                    L13_3 = nil
                    L3_1 = L13_3
                  end
                end
              end
            end
          end
          ::lbl_305::
        end
      else
        L4_3 = nil
        L5_3 = 100
        L6_3 = nil
        L7_3 = 1
        L8_3 = #L2_3
        L9_3 = 1
        for L10_3 = L7_3, L8_3, L9_3 do
          L11_3 = GetEntityModel
          L12_3 = L2_3[L10_3]
          L11_3 = L11_3(L12_3)
          L12_3 = L8_1
          if nil ~= L12_3 then
            L12_3 = pairs
            L13_3 = L8_1
            L12_3, L13_3, L14_3, L15_3 = L12_3(L13_3)
            for L16_3, L17_3 in L12_3, L13_3, L14_3, L15_3 do
              L18_3 = #L17_3
              if L18_3 > 0 then
                L19_3 = L17_3[L18_3]
                if L19_3 then
                  L20_3 = DoesEntityExist
                  L21_3 = L19_3
                  L20_3 = L20_3(L21_3)
                  if L20_3 then
                    L20_3 = GetEntityModel
                    L21_3 = L19_3
                    L20_3 = L20_3(L21_3)
                    L21_3 = GetEntityCoords
                    L22_3 = L19_3
                    L21_3 = L21_3(L22_3)
                    L22_3 = vec3
                    L23_3 = L1_3.x
                    L24_3 = L1_3.y
                    L25_3 = L1_3.z
                    L22_3 = L22_3(L23_3, L24_3, L25_3)
                    L23_3 = vec3
                    L24_3 = L21_3.x
                    L25_3 = L21_3.y
                    L26_3 = L21_3.z
                    L23_3 = L23_3(L24_3, L25_3, L26_3)
                    L22_3 = L22_3 - L23_3
                    L22_3 = #L22_3
                    if L11_3 == L20_3 then
                      L23_3 = SetEntityDrawOutlineShader
                      L24_3 = 1
                      L23_3(L24_3)
                      L23_3 = SetEntityDrawOutline
                      L24_3 = L19_3
                      L25_3 = true
                      L23_3(L24_3, L25_3)
                    end
                    L23_3 = math
                    L23_3 = L23_3.abs
                    L24_3 = L1_3.z
                    L25_3 = L21_3.z
                    L24_3 = L24_3 - L25_3
                    L23_3 = L23_3(L24_3)
                    if L23_3 < 20 and L5_3 > L22_3 then
                      L5_3 = L22_3
                      L4_3 = L19_3
                      L6_3 = L16_3
                    end
                  end
                end
              end
            end
          end
        end
        if L4_3 and L5_3 < 5 and L6_3 then
          L7_3 = Config
          L7_3 = L7_3.Props
          L7_3 = L7_3[L6_3]
          L3_3 = 0
          L8_3 = L7_3.interactionDistance
          if L5_3 < L8_3 then
            L8_3 = ShowHelpNotification
            L9_3 = Config
            L9_3 = L9_3.Lang
            L9_3 = L9_3.pickUp
            L8_3(L9_3)
            L8_3 = IsControlJustReleased
            L9_3 = 0
            L10_3 = 38
            L8_3 = L8_3(L9_3, L10_3)
            if L8_3 then
              L8_3 = GetEntityCoords
              L9_3 = L4_3
              L8_3 = L8_3(L9_3)
              L9_1 = L8_3
              L8_3 = GetEntityCoords
              L9_3 = PlayerPedId
              L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3 = L9_3()
              L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
              L9_3 = CreateObject
              if "Rails" == L6_3 then
                L10_3 = -478635748
                if L10_3 then
                  goto lbl_423
                end
              end
              L10_3 = Config
              L10_3 = L10_3.Props
              L10_3 = L10_3[L6_3]
              L10_3 = L10_3.model
              ::lbl_423::
              L11_3 = L8_3.x
              L12_3 = L8_3.y
              L13_3 = L8_3.z
              L14_3 = true
              L15_3 = true
              L16_3 = true
              L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
              L3_1 = L9_3
              L9_3 = GetPedBoneIndex
              L10_3 = L0_3
              if "Rails" == L6_3 then
                L11_3 = 57005
                if L11_3 then
                  goto lbl_439
                end
              end
              L11_3 = 28422
              ::lbl_439::
              L9_3 = L9_3(L10_3, L11_3)
              L10_3 = AttachEntityToEntity
              L11_3 = L3_1
              L12_3 = L0_3
              L13_3 = L9_3
              L14_3 = L7_3.attachToPed
              L14_3 = L14_3.offset
              L14_3 = L14_3.x
              L15_3 = L7_3.attachToPed
              L15_3 = L15_3.offset
              L15_3 = L15_3.y
              L16_3 = L7_3.attachToPed
              L16_3 = L16_3.offset
              L16_3 = L16_3.z
              L17_3 = L7_3.attachToPed
              L17_3 = L17_3.rotation
              L17_3 = L17_3.x
              L18_3 = L7_3.attachToPed
              L18_3 = L18_3.rotation
              L18_3 = L18_3.y
              L19_3 = L7_3.attachToPed
              L19_3 = L19_3.rotation
              L19_3 = L19_3.z
              L20_3 = true
              L21_3 = true
              L22_3 = false
              L23_3 = true
              L24_3 = 2
              L25_3 = true
              L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
              L10_3 = SetEntityDrawOutline
              L11_3 = L3_1
              L12_3 = false
              L10_3(L11_3, L12_3)
              L10_3 = CarringAnim
              L11_3 = "Rails" == L6_3
              L10_3(L11_3)
              L10_3 = L8_1
              if L10_3 then
                L10_3 = TriggerServerEvent
                L11_3 = "17mov_miner:MagazinePropDelete"
                L12_3 = L6_3
                L13_3 = L8_1
                L13_3 = L13_3[L6_3]
                L13_3 = #L13_3
                L10_3(L11_3, L12_3, L13_3)
              end
            end
          end
        end
      end
      L4_3 = Wait
      L5_3 = L3_3
      L4_3(L5_3)
    end
  end
  L2_2(L3_2)
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "17mov_miner:MagazinePropPutBack"
function L38_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if -478635748 == A0_2 then
    A0_2 = -2021346006
  end
  L4_2 = CreateObject
  L5_2 = A0_2
  L6_2 = A1_2.x
  L7_2 = A1_2.y
  L8_2 = A1_2.z
  L9_2 = false
  L10_2 = false
  L11_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityRotation
  L6_2 = L4_2
  L7_2 = A2_2.x
  L8_2 = A2_2.y
  L9_2 = A2_2.z
  L10_2 = 0
  L11_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = SetEntityCoords
  L6_2 = L4_2
  L7_2 = A1_2.x
  L8_2 = A1_2.y
  L9_2 = A1_2.z
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if 0 ~= L4_2 then
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_64
    end
  end
  L5_2 = Functions
  L5_2 = L5_2.Error
  L6_2 = "Tried to add tempObj but it doesn't exist. Restarting. "
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 10
  L5_2(L6_2)
  L5_2 = IsModelInCdimage
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = TriggerEvent
    L6_2 = "17mov_miner:MagazinePropPutBack"
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  do return end
  ::lbl_64::
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L8_1
  L6_2 = L6_2[A3_2]
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "17mov_miner:MagazinePropDelete"
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DeleteEntity
  L3_2 = L8_1
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[A1_2]
  L2_2(L3_2)
  L2_2 = L8_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  if nil ~= L2_2 then
    L2_2 = table
    L2_2 = L2_2.remove
    L3_2 = L8_1
    L3_2 = L3_2[A0_2]
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNUICallback
L37_1 = "acceptWarning"
function L38_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerServerEvent
  L1_2 = "17mov_Miner:ElevatorBack"
  L2_2 = false
  return L0_2(L1_2, L2_2)
end
L36_1(L37_1, L38_1)
function L36_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    while true do
      L0_3 = L3_1
      if nil == L0_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = nil
      L2_3 = nil
      L3_3 = A0_2
      if L3_3 then
        L3_3 = "rail@anim"
        L2_3 = "rail_anim"
        L1_3 = L3_3
      else
        L3_3 = "anim@heists@box_carry@"
        L2_3 = "idle"
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
        L3_3 = TaskPlayAnim
        L4_3 = L0_3
        L5_3 = L1_3
        L6_3 = L2_3
        L7_3 = 3.5
        L8_3 = -8
        L9_3 = -1
        L10_3 = A0_2
        if L10_3 then
          L10_3 = 33
          if L10_3 then
            goto lbl_56
          end
        end
        L10_3 = 49
        ::lbl_56::
        L11_3 = 0
        L12_3 = false
        L13_3 = false
        L14_3 = false
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
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
CarringAnim = L36_1
L36_1 = RegisterNetEvent
L37_1 = "17mov_Miner:endJob_cl"
L36_1(L37_1)
L36_1 = AddEventHandler
L37_1 = "17mov_Miner:endJob_cl"
function L38_1(A0_2)
  local L1_2, L2_2
  OnDuty = false
  L1_2 = nil
  L2_1 = L1_2
  L1_2 = TriggerEvent
  L2_2 = "17mov_Miner:StopMinecartSound"
  L1_2(L2_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "startBtnBackToNormal"
  L1_2(L2_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "hideCounter"
  L1_2(L2_2)
  if A0_2 then
    L1_2 = HaveClothes
    if L1_2 then
      L1_2 = ChangeClothes
      L2_2 = "citizen"
      L1_2(L2_2)
    end
    L1_2 = HaveGear
    if L1_2 then
      L1_2 = DoesEntityExist
      L2_2 = L10_1
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = ToggleGear
        L1_2()
        L1_2 = DeleteEntity
        L2_2 = L10_1
        L1_2(L2_2)
      end
    end
  end
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 10
  L1_2(L2_2)
  L1_2 = L0_1.DisableBtnsGlow
  L1_2()
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 1200000
  L1_2(L2_2)
  L1_2 = false
  L13_1 = L1_2
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "17mov_Miner:CheckObjectsToBuild"
function L38_1(A0_2)
  local L1_2, L2_2
  L1_2 = TriggerEvent
  L2_2 = "17mov_Miner:UpdateEntites"
  L1_2(L2_2)
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "17mov_Miner:BuildProp"
function L38_1(A0_2, A1_2)
  local L2_2, L3_2
  if "rails" == A0_2 or "lights" == A0_2 then
    L3_2 = L2_1
    L2_2 = L12_1
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2[A0_2]
    L2_2[A1_2] = true
  else
    L3_2 = L2_1
    L2_2 = L12_1
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.supports
    L2_2 = L2_2[A1_2]
    if not L2_2 then
      L3_2 = L2_1
      L2_2 = L12_1
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.supports
      L3_2 = {}
      L2_2[A1_2] = L3_2
    end
    L3_2 = L2_1
    L2_2 = L12_1
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.supports
    L2_2 = L2_2[A1_2]
    L2_2[A0_2] = true
  end
  L2_2 = TriggerEvent
  L3_2 = "17mov_Miner:UpdateEntites"
  L2_2(L3_2)
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "17mov_Miner:ShowProp"
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = L11_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = pairs
    L3_2 = L11_1
    L3_2 = L3_2[A0_2]
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      if "rails" == L6_2 or "lights" == L6_2 then
        L8_2 = 1
        L9_2 = #L7_2
        L10_2 = 1
        for L11_2 = L8_2, L9_2, L10_2 do
          L12_2 = A1_2[L6_2]
          L12_2 = L12_2[L11_2]
          if L12_2 then
            L12_2 = SetEntityVisible
            L13_2 = L7_2[L11_2]
            L14_2 = true
            L15_2 = true
            L12_2(L13_2, L14_2, L15_2)
          else
            L12_2 = SetEntityVisible
            L13_2 = L7_2[L11_2]
            L14_2 = false
            L15_2 = false
            L12_2(L13_2, L14_2, L15_2)
          end
        end
      elseif "minecart" ~= L6_2 and "minecartRock" ~= L6_2 then
        L8_2 = 1
        L9_2 = #L7_2
        L10_2 = 1
        for L11_2 = L8_2, L9_2, L10_2 do
          L12_2 = pairs
          L13_2 = L7_2[L11_2]
          L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
          for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
            L18_2 = A1_2[L6_2]
            L18_2 = L18_2[L11_2]
            if L18_2 then
              L18_2 = A1_2[L6_2]
              L18_2 = L18_2[L11_2]
              L18_2 = L18_2[L16_2]
              if L18_2 then
                L18_2 = SetEntityVisible
                L19_2 = L17_2
                L20_2 = true
                L21_2 = true
                L18_2(L19_2, L20_2, L21_2)
            end
            else
              L18_2 = SetEntityVisible
              L19_2 = L17_2
              L20_2 = false
              L21_2 = false
              L18_2(L19_2, L20_2, L21_2)
            end
          end
        end
      end
    end
  end
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "17mov_Miner:DestroyThisMineshaft"
function L38_1(A0_2)
  local L1_2, L2_2, L3_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = type
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if "table" == L1_3 then
      L1_3 = pairs
      L2_3 = A0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L1_2
        L8_3 = L6_3
        L7_3(L8_3)
      end
    else
      L1_3 = DoesEntityExist
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = DeleteEntity
        L2_3 = A0_3
        L1_3(L2_3)
      end
    end
  end
  L2_2 = L1_2
  L3_2 = L11_1
  L3_2 = L3_2[A0_2]
  L2_2(L3_2)
  L2_2 = L11_1
  L2_2[A0_2] = nil
  L2_2 = L12_1
  L2_2[A0_2] = nil
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "17mov_Miner:CreateThisMineshaft"
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L2_2 = Config
  L2_2 = L2_2.Mineshatfs
  L2_2 = L2_2[A0_2]
  L3_2 = {}
  L4_2 = {}
  L3_2.rails = L4_2
  L4_2 = {}
  L3_2.supports = L4_2
  L4_2 = {}
  L3_2.lights = L4_2
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  if nil ~= L4_2 then
    while true do
      L4_2 = DoesEntityExist
      L5_2 = L1_1
      L5_2 = L5_2[A0_2]
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        break
      end
      L4_2 = DeleteEntity
      L5_2 = L1_1
      L5_2 = L5_2[A0_2]
      L4_2(L5_2)
      L4_2 = Citizen
      L4_2 = L4_2.Wait
      L5_2 = 10
      L4_2(L5_2)
    end
  end
  L4_2 = pairs
  L5_2 = Config
  L5_2 = L5_2.Props
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if "Rails" == L8_2 then
      L10_2 = L2_2.railsStart
      L11_2 = 1
      L12_2 = L2_2.railsQuantity
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = Functions
        L15_2 = L15_2.LoadModel
        L16_2 = -2021346006
        L15_2(L16_2)
        L15_2 = L3_2.rails
        L16_2 = CreateObjectNoOffset
        L17_2 = -2021346006
        L18_2 = L10_2.x
        L19_2 = L10_2.y
        L20_2 = L2_2.railsStart
        L20_2 = L20_2.z
        L21_2 = false
        L22_2 = true
        L23_2 = false
        L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L15_2[L14_2] = L16_2
        while true do
          L15_2 = DoesEntityExist
          L16_2 = L3_2.rails
          L16_2 = L16_2[L14_2]
          L15_2 = L15_2(L16_2)
          if L15_2 then
            break
          end
          L15_2 = Wait
          L16_2 = 10
          L15_2(L16_2)
        end
        L15_2 = SetEntityRotation
        L16_2 = L3_2.rails
        L16_2 = L16_2[L14_2]
        L17_2 = L2_2.railsRotation
        L17_2 = L17_2.x
        L18_2 = L2_2.railsRotation
        L18_2 = L18_2.y
        L19_2 = L2_2.railsRotation
        L19_2 = L19_2.z
        L20_2 = 0
        L21_2 = false
        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L15_2 = FreezeEntityPosition
        L16_2 = L3_2.rails
        L16_2 = L16_2[L14_2]
        L17_2 = true
        L15_2(L16_2, L17_2)
        L15_2 = SetEntityCoords
        L16_2 = L3_2.rails
        L16_2 = L16_2[L14_2]
        L17_2 = L10_2.x
        L18_2 = L10_2.y
        L19_2 = L2_2.railsStart
        L19_2 = L19_2.z
        L20_2 = false
        L21_2 = false
        L22_2 = false
        L23_2 = false
        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L15_2 = SetEntityVisible
        L16_2 = L3_2.rails
        L16_2 = L16_2[L14_2]
        L17_2 = false
        L18_2 = false
        L15_2(L16_2, L17_2, L18_2)
        L15_2 = table
        L15_2 = L15_2.insert
        L16_2 = Movement
        L16_2 = L16_2.SpawnedObjects
        L17_2 = L3_2.rails
        L17_2 = L17_2[L14_2]
        L15_2(L16_2, L17_2)
        L15_2 = L2_2.forwardVector
        L15_2 = L15_2 * 5.0
        L10_2 = L10_2 + L15_2
      end
    elseif "Lights" == L8_2 then
      L10_2 = L2_2.lightsStart
      L11_2 = 1
      L12_2 = L2_2.lightsQuantity
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = Functions
        L15_2 = L15_2.LoadModel
        L16_2 = -915189888
        L15_2(L16_2)
        L15_2 = L3_2.lights
        L16_2 = CreateObjectNoOffset
        L17_2 = -915189888
        L18_2 = L10_2.x
        L19_2 = L10_2.y
        L20_2 = L2_2.lightsStart
        L20_2 = L20_2.z
        L21_2 = false
        L22_2 = true
        L23_2 = false
        L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L15_2[L14_2] = L16_2
        while true do
          L15_2 = DoesEntityExist
          L16_2 = L3_2.lights
          L16_2 = L16_2[L14_2]
          L15_2 = L15_2(L16_2)
          if L15_2 then
            break
          end
          L15_2 = Wait
          L16_2 = 10
          L15_2(L16_2)
        end
        L15_2 = SetEntityRotation
        L16_2 = L3_2.lights
        L16_2 = L16_2[L14_2]
        L17_2 = L2_2.lightsRotation
        L17_2 = L17_2.x
        L18_2 = L2_2.lightsRotation
        L18_2 = L18_2.y
        L19_2 = L2_2.lightsRotation
        L19_2 = L19_2.z
        L20_2 = 0
        L21_2 = false
        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L15_2 = FreezeEntityPosition
        L16_2 = L3_2.lights
        L16_2 = L16_2[L14_2]
        L17_2 = true
        L15_2(L16_2, L17_2)
        L15_2 = table
        L15_2 = L15_2.insert
        L16_2 = Movement
        L16_2 = L16_2.SpawnedObjects
        L17_2 = L3_2.lights
        L17_2 = L17_2[L14_2]
        L15_2(L16_2, L17_2)
        L15_2 = SetEntityVisible
        L16_2 = L3_2.lights
        L16_2 = L16_2[L14_2]
        L17_2 = false
        L18_2 = false
        L15_2(L16_2, L17_2, L18_2)
        L15_2 = L2_2.forwardVector
        L15_2 = L15_2 * 6
        L10_2 = L10_2 + L15_2
      end
    else
      L10_2 = L2_2.supportsStart
      L11_2 = 1
      L12_2 = L2_2.supportsQuantity
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = L3_2.supports
        L15_2 = L15_2[L14_2]
        if not L15_2 then
          L15_2 = L3_2.supports
          L16_2 = {}
          L15_2[L14_2] = L16_2
        end
        L15_2 = L9_2.offset
        L15_2 = L10_2 + L15_2
        L16_2 = L2_2.supportsRotation
        L17_2 = L9_2.rotation
        L17_2 = L17_2 * -1
        L16_2 = L16_2 - L17_2
        L17_2 = Functions
        L17_2 = L17_2.RotateAroundPoint
        L18_2 = L10_2.x
        L19_2 = L10_2.y
        L20_2 = L10_2.z
        L21_2 = L16_2.x
        L22_2 = L16_2.y
        L23_2 = L16_2.z
        L24_2 = L15_2.x
        L25_2 = L15_2.y
        L26_2 = L15_2.z
        L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        L18_2 = Functions
        L18_2 = L18_2.LoadModel
        L19_2 = L9_2.model
        L18_2(L19_2)
        L18_2 = L3_2.supports
        L18_2 = L18_2[L14_2]
        L19_2 = CreateObjectNoOffset
        L20_2 = L9_2.model
        L21_2 = L17_2.x
        L22_2 = L17_2.y
        L23_2 = L17_2.z
        L24_2 = false
        L25_2 = true
        L26_2 = false
        L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        L18_2[L8_2] = L19_2
        while true do
          L18_2 = DoesEntityExist
          L19_2 = L3_2.supports
          L19_2 = L19_2[L14_2]
          L19_2 = L19_2[L8_2]
          L18_2 = L18_2(L19_2)
          if L18_2 then
            break
          end
          L18_2 = Wait
          L19_2 = 10
          L18_2(L19_2)
        end
        L18_2 = SetEntityRotation
        L19_2 = L3_2.supports
        L19_2 = L19_2[L14_2]
        L19_2 = L19_2[L8_2]
        L20_2 = L16_2.x
        L21_2 = L16_2.y
        L22_2 = L16_2.z
        L23_2 = 0
        L24_2 = false
        L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L18_2 = FreezeEntityPosition
        L19_2 = L3_2.supports
        L19_2 = L19_2[L14_2]
        L19_2 = L19_2[L8_2]
        L20_2 = true
        L18_2(L19_2, L20_2)
        L18_2 = SetEntityVisible
        L19_2 = L3_2.supports
        L19_2 = L19_2[L14_2]
        L19_2 = L19_2[L8_2]
        L20_2 = false
        L21_2 = false
        L18_2(L19_2, L20_2, L21_2)
        L18_2 = table
        L18_2 = L18_2.insert
        L19_2 = Movement
        L19_2 = L19_2.SpawnedObjects
        L20_2 = L3_2.supports
        L20_2 = L20_2[L14_2]
        L20_2 = L20_2[L8_2]
        L18_2(L19_2, L20_2)
        L18_2 = L2_2.forwardVector
        L18_2 = L18_2 * 6
        L10_2 = L10_2 + L18_2
        L18_2 = vector3
        L19_2 = L10_2.x
        L20_2 = L10_2.y
        L21_2 = L2_2.supportsStart
        L21_2 = L21_2.z
        L18_2 = L18_2(L19_2, L20_2, L21_2)
        L10_2 = L18_2
      end
    end
  end
  L4_2 = SetEntityVisible
  L5_2 = L3_2.rails
  L5_2 = L5_2[1]
  L6_2 = true
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = GetEntityCoords
  L5_2 = L3_2.rails
  L5_2 = L5_2[A1_2]
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2.forwardVector
  L6_2 = Config
  L6_2 = L6_2.MinecartForwardOffset
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 + L5_2
  L5_2 = Config
  L5_2 = L5_2.MinecartOffset
  L4_2 = L4_2 + L5_2
  L5_2 = L2_2.railsRotation
  L6_2 = CreateObjectNoOffset
  L7_2 = Config
  L7_2 = L7_2.MinecartModel
  L8_2 = L4_2.x
  L9_2 = L4_2.y
  L10_2 = L4_2.z
  L11_2 = false
  L12_2 = true
  L13_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2.minecart = L6_2
  while true do
    L6_2 = DoesEntityExist
    L7_2 = L3_2.minecart
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 10
    L6_2(L7_2)
  end
  L6_2 = SetEntityRotation
  L7_2 = L3_2.minecart
  L8_2 = L5_2.x
  L9_2 = L5_2.y
  L10_2 = L5_2.z
  L11_2 = 2
  L12_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = FreezeEntityPosition
  L7_2 = L3_2.minecart
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = Movement
  L7_2 = L7_2.SpawnedObjects
  L8_2 = L3_2.minecart
  L6_2(L7_2, L8_2)
  L6_2 = GetEntityCoords
  L7_2 = L3_2.minecart
  L6_2 = L6_2(L7_2)
  L7_2 = Functions
  L7_2 = L7_2.SpawnObject
  L8_2 = Config
  L8_2 = L8_2.RockModel
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L3_2.minecartRock = A0_3
    L1_3 = AttachEntityToEntity
    L2_3 = A0_3
    L3_3 = L3_2.minecart
    L4_3 = 0
    L5_3 = Config
    L5_3 = L5_3.RockInMinecaftMinOffset
    L5_3 = L5_3.x
    L6_3 = Config
    L6_3 = L6_3.RockInMinecaftMinOffset
    L6_3 = L6_3.y
    L7_3 = Config
    L7_3 = L7_3.RockInMinecaftMinOffset
    L7_3 = L7_3.z
    L8_3 = Config
    L8_3 = L8_3.RockInMinecaftRotation
    L8_3 = L8_3.x
    L9_3 = Config
    L9_3 = L9_3.RockInMinecaftRotation
    L9_3 = L9_3.y
    L10_3 = Config
    L10_3 = L10_3.RockInMinecaftRotation
    L10_3 = L10_3.z
    L11_3 = true
    L12_3 = true
    L13_3 = true
    L14_3 = false
    L15_3 = 2
    L16_3 = true
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
  end
  L10_2 = L6_2
  L11_2 = false
  L12_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = L11_1
  L7_2[A0_2] = L3_2
  L7_2 = L12_1
  L8_2 = {}
  L9_2 = {}
  L9_2[1] = true
  L8_2.rails = L9_2
  L9_2 = {}
  L8_2.lights = L9_2
  L9_2 = {}
  L8_2.supports = L9_2
  L7_2[A0_2] = L8_2
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  L8_2 = 5000
  while true do
    L9_2 = L2_1
    if nil ~= L9_2 then
      break
    end
    L9_2 = Citizen
    L9_2 = L9_2.Wait
    L10_2 = 100
    L9_2(L10_2)
    L9_2 = GetGameTimer
    L9_2 = L9_2()
    L9_2 = L9_2 - L7_2
    if L8_2 <= L9_2 then
      break
    end
  end
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "17mov_Miner:MineshaftCreated"
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = 0
  L4_1 = L3_2
  while true do
    L3_2 = NetworkDoesNetworkIdExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    L4_2 = 1500
    if L3_2 > L4_2 then
      L3_2 = Functions
      L3_2 = L3_2.Error
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "Cloudn't find wall with NetId: %s"
      L6_2 = A0_2
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2, L6_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
    L3_2 = Wait
    L4_2 = 100
    L3_2(L4_2)
  end
  while true do
    L3_2 = L4_1
    if 0 ~= L3_2 then
      L3_2 = L4_1
      if L3_2 ~= A0_2 then
        break
      end
    end
    L3_2 = NetToObj
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_1 = L3_2
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    L4_2 = 1500
    if L3_2 > L4_2 then
      L3_2 = Functions
      L3_2 = L3_2.Error
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "Cloudn't get entity with NetId: %s"
      L6_2 = A0_2
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2, L6_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
    L3_2 = L4_1
    if 0 ~= L3_2 then
      L3_2 = L4_1
      if L3_2 ~= A0_2 then
        goto lbl_63
      end
    end
    L3_2 = Wait
    L4_2 = 100
    L3_2(L4_2)
    ::lbl_63::
  end
  L2_1 = A1_2
  L3_2 = Config
  L3_2 = L3_2.Mineshatfs
  L3_2 = L3_2[A1_2]
  L4_2 = SetEntityRotation
  L5_2 = L4_1
  L6_2 = L3_2.wallRotation
  L6_2 = L6_2.x
  L7_2 = L3_2.wallRotation
  L7_2 = L7_2.y
  L8_2 = L3_2.wallRotation
  L8_2 = L8_2.z
  L9_2 = 2
  L10_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = SpawnPropsStack
  L4_2()
  while true do
    L4_2 = OnDuty
    if not L4_2 then
      break
    end
    L4_2 = 1000
    L5_2 = PlayerPedId
    L5_2 = L5_2()
    L6_2 = GetEntityCoords
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = GetEntityCoords
    L8_2 = L4_1
    L7_2 = L7_2(L8_2)
    L8_2 = L6_2 - L7_2
    L8_2 = #L8_2
    if L8_2 < 10.0 then
      L9_2 = AlreadyMining
      if not L9_2 then
        L9_2 = L3_1
        if not L9_2 then
          L4_2 = 0
          L9_2 = DrawText3Ds
          L10_2 = L7_2.x
          L11_2 = L7_2.y
          L12_2 = L7_2.z
          L12_2 = L12_2 - 1.0
          L13_2 = Config
          L13_2 = L13_2.Lang
          L13_2 = L13_2.startMining
          L9_2(L10_2, L11_2, L12_2, L13_2)
          if L8_2 < 3.0 then
            L9_2 = DisableControlAction
            L10_2 = 0
            L11_2 = 24
            L12_2 = true
            L9_2(L10_2, L11_2, L12_2)
            L9_2 = IsControlJustReleased
            L10_2 = 0
            L11_2 = 38
            L9_2 = L9_2(L10_2, L11_2)
            if L9_2 then
              L9_2 = Functions
              L9_2 = L9_2.TriggerServerCallback
              L10_2 = "17mov_Miner:CheckIfMiningPossible"
              function L11_2(A0_3)
                local L1_3, L2_3
                if A0_3 then
                  L1_3 = L5_1
                  if nil ~= L1_3 then
                    L1_3 = L5_1.rails
                    if nil ~= L1_3 then
                      L1_3 = L5_1.rails
                      L1_3 = #L1_3
                      if L1_3 > 0 then
                        goto lbl_21
                      end
                    end
                  end
                  L1_3 = L5_1.supports
                  L1_3 = #L1_3
                  if not (L1_3 > 0) then
                    L1_3 = L5_1.lights
                    L1_3 = #L1_3
                    if not (L1_3 > 0) then
                      goto lbl_27
                    end
                  end
                  ::lbl_21::
                  L1_3 = Notify
                  L2_3 = Config
                  L2_3 = L2_3.Lang
                  L2_3 = L2_3.firstFinishBuilding
                  L1_3(L2_3)
                  goto lbl_30
                  ::lbl_27::
                  L1_3 = MiningAnimation
                  L2_3 = L4_1
                  L1_3(L2_3)
                end
                ::lbl_30::
              end
              L9_2(L10_2, L11_2)
            end
          end
        end
      end
    end
    L9_2 = Wait
    L10_2 = L4_2
    L9_2(L10_2)
  end
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "17mov_Miner:UpdateEntites"
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L2_2 = L2_1
  if L2_2 then
    L3_2 = L2_1
    L2_2 = L11_1
    L2_2 = L2_2[L3_2]
    if nil ~= L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L3_2 = L2_1
    L2_2 = L12_1
    L2_2 = L2_2[L3_2]
  end
  L3_2 = {}
  L4_2 = {}
  L3_2.rails = L4_2
  L4_2 = {}
  L3_2.supports = L4_2
  L4_2 = {}
  L3_2.lights = L4_2
  L5_2 = L2_1
  L4_2 = L11_1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.rails
  if L4_2 then
    L4_2 = 1
    L6_2 = L2_1
    L5_2 = L11_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.rails
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = false
      L9_2 = pairs
      L10_2 = L2_2.rails
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      for L13_2 in L9_2, L10_2, L11_2, L12_2 do
        if L13_2 == L7_2 then
          L8_2 = true
        end
      end
      L9_2 = SetEntityVisible
      L11_2 = L2_1
      L10_2 = L11_1
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.rails
      L10_2 = L10_2[L7_2]
      L11_2 = L8_2
      L12_2 = false
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = FreezeEntityPosition
      L11_2 = L2_1
      L10_2 = L11_1
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.rails
      L10_2 = L10_2[L7_2]
      L11_2 = true
      L9_2(L10_2, L11_2)
      if not L8_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L3_2.rails
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  L5_2 = L2_1
  L4_2 = L11_1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.supports
  if L4_2 then
    L4_2 = 1
    L6_2 = L2_1
    L5_2 = L11_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.supports
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = pairs
      L10_2 = L2_1
      L9_2 = L11_1
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.supports
      L9_2 = L9_2[L7_2]
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = FreezeEntityPosition
        L15_2 = L13_2
        L16_2 = true
        L14_2(L15_2, L16_2)
        L14_2 = L2_2.supports
        L14_2 = L14_2[L7_2]
        if L14_2 then
          L14_2 = L2_2.supports
          L14_2 = L14_2[L7_2]
          L14_2 = L14_2[L12_2]
          if L14_2 then
            L14_2 = SetEntityVisible
            L15_2 = L13_2
            L16_2 = true
            L17_2 = false
            L14_2(L15_2, L16_2, L17_2)
        end
        else
          L14_2 = SetEntityVisible
          L15_2 = L13_2
          L16_2 = false
          L17_2 = false
          L14_2(L15_2, L16_2, L17_2)
          L14_2 = L3_2.supports
          L14_2 = L14_2[L7_2]
          if not L14_2 then
            L14_2 = L3_2.supports
            L15_2 = {}
            L14_2[L7_2] = L15_2
          end
          L14_2 = table
          L14_2 = L14_2.insert
          L15_2 = L3_2.supports
          L15_2 = L15_2[L7_2]
          L16_2 = L12_2
          L14_2(L15_2, L16_2)
        end
      end
    end
  end
  L5_2 = L2_1
  L4_2 = L11_1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.lights
  if L4_2 then
    L4_2 = 1
    L6_2 = L2_1
    L5_2 = L11_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.lights
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = false
      L9_2 = pairs
      L10_2 = L2_2.lights
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      for L13_2 in L9_2, L10_2, L11_2, L12_2 do
        if L13_2 == L7_2 then
          L8_2 = true
        end
      end
      L9_2 = SetEntityVisible
      L11_2 = L2_1
      L10_2 = L11_1
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.lights
      L10_2 = L10_2[L7_2]
      L11_2 = L8_2
      L12_2 = false
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = FreezeEntityPosition
      L11_2 = L2_1
      L10_2 = L11_1
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.lights
      L10_2 = L10_2[L7_2]
      L11_2 = true
      L9_2(L10_2, L11_2)
      if not L8_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L3_2.lights
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  L4_2 = Config
  L4_2 = L4_2.Mineshatfs
  L5_2 = L2_1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.forwardVector
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = GetEntityCoords
    L6_2 = L4_1
    L5_2 = L5_2(L6_2)
  end
  L6_2 = {}
  L7_2 = {}
  L6_2.rails = L7_2
  L7_2 = {}
  L6_2.lights = L7_2
  L7_2 = {}
  L6_2.supports = L7_2
  L5_1 = L6_2
  L6_2 = {}
  L7_2 = pairs
  L8_2 = L3_2.supports
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2 in L7_2, L8_2, L9_2, L10_2 do
    L12_2 = {}
    L13_2 = pairs
    L14_2 = L3_2.supports
    L14_2 = L14_2[L11_2]
    L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
    for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
      if "SupportPillarLeft" == L18_2 or "SupportPillarRight" == L18_2 then
        L19_2 = table
        L19_2 = L19_2.insert
        L20_2 = L12_2
        L21_2 = L18_2
        L19_2(L20_2, L21_2)
      elseif "SupportConnectorLeft" == L18_2 then
        L19_2 = true
        L20_2 = pairs
        L21_2 = L3_2.supports
        L21_2 = L21_2[L11_2]
        L20_2, L21_2, L22_2, L23_2 = L20_2(L21_2)
        for L24_2, L25_2 in L20_2, L21_2, L22_2, L23_2 do
          if "SupportPillarLeft" == L25_2 then
            L19_2 = false
          end
        end
        if L19_2 then
          L20_2 = table
          L20_2 = L20_2.insert
          L21_2 = L12_2
          L22_2 = L18_2
          L20_2(L21_2, L22_2)
        end
      elseif "SupportConnectorRight" == L18_2 then
        L19_2 = true
        L20_2 = pairs
        L21_2 = L3_2.supports
        L21_2 = L21_2[L11_2]
        L20_2, L21_2, L22_2, L23_2 = L20_2(L21_2)
        for L24_2, L25_2 in L20_2, L21_2, L22_2, L23_2 do
          if "SupportPillarRight" == L25_2 then
            L19_2 = false
          end
        end
        if L19_2 then
          L20_2 = table
          L20_2 = L20_2.insert
          L21_2 = L12_2
          L22_2 = L18_2
          L20_2(L21_2, L22_2)
        end
      elseif "SupportLintel" == L18_2 then
        L19_2 = true
        L20_2 = pairs
        L21_2 = L3_2.supports
        L21_2 = L21_2[L11_2]
        L20_2, L21_2, L22_2, L23_2 = L20_2(L21_2)
        for L24_2, L25_2 in L20_2, L21_2, L22_2, L23_2 do
          if "SupportConnectorLeft" == L25_2 or "SupportConnectorRight" == L25_2 then
            L19_2 = false
          end
        end
        if L19_2 then
          L20_2 = table
          L20_2 = L20_2.insert
          L21_2 = L12_2
          L22_2 = L18_2
          L20_2(L21_2, L22_2)
        end
      end
    end
    L13_2 = pairs
    L14_2 = L12_2
    L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
    for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
      L20_2 = L2_1
      L19_2 = L11_1
      L19_2 = L19_2[L20_2]
      L19_2 = L19_2.supports
      L19_2 = L19_2[L11_2]
      L19_2 = L19_2[L18_2]
      if L19_2 then
        L20_2 = DoesEntityExist
        L21_2 = L19_2
        L20_2 = L20_2(L21_2)
        if L20_2 then
          L20_2 = GetEntityCoords
          L21_2 = L19_2
          L20_2 = L20_2(L21_2)
          L21_2 = L5_2 - L20_2
          L22_2 = Functions
          L22_2 = L22_2.DotProduct
          L23_2 = L21_2
          L24_2 = L4_2
          L22_2 = L22_2(L23_2, L24_2)
          L23_2 = 1.5
          if L22_2 > L23_2 then
            L23_2 = table
            L23_2 = L23_2.insert
            L24_2 = L5_1.supports
            L25_2 = L19_2
            L23_2(L24_2, L25_2)
            L6_2[L11_2] = true
          else
            L6_2[L11_2] = false
          end
        end
      end
    end
  end
  L7_2 = pairs
  L8_2 = L3_2.rails
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L14_2 = L2_1
    L13_2 = L11_1
    L13_2 = L13_2[L14_2]
    L13_2 = L13_2.rails
    L13_2 = L13_2[L12_2]
    if L13_2 then
      L14_2 = DoesEntityExist
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if L14_2 then
        L14_2 = GetEntityCoords
        L15_2 = L13_2
        L14_2 = L14_2(L15_2)
        L15_2 = L5_2 - L14_2
        L16_2 = Functions
        L16_2 = L16_2.DotProduct
        L17_2 = L15_2
        L18_2 = L4_2
        L16_2 = L16_2(L17_2, L18_2)
        L17_2 = 3.5
        if not (L16_2 > L17_2) then
          L17_2 = L12_2 - 1
          L17_2 = L6_2[L17_2]
          if true ~= L17_2 then
            L17_2 = L6_2[L12_2]
            if true ~= L17_2 then
              goto lbl_391
            end
          end
        end
        L17_2 = table
        L17_2 = L17_2.insert
        L18_2 = L5_1.rails
        L19_2 = L13_2
        L17_2(L18_2, L19_2)
      end
    end
    ::lbl_391::
  end
  L7_2 = pairs
  L8_2 = L3_2.lights
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L14_2 = L2_1
    L13_2 = L11_1
    L13_2 = L13_2[L14_2]
    L13_2 = L13_2.lights
    L13_2 = L13_2[L12_2]
    if L13_2 then
      L14_2 = DoesEntityExist
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if L14_2 then
        L14_2 = GetEntityCoords
        L15_2 = L13_2
        L14_2 = L14_2(L15_2)
        L15_2 = L5_2 - L14_2
        L16_2 = Functions
        L16_2 = L16_2.DotProduct
        L17_2 = L15_2
        L18_2 = L4_2
        L16_2 = L16_2(L17_2, L18_2)
        L17_2 = 1.5
        if L16_2 > L17_2 then
          L17_2 = L3_2.supports
          L17_2 = L17_2[L12_2]
          if not L17_2 then
            L17_2 = table
            L17_2 = L17_2.insert
            L18_2 = L5_1.lights
            L19_2 = L13_2
            L17_2(L18_2, L19_2)
          end
        end
      end
    end
  end
  L7_2 = false
  L8_2 = {}
  L9_2 = pairs
  L10_2 = L5_1
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = 1
    L16_2 = #L14_2
    L17_2 = 1
    for L18_2 = L15_2, L16_2, L17_2 do
      L7_2 = true
      L19_2 = SetEntityDrawOutlineShader
      L20_2 = 1
      L19_2(L20_2)
      L19_2 = SetEntityDrawOutlineColor
      L20_2 = Config
      L20_2 = L20_2.MarkerSettings
      L20_2 = L20_2.UnActive
      L20_2 = L20_2.r
      L21_2 = Config
      L21_2 = L21_2.MarkerSettings
      L21_2 = L21_2.UnActive
      L21_2 = L21_2.g
      L22_2 = Config
      L22_2 = L22_2.MarkerSettings
      L22_2 = L22_2.UnActive
      L22_2 = L22_2.b
      L23_2 = Config
      L23_2 = L23_2.MarkerSettings
      L23_2 = L23_2.UnActive
      L23_2 = L23_2.a
      L19_2(L20_2, L21_2, L22_2, L23_2)
      L19_2 = SetEntityVisible
      L20_2 = L14_2[L18_2]
      L21_2 = true
      L22_2 = true
      L19_2(L20_2, L21_2, L22_2)
      L19_2 = SetEntityDrawOutline
      L20_2 = L14_2[L18_2]
      L21_2 = true
      L19_2(L20_2, L21_2)
      L19_2 = SetEntityVisible
      L20_2 = L14_2[L18_2]
      L21_2 = false
      L22_2 = false
      L19_2(L20_2, L21_2, L22_2)
      L19_2 = L14_2[L18_2]
      L8_2[L19_2] = true
      L19_2 = AlreadyMining
      if L19_2 then
        AlreadyMining = false
      end
      L19_2 = Citizen
      L19_2 = L19_2.Wait
      L20_2 = 0
      L19_2(L20_2)
    end
  end
  L9_2 = pairs
  L11_2 = L2_1
  L10_2 = L11_1
  L10_2 = L10_2[L11_2]
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = type
    L16_2 = L14_2
    L15_2 = L15_2(L16_2)
    if "table" == L15_2 then
      L15_2 = 1
      L16_2 = #L14_2
      L17_2 = 1
      for L18_2 = L15_2, L16_2, L17_2 do
        L19_2 = type
        L20_2 = L14_2[L18_2]
        L19_2 = L19_2(L20_2)
        if "table" == L19_2 then
          L19_2 = pairs
          L20_2 = L14_2[L18_2]
          L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2)
          for L23_2, L24_2 in L19_2, L20_2, L21_2, L22_2 do
            L25_2 = L8_2[L24_2]
            if not L25_2 then
              L25_2 = SetEntityDrawOutline
              L26_2 = L24_2
              L27_2 = false
              L25_2(L26_2, L27_2)
            end
          end
        else
          L19_2 = L14_2[L18_2]
          L19_2 = L8_2[L19_2]
          if not L19_2 then
            L19_2 = SetEntityDrawOutline
            L20_2 = L14_2[L18_2]
            L21_2 = false
            L19_2(L20_2, L21_2)
          end
        end
      end
    end
  end
  if L7_2 then
    L9_2 = L23_1
    if not L9_2 then
      L9_2 = true
      L23_1 = L9_2
      L9_2 = GetResourceKvpInt
      L10_2 = "17mov_Tutorials:"
      L11_2 = Config
      L11_2 = L11_2.Lang
      L11_2 = L11_2.buildingTutorial
      L10_2 = L10_2 .. L11_2
      L9_2 = L9_2(L10_2)
      if 0 == L9_2 then
        L9_2 = Config
        L9_2 = L9_2.Lang
        L9_2 = L9_2.buildingTutorial
        L22_1 = L9_2
        L9_2 = SendNUIMessage
        L10_2 = {}
        L10_2.action = "showTutorial"
        L11_2 = Config
        L11_2 = L11_2.Lang
        L11_2 = L11_2.buildingTutorial
        L10_2.customText = L11_2
        L9_2(L10_2)
        L9_2 = true
        L21_1 = L9_2
        L9_2 = CreateThread
        function L10_2()
          local L0_3, L1_3, L2_3, L3_3
          while true do
            L0_3 = L21_1
            if not L0_3 then
              break
            end
            L0_3 = Wait
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
end
L36_1(L37_1, L38_1)
L36_1 = false
L37_1 = nil
L38_1 = nil
L39_1 = 0
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_Miner:StartedMining"
  L1_2(L2_2)
  L1_2 = "melee@large_wpn@streamed_core"
  L2_2 = "ground_attack_on_spot"
  L3_2 = "dodge_generic_centre"
  L4_2 = nil
  L5_2 = false
  AlreadyMining = true
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = GetEntityCoords
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = L7_2
  L9_2 = Functions
  L9_2 = L9_2.SpawnObject
  L10_2 = 260873931
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L4_2 = A0_3
    L1_3 = AttachEntityToEntity
    L2_3 = L4_2
    L3_3 = L6_2
    L4_3 = GetPedBoneIndex
    L5_3 = L6_2
    L6_3 = 57005
    L4_3 = L4_3(L5_3, L6_3)
    L5_3 = 0.1
    L6_3 = -0.1
    L7_3 = -0.02
    L8_3 = 90.0
    L9_3 = 0.0
    L10_3 = 180.0
    L11_3 = true
    L12_3 = true
    L13_3 = false
    L14_3 = true
    L15_3 = 1
    L16_3 = true
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
  end
  L12_2 = GetEntityCoords
  L13_2 = L6_2
  L12_2 = L12_2(L13_2)
  L13_2 = true
  L14_2 = true
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = L37_1
  if nil ~= L9_2 then
    L9_2 = DoesEntityExist
    L10_2 = L37_1
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = DeleteEntity
      L10_2 = L37_1
      L9_2(L10_2)
    end
  end
  L9_2 = GetEntityCoords
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  L10_2 = GetEntityCoords
  L11_2 = L6_2
  L10_2 = L10_2(L11_2)
  L11_2 = GetEntityForwardVector
  L12_2 = L6_2
  L11_2 = L11_2(L12_2)
  L12_2 = Functions
  L12_2 = L12_2.NormalizeVector3
  L13_2 = L9_2 - L10_2
  L12_2 = L12_2(L13_2)
  L13_2 = Functions
  L13_2 = L13_2.DotProduct
  L14_2 = L11_2
  L15_2 = L12_2
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = -1.5
  L15_2 = GetEntityCoords
  L16_2 = L6_2
  L15_2 = L15_2(L16_2)
  L16_2 = GetOffsetFromEntityGivenWorldCoords
  L17_2 = L4_1
  L18_2 = L15_2.x
  L19_2 = L15_2.y
  L20_2 = L15_2.z
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
  L17_2 = GetOffsetFromEntityInWorldCoords
  L18_2 = L4_1
  L19_2 = L16_2.x
  L20_2 = L14_2
  L21_2 = L16_2.z
  L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
  L18_2 = SetEntityCoords
  L19_2 = L6_2
  L20_2 = L17_2.x
  L21_2 = L17_2.y
  L22_2 = L10_2.z
  L22_2 = L22_2 - 1.0
  L23_2 = true
  L24_2 = false
  L25_2 = false
  L26_2 = false
  L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  if not (L13_2 > 1.0) then
    L18_2 = 0.3
    if not (L13_2 < L18_2) then
      goto lbl_97
    end
  end
  L18_2 = TaskTurnPedToFaceEntity
  L19_2 = L6_2
  L20_2 = A0_2
  L21_2 = 1500
  L18_2(L19_2, L20_2, L21_2)
  L18_2 = Wait
  L19_2 = 1500
  L18_2(L19_2)
  ::lbl_97::
  L18_2 = Functions
  L18_2 = L18_2.RequestAnimDict
  L19_2 = L1_2
  L18_2(L19_2)
  L18_2 = SpawnPropAtRaycastWall
  L18_2()
  L18_2 = SendNUIMessage
  L19_2 = {}
  L19_2.action = "showCrosshair"
  L18_2(L19_2)
  L18_2 = CreateThread
  function L19_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = AlreadyMining
      if not L0_3 then
        break
      end
      L0_3 = IsDisabledControlPressed
      L1_3 = 0
      L2_3 = 18
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = L36_1
        if not L0_3 then
          L0_3 = true
          L36_1 = L0_3
          L0_3 = L39_1
          L0_3 = L0_3 + 1
          L39_1 = L0_3
          L0_3 = ClearPedTasks
          L1_3 = L6_2
          L0_3(L1_3)
          L0_3 = TaskPlayAnim
          L1_3 = L6_2
          L2_3 = L1_2
          L3_3 = L2_2
          L4_3 = 8.0
          L5_3 = 8.0
          L6_3 = -1
          L7_3 = 48
          L8_3 = 0
          L9_3 = false
          L10_3 = false
          L11_3 = false
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          L0_3 = Wait
          L1_3 = 850
          L0_3(L1_3)
          L0_3 = L37_1
          if nil ~= L0_3 then
            L0_3 = DoesEntityExist
            L1_3 = L37_1
            L0_3 = L0_3(L1_3)
            if L0_3 then
              L0_3 = DeleteEntity
              L1_3 = L37_1
              L0_3(L1_3)
            end
          end
          L0_3 = L5_2
          if L0_3 then
            L0_3 = Functions
            L0_3 = L0_3.PlaySound
            L1_3 = "bonus"
            L2_3 = Config
            L2_3 = L2_3.SoundVolumeMultipler
            L0_3(L1_3, L2_3)
          end
          L0_3 = AlreadyMining
          if L0_3 then
            L0_3 = TriggerServerEvent
            L1_3 = "17mov_Miner:WallHit"
            L2_3 = L5_2
            L0_3(L1_3, L2_3)
          end
          L0_3 = Wait
          L1_3 = 100
          L0_3(L1_3)
          L0_3 = GetEntityCoords
          L1_3 = L6_2
          L0_3 = L0_3(L1_3)
          L1_3 = GetOffsetFromEntityGivenWorldCoords
          L2_3 = L4_1
          L3_3 = L0_3.x
          L4_3 = L0_3.y
          L5_3 = L0_3.z
          L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
          L2_3 = GetOffsetFromEntityInWorldCoords
          L3_3 = L4_1
          L4_3 = L1_3.x
          L5_3 = L14_2
          L6_3 = L1_3.z
          L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
          L3_3 = SetEntityCoords
          L4_3 = L6_2
          L5_3 = L2_3.x
          L6_3 = L2_3.y
          L7_3 = L10_2.z
          L7_3 = L7_3 - 1.0
          L8_3 = true
          L9_3 = true
          L10_3 = false
          L11_3 = false
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          L3_3 = SpawnPropAtRaycastWall
          L3_3()
          L3_3 = Wait
          L4_3 = GetAnimDuration
          L5_3 = L1_2
          L6_3 = L2_2
          L4_3 = L4_3(L5_3, L6_3)
          L4_3 = L4_3 * 1000
          L4_3 = L4_3 - 1650
          L3_3(L4_3)
          L3_3 = false
          L36_1 = L3_3
        end
      end
      L0_3 = SetCurrentPedWeapon
      L1_3 = L6_2
      L2_3 = -1569615261
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisablePlayerFiring
      L1_3 = L6_2
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L18_2(L19_2)
  L18_2 = CreateThread
  function L19_2()
    local L0_3, L1_3
    while true do
      L0_3 = AlreadyMining
      if not L0_3 then
        break
      end
      L0_3 = TriggerServerEvent
      L1_3 = "17mov_Miner:StartedMining"
      L0_3(L1_3)
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 2500
      L0_3(L1_3)
    end
  end
  L18_2(L19_2)
  while true do
    L18_2 = AlreadyMining
    if not L18_2 then
      break
    end
    L18_2 = PlayerPedId
    L18_2 = L18_2()
    L19_2 = ShowHelpNotification
    L20_2 = Config
    L20_2 = L20_2.Lang
    L20_2 = L20_2.mouseForMine
    L19_2(L20_2)
    L19_2 = GetEntityHeading
    L20_2 = L18_2
    L19_2 = L19_2(L20_2)
    L20_2 = GetEntityHeading
    L21_2 = L4_1
    L20_2 = L20_2(L21_2)
    L21_2 = math
    L21_2 = L21_2.abs
    L22_2 = L19_2 - L20_2
    L21_2 = L21_2(L22_2)
    L21_2 = L21_2 % 360
    L22_2 = 180
    if L21_2 > L22_2 then
      L22_2 = 360
      L22_2 = L22_2 - L21_2
      L21_2 = L22_2 or L21_2
      if not L22_2 then
      end
    end
    if L21_2 > 120 then
      AlreadyMining = false
    end
    L22_2 = GetEntityCoords
    L23_2 = L18_2
    L22_2 = L22_2(L23_2)
    L7_2 = L22_2
    if L8_2 then
      L22_2 = L7_2 - L8_2
      L22_2 = #L22_2
      L23_2 = 0.2
      if L22_2 > L23_2 then
        goto lbl_171
      end
    end
    L22_2 = L37_1
    if nil ~= L22_2 then
      L22_2 = GetEntityCoords
      L23_2 = L37_1
      L22_2 = L22_2(L23_2)
      L22_2 = L22_2 - L7_2
      L22_2 = #L22_2
      ::lbl_171::
      if L22_2 > 2.0 then
        L8_2 = L7_2
      end
    end
    L22_2 = GetEntityCoords
    L23_2 = A0_2
    L22_2 = L22_2(L23_2)
    L23_2 = GetEntityCoords
    L24_2 = L18_2
    L23_2 = L23_2(L24_2)
    L23_2 = L23_2 - L22_2
    L23_2 = #L23_2
    if L23_2 > 5.0 then
      AlreadyMining = false
    end
    L24_2 = IsEntityPlayingAnim
    L25_2 = L18_2
    L26_2 = L1_2
    L27_2 = L3_2
    L28_2 = 3
    L24_2 = L24_2(L25_2, L26_2, L27_2, L28_2)
    if not L24_2 then
      L24_2 = L36_1
      if not L24_2 then
        L24_2 = TaskPlayAnim
        L25_2 = L18_2
        L26_2 = L1_2
        L27_2 = L3_2
        L28_2 = 8.0
        L29_2 = 8.0
        L30_2 = -1
        L31_2 = 48
        L32_2 = 0
        L33_2 = false
        L34_2 = false
        L35_2 = false
        L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
      end
    end
    L24_2 = CheckIfPlayerAimingAtHint
    L25_2 = A0_2
    L24_2 = L24_2(L25_2)
    L5_2 = L24_2
    L24_2 = DisableControlAction
    L25_2 = 0
    L26_2 = 24
    L27_2 = true
    L24_2(L25_2, L26_2, L27_2)
    L24_2 = Wait
    L25_2 = 0
    L24_2(L25_2)
  end
  L18_2 = Functions
  L18_2 = L18_2.DeleteEntity
  L19_2 = L4_2
  L18_2(L19_2)
  L18_2 = ClearPedTasks
  L19_2 = PlayerPedId
  L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L19_2()
  L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
  L18_2 = SendNUIMessage
  L19_2 = {}
  L19_2.action = "hideCrosshair"
  L18_2(L19_2)
  L18_2 = L37_1
  if nil ~= L18_2 then
    L18_2 = DoesEntityExist
    L19_2 = L37_1
    L18_2 = L18_2(L19_2)
    if L18_2 then
      L18_2 = DeleteEntity
      L19_2 = L37_1
      L18_2(L19_2)
    end
  end
  L18_2 = TriggerServerEvent
  L19_2 = "17mov_Miner:MiningStop"
  L18_2(L19_2)
end
MiningAnimation = L40_1
function L40_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = 10
  L1_2 = 0
  L2_2 = false
  L3_2 = vec3
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = GetEntityCoords
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = GetOffsetFromEntityGivenWorldCoords
  L6_2 = L4_1
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L4_2.z
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L5_2.x
  L7_2 = -0.15
  L8_2 = -1.65
  if L6_2 < L8_2 then
    L6_2 = -1.65
  end
  L8_2 = 1.9
  if L6_2 > L8_2 then
    L6_2 = 1.9
  end
  while not L2_2 and L0_2 > L1_2 do
    L8_2 = Functions
    L8_2 = L8_2.randomFloat
    L9_2 = -0.5
    L10_2 = 0.5
    L8_2 = L8_2(L9_2, L10_2)
    L8_2 = L6_2 + L8_2
    L9_2 = Functions
    L9_2 = L9_2.randomFloat
    L10_2 = -0.6
    L11_2 = -1.8
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = 2.4
    if L8_2 < L10_2 then
      L10_2 = -2.15
      if L8_2 > L10_2 then
        L1_2 = L1_2 + 1
        L10_2 = GetOffsetFromEntityInWorldCoords
        L11_2 = L4_1
        L12_2 = L8_2
        L13_2 = L7_2
        L14_2 = L9_2
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
        L3_2 = L10_2
        L10_2 = L38_1
        if nil ~= L10_2 then
          L10_2 = L38_1
          L10_2 = L3_2 - L10_2
          L10_2 = #L10_2
          L11_2 = 0.75
          if not (L10_2 >= L11_2) then
            goto lbl_71
          end
        end
        L2_2 = true
      end
    end
    ::lbl_71::
    L10_2 = Wait
    L11_2 = 0
    L10_2(L11_2)
  end
  L8_2 = Functions
  L8_2 = L8_2.SpawnObject
  L9_2 = 921401054
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L37_1 = A0_3
    L1_3 = GetEntityRotation
    L2_3 = PlayerPedId
    L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L2_3()
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L2_3 = SetEntityRotation
    L3_3 = L37_1
    L4_3 = L1_3.x
    L5_3 = L1_3.y
    L6_3 = L1_3.z
    L7_3 = 0
    L8_3 = false
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L2_3 = SetEntityVisible
    L3_3 = A0_3
    L4_3 = false
    L5_3 = false
    L2_3(L3_3, L4_3, L5_3)
  end
  L11_2 = L3_2
  L12_2 = false
  L13_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L38_1 = L3_2
end
SpawnPropAtRaycastWall = L40_1
L40_1 = Functions
L40_1 = L40_1.DeepCopy
L41_1 = Config
L41_1 = L41_1.MiningHintColor
L40_1 = L40_1(L41_1)
L41_1 = 0.1
function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L1_2 = false
  L2_2 = L37_1
  if nil ~= L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = L37_1
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = GetGameplayCamCoord
      L3_2 = L3_2()
      L4_2 = Functions
      L4_2 = L4_2.RotationToDirection
      L5_2 = GetGameplayCamRot
      L6_2 = 2
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L5_2(L6_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L5_2 = L3_2
      L6_2 = L4_2 * 1000.0
      L6_2 = L5_2 + L6_2
      L7_2 = StartShapeTestRay
      L8_2 = L5_2.x
      L9_2 = L5_2.y
      L10_2 = L5_2.z
      L11_2 = L6_2.x
      L12_2 = L6_2.y
      L13_2 = L6_2.z
      L14_2 = 4294967295
      L15_2 = L2_2
      L16_2 = 0
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L8_2 = GetShapeTestResult
      L9_2 = L7_2
      L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
      L13_2 = L40_1
      L14_2 = 0.1
      L15_2 = L37_1
      if L12_2 == L15_2 then
        L1_2 = true
        L15_2 = Config
        L15_2 = L15_2.MarkerSettings
        L13_2 = L15_2.Active
        L13_2.a = 0.9
        L14_2 = 0.12
      elseif L12_2 == A0_2 then
        L15_2 = Config
        L13_2 = L15_2.MiningHintColor
      end
      L15_2 = math
      L15_2 = L15_2.floor
      L16_2 = Functions
      L16_2 = L16_2.Lerp
      L17_2 = L40_1.r
      L18_2 = L13_2.r
      L19_2 = 0.2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L16_2 = L16_2 + 0.5
      L15_2 = L15_2(L16_2)
      L40_1.r = L15_2
      L15_2 = math
      L15_2 = L15_2.floor
      L16_2 = Functions
      L16_2 = L16_2.Lerp
      L17_2 = L40_1.g
      L18_2 = L13_2.g
      L19_2 = 0.2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L16_2 = L16_2 + 0.5
      L15_2 = L15_2(L16_2)
      L40_1.g = L15_2
      L15_2 = math
      L15_2 = L15_2.floor
      L16_2 = Functions
      L16_2 = L16_2.Lerp
      L17_2 = L40_1.b
      L18_2 = L13_2.b
      L19_2 = 0.2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L16_2 = L16_2 + 0.5
      L15_2 = L15_2(L16_2)
      L40_1.b = L15_2
      L15_2 = Functions
      L15_2 = L15_2.Lerp
      L16_2 = L40_1.a
      L17_2 = L13_2.a
      L18_2 = 0.1
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L40_1.a = L15_2
      L15_2 = Functions
      L15_2 = L15_2.Lerp
      L16_2 = L41_1
      L17_2 = L14_2
      L18_2 = 0.1
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L41_1 = L15_2
      L15_2 = GetEntityRotation
      L16_2 = A0_2
      L15_2 = L15_2(L16_2)
      L16_2 = SetEntityRotation
      L17_2 = L37_1
      L18_2 = L15_2.x
      L19_2 = L15_2.y
      L20_2 = L15_2.z
      L21_2 = 0
      L22_2 = false
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L16_2 = DrawSphere
      L17_2 = L38_1.x
      L18_2 = L38_1.y
      L19_2 = L38_1.z
      L20_2 = L41_1
      L21_2 = L40_1.r
      L22_2 = L40_1.g
      L23_2 = L40_1.b
      L24_2 = L40_1.a
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    end
  end
  return L1_2
end
CheckIfPlayerAimingAtHint = L42_1
function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.Props
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = 0
    if "Rails" == L4_2 then
      L7_2 = Config
      L7_2 = L7_2.Mineshatfs
      L8_2 = L2_1
      L7_2 = L7_2[L8_2]
      L6_2 = L7_2.railsQuantity
    elseif "Lights" == L4_2 then
      L7_2 = Config
      L7_2 = L7_2.Mineshatfs
      L8_2 = L2_1
      L7_2 = L7_2[L8_2]
      L6_2 = L7_2.lightsQuantity
    else
      L7_2 = Config
      L7_2 = L7_2.Mineshatfs
      L8_2 = L2_1
      L7_2 = L7_2[L8_2]
      L6_2 = L7_2.supportsQuantity
    end
    L7_2 = L5_2.stackCoords
    if nil == L7_2 then
      L7_2 = 1
      if L7_2 then
        goto lbl_35
      end
    end
    L7_2 = 0
    ::lbl_35::
    L8_2 = L5_2.stackCoords
    L8_2 = L6_2 or L8_2
    if nil ~= L8_2 or not L6_2 then
      L8_2 = L6_2 - 1
    end
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = nil
      L12_2 = L5_2.stackCoords
      if L12_2 then
        L12_2 = L5_2.stackCoords
        L13_2 = L5_2.stackOffest
        L13_2 = L13_2 * L10_2
        L11_2 = L12_2 + L13_2
      else
        L12_2 = L5_2.stackCoordinates
        L11_2 = L12_2[L10_2]
      end
      L12_2 = Functions
      L12_2 = L12_2.SpawnObject
      L13_2 = L5_2.model
      function L14_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
        L1_3 = SetEntityRotation
        L2_3 = A0_3
        L3_3 = L5_2.stackRotation
        L3_3 = L3_3.x
        L4_3 = L5_2.stackRotation
        L4_3 = L4_3.y
        L5_3 = L5_2.stackRotation
        L5_3 = L5_3.z
        L6_3 = 0
        L7_3 = false
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        L1_3 = Entity
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        L1_3 = L1_3.state
        L2_3 = L4_2
        L1_3.objType = L2_3
        L1_3 = Entity
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        L1_3 = L1_3.state
        L2_3 = L10_2
        L1_3.objIndex = L2_3
        L1_3 = table
        L1_3 = L1_3.insert
        L3_3 = L4_2
        L2_3 = L8_1
        L2_3 = L2_3[L3_3]
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
      L15_2 = L11_2
      L16_2 = false
      L17_2 = true
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  end
end
SpawnPropsStack = L42_1
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:TeammateDead"
function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  OnDuty = false
  L0_2 = Notify
  L1_2 = Config
  L1_2 = L1_2.Lang
  L1_2 = L1_2.teammateDown
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = vector4
  L2_2 = 2428.31
  L3_2 = 1531.46
  L4_2 = -32.76
  L5_2 = 87.3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = SetEntityCoords
  L3_2 = L0_2
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = true
  L8_2 = false
  L9_2 = false
  L10_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = SetEntityHeading
  L3_2 = L0_2
  L4_2 = L1_2.w
  L2_2(L3_2, L4_2)
end
L42_1(L43_1, L44_1)
function L42_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = TriggerEvent
    L1_3 = "qb-weathersync:client:DisableSync"
    L0_3(L1_3)
    while true do
      L0_3 = L25_1
      if not L0_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = math
      L2_3 = L2_3.abs
      L3_3 = L1_3.z
      L4_3 = Config
      L4_3 = L4_3.Mineshatfs
      L4_3 = L4_3[1]
      L4_3 = L4_3.railsStart
      L4_3 = L4_3.z
      L3_3 = L3_3 - L4_3
      L2_3 = L2_3(L3_3)
      if L2_3 > 20 then
        break
      end
      L2_3 = IsDead
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L2_3 = TriggerEvent
        L3_3 = "qb-weathersync:client:EnableSync"
        L2_3(L3_3)
        L2_3 = SetArtificialLightsState
        L3_3 = false
        L2_3(L3_3)
        L2_3 = SetEntityCoords
        L3_3 = L0_3
        L4_3 = Config
        L4_3 = L4_3.DeadCoords
        L4_3 = L4_3.x
        L5_3 = Config
        L5_3 = L5_3.DeadCoords
        L5_3 = L5_3.y
        L6_3 = Config
        L6_3 = L6_3.DeadCoords
        L6_3 = L6_3.z
        L7_3 = false
        L8_3 = true
        L9_3 = false
        L10_3 = false
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L2_3 = TriggerServerEvent
        L3_3 = "17mov_Miner:ElevatorBack"
        L2_3(L3_3)
        L2_3 = TriggerServerEvent
        L3_3 = "17mov_Miner:ImDead"
        L2_3(L3_3)
        break
      end
      L2_3 = Wait
      L3_3 = 1500
      L2_3(L3_3)
    end
  end
  L0_2(L1_2)
end
CheckIsDead = L42_1
function L42_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = false
    L1_3 = -32
    while true do
      L2_3 = L26_1
      if not L2_3 then
        break
      end
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = GetEntityCoords
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = math
      L4_3 = L4_3.abs
      L5_3 = L3_3.z
      L5_3 = L1_3 - L5_3
      L4_3 = L4_3(L5_3)
      L4_3 = L4_3 < 15
      if L0_3 and not L4_3 then
        L5_3 = SetEntityCoords
        L6_3 = L2_3
        L7_3 = Config
        L7_3 = L7_3.DeadCoords
        L7_3 = L7_3.x
        L8_3 = Config
        L8_3 = L8_3.DeadCoords
        L8_3 = L8_3.y
        L9_3 = Config
        L9_3 = L9_3.DeadCoords
        L9_3 = L9_3.z
        L10_3 = false
        L11_3 = false
        L12_3 = false
        L13_3 = false
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      elseif not L0_3 and L4_3 then
        L0_3 = true
      end
      L5_3 = Wait
      L6_3 = 1500
      L5_3(L6_3)
    end
  end
  L0_2(L1_2)
end
CheckIsInMineshaft = L42_1
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = GetEntityCoords
  L4_2 = L11_1
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2.minecart
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.sqrt
  L5_2 = A0_2.x
  L6_2 = L3_2.x
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 ^ 2
  L6_2 = A0_2.y
  L7_2 = L3_2.y
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 ^ 2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.z
  L7_2 = L3_2.z
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 ^ 2
  L5_2 = L5_2 + L6_2
  L4_2 = L4_2(L5_2)
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  while L4_2 > L6_2 do
    L8_2 = GetGameTimer
    L8_2 = L8_2()
    L9_2 = L8_2 - L7_2
    L10_2 = L9_2 / 1000
    L11_2 = A1_2 * L10_2
    L6_2 = L6_2 + L11_2
    L11_2 = math
    L11_2 = L11_2.min
    L12_2 = L6_2 / L4_2
    L13_2 = 1.0
    L11_2 = L11_2(L12_2, L13_2)
    L5_2 = L11_2
    L11_2 = Functions
    L11_2 = L11_2.Lerp
    L12_2 = L3_2.x
    L13_2 = A0_2.x
    L14_2 = L5_2
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = Functions
    L12_2 = L12_2.Lerp
    L13_2 = L3_2.y
    L14_2 = A0_2.y
    L15_2 = L5_2
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = Functions
    L13_2 = L13_2.Lerp
    L14_2 = L3_2.z
    L15_2 = A0_2.z
    L16_2 = L5_2
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L14_2 = SetEntityCoords
    L15_2 = L11_1
    L15_2 = L15_2[A2_2]
    L15_2 = L15_2.minecart
    L16_2 = L11_2
    L17_2 = L12_2
    L18_2 = L13_2
    L19_2 = false
    L20_2 = false
    L21_2 = false
    L22_2 = false
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    if L4_2 <= L6_2 then
      break
    end
    L14_2 = GetGameTimer
    L14_2 = L14_2()
    L7_2 = L14_2
    L14_2 = Wait
    L15_2 = 0
    L14_2(L15_2)
  end
end
WarpMinecartTo = L42_1
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:UpdateMinecart"
function L44_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = L11_1
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.rails
  L4_2 = L4_2[A0_2]
  L5_2 = GetEntityCoords
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = Config
  L6_2 = L6_2.Mineshatfs
  L7_2 = L2_1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.forwardVector
  L7_2 = Config
  L7_2 = L7_2.MinecartForwardOffset
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 + L6_2
  L6_2 = Config
  L6_2 = L6_2.MinecartOffset
  L5_2 = L5_2 + L6_2
  if A2_2 == A3_2 then
    L6_2 = TriggerServerEvent
    L7_2 = "17mov_Miner:StartMinecartSound"
    L6_2(L7_2)
    L6_2 = false
    L7_2 = CreateThread
    function L8_2()
      local L0_3, L1_3
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 10000
      L0_3(L1_3)
      L0_3 = L6_2
      if not L0_3 then
        L0_3 = TriggerServerEvent
        L1_3 = "17mov_Miner:StopMinecartSound"
        L0_3(L1_3)
      end
    end
    L7_2(L8_2)
    L7_2 = WarpMinecartTo
    L8_2 = L5_2
    L9_2 = 1
    L10_2 = A1_2
    L7_2(L8_2, L9_2, L10_2)
    L6_2 = true
    L7_2 = TriggerServerEvent
    L8_2 = "17mov_Miner:StopMinecartSound"
    L7_2(L8_2)
  else
    L6_2 = WarpMinecartTo
    L7_2 = L5_2
    L8_2 = 1
    L9_2 = A1_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L42_1(L43_1, L44_1)
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:UpdateMinecartContent"
function L44_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  A0_2 = A0_2 / 100
  if A0_2 > 1 then
    A0_2 = 1
  end
  L3_2 = Functions
  L3_2 = L3_2.Lerp
  L4_2 = Config
  L4_2 = L4_2.RockInMinecaftMinOffset
  L4_2 = L4_2.x
  L5_2 = Config
  L5_2 = L5_2.RockInMinecaftMaxOffset
  L5_2 = L5_2.x
  L6_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = Functions
  L4_2 = L4_2.Lerp
  L5_2 = Config
  L5_2 = L5_2.RockInMinecaftMinOffset
  L5_2 = L5_2.y
  L6_2 = Config
  L6_2 = L6_2.RockInMinecaftMaxOffset
  L6_2 = L6_2.y
  L7_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = Functions
  L5_2 = L5_2.Lerp
  L6_2 = Config
  L6_2 = L6_2.RockInMinecaftMinOffset
  L6_2 = L6_2.z
  L7_2 = Config
  L7_2 = L7_2.RockInMinecaftMaxOffset
  L7_2 = L7_2.z
  L8_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = AttachEntityToEntity
  L7_2 = L11_1
  L7_2 = L7_2[A1_2]
  L7_2 = L7_2.minecartRock
  L8_2 = L11_1
  L8_2 = L8_2[A1_2]
  L8_2 = L8_2.minecart
  L9_2 = 0
  L10_2 = L3_2
  L11_2 = L4_2
  L12_2 = L5_2
  L13_2 = Config
  L13_2 = L13_2.RockInMinecaftRotation
  L13_2 = L13_2.x
  L14_2 = Config
  L14_2 = L14_2.RockInMinecaftRotation
  L14_2 = L14_2.y
  L15_2 = Config
  L15_2 = L15_2.RockInMinecaftRotation
  L15_2 = L15_2.z
  L16_2 = true
  L17_2 = true
  L18_2 = true
  L19_2 = false
  L20_2 = 2
  L21_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
end
L42_1(L43_1, L44_1)
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:StartMinecartSound"
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L11_1
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.minecart
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityCoords
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = vec3
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = vec3
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L4_2.z
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L5_2 - L6_2
  L5_2 = #L5_2
  L6_2 = L2_1
  if nil ~= L6_2 and L5_2 < 100 then
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = L3_2.z
    L8_2 = L4_2.z
    L7_2 = L7_2 - L8_2
    L6_2 = L6_2(L7_2)
    if L6_2 < 20 then
      L6_2 = Functions
      L6_2 = L6_2.PlayAudioAtCoords
      L7_2 = "minecart"
      L8_2 = Config
      L8_2 = L8_2.SoundVolumeMultipler
      L9_2 = L1_2
      L10_2 = 50
      L11_2 = true
      L12_2 = true
      L13_2 = "minecart"
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = Citizen
      L6_2 = L6_2.Wait
      L7_2 = 10000
      L6_2(L7_2)
      L6_2 = Functions
      L6_2 = L6_2.StopSound
      L7_2 = "minecart"
      L6_2(L7_2)
    end
  end
end
L42_1(L43_1, L44_1)
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:StopMinecartSound"
function L44_1()
  local L0_2, L1_2
  L0_2 = Functions
  L0_2 = L0_2.StopSound
  L1_2 = "minecart"
  L0_2(L1_2)
end
L42_1(L43_1, L44_1)
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:PlayMiningSound"
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  if nil ~= L1_2 then
    L1_2 = Functions
    L1_2 = L1_2.PlayAudioAtCoords
    L2_2 = "pickaxe"
    L3_2 = Config
    L3_2 = L3_2.SoundVolumeMultipler
    L4_2 = A0_2
    L5_2 = 50
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L42_1(L43_1, L44_1)
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:StopMining"
function L44_1()
  local L0_2, L1_2
  AlreadyMining = false
  L0_2 = Notify
  L1_2 = Config
  L1_2 = L1_2.Lang
  L1_2 = L1_2.maximum
  L0_2(L1_2)
end
L42_1(L43_1, L44_1)
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:UpdateWalls"
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if nil ~= A0_2 then
    L1_2 = {}
    L2_2 = pairs
    L3_2 = A0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L1_2[L7_2] = true
    end
    A0_2 = L1_2
  end
  L1_2 = 1
  L2_2 = Config
  L2_2 = L2_2.Mineshatfs
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    if A0_2 then
      L5_2 = A0_2[L4_2]
      if L5_2 then
        L5_2 = L1_1
        L5_2 = L5_2[L4_2]
        if L5_2 then
          L5_2 = DoesEntityExist
          L6_2 = L1_1
          L6_2 = L6_2[L4_2]
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L5_2 = DeleteEntity
            L6_2 = L1_1
            L6_2 = L6_2[L4_2]
            L5_2(L6_2)
            L5_2 = L1_1
            L5_2[L4_2] = nil
          end
        end
    end
    else
      L5_2 = L1_1
      L5_2 = L5_2[L4_2]
      if L5_2 then
        L5_2 = DoesEntityExist
        L6_2 = L1_1
        L6_2 = L6_2[L4_2]
        L5_2 = L5_2(L6_2)
        if L5_2 then
          goto lbl_69
        end
      end
      L5_2 = L2_1
      if L4_2 ~= L5_2 then
        function L5_2(A0_3, A1_3, A2_3, A3_3, A4_3)
          local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
          function L5_3(A0_4, A1_4)
            local L2_4, L3_4, L4_4
            L2_4 = A0_4.x
            L3_4 = A1_4.y
            L2_4 = L2_4 * L3_4
            L3_4 = A1_4.x
            L4_4 = A0_4.y
            L3_4 = L3_4 * L4_4
            L2_4 = L2_4 - L3_4
            return L2_4
          end
          function L6_3(A0_4, A1_4)
            local L2_4, L3_4, L4_4
            L2_4 = {}
            L3_4 = A1_4.x
            L4_4 = A0_4.x
            L3_4 = L3_4 - L4_4
            L2_4.x = L3_4
            L3_4 = A1_4.y
            L4_4 = A0_4.y
            L3_4 = L3_4 - L4_4
            L2_4.y = L3_4
            return L2_4
          end
          L7_3 = {}
          L8_3 = L6_3
          L9_3 = A1_3
          L10_3 = A2_3
          L8_3 = L8_3(L9_3, L10_3)
          L9_3 = L6_3
          L10_3 = A2_3
          L11_3 = A3_3
          L9_3 = L9_3(L10_3, L11_3)
          L10_3 = L6_3
          L11_3 = A3_3
          L12_3 = A4_3
          L10_3 = L10_3(L11_3, L12_3)
          L11_3 = L6_3
          L12_3 = A4_3
          L13_3 = A1_3
          L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L11_3(L12_3, L13_3)
          L7_3[1] = L8_3
          L7_3[2] = L9_3
          L7_3[3] = L10_3
          L7_3[4] = L11_3
          L7_3[5] = L12_3
          L7_3[6] = L13_3
          L7_3[7] = L14_3
          L7_3[8] = L15_3
          L7_3[9] = L16_3
          L8_3 = {}
          L9_3 = L6_3
          L10_3 = A1_3
          L11_3 = A0_3
          L9_3 = L9_3(L10_3, L11_3)
          L10_3 = L6_3
          L11_3 = A2_3
          L12_3 = A0_3
          L10_3 = L10_3(L11_3, L12_3)
          L11_3 = L6_3
          L12_3 = A3_3
          L13_3 = A0_3
          L11_3 = L11_3(L12_3, L13_3)
          L12_3 = L6_3
          L13_3 = A4_3
          L14_3 = A0_3
          L12_3, L13_3, L14_3, L15_3, L16_3 = L12_3(L13_3, L14_3)
          L8_3[1] = L9_3
          L8_3[2] = L10_3
          L8_3[3] = L11_3
          L8_3[4] = L12_3
          L8_3[5] = L13_3
          L8_3[6] = L14_3
          L8_3[7] = L15_3
          L8_3[8] = L16_3
          L9_3 = {}
          L10_3 = 1
          L11_3 = #L7_3
          L12_3 = 1
          for L13_3 = L10_3, L11_3, L12_3 do
            L14_3 = L5_3
            L15_3 = L7_3[L13_3]
            L16_3 = L8_3[L13_3]
            L14_3 = L14_3(L15_3, L16_3)
            L9_3[L13_3] = L14_3
          end
          L10_3 = L9_3[1]
          L10_3 = L10_3 > 0
          L11_3 = 2
          L12_3 = #L9_3
          L13_3 = 1
          for L14_3 = L11_3, L12_3, L13_3 do
            if L10_3 then
              L15_3 = L9_3[L14_3]
              if L15_3 < 0 then
                goto lbl_72
              end
            end
            if not L10_3 then
              L15_3 = L9_3[L14_3]
              ::lbl_72::
              if L15_3 > 0 then
                L15_3 = false
                return L15_3
              end
            end
          end
          L11_3 = true
          return L11_3
        end
        L6_2 = Functions
        L6_2 = L6_2.SpawnObject
        L7_2 = Config
        L7_2 = L7_2.WallModel
        function L8_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
          L2_3 = L4_2
          L1_3 = L1_1
          L1_3[L2_3] = A0_3
          L1_3 = SetEntityRotation
          L2_3 = A0_3
          L3_3 = Config
          L3_3 = L3_3.Mineshatfs
          L4_3 = L4_2
          L3_3 = L3_3[L4_3]
          L3_3 = L3_3.wallRotation
          L3_3 = L3_3.x
          L4_3 = Config
          L4_3 = L4_3.Mineshatfs
          L5_3 = L4_2
          L4_3 = L4_3[L5_3]
          L4_3 = L4_3.wallRotation
          L4_3 = L4_3.y
          L5_3 = Config
          L5_3 = L5_3.Mineshatfs
          L6_3 = L4_2
          L5_3 = L5_3[L6_3]
          L5_3 = L5_3.wallRotation
          L5_3 = L5_3.z
          L6_3 = 0
          L7_3 = false
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
          L1_3 = 47.2
          L2_3 = 5.3
          L3_3 = PlayerPedId
          L3_3 = L3_3()
          L4_3 = GetEntityCoords
          L5_3 = L3_3
          L4_3 = L4_3(L5_3)
          L5_3 = GetOffsetFromEntityInWorldCoords
          L6_3 = A0_3
          L7_3 = L2_3 / 2
          L8_3 = 0.0
          L9_3 = 0.0
          L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
          L6_3 = GetOffsetFromEntityInWorldCoords
          L7_3 = A0_3
          L8_3 = L2_3 / -2
          L9_3 = 0.0
          L10_3 = 0.0
          L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
          L7_3 = GetOffsetFromEntityInWorldCoords
          L8_3 = A0_3
          L9_3 = L2_3 / -2
          L10_3 = L1_3
          L11_3 = 0.0
          L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
          L8_3 = GetOffsetFromEntityInWorldCoords
          L9_3 = A0_3
          L10_3 = L2_3 / 2
          L11_3 = L1_3
          L12_3 = 0.0
          L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
          L9_3 = L5_2
          L10_3 = L4_3
          L11_3 = L5_3
          L12_3 = L6_3
          L13_3 = L7_3
          L14_3 = L8_3
          L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
          if L9_3 then
            L9_3 = L5_3.z
            L9_3 = L9_3 + 10
            L10_3 = L4_3.z
            if L9_3 > L10_3 then
              L9_3 = L5_3.z
              L9_3 = L9_3 - 10
              L10_3 = L4_3.z
              if L9_3 < L10_3 then
                L9_3 = GetOffsetFromEntityInWorldCoords
                L10_3 = A0_3
                L11_3 = 0.0
                L12_3 = -2.0
                L13_3 = -2.0
                L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
                L10_3 = SetEntityCoords
                L11_3 = L3_3
                L12_3 = L9_3.x
                L13_3 = L9_3.y
                L14_3 = L9_3.z
                L15_3 = true
                L16_3 = false
                L17_3 = false
                L18_3 = false
                L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
              end
            end
          end
        end
        L9_2 = Config
        L9_2 = L9_2.Mineshatfs
        L9_2 = L9_2[L4_2]
        L9_2 = L9_2.wallCoordinates
        L10_2 = false
        L11_2 = true
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      end
    end
    ::lbl_69::
  end
end
L42_1(L43_1, L44_1)
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:UpdateProgress"
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateCounter"
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2 * 100
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 / 100
  L2_2.value = L3_2
  L1_2(L2_2)
end
L42_1(L43_1, L44_1)
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:ElevatorOpenDoors"
function L44_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.animateDoors
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L42_1(L43_1, L44_1)
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:ElevatorGoDown"
function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L0_1.animateDoors
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = L0_1.TaskGoToCoords
  L1_2 = -72.7
  L0_2(L1_2)
  L0_1.currentState = "down"
  L0_2 = true
  L25_1 = L0_2
  L0_2 = true
  L26_1 = L0_2
  L0_2 = GetResourceKvpInt
  L1_2 = "17mov_Tutorials:"
  L2_2 = Config
  L2_2 = L2_2.Lang
  L2_2 = L2_2.downTutorial
  L1_2 = L1_2 .. L2_2
  L0_2 = L0_2(L1_2)
  if 0 == L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Lang
    L0_2 = L0_2.downTutorial
    L22_1 = L0_2
    L0_2 = {}
    L1_2 = "A"
    L2_2 = "B"
    L3_2 = "C"
    L4_2 = "D"
    L5_2 = "E"
    L6_2 = "F"
    L7_2 = "G"
    L8_2 = "H"
    L0_2[1] = L1_2
    L0_2[2] = L2_2
    L0_2[3] = L3_2
    L0_2[4] = L4_2
    L0_2[5] = L5_2
    L0_2[6] = L6_2
    L0_2[7] = L7_2
    L0_2[8] = L8_2
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "showTutorial"
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = Config
    L4_2 = L4_2.Lang
    L4_2 = L4_2.downTutorial
    L5_2 = L2_1
    L5_2 = L0_2[L5_2]
    L3_2 = L3_2(L4_2, L5_2)
    L2_2.customText = L3_2
    L1_2(L2_2)
    L1_2 = true
    L21_1 = L1_2
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3
      while true do
        L0_3 = L21_1
        if not L0_3 then
          break
        end
        L0_3 = Wait
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
    L1_2(L2_2)
    L1_2 = SetNuiFocus
    L2_2 = true
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L0_2 = L0_1.animateDoors
  L1_2 = true
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = TriggerEvent
      L1_3 = "17mov_Miner:UpdateEntites"
      L0_3(L1_3)
    end
  end
  L0_2(L1_2)
  L0_2 = CheckIsDead
  L0_2()
  L0_2 = CheckIsInMineshaft
  L0_2()
end
L42_1(L43_1, L44_1)
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:ElevatorBack_cl"
function L44_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = false
  L25_1 = L3_2
  L3_2 = false
  L26_1 = L3_2
  L3_2 = L0_1.animateDoors
  L4_2 = true
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = L24_1
  if L3_2 then
    L3_2 = false
    L24_1 = L3_2
    L3_2 = SetTimecycleModifier
    L4_2 = ""
    L3_2(L4_2)
    L3_2 = RemoveTimecycleModifier
    L4_2 = "mineshaft_gas"
    L3_2(L4_2)
    L3_2 = RemoveParticleFx
    L4_2 = Config
    L4_2 = L4_2.Events
    L4_2 = L4_2.gas
    L4_2 = L4_2.particles
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = type
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if "table" == L1_3 then
      L1_3 = pairs
      L2_3 = A0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L3_2
        L8_3 = L6_3
        L7_3(L8_3)
      end
    else
      L1_3 = DoesEntityExist
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = DeleteEntity
        L2_3 = A0_3
        L1_3(L2_3)
      end
    end
  end
  L4_2 = L3_2
  L5_2 = L3_1
  L4_2(L5_2)
  L4_2 = nil
  L3_1 = L4_2
  L4_2 = 0
  L4_1 = L4_2
  L4_2 = {}
  L5_1 = L4_2
  L4_2 = L3_2
  L5_2 = L6_1
  L4_2(L5_2)
  L4_2 = nil
  L6_1 = L4_2
  L4_2 = L3_2
  L5_2 = L7_1
  L4_2(L5_2)
  L4_2 = {}
  L7_1 = L4_2
  L4_2 = L3_2
  L5_2 = L8_1
  L4_2(L5_2)
  L4_2 = {}
  L5_2 = {}
  L4_2.Rails = L5_2
  L5_2 = {}
  L4_2.Lights = L5_2
  L5_2 = {}
  L4_2.SupportPillarLeft = L5_2
  L5_2 = {}
  L4_2.SupportPillarRight = L5_2
  L5_2 = {}
  L4_2.SupportConnectorLeft = L5_2
  L5_2 = {}
  L4_2.SupportConnectorRight = L5_2
  L5_2 = {}
  L4_2.SupportLintel = L5_2
  L8_1 = L4_2
  L4_2 = L3_2
  L6_2 = L2_1
  L5_2 = L11_1
  L5_2 = L5_2[L6_2]
  L4_2(L5_2)
  L4_2 = L0_1.TaskGoToCoords
  L5_2 = 72.7
  L4_2(L5_2)
  L4_2 = TriggerServerEvent
  L5_2 = "17mov_Miner_ExitBucket"
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3
    L0_3 = HaveGear
    if L0_3 then
      L0_3 = ToggleGear
      L0_3()
      L0_3 = DeleteEntity
      L1_3 = L10_1
      L0_3(L1_3)
    end
  end
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3
    L0_3 = ChangeClothes
    L0_3()
  end
  L4_2(L5_2)
  L4_2 = TriggerEvent
  L5_2 = "17mov_Miner:UpdateWalls"
  L4_2(L5_2)
  L0_1.currentState = "up"
  L4_2 = L0_1.animateDoors
  L5_2 = false
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = TriggerEvent
  L5_2 = "qb-weathersync:client:EnableSync"
  L4_2(L5_2)
  if A0_2 == A1_2 then
    L4_2 = TriggerServerEvent
    L5_2 = "17mov_Miner:endJob_sv"
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end
L42_1(L43_1, L44_1)
L24_1 = false
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:RunEvent"
function L44_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L4_2 = L2_1
  if nil == L4_2 then
    return
  end
  L4_2 = Config
  L4_2 = L4_2.Events
  L4_2 = L4_2[A0_2]
  L4_2.running = true
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      L1_3 = math
      L1_3 = L1_3.abs
      L2_3 = L0_3.z
      L3_3 = Config
      L3_3 = L3_3.Mineshatfs
      L3_3 = L3_3[1]
      L3_3 = L3_3.wallCoordinates
      L3_3 = L3_3.z
      L2_3 = L2_3 - L3_3
      L1_3 = L1_3(L2_3)
      if L1_3 > 10 then
        L1_3 = Config
        L1_3 = L1_3.Events
        L2_3 = A0_2
        L1_3 = L1_3[L2_3]
        L1_3.running = false
        break
      end
      L1_3 = Wait
      L2_3 = 100
      L1_3(L2_3)
    end
  end
  L4_2(L5_2)
  if "gas" == A0_2 then
    L4_2 = Functions
    L4_2 = L4_2.PlayAudioAtCoords
    L5_2 = "gas"
    L6_2 = Config
    L6_2 = L6_2.SoundVolumeMultipler
    L7_2 = A1_2
    L8_2 = 100
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = Notify
    L5_2 = Config
    L5_2 = L5_2.Lang
    L5_2 = L5_2.gasLeak
    L4_2(L5_2)
    L4_2 = HasNamedPtfxAssetLoaded
    L5_2 = "core"
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = RequestNamedPtfxAsset
      L5_2 = "core"
      L4_2(L5_2)
      while true do
        L4_2 = HasNamedPtfxAssetLoaded
        L5_2 = "core"
        L4_2 = L4_2(L5_2)
        if L4_2 then
          break
        end
        L4_2 = Wait
        L5_2 = 10
        L4_2(L5_2)
      end
    end
    L4_2 = Functions
    L4_2 = L4_2.PlayAudioAtCoords
    L5_2 = "explode"
    L6_2 = Config
    L6_2 = L6_2.SoundVolumeMultipler
    L7_2 = A1_2
    L8_2 = 100
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = UseParticleFxAssetNextCall
    L5_2 = "core"
    L4_2(L5_2)
    L4_2 = StartParticleFxNonLoopedAtCoord
    L5_2 = "exp_grd_gas_can"
    L6_2 = A1_2.x
    L7_2 = A1_2.y
    L8_2 = A1_2.z
    L9_2 = 0.0
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = 1065353216
    L13_2 = false
    L14_2 = false
    L15_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L4_2 = Wait
    L5_2 = 3500
    L4_2(L5_2)
    L4_2 = HasNamedPtfxAssetLoaded
    L5_2 = "core"
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = RequestNamedPtfxAsset
      L5_2 = "core"
      L4_2(L5_2)
      while true do
        L4_2 = HasNamedPtfxAssetLoaded
        L5_2 = "core"
        L4_2 = L4_2(L5_2)
        if L4_2 then
          break
        end
        L4_2 = Wait
        L5_2 = 10
        L4_2(L5_2)
      end
    end
    L4_2 = UseParticleFxAssetNextCall
    L5_2 = "core"
    L4_2(L5_2)
    L4_2 = Config
    L4_2 = L4_2.Events
    L4_2 = L4_2[A0_2]
    L5_2 = StartParticleFxLoopedAtCoord
    L6_2 = "ent_amb_steam"
    L7_2 = A1_2.x
    L8_2 = A1_2.y
    L9_2 = A1_2.z
    L10_2 = A2_2.x
    L10_2 = L10_2 + 90.0
    L11_2 = A2_2.y
    L12_2 = A2_2.z
    L13_2 = 1065353216
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L17_2 = false
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L4_2.particles = L5_2
    L4_2 = CreateTimecycleModifier
    L5_2 = "mineshaft_gas"
    L4_2(L5_2)
    L4_2 = SetTimecycleModifierVar
    L5_2 = "mineshaft_gas"
    L6_2 = "screen_blur_intensity"
    L7_2 = 0.2
    L8_2 = 0.0
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = SetTimecycleModifierVar
    L5_2 = "mineshaft_gas"
    L6_2 = "fog_start"
    L7_2 = 1.0
    L8_2 = 0.0
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = SetTimecycleModifierVar
    L5_2 = "mineshaft_gas"
    L6_2 = "fog_near_col_r"
    L7_2 = 0.5
    L8_2 = 0.5
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = SetTimecycleModifierVar
    L5_2 = "mineshaft_gas"
    L6_2 = "fog_near_col_g"
    L7_2 = 0.5
    L8_2 = 0.5
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = SetTimecycleModifierVar
    L5_2 = "mineshaft_gas"
    L6_2 = "fog_near_col_b"
    L7_2 = 0.5
    L8_2 = 0.5
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = SetTimecycleModifierVar
    L5_2 = "mineshaft_gas"
    L6_2 = "fog_near_col_a"
    L7_2 = 0.0
    L8_2 = 1.0
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = SetTimecycleModifier
    L5_2 = "mineshaft_gas"
    L4_2(L5_2)
    L4_2 = 1.0
    L5_2 = 1.0
    L6_2 = 0.0
    L7_2 = 0.0
    L8_2 = 0.0
    L9_2 = 0.0
    L10_2 = 3.0
    L11_2 = 20.0
    L12_2 = 0.2
    L13_2 = 70.0
    L14_2 = 200.0
    L15_2 = 50.0
    L16_2 = 30.0
    L17_2 = 10000
    function L18_2(A0_3, A1_3, A2_3, A3_3)
      local L4_3, L5_3
      if A3_3 < A2_3 then
        A2_3 = A3_3
      end
      L4_3 = A1_3 - A0_3
      L5_3 = A2_3 / A3_3
      L4_3 = L4_3 * L5_3
      L4_3 = A0_3 + L4_3
      return L4_3
    end
    L19_2 = GetGameTimer
    L19_2 = L19_2()
    L20_2 = 0
    L21_2 = true
    L24_1 = L21_2
    L21_2 = CreateThread
    function L22_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 4000
      L0_3(L1_3)
      while true do
        L0_3 = L24_1
        if not L0_3 then
          break
        end
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 50
        L0_3(L1_3)
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = L19_2
        L1_3 = L0_3 - L1_3
        L2_3 = L20_2
        L2_3 = L0_3 - L2_3
        L3_3 = Config
        L3_3 = L3_3.Events
        L3_3 = L3_3.gas
        L3_3 = L3_3.healthLossInterval
        if L2_3 >= L3_3 then
          L2_3 = PlayerPedId
          L2_3 = L2_3()
          L3_3 = GetEntityHealth
          L4_3 = L2_3
          L3_3 = L3_3(L4_3)
          if L3_3 > 0 then
            L4_3 = Config
            L4_3 = L4_3.Events
            L4_3 = L4_3.gas
            L4_3 = L4_3.healthLossValue
            L4_3 = L3_3 - L4_3
            L5_3 = SetEntityHealth
            L6_3 = L2_3
            L7_3 = L4_3
            L5_3(L6_3, L7_3)
            L20_2 = L0_3
            L5_3 = L18_2
            L6_3 = L13_2
            L7_3 = L14_2
            L8_3 = L17_2
            L8_3 = L1_3 - L8_3
            L9_3 = L17_2
            L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
            L6_3 = SetTimecycleModifierVar
            L7_3 = "mineshaft_gas"
            L8_3 = "fog_density"
            L9_3 = L5_3
            L10_3 = 100.0
            L6_3(L7_3, L8_3, L9_3, L10_3)
          end
        end
      end
    end
    L21_2(L22_2)
    while true do
      L21_2 = Config
      L21_2 = L21_2.Events
      L21_2 = L21_2[A0_2]
      L21_2 = L21_2.running
      if not L21_2 then
        break
      end
      L21_2 = GetGameTimer
      L21_2 = L21_2()
      L22_2 = L21_2 - L19_2
      if L17_2 >= L22_2 then
        L23_2 = L18_2
        L24_2 = L4_2
        L25_2 = L10_2
        L26_2 = L22_2
        L27_2 = L17_2
        L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
        L24_2 = L18_2
        L25_2 = L5_2
        L26_2 = L11_2
        L27_2 = L22_2
        L28_2 = L17_2
        L24_2 = L24_2(L25_2, L26_2, L27_2, L28_2)
        L25_2 = L18_2
        L26_2 = L6_2
        L27_2 = L12_2
        L28_2 = L22_2
        L29_2 = L17_2
        L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2)
        L26_2 = L18_2
        L27_2 = L7_2
        L28_2 = L13_2
        L29_2 = L22_2
        L30_2 = L17_2
        L26_2 = L26_2(L27_2, L28_2, L29_2, L30_2)
        L27_2 = L18_2
        L28_2 = L8_2
        L29_2 = L15_2
        L30_2 = L22_2
        L31_2 = L17_2
        L27_2 = L27_2(L28_2, L29_2, L30_2, L31_2)
        L28_2 = L18_2
        L29_2 = L9_2
        L30_2 = L16_2
        L31_2 = L22_2
        L32_2 = L17_2
        L28_2 = L28_2(L29_2, L30_2, L31_2, L32_2)
        L29_2 = SetParticleFxLoopedScale
        L30_2 = Config
        L30_2 = L30_2.Events
        L30_2 = L30_2[A0_2]
        L30_2 = L30_2.particles
        L31_2 = L23_2
        L29_2(L30_2, L31_2)
        L29_2 = SetParticleFxLoopedAlpha
        L30_2 = Config
        L30_2 = L30_2.Events
        L30_2 = L30_2[A0_2]
        L30_2 = L30_2.particles
        L31_2 = L24_2
        L29_2(L30_2, L31_2)
        L29_2 = SetTimecycleModifierVar
        L30_2 = "mineshaft_gas"
        L31_2 = "screen_blur_intensity"
        L32_2 = L25_2
        L33_2 = 0.0
        L29_2(L30_2, L31_2, L32_2, L33_2)
        L29_2 = SetTimecycleModifierVar
        L30_2 = "mineshaft_gas"
        L31_2 = "fog_density"
        L32_2 = L26_2
        L33_2 = 100.0
        L29_2(L30_2, L31_2, L32_2, L33_2)
        L29_2 = SetTimecycleModifierVar
        L30_2 = "mineshaft_gas"
        L31_2 = "fog_falloff"
        L32_2 = L27_2
        L33_2 = 70.0
        L29_2(L30_2, L31_2, L32_2, L33_2)
        L29_2 = SetTimecycleModifierVar
        L30_2 = "mineshaft_gas"
        L31_2 = "fog_base_height"
        L32_2 = L28_2
        L33_2 = 125.0
        L29_2(L30_2, L31_2, L32_2, L33_2)
      end
      L23_2 = Wait
      L24_2 = 50
      L23_2(L24_2)
    end
  elseif "blackout" == A0_2 then
    L4_2 = Functions
    L4_2 = L4_2.PlaySound
    L5_2 = "lightsfailure"
    L6_2 = Config
    L6_2 = L6_2.SoundVolumeMultipler
    L4_2(L5_2, L6_2)
    L4_2 = ToggleLights
    L5_2 = false
    L4_2(L5_2)
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = A3_2
    L4_2(L5_2)
    L4_2 = ToggleLights
    L5_2 = true
    L4_2(L5_2)
  end
end
L42_1(L43_1, L44_1)
function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2 = not A0_2
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 100
  L1_2(L2_2)
  L1_2 = SetArtificialLightsState
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 25
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = SetArtificialLightsState
    L6_2 = not A0_2
    L5_2(L6_2)
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 25
    L5_2(L6_2)
    L5_2 = SetArtificialLightsState
    L6_2 = A0_2
    L5_2(L6_2)
  end
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 180
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = SetArtificialLightsState
    L6_2 = not A0_2
    L5_2(L6_2)
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 10
    L5_2(L6_2)
    L5_2 = SetArtificialLightsState
    L6_2 = A0_2
    L5_2(L6_2)
  end
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 10
  L1_2(L2_2)
  L1_2 = SetArtificialLightsState
  L2_2 = not A0_2
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 180
  L1_2(L2_2)
  L1_2 = SetArtificialLightsState
  L2_2 = A0_2
  L1_2(L2_2)
end
ToggleLights = L42_1
L42_1 = CreateThread
function L43_1()
  local L0_2, L1_2
  L0_2 = SetArtificialLightsState
  L1_2 = false
  L0_2(L1_2)
end
L42_1(L43_1)
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:StopEvent"
function L44_1(A0_2)
  local L1_2
  L1_2 = Config
  L1_2 = L1_2.Events
  L1_2 = L1_2[A0_2]
  L1_2.running = false
end
L42_1(L43_1, L44_1)
L42_1 = AddEventHandler
L43_1 = "onResourceStop"
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = pairs
  L2_2 = L8_1
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
        if "number" == L13_2 then
          L13_2 = DeleteEntity
          L14_2 = L12_2
          L13_2(L14_2)
        end
      end
    else
      L7_2 = type
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if "number" == L7_2 then
        L7_2 = DoesEntityExist
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = DeleteEntity
          L8_2 = L6_2
          L7_2(L8_2)
        end
      end
    end
  end
end
L42_1(L43_1, L44_1)
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_Miner:SeatTaken"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = nil
  L3_1 = L2_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityCoords
  L5_2 = A0_2.obj
  L4_2 = L4_2(L5_2)
  L5_2 = GetOffsetFromEntityInWorldCoords
  L6_2 = A0_2.obj
  L7_2 = 0
  L8_2 = 0.16
  L9_2 = 0.4
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = GetOffsetFromEntityInWorldCoords
  L7_2 = A0_2.obj
  L8_2 = A0_2.trayOffset
  L8_2 = L8_2.x
  L9_2 = A0_2.trayOffset
  L9_2 = L9_2.y
  L10_2 = A0_2.trayOffset
  L10_2 = L10_2.z
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = ClearPedTasksImmediately
  L8_2 = L2_2
  L7_2(L8_2)
  L7_2 = SetEntityCoords
  L8_2 = L2_2
  L9_2 = L4_2.x
  L10_2 = L4_2.y
  L11_2 = L4_2.z
  L12_2 = true
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L2_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = TaskStartScenarioAtPosition
  L8_2 = L2_2
  L9_2 = "PROP_HUMAN_SEAT_BENCH"
  L10_2 = L5_2.x
  L11_2 = L5_2.y
  L12_2 = L5_2.z
  L13_2 = GetEntityHeading
  L14_2 = A0_2.obj
  L13_2 = L13_2(L14_2)
  L13_2 = L13_2 + 180.0
  L14_2 = 0
  L15_2 = false
  L16_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = DetachEntity
  L8_2 = L27_1
  L9_2 = false
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = SetEntityCoords
  L8_2 = L27_1
  L9_2 = L6_2.x
  L10_2 = L6_2.y
  L11_2 = L6_2.z
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = SetEntityRotation
  L8_2 = L27_1
  L9_2 = A0_2.rotation
  L9_2 = L9_2.x
  L10_2 = A0_2.rotation
  L10_2 = L10_2.y
  L11_2 = A0_2.rotation
  L11_2 = L11_2.z
  L12_2 = 0
  L13_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L27_1
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = false
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = L7_2
      if L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = SetEntityCollision
      L1_3 = A0_2.obj
      L2_3 = false
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = SetEntityCoords
      L1_3 = L27_1
      L2_3 = L6_2.x
      L3_3 = L6_2.y
      L4_3 = L6_2.z
      L5_3 = false
      L6_3 = false
      L7_3 = false
      L8_3 = false
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      L0_3 = SetEntityRotation
      L1_3 = L27_1
      L2_3 = A0_2.rotation
      L2_3 = L2_3.x
      L3_3 = A0_2.rotation
      L3_3 = L3_3.y
      L4_3 = A0_2.rotation
      L4_3 = L4_3.z
      L5_3 = 0
      L6_3 = false
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
      L0_3 = FreezeEntityPosition
      L1_3 = L27_1
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = IsPedUsingScenario
      L1_3 = L2_2
      L2_3 = "PROP_HUMAN_SEAT_BENCH"
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = TaskStartScenarioAtPosition
        L1_3 = L2_2
        L2_3 = "PROP_HUMAN_SEAT_BENCH"
        L3_3 = L5_2.x
        L4_3 = L5_2.y
        L5_3 = L5_2.z
        L6_3 = GetEntityHeading
        L7_3 = A0_2.obj
        L6_3 = L6_3(L7_3)
        L6_3 = L6_3 + 180.0
        L7_3 = 0
        L8_3 = false
        L9_3 = true
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      end
    end
  end
  L8_2(L9_2)
  L8_2 = Citizen
  L8_2 = L8_2.Wait
  L9_2 = 100
  L8_2(L9_2)
  L8_2 = "mp_player_inteat@burger"
  L9_2 = "mp_player_int_eat_burger_fp"
  L10_2 = Functions
  L10_2 = L10_2.RequestAnimDict
  L11_2 = L8_2
  L10_2(L11_2)
  L10_2 = TaskPlayAnim
  L11_2 = L2_2
  L12_2 = L8_2
  L13_2 = L9_2
  L14_2 = 2.0
  L15_2 = 2.0
  L16_2 = -1
  L17_2 = 51
  L18_2 = 0
  L19_2 = false
  L20_2 = false
  L21_2 = false
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L10_2 = GetPedBoneIndex
  L11_2 = L2_2
  L12_2 = 18905
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = AttachEntityToEntity
  L12_2 = L28_1
  L13_2 = L2_2
  L14_2 = L10_2
  L15_2 = 0.12
  L16_2 = 0.028
  L17_2 = 0.01
  L18_2 = 10.0
  L19_2 = 175.0
  L20_2 = 0.0
  L21_2 = true
  L22_2 = true
  L23_2 = false
  L24_2 = true
  L25_2 = 1
  L26_2 = true
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L11_2 = Citizen
  L11_2 = L11_2.Wait
  L12_2 = 5000
  L11_2(L12_2)
  L11_2 = DeleteObject
  L12_2 = L28_1
  L11_2(L12_2)
  L11_2 = StopEntityAnim
  L12_2 = L2_2
  L13_2 = L8_2
  L14_2 = L9_2
  L15_2 = 3
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2 = Citizen
  L11_2 = L11_2.Wait
  L12_2 = 1000
  L11_2(L12_2)
  L11_2 = "mp_player_intdrink"
  L12_2 = "loop_bottle"
  L13_2 = Functions
  L13_2 = L13_2.RequestAnimDict
  L14_2 = L11_2
  L13_2(L14_2)
  L13_2 = TaskPlayAnim
  L14_2 = L2_2
  L15_2 = L11_2
  L16_2 = L12_2
  L17_2 = 2.0
  L18_2 = 2.0
  L19_2 = -1
  L20_2 = 51
  L21_2 = 0
  L22_2 = false
  L23_2 = false
  L24_2 = false
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L13_2 = GetPedBoneIndex
  L14_2 = L2_2
  L15_2 = 18905
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = AttachEntityToEntity
  L15_2 = L29_1
  L16_2 = L2_2
  L17_2 = L13_2
  L18_2 = 0.12
  L19_2 = 0.008
  L20_2 = 0.03
  L21_2 = 240.0
  L22_2 = -60.0
  L23_2 = 0.0
  L24_2 = true
  L25_2 = true
  L26_2 = false
  L27_2 = true
  L28_2 = 1
  L29_2 = true
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  L14_2 = Citizen
  L14_2 = L14_2.Wait
  L15_2 = 5000
  L14_2(L15_2)
  L14_2 = DeleteObject
  L15_2 = L29_1
  L14_2(L15_2)
  L7_2 = true
  L14_2 = vec3
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = -1.0
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L14_2 = L3_2 + L14_2
  L15_2 = Citizen
  L15_2 = L15_2.Wait
  L16_2 = 0
  L15_2(L16_2)
  L15_2 = ClearPedTasks
  L16_2 = L2_2
  L15_2(L16_2)
  L15_2 = SetEntityCoords
  L16_2 = L2_2
  L17_2 = L14_2.x
  L18_2 = L14_2.y
  L19_2 = L14_2.z
  L20_2 = true
  L21_2 = false
  L22_2 = false
  L23_2 = false
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L15_2 = FreezeEntityPosition
  L16_2 = L2_2
  L17_2 = false
  L15_2(L16_2, L17_2)
  L15_2 = SetEntityCollision
  L16_2 = A0_2.obj
  L17_2 = true
  L18_2 = true
  L15_2(L16_2, L17_2, L18_2)
  L15_2 = Functions
  L15_2 = L15_2.DeleteEntity
  L16_2 = L28_1
  L15_2(L16_2)
  L15_2 = Functions
  L15_2 = L15_2.DeleteEntity
  L16_2 = L29_1
  L15_2(L16_2)
  L15_2 = Functions
  L15_2 = L15_2.DeleteEntity
  L16_2 = L27_1
  L15_2(L16_2)
  L15_2 = Config
  L15_2 = L15_2.Restaurant
  L15_2 = L15_2.restoreStatus
  L15_2()
  L15_2 = TriggerServerEvent
  L16_2 = "17mov_Miner:SeatNowFree"
  L17_2 = A1_2
  L15_2(L16_2, L17_2)
end
SitOnChair = L42_1
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:SeatTaken"
function L44_1(A0_2)
  local L1_2
  L1_2 = Config
  L1_2 = L1_2.Restaurant
  L1_2 = L1_2.objects
  L1_2 = L1_2[A0_2]
  L1_2.taken = true
end
L42_1(L43_1, L44_1)
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:SeatNowFree"
function L44_1(A0_2)
  local L1_2
  L1_2 = Config
  L1_2 = L1_2.Restaurant
  L1_2 = L1_2.objects
  L1_2 = L1_2[A0_2]
  L1_2.taken = nil
end
L42_1(L43_1, L44_1)
function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DoesEntityExist
  L1_2 = L27_1
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = Functions
    L0_2 = L0_2.SpawnObject
    L1_2 = Config
    L1_2 = L1_2.Restaurant
    L1_2 = L1_2.tray
    L1_2 = L1_2.model
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
      L27_1 = A0_3
      L1_3 = Functions
      L1_3 = L1_3.SpawnObject
      L2_3 = Config
      L2_3 = L2_3.Restaurant
      L2_3 = L2_3.tray
      L2_3 = L2_3.burgerModel
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4
        L28_1 = A0_4
        L1_4 = SetEntityCollision
        L2_4 = A0_4
        L3_4 = false
        L4_4 = false
        L1_4(L2_4, L3_4, L4_4)
        L1_4 = FreezeEntityPosition
        L2_4 = A0_4
        L3_4 = true
        L1_4(L2_4, L3_4)
        L1_4 = AttachEntityToEntity
        L2_4 = A0_4
        L3_4 = L27_1
        L4_4 = 0
        L5_4 = Config
        L5_4 = L5_4.Restaurant
        L5_4 = L5_4.tray
        L5_4 = L5_4.burgerOffset
        L5_4 = L5_4.x
        L6_4 = Config
        L6_4 = L6_4.Restaurant
        L6_4 = L6_4.tray
        L6_4 = L6_4.burgerOffset
        L6_4 = L6_4.y
        L7_4 = Config
        L7_4 = L7_4.Restaurant
        L7_4 = L7_4.tray
        L7_4 = L7_4.burgerOffset
        L7_4 = L7_4.z
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
      end
      L1_3(L2_3, L3_3)
      L1_3 = Functions
      L1_3 = L1_3.SpawnObject
      L2_3 = Config
      L2_3 = L2_3.Restaurant
      L2_3 = L2_3.tray
      L2_3 = L2_3.waterModel
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4
        L29_1 = A0_4
        L1_4 = SetEntityCollision
        L2_4 = A0_4
        L3_4 = false
        L4_4 = false
        L1_4(L2_4, L3_4, L4_4)
        L1_4 = FreezeEntityPosition
        L2_4 = A0_4
        L3_4 = true
        L1_4(L2_4, L3_4)
        L1_4 = AttachEntityToEntity
        L2_4 = A0_4
        L3_4 = L27_1
        L4_4 = 0
        L5_4 = Config
        L5_4 = L5_4.Restaurant
        L5_4 = L5_4.tray
        L5_4 = L5_4.waterOffset
        L5_4 = L5_4.x
        L6_4 = Config
        L6_4 = L6_4.Restaurant
        L6_4 = L6_4.tray
        L6_4 = L6_4.waterOffset
        L6_4 = L6_4.y
        L7_4 = Config
        L7_4 = L7_4.Restaurant
        L7_4 = L7_4.tray
        L7_4 = L7_4.waterOffset
        L7_4 = L7_4.z
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
      end
      L1_3(L2_3, L3_3)
      L1_3 = AttachEntityToEntity
      L2_3 = A0_3
      L3_3 = PlayerPedId
      L3_3 = L3_3()
      L4_3 = GetPedBoneIndex
      L5_3 = PlayerPedId
      L5_3 = L5_3()
      L6_3 = 28422
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = Config
      L5_3 = L5_3.Restaurant
      L5_3 = L5_3.tray
      L5_3 = L5_3.wearingAnim
      L5_3 = L5_3.trayOffset
      L5_3 = L5_3.x
      L6_3 = Config
      L6_3 = L6_3.Restaurant
      L6_3 = L6_3.tray
      L6_3 = L6_3.wearingAnim
      L6_3 = L6_3.trayOffset
      L6_3 = L6_3.y
      L7_3 = Config
      L7_3 = L7_3.Restaurant
      L7_3 = L7_3.tray
      L7_3 = L7_3.wearingAnim
      L7_3 = L7_3.trayOffset
      L7_3 = L7_3.z
      L8_3 = Config
      L8_3 = L8_3.Restaurant
      L8_3 = L8_3.tray
      L8_3 = L8_3.wearingAnim
      L8_3 = L8_3.trayRotation
      L8_3 = L8_3.x
      L9_3 = Config
      L9_3 = L9_3.Restaurant
      L9_3 = L9_3.tray
      L9_3 = L9_3.wearingAnim
      L9_3 = L9_3.trayRotation
      L9_3 = L9_3.y
      L10_3 = Config
      L10_3 = L10_3.Restaurant
      L10_3 = L10_3.tray
      L10_3 = L10_3.wearingAnim
      L10_3 = L10_3.trayRotation
      L10_3 = L10_3.z
      L11_3 = true
      L12_3 = true
      L13_3 = false
      L14_3 = true
      L15_3 = 2
      L16_3 = true
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    end
    L3_2 = GetEntityCoords
    L4_2 = PlayerPedId
    L4_2, L5_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = true
    L5_2 = true
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L0_2 = L27_1
    L3_1 = L0_2
    L0_2 = CarringAnim
    L0_2()
  end
end
TakeFoodTray = L42_1
L42_1 = false
L43_1 = 0
PreviousHatTexture = 0
PreviousHatIndex = L43_1
HaveGear = L42_1
function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = RequestAnimDict
  L1_2 = "clothingshirt"
  L0_2(L1_2)
  while true do
    L0_2 = HasAnimDictLoaded
    L1_2 = "clothingshirt"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  L0_2 = TaskPlayAnim
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = "clothingshirt"
  L3_2 = "try_shirt_positive_d"
  L4_2 = 8.0
  L5_2 = 1.0
  L6_2 = -1
  L7_2 = 49
  L8_2 = 0
  L9_2 = false
  L10_2 = false
  L11_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = HaveGear
  if not L1_2 then
    L1_2 = 1885822738
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
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
    L2_2 = CreateObject
    L3_2 = L1_2
    L4_2 = 1.0
    L5_2 = 1.0
    L6_2 = 1.0
    L7_2 = true
    L8_2 = true
    L9_2 = false
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L10_1 = L2_2
    L2_2 = SetEntityCollision
    L3_2 = L10_1
    L4_2 = false
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = AttachEntityToEntity
    L3_2 = L10_1
    L4_2 = L0_2
    L5_2 = GetPedBoneIndex
    L6_2 = L0_2
    L7_2 = 24818
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = 0.18
    L7_2 = -0.05
    L8_2 = 0.0
    L9_2 = -180.0
    L10_2 = 90.0
    L11_2 = 0.0
    L12_2 = true
    L13_2 = true
    L14_2 = false
    L15_2 = false
    L16_2 = 2
    L17_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
  L1_2 = HaveGear
  L1_2 = not L1_2
  HaveGear = L1_2
  L1_2 = SetEnableScubaGearLight
  L2_2 = L0_2
  L3_2 = HaveGear
  L1_2(L2_2, L3_2)
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_Miner:ToggleLightState"
  L3_2 = HaveGear
  L1_2(L2_2, L3_2)
  L1_2 = Wait
  L2_2 = 1000
  L1_2(L2_2)
  L1_2 = ClearPedTasks
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = true
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = 10000
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    while true do
      L0_3 = HaveGear
      if not L0_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L2_3 = L2_2
      L1_3 = L1_3 - L2_3
      L2_3 = L3_2
      if L1_3 < L2_3 then
        L1_3 = ShowHelpNotification
        L2_3 = Config
        L2_3 = L2_3.Lang
        L2_3 = L2_3.lightToggle
        L1_3(L2_3)
      end
      L1_3 = IsControlJustReleased
      L2_3 = 0
      L3_3 = Config
      L3_3 = L3_3.LightToggleButton
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = L1_2
        L1_3 = not L1_3
        L1_2 = L1_3
        L1_3 = SetEnableScubaGearLight
        L2_3 = L0_3
        L3_3 = L1_2
        L1_3(L2_3, L3_3)
        L1_3 = TriggerServerEvent
        L2_3 = "17mov_Miner:ToggleLightState"
        L3_3 = L1_2
        L1_3(L2_3, L3_3)
      end
      L1_3 = AttachEntityToEntity
      L2_3 = L10_1
      L3_3 = L0_3
      L4_3 = GetPedBoneIndex
      L5_3 = L0_3
      L6_3 = 24818
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = 0.18
      L6_3 = -0.05
      L7_3 = 0.0
      L8_3 = -180.0
      L9_3 = 90.0
      L10_3 = 0.0
      L11_3 = true
      L12_3 = true
      L13_3 = false
      L14_3 = false
      L15_3 = 2
      L16_3 = true
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    L0_3 = DeleteEntity
    L1_3 = L10_1
    L0_3(L1_3)
  end
  L4_2(L5_2)
end
ToggleGear = L42_1
L42_1 = RegisterNetEvent
L43_1 = "17mov_Miner:ToggleLightState"
function L44_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if 0 ~= L2_2 or L2_2 ~= A0_2 then
    L3_2 = GetEntityModel
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if 1885233650 ~= L3_2 then
      L3_2 = GetEntityModel
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if -1667301416 ~= L3_2 then
        goto lbl_22
      end
    end
    L3_2 = SetEnableScubaGearLight
    L4_2 = L2_2
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
  ::lbl_22::
end
L42_1(L43_1, L44_1)

local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1
L0_1 = false
L1_1 = nil
L2_1 = {}
L3_1 = false
PlanksProcessed = false
OnDuty = L3_1
L3_1 = 0
L4_1 = 0
L5_1 = 0
L6_1 = 0
L7_1 = false
L8_1 = false
L9_1 = false
L10_1 = false
L11_1 = {}
L12_1 = 0
L13_1 = 0
L14_1 = 0
L15_1 = nil
L16_1 = {}
L17_1 = {}
L18_1 = {}
L19_1 = GetPlayerServerId
L20_1 = PlayerId
L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1 = L20_1()
L19_1 = L19_1(L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1)
L20_1 = true
L21_1 = ""
L22_1 = 0
L23_1 = false
ChipsThreadRunning = false
CurrentLogCounter = 0
CurrentHoldingController = nil
L24_1 = 0
L25_1 = false
L26_1 = nil
L27_1 = nil
L28_1 = 0
L29_1 = 0
L30_1 = {}
L31_1 = false
L32_1 = 0
L33_1 = pairs
L34_1 = Config
L34_1 = L34_1.PlanksAttachments
L33_1, L34_1, L35_1, L36_1 = L33_1(L34_1)
for L37_1, L38_1 in L33_1, L34_1, L35_1, L36_1 do
  L39_1 = {}
  L39_1.coords = L38_1
  L30_1[L37_1] = L39_1
end
L33_1 = false
L34_1 = {}
L35_1 = {}
L36_1 = NetToObj
L37_1 = NetToVeh
function L38_1(A0_2)
  local L1_2, L2_2
  L1_2 = NetworkDoesNetworkIdExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L36_1
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = 0
    return L1_2
  end
end
NetToObj = L38_1
function L38_1(A0_2)
  local L1_2, L2_2
  L1_2 = NetworkDoesNetworkIdExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L37_1
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = 0
    return L1_2
  end
end
NetToVeh = L38_1
L38_1 = CreateThread
function L39_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.EnableVehicleLegacyMode
  if not L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Locations
    L0_2.rentForklift = nil
    L0_2 = Config
    L0_2 = L0_2.Locations
    L0_2.WithdrawTruck = nil
    L0_2 = Config
    L0_2 = L0_2.Locations
    L0_2.ReturnLogCar = nil
  end
  while true do
    L0_2 = SetVehicle
    if nil ~= L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
  L0_2 = SetVehicle
  RealSetVehicle = L0_2
  function L0_2(A0_3)
    local L1_3, L2_3
    L1_3 = L16_1
    L1_3 = L1_3[A0_3]
    if true == L1_3 then
      return
    end
    L1_3 = L16_1
    L1_3[A0_3] = true
    L1_3 = CreateThread
    function L2_3()
      local L0_4, L1_4
      L0_4 = RealSetVehicle
      L1_4 = A0_3
      L0_4(L1_4)
    end
    L1_3(L2_3)
  end
  SetVehicle = L0_2
end
L38_1(L39_1)
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  if "table" == L1_2 then
    L3_2 = {}
    L2_2 = L3_2
    L3_2 = next
    L4_2 = A0_2
    L5_2 = nil
    L6_2 = nil
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = DeepCopy
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L10_2 = DeepCopy
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L2_2[L9_2] = L10_2
    end
    L3_2 = setmetatable
    L4_2 = L2_2
    L5_2 = DeepCopy
    L6_2 = getmetatable
    L7_2 = A0_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L2_2 = A0_2
  end
  return L2_2
end
DeepCopy = L38_1
L38_1 = Config
L39_1 = DeepCopy
L40_1 = Config
L40_1 = L40_1.ForksAttachment
L39_1 = L39_1(L40_1)
L38_1.ForksAttachment2 = L39_1
L38_1 = {}
L39_1 = pairs
L40_1 = Config
L40_1 = L40_1.TrailerLogsAttachments
L39_1, L40_1, L41_1, L42_1 = L39_1(L40_1)
for L43_1, L44_1 in L39_1, L40_1, L41_1, L42_1 do
  L45_1 = {}
  L45_1.coords = L44_1
  L38_1[L43_1] = L45_1
end
L39_1 = {}
L40_1 = pairs
L41_1 = Config
L41_1 = L41_1.TrailerSkipsAttachments
L40_1, L41_1, L42_1, L43_1 = L40_1(L41_1)
for L44_1, L45_1 in L40_1, L41_1, L42_1, L43_1 do
  L46_1 = {}
  L46_1.coords = L45_1
  L39_1[L44_1] = L46_1
end
L40_1 = false
L41_1 = {}
L42_1 = vec3
L43_1 = 0.5
L44_1 = 0.6
L45_1 = 0.3
L42_1 = L42_1(L43_1, L44_1, L45_1)
L41_1.coords = L42_1
L42_1 = vec3
L43_1 = 0.0
L44_1 = 0.0
L45_1 = 90.0
L42_1 = L42_1(L43_1, L44_1, L45_1)
L41_1.rotation = L42_1
L42_1 = {}
L43_1 = {}
L43_1.model = 1246111104
L44_1 = vec3
L45_1 = -521.8718
L46_1 = 5301.853
L47_1 = 82.514946
L44_1 = L44_1(L45_1, L46_1, L47_1)
L43_1.coords = L44_1
L44_1 = vec3
L45_1 = 0.0
L46_1 = 0.0
L47_1 = -20.0
L44_1 = L44_1(L45_1, L46_1, L47_1)
L43_1.rotation = L44_1
L44_1 = {}
L44_1.model = 1016859180
L45_1 = vec3
L46_1 = -521.7263
L47_1 = 5301.88
L48_1 = 78.44211
L45_1 = L45_1(L46_1, L47_1, L48_1)
L44_1.coords = L45_1
L45_1 = vec3
L46_1 = 0.0
L47_1 = 0.0
L48_1 = -20.0
L45_1 = L45_1(L46_1, L47_1, L48_1)
L44_1.rotation = L45_1
L45_1 = {}
L45_1.model = 1941403770
L46_1 = vec3
L47_1 = -523.6604
L48_1 = 5298.72168
L49_1 = 71.68133
L46_1 = L46_1(L47_1, L48_1, L49_1)
L45_1.coords = L46_1
L46_1 = vec3
L47_1 = 0.0
L48_1 = 0.0
L49_1 = -20.0
L46_1 = L46_1(L47_1, L48_1, L49_1)
L45_1.rotation = L46_1
L42_1[1] = L43_1
L42_1[2] = L44_1
L42_1[3] = L45_1
L43_1 = {}
L44_1 = {}
L45_1 = vec3
L46_1 = -523.7699
L47_1 = 5298.66357
L48_1 = 73.4215
L45_1 = L45_1(L46_1, L47_1, L48_1)
L44_1.coords = L45_1
L45_1 = vec3
L46_1 = 0.0
L47_1 = 0.0
L48_1 = 70.0
L45_1 = L45_1(L46_1, L47_1, L48_1)
L44_1.rotation = L45_1
L44_1.percentage = 0
L44_1.liftProgress = 0
L44_1.currActiveSkip = true
L45_1 = {}
L46_1 = vec3
L47_1 = -523.5898
L48_1 = 5285.729
L49_1 = 73.5347
L46_1 = L46_1(L47_1, L48_1, L49_1)
L45_1.coords = L46_1
L46_1 = vec3
L47_1 = 0.0
L48_1 = 0.0
L49_1 = -20.0
L46_1 = L46_1(L47_1, L48_1, L49_1)
L45_1.rotation = L46_1
L45_1.percentage = 0
L45_1.liftProgress = 0
L45_1.currActiveSkip = false
L46_1 = {}
L47_1 = vec3
L48_1 = -525.6033
L49_1 = 5280.098
L50_1 = 73.5606461
L47_1 = L47_1(L48_1, L49_1, L50_1)
L46_1.coords = L47_1
L47_1 = vec3
L48_1 = 0.0
L49_1 = 0.0
L50_1 = -20.0
L47_1 = L47_1(L48_1, L49_1, L50_1)
L46_1.rotation = L47_1
L46_1.percentage = 0
L46_1.liftProgress = 0
L46_1.currActiveSkip = false
L43_1[1] = L44_1
L43_1[2] = L45_1
L43_1[3] = L46_1
SkipsSpawnPoints = L43_1
L43_1 = 1
L44_1 = Config
L44_1 = L44_1.SkipsSpawnPoints
L44_1 = #L44_1
L45_1 = 1
for L46_1 = L43_1, L44_1, L45_1 do
  L47_1 = SkipsSpawnPoints
  L47_1 = L47_1[L46_1]
  if L47_1 then
    L47_1 = SkipsSpawnPoints
    L47_1 = L47_1[L46_1]
    L48_1 = Config
    L48_1 = L48_1.SkipsSpawnPoints
    L48_1 = L48_1[L46_1]
    L48_1 = L48_1.coords
    L47_1.coords = L48_1
    L47_1 = SkipsSpawnPoints
    L47_1 = L47_1[L46_1]
    L48_1 = Config
    L48_1 = L48_1.SkipsSpawnPoints
    L48_1 = L48_1[L46_1]
    L48_1 = L48_1.rotation
    L47_1.rotation = L48_1
  end
end
L43_1 = DeepCopy
L44_1 = SkipsSpawnPoints
L43_1 = L43_1(L44_1)
L44_1 = {}
L45_1 = {}
L46_1 = vec3
L47_1 = -509.68
L48_1 = 5274.88152
L49_1 = 79.62286
L46_1 = L46_1(L47_1, L48_1, L49_1)
L45_1.coords = L46_1
L46_1 = vec3
L47_1 = 1.0
L48_1 = 0.0
L49_1 = 69.0
L46_1 = L46_1(L47_1, L48_1, L49_1)
L45_1.rotation = L46_1
L45_1.haveAbove = false
L45_1.aboveId = 3
L46_1 = {}
L47_1 = vec3
L48_1 = -506.085431
L49_1 = 5273.48
L50_1 = 79.62991
L47_1 = L47_1(L48_1, L49_1, L50_1)
L46_1.coords = L47_1
L47_1 = vec3
L48_1 = 0.0
L49_1 = 0.0
L50_1 = 69.0
L47_1 = L47_1(L48_1, L49_1, L50_1)
L46_1.rotation = L47_1
L46_1.haveAbove = false
L46_1.aboveId = 4
L47_1 = {}
L48_1 = vec3
L49_1 = -509.68
L50_1 = 5274.88152
L51_1 = 80.742286
L48_1 = L48_1(L49_1, L50_1, L51_1)
L47_1.coords = L48_1
L48_1 = vec3
L49_1 = 0.0
L50_1 = 0.0
L51_1 = 69.0
L48_1 = L48_1(L49_1, L50_1, L51_1)
L47_1.rotation = L48_1
L48_1 = {}
L49_1 = vec3
L50_1 = -506.085431
L51_1 = 5273.48
L52_1 = 80.742991
L49_1 = L49_1(L50_1, L51_1, L52_1)
L48_1.coords = L49_1
L49_1 = vec3
L50_1 = 0.0
L51_1 = 0.0
L52_1 = 69.0
L49_1 = L49_1(L50_1, L51_1, L52_1)
L48_1.rotation = L49_1
L49_1 = {}
L50_1 = vec3
L51_1 = -510.2854
L52_1 = 5273.289
L53_1 = 79.62286
L50_1 = L50_1(L51_1, L52_1, L53_1)
L49_1.coords = L50_1
L50_1 = vec3
L51_1 = 0.0
L52_1 = 0.0
L53_1 = 69.0
L50_1 = L50_1(L51_1, L52_1, L53_1)
L49_1.rotation = L50_1
L49_1.haveAbove = false
L49_1.aboveId = 7
L50_1 = {}
L51_1 = vec3
L52_1 = -506.6802
L53_1 = 5271.88355
L54_1 = 79.6247
L51_1 = L51_1(L52_1, L53_1, L54_1)
L50_1.coords = L51_1
L51_1 = vec3
L52_1 = 0.0
L53_1 = 0.0
L54_1 = 69.0
L51_1 = L51_1(L52_1, L53_1, L54_1)
L50_1.rotation = L51_1
L50_1.haveAbove = false
L50_1.aboveId = 8
L51_1 = {}
L52_1 = vec3
L53_1 = -510.2854
L54_1 = 5273.289
L55_1 = 80.73
L52_1 = L52_1(L53_1, L54_1, L55_1)
L51_1.coords = L52_1
L52_1 = vec3
L53_1 = 1.0
L54_1 = 0.0
L55_1 = 69.0
L52_1 = L52_1(L53_1, L54_1, L55_1)
L51_1.rotation = L52_1
L52_1 = {}
L53_1 = vec3
L54_1 = -506.6802
L55_1 = 5271.88355
L56_1 = 80.73
L53_1 = L53_1(L54_1, L55_1, L56_1)
L52_1.coords = L53_1
L53_1 = vec3
L54_1 = 0.0
L55_1 = 0.0
L56_1 = 69.0
L53_1 = L53_1(L54_1, L55_1, L56_1)
L52_1.rotation = L53_1
L53_1 = {}
L54_1 = vec3
L55_1 = -509.615021
L56_1 = 5269.62
L57_1 = 79.73364
L54_1 = L54_1(L55_1, L56_1, L57_1)
L53_1.coords = L54_1
L54_1 = vec3
L55_1 = 1.0
L56_1 = 0.0
L57_1 = 69.0
L54_1 = L54_1(L55_1, L56_1, L57_1)
L53_1.rotation = L54_1
L44_1[1] = L45_1
L44_1[2] = L46_1
L44_1[3] = L47_1
L44_1[4] = L48_1
L44_1[5] = L49_1
L44_1[6] = L50_1
L44_1[7] = L51_1
L44_1[8] = L52_1
L44_1[9] = L53_1
PlanksSpawnPoints = L44_1
L44_1 = {}
L45_1 = {}
L46_1 = vec3
L47_1 = -475.635742
L48_1 = 5315.573
L49_1 = 82.61991
L46_1 = L46_1(L47_1, L48_1, L49_1)
L45_1.coords = L46_1
L46_1 = vec3
L47_1 = 0.0
L48_1 = 0.0
L49_1 = -20.0
L46_1 = L46_1(L47_1, L48_1, L49_1)
L45_1.rotation = L46_1
L45_1.duration = 4200
L46_1 = {}
L47_1 = vec3
L48_1 = -476.9089
L49_1 = 5312.707
L50_1 = 82.61991
L47_1 = L47_1(L48_1, L49_1, L50_1)
L46_1.coords = L47_1
L47_1 = vec3
L48_1 = 0.0
L49_1 = 0.0
L50_1 = -30.0
L47_1 = L47_1(L48_1, L49_1, L50_1)
L46_1.rotation = L47_1
L47_1 = {}
L48_1 = vec3
L49_1 = -479.388
L50_1 = 5309.986
L51_1 = 82.61991
L48_1 = L48_1(L49_1, L50_1, L51_1)
L47_1.coords = L48_1
L48_1 = vec3
L49_1 = 0.0
L50_1 = 0.0
L51_1 = -55.0
L48_1 = L48_1(L49_1, L50_1, L51_1)
L47_1.rotation = L48_1
L48_1 = {}
L49_1 = vec3
L50_1 = -482.739075
L51_1 = 5308.51465
L52_1 = 82.61991
L49_1 = L49_1(L50_1, L51_1, L52_1)
L48_1.coords = L49_1
L49_1 = vec3
L50_1 = 0.0
L51_1 = 0.0
L52_1 = -80.0
L49_1 = L49_1(L50_1, L51_1, L52_1)
L48_1.rotation = L49_1
L49_1 = {}
L50_1 = vec3
L51_1 = -486.665039
L52_1 = 5308.75146
L53_1 = 82.61991
L50_1 = L50_1(L51_1, L52_1, L53_1)
L49_1.coords = L50_1
L50_1 = vec3
L51_1 = 0.0
L52_1 = 0.0
L53_1 = -105.0
L50_1 = L50_1(L51_1, L52_1, L53_1)
L49_1.rotation = L50_1
L50_1 = {}
L51_1 = vec3
L52_1 = -490.864777
L53_1 = 5310.1333
L54_1 = 82.61991
L51_1 = L51_1(L52_1, L53_1, L54_1)
L50_1.coords = L51_1
L51_1 = vec3
L52_1 = 0.0
L53_1 = 0.0
L54_1 = -110.0
L51_1 = L51_1(L52_1, L53_1, L54_1)
L50_1.rotation = L51_1
L51_1 = {}
L52_1 = vec3
L53_1 = -508.974335
L54_1 = 5316.72461
L55_1 = 82.61991
L52_1 = L52_1(L53_1, L54_1, L55_1)
L51_1.coords = L52_1
L52_1 = vec3
L53_1 = 0.0
L54_1 = 0.0
L55_1 = -110.0
L52_1 = L52_1(L53_1, L54_1, L55_1)
L51_1.rotation = L52_1
L52_1 = {}
L53_1 = vec3
L54_1 = -512.9911
L55_1 = 5318.18652
L56_1 = 81.99616
L53_1 = L53_1(L54_1, L55_1, L56_1)
L52_1.coords = L53_1
L53_1 = vec3
L54_1 = 12.0
L55_1 = 0.0
L56_1 = -110.0
L53_1 = L53_1(L54_1, L55_1, L56_1)
L52_1.rotation = L53_1
L53_1 = {}
L54_1 = vec3
L55_1 = -538.119751
L56_1 = 5327.333
L57_1 = 76.7822342
L54_1 = L54_1(L55_1, L56_1, L57_1)
L53_1.coords = L54_1
L54_1 = vec3
L55_1 = 12.0
L56_1 = 0.0
L57_1 = -110.0
L54_1 = L54_1(L55_1, L56_1, L57_1)
L53_1.rotation = L54_1
L54_1 = {}
L55_1 = vec3
L56_1 = -542.2347
L57_1 = 5328.777
L58_1 = 76.4439
L55_1 = L55_1(L56_1, L57_1, L58_1)
L54_1.coords = L55_1
L55_1 = vec3
L56_1 = 0.0
L57_1 = 0.0
L58_1 = -110.0
L55_1 = L55_1(L56_1, L57_1, L58_1)
L54_1.rotation = L55_1
L55_1 = {}
L56_1 = vec3
L57_1 = -550.8362
L58_1 = 5331.867
L59_1 = 74.01255
L56_1 = L56_1(L57_1, L58_1, L59_1)
L55_1.coords = L56_1
L56_1 = vec3
L57_1 = 0.0
L58_1 = 0.0
L59_1 = -110.0
L56_1 = L56_1(L57_1, L58_1, L59_1)
L55_1.rotation = L56_1
L44_1[1] = L45_1
L44_1[2] = L46_1
L44_1[3] = L47_1
L44_1[4] = L48_1
L44_1[5] = L49_1
L44_1[6] = L50_1
L44_1[7] = L51_1
L44_1[8] = L52_1
L44_1[9] = L53_1
L44_1[10] = L54_1
L44_1[11] = L55_1
L45_1 = {}
L46_1 = {}
L47_1 = vec3
L48_1 = -499.269531
L49_1 = 5348.296
L50_1 = 80.46913
L47_1 = L47_1(L48_1, L49_1, L50_1)
L46_1.coords = L47_1
L47_1 = vec3
L48_1 = 0.0
L49_1 = 0.0
L50_1 = -20.0
L47_1 = L47_1(L48_1, L49_1, L50_1)
L46_1.rotation = L47_1
L46_1.duration = 1250
L46_1.fxName = "scr_reconstructionaccident"
L46_1.particle = "scr_reconstruct_pipefall_debris"
L46_1.rotate = true
L46_1.totalRotations = 3
L46_1.speed = 3.0
L47_1 = {}
L48_1 = vec3
L49_1 = -504.431183
L50_1 = 5350.17432
L51_1 = 77.15405
L48_1 = L48_1(L49_1, L50_1, L51_1)
L47_1.coords = L48_1
L48_1 = vec3
L49_1 = 0.0
L50_1 = 0.0
L51_1 = -20.0
L48_1 = L48_1(L49_1, L50_1, L51_1)
L47_1.rotation = L48_1
L47_1.duration = 1150
L47_1.fxName = "scr_reconstructionaccident"
L47_1.particle = "scr_reconstruct_pipefall_debris"
L47_1.rotate = true
L47_1.totalRotations = 4
L47_1.speed = 7.0
L48_1 = {}
L49_1 = vec3
L50_1 = -546.569336
L51_1 = 5365.511
L52_1 = 73.11546
L49_1 = L49_1(L50_1, L51_1, L52_1)
L48_1.coords = L49_1
L49_1 = vec3
L50_1 = 0.0
L51_1 = 0.0
L52_1 = -20.0
L49_1 = L49_1(L50_1, L51_1, L52_1)
L48_1.rotation = L49_1
L48_1.duration = 4350
L48_1.rotate = true
L48_1.totalRotations = 15
L48_1.speed = 10.0
L49_1 = {}
L50_1 = vec3
L51_1 = -547.5741
L52_1 = 5365.877
L53_1 = 71.327095
L50_1 = L50_1(L51_1, L52_1, L53_1)
L49_1.coords = L50_1
L50_1 = vec3
L51_1 = 0.0
L52_1 = 0.0
L53_1 = -20.0
L50_1 = L50_1(L51_1, L52_1, L53_1)
L49_1.rotation = L50_1
L49_1.duration = 350
L49_1.fxName = "scr_reconstructionaccident"
L49_1.particle = "scr_reconstruct_pipefall_debris"
L49_1.speed = 6.0
L50_1 = {}
L51_1 = vec3
L52_1 = -553.25116
L53_1 = 5350.279
L54_1 = 71.6394348
L51_1 = L51_1(L52_1, L53_1, L54_1)
L50_1.coords = L51_1
L51_1 = vec3
L52_1 = -2.0
L53_1 = 0.0
L54_1 = -20.0
L51_1 = L51_1(L52_1, L53_1, L54_1)
L50_1.rotation = L51_1
L50_1.duration = 1500
L50_1.speed = 4.2
L51_1 = {}
L52_1 = vec3
L53_1 = -554.9821
L54_1 = 5345.52344
L55_1 = 71.95936
L52_1 = L52_1(L53_1, L54_1, L55_1)
L51_1.coords = L52_1
L52_1 = vec3
L53_1 = -4.0
L54_1 = 0.0
L55_1 = -20.0
L52_1 = L52_1(L53_1, L54_1, L55_1)
L51_1.rotation = L52_1
L51_1.duration = 500
L52_1 = {}
L53_1 = vec3
L54_1 = -558.4586
L55_1 = 5335.972
L56_1 = 72.67014
L53_1 = L53_1(L54_1, L55_1, L56_1)
L52_1.coords = L53_1
L53_1 = vec3
L54_1 = -4.0
L55_1 = 0.0
L56_1 = -20.0
L53_1 = L53_1(L54_1, L55_1, L56_1)
L52_1.rotation = L53_1
L52_1.duration = 1000
L53_1 = {}
L54_1 = vec3
L55_1 = -559.9132
L56_1 = 5331.976
L57_1 = 72.85535
L54_1 = L54_1(L55_1, L56_1, L57_1)
L53_1.coords = L54_1
L54_1 = vec3
L55_1 = 0.0
L55_1 = -L55_1
L56_1 = 0.0
L57_1 = -20.0
L54_1 = L54_1(L55_1, L56_1, L57_1)
L53_1.rotation = L54_1
L53_1.duration = 200
L54_1 = {}
L55_1 = vec3
L56_1 = -564.3689
L57_1 = 5319.73438
L58_1 = 72.92417
L55_1 = L55_1(L56_1, L57_1, L58_1)
L54_1.coords = L55_1
L55_1 = vec3
L56_1 = 0.0
L57_1 = 0.0
L58_1 = -20.0
L55_1 = L55_1(L56_1, L57_1, L58_1)
L54_1.rotation = L55_1
L54_1.duration = 1500
L55_1 = {}
L56_1 = vec3
L57_1 = -560.5875
L58_1 = 5318.055
L59_1 = 72.82756
L56_1 = L56_1(L57_1, L58_1, L59_1)
L55_1.coords = L56_1
L56_1 = vec3
L57_1 = 0.0
L58_1 = 0.0
L59_1 = -20.0
L56_1 = L56_1(L57_1, L58_1, L59_1)
L55_1.rotation = L56_1
L55_1.changeObjectTo = "17mov_woodpile"
L55_1.duration = 1500
L56_1 = {}
L57_1 = vec3
L58_1 = -560.5875
L59_1 = 5318.055
L60_1 = 72.82756
L57_1 = L57_1(L58_1, L59_1, L60_1)
L56_1.coords = L57_1
L57_1 = vec3
L58_1 = 0.0
L59_1 = 0.0
L60_1 = -20.0
L57_1 = L57_1(L58_1, L59_1, L60_1)
L56_1.rotation = L57_1
L56_1.duration = 250
L56_1.fxName = "core"
L56_1.particle = "bul_wood_splinter_heli"
L57_1 = {}
L58_1 = vec3
L59_1 = -564.666565
L60_1 = 5319.42529
L61_1 = 72.59955
L58_1 = L58_1(L59_1, L60_1, L61_1)
L57_1.coords = L58_1
L58_1 = vec3
L59_1 = 0.0
L60_1 = 0.0
L61_1 = -20.0
L58_1 = L58_1(L59_1, L60_1, L61_1)
L57_1.rotation = L58_1
L57_1.duration = 3000
L58_1 = {}
L59_1 = vec3
L60_1 = -568.9402
L61_1 = 5307.68359
L62_1 = 72.59955
L59_1 = L59_1(L60_1, L61_1, L62_1)
L58_1.coords = L59_1
L59_1 = vec3
L60_1 = 0.0
L61_1 = 0.0
L62_1 = -20.0
L59_1 = L59_1(L60_1, L61_1, L62_1)
L58_1.rotation = L59_1
L58_1.duration = 2000
L59_1 = {}
L60_1 = vec3
L61_1 = -571.137634
L62_1 = 5300.18945
L63_1 = 73.30044
L60_1 = L60_1(L61_1, L62_1, L63_1)
L59_1.coords = L60_1
L60_1 = vec3
L61_1 = 0.0
L61_1 = -L61_1
L62_1 = 0.0
L63_1 = -20.0
L60_1 = L60_1(L61_1, L62_1, L63_1)
L59_1.rotation = L60_1
L59_1.duration = 1000
L60_1 = {}
L61_1 = vec3
L62_1 = -571.1599
L63_1 = 5299.695
L64_1 = 73.41406
L61_1 = L61_1(L62_1, L63_1, L64_1)
L60_1.coords = L61_1
L61_1 = vec3
L62_1 = 0.0
L62_1 = -L62_1
L63_1 = 0.0
L64_1 = -15.0
L61_1 = L61_1(L62_1, L63_1, L64_1)
L60_1.rotation = L61_1
L60_1.duration = 1000
L61_1 = {}
L62_1 = vec3
L63_1 = -571.11554
L64_1 = 5298.871
L65_1 = 73.4609451
L62_1 = L62_1(L63_1, L64_1, L65_1)
L61_1.coords = L62_1
L62_1 = vec3
L63_1 = -2.0
L64_1 = 0.0
L65_1 = -5.0
L62_1 = L62_1(L63_1, L64_1, L65_1)
L61_1.rotation = L62_1
L61_1.duration = 1000
L62_1 = {}
L63_1 = vec3
L64_1 = -571.0464
L65_1 = 5297.026
L66_1 = 73.74979
L63_1 = L63_1(L64_1, L65_1, L66_1)
L62_1.coords = L63_1
L63_1 = vec3
L64_1 = -2.4
L65_1 = 0.0
L66_1 = 10.14
L63_1 = L63_1(L64_1, L65_1, L66_1)
L62_1.rotation = L63_1
L62_1.duration = 1000
L63_1 = {}
L64_1 = vec3
L65_1 = -570.7378
L66_1 = 5296.00146
L67_1 = 73.86721
L64_1 = L64_1(L65_1, L66_1, L67_1)
L63_1.coords = L64_1
L64_1 = vec3
L65_1 = -2.4
L66_1 = 0.21
L67_1 = 15.14
L64_1 = L64_1(L65_1, L66_1, L67_1)
L63_1.rotation = L64_1
L63_1.duration = 1000
L64_1 = {}
L65_1 = vec3
L66_1 = -570.3104
L67_1 = 5294.84668
L68_1 = 73.91799
L65_1 = L65_1(L66_1, L67_1, L68_1)
L64_1.coords = L65_1
L65_1 = vec3
L66_1 = -2.4
L67_1 = 0.42
L68_1 = 20.15
L65_1 = L65_1(L66_1, L67_1, L68_1)
L64_1.rotation = L65_1
L64_1.duration = 1000
L65_1 = {}
L66_1 = vec3
L67_1 = -569.026
L68_1 = 5292.643
L69_1 = 74.20371
L66_1 = L66_1(L67_1, L68_1, L69_1)
L65_1.coords = L66_1
L66_1 = vec3
L67_1 = -5.06
L68_1 = 0.42
L69_1 = 35.15
L66_1 = L66_1(L67_1, L68_1, L69_1)
L65_1.rotation = L66_1
L65_1.duration = 1000
L66_1 = {}
L67_1 = vec3
L68_1 = -568.5745
L69_1 = 5291.96045
L70_1 = 74.27566
L67_1 = L67_1(L68_1, L69_1, L70_1)
L66_1.coords = L67_1
L67_1 = vec3
L68_1 = -5.14
L69_1 = 0.42
L70_1 = 45.15
L67_1 = L67_1(L68_1, L69_1, L70_1)
L66_1.rotation = L67_1
L66_1.duration = 1000
L67_1 = {}
L68_1 = vec3
L69_1 = -565.8897
L70_1 = 5290.079
L71_1 = 74.56706
L68_1 = L68_1(L69_1, L70_1, L71_1)
L67_1.coords = L68_1
L68_1 = vec3
L69_1 = -4.84
L70_1 = 1.74
L71_1 = 65.46
L68_1 = L68_1(L69_1, L70_1, L71_1)
L67_1.rotation = L68_1
L67_1.duration = 1000
L68_1 = {}
L69_1 = vec3
L70_1 = -565.8897
L71_1 = 5290.079
L72_1 = 74.56706
L69_1 = L69_1(L70_1, L71_1, L72_1)
L68_1.coords = L69_1
L69_1 = vec3
L70_1 = -4.84
L71_1 = 1.74
L72_1 = 65.46
L69_1 = L69_1(L70_1, L71_1, L72_1)
L68_1.rotation = L69_1
L68_1.duration = 750
L69_1 = {}
L70_1 = vec3
L71_1 = -561.927734
L72_1 = 5288.62
L73_1 = 74.91401
L70_1 = L70_1(L71_1, L72_1, L73_1)
L69_1.coords = L70_1
L70_1 = vec3
L71_1 = -5.67
L72_1 = 1.18
L73_1 = 70.67
L70_1 = L70_1(L71_1, L72_1, L73_1)
L69_1.rotation = L70_1
L69_1.duration = 600
L70_1 = {}
L71_1 = vec3
L72_1 = -557.7101
L73_1 = 5287.139
L74_1 = 75.27876
L71_1 = L71_1(L72_1, L73_1, L74_1)
L70_1.coords = L71_1
L71_1 = vec3
L72_1 = -5.67
L73_1 = 1.18
L74_1 = 70.67
L71_1 = L71_1(L72_1, L73_1, L74_1)
L70_1.rotation = L71_1
L70_1.duration = 600
L71_1 = {}
L72_1 = vec3
L73_1 = -521.032654
L74_1 = 5274.03027
L75_1 = 78.74946
L72_1 = L72_1(L73_1, L74_1, L75_1)
L71_1.coords = L72_1
L72_1 = vec3
L73_1 = -5.67
L74_1 = 1.18
L75_1 = 70.67
L72_1 = L72_1(L73_1, L74_1, L75_1)
L71_1.rotation = L72_1
L71_1.duration = 5500
L72_1 = {}
L73_1 = vec3
L74_1 = -517.233459
L75_1 = 5272.67
L76_1 = 79.20782
L73_1 = L73_1(L74_1, L75_1, L76_1)
L72_1.coords = L73_1
L73_1 = vec3
L74_1 = -9.67
L75_1 = 2.18
L76_1 = 70.67
L73_1 = L73_1(L74_1, L75_1, L76_1)
L72_1.rotation = L73_1
L72_1.duration = 650
L73_1 = {}
L74_1 = vec3
L75_1 = -513.583557
L76_1 = 5271.35938
L77_1 = 79.57278
L74_1 = L74_1(L75_1, L76_1, L77_1)
L73_1.coords = L74_1
L74_1 = vec3
L75_1 = 0.32
L76_1 = 2.15
L77_1 = 70.29
L74_1 = L74_1(L75_1, L76_1, L77_1)
L73_1.rotation = L74_1
L73_1.duration = 650
L45_1[1] = L46_1
L45_1[2] = L47_1
L45_1[3] = L48_1
L45_1[4] = L49_1
L45_1[5] = L50_1
L45_1[6] = L51_1
L45_1[7] = L52_1
L45_1[8] = L53_1
L45_1[9] = L54_1
L45_1[10] = L55_1
L45_1[11] = L56_1
L45_1[12] = L57_1
L45_1[13] = L58_1
L45_1[14] = L59_1
L45_1[15] = L60_1
L45_1[16] = L61_1
L45_1[17] = L62_1
L45_1[18] = L63_1
L45_1[19] = L64_1
L45_1[20] = L65_1
L45_1[21] = L66_1
L45_1[22] = L67_1
L45_1[23] = L68_1
L45_1[24] = L69_1
L45_1[25] = L70_1
L45_1[26] = L71_1
L45_1[27] = L72_1
L45_1[28] = L73_1
L46_1 = CreateThread
function L47_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = 2
  L1_2 = L45_1
  L1_2 = #L1_2
  L1_2 = L1_2 - 1
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L45_1
    L4_2 = L4_2[L3_2]
    L6_2 = L3_2 + 1
    L5_2 = L45_1
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2.coords
    L6_2 = L6_2.x
    L7_2 = L4_2.coords
    L7_2 = L7_2.x
    L6_2 = L6_2 - L7_2
    L7_2 = L5_2.coords
    L7_2 = L7_2.y
    L8_2 = L4_2.coords
    L8_2 = L8_2.y
    L7_2 = L7_2 - L8_2
    L8_2 = L5_2.coords
    L8_2 = L8_2.z
    L9_2 = L4_2.coords
    L9_2 = L9_2.z
    L8_2 = L8_2 - L9_2
    L9_2 = math
    L9_2 = L9_2.sqrt
    L10_2 = L6_2 * L6_2
    L11_2 = L7_2 * L7_2
    L10_2 = L10_2 + L11_2
    L11_2 = L8_2 * L8_2
    L10_2 = L10_2 + L11_2
    L9_2 = L9_2(L10_2)
    L10_2 = L5_2.speed
    if not L10_2 then
      L10_2 = 4.0
    end
    L11_2 = L9_2 / L10_2
    L11_2 = L11_2 * 1000
    L5_2.duration = L11_2
  end
  L0_2 = 2
  L1_2 = L44_1
  L1_2 = #L1_2
  L1_2 = L1_2 - 1
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L44_1
    L4_2 = L4_2[L3_2]
    L6_2 = L3_2 + 1
    L5_2 = L44_1
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2.coords
    L6_2 = L6_2.x
    L7_2 = L4_2.coords
    L7_2 = L7_2.x
    L6_2 = L6_2 - L7_2
    L7_2 = L5_2.coords
    L7_2 = L7_2.y
    L8_2 = L4_2.coords
    L8_2 = L8_2.y
    L7_2 = L7_2 - L8_2
    L8_2 = L5_2.coords
    L8_2 = L8_2.z
    L9_2 = L4_2.coords
    L9_2 = L9_2.z
    L8_2 = L8_2 - L9_2
    L9_2 = math
    L9_2 = L9_2.sqrt
    L10_2 = L6_2 * L6_2
    L11_2 = L7_2 * L7_2
    L10_2 = L10_2 + L11_2
    L11_2 = L8_2 * L8_2
    L10_2 = L10_2 + L11_2
    L9_2 = L9_2(L10_2)
    L10_2 = L5_2.speed
    if not L10_2 then
      L10_2 = 4.0
    end
    L11_2 = L9_2 / L10_2
    L11_2 = L11_2 * 1000
    L5_2.duration = L11_2
  end
end
L46_1(L47_1)
L46_1 = RegisterNUICallback
L47_1 = "nuiLoaded"
function L48_1()
  local L0_2, L1_2
  L0_2 = true
  L40_1 = L0_2
end
L46_1(L47_1, L48_1)
function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CreateObject
  L2_2 = Config
  L2_2 = L2_2.Props
  L2_2 = L2_2.tree
  L2_2 = L2_2.hash
  L3_2 = A0_2.coords
  L3_2 = L3_2.x
  L4_2 = A0_2.coords
  L4_2 = L4_2.y
  L5_2 = A0_2.coords
  L5_2 = L5_2.z
  L6_2 = Config
  L6_2 = L6_2.Props
  L6_2 = L6_2.tree
  L6_2 = L6_2.zOffset
  L5_2 = L5_2 + L6_2
  L6_2 = false
  L7_2 = true
  L8_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.obj = L1_2
  L1_2 = FreezeEntityPosition
  L2_2 = A0_2.obj
  L3_2 = true
  L1_2(L2_2, L3_2)
end
function L47_1(A0_2)
  local L1_2, L2_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2.obj
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = DeleteEntity
    L2_2 = A0_2.obj
    L1_2(L2_2)
    A0_2.obj = nil
  end
end
L48_1 = CreateThread
function L49_1()
  local L0_2, L1_2, L2_2
  L0_2 = DecorRegister
  L1_2 = "entityOnForks"
  L2_2 = 2
  L0_2(L1_2, L2_2)
  L0_2 = DecorRegister
  L1_2 = "isCraneContent"
  L2_2 = 2
  L0_2(L1_2, L2_2)
  L0_2 = DecorRegister
  L1_2 = "entityIsNeeded"
  L2_2 = 2
  L0_2(L1_2, L2_2)
  L0_2 = Wait
  L1_2 = 3500
  L0_2(L1_2)
  L0_2 = TriggerServerCallback
  L1_2 = "17mov_lumberjack:GetTreesData"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_1 = A0_3
    while true do
      L1_3 = HasModelLoaded
      L2_3 = Config
      L2_3 = L2_3.Props
      L2_3 = L2_3.tree
      L2_3 = L2_3.hash
      L1_3 = L1_3(L2_3)
      if L1_3 then
        break
      end
      L1_3 = RequestModel
      L2_3 = Config
      L2_3 = L2_3.Props
      L2_3 = L2_3.tree
      L2_3 = L2_3.hash
      L1_3(L2_3)
      L1_3 = Wait
      L2_3 = 100
      L1_3(L2_3)
    end
    L1_3 = ipairs
    L2_3 = L2_1
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L6_3.isAvalible
      if L7_3 then
        L7_3 = L46_1
        L8_3 = L6_3
        L7_3(L8_3)
      end
    end
    L1_3 = CreateThread
    function L2_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4
      while true do
        L0_4 = GetEntityCoords
        L1_4 = PlayerPedId
        L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4 = L1_4()
        L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4)
        L1_4 = ipairs
        L2_4 = L2_1
        L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
        for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
          L7_4 = L6_4.isAvalible
          if L7_4 then
            L7_4 = vec3
            L8_4 = L6_4.coords
            L8_4 = L8_4.x
            L9_4 = L6_4.coords
            L9_4 = L9_4.y
            L10_4 = L6_4.coords
            L10_4 = L10_4.z
            L7_4 = L7_4(L8_4, L9_4, L10_4)
            L7_4 = L0_4 - L7_4
            L7_4 = #L7_4
            if L7_4 < 100.0 then
              L8_4 = L6_4.obj
              if nil == L8_4 then
                L8_4 = L46_1
                L9_4 = L6_4
                L8_4(L9_4)
              end
            else
              L8_4 = L6_4.obj
              if nil ~= L8_4 then
                L8_4 = L47_1
                L9_4 = L6_4
                L8_4(L9_4)
              end
            end
          end
        end
        L1_4 = Wait
        L2_4 = 1000
        L1_4(L2_4)
      end
    end
    L1_3(L2_3)
    L1_3 = Config
    L1_3 = L1_3.ClearPeds
    if nil == L1_3 then
      while true do
        L1_3 = Wait
        L2_3 = 2000
        L1_3(L2_3)
        L1_3 = ClearNonPlayerPeds
        L2_3 = vector3
        L3_3 = -560.76
        L4_3 = 5320.68
        L5_3 = 73.6
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L3_3 = 100
        L1_3(L2_3, L3_3)
      end
    end
  end
  L0_2(L1_2, L2_2)
end
L48_1(L49_1)
function L48_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = GetNearbyPeds
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = IsPedAPlayer
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      L9_2 = DecorGetBool
      L10_2 = L8_2
      L11_2 = "entityIsNeeded"
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        L9_2 = IsPedSittingInAnyVehicle
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        if not L9_2 then
          L9_2 = DeletePed
          L10_2 = L8_2
          L9_2(L10_2)
        end
      end
    end
  end
end
ClearNonPlayerPeds = L48_1
function L48_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = GetGamePool
  L4_2 = "CPed"
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = GetEntityCoords
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = A0_2 - L9_2
    L10_2 = #L10_2
    if A1_2 >= L10_2 then
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L2_2
      L13_2 = L8_2
      L11_2(L12_2, L13_2)
    end
  end
  return L2_2
end
GetNearbyPeds = L48_1
L48_1 = CreateThread
function L49_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = L40_1
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
      L4_3 = TriggerServerCallback
      L5_3 = "17mov_lumberjack:CheckThisReward"
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
L48_1(L49_1)
L48_1 = RegisterNUICallback
L49_1 = "tutorialClosed"
function L50_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = false
  L8_1 = L0_2
  L0_2 = ""
  L21_1 = L0_2
end
L48_1(L49_1, L50_1)
L48_1 = RegisterNetEvent
L49_1 = "17mov_lumberjack:UpdateHostPercentages"
function L50_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateHostRewards"
  L2_2.value = A0_2
  L1_2(L2_2)
end
L48_1(L49_1, L50_1)
L48_1 = RegisterNUICallback
L49_1 = "menuClosed"
function L50_1()
  local L0_2, L1_2, L2_2
  L0_2 = false
  L20_1 = L0_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L48_1(L49_1, L50_1)
L48_1 = RegisterNUICallback
L49_1 = "dontShowTutorialAgain"
function L50_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetResourceKvpInt
  L3_2 = "17mov_Tutorials:"
  L4_2 = L21_1
  L3_2 = L3_2 .. L4_2
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L48_1(L49_1, L50_1)
L48_1 = RegisterNetEvent
L49_1 = "17mov_lumberjack:SetMyReward"
function L50_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updateMyReward"
  L2_2.reward = A0_2
  L1_2(L2_2)
end
L48_1(L49_1, L50_1)
L48_1 = RegisterNetEvent
L49_1 = "17mov_lumberjack:clearMyLobby"
function L50_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L18_1 = L0_2
  L0_2 = TriggerServerCallback
  L1_2 = "17mov_lumberjack:init"
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
L48_1(L49_1, L50_1)
L48_1 = RegisterNetEvent
L49_1 = "17mov_lumberjack:RefreshMugs"
L48_1(L49_1)
L48_1 = AddEventHandler
L49_1 = "17mov_lumberjack:RefreshMugs"
function L50_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  while true do
    L1_2 = L0_1
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = SendNUIMessage
    L8_2 = {}
    L8_2.action = "DeleteNearbyPlayer"
    L9_2 = L6_2.id
    L8_2.id = L9_2
    L7_2(L8_2)
    L8_2 = L6_2.id
    L7_2 = L18_1
    L7_2 = L7_2[L8_2]
    if nil == L7_2 then
      L7_2 = L19_1
      L8_2 = L6_2.id
      if L7_2 == L8_2 then
        L8_2 = L6_2.id
        L7_2 = L18_1
        L9_2 = {}
        L10_2 = L6_2.name
        L9_2.name = L10_2
        L10_2 = L6_2.id
        L9_2.id = L10_2
        L10_2 = L6_2.isHost
        L9_2.isHost = L10_2
        L10_2 = L6_2.rewardPercent
        L9_2.rewardPercent = L10_2
        L9_2.itsMe = true
        L7_2[L8_2] = L9_2
      else
        L8_2 = L6_2.id
        L7_2 = L18_1
        L9_2 = {}
        L10_2 = L6_2.name
        L9_2.name = L10_2
        L10_2 = L6_2.id
        L9_2.id = L10_2
        L10_2 = L6_2.isHost
        L9_2.isHost = L10_2
        L10_2 = L6_2.rewardPercent
        L9_2.rewardPercent = L10_2
        L9_2.itsMe = false
        L7_2[L8_2] = L9_2
      end
      L7_2 = SendNUIMessage
      L8_2 = {}
      L8_2.action = "addNewMember"
      L9_2 = L6_2.name
      L8_2.name = L9_2
      L9_2 = L6_2.id
      L8_2.id = L9_2
      L9_2 = L6_2.isHost
      L8_2.isHost = L9_2
      L9_2 = L6_2.rewardPercent
      L8_2.rewardPercent = L9_2
      L10_2 = L6_2.id
      L9_2 = L18_1
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.itsMe
      L8_2.showQuitBtn = L9_2
      L7_2(L8_2)
    end
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L18_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.id
    L9_2 = false
    L10_2 = pairs
    L11_2 = A0_2
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      L16_2 = L15_2.id
      if L16_2 == L8_2 then
        L9_2 = true
        break
      end
    end
    if not L9_2 then
      L10_2 = L18_1
      L10_2[L8_2] = nil
      L10_2 = SendNUIMessage
      L11_2 = {}
      L11_2.action = "DeletePlayer"
      L11_2.id = L8_2
      L10_2(L11_2)
    else
      L1_2 = L1_2 + 1
    end
  end
  if 1 == L1_2 then
    L2_2 = TriggerServerCallback
    L3_2 = "17mov_lumberjack:init"
    function L4_2(A0_3)
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
    L2_2(L3_2, L4_2)
  end
  L2_2 = TriggerServerCallback
  L3_2 = "17mov_lumberjack:IfPlayerOwnsTeam"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "ToggleHostHUD"
    L2_3.boolean = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L48_1(L49_1, L50_1)
L48_1 = _ENV
L49_1 = "TriggerServerCallback"
function L50_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L12_1
  L2_2 = L2_2 + 1
  L12_1 = L2_2
  L2_2 = L11_1
  L3_2 = {}
  L2_2[A0_2] = L3_2
  L2_2 = L11_1
  L2_2 = L2_2[A0_2]
  L3_2 = L12_1
  L2_2[L3_2] = A1_2
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_Callbacks:GetResponse"
  L4_2 = GetCurrentResourceName
  L4_2 = L4_2()
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L5_2 = L12_1
  L6_2 = ...
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L48_1[L49_1] = L50_1
L48_1 = RegisterNetEvent
L49_1 = "17mov_Callbacks:receiveData"
L50_1 = _ENV
L51_1 = "GetCurrentResourceName"
L50_1 = L50_1[L51_1]
L50_1 = L50_1()
L49_1 = L49_1 .. L50_1
function L50_1(A0_2, A1_2, ...)
  local L2_2, L3_2
  L2_2 = L11_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L11_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = L11_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = ...
  L2_2(L3_2)
  L2_2 = L11_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L11_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      L2_2 = L11_1
      L2_2 = L2_2[A0_2]
      L2_2[A1_2] = nil
    end
  end
  L2_2 = L11_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L11_1
    L2_2 = L2_2[A0_2]
    L2_2 = #L2_2
    if 0 == L2_2 then
      L2_2 = L11_1
      L2_2[A0_2] = nil
    end
  end
end
L48_1(L49_1, L50_1)
L48_1 = false
L49_1 = _ENV
L50_1 = "StartMarkers"
function L51_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2
  L1_2 = L48_1
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
      L48_1 = L1_2
      return
    end
  end
  L1_2 = true
  L48_1 = L1_2
  L1_2 = Config
  L1_2 = L1_2.UseTarget
  if L1_2 then
    L1_2 = SpawnPeds
    L1_2()
    L1_2 = Config
    L2_2 = {}
    L3_2 = Config
    L3_2 = L3_2.Locations
    L3_2 = L3_2.FinishJob
    L2_2.FinishJob = L3_2
    L3_2 = Config
    L3_2 = L3_2.Locations
    L3_2 = L3_2.ReturnLogCar
    L2_2.ReturnLogCar = L3_2
    L1_2.Locations2 = L2_2
    while true do
      L1_2 = L48_1
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
          goto lbl_66
        end
      end
      L8_2 = Config
      L8_2 = L8_2.RequiredJob
      ::lbl_66::
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
                goto lbl_196
              end
            end
            L14_2 = pairs
            L15_2 = L13_2.Coords
            L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
            for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
              L20_2 = L1_2 - L19_2
              L20_2 = #L20_2
              if L20_2 < 50 then
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
          end
          ::lbl_196::
        end
        if L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if not L8_2 then
            goto lbl_215
          end
        end
        if L2_2 then
          L8_2 = LastStation
          if L8_2 == L5_2 then
            L8_2 = LastPart
            if L8_2 == L6_2 then
              L8_2 = LastPartNum
              if L8_2 == L7_2 then
                goto lbl_248
              end
            end
          end
          ::lbl_215::
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
                      goto lbl_240
                    end
                  end
                end
                L8_2 = TriggerEvent
                L9_2 = "17mov_lumberjack:ExitedMarker"
                L10_2 = LastStation
                L11_2 = LastPart
                L12_2 = LastPartNum
                L8_2(L9_2, L10_2, L11_2, L12_2)
                L3_2 = true
              end
            end
          end
          ::lbl_240::
          HasAlreadyEnteredMarker = true
          LastStation = L5_2
          LastPart = L6_2
          LastPartNum = L7_2
          L8_2 = TriggerEvent
          L9_2 = "17mov_lumberjack:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_248::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_lumberjack:ExitedMarker"
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
    L2_2 = SpawnedPed
    L1_2(L2_2)
  else
    while true do
      L1_2 = L48_1
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
          goto lbl_300
        end
      end
      L8_2 = Config
      L8_2 = L8_2.RequiredJob
      ::lbl_300::
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
                goto lbl_430
              end
            end
            L14_2 = pairs
            L15_2 = L13_2.Coords
            L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
            for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
              L20_2 = L1_2 - L19_2
              L20_2 = #L20_2
              if L20_2 < 50 then
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
          end
          ::lbl_430::
        end
        if L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if not L8_2 then
            goto lbl_449
          end
        end
        if L2_2 then
          L8_2 = LastStation
          if L8_2 == L5_2 then
            L8_2 = LastPart
            if L8_2 == L6_2 then
              L8_2 = LastPartNum
              if L8_2 == L7_2 then
                goto lbl_482
              end
            end
          end
          ::lbl_449::
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
                      goto lbl_474
                    end
                  end
                end
                L8_2 = TriggerEvent
                L9_2 = "17mov_lumberjack:ExitedMarker"
                L10_2 = LastStation
                L11_2 = LastPart
                L12_2 = LastPartNum
                L8_2(L9_2, L10_2, L11_2, L12_2)
                L3_2 = true
              end
            end
          end
          ::lbl_474::
          HasAlreadyEnteredMarker = true
          LastStation = L5_2
          LastPart = L6_2
          LastPartNum = L7_2
          L8_2 = TriggerEvent
          L9_2 = "17mov_lumberjack:EnteredMarker"
          L10_2 = L6_2
          L8_2(L9_2, L10_2)
        end
        ::lbl_482::
        if not L3_2 and not L2_2 then
          L8_2 = HasAlreadyEnteredMarker
          if L8_2 then
            HasAlreadyEnteredMarker = false
            L8_2 = TriggerEvent
            L9_2 = "17mov_lumberjack:ExitedMarker"
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
  end
end
L49_1[L50_1] = L51_1
L49_1 = CreateThread
function L50_1()
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
    L0_2 = Wait
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
      goto lbl_29
    end
  end
  L0_2 = MakeBlip
  L0_2()
  ::lbl_29::
  L0_2 = StartMarkers
  L1_2 = L1_1
  L0_2(L1_2)
end
L49_1(L50_1)
L49_1 = false
L50_1 = _ENV
L51_1 = "MakeBlip"
function L52_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L49_1
  if L0_2 then
    return
  end
  L0_2 = true
  L49_1 = L0_2
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
L50_1[L51_1] = L52_1
L50_1 = _ENV
L51_1 = "DeleteBlip"
function L52_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = false
  L49_1 = L0_2
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
L50_1[L51_1] = L52_1
L50_1 = false
L51_1 = _ENV
L52_1 = "InitalizeScript"
function L53_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L50_1
  if L1_2 then
    return
  end
  while true do
    L1_2 = L40_1
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = GetPlayerData
  L1_2 = L1_2()
  L1_1 = L1_2
  if not A0_2 then
    L1_2 = Wait
    L2_2 = 5500
    L1_2(L2_2)
  end
  L1_2 = true
  L50_1 = L1_2
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
        L1_2 = Wait
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
  L1_2 = TriggerServerCallback
  L2_2 = "17mov_lumberjack:init"
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
L51_1[L52_1] = L53_1
L51_1 = RegisterNetEvent
L52_1 = "QBCore:Client:OnPlayerLoaded"
function L53_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "esx:playerLoaded"
function L53_1()
  local L0_2, L1_2
  L0_2 = InitalizeScript
  L0_2()
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "QBCore:Client:OnJobUpdate"
L51_1(L52_1)
L51_1 = AddEventHandler
L52_1 = "QBCore:Client:OnJobUpdate"
function L53_1(A0_2)
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
    L48_1 = L1_2
  end
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNetEvent
L52_1 = "esx:setJob"
L51_1(L52_1)
L51_1 = AddEventHandler
L52_1 = "esx:setJob"
function L53_1(A0_2)
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
    L1_2 = Wait
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
    L1_2 = L1_1.job
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
    L2_2 = L1_1
    L1_2(L2_2)
  else
    L1_2 = false
    L48_1 = L1_2
  end
end
L51_1(L52_1, L53_1)
L51_1 = AddEventHandler
L52_1 = "17mov_lumberjack:EnteredMarker"
function L53_1(A0_2)
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
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
    L2_2 = ShowHelpNotification
    L3_2 = CurrentActionMsg
    L2_2(L3_2)
    L1_2 = L1_2 + 1
  end
end
L51_1(L52_1, L53_1)
L51_1 = AddEventHandler
L52_1 = "17mov_lumberjack:ExitedMarker"
function L53_1(A0_2)
  local L1_2
  CurrentAction = nil
  CurrentActionMsg = nil
  CurrentActionStation = nil
end
L51_1(L52_1, L53_1)
L51_1 = _ENV
L52_1 = "RegisterCommand"
L51_1 = L51_1[L52_1]
L52_1 = "+17MovLumberjackJobStartMarkerAction"
function L53_1()
  local L0_2, L1_2
end
L54_1 = false
L51_1(L52_1, L53_1, L54_1)
L51_1 = _ENV
L52_1 = "RegisterCommand"
L51_1 = L51_1[L52_1]
L52_1 = "-17MovLumberjackJobStartMarkerAction"
function L53_1()
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
        L1_2 = "17mov_lumberjack:IfPlayerIsHost"
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
      else
        L0_2 = CurrentAction
        if "return_logcar" == L0_2 then
          L0_2 = HideLogCar
          L0_2()
        else
          L0_2 = CurrentAction
          if "withdraw_truck" == L0_2 then
            L0_2 = OpenPanel
            L1_2 = "rentTruck"
            L0_2(L1_2)
          else
            L0_2 = CurrentAction
            if "rent_forklift" == L0_2 then
              L0_2 = OpenPanel
              L1_2 = "rentForklift"
              L0_2(L1_2)
            end
          end
        end
      end
    end
  end
end
L54_1 = false
L51_1(L52_1, L53_1, L54_1)
L51_1 = RegisterNUICallback
L52_1 = "rentForklift"
function L53_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = TriggerServerCallback
  L1_2 = "17mov_lumberjack:CheckIfCanRentForklift"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A0_3 then
      L1_3 = Config
      L1_3 = L1_3.EnableVehicleTeleporting
      if L1_3 then
        L1_3 = DoScreenFadeOut
        L2_3 = 250
        L1_3(L2_3)
        L1_3 = Wait
        L2_3 = 500
        L1_3(L2_3)
      end
      L1_3 = SpawnVehicle
      L2_3 = Config
      L2_3 = L2_3.JobForkliftModel
      L3_3 = Config
      L3_3 = L3_3.SpawnPointForklift
      L4_3 = true
      L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
      L3_3 = "JobForklift"
      L4_3 = TriggerServerEvent
      L5_3 = "17mov_lumberjack:SendVehicleToClients"
      L6_3 = L3_3
      L7_3 = L2_3
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = Config
      L4_3 = L4_3.EnableVehicleTeleporting
      if L4_3 then
        L4_3 = Wait
        L5_3 = 1500
        L4_3(L5_3)
        L4_3 = DoScreenFadeIn
        L5_3 = 250
        L4_3(L5_3)
      end
    end
  end
  L0_2(L1_2, L2_2)
end
L51_1(L52_1, L53_1)
L51_1 = RegisterNUICallback
L52_1 = "rentTruck"
function L53_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = TriggerServerCallback
  L1_2 = "17mov_lumberjack:CheckIfCanWithdrawTruck"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A0_3 then
      L1_3 = Config
      L1_3 = L1_3.EnableVehicleTeleporting
      if L1_3 then
        L1_3 = DoScreenFadeOut
        L2_3 = 250
        L1_3(L2_3)
        L1_3 = Wait
        L2_3 = 500
        L1_3(L2_3)
      end
      L1_3 = SpawnVehicle
      L2_3 = Config
      L2_3 = L2_3.JobTruckModel
      L3_3 = Config
      L3_3 = L3_3.SpawnPointTruck
      L4_3 = true
      L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
      L3_3 = "JobTruck"
      L4_3 = TriggerServerEvent
      L5_3 = "17mov_lumberjack:SendVehicleToClients"
      L6_3 = L3_3
      L7_3 = L2_3
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = Config
      L4_3 = L4_3.EnableVehicleTeleporting
      if L4_3 then
        L4_3 = Wait
        L5_3 = 1500
        L4_3(L5_3)
        L4_3 = DoScreenFadeIn
        L5_3 = 250
        L4_3(L5_3)
      end
    end
  end
  L0_2(L1_2, L2_2)
end
L51_1(L52_1, L53_1)
L51_1 = _ENV
L52_1 = "HideLogCar"
function L53_1()
  local L0_2, L1_2, L2_2, L3_2
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
  L3_2 = L3_2.LegacyJobVehicleModel
  L2_2 = L2_2(L3_2)
  if L1_2 ~= L2_2 then
    L1_2 = GetEntityModel
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = GetHashKey
    L3_2 = Config
    L3_2 = L3_2.JobVehicleModel
    L2_2 = L2_2(L3_2)
    if L1_2 ~= L2_2 then
      goto lbl_54
    end
  end
  L1_2 = GetPedInVehicleSeat
  L2_2 = L0_2
  L3_2 = -1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if L1_2 == L2_2 then
    L1_2 = GetVehicleTrailerVehicle
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if 1 == L1_2 then
      L1_2 = Notify
      L2_2 = Config
      L2_2 = L2_2.Lang
      L2_2 = L2_2.CantWithTrailer
      return L1_2(L2_2)
    end
    L1_2 = DeleteVehicleByCore
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = Config
    L1_2 = L1_2.Locations
    L1_2 = L1_2.ReturnLogCar
    L1_2.turnedOff = true
    L1_2 = TriggerServerEvent
    L2_2 = "17mov_lumberjack:logCarHidden"
    L1_2(L2_2)
  ::lbl_54::
  else
    L1_2 = Notify
    L2_2 = Config
    L2_2 = L2_2.Lang
    L2_2 = L2_2.notDriverOrValidModel
    L1_2(L2_2)
  end
end
L51_1[L52_1] = L53_1
L51_1 = _ENV
L52_1 = "TriggerEvent"
L51_1 = L51_1[L52_1]
L52_1 = "chat:removeSuggestion"
L53_1 = "/+17MovLumberjackJobStartMarkerAction"
L51_1(L52_1, L53_1)
L51_1 = _ENV
L52_1 = "TriggerEvent"
L51_1 = L51_1[L52_1]
L52_1 = "chat:removeSuggestion"
L53_1 = "/-17MovLumberjackJobStartMarkerAction"
L51_1(L52_1, L53_1)
L51_1 = _ENV
L52_1 = "RegisterKeyMapping"
L51_1 = L51_1[L52_1]
L52_1 = "+17MovLumberjackJobStartMarkerAction"
L53_1 = _ENV
L54_1 = "Config"
L53_1 = L53_1[L54_1]
L54_1 = "Lang"
L53_1 = L53_1[L54_1]
L54_1 = "keybind"
L53_1 = L53_1[L54_1]
L54_1 = "keyboard"
L55_1 = "E"
L51_1(L52_1, L53_1, L54_1, L55_1)
L51_1 = {}
L52_1 = _ENV
L53_1 = "OpenDutyMenu"
function L54_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L50_1
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
    L1_2 = "17mov_lumberjack:init"
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
  L20_1 = L0_2
  L0_2 = false
  L1_2 = false
  L2_2 = false
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    while true do
      L0_3 = L20_1
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
      L5_3 = "17mov_lumberjack:GetPlayersNames"
      function L6_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4
        L1_4 = pairs
        L2_4 = A0_4
        L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
        for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
          L8_4 = L6_4.id
          L7_4 = L18_1
          L7_4 = L7_4[L8_4]
          if nil == L7_4 then
            L7_4 = true
            L3_3 = L7_4
            L8_4 = L6_4.id
            L7_4 = L51_1
            L7_4 = L7_4[L8_4]
            if nil ~= L7_4 then
              goto lbl_44
            end
            L8_4 = L6_4.id
            L7_4 = L51_1
            L9_4 = {}
            L10_4 = L6_4.id
            L9_4.id = L10_4
            L10_4 = L6_4.name
            L9_4.name = L10_4
            L7_4[L8_4] = L9_4
            while true do
              L7_4 = L0_2
              if L7_4 then
                break
              end
              L7_4 = Wait
              L8_4 = 10
              L7_4(L8_4)
            end
            L7_4 = SendNUIMessage
            L8_4 = {}
            L8_4.action = "addNewNearbyPlayer"
            L9_4 = L6_4.id
            L8_4.id = L9_4
            L9_4 = L6_4.name
            L8_4.name = L9_4
            L7_4(L8_4)
          else
            A0_4[L5_4] = nil
          end
          ::lbl_44::
        end
        L1_4 = false
        L2_2 = L1_4
        L1_4 = pairs
        L2_4 = L51_1
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
            L9_4 = L51_1
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
      ::lbl_53::
      L4_3 = Wait
      L5_3 = 2500
      L4_3(L5_3)
    end
  end
  L3_2(L4_2)
end
L52_1[L53_1] = L54_1
L52_1 = RegisterNUICallback
L53_1 = "changeClothes"
function L54_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.type
  if "work" == L1_2 then
    L2_2 = true
    L10_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "work"
    L2_2(L3_2)
  else
    L2_2 = false
    L10_1 = L2_2
    L2_2 = ChangeClothes
    L3_2 = "citizen"
    L2_2(L3_2)
  end
end
L52_1(L53_1, L54_1)
L52_1 = RegisterNUICallback
L53_1 = "requestReacted"
function L54_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.boolean
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_lumberjack:ClientReactRequest"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L52_1(L53_1, L54_1)
L52_1 = RegisterNUICallback
L53_1 = "sendRequest"
function L54_1(A0_2)
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
  L2_2 = "17mov_lumberjack:SendRequestToClient_sv"
  L3_2 = tonumber
  L4_2 = A0_2.id
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L52_1(L53_1, L54_1)
L52_1 = RegisterNUICallback
L53_1 = "kickPlayerFromLobby"
function L54_1(A0_2)
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
  L5_2 = L18_1
  L5_2 = L5_2[L1_2]
  L5_2 = L5_2.name
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_lumberjack:KickPlayerFromLobby"
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L52_1(L53_1, L54_1)
L52_1 = RegisterNUICallback
L53_1 = "focusOff"
function L54_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L52_1(L53_1, L54_1)
L52_1 = RegisterNUICallback
L53_1 = "notify"
function L54_1(A0_2)
  local L1_2, L2_2
  L1_2 = Notify
  L2_2 = A0_2.msg
  L1_2(L2_2)
end
L52_1(L53_1, L54_1)
L52_1 = RegisterNetEvent
L53_1 = "17mov_lumberjack:SendRequestToClient_cl"
L52_1(L53_1)
L52_1 = AddEventHandler
L53_1 = "17mov_lumberjack:SendRequestToClient_cl"
function L54_1(A0_2, A1_2)
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
L52_1(L53_1, L54_1)
L52_1 = _ENV
L53_1 = "IsSpawnPointClear"
function L54_1()
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
  L2_2 = L2_2.SpawnPointFlatbed
  L2_2 = L2_2.x
  L3_2 = Config
  L3_2 = L3_2.SpawnPointFlatbed
  L3_2 = L3_2.y
  L4_2 = Config
  L4_2 = L4_2.SpawnPointFlatbed
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
    L10_2 = 3.1
    if not (L9_2 < L10_2) then
      L9_2 = GetEntityCoords
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2 - L1_2
      L9_2 = #L9_2
      L10_2 = 3.1
      if not (L9_2 < L10_2) then
        goto lbl_62
      end
    end
    L9_2 = false
    do return L9_2 end
    ::lbl_62::
  end
  L3_2 = true
  return L3_2
end
L52_1[L53_1] = L54_1
L52_1 = RegisterNUICallback
L53_1 = "startJob"
function L54_1(A0_2)
  local L1_2, L2_2
  L1_2 = OnDuty
  if not L1_2 then
    L1_2 = IsSpawnPointClear
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "17mov_lumberjack:StartJob_sv"
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
L52_1(L53_1, L54_1)
L52_1 = RegisterNUICallback
L53_1 = "leaveLobby"
function L54_1(A0_2)
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
  L3_2 = "17mov_lumberjack:KickPlayerFromLobby"
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
L52_1(L53_1, L54_1)
L52_1 = _ENV
L53_1 = "SpawnVehicle"
function L54_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = PrepeareVehicle
  L5_2()
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L6_2 = RequestModel
  L7_2 = A0_2
  L6_2(L7_2)
  while true do
    L6_2 = HasModelLoaded
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    L6_2 = L6_2 - L5_2
    L7_2 = 25000
    if not (L6_2 < L7_2) then
      break
    end
    L6_2 = RequestModel
    L7_2 = A0_2
    L6_2(L7_2)
    L6_2 = Wait
    L7_2 = 100
    L6_2(L7_2)
  end
  L6_2 = A1_2.w
  if not L6_2 then
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = GetEntityHeading
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = vector4
    L9_2 = A1_2.x
    L10_2 = A1_2.y
    L11_2 = A1_2.z
    L12_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    A1_2 = L8_2
  end
  L6_2 = CreateVehicle
  L7_2 = A0_2
  L8_2 = A1_2.x
  L9_2 = A1_2.y
  L10_2 = A1_2.z
  L11_2 = A1_2.w
  L12_2 = true
  L13_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = 0
  L8_2 = GetGameTimer
  L8_2 = L8_2()
  L5_2 = L8_2
  while 0 == L7_2 or L7_2 == L6_2 do
    L8_2 = NetworkGetNetworkIdFromEntity
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L7_2 = L8_2
    L8_2 = GetGameTimer
    L8_2 = L8_2()
    L8_2 = L8_2 - L5_2
    L9_2 = 5000
    if L8_2 > L9_2 then
      L8_2 = DeleteEntity
      L9_2 = L6_2
      L8_2(L9_2)
      L8_2 = SpawnVehicle
      L9_2 = A0_2
      L10_2 = A1_2
      L11_2 = A2_2
      L12_2 = A3_2
      L13_2 = A4_2
      return L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    end
    L8_2 = Wait
    L9_2 = 100
    L8_2(L9_2)
  end
  L8_2 = NetworkSetObjectForceStaticBlend
  L9_2 = L6_2
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = _ENV
  L9_2 = "SetNetworkEnableVehiclePositionCorrection"
  L8_2 = L8_2[L9_2]
  L9_2 = L6_2
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = NetworkUseHighPrecisionBlending
  L9_2 = L7_2
  L10_2 = true
  L8_2(L9_2, L10_2)
  if A2_2 then
    L8_2 = Config
    L8_2 = L8_2.EnableVehicleTeleporting
    if L8_2 then
      L8_2 = TaskWarpPedIntoVehicle
      L9_2 = PlayerPedId
      L9_2 = L9_2()
      L10_2 = L6_2
      L11_2 = -1
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  if not A4_2 then
    L8_2 = SetEntityAsMissionEntity
    L9_2 = L6_2
    L10_2 = true
    L11_2 = true
    L8_2(L9_2, L10_2, L11_2)
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
    L8_2 = SetVehicleDirtLevel
    L9_2 = vehicle
    L10_2 = 0.0
    L8_2(L9_2, L10_2)
    L8_2 = SetModelAsNoLongerNeeded
    L9_2 = A0_2
    L8_2(L9_2)
    if not A3_2 then
      L8_2 = SetVehicle
      L9_2 = L6_2
      L8_2(L9_2)
    end
  else
    L8_2 = SetVehicleDamageModifier
    L9_2 = L6_2
    L10_2 = 0
    L8_2(L9_2, L10_2)
  end
  L8_2 = L6_2
  L9_2 = L7_2
  return L8_2, L9_2
end
L52_1[L53_1] = L54_1
L52_1 = _ENV
L53_1 = "AddBlip"
function L54_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = AddBlipForCoord
  L6_2 = A2_2.x
  L7_2 = A2_2.y
  L8_2 = A2_2.z
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if nil ~= A1_2 then
    L6_2 = SetBlipSprite
    L7_2 = L5_2
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
  end
  if nil == A4_2 then
    A4_2 = 0.6
  end
  L6_2 = SetBlipDisplay
  L7_2 = L5_2
  L8_2 = 4
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipScale
  L7_2 = L5_2
  L8_2 = A4_2
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipColour
  L7_2 = L5_2
  L8_2 = A3_2
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipAsShortRange
  L7_2 = L5_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = BeginTextCommandSetBlipName
  L7_2 = "STRING"
  L6_2(L7_2)
  L6_2 = AddTextComponentString
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = EndTextCommandSetBlipName
  L7_2 = L5_2
  L6_2(L7_2)
  return L5_2
end
L52_1[L53_1] = L54_1
L52_1 = RegisterNUICallback
L53_1 = "tutorialClosed"
function L54_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = false
  L8_1 = L0_2
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
L52_1(L53_1, L54_1)
L52_1 = RegisterNetEvent
L53_1 = "17mov_Lumberjack:DeleteThisID"
function L54_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  L1_2.isAvalible = false
  L1_2 = RemoveBlip
  L2_2 = L2_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.blip
  L1_2(L2_2)
end
L52_1(L53_1, L54_1)
L52_1 = RegisterNetEvent
L53_1 = "17mov_Lumberjack:RespawnThisTree"
function L54_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  L1_2.isAvalible = true
  while true do
    L2_2 = HasModelLoaded
    L3_2 = Config
    L3_2 = L3_2.Props
    L3_2 = L3_2.tree
    L3_2 = L3_2.hash
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = RequestModel
    L3_2 = Config
    L3_2 = L3_2.Props
    L3_2 = L3_2.tree
    L3_2 = L3_2.hash
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
  end
  L2_2 = CreateObject
  L3_2 = Config
  L3_2 = L3_2.Props
  L3_2 = L3_2.tree
  L3_2 = L3_2.hash
  L4_2 = L1_2.coords
  L4_2 = L4_2.x
  L5_2 = L1_2.coords
  L5_2 = L5_2.y
  L6_2 = L1_2.coords
  L6_2 = L6_2.z
  L7_2 = Config
  L7_2 = L7_2.Props
  L7_2 = L7_2.tree
  L7_2 = L7_2.zOffset
  L6_2 = L6_2 + L7_2
  L7_2 = false
  L8_2 = true
  L9_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2.obj = L2_2
  L2_2 = SetEntityVisible
  L3_2 = L1_2.obj
  L4_2 = false
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = FreezeEntityPosition
  L3_2 = L1_2.obj
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityVisible
  L3_2 = L1_2.obj
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L52_1(L53_1, L54_1)
L52_1 = _ENV
L53_1 = "CutDownTree"
function L54_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L33_1
  if L1_2 then
    return
  end
  L1_2 = CurrentHoldingController
  if L1_2 then
    return
  end
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  L2_2 = CurrentLogCounter
  if L2_2 >= 12 then
    L2_2 = Notify
    L3_2 = Config
    L3_2 = L3_2.Lang
    L3_2 = L3_2.tooManyLogs
    L2_2(L3_2)
  else
    L2_2 = true
    L33_1 = L2_2
    L2_2 = ChainsawAnimation
    L3_2 = L1_2.obj
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = TriggerServerEvent
      L3_2 = "17mov_Lumberjack:disableThisTree"
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
      L22_1 = A0_2
      L2_2 = GetEntityHeading
      L3_2 = PlayerPedId
      L3_2, L4_2, L5_2, L6_2 = L3_2()
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      L3_2 = TriggerServerEvent
      L4_2 = "17mov_lumberjack:StartFallAnim"
      L5_2 = A0_2
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = StartFallAnim
      L4_2 = L1_2.obj
      L5_2 = false
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = 0
      L22_1 = L3_2
    end
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = false
      L33_1 = L0_3
    end
    L2_2(L3_2)
  end
end
L52_1[L53_1] = L54_1
L52_1 = RegisterNetEvent
L53_1 = "17mov_Lumberjack:DeleteEntity"
function L54_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if "skips" == A0_2 then
    L2_2 = SkipsSpawnPoints
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      L2_2 = SkipsSpawnPoints
      L2_2 = L2_2[A1_2]
      L2_2.hasBeenLifted = true
      L2_2 = SkipsSpawnPoints
      L2_2 = L2_2[A1_2]
      L2_2.currActiveSkip = false
      L2_2 = DoesEntityExist
      L3_2 = SkipsSpawnPoints
      L3_2 = L3_2[A1_2]
      L3_2 = L3_2.chipsObj
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = DeleteEntity
        L3_2 = SkipsSpawnPoints
        L3_2 = L3_2[A1_2]
        L3_2 = L3_2.chipsObj
        L2_2(L3_2)
      else
        L2_2 = GetGamePool
        L3_2 = "CObject"
        L2_2 = L2_2(L3_2)
        L3_2 = 1
        L4_2 = #L2_2
        L5_2 = 1
        for L6_2 = L3_2, L4_2, L5_2 do
          L7_2 = L2_2[L6_2]
          L8_2 = IsEntityAttachedToEntity
          L9_2 = L7_2
          L10_2 = SkipsSpawnPoints
          L10_2 = L10_2[A1_2]
          L10_2 = L10_2.obj
          L8_2 = L8_2(L9_2, L10_2)
          if L8_2 then
            L8_2 = DeleteEntity
            L9_2 = L7_2
            L8_2(L9_2)
          end
        end
      end
      L2_2 = DeleteEntity
      L3_2 = SkipsSpawnPoints
      L3_2 = L3_2[A1_2]
      L3_2 = L3_2.obj
      L2_2(L3_2)
      L2_2 = CreateThread
      function L3_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
        L0_3 = Wait
        L1_3 = 3500
        L0_3(L1_3)
        L0_3 = pairs
        L1_3 = SkipsSpawnPoints
        L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
        for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
          L6_3 = L5_3.currActiveSkip
          if not L6_3 then
            L6_3 = A1_2
            if L4_3 ~= L6_3 then
              L6_3 = L5_3.hasBeenLifted
              if nil == L6_3 then
                L6_3 = SetEntityCoords
                L7_3 = L5_3.obj
                L8_3 = SkipsSpawnPoints
                L8_3 = L8_3[1]
                L8_3 = L8_3.coords
                L8_3 = L8_3.x
                L9_3 = SkipsSpawnPoints
                L9_3 = L9_3[1]
                L9_3 = L9_3.coords
                L9_3 = L9_3.y
                L10_3 = SkipsSpawnPoints
                L10_3 = L10_3[1]
                L10_3 = L10_3.coords
                L10_3 = L10_3.z
                L11_3 = false
                L12_3 = false
                L13_3 = false
                L14_3 = false
                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                L6_3 = SetEntityRotation
                L7_3 = L5_3.obj
                L8_3 = SkipsSpawnPoints
                L8_3 = L8_3[1]
                L8_3 = L8_3.rotation
                L8_3 = L8_3.x
                L9_3 = SkipsSpawnPoints
                L9_3 = L9_3[1]
                L9_3 = L9_3.rotation
                L9_3 = L9_3.y
                L10_3 = SkipsSpawnPoints
                L10_3 = L10_3[1]
                L10_3 = L10_3.rotation
                L10_3 = L10_3.z
                L11_3 = 0
                L12_3 = false
                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                L6_3 = SetEntityCollision
                L7_3 = L5_3.obj
                L8_3 = true
                L9_3 = true
                L6_3(L7_3, L8_3, L9_3)
                L5_3.currActiveSkip = true
                break
              end
            end
          end
        end
      end
      L2_2(L3_2)
    end
  elseif "planks" == A0_2 then
    L2_2 = PlanksSpawnPoints
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      L2_2 = DeleteEntity
      L3_2 = PlanksSpawnPoints
      L3_2 = L3_2[A1_2]
      L3_2 = L3_2.obj
      L2_2(L3_2)
      L2_2 = PlanksSpawnPoints
      L2_2 = L2_2[A1_2]
      L2_2.obj = nil
      L2_2 = pairs
      L3_2 = PlanksSpawnPoints
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = L7_2.aboveId
        if nil ~= L8_2 then
          L8_2 = L7_2.aboveId
          if L8_2 == A1_2 then
            L7_2.haveAbove = false
          end
        end
      end
    end
  end
end
L52_1(L53_1, L54_1)
L52_1 = RegisterNetEvent
L53_1 = "17mov_Lumberjack:RemoteCreated"
function L54_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if nil == A0_2 then
    return
  end
  while true do
    L1_2 = Cranes
    if nil ~= L1_2 then
      L1_2 = Cranes
      L1_2 = L1_2[A0_2]
      if nil ~= L1_2 then
        L1_2 = Cranes
        L1_2 = L1_2[A0_2]
        L1_2 = L1_2.crane
        if nil ~= L1_2 then
          break
        end
      end
    end
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L15_1 = A0_2
  while true do
    L1_2 = DoesEntityExist
    L2_2 = Cranes
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.crane
    L2_2 = L2_2.control
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 10
    L1_2(L2_2)
  end
  L1_2 = Cranes
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.crane
  L1_2 = L1_2.control
  L2_2 = SetEntityDrawOutlineColor
  L3_2 = 171
  L4_2 = 91
  L5_2 = 41
  L6_2 = 200
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetEntityDrawOutlineShader
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = SetEntityDrawOutline
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L52_1(L53_1, L54_1)
L52_1 = {}
L53_1 = RegisterNetEvent
L54_1 = "17mov_lumberjack:StartJob_cl"
L53_1(L54_1)
L53_1 = AddEventHandler
L54_1 = "17mov_lumberjack:StartJob_cl"
function L55_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  CurrentLogCounter = 0
  L5_2 = Config
  L5_2 = L5_2.EnableVehicleLegacyMode
  if L5_2 then
    L5_2 = Config
    L5_2 = L5_2.Locations
    L5_2 = L5_2.ReturnLogCar
    L5_2.turnedOff = false
  end
  PlanksProcessed = false
  L5_2 = false
  L23_1 = L5_2
  L5_2 = 0
  L28_1 = L5_2
  L5_2 = 0
  L13_1 = L5_2
  L5_2 = 0
  L14_1 = L5_2
  L5_2 = 0
  L29_1 = L5_2
  L5_2 = false
  L25_1 = L5_2
  L5_2 = {}
  L30_1 = L5_2
  L5_2 = pairs
  L6_2 = Config
  L6_2 = L6_2.PlanksAttachments
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L30_1
    L12_2 = {}
    L12_2.coords = L10_2
    L11_2[L9_2] = L12_2
  end
  L5_2 = -1937513394
  while true do
    L6_2 = HasModelLoaded
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = RequestModel
    L7_2 = L5_2
    L6_2(L7_2)
    L6_2 = Wait
    L7_2 = 100
    L6_2(L7_2)
  end
  L6_2 = -195941584
  while true do
    L7_2 = HasModelLoaded
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      break
    end
    L7_2 = RequestModel
    L8_2 = L6_2
    L7_2(L8_2)
    L7_2 = Wait
    L8_2 = 100
    L7_2(L8_2)
  end
  OnDuty = true
  L7_2 = DeepCopy
  L8_2 = L43_1
  L7_2 = L7_2(L8_2)
  SkipsSpawnPoints = L7_2
  L7_2 = pairs
  L8_2 = SkipsSpawnPoints
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = nil
    L14_2 = nil
    while 0 ~= L13_2 do
      L15_2 = GetClosestLog
      L16_2 = vec3
      L17_2 = L12_2.coords
      L17_2 = L17_2.x
      L18_2 = L12_2.coords
      L18_2 = L18_2.y
      L19_2 = L12_2.coords
      L19_2 = L19_2.z
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L17_2 = 1.0
      L18_2 = L5_2
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L13_2 = L15_2
      L15_2 = GetClosestLog
      L16_2 = vec3
      L17_2 = L12_2.coords
      L17_2 = L17_2.x
      L18_2 = L12_2.coords
      L18_2 = L18_2.y
      L19_2 = L12_2.coords
      L19_2 = L19_2.z
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L17_2 = 3.0
      L18_2 = -195941584
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L14_2 = L15_2
      if 0 ~= L13_2 then
        L15_2 = DeleteEntity
        L16_2 = L13_2
        L15_2(L16_2)
      end
      if 0 ~= L14_2 then
        L15_2 = DeleteEntity
        L16_2 = L14_2
        L15_2(L16_2)
      end
      L15_2 = Wait
      L16_2 = 100
      L15_2(L16_2)
    end
    L15_2 = CreateObject
    L16_2 = L5_2
    L17_2 = L12_2.coords
    L17_2 = L17_2.x
    L18_2 = L12_2.coords
    L18_2 = L18_2.y
    L19_2 = L12_2.coords
    L19_2 = L19_2.z
    L20_2 = false
    L21_2 = true
    L22_2 = true
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L12_2.obj = L15_2
    L15_2 = FreezeEntityPosition
    L16_2 = L12_2.obj
    L17_2 = true
    L15_2(L16_2, L17_2)
    L15_2 = SetEntityRotation
    L16_2 = L12_2.obj
    L17_2 = L12_2.rotation
    L17_2 = L17_2.x
    L18_2 = L12_2.rotation
    L18_2 = L18_2.y
    L19_2 = L12_2.rotation
    L19_2 = L19_2.z
    L20_2 = 0
    L21_2 = false
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L12_2.percentage = 0
    L12_2.liftProgress = 0
    L15_2 = CreateObject
    L16_2 = L6_2
    L17_2 = L12_2.coords
    L17_2 = L17_2.x
    L18_2 = L12_2.coords
    L18_2 = L18_2.y
    L19_2 = L12_2.coords
    L19_2 = L19_2.z
    L20_2 = false
    L21_2 = true
    L22_2 = true
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L12_2.chipsObj = L15_2
    L15_2 = FreezeEntityPosition
    L16_2 = L12_2.chipsObj
    L17_2 = true
    L15_2(L16_2, L17_2)
    L15_2 = SetEntityRotation
    L16_2 = L12_2.chipsObj
    L17_2 = L12_2.rotation
    L17_2 = L17_2.x
    L18_2 = L12_2.rotation
    L18_2 = L18_2.y
    L19_2 = L12_2.rotation
    L19_2 = L19_2.z
    L20_2 = 0
    L21_2 = false
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L15_2 = AttachEntityToEntity
    L16_2 = L12_2.chipsObj
    L17_2 = L12_2.obj
    L18_2 = 0
    L19_2 = 0.027
    L20_2 = 0.076
    L21_2 = 0.16
    L22_2 = 0.0
    L23_2 = 0.0
    L24_2 = 0.0
    L25_2 = false
    L26_2 = false
    L27_2 = true
    L28_2 = false
    L29_2 = 2
    L30_2 = true
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    L15_2 = vec3
    L16_2 = 0.027
    L17_2 = 0.076
    L18_2 = 0.16
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L12_2.chipsAttachOffset = L15_2
    L15_2 = Entity
    L16_2 = L12_2.obj
    L15_2 = L15_2(L16_2)
    L15_2 = L15_2.state
    L15_2.myIndex = L11_2
    L15_2 = Entity
    L16_2 = L12_2.obj
    L15_2 = L15_2(L16_2)
    L15_2 = L15_2.state
    L15_2.type = "skips"
  end
  L7_2 = pairs
  L8_2 = Config
  L8_2 = L8_2.Stations
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = 1
    L14_2 = #L12_2
    L15_2 = 1
    for L16_2 = L13_2, L14_2, L15_2 do
      L17_2 = L12_2[L16_2]
      L18_2 = AddBlip
      L19_2 = Config
      L19_2 = L19_2.BlipsStyles
      L19_2 = L19_2[L11_2]
      L19_2 = L19_2.label
      L20_2 = Config
      L20_2 = L20_2.BlipsStyles
      L20_2 = L20_2[L11_2]
      L20_2 = L20_2.sprite
      L21_2 = L12_2[L16_2]
      L21_2 = L21_2.coords
      L22_2 = Config
      L22_2 = L22_2.BlipsStyles
      L22_2 = L22_2[L11_2]
      L22_2 = L22_2.color
      L23_2 = Config
      L23_2 = L23_2.BlipsStyles
      L23_2 = L23_2[L11_2]
      L23_2 = L23_2.scale
      L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
      L17_2.blip = L18_2
    end
  end
  L7_2 = pairs
  L8_2 = Config
  L8_2 = L8_2.TrailerLogsAttachments
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L38_1
    L14_2 = {}
    L14_2.coords = L12_2
    L13_2[L11_2] = L14_2
  end
  L7_2 = pairs
  L8_2 = PlanksSpawnPoints
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L12_2.obj = nil
  end
  L7_2 = Config
  L7_2 = L7_2.EnableVehicleLegacyMode
  if L7_2 then
    L7_2 = Config
    L7_2 = L7_2.Locations
    L7_2 = L7_2.WithdrawTruck
    L8_2 = AddBlip
    L9_2 = Config
    L9_2 = L9_2.BlipsStyles
    L9_2 = L9_2.withdrawTruck
    L9_2 = L9_2.label
    L10_2 = Config
    L10_2 = L10_2.BlipsStyles
    L10_2 = L10_2.withdrawTruck
    L10_2 = L10_2.sprite
    L11_2 = Config
    L11_2 = L11_2.Locations
    L11_2 = L11_2.WithdrawTruck
    L11_2 = L11_2.Coords
    L11_2 = L11_2[1]
    L12_2 = Config
    L12_2 = L12_2.BlipsStyles
    L12_2 = L12_2.withdrawTruck
    L12_2 = L12_2.color
    L13_2 = Config
    L13_2 = L13_2.BlipsStyles
    L13_2 = L13_2.withdrawTruck
    L13_2 = L13_2.scale
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L7_2.blip = L8_2
    L7_2 = Config
    L7_2 = L7_2.Locations
    L7_2 = L7_2.rentForklift
    L8_2 = AddBlip
    L9_2 = Config
    L9_2 = L9_2.BlipsStyles
    L9_2 = L9_2.rentForklift
    L9_2 = L9_2.label
    L10_2 = Config
    L10_2 = L10_2.BlipsStyles
    L10_2 = L10_2.rentForklift
    L10_2 = L10_2.sprite
    L11_2 = Config
    L11_2 = L11_2.Locations
    L11_2 = L11_2.rentForklift
    L11_2 = L11_2.Coords
    L11_2 = L11_2[1]
    L12_2 = Config
    L12_2 = L12_2.BlipsStyles
    L12_2 = L12_2.rentForklift
    L12_2 = L12_2.color
    L13_2 = Config
    L13_2 = L13_2.BlipsStyles
    L13_2 = L13_2.rentForklift
    L13_2 = L13_2.scale
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L7_2.blip = L8_2
  end
  L7_2 = pairs
  L8_2 = L2_1
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L12_2.isAvalible
    if L13_2 then
      L13_2 = AddBlip
      L14_2 = Config
      L14_2 = L14_2.BlipsStyles
      L14_2 = L14_2.treeBlip
      L14_2 = L14_2.label
      L15_2 = Config
      L15_2 = L15_2.BlipsStyles
      L15_2 = L15_2.treeBlip
      L15_2 = L15_2.sprite
      L16_2 = L12_2.coords
      L17_2 = Config
      L17_2 = L17_2.BlipsStyles
      L17_2 = L17_2.treeBlip
      L17_2 = L17_2.color
      L18_2 = Config
      L18_2 = L18_2.BlipsStyles
      L18_2 = L18_2.treeBlip
      L18_2 = L18_2.scale
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
      L12_2.blip = L13_2
    end
  end
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3
    L0_3 = L10_1
    if not L0_3 then
      L0_3 = Config
      L0_3 = L0_3.RequireWorkClothes
      if L0_3 then
        L0_3 = true
        L10_1 = L0_3
        L0_3 = ChangeClothes
        L1_3 = "work"
        L0_3(L1_3)
      end
    end
  end
  L7_2(L8_2)
  L7_2 = 1
  L8_2 = Config
  L8_2 = L8_2.ForksAttachment
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = Config
    L11_2 = L11_2.ForksAttachment
    L11_2 = L11_2[L10_2]
    L11_2.obj = nil
  end
  L7_2 = 1
  L8_2 = Config
  L8_2 = L8_2.ForksAttachment2
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = Config
    L11_2 = L11_2.ForksAttachment2
    L11_2 = L11_2[L10_2]
    L11_2.obj = nil
  end
  L7_2 = isBack
  if not L7_2 then
    L7_2 = ShowTutorial
    L8_2 = Config
    L8_2 = L8_2.EnableVehicleLegacyMode
    if L8_2 then
      L8_2 = Config
      L8_2 = L8_2.Lang
      L8_2 = L8_2.startingTutorialLegacy
      if L8_2 then
        goto lbl_396
      end
    end
    L8_2 = Config
    L8_2 = L8_2.Lang
    L8_2 = L8_2.startingTutorial
    ::lbl_396::
    L7_2(L8_2)
  end
  L7_2 = {}
  if A0_2 == A1_2 then
    L8_2 = Config
    L8_2 = L8_2.EnableVehicleLegacyMode
    if L8_2 then
      L8_2 = {}
      L9_2 = Config
      L9_2 = L9_2.LegacyJobVehicleModel
      L8_2.model = L9_2
      L9_2 = Config
      L9_2 = L9_2.SpawnPoint
      L8_2.coords = L9_2
      L8_2.teleport = true
      L7_2.JobVehicle = L8_2
      L8_2 = {}
      L9_2 = Config
      L9_2 = L9_2.LegacyJobFlatbedModel
      L8_2.model = L9_2
      L9_2 = Config
      L9_2 = L9_2.SpawnPointFlatbed
      L8_2.coords = L9_2
      L8_2.teleport = false
      L8_2.setFuel = true
      L8_2.isTrailer = true
      L7_2.JobFlatbed = L8_2
    else
      L8_2 = {}
      L9_2 = Config
      L9_2 = L9_2.JobVehicleModel
      L8_2.model = L9_2
      L9_2 = Config
      L9_2 = L9_2.SpawnPoint
      L8_2.coords = L9_2
      L8_2.teleport = true
      L7_2.JobVehicle = L8_2
    end
  end
  if 4 == A2_2 and A4_2 == A1_2 then
    L8_2 = Config
    L8_2 = L8_2.EnableVehicleLegacyMode
    if L8_2 then
      L8_2 = {}
      L9_2 = Config
      L9_2 = L9_2.LegacyJobVehicleModel
      L8_2.model = L9_2
      L9_2 = Config
      L9_2 = L9_2.SpawnPoint2
      L8_2.coords = L9_2
      L8_2.teleport = true
      L7_2.JobVehicle2 = L8_2
    end
  end
  if A3_2 == A1_2 then
    L8_2 = {}
    L9_2 = Config
    L9_2 = L9_2.PickupModel
    L8_2.model = L9_2
    L9_2 = Config
    L9_2 = L9_2.SpawnPointPickup
    L8_2.coords = L9_2
    L8_2.teleport = true
    L7_2.JobPickup = L8_2
  end
  L8_2 = Config
  L8_2 = L8_2.EnableVehicleTeleporting
  if L8_2 then
    L8_2 = isBack
    if not L8_2 then
      L8_2 = DoScreenFadeOut
      L9_2 = 300
      L8_2(L9_2)
      L8_2 = Wait
      L9_2 = 500
      L8_2(L9_2)
    end
  end
  L8_2 = pairs
  L9_2 = L7_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = SpawnVehicle
    L15_2 = L13_2.model
    L16_2 = L13_2.coords
    L17_2 = L13_2.teleport
    L18_2 = L13_2.setFuel
    L19_2 = L13_2.isTrailer
    L14_2, L15_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
    L16_2 = SetHornEnabled
    L17_2 = L14_2
    L18_2 = false
    L16_2(L17_2, L18_2)
    L16_2 = TriggerServerEvent
    L17_2 = "17mov_lumberjack:SendVehicleToClients"
    L18_2 = L12_2
    L19_2 = L15_2
    L16_2(L17_2, L18_2, L19_2)
    L16_2 = Config
    L16_2 = L16_2.EnableVehicleLegacyMode
    if not L16_2 and "JobVehicle" == L12_2 or "JobVehicle2" == L12_2 then
      L16_2 = TriggerServerEvent
      L17_2 = "17mov_Lumberjack:SpawnCrane"
      L18_2 = L15_2
      L16_2(L17_2, L18_2)
    end
  end
  L8_2 = Wait
  L9_2 = 1500
  L8_2(L9_2)
  L8_2 = DoScreenFadeIn
  L9_2 = 300
  L8_2(L9_2)
  while true do
    L8_2 = L34_1.JobVehicle
    if nil ~= L8_2 then
      L8_2 = L34_1.JobVehicle
      if 0 ~= L8_2 then
        break
      end
    end
    L8_2 = Wait
    L9_2 = 100
    L8_2(L9_2)
  end
  L8_2 = Config
  L8_2 = L8_2.EnableVehicleLegacyMode
  if L8_2 then
    while true do
      L8_2 = L34_1.JobFlatbed
      if nil ~= L8_2 then
        L8_2 = L34_1.JobFlatbed
        if 0 ~= L8_2 then
          break
        end
      end
      L8_2 = Wait
      L9_2 = 100
      L8_2(L9_2)
    end
  end
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = 1000
      L1_3 = CurrentHoldingController
      if nil ~= L1_3 then
        L1_3 = IsDead
        L2_3 = PlayerPedId
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L2_3()
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
        if L1_3 then
          L1_3 = pairs
          L2_3 = Cranes
          L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
          for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
            L7_3 = L6_3.crane
            L8_3 = L7_3.id
            L9_3 = CurrentHoldingController
            if L8_3 == L9_3 then
              L7_3.controling = false
              CurrentHoldingController = nil
              L6_3.hasControl = nil
              L8_3 = L7_3.UpdateCrane
              L8_3()
              L8_3 = TriggerServerEvent
              L9_3 = "17mov_Lumberjack:RunCraneAction"
              L10_3 = L7_3.id
              L11_3 = "Fold"
              L8_3(L9_3, L10_3, L11_3)
              L8_3 = L7_3.Fold
              L8_3()
            end
          end
        end
      end
      L1_3 = Wait
      L2_3 = L0_3
      L1_3(L2_3)
    end
  end
  L8_2(L9_2)
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
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
      L3_3 = GetVehiclePedIsIn
      L4_3 = L1_3
      L5_3 = false
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = GetGamePool
      L5_3 = "CObject"
      L4_3 = L4_3(L5_3)
      L5_3 = {}
      L6_3 = {}
      L7_3 = -1436027651
      L6_3[L7_3] = "control"
      L7_3 = 91512090
      L6_3[L7_3] = "base"
      L7_3 = -844957414
      L6_3[L7_3] = "boom"
      L7_3 = -203303706
      L6_3[L7_3] = "stick1"
      L7_3 = 103545210
      L6_3[L7_3] = "stick2"
      L7_3 = 1135801411
      L6_3[L7_3] = "stick3"
      L7_3 = -1277810458
      L6_3[L7_3] = "hook"
      L7_3 = 2069585976
      L6_3[L7_3] = "grab1"
      L7_3 = 687258484
      L6_3[L7_3] = "grab2"
      L7_3 = 1
      L8_3 = #L4_3
      L9_3 = 1
      for L10_3 = L7_3, L8_3, L9_3 do
        L11_3 = L4_3[L10_3]
        L12_3 = DecorGetBool
        L13_3 = L11_3
        L14_3 = "entityOnForks"
        L12_3 = L12_3(L13_3, L14_3)
        L13_3 = IsEntityVisible
        L14_3 = L11_3
        L13_3 = L13_3(L14_3)
        if not L13_3 and L12_3 then
          L13_3 = IsEntityAttachedToAnyObject
          L14_3 = L11_3
          L13_3 = L13_3(L14_3)
          if not L13_3 then
            L13_3 = IsEntityAttachedToAnyVehicle
            L14_3 = L11_3
            L13_3 = L13_3(L14_3)
            if not L13_3 then
              L13_3 = IsEntityAttachedToAnyPed
              L14_3 = L11_3
              L13_3 = L13_3(L14_3)
              if not L13_3 then
                L13_3 = DeleteEntity
                L14_3 = L11_3
                L13_3(L14_3)
              end
            end
          end
        end
        L13_3 = GetEntityModel
        L14_3 = L11_3
        L13_3 = L13_3(L14_3)
        L14_3 = GetGameTimer
        L14_3 = L14_3()
        if -195941584 == L13_3 then
          L15_3 = GetEntityAttachedTo
          L16_3 = L11_3
          L15_3 = L15_3(L16_3)
          L16_3 = GetEntityModel
          L17_3 = L15_3
          L16_3 = L16_3(L17_3)
          if -1937513394 ~= L16_3 and 1242069632 ~= L16_3 then
            L17_3 = DeleteEntity
            L18_3 = L11_3
            L17_3(L18_3)
          end
        end
        L15_3 = DecorGetBool
        L16_3 = L11_3
        L17_3 = "isCraneContent"
        L15_3 = L15_3(L16_3, L17_3)
        if L15_3 then
          L15_3 = IsEntityAttachedToAnyVehicle
          L16_3 = L11_3
          L15_3 = L15_3(L16_3)
          if not L15_3 then
            L15_3 = IsEntityAttachedToAnyObject
            L16_3 = L11_3
            L15_3 = L15_3(L16_3)
          end
          if L15_3 then
            L16_3 = GetEntityAttachedTo
            L17_3 = L11_3
            L16_3 = L16_3(L17_3)
            L17_3 = GetEntityModel
            L18_3 = L16_3
            L17_3 = L17_3(L18_3)
            if 0 ~= L16_3 and -184773924 ~= L17_3 and -1937513394 ~= L17_3 and 1242069632 ~= L17_3 then
              L18_3 = DeleteEntity
              L19_3 = L11_3
              L18_3(L19_3)
            end
          else
            L16_3 = DeleteEntity
            L17_3 = L11_3
            L16_3(L17_3)
          end
        end
        L15_3 = L6_3[L13_3]
        if L15_3 then
          L15_3 = false
          L16_3 = pairs
          L17_3 = Cranes
          L16_3, L17_3, L18_3, L19_3 = L16_3(L17_3)
          for L20_3, L21_3 in L16_3, L17_3, L18_3, L19_3 do
            L22_3 = L21_3.crane
            if L22_3 then
              L22_3 = L21_3.crane
              L23_3 = L6_3[L13_3]
              L22_3 = L22_3[L23_3]
              if L22_3 then
                L15_3 = true
              end
            end
          end
          if not L15_3 then
            L16_3 = DeleteEntity
            L17_3 = L11_3
            L16_3(L17_3)
          end
        end
        if 0 == L3_3 then
          L15_3 = GetEntityModel
          L16_3 = L11_3
          L15_3 = L15_3(L16_3)
          L16_3 = Config
          L16_3 = L16_3.Props
          L16_3 = L16_3.logs
          L16_3 = L16_3.hash
          if L15_3 == L16_3 and not L12_3 then
            L15_3 = GetEntityCoords
            L16_3 = L11_3
            L15_3 = L15_3(L16_3)
            L16_3 = L2_3 - L15_3
            L16_3 = #L16_3
            if L16_3 < 4.0 then
              L16_3 = DrawText3Ds
              L17_3 = L15_3.x
              L18_3 = L15_3.y
              L19_3 = L15_3.z
              L20_3 = Config
              L20_3 = L20_3.Lang
              L20_3 = L20_3.useLogLoader
              L16_3(L17_3, L18_3, L19_3, L20_3)
              L0_3 = 0
            end
          end
        end
      end
      if 0 == L3_3 then
        L7_3 = pairs
        L8_3 = SkipsSpawnPoints
        L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
        for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
          L13_3 = L12_3.currActiveSkip
          if L13_3 then
            L13_3 = L12_3.percentage
            if L13_3 > 0 then
              L13_3 = GetEntityCoords
              L14_3 = L12_3.obj
              L13_3 = L13_3(L14_3)
              L14_3 = L2_3 - L13_3
              L14_3 = #L14_3
              if L14_3 < 4.0 then
                L14_3 = ChipsThreadRunning
                if not L14_3 then
                  L14_3 = L25_1
                  if not L14_3 then
                    goto lbl_223
                  end
                end
                L14_3 = DrawText3Ds
                L15_3 = L13_3.x
                L16_3 = L13_3.y
                L17_3 = L13_3.z
                L17_3 = L17_3 + 1.5
                L18_3 = Config
                L18_3 = L18_3.Lang
                L18_3 = L18_3.WaitUntilFullLoad
                L14_3(L15_3, L16_3, L17_3, L18_3)
                goto lbl_233
                ::lbl_223::
                L14_3 = DrawText3Ds
                L15_3 = L13_3.x
                L16_3 = L13_3.y
                L17_3 = L13_3.z
                L17_3 = L17_3 + 1.5
                L18_3 = Config
                L18_3 = L18_3.Lang
                L18_3 = L18_3.useJobTractor
                L14_3(L15_3, L16_3, L17_3, L18_3)
                ::lbl_233::
                L0_3 = 0
              end
            end
          end
        end
      end
      L7_3 = Wait
      L8_3 = L0_3
      L7_3(L8_3)
    end
  end
  L8_2(L9_2)
  L8_2 = 0
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = 1000
      L1_3 = GetEntityCoords
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
      L2_3 = 0
      L3_3 = 2.0
      L4_3 = pairs
      L5_3 = L2_1
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
      for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
        L10_3 = L9_3.isAvalible
        if L10_3 then
          L10_3 = L9_3.coords
          L10_3 = L1_3 - L10_3
          L10_3 = #L10_3
          if L3_3 > L10_3 then
            L11_3 = L8_3
            L3_3 = L10_3
            L2_3 = L11_3
          end
        end
      end
      L4_3 = Config
      L4_3 = L4_3.UseTarget
      if L4_3 then
        L4_3 = L8_2
        if L2_3 ~= L4_3 then
          L4_3 = DeleteTreeFromTarget
          L5_3 = L8_2
          L4_3(L5_3)
          L5_3 = L8_2
          L4_3 = L52_1
          L4_3 = L4_3[L5_3]
          if L4_3 then
            L5_3 = L8_2
            L4_3 = L52_1
            L4_3[L5_3] = nil
          end
        end
      end
      if 0 ~= L2_3 then
        L4_3 = L2_1
        L4_3 = L4_3[L2_3]
        L5_3 = Config
        L5_3 = L5_3.UseTarget
        if false == L5_3 then
          L5_3 = CurrentHoldingController
          if nil == L5_3 then
            L0_3 = 0
            L5_3 = GetOffsetFromEntityInWorldCoords
            L6_3 = L4_3.obj
            L7_3 = 0.0
            L8_3 = 0.05
            L9_3 = 0.0
            L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
            L6_3 = DrawMarker
            L7_3 = 6
            L8_3 = L5_3.x
            L9_3 = L5_3.y
            L10_3 = L1_3.z
            L11_3 = 0.0
            L12_3 = 0.0
            L13_3 = 0.0
            L14_3 = -90
            L15_3 = 0.0
            L16_3 = 0.0
            L17_3 = 1.3
            L18_3 = 1.3
            L19_3 = 1.3
            L20_3 = Config
            L20_3 = L20_3.MarkerSettings
            L20_3 = L20_3.UnActive
            L20_3 = L20_3.r
            L21_3 = Config
            L21_3 = L21_3.MarkerSettings
            L21_3 = L21_3.UnActive
            L21_3 = L21_3.g
            L22_3 = Config
            L22_3 = L22_3.MarkerSettings
            L22_3 = L22_3.UnActive
            L22_3 = L22_3.b
            L23_3 = Config
            L23_3 = L23_3.MarkerSettings
            L23_3 = L23_3.UnActive
            L23_3 = L23_3.a
            L24_3 = false
            L25_3 = false
            L26_3 = false
            L27_3 = false
            L28_3 = nil
            L29_3 = nil
            L30_3 = false
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
            L6_3 = ShowHelpNotification
            L7_3 = Config
            L7_3 = L7_3.Lang
            L7_3 = L7_3.treeCutting
            L6_3(L7_3)
            L6_3 = IsControlJustReleased
            L7_3 = 0
            L8_3 = 38
            L6_3 = L6_3(L7_3, L8_3)
            if L6_3 then
              L6_3 = CurrentLogCounter
              if L6_3 >= 12 then
                L6_3 = Notify
                L7_3 = Config
                L7_3 = L7_3.Lang
                L7_3 = L7_3.tooManyLogs
                L6_3(L7_3)
              else
                L6_3 = ChainsawAnimation
                L7_3 = L4_3.obj
                L6_3 = L6_3(L7_3)
                if L6_3 then
                  L6_3 = TriggerServerEvent
                  L7_3 = "17mov_Lumberjack:disableThisTree"
                  L8_3 = L2_3
                  L6_3(L7_3, L8_3)
                  L22_1 = L2_3
                  L6_3 = PlayerPedId
                  L6_3 = L6_3()
                  L7_3 = GetEntityHeading
                  L8_3 = L6_3
                  L7_3 = L7_3(L8_3)
                  L8_3 = TriggerServerEvent
                  L9_3 = "17mov_lumberjack:StartFallAnim"
                  L10_3 = L2_3
                  L11_3 = L7_3
                  L8_3(L9_3, L10_3, L11_3)
                  L8_3 = StartFallAnim
                  L9_3 = L4_3.obj
                  L10_3 = false
                  L11_3 = L7_3
                  L8_3(L9_3, L10_3, L11_3)
                  L8_3 = 0
                  L22_1 = L8_3
                end
              end
            end
        end
        else
          L6_3 = L8_2
          L5_3 = L52_1
          L5_3 = L5_3[L6_3]
          if not L5_3 then
            L8_2 = L2_3
            L6_3 = L8_2
            L5_3 = L52_1
            L5_3[L6_3] = true
            L5_3 = AddTreeToTarget
            L6_3 = L4_3.obj
            L7_3 = L2_3
            L5_3(L6_3, L7_3)
          end
        end
      end
      L4_3 = Wait
      L5_3 = L0_3
      L4_3(L5_3)
    end
  end
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = 1000
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = GetVehiclePedIsIn
      L3_3 = L1_3
      L4_3 = false
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = L34_1.JobFlatbed
      if L2_3 ~= L3_3 then
        L3_3 = L34_1.JobVehicle
        if L2_3 ~= L3_3 then
          L3_3 = L34_1.JobVehicle2
          if L2_3 ~= L3_3 then
            L3_3 = L34_1.JobTruck
            if L2_3 ~= L3_3 then
              goto lbl_269
            end
          end
        end
      end
      L3_3 = Config
      L3_3 = L3_3.EnableVehicleLegacyMode
      if L3_3 then
        L2_3 = L34_1.JobFlatbed
      end
      L3_3 = GetEntityCoords
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = pairs
      L5_3 = Config
      L5_3 = L5_3.Stations
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
      for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
        L10_3 = 1
        L11_3 = #L9_3
        L12_3 = 1
        for L13_3 = L10_3, L11_3, L12_3 do
          L14_3 = L9_3[L13_3]
          L14_3 = L14_3.coords
          L14_3 = L14_3.xyz
          L14_3 = L3_3 - L14_3
          L14_3 = #L14_3
          if L14_3 < 50.0 then
            L14_3 = L23_1
            if not L14_3 then
              L14_3 = math
              L14_3 = L14_3.abs
              L15_3 = L9_3[L13_3]
              L15_3 = L15_3.coords
              L15_3 = L15_3.xy
              L16_3 = L3_3.xy
              L15_3 = L15_3 - L16_3
              L15_3 = #L15_3
              L14_3 = L14_3(L15_3)
              L15_3 = 5.2
              if L14_3 < L15_3 then
                L14_3 = SimilarOrientation
                L15_3 = GetEntityHeading
                L16_3 = L2_3
                L15_3 = L15_3(L16_3)
                L16_3 = L9_3[L13_3]
                L16_3 = L16_3.targetHeading
                L17_3 = 12.5
                L14_3 = L14_3(L15_3, L16_3, L17_3)
                if L14_3 then
                  L14_3 = Config
                  L14_3 = L14_3.EnableVehicleLegacyMode
                  if L14_3 then
                    L14_3 = GetPedInVehicleSeat
                    L15_3 = L34_1.JobVehicle
                    L16_3 = -1
                    L14_3 = L14_3(L15_3, L16_3)
                    L14_3 = L14_3 == L1_3
                  end
                  L15_3 = Draw3DBox
                  L16_3 = L9_3[L13_3]
                  L16_3 = L16_3.coords
                  L16_3 = L16_3.x
                  L17_3 = L9_3[L13_3]
                  L17_3 = L17_3.coords
                  L17_3 = L17_3.y
                  L18_3 = L9_3[L13_3]
                  L18_3 = L18_3.coords
                  L18_3 = L18_3.z
                  L19_3 = 12.0
                  L20_3 = 3.5
                  L21_3 = 4.0
                  L22_3 = 0
                  L23_3 = 255
                  L24_3 = 0
                  L25_3 = 100
                  L26_3 = L9_3[L13_3]
                  L26_3 = L26_3.rotation
                  L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
                  if not L14_3 then
                    goto lbl_264
                  end
                  L15_3 = ShowHelpNotification
                  L16_3 = Config
                  L16_3 = L16_3.Lang
                  L16_3 = L16_3.OpenProcessingMenu
                  L15_3(L16_3)
                  L15_3 = IsControlJustReleased
                  L16_3 = 0
                  L17_3 = 38
                  L15_3 = L15_3(L16_3, L17_3)
                  if not L15_3 then
                    goto lbl_264
                  end
                  L15_3 = {}
                  L16_3 = nil
                  L18_3 = L8_3
                  L17_3 = L8_3.sub
                  L19_3 = 1
                  L20_3 = 4
                  L17_3 = L17_3(L18_3, L19_3, L20_3)
                  if "sell" == L17_3 then
                    L17_3 = promise
                    L17_3 = L17_3.new
                    L17_3 = L17_3()
                    L18_3 = TriggerServerCallback
                    L19_3 = "17mov_Lumberjack:GetPrice"
                    function L20_3(A0_4)
                      local L1_4, L2_4, L3_4
                      L1_4 = L17_3
                      L2_4 = L1_4
                      L1_4 = L1_4.resolve
                      L3_4 = A0_4
                      L1_4(L2_4, L3_4)
                    end
                    L21_3 = L13_3
                    L22_3 = L8_3
                    L18_3(L19_3, L20_3, L21_3, L22_3)
                    L18_3 = Citizen
                    L18_3 = L18_3.Await
                    L19_3 = L17_3
                    L18_3 = L18_3(L19_3)
                    L16_3 = L18_3
                  end
                  if "processToPlanks" == L8_3 then
                    L17_3 = table
                    L17_3 = L17_3.insert
                    L18_3 = L15_3
                    L19_3 = Config
                    L19_3 = L19_3.EnableVehicleLegacyMode
                    if L19_3 then
                      L19_3 = "6"
                      if L19_3 then
                        goto lbl_174
                      end
                    end
                    L19_3 = "8"
                    ::lbl_174::
                    L17_3(L18_3, L19_3)
                    L17_3 = table
                    L17_3 = L17_3.insert
                    L18_3 = L15_3
                    L19_3 = math
                    L19_3 = L19_3.floor
                    L20_3 = GetLogOnTrailerCount
                    L20_3 = L20_3()
                    L21_3 = Config
                    L21_3 = L21_3.EnableVehicleLegacyMode
                    if L21_3 then
                      L21_3 = 6
                      if L21_3 then
                        goto lbl_190
                      end
                    end
                    L21_3 = 8
                    ::lbl_190::
                    L20_3 = L20_3 / L21_3
                    L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L19_3(L20_3)
                    L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
                    L17_3 = table
                    L17_3 = L17_3.insert
                    L18_3 = L15_3
                    L19_3 = Config
                    L19_3 = L19_3.EnableVehicleLegacyMode
                    if L19_3 then
                      L19_3 = "9"
                      if L19_3 then
                        goto lbl_205
                      end
                    end
                    L19_3 = "4"
                    ::lbl_205::
                    L17_3(L18_3, L19_3)
                  end
                  if "processToChips" == L8_3 then
                    L17_3 = table
                    L17_3 = L17_3.insert
                    L18_3 = L15_3
                    L19_3 = Config
                    L19_3 = L19_3.EnableVehicleLegacyMode
                    if L19_3 then
                      L19_3 = "5"
                      if L19_3 then
                        goto lbl_219
                      end
                    end
                    L19_3 = "6.25"
                    ::lbl_219::
                    L17_3(L18_3, L19_3)
                    L17_3 = table
                    L17_3 = L17_3.insert
                    L18_3 = L15_3
                    L19_3 = Config
                    L19_3 = L19_3.EnableVehicleLegacyMode
                    if L19_3 then
                      L19_3 = "3"
                      if L19_3 then
                        goto lbl_231
                      end
                    end
                    L19_3 = "2"
                    ::lbl_231::
                    L17_3(L18_3, L19_3)
                  end
                  if nil ~= L16_3 then
                    L17_3 = table
                    L17_3 = L17_3.insert
                    L18_3 = L15_3
                    L19_3 = L16_3
                    L17_3(L18_3, L19_3)
                  end
                  L17_3 = OpenPanel
                  L18_3 = L8_3
                  L19_3 = L15_3
                  L17_3(L18_3, L19_3)
              end
              else
                L14_3 = Draw3DBox
                L15_3 = L9_3[L13_3]
                L15_3 = L15_3.coords
                L15_3 = L15_3.x
                L16_3 = L9_3[L13_3]
                L16_3 = L16_3.coords
                L16_3 = L16_3.y
                L17_3 = L9_3[L13_3]
                L17_3 = L17_3.coords
                L17_3 = L17_3.z
                L18_3 = 12.0
                L19_3 = 3.5
                L20_3 = 4.0
                L21_3 = 171
                L22_3 = 91
                L23_3 = 41
                L24_3 = 100
                L25_3 = L9_3[L13_3]
                L25_3 = L25_3.rotation
                L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
              end
              ::lbl_264::
              L0_3 = 0
            end
          end
        end
      end
      ::lbl_269::
      L3_3 = Wait
      L4_3 = L0_3
      L3_3(L4_3)
    end
  end
  L9_2(L10_2)
  L9_2 = Config
  L9_2 = L9_2.EnableVehicleLegacyMode
  if L9_2 then
    L9_2 = CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
      while true do
        L0_3 = OnDuty
        if not L0_3 then
          break
        end
        L0_3 = GetVehiclePedIsIn
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = false
        L0_3 = L0_3(L1_3, L2_3)
        if 0 ~= L0_3 then
          L1_3 = GetVehicleTrailerVehicle
          L2_3 = L0_3
          L1_3, L2_3 = L1_3(L2_3)
          L3_3 = GetEntityModel
          L4_3 = L2_3
          L3_3 = L3_3(L4_3)
          if -740256823 == L3_3 then
            L3_3 = nil
            L4_3 = nil
            L5_3 = false
            L6_3 = GetEntityHeading
            L7_3 = L0_3
            L6_3 = L6_3(L7_3)
            L7_3 = GetEntityHeading
            L8_3 = L2_3
            L7_3 = L7_3(L8_3)
            L8_3 = GetEntityModel
            L9_3 = L0_3
            L8_3 = L8_3(L9_3)
            if -227413559 == L8_3 then
              L8_3 = GetWorldPositionOfEntityBone
              L9_3 = L0_3
              L10_3 = GetEntityBoneIndexByName
              L11_3 = L0_3
              L12_3 = "transmission_m"
              L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L10_3(L11_3, L12_3)
              L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              L9_3 = GetWorldPositionOfEntityBone
              L10_3 = L2_3
              L11_3 = GetEntityBoneIndexByName
              L12_3 = L2_3
              L13_3 = "hook"
              L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L11_3(L12_3, L13_3)
              L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              L10_3 = GetObjectOffsetFromCoords
              L11_3 = L8_3.x
              L12_3 = L8_3.y
              L13_3 = L8_3.z
              L14_3 = L6_3
              L15_3 = 0
              L16_3 = -3.0
              L17_3 = 0.5
              L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              L3_3 = L10_3
              L10_3 = GetObjectOffsetFromCoords
              L11_3 = L9_3.x
              L12_3 = L9_3.y
              L13_3 = L9_3.z
              L14_3 = L7_3
              L15_3 = 0
              L16_3 = 8.0
              L17_3 = -0.5
              L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              L4_3 = L10_3
              L5_3 = true
            else
              L8_3 = GetEntityModel
              L9_3 = L0_3
              L8_3 = L8_3(L9_3)
              if 1204003331 == L8_3 then
                L8_3 = GetWorldPositionOfEntityBone
                L9_3 = L0_3
                L10_3 = GetEntityBoneIndexByName
                L11_3 = L0_3
                L12_3 = "hook"
                L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L10_3(L11_3, L12_3)
                L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                L9_3 = GetWorldPositionOfEntityBone
                L10_3 = L2_3
                L11_3 = GetEntityBoneIndexByName
                L12_3 = L2_3
                L13_3 = "hook"
                L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L11_3(L12_3, L13_3)
                L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                L10_3 = GetObjectOffsetFromCoords
                L11_3 = L8_3.x
                L12_3 = L8_3.y
                L13_3 = L8_3.z
                L14_3 = L6_3
                L15_3 = 0
                L16_3 = -3.25
                L17_3 = 1.0
                L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                L3_3 = L10_3
                L10_3 = GetObjectOffsetFromCoords
                L11_3 = L9_3.x
                L12_3 = L9_3.y
                L13_3 = L9_3.z
                L14_3 = L7_3
                L15_3 = 0
                L16_3 = 8.0
                L17_3 = -0.5
                L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                L4_3 = L10_3
                L5_3 = true
              end
            end
            if L5_3 then
              L8_3 = math
              L8_3 = L8_3.abs
              L9_3 = L3_3.x
              L10_3 = L4_3.x
              L9_3 = L9_3 - L10_3
              L8_3 = L8_3(L9_3)
              L9_3 = math
              L9_3 = L9_3.abs
              L10_3 = L3_3.y
              L11_3 = L4_3.y
              L10_3 = L10_3 - L11_3
              L9_3 = L9_3(L10_3)
              L10_3 = GetEntityCoords
              L11_3 = L0_3
              L10_3 = L10_3(L11_3)
              L11_3 = GetEntityCoords
              L12_3 = L2_3
              L11_3 = L11_3(L12_3)
              L12_3 = math
              L12_3 = L12_3.abs
              L13_3 = L10_3.x
              L14_3 = L11_3.x
              L13_3 = L13_3 - L14_3
              L12_3 = L12_3(L13_3)
              L13_3 = math
              L13_3 = L13_3.abs
              L14_3 = L10_3.y
              L15_3 = L11_3.y
              L14_3 = L14_3 - L15_3
              L13_3 = L13_3(L14_3)
              if L12_3 > 12 or L13_3 > 12 then
                L14_3 = DetachVehicleFromTrailer
                L15_3 = L0_3
                L14_3(L15_3)
              else
                L14_3 = AttachVehicleToTrailer
                L15_3 = L0_3
                L16_3 = L2_3
                L17_3 = 10.0
                L14_3(L15_3, L16_3, L17_3)
              end
              if L8_3 >= 2.0 or L9_3 >= 2.0 then
                L14_3 = print
                L15_3 = "DETACHING TRAILER TO AVOID DESYNC"
                L14_3(L15_3)
                L14_3 = DetachVehicleFromTrailer
                L15_3 = L0_3
                L14_3(L15_3)
              end
            end
          end
        end
        L1_3 = Wait
        L2_3 = 1000
        L1_3(L2_3)
      end
    end
    L9_2(L10_2)
    L9_2 = false
    L31_1 = L9_2
    L9_2 = 0
    L32_1 = L9_2
    L9_2 = false
    L10_2 = CreateThread
    function L11_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
      while true do
        L0_3 = OnDuty
        if not L0_3 then
          break
        end
        L0_3 = 1000
        L1_3 = SetEntityVisible
        L2_3 = L28_1
        L3_3 = false
        L4_3 = false
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = SetEntityCollision
        L2_3 = L28_1
        L3_3 = false
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = L31_1
        if not L1_3 then
          L1_3 = DoesEntityExist
          L2_3 = L34_1.JobForklift
          L1_3 = L1_3(L2_3)
          if L1_3 then
            L1_3 = GetVehiclePedIsIn
            L2_3 = PlayerPedId
            L2_3 = L2_3()
            L3_3 = false
            L1_3 = L1_3(L2_3, L3_3)
            L2_3 = L34_1.JobForklift
            if L1_3 == L2_3 then
              L1_3 = GetWorldPositionOfEntityBone
              L2_3 = L34_1.JobForklift
              L3_3 = GetEntityBoneIndexByName
              L4_3 = L34_1.JobForklift
              L5_3 = "forks_attach"
              L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L3_3(L4_3, L5_3)
              L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
              L2_3 = pairs
              L3_3 = PlanksSpawnPoints
              L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
              for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
                L8_3 = L7_3.obj
                if nil ~= L8_3 then
                  L8_3 = GetEntityCoords
                  L9_3 = L7_3.obj
                  L8_3 = L8_3(L9_3)
                  L9_3 = L1_3.xy
                  L10_3 = L8_3.xy
                  L9_3 = L9_3 - L10_3
                  L9_3 = #L9_3
                  L10_3 = 1.2
                  if L9_3 <= L10_3 then
                    L9_3 = L1_3.z
                    L10_3 = L8_3.z
                    L9_3 = L9_3 - L10_3
                    L10_3 = -0.2
                    if L9_3 > L10_3 then
                      L9_3 = L1_3.z
                      L10_3 = L8_3.z
                      L9_3 = L9_3 - L10_3
                      if L9_3 < 0.0 then
                        L9_3 = DecorGetBool
                        L10_3 = L7_3.obj
                        L11_3 = "entityOnForks"
                        L9_3 = L9_3(L10_3, L11_3)
                        if not L9_3 then
                          L9_3 = L7_3.haveAbove
                          if false ~= L9_3 then
                            L9_3 = L7_3.haveAbove
                            if nil ~= L9_3 then
                              goto lbl_268
                            end
                          end
                          L0_3 = 0
                          L9_3 = SetEntityDrawOutline
                          L10_3 = L7_3.obj
                          L11_3 = true
                          L9_3(L10_3, L11_3)
                          L9_3 = SetEntityDrawOutlineColor
                          L10_3 = 171
                          L11_3 = 91
                          L12_3 = 41
                          L13_3 = 200
                          L9_3(L10_3, L11_3, L12_3, L13_3)
                          L9_3 = ShowHelpNotification
                          L10_3 = Config
                          L10_3 = L10_3.Lang
                          L10_3 = L10_3.attachPlanksToForklift
                          L9_3(L10_3)
                          L9_3 = IsControlJustReleased
                          L10_3 = 0
                          L11_3 = 38
                          L9_3 = L9_3(L10_3, L11_3)
                          if not L9_3 then
                            goto lbl_272
                          end
                          L9_3 = SetEntityDrawOutline
                          L10_3 = L7_3.obj
                          L11_3 = false
                          L9_3(L10_3, L11_3)
                          L9_3 = L7_3.obj
                          L10_3 = CreateObject
                          L11_3 = "17mov_woodpile"
                          L12_3 = PlanksSpawnPoints
                          L12_3 = L12_3[L6_3]
                          L12_3 = L12_3.coords
                          L12_3 = L12_3.x
                          L13_3 = PlanksSpawnPoints
                          L13_3 = L13_3[L6_3]
                          L13_3 = L13_3.coords
                          L13_3 = L13_3.y
                          L14_3 = PlanksSpawnPoints
                          L14_3 = L14_3[L6_3]
                          L14_3 = L14_3.coords
                          L14_3 = L14_3.z
                          L15_3 = true
                          L16_3 = true
                          L17_3 = false
                          L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                          L7_3.obj = L10_3
                          L10_3 = SetEntityCollision
                          L11_3 = L7_3.obj
                          L12_3 = false
                          L13_3 = true
                          L10_3(L11_3, L12_3, L13_3)
                          L10_3 = SetEntityRotation
                          L11_3 = object
                          L12_3 = PlanksSpawnPoints
                          L12_3 = L12_3[L6_3]
                          L12_3 = L12_3.rotation
                          L12_3 = L12_3.x
                          L13_3 = PlanksSpawnPoints
                          L13_3 = L13_3[L6_3]
                          L13_3 = L13_3.rotation
                          L13_3 = L13_3.y
                          L14_3 = PlanksSpawnPoints
                          L14_3 = L14_3[L6_3]
                          L14_3 = L14_3.rotation
                          L14_3 = L14_3.z
                          L15_3 = 0
                          L16_3 = false
                          L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                          while true do
                            L10_3 = ObjToNet
                            L11_3 = L7_3.obj
                            L10_3 = L10_3(L11_3)
                            L11_3 = L7_3.obj
                            if L10_3 ~= L11_3 then
                              L10_3 = ObjToNet
                              L11_3 = L7_3.obj
                              L10_3 = L10_3(L11_3)
                              if 0 ~= L10_3 then
                                break
                              end
                            end
                            L10_3 = DeleteEntity
                            L11_3 = L7_3.obj
                            L10_3(L11_3)
                            L10_3 = CreateObject
                            L11_3 = "17mov_woodpile"
                            L12_3 = PlanksSpawnPoints
                            L12_3 = L12_3[L6_3]
                            L12_3 = L12_3.coords
                            L12_3 = L12_3.x
                            L13_3 = PlanksSpawnPoints
                            L13_3 = L13_3[L6_3]
                            L13_3 = L13_3.coords
                            L13_3 = L13_3.y
                            L14_3 = PlanksSpawnPoints
                            L14_3 = L14_3[L6_3]
                            L14_3 = L14_3.coords
                            L14_3 = L14_3.z
                            L15_3 = true
                            L16_3 = true
                            L17_3 = false
                            L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                            L7_3.obj = L10_3
                            L10_3 = SetEntityCollision
                            L11_3 = L7_3.obj
                            L12_3 = false
                            L13_3 = true
                            L10_3(L11_3, L12_3, L13_3)
                            L10_3 = SetEntityRotation
                            L11_3 = L7_3.obj
                            L12_3 = PlanksSpawnPoints
                            L12_3 = L12_3[L6_3]
                            L12_3 = L12_3.rotation
                            L12_3 = L12_3.x
                            L13_3 = PlanksSpawnPoints
                            L13_3 = L13_3[L6_3]
                            L13_3 = L13_3.rotation
                            L13_3 = L13_3.y
                            L14_3 = PlanksSpawnPoints
                            L14_3 = L14_3[L6_3]
                            L14_3 = L14_3.rotation
                            L14_3 = L14_3.z
                            L15_3 = 0
                            L16_3 = false
                            L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                            L10_3 = Wait
                            L11_3 = 100
                            L10_3(L11_3)
                          end
                          L10_3 = DeleteEntity
                          L11_3 = L9_3
                          L10_3(L11_3)
                          L10_3 = DecorSetBool
                          L11_3 = L7_3.obj
                          L12_3 = "entityOnForks"
                          L13_3 = true
                          L10_3(L11_3, L12_3, L13_3)
                          L10_3 = AttachEntityToEntity
                          L11_3 = L7_3.obj
                          L12_3 = L34_1.JobForklift
                          L13_3 = 3
                          L14_3 = 0.0
                          L15_3 = 1.15
                          L16_3 = -0.6
                          L17_3 = 0.0
                          L18_3 = -3.5
                          L19_3 = 90.0
                          L20_3 = false
                          L21_3 = false
                          L22_3 = false
                          L23_3 = false
                          L24_3 = 2
                          L25_3 = true
                          L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                          L10_3 = pairs
                          L11_3 = PlanksSpawnPoints
                          L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3)
                          for L14_3, L15_3 in L10_3, L11_3, L12_3, L13_3 do
                            L16_3 = L15_3.aboveId
                            if L16_3 == L6_3 then
                              L16_3 = TriggerServerEvent
                              L17_3 = "17mov_Lumberjack:EnableViaAboveLift"
                              L18_3 = L14_3
                              L16_3(L17_3, L18_3)
                            end
                          end
                          L10_3 = TriggerServerEvent
                          L11_3 = "17mov_Lumberjack:ForkliftUpdate"
                          L12_3 = ObjToNet
                          L13_3 = L7_3.obj
                          L12_3 = L12_3(L13_3)
                          L13_3 = L6_3
                          L10_3(L11_3, L12_3, L13_3)
                          L10_3 = true
                          L31_1 = L10_3
                          L7_3.obj = nil
                          L10_3 = L9_2
                          if not L10_3 then
                            L10_3 = true
                            L9_2 = L10_3
                            L10_3 = Notify
                            L11_3 = Config
                            L11_3 = L11_3.Lang
                            L11_3 = L11_3.loadItOnFlatbed
                            L10_3(L11_3)
                          end
                      end
                    end
                  end
                  ::lbl_268::
                  else
                    L9_3 = SetEntityDrawOutline
                    L10_3 = L7_3.obj
                    L11_3 = false
                    L9_3(L10_3, L11_3)
                  end
                end
                ::lbl_272::
              end
          end
        end
        else
          L1_3 = GetLogOnTrailerCount
          L1_3 = L1_3()
          if 0 == L1_3 then
            L1_3 = GetLastSkipSlot
            L1_3 = L1_3()
            if 1 == L1_3 then
              L1_3 = DoesEntityExist
              L2_3 = L34_1.JobForklift
              L1_3 = L1_3(L2_3)
              if L1_3 then
                L1_3 = GetVehiclePedIsIn
                L2_3 = PlayerPedId
                L2_3 = L2_3()
                L3_3 = false
                L1_3 = L1_3(L2_3, L3_3)
                L2_3 = L34_1.JobForklift
                if L1_3 == L2_3 then
                  L1_3 = GetLastPlanksSlot
                  L1_3 = L1_3()
                  if 0 ~= L1_3 then
                    L2_3 = GetGameTimer
                    L2_3 = L2_3()
                    L3_3 = L28_1
                    if 0 ~= L3_3 then
                      L3_3 = DoesEntityExist
                      L4_3 = L28_1
                      L3_3 = L3_3(L4_3)
                      if L3_3 then
                        goto lbl_393
                      end
                    end
                    L3_3 = DoesEntityExist
                    L4_3 = L34_1.JobFlatbed
                    L3_3 = L3_3(L4_3)
                    if L3_3 then
                      L3_3 = NetworkRequestControlOfEntity
                      L4_3 = L34_1.JobFlatbed
                      L3_3(L4_3)
                      while true do
                        L3_3 = NetworkHasControlOfEntity
                        L4_3 = L34_1.JobFlatbed
                        L3_3 = L3_3(L4_3)
                        if L3_3 then
                          break
                        end
                        L3_3 = GetGameTimer
                        L3_3 = L3_3()
                        L3_3 = L3_3 - L2_3
                        L4_3 = 500
                        if L3_3 > L4_3 then
                          break
                        end
                        L3_3 = Wait
                        L4_3 = 100
                        L3_3(L4_3)
                      end
                      L3_3 = GetEntityCoords
                      L4_3 = L34_1.JobFlatbed
                      L3_3 = L3_3(L4_3)
                      L4_3 = CreateObject
                      L5_3 = "17mov_woodpile"
                      L6_3 = L3_3.x
                      L7_3 = L3_3.y
                      L8_3 = L3_3.z
                      L9_3 = false
                      L10_3 = true
                      L11_3 = false
                      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
                      L28_1 = L4_3
                      L4_3 = SetEntityVisible
                      L5_3 = L28_1
                      L6_3 = false
                      L7_3 = false
                      L4_3(L5_3, L6_3, L7_3)
                      L4_3 = SetEntityCollision
                      L5_3 = L28_1
                      L6_3 = false
                      L7_3 = true
                      L4_3(L5_3, L6_3, L7_3)
                      L4_3 = AttachEntityToEntity
                      L5_3 = L28_1
                      L6_3 = L34_1.JobFlatbed
                      L7_3 = 0
                      L8_3 = Config
                      L8_3 = L8_3.HintPlankAttachment
                      L8_3 = L8_3.offset
                      L8_3 = L8_3.x
                      L9_3 = Config
                      L9_3 = L9_3.HintPlankAttachment
                      L9_3 = L9_3.offset
                      L9_3 = L9_3.y
                      L10_3 = Config
                      L10_3 = L10_3.HintPlankAttachment
                      L10_3 = L10_3.offset
                      L10_3 = L10_3.z
                      L11_3 = Config
                      L11_3 = L11_3.HintPlankAttachment
                      L11_3 = L11_3.rotation
                      L11_3 = L11_3.x
                      L12_3 = Config
                      L12_3 = L12_3.HintPlankAttachment
                      L12_3 = L12_3.rotation
                      L12_3 = L12_3.y
                      L13_3 = Config
                      L13_3 = L13_3.HintPlankAttachment
                      L13_3 = L13_3.rotation
                      L13_3 = L13_3.z
                      L14_3 = true
                      L15_3 = true
                      L16_3 = true
                      L17_3 = true
                      L18_3 = 2
                      L19_3 = true
                      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                    end
                    ::lbl_393::
                    L3_3 = GetEntityCoords
                    L4_3 = L28_1
                    L3_3 = L3_3(L4_3)
                    L4_3 = GetEntityCoords
                    L5_3 = L34_1.JobFlatbed
                    L4_3 = L4_3(L5_3)
                    L3_3 = L3_3 - L4_3
                    L3_3 = #L3_3
                    if not (L3_3 > 15.0) then
                      L3_3 = IsEntityAttachedToEntity
                      L4_3 = L28_1
                      L5_3 = L34_1.JobFlatbed
                      L3_3 = L3_3(L4_3, L5_3)
                      if L3_3 then
                        goto lbl_416
                      end
                    end
                    L3_3 = DeleteEntity
                    L4_3 = L28_1
                    L3_3(L4_3)
                    L3_3 = 0
                    L28_1 = L3_3
                    goto lbl_526
                    ::lbl_416::
                    L3_3 = SetEntityDrawOutlineColor
                    L4_3 = 171
                    L5_3 = 91
                    L6_3 = 41
                    L7_3 = 200
                    L3_3(L4_3, L5_3, L6_3, L7_3)
                    L3_3 = SetEntityDrawOutline
                    L4_3 = L28_1
                    L5_3 = true
                    L3_3(L4_3, L5_3)
                    L3_3 = GetOffsetFromEntityInWorldCoords
                    L4_3 = L34_1.JobFlatbed
                    L5_3 = Config
                    L5_3 = L5_3.HintPlankAttachment
                    L5_3 = L5_3.offset
                    L5_3 = L5_3.x
                    L6_3 = Config
                    L6_3 = L6_3.HintPlankAttachment
                    L6_3 = L6_3.offset
                    L6_3 = L6_3.y
                    L7_3 = Config
                    L7_3 = L7_3.HintPlankAttachment
                    L7_3 = L7_3.offset
                    L7_3 = L7_3.z
                    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                    L4_3 = GetEntityCoords
                    L5_3 = L32_1
                    L4_3 = L4_3(L5_3)
                    L4_3 = L4_3 - L3_3
                    L4_3 = #L4_3
                    L5_3 = 2.5
                    if not (L4_3 < L5_3) then
                      goto lbl_526
                    end
                    L4_3 = SetEntityDrawOutlineColor
                    L5_3 = 41
                    L6_3 = 171
                    L7_3 = 50
                    L8_3 = 200
                    L4_3(L5_3, L6_3, L7_3, L8_3)
                    L4_3 = ShowHelpNotification
                    L5_3 = Config
                    L5_3 = L5_3.Lang
                    L5_3 = L5_3.loadPallete
                    L4_3(L5_3)
                    L4_3 = IsControlJustReleased
                    L5_3 = 0
                    L6_3 = 38
                    L4_3 = L4_3(L5_3, L6_3)
                    if L4_3 then
                      L4_3 = DetachEntity
                      L5_3 = L32_1
                      L6_3 = true
                      L7_3 = true
                      L4_3(L5_3, L6_3, L7_3)
                      L4_3 = AttachPalleteToTrailer
                      L5_3 = L32_1
                      L6_3 = L1_3
                      L4_3(L5_3, L6_3)
                      L4_3 = SetEntityDrawOutlineColor
                      L5_3 = 171
                      L6_3 = 91
                      L7_3 = 41
                      L8_3 = 200
                      L4_3(L5_3, L6_3, L7_3, L8_3)
                      L4_3 = false
                      L31_1 = L4_3
                      L4_3 = L29_1
                      L5_3 = GetPlanksOnTrailerCount
                      L5_3 = L5_3()
                      L5_3 = L5_3 + 1
                      if L4_3 ~= L5_3 then
                        L4_3 = GetPlanksOnTrailerCount
                        L4_3 = L4_3()
                        L4_3 = L4_3 + 1
                        if not (L4_3 >= 9) then
                          goto lbl_515
                        end
                      end
                      L4_3 = TaskLeaveAnyVehicle
                      L5_3 = PlayerPedId
                      L5_3 = L5_3()
                      L6_3 = 1
                      L7_3 = 0
                      L4_3(L5_3, L6_3, L7_3)
                      L4_3 = NetworkRequestControlOfEntity
                      L5_3 = L34_1.JobForklift
                      L4_3(L5_3)
                      L4_3 = Wait
                      L5_3 = 1500
                      L4_3(L5_3)
                      L4_3 = DeleteVehicleByCore
                      L5_3 = L34_1.JobForklift
                      L4_3(L5_3)
                      L4_3 = TriggerServerEvent
                      L5_3 = "17mov_Lumberjack:ForkliftDeleted"
                      L4_3(L5_3)
                    end
                    ::lbl_515::
                    L0_3 = 0
                  else
                    L2_3 = SetEntityDrawOutline
                    L3_3 = L28_1
                    L4_3 = false
                    L2_3(L3_3, L4_3)
                  end
              end
            end
          end
          else
            L1_3 = SetEntityDrawOutline
            L2_3 = L28_1
            L3_3 = false
            L1_3(L2_3, L3_3)
          end
        end
        ::lbl_526::
        L1_3 = Wait
        L2_3 = L0_3
        L1_3(L2_3)
      end
    end
    L10_2(L11_2)
    L10_2 = GetEntityBoneIndexByName
    L11_2 = L34_1.JobVehicle
    L12_2 = "forks_attach"
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = CreateThread
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
      L0_3 = 0
      L1_3 = nil
      while true do
        L2_3 = OnDuty
        if not L2_3 then
          break
        end
        L2_3 = 1000
        L3_3 = PlayerPedId
        L3_3 = L3_3()
        L4_3 = GetVehiclePedIsIn
        L5_3 = L3_3
        L6_3 = false
        L4_3 = L4_3(L5_3, L6_3)
        if nil ~= L4_3 and 0 ~= L4_3 then
          L5_3 = L3_1
          if 0 == L5_3 then
            L5_3 = L34_1.JobVehicle
            L5_3 = L5_3 == L4_3
            L6_3 = L34_1.JobVehicle2
            L6_3 = L6_3 == L4_3
            if L5_3 or L6_3 then
              L7_3 = GetLastSkipSlot
              L7_3 = L7_3()
              if 1 == L7_3 then
                L7_3 = GetLastPlanksSlot
                L7_3 = L7_3()
                if 1 == L7_3 then
                  L7_3 = GetFreeForksSlots
                  L8_3 = L6_3
                  L7_3, L8_3 = L7_3(L8_3)
                  if L7_3 >= 1 then
                    L2_3 = 250
                    L9_3 = GetWorldPositionOfEntityBone
                    L10_3 = L4_3
                    L11_3 = L10_2
                    L9_3 = L9_3(L10_3, L11_3)
                    L10_3 = GetClosestLog
                    L11_3 = L9_3
                    L10_3 = L10_3(L11_3)
                    if L10_3 ~= L1_3 then
                      L11_3 = SetEntityDrawOutline
                      L12_3 = L0_3
                      L13_3 = false
                      L11_3(L12_3, L13_3)
                    end
                    if 0 ~= L10_3 then
                      L11_3 = DecorGetBool
                      L12_3 = L10_3
                      L13_3 = "entityOnForks"
                      L11_3 = L11_3(L12_3, L13_3)
                      if not L11_3 then
                        L2_3 = 0
                        L0_3 = L10_3
                        L11_3 = SetEntityDrawOutline
                        L12_3 = L0_3
                        L13_3 = true
                        L11_3(L12_3, L13_3)
                        L11_3 = SetEntityDrawOutlineColor
                        L12_3 = 171
                        L13_3 = 91
                        L14_3 = 41
                        L15_3 = 200
                        L11_3(L12_3, L13_3, L14_3, L15_3)
                        L11_3 = ShowHelpNotification
                        L12_3 = Config
                        L12_3 = L12_3.Lang
                        L12_3 = L12_3.attachLogToLoader
                        L11_3(L12_3)
                        L11_3 = IsControlJustReleased
                        L12_3 = 0
                        L13_3 = 38
                        L11_3 = L11_3(L12_3, L13_3)
                        if L11_3 then
                          while true do
                            L11_3 = NetworkHasControlOfEntity
                            L12_3 = L10_3
                            L11_3 = L11_3(L12_3)
                            if L11_3 then
                              break
                            end
                            L11_3 = NetworkRequestControlOfEntity
                            L12_3 = L10_3
                            L11_3(L12_3)
                            L11_3 = Wait
                            L12_3 = 0
                            L11_3(L12_3)
                          end
                          if L5_3 then
                            L11_3 = TriggerServerEvent
                            L12_3 = "17mov_Lumberjack:AttachLogToLumberCar"
                            L13_3 = L8_3
                            L14_3 = L35_1.JobVehicle
                            L15_3 = L6_3
                            L11_3(L12_3, L13_3, L14_3, L15_3)
                          else
                            L11_3 = TriggerServerEvent
                            L12_3 = "17mov_Lumberjack:AttachLogToLumberCar"
                            L13_3 = L8_3
                            L14_3 = L35_1.JobVehicle2
                            L15_3 = L6_3
                            L11_3(L12_3, L13_3, L14_3, L15_3)
                          end
                          L11_3 = DeleteEntity
                          L12_3 = L10_3
                          L11_3(L12_3)
                        end
                      end
                    end
                    L1_3 = L10_3
                  end
                end
              end
            end
          end
        end
        L5_3 = Wait
        L6_3 = L2_3
        L5_3(L6_3)
      end
    end
    L11_2(L12_2)
    L11_2 = nil
    L12_2 = nil
    L13_2 = CreateThread
    function L14_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
      while true do
        L0_3 = OnDuty
        if not L0_3 then
          break
        end
        L0_3 = SetEntityDrawOutlineShader
        L1_3 = 1
        L0_3(L1_3)
        L0_3 = 1000
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = GetVehiclePedIsIn
        L3_3 = L1_3
        L4_3 = false
        L2_3 = L2_3(L3_3, L4_3)
        L3_3 = L34_1.JobVehicle
        L3_3 = L3_3 == L2_3
        L4_3 = L34_1.JobVehicle2
        L4_3 = L4_3 == L2_3
        L5_3 = SetEntityDrawOutline
        L6_3 = L12_2
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = SetEntityDrawOutline
        L6_3 = L11_2
        L7_3 = false
        L5_3(L6_3, L7_3)
        L5_3 = SetEntityVisible
        L6_3 = L12_2
        L7_3 = false
        L8_3 = false
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = SetEntityVisible
        L6_3 = L11_2
        L7_3 = false
        L8_3 = false
        L5_3(L6_3, L7_3, L8_3)
        if L3_3 or L4_3 then
          L5_3 = GetEntitySpeed
          L6_3 = L34_1.JobFlatbed
          L5_3 = L5_3(L6_3)
          L6_3 = GetLastLogOnForks
          L6_3, L7_3 = L6_3()
          L8_3 = Config
          L8_3 = L8_3.ForksAttachment
          if L4_3 then
            L9_3 = Config
            L8_3 = L9_3.ForksAttachment2
            L9_3 = GetLastLogOnForks2
            L9_3, L10_3 = L9_3()
            L7_3 = L10_3
            L6_3 = L9_3
          end
          if L5_3 < 50.0 and 0 ~= L6_3 then
            L9_3 = GetTrailerFreeSlot
            L9_3 = L9_3()
            if 0 ~= L9_3 then
              L9_3 = GetLastSkipSlot
              L9_3 = L9_3()
              if 1 == L9_3 then
                L9_3 = GetLastPlanksSlot
                L9_3 = L9_3()
                if 1 == L9_3 then
                  L9_3 = GetWorldPositionOfEntityBone
                  L10_3 = L2_3
                  L11_3 = GetEntityBoneIndexByName
                  L12_3 = L34_1.JobVehicle
                  L13_3 = "forks_attach"
                  L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L11_3(L12_3, L13_3)
                  L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                  L10_3 = GetEntityCoords
                  L11_3 = L11_2
                  L10_3 = L10_3(L11_3)
                  L11_3 = GetEntityCoords
                  L12_3 = L12_2
                  L11_3 = L11_3(L12_3)
                  L12_3 = false
                  L13_3 = L9_3.xy
                  L14_3 = L10_3.xy
                  L13_3 = L13_3 - L14_3
                  L13_3 = #L13_3
                  L14_3 = L9_3.xy
                  L15_3 = L11_3.xy
                  L14_3 = L14_3 - L15_3
                  L14_3 = #L14_3
                  if L13_3 < L14_3 then
                    L15_3 = 1.5
                    if L13_3 < L15_3 then
                      L15_3 = L9_3.z
                      L16_3 = L10_3.z
                      L15_3 = L15_3 - L16_3
                      if L15_3 > -1.0 then
                        L15_3 = L9_3.z
                        L16_3 = L10_3.z
                        L15_3 = L15_3 - L16_3
                        L16_3 = 2.5
                        if L15_3 < L16_3 then
                          L15_3 = SetEntityDrawOutlineColor
                          L16_3 = 41
                          L17_3 = 171
                          L18_3 = 50
                          L19_3 = 200
                          L15_3(L16_3, L17_3, L18_3, L19_3)
                          L15_3 = SetEntityDrawOutline
                          L16_3 = L11_2
                          L17_3 = true
                          L15_3(L16_3, L17_3)
                          L12_3 = true
                      end
                    end
                    else
                      L15_3 = SetEntityDrawOutlineColor
                      L16_3 = 171
                      L17_3 = 91
                      L18_3 = 41
                      L19_3 = 200
                      L15_3(L16_3, L17_3, L18_3, L19_3)
                      L15_3 = SetEntityDrawOutline
                      L16_3 = L11_2
                      L17_3 = true
                      L15_3(L16_3, L17_3)
                    end
                  else
                    L15_3 = 1.5
                    if L14_3 < L15_3 then
                      L15_3 = L9_3.z
                      L16_3 = L11_3.z
                      L15_3 = L15_3 - L16_3
                      L16_3 = -1.4
                      if L15_3 > L16_3 then
                        L15_3 = L9_3.z
                        L16_3 = L11_3.z
                        L15_3 = L15_3 - L16_3
                        L16_3 = 2.5
                        if L15_3 < L16_3 then
                          L15_3 = SetEntityDrawOutlineColor
                          L16_3 = 41
                          L17_3 = 171
                          L18_3 = 50
                          L19_3 = 200
                          L15_3(L16_3, L17_3, L18_3, L19_3)
                          L15_3 = SetEntityDrawOutline
                          L16_3 = L12_2
                          L17_3 = true
                          L15_3(L16_3, L17_3)
                          L12_3 = true
                      end
                    end
                    else
                      L15_3 = SetEntityDrawOutlineColor
                      L16_3 = 171
                      L17_3 = 91
                      L18_3 = 41
                      L19_3 = 200
                      L15_3(L16_3, L17_3, L18_3, L19_3)
                      L15_3 = SetEntityDrawOutline
                      L16_3 = L12_2
                      L17_3 = true
                      L15_3(L16_3, L17_3)
                    end
                  end
                  if L12_3 then
                    L15_3 = ShowHelpNotification
                    L16_3 = Config
                    L16_3 = L16_3.Lang
                    L16_3 = L16_3.putLogOnLoader
                    L15_3(L16_3)
                    L15_3 = IsControlJustReleased
                    L16_3 = 0
                    L17_3 = 38
                    L15_3 = L15_3(L16_3, L17_3)
                    if L15_3 then
                      L15_3 = DoesEntityExist
                      L16_3 = L8_3[L7_3]
                      L16_3 = L16_3.obj
                      L15_3 = L15_3(L16_3)
                      if L15_3 then
                        L15_3 = DeleteEntity
                        L16_3 = L8_3[L7_3]
                        L16_3 = L16_3.obj
                        L15_3(L16_3)
                        L15_3 = TriggerServerEvent
                        L16_3 = "17mov_Lumberjack:DetachObjFromLumber"
                        L17_3 = L7_3
                        L18_3 = true == L4_3
                        L19_3 = L35_1.JobVehicle
                        L15_3(L16_3, L17_3, L18_3, L19_3)
                        L15_3 = AttachLogOnTrailer
                        L16_3 = L6_3
                        L15_3(L16_3)
                        L15_3 = SetEntityDrawOutlineColor
                        L16_3 = 171
                        L17_3 = 91
                        L18_3 = 41
                        L19_3 = 200
                        L15_3(L16_3, L17_3, L18_3, L19_3)
                      end
                    end
                  end
                  L0_3 = 0
                end
              end
            end
          end
        end
        L5_3 = Wait
        L6_3 = L0_3
        L5_3(L6_3)
      end
    end
    L13_2(L14_2)
    L13_2 = 0
    L14_2 = CreateThread
    function L15_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
      L0_3 = Config
      L0_3 = L0_3.Props
      L0_3 = L0_3.logs
      L0_3 = L0_3.hash
      while true do
        L1_3 = HasModelLoaded
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if L1_3 then
          break
        end
        L1_3 = RequestModel
        L2_3 = L0_3
        L1_3(L2_3)
        L1_3 = Wait
        L2_3 = 10
        L1_3(L2_3)
      end
      while true do
        L1_3 = OnDuty
        if not L1_3 then
          break
        end
        L1_3 = GetEntityCoords
        L2_3 = L11_2
        L1_3 = L1_3(L2_3)
        L2_3 = GetEntityCoords
        L3_3 = L34_1.JobFlatbed
        L2_3 = L2_3(L3_3)
        L1_3 = L1_3 - L2_3
        L1_3 = #L1_3
        L1_3 = L1_3 > 10
        L2_3 = GetEntityCoords
        L3_3 = L12_2
        L2_3 = L2_3(L3_3)
        L3_3 = GetEntityCoords
        L4_3 = L34_1.JobFlatbed
        L3_3 = L3_3(L4_3)
        L2_3 = L2_3 - L3_3
        L2_3 = #L2_3
        L2_3 = L2_3 > 10
        if L1_3 or L2_3 then
          L3_3 = L11_2
          if nil ~= L3_3 and L1_3 then
            L3_3 = DeleteEntity
            L4_3 = L11_2
            L3_3(L4_3)
          end
          L3_3 = L12_2
          if nil ~= L3_3 and L2_3 then
            L3_3 = DeleteEntity
            L4_3 = L12_2
            L3_3(L4_3)
          end
          L3_3 = GetGameTimer
          L3_3 = L3_3()
          L4_3 = L13_2
          L3_3 = L3_3 - L4_3
          L4_3 = 5000
          if L3_3 >= L4_3 then
            L3_3 = GetGameTimer
            L3_3 = L3_3()
            L4_3 = NetworkRequestControlOfEntity
            L5_3 = L34_1.JobFlatbed
            L4_3(L5_3)
            while true do
              L4_3 = NetworkHasControlOfEntity
              L5_3 = L34_1.JobFlatbed
              L4_3 = L4_3(L5_3)
              if L4_3 then
                break
              end
              L4_3 = GetGameTimer
              L4_3 = L4_3()
              L4_3 = L4_3 - L3_3
              L5_3 = 500
              if L4_3 > L5_3 then
                break
              end
              L4_3 = Wait
              L5_3 = 100
              L4_3(L5_3)
            end
            L4_3 = GetEntityCoords
            L5_3 = L34_1.JobFlatbed
            L4_3 = L4_3(L5_3)
            L5_3 = #L4_3
            if 0 ~= L5_3 then
              L5_3 = CreateObject
              L6_3 = L0_3
              L7_3 = L4_3.x
              L8_3 = L4_3.y
              L9_3 = L4_3.z
              L10_3 = false
              L11_3 = true
              L12_3 = false
              L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
              if L1_3 then
                L6_3 = AttachEntityToEntity
                L7_3 = L5_3
                L8_3 = L34_1.JobFlatbed
                L9_3 = GetEntityBoneIndexByName
                L10_3 = L34_1.JobFlatbed
                L11_3 = "bodyshell"
                L9_3 = L9_3(L10_3, L11_3)
                L10_3 = 1.7
                L11_3 = 0.0
                L12_3 = 1.5
                L13_3 = 0.0
                L14_3 = 0.0
                L15_3 = 0.0
                L16_3 = true
                L17_3 = true
                L18_3 = false
                L19_3 = false
                L20_3 = 2
                L21_3 = true
                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                L11_2 = L5_3
              elseif L2_3 then
                L6_3 = AttachEntityToEntity
                L7_3 = L5_3
                L8_3 = L34_1.JobFlatbed
                L9_3 = GetEntityBoneIndexByName
                L10_3 = L34_1.JobFlatbed
                L11_3 = "bodyshell"
                L9_3 = L9_3(L10_3, L11_3)
                L10_3 = -1.7
                L11_3 = 0.0
                L12_3 = 1.5
                L13_3 = 0.0
                L14_3 = 0.0
                L15_3 = 0.0
                L16_3 = true
                L17_3 = true
                L18_3 = false
                L19_3 = false
                L20_3 = 2
                L21_3 = true
                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                L12_2 = L5_3
              end
              L6_3 = FreezeEntityPosition
              L7_3 = L5_3
              L8_3 = true
              L6_3(L7_3, L8_3)
              L6_3 = SetEntityVisible
              L7_3 = L5_3
              L8_3 = false
              L9_3 = false
              L6_3(L7_3, L8_3, L9_3)
              L6_3 = DecorSetBool
              L7_3 = L5_3
              L8_3 = "entityOnForks"
              L9_3 = true
              L6_3(L7_3, L8_3, L9_3)
              L6_3 = GetGameTimer
              L6_3 = L6_3()
              L13_2 = L6_3
              L6_3 = Wait
              L7_3 = 500
              L6_3(L7_3)
              L6_3 = GetEntityCoords
              L7_3 = L5_3
              L6_3 = L6_3(L7_3)
              L6_3 = #L6_3
              if 0 == L6_3 then
                L6_3 = DetachEntity
                L7_3 = L5_3
                L8_3 = true
                L9_3 = false
                L6_3(L7_3, L8_3, L9_3)
                L6_3 = DeleteEntity
                L7_3 = L5_3
                L6_3(L7_3)
              end
            end
          end
        end
        L3_3 = Wait
        L4_3 = 100
        L3_3(L4_3)
      end
    end
    L14_2(L15_2)
    L14_2 = CreateThread
    function L15_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3
      while true do
        L0_3 = OnDuty
        if not L0_3 then
          break
        end
        L0_3 = 1000
        L1_3 = GetLastLogOnForks
        L1_3 = L1_3()
        if 0 == L1_3 then
          L2_3 = ChipsThreadRunning
          if not L2_3 then
            L2_3 = GetVehiclePedIsIn
            L3_3 = PlayerPedId
            L3_3 = L3_3()
            L4_3 = false
            L2_3 = L2_3(L3_3, L4_3)
            if 0 ~= L2_3 then
              L3_3 = L34_1.JobVehicle
              if L3_3 ~= L2_3 then
                L3_3 = L34_1.JobVehicle2
                if L3_3 ~= L2_3 then
                  goto lbl_272
                end
              end
              L3_3 = GetEntityBoneIndexByName
              L4_3 = L2_3
              L5_3 = "forks_attach"
              L3_3 = L3_3(L4_3, L5_3)
              L4_3 = GetWorldPositionOfEntityBone
              L5_3 = L2_3
              L6_3 = L3_3
              L4_3 = L4_3(L5_3, L6_3)
              L5_3 = L34_1.JobVehicle2
              L5_3 = L5_3 == L2_3
              L6_3 = pairs
              L7_3 = SkipsSpawnPoints
              L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
              for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
                L12_3 = GetEntityCoords
                L13_3 = L11_3.obj
                L12_3 = L12_3(L13_3)
                L13_3 = SetEntityDrawOutline
                L14_3 = L11_3.obj
                L15_3 = false
                L13_3(L14_3, L15_3)
                L13_3 = L12_3.xy
                L14_3 = L4_3.xy
                L13_3 = L13_3 - L14_3
                L13_3 = #L13_3
                if L13_3 < 2.0 then
                  L0_3 = 13
                  L13_3 = L11_3.currActiveSkip
                  if L13_3 then
                    L13_3 = L11_3.percentage
                    if L13_3 > 0 then
                      L13_3 = ShowHelpNotification
                      L14_3 = Config
                      L14_3 = L14_3.Lang
                      L14_3 = L14_3.AttachSkip
                      L13_3(L14_3)
                      L13_3 = SetEntityDrawOutlineColor
                      L14_3 = 171
                      L15_3 = 91
                      L16_3 = 41
                      L17_3 = 200
                      L13_3(L14_3, L15_3, L16_3, L17_3)
                      L13_3 = SetEntityDrawOutline
                      L14_3 = L11_3.obj
                      L15_3 = true
                      L13_3(L14_3, L15_3)
                      L13_3 = IsControlJustReleased
                      L14_3 = 0
                      L15_3 = 38
                      L13_3 = L13_3(L14_3, L15_3)
                      if L13_3 then
                        L13_3 = SetEntityDrawOutline
                        L14_3 = L11_3.obj
                        L15_3 = false
                        L13_3(L14_3, L15_3)
                        L13_3 = SetEntityCollision
                        L14_3 = L11_3.obj
                        L15_3 = false
                        L16_3 = false
                        L13_3(L14_3, L15_3, L16_3)
                        L13_3 = GetEntityCoords
                        L14_3 = L11_3.obj
                        L13_3 = L13_3(L14_3)
                        L14_3 = GetEntityRotation
                        L15_3 = L11_3.obj
                        L14_3 = L14_3(L15_3)
                        L15_3 = GetEntityCoords
                        L16_3 = L11_3.chipsObj
                        L15_3 = L15_3(L16_3)
                        L16_3 = GetEntityRotation
                        L17_3 = L11_3.chipsObj
                        L16_3 = L16_3(L17_3)
                        L17_3 = CreateObject
                        L18_3 = "17movement_skip"
                        L19_3 = L13_3.x
                        L20_3 = L13_3.y
                        L21_3 = L13_3.z
                        L22_3 = true
                        L23_3 = true
                        L24_3 = false
                        L17_3 = L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
                        L18_3 = SetEntityRotation
                        L19_3 = L17_3
                        L20_3 = L14_3.x
                        L21_3 = L14_3.y
                        L22_3 = L14_3.z
                        L23_3 = 0
                        L24_3 = false
                        L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
                        L18_3 = SetEntityCollision
                        L19_3 = L17_3
                        L20_3 = false
                        L21_3 = false
                        L18_3(L19_3, L20_3, L21_3)
                        L18_3 = CreateObject
                        L19_3 = "17movement_chips"
                        L20_3 = L15_3.x
                        L21_3 = L15_3.y
                        L22_3 = L15_3.z
                        L23_3 = true
                        L24_3 = true
                        L25_3 = false
                        L18_3 = L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                        L19_3 = SetEntityRotation
                        L20_3 = L18_3
                        L21_3 = L16_3.x
                        L22_3 = L16_3.y
                        L23_3 = L16_3.z
                        L24_3 = 0
                        L25_3 = false
                        L19_3(L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                        L19_3 = SetEntityCollision
                        L20_3 = L18_3
                        L21_3 = false
                        L22_3 = false
                        L19_3(L20_3, L21_3, L22_3)
                        L19_3 = AttachEntityToEntity
                        L20_3 = L17_3
                        L21_3 = L2_3
                        L22_3 = L3_3
                        L23_3 = L41_1.coords
                        L23_3 = L23_3.x
                        L24_3 = L41_1.coords
                        L24_3 = L24_3.y
                        L25_3 = L41_1.coords
                        L25_3 = L25_3.z
                        L26_3 = L41_1.rotation
                        L26_3 = L26_3.x
                        L27_3 = L41_1.rotation
                        L27_3 = L27_3.y
                        L28_3 = L41_1.rotation
                        L28_3 = L28_3.z
                        L29_3 = false
                        L30_3 = true
                        L31_3 = false
                        L32_3 = false
                        L33_3 = 2
                        L34_3 = true
                        L19_3(L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                        L19_3 = AttachEntityToEntity
                        L20_3 = L18_3
                        L21_3 = L17_3
                        L22_3 = 0
                        L23_3 = L11_3.chipsAttachOffset
                        L23_3 = L23_3.x
                        L24_3 = L11_3.chipsAttachOffset
                        L24_3 = L24_3.y
                        L25_3 = L11_3.chipsAttachOffset
                        L25_3 = L25_3.z
                        L26_3 = 0.0
                        L27_3 = 0.0
                        L28_3 = 0.0
                        L29_3 = false
                        L30_3 = true
                        L31_3 = true
                        L32_3 = false
                        L33_3 = 2
                        L34_3 = true
                        L19_3(L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                        while true do
                          L19_3 = DoesEntityExist
                          L20_3 = L11_3.obj
                          L19_3 = L19_3(L20_3)
                          if not L19_3 then
                            L19_3 = DoesEntityExist
                            L20_3 = L11_3.chipsObj
                            L19_3 = L19_3(L20_3)
                            if not L19_3 then
                              break
                            end
                          end
                          L19_3 = Citizen
                          L19_3 = L19_3.Wait
                          L20_3 = 10
                          L19_3(L20_3)
                          L19_3 = DeleteEntity
                          L20_3 = L11_3.obj
                          L19_3(L20_3)
                          L19_3 = DeleteEntity
                          L20_3 = L11_3.chipsObj
                          L19_3(L20_3)
                        end
                        L19_3 = GetGameTimer
                        L19_3 = L19_3()
                        L20_3 = true
                        L21_3 = 0
                        L22_3 = 0
                        while 0 == L21_3 or L21_3 == L17_3 or 0 == L22_3 or L22_3 == L18_3 do
                          L23_3 = false
                          if 0 == L21_3 or L21_3 == L17_3 then
                            L24_3 = ObjToNet
                            L25_3 = L17_3
                            L24_3 = L24_3(L25_3)
                            L21_3 = L24_3
                            L23_3 = true
                          end
                          if 0 == L22_3 or L22_3 == L18_3 then
                            L24_3 = ObjToNet
                            L25_3 = L18_3
                            L24_3 = L24_3(L25_3)
                            L22_3 = L24_3
                            L23_3 = true
                          end
                          L24_3 = GetGameTimer
                          L24_3 = L24_3()
                          L24_3 = L24_3 - L19_3
                          L25_3 = 5000
                          if L24_3 > L25_3 then
                            L20_3 = false
                            break
                          end
                          if not L23_3 then
                            L24_3 = Wait
                            L25_3 = 100
                            L24_3(L25_3)
                          end
                        end
                        if L20_3 then
                          L23_3 = TriggerServerEvent
                          L24_3 = "17mov_Lumberjack:AttachSkip"
                          L25_3 = L10_3
                          L26_3 = L21_3
                          L27_3 = L22_3
                          L28_3 = L5_3
                          L23_3(L24_3, L25_3, L26_3, L27_3, L28_3)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        ::lbl_272::
        L2_3 = Wait
        L3_3 = L0_3
        L2_3(L3_3)
      end
    end
    L14_2(L15_2)
    L14_2 = CreateThread
    function L15_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
      while true do
        L0_3 = OnDuty
        if not L0_3 then
          break
        end
        L0_3 = 500
        L1_3 = FreezeEntityPosition
        L2_3 = L13_1
        L3_3 = true
        L1_3(L2_3, L3_3)
        L1_3 = SetEntityCollision
        L2_3 = L13_1
        L3_3 = false
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = SetEntityVisible
        L2_3 = L13_1
        L3_3 = false
        L4_3 = false
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = L3_1
        if 0 == L1_3 then
          L1_3 = L5_1
          if 0 == L1_3 then
            goto lbl_279
          end
        end
        L1_3 = L13_1
        if 0 == L1_3 then
          L1_3 = DoesEntityExist
          L2_3 = L34_1.JobFlatbed
          L1_3 = L1_3(L2_3)
          if L1_3 then
            L1_3 = NetworkRequestControlOfEntity
            L2_3 = L34_1.JobFlatbed
            L1_3(L2_3)
            L1_3 = GetGameTimer
            L1_3 = L1_3()
            while true do
              L2_3 = NetworkHasControlOfEntity
              L3_3 = L34_1.JobFlatbed
              L2_3 = L2_3(L3_3)
              if L2_3 then
                break
              end
              L2_3 = GetGameTimer
              L2_3 = L2_3()
              L2_3 = L2_3 - L1_3
              L3_3 = 500
              if L2_3 > L3_3 then
                break
              end
              L2_3 = Wait
              L3_3 = 100
              L2_3(L3_3)
            end
            L2_3 = GetEntityCoords
            L3_3 = L34_1.JobFlatbed
            L2_3 = L2_3(L3_3)
            L3_3 = CreateObject
            L4_3 = "17movement_skip"
            L5_3 = L2_3.x
            L6_3 = L2_3.y
            L7_3 = L2_3.z
            L8_3 = false
            L9_3 = true
            L10_3 = false
            L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
            L13_1 = L3_3
            L3_3 = AttachEntityToEntity
            L4_3 = L13_1
            L5_3 = L34_1.JobFlatbed
            L6_3 = 0
            L7_3 = Config
            L7_3 = L7_3.HintSkip
            L7_3 = L7_3.offset
            L7_3 = L7_3.x
            L8_3 = Config
            L8_3 = L8_3.HintSkip
            L8_3 = L8_3.offset
            L8_3 = L8_3.y
            L9_3 = Config
            L9_3 = L9_3.HintSkip
            L9_3 = L9_3.offset
            L9_3 = L9_3.z
            L10_3 = Config
            L10_3 = L10_3.HintSkip
            L10_3 = L10_3.rotation
            L10_3 = L10_3.x
            L11_3 = Config
            L11_3 = L11_3.HintSkip
            L11_3 = L11_3.rotation
            L11_3 = L11_3.y
            L12_3 = Config
            L12_3 = L12_3.HintSkip
            L12_3 = L12_3.rotation
            L12_3 = L12_3.z
            L13_3 = true
            L14_3 = true
            L15_3 = true
            L16_3 = true
            L17_3 = 2
            L18_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          end
        end
        L1_3 = GetEntityCoords
        L2_3 = L13_1
        L1_3 = L1_3(L2_3)
        L2_3 = GetEntityCoords
        L3_3 = L34_1.JobFlatbed
        L2_3 = L2_3(L3_3)
        L1_3 = L1_3 - L2_3
        L1_3 = #L1_3
        if not (L1_3 > 15.0) then
          L1_3 = IsEntityAttachedToEntity
          L2_3 = L13_1
          L3_3 = L34_1.JobFlatbed
          L1_3 = L1_3(L2_3, L3_3)
          if L1_3 then
            goto lbl_124
          end
        end
        L1_3 = DeleteEntity
        L2_3 = L13_1
        L1_3(L2_3)
        L1_3 = 0
        L13_1 = L1_3
        ::lbl_124::
        L1_3 = DoesEntityExist
        L2_3 = L13_1
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L1_3 = FreezeEntityPosition
          L2_3 = L13_1
          L3_3 = true
          L1_3(L2_3, L3_3)
          L1_3 = SetEntityCollision
          L2_3 = L13_1
          L3_3 = false
          L4_3 = true
          L1_3(L2_3, L3_3, L4_3)
          L1_3 = SetEntityVisible
          L2_3 = L13_1
          L3_3 = false
          L4_3 = false
          L1_3(L2_3, L3_3, L4_3)
          L1_3 = SetEntityDrawOutline
          L2_3 = L13_1
          L3_3 = false
          L1_3(L2_3, L3_3)
          L1_3 = GetVehiclePedIsIn
          L2_3 = PlayerPedId
          L2_3 = L2_3()
          L3_3 = false
          L1_3 = L1_3(L2_3, L3_3)
          L2_3 = L34_1.JobVehicle
          L2_3 = L1_3 == L2_3
          L3_3 = L34_1.JobVehicle2
          L3_3 = L1_3 == L3_3
          L4_3 = GetLogOnTrailerCount
          L4_3 = L4_3()
          if 0 == L4_3 then
            L4_3 = GetPlanksOnTrailerCount
            L4_3 = L4_3()
            if 0 == L4_3 and (L2_3 or L3_3) then
              L4_3 = GetLastSkipSlot
              L4_3 = L4_3()
              if 0 ~= L4_3 then
                L5_3 = GetOffsetFromEntityInWorldCoords
                L6_3 = L34_1.JobFlatbed
                L7_3 = Config
                L7_3 = L7_3.HintSkip
                L7_3 = L7_3.offset
                L7_3 = L7_3.x
                L8_3 = Config
                L8_3 = L8_3.HintSkip
                L8_3 = L8_3.offset
                L8_3 = L8_3.y
                L9_3 = Config
                L9_3 = L9_3.HintSkip
                L9_3 = L9_3.offset
                L9_3 = L9_3.z
                L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                L6_3 = SetEntityDrawOutlineColor
                L7_3 = 171
                L8_3 = 91
                L9_3 = 41
                L10_3 = 200
                L6_3(L7_3, L8_3, L9_3, L10_3)
                L6_3 = SetEntityDrawOutline
                L7_3 = L13_1
                L8_3 = true
                L6_3(L7_3, L8_3)
                L6_3 = GetEntityCoords
                L7_3 = L3_1
                L6_3 = L6_3(L7_3)
                L6_3 = L5_3 - L6_3
                L6_3 = #L6_3
                L7_3 = 2.5
                if not (L6_3 < L7_3) then
                  L6_3 = GetEntityCoords
                  L7_3 = L5_1
                  L6_3 = L6_3(L7_3)
                  L6_3 = L5_3 - L6_3
                  L6_3 = #L6_3
                  L7_3 = 2.5
                  if not (L6_3 < L7_3) then
                    goto lbl_279
                  end
                end
                L6_3 = ShowHelpNotification
                L7_3 = Config
                L7_3 = L7_3.Lang
                L7_3 = L7_3.attachSkipToTrailer
                L6_3(L7_3)
                L6_3 = SetEntityDrawOutlineColor
                L7_3 = 41
                L8_3 = 171
                L9_3 = 50
                L10_3 = 200
                L6_3(L7_3, L8_3, L9_3, L10_3)
                L6_3 = IsControlJustReleased
                L7_3 = 0
                L8_3 = 38
                L6_3 = L6_3(L7_3, L8_3)
                if L6_3 then
                  L6_3 = SetEntityDrawOutlineColor
                  L7_3 = 171
                  L8_3 = 91
                  L9_3 = 41
                  L10_3 = 200
                  L6_3(L7_3, L8_3, L9_3, L10_3)
                  L6_3 = SetEntityDrawOutline
                  L7_3 = L13_1
                  L8_3 = false
                  L6_3(L7_3, L8_3)
                  if L2_3 then
                    L6_3 = AttachSkipToTrailer
                    L7_3 = L3_1
                    L8_3 = L4_1
                    L9_3 = L4_3
                    L6_3(L7_3, L8_3, L9_3)
                    L6_3 = 0
                    L3_1 = L6_3
                    L6_3 = 0
                    L4_1 = L6_3
                  end
                  if L3_3 then
                    L6_3 = AttachSkipToTrailer
                    L7_3 = L5_1
                    L8_3 = L6_1
                    L9_3 = L4_3
                    L6_3(L7_3, L8_3, L9_3)
                    L6_3 = 0
                    L5_1 = L6_3
                    L6_3 = 0
                    L6_1 = L6_3
                  end
                  L6_3 = false
                  L31_1 = L6_3
                end
                L0_3 = 0
              end
            end
          end
        end
        ::lbl_279::
        L1_3 = Wait
        L2_3 = L0_3
        L1_3(L2_3)
      end
    end
    L14_2(L15_2)
  end
end
L53_1(L54_1, L55_1)
L53_1 = _ENV
L54_1 = "GetNearbyVehicles"
function L55_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetGamePool
  L3_2 = "CVehicle"
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = GetEntityCoords
    L8_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2)
    L7_2 = A0_2 - L7_2
    L7_2 = #L7_2
    if A1_2 >= L7_2 then
      L8_2 = false
      return L8_2
    end
  end
  L3_2 = true
  return L3_2
end
L53_1[L54_1] = L55_1
L53_1 = RegisterNetEvent
L54_1 = "17mov_Lumberjack:AttachSkip"
function L55_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L4_2 = DeleteEntity
  L5_2 = SkipsSpawnPoints
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.obj
  L4_2(L5_2)
  L4_2 = DeleteEntity
  L5_2 = SkipsSpawnPoints
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.chipsObj
  L4_2(L5_2)
  L4_2 = SkipsSpawnPoints
  L4_2 = L4_2[A0_2]
  L4_2.currActiveSkip = false
  L4_2 = SkipsSpawnPoints
  L4_2 = L4_2[A0_2]
  L4_2.hasBeenLifted = true
  while true do
    L4_2 = NetworkDoesNetworkIdExist
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = NetToObj
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      if 0 ~= L4_2 then
        L4_2 = NetToObj
        L5_2 = A1_2
        L4_2 = L4_2(L5_2)
        if L4_2 ~= A1_2 then
          break
        end
      end
    end
    L4_2 = Wait
    L5_2 = 10
    L4_2(L5_2)
  end
  while true do
    L4_2 = NetworkDoesNetworkIdExist
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = NetToObj
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      if 0 ~= L4_2 then
        L4_2 = NetToObj
        L5_2 = A2_2
        L4_2 = L4_2(L5_2)
        if L4_2 ~= A2_2 then
          break
        end
      end
    end
    L4_2 = Wait
    L5_2 = 10
    L4_2(L5_2)
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = Wait
    L1_3 = 3000
    L0_3(L1_3)
    L0_3 = pairs
    L1_3 = SkipsSpawnPoints
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      while true do
        L6_3 = GetNearbyVehicles
        L7_3 = SkipsSpawnPoints
        L7_3 = L7_3[1]
        L7_3 = L7_3.coords
        L8_3 = 6.5
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 then
          break
        end
        L6_3 = Wait
        L7_3 = 500
        L6_3(L7_3)
      end
      L6_3 = L5_3.currActiveSkip
      if not L6_3 then
        L6_3 = A0_2
        if L4_3 ~= L6_3 then
          L6_3 = L5_3.hasBeenLifted
          if nil == L6_3 then
            L6_3 = SetEntityCoords
            L7_3 = L5_3.obj
            L8_3 = SkipsSpawnPoints
            L8_3 = L8_3[1]
            L8_3 = L8_3.coords
            L8_3 = L8_3.x
            L9_3 = SkipsSpawnPoints
            L9_3 = L9_3[1]
            L9_3 = L9_3.coords
            L9_3 = L9_3.y
            L10_3 = SkipsSpawnPoints
            L10_3 = L10_3[1]
            L10_3 = L10_3.coords
            L10_3 = L10_3.z
            L11_3 = false
            L12_3 = false
            L13_3 = false
            L14_3 = false
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
            L6_3 = SetEntityRotation
            L7_3 = L5_3.obj
            L8_3 = SkipsSpawnPoints
            L8_3 = L8_3[1]
            L8_3 = L8_3.rotation
            L8_3 = L8_3.x
            L9_3 = SkipsSpawnPoints
            L9_3 = L9_3[1]
            L9_3 = L9_3.rotation
            L9_3 = L9_3.y
            L10_3 = SkipsSpawnPoints
            L10_3 = L10_3[1]
            L10_3 = L10_3.rotation
            L10_3 = L10_3.z
            L11_3 = 0
            L12_3 = false
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
            L6_3 = SetEntityCollision
            L7_3 = L5_3.obj
            L8_3 = true
            L9_3 = true
            L6_3(L7_3, L8_3, L9_3)
            L5_3.currActiveSkip = true
            break
          end
        end
      end
    end
  end
  L4_2(L5_2)
  if A3_2 then
    L4_2 = DoesEntityExist
    L5_2 = L34_1.JobVehicle2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = NetToObj
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      L5_1 = L4_2
      L4_2 = NetToObj
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      L6_1 = L4_2
      while true do
        L4_2 = IsEntityAttachedToEntity
        L5_2 = L5_1
        L6_2 = L34_1.JobVehicle2
        L4_2 = L4_2(L5_2, L6_2)
        if L4_2 then
          break
        end
        L4_2 = NetworkRequestControlOfEntity
        L5_2 = L5_1
        L4_2(L5_2)
        L4_2 = DetachEntity
        L5_2 = L5_1
        L6_2 = true
        L7_2 = true
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = GetEntityBoneIndexByName
        L5_2 = L34_1.JobVehicle2
        L6_2 = "forks_attach"
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = AttachEntityToEntity
        L6_2 = L5_1
        L7_2 = L34_1.JobVehicle2
        L8_2 = L4_2
        L9_2 = L41_1.coords
        L9_2 = L9_2.x
        L10_2 = L41_1.coords
        L10_2 = L10_2.y
        L11_2 = L41_1.coords
        L11_2 = L11_2.z
        L12_2 = L41_1.rotation
        L12_2 = L12_2.x
        L13_2 = L41_1.rotation
        L13_2 = L13_2.y
        L14_2 = L41_1.rotation
        L14_2 = L14_2.z
        L15_2 = false
        L16_2 = true
        L17_2 = false
        L18_2 = false
        L19_2 = 2
        L20_2 = true
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L5_2 = Wait
        L6_2 = 250
        L5_2(L6_2)
      end
  end
  else
    L4_2 = DoesEntityExist
    L5_2 = L34_1.JobVehicle
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = NetToObj
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      L3_1 = L4_2
      L4_2 = NetToObj
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      L4_1 = L4_2
      while true do
        L4_2 = IsEntityAttachedToEntity
        L5_2 = L3_1
        L6_2 = L34_1.JobVehicle
        L4_2 = L4_2(L5_2, L6_2)
        if L4_2 then
          break
        end
        L4_2 = NetworkRequestControlOfEntity
        L5_2 = L3_1
        L4_2(L5_2)
        L4_2 = DetachEntity
        L5_2 = L3_1
        L6_2 = true
        L7_2 = true
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = GetEntityBoneIndexByName
        L5_2 = L34_1.JobVehicle
        L6_2 = "forks_attach"
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = AttachEntityToEntity
        L6_2 = L3_1
        L7_2 = L34_1.JobVehicle
        L8_2 = L4_2
        L9_2 = L41_1.coords
        L9_2 = L9_2.x
        L10_2 = L41_1.coords
        L10_2 = L10_2.y
        L11_2 = L41_1.coords
        L11_2 = L11_2.z
        L12_2 = L41_1.rotation
        L12_2 = L12_2.x
        L13_2 = L41_1.rotation
        L13_2 = L13_2.y
        L14_2 = L41_1.rotation
        L14_2 = L14_2.z
        L15_2 = false
        L16_2 = true
        L17_2 = false
        L18_2 = false
        L19_2 = 2
        L20_2 = true
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L5_2 = Wait
        L6_2 = 250
        L5_2(L6_2)
      end
    end
  end
end
L53_1(L54_1, L55_1)
L53_1 = {}
L54_1 = RegisterNetEvent
L55_1 = "17mov_Lumberjack:AttachLogToLumberCar"
function L56_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L4_2 = 0
  L5_2 = false
  L6_2 = pairs
  L7_2 = L35_1
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    if L11_2 == A1_2 then
      L12_2 = L34_1
      L4_2 = L12_2[L10_2]
      L5_2 = true
    end
  end
  while 0 == L4_2 or L4_2 == A1_2 do
    L6_2 = NetToVeh
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    L6_2 = L6_2 - L3_2
    L7_2 = 5000
    if L6_2 > L7_2 then
      return
    end
    L6_2 = Wait
    L7_2 = 100
    L6_2(L7_2)
  end
  L6_2 = nil
  L7_2 = DoesEntityExist
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L7_2 = GetEntityBoneIndexByName
    L8_2 = L4_2
    L9_2 = "forks_attach"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = GetEntityCoords
    L9_2 = L4_2
    L8_2 = L8_2(L9_2)
    L9_2 = CreateObject
    L10_2 = Config
    L10_2 = L10_2.Props
    L10_2 = L10_2.logs
    L10_2 = L10_2.hash
    L11_2 = L8_2.x
    L12_2 = L8_2.y
    L13_2 = L8_2.z
    L14_2 = false
    L15_2 = true
    L16_2 = true
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L6_2 = L9_2
    L9_2 = AttachEntityToEntity
    L10_2 = L6_2
    L11_2 = L4_2
    L12_2 = L7_2
    L13_2 = Config
    L13_2 = L13_2.ForksAttachment
    L13_2 = L13_2[A0_2]
    L13_2 = L13_2.offset
    L13_2 = L13_2.x
    L14_2 = Config
    L14_2 = L14_2.ForksAttachment
    L14_2 = L14_2[A0_2]
    L14_2 = L14_2.offset
    L14_2 = L14_2.y
    L15_2 = Config
    L15_2 = L15_2.ForksAttachment
    L15_2 = L15_2[A0_2]
    L15_2 = L15_2.offset
    L15_2 = L15_2.z
    L16_2 = Config
    L16_2 = L16_2.ForksAttachment
    L16_2 = L16_2[A0_2]
    L16_2 = L16_2.rotation
    L16_2 = L16_2.x
    L17_2 = Config
    L17_2 = L17_2.ForksAttachment
    L17_2 = L17_2[A0_2]
    L17_2 = L17_2.rotation
    L17_2 = L17_2.y
    L18_2 = Config
    L18_2 = L18_2.ForksAttachment
    L18_2 = L18_2[A0_2]
    L18_2 = L18_2.rotation
    L18_2 = L18_2.z
    L19_2 = true
    L20_2 = true
    L21_2 = true
    L22_2 = false
    L23_2 = 2
    L24_2 = true
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L9_2 = DecorSetBool
    L10_2 = L6_2
    L11_2 = "entityOnForks"
    L12_2 = true
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = L53_1
    L9_2 = L9_2[A1_2]
    if nil == L9_2 then
      L9_2 = L53_1
      L10_2 = {}
      L9_2[A1_2] = L10_2
    end
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L53_1
    L10_2 = L10_2[A1_2]
    L11_2 = {}
    L11_2.obj = L6_2
    L11_2.slot = A0_2
    L9_2(L10_2, L11_2)
  end
  if L5_2 then
    L7_2 = CurrentLogCounter
    L7_2 = L7_2 - 1
    CurrentLogCounter = L7_2
    if A2_2 then
      L7_2 = Config
      L7_2 = L7_2.ForksAttachment2
      L7_2 = L7_2[A0_2]
      L7_2.obj = L6_2
    else
      L7_2 = Config
      L7_2 = L7_2.ForksAttachment
      L7_2 = L7_2[A0_2]
      L7_2.obj = L6_2
    end
  end
end
L54_1(L55_1, L56_1)
L54_1 = RegisterNetEvent
L55_1 = "17mov_Lumberjack:DetachObjFromLumber"
function L56_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L4_2 = 0
  L5_2 = false
  L6_2 = pairs
  L7_2 = L35_1
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    if L11_2 == A2_2 then
      L12_2 = L34_1
      L4_2 = L12_2[L10_2]
      L5_2 = true
    end
  end
  while 0 == L4_2 or L4_2 == A2_2 do
    L6_2 = NetToVeh
    L7_2 = A2_2
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    L6_2 = L6_2 - L3_2
    L7_2 = 5000
    if L6_2 > L7_2 then
      return
    end
    L6_2 = Wait
    L7_2 = 100
    L6_2(L7_2)
  end
  L6_2 = pairs
  L7_2 = L53_1
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    if L10_2 == A2_2 then
      L12_2 = L53_1
      L12_2 = L12_2[L10_2]
      if L12_2 then
        L12_2 = 1
        L13_2 = L53_1
        L13_2 = L13_2[L10_2]
        L13_2 = #L13_2
        L14_2 = 1
        for L15_2 = L12_2, L13_2, L14_2 do
          L16_2 = L53_1
          L16_2 = L16_2[L10_2]
          L16_2 = L16_2[L15_2]
          if L16_2 then
            L16_2 = L53_1
            L16_2 = L16_2[L10_2]
            L16_2 = L16_2[L15_2]
            L16_2 = L16_2.slot
            if L16_2 == A0_2 then
              L16_2 = NetworkRequestControlOfNetworkId
              L17_2 = A2_2
              L16_2(L17_2)
              L16_2 = DeleteEntity
              L17_2 = L53_1
              L17_2 = L17_2[L10_2]
              L17_2 = L17_2[L15_2]
              L17_2 = L17_2.obj
              L16_2(L17_2)
              L16_2 = L53_1
              L16_2 = L16_2[L10_2]
              L16_2[L15_2] = nil
            end
          end
        end
      end
    end
  end
  if L5_2 then
    if A1_2 then
      L6_2 = NetworkRequestControlOfEntity
      L7_2 = L34_1.JobVehicle2
      L6_2(L7_2)
      L6_2 = DeleteEntity
      L7_2 = Config
      L7_2 = L7_2.ForksAttachment2
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.obj
      L6_2(L7_2)
      L6_2 = Config
      L6_2 = L6_2.ForksAttachment2
      L6_2 = L6_2[A0_2]
      L6_2.obj = nil
    else
      L6_2 = NetworkRequestControlOfEntity
      L7_2 = L34_1.JobVehicle
      L6_2(L7_2)
      L6_2 = DeleteEntity
      L7_2 = Config
      L7_2 = L7_2.ForksAttachment
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.obj
      L6_2(L7_2)
      L6_2 = Config
      L6_2 = L6_2.ForksAttachment
      L6_2 = L6_2[A0_2]
      L6_2.obj = nil
    end
  end
end
L54_1(L55_1, L56_1)
L54_1 = RegisterNetEvent
L55_1 = "17mov_lumberjack:SendVehicleToClients"
function L56_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = 0
  while 0 == L3_2 or L3_2 == A1_2 do
    L4_2 = NetToVeh
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    L4_2 = L4_2 - L2_2
    L5_2 = 5000
    if L4_2 > L5_2 then
      L4_2 = print
      L5_2 = "Failed to obtain vehicle ID from NetId"
      L6_2 = A0_2
      return L4_2(L5_2, L6_2)
    end
    L4_2 = Wait
    L5_2 = 100
    L4_2(L5_2)
  end
  L4_2 = L34_1
  L4_2[A0_2] = L3_2
  L4_2 = SetHornEnabled
  L5_2 = L3_2
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = L35_1
  L4_2[A0_2] = A1_2
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    while true do
      L0_3 = OnDuty
      if not L0_3 then
        break
      end
      L0_3 = NetworkDoesEntityExistWithNetworkId
      L2_3 = A0_2
      L1_3 = L35_1
      L1_3 = L1_3[L2_3]
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L1_3 = A0_2
        L0_3 = L35_1
        L0_3 = L0_3[L1_3]
        if 0 ~= L0_3 then
          L1_3 = A0_2
          L0_3 = L35_1
          L0_3 = L0_3[L1_3]
          if nil ~= L0_3 then
            L0_3 = NetToVeh
            L2_3 = A0_2
            L1_3 = L35_1
            L1_3 = L1_3[L2_3]
            L0_3 = L0_3(L1_3)
            L2_3 = A0_2
            L1_3 = L34_1
            L1_3 = L1_3[L2_3]
            if L1_3 ~= L0_3 then
              L2_3 = A0_2
              L1_3 = L35_1
              L1_3 = L1_3[L2_3]
              if L0_3 ~= L1_3 then
                L2_3 = A0_2
                L1_3 = L34_1
                L3_3 = NetToVeh
                L5_3 = A0_2
                L4_3 = L35_1
                L4_3 = L4_3[L5_3]
                L3_3 = L3_3(L4_3)
                L1_3[L2_3] = L3_3
                L1_3 = SetHornEnabled
                L3_3 = A0_2
                L2_3 = L34_1
                L2_3 = L2_3[L3_3]
                L3_3 = false
                L1_3(L2_3, L3_3)
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
  L4_2(L5_2)
  L4_2 = Config
  L4_2 = L4_2.GiveKeysToAllLobby
  if L4_2 then
    L4_2 = SetVehicle
    L5_2 = L3_2
    L4_2(L5_2)
  end
end
L54_1(L55_1, L56_1)
L54_1 = _ENV
L55_1 = "GetLastPlanksSlot"
function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = 0
  L1_2 = pairs
  L2_2 = L30_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.obj
    if nil == L7_2 then
      L0_2 = L5_2
      break
    end
  end
  return L0_2
end
L54_1[L55_1] = L56_1
L54_1 = _ENV
L55_1 = "GetLastSkipSlot"
function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = 0
  L1_2 = pairs
  L2_2 = L39_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.obj
    if nil == L7_2 then
      L0_2 = L5_2
      break
    end
  end
  return L0_2
end
L54_1[L55_1] = L56_1
L54_1 = RegisterNetEvent
L55_1 = "17mov_Lumberjack:DisableViaAboveSpawn"
function L56_1(A0_2)
  local L1_2
  L1_2 = PlanksSpawnPoints
  L1_2 = L1_2[A0_2]
  L1_2.haveAbove = false
end
L54_1(L55_1, L56_1)
L54_1 = RegisterNetEvent
L55_1 = "17mov_Lumberjack:EnableViaAboveLift"
function L56_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PlanksSpawnPoints
  L1_2 = L1_2[A0_2]
  L1_2.haveAbove = false
  L1_2 = DeleteObject
  L2_2 = PlanksSpawnPoints
  L3_2 = PlanksSpawnPoints
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.aboveId
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.obj
  L1_2(L2_2)
  L1_2 = PlanksSpawnPoints
  L2_2 = PlanksSpawnPoints
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.aboveId
  L1_2 = L1_2[L2_2]
  L1_2.obj = nil
end
L54_1(L55_1, L56_1)
L54_1 = RegisterNetEvent
L55_1 = "17mov_Lumberjack:ForkliftUpdate"
function L56_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = true
  L31_1 = L2_2
  L2_2 = DeleteEntity
  L3_2 = PlanksSpawnPoints
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.obj
  L2_2(L3_2)
  L2_2 = PlanksSpawnPoints
  L2_2 = L2_2[A1_2]
  L2_2.obj = nil
  L2_2 = 0
  while true do
    L3_2 = NetToObj
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if 0 ~= L3_2 then
      L3_2 = NetToObj
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 ~= A0_2 then
        break
      end
    end
    L3_2 = Wait
    L4_2 = 10
    L3_2(L4_2)
    L2_2 = L2_2 + 1
    L3_2 = 250
    if L2_2 > L3_2 then
      break
    end
  end
  L3_2 = NetToObj
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L32_1 = L3_2
end
L54_1(L55_1, L56_1)
L54_1 = _ENV
L55_1 = "AttachSkipToTrailer"
function L56_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = SkipsSpawnPoints
  L3_2 = L3_2[A2_2]
  L3_2 = L3_2.chipsAttachOffset
  L4_2 = false
  L31_1 = L4_2
  L4_2 = NetworkRequestControlOfEntity
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = NetworkRequestControlOfEntity
  L5_2 = A1_2
  L4_2(L5_2)
  L4_2 = DeleteEntity
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = DeleteEntity
  L5_2 = A1_2
  L4_2(L5_2)
  L4_2 = TriggerServerEvent
  L5_2 = "17mov_Lumberjack:AttachSkipToTrailer"
  L6_2 = L35_1.JobFlatbed
  L7_2 = A2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L54_1[L55_1] = L56_1
L54_1 = _ENV
L55_1 = "AttachPalleteToTrailer"
function L56_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = false
  L31_1 = L2_2
  L2_2 = NetworkRequestControlOfEntity
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = DeleteEntity
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_Lumberjack:AttachPallete"
  L4_2 = L35_1.JobFlatbed
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L54_1[L55_1] = L56_1
L54_1 = _ENV
L55_1 = "GetLastPlankLocationIndex"
function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = 0
  L1_2 = pairs
  L2_2 = PlanksSpawnPoints
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.obj
    if nil == L7_2 then
      L0_2 = L5_2
      break
    end
  end
  return L0_2
end
L54_1[L55_1] = L56_1
L54_1 = false
L55_1 = RegisterNetEvent
L56_1 = "17mov_Lumberjack:SpawnLocalPlanks"
function L57_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 > 9 then
    return
  end
  L1_2 = L54_1
  if L1_2 then
    return
  end
  L1_2 = GetHashKey
  L2_2 = "17mov_woodpile"
  L1_2 = L1_2(L2_2)
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
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
  end
  L2_2 = true
  L54_1 = L2_2
  L2_2 = CreateObject
  L3_2 = L1_2
  L4_2 = PlanksSpawnPoints
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.coords
  L4_2 = L4_2.x
  L5_2 = PlanksSpawnPoints
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.coords
  L5_2 = L5_2.y
  L6_2 = PlanksSpawnPoints
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.coords
  L6_2 = L6_2.z
  L7_2 = false
  L8_2 = true
  L9_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = SetEntityRotation
  L4_2 = L2_2
  L5_2 = PlanksSpawnPoints
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.rotation
  L5_2 = L5_2.x
  L6_2 = PlanksSpawnPoints
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.rotation
  L6_2 = L6_2.y
  L7_2 = PlanksSpawnPoints
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.rotation
  L7_2 = L7_2.z
  L8_2 = 0
  L9_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = FreezeEntityPosition
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = PlanksSpawnPoints
  L3_2 = L3_2[A0_2]
  L3_2.obj = L2_2
  L3_2 = Entity
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.state
  L3_2.myIndex = A0_2
  L3_2 = Entity
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.state
  L3_2.type = "planks"
  L3_2 = pairs
  L4_2 = PlanksSpawnPoints
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.aboveId
    if L9_2 == A0_2 then
      L8_2.haveAbove = true
    end
  end
  L3_2 = Wait
  L4_2 = 1500
  L3_2(L4_2)
  L3_2 = false
  L54_1 = L3_2
end
L55_1(L56_1, L57_1)
L55_1 = {}
L56_1 = 1
L57_1 = false
L58_1 = _ENV
L59_1 = "AnimateObjectToPoint"
function L60_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L8_2 = TriggerServerEvent
  L9_2 = "17mov_Lumberjack:StartAnimation"
  L10_2 = {}
  L11_2 = A5_2
  L12_2 = A6_2
  L13_2 = A1_2
  L14_2 = A2_2
  L15_2 = A3_2
  L16_2 = A4_2
  L17_2 = A0_2
  L18_2 = A7_2
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L10_2[5] = L15_2
  L10_2[6] = L16_2
  L10_2[7] = L17_2
  L10_2[8] = L18_2
  L8_2(L9_2, L10_2)
end
L58_1[L59_1] = L60_1
L58_1 = _ENV
L59_1 = "StartAnimation"
function L60_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = A0_2[1]
  L2_2 = A0_2[2]
  L3_2 = A0_2[3]
  L4_2 = A0_2[4]
  L5_2 = A0_2[5]
  L6_2 = A0_2[6]
  L7_2 = A0_2[7]
  L8_2 = A0_2[8]
  L9_2 = Config
  L9_2 = L9_2.Props
  L9_2 = L9_2.logs
  L9_2 = L9_2.hash
  while true do
    L10_2 = HasModelLoaded
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      break
    end
    L10_2 = RequestModel
    L11_2 = L9_2
    L10_2(L11_2)
    L10_2 = Wait
    L11_2 = 10
    L10_2(L11_2)
  end
  if nil == L7_2 then
    L10_2 = CreateObject
    L11_2 = L9_2
    L12_2 = L1_2.x
    L13_2 = L1_2.y
    L14_2 = L1_2.z
    L15_2 = false
    L16_2 = true
    L17_2 = false
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L7_2 = L10_2
    L10_2 = DecorSetBool
    L11_2 = L7_2
    L12_2 = "entityOnForks"
    L13_2 = true
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = SetEntityRotation
    L11_2 = L7_2
    L12_2 = L2_2.x
    L13_2 = L2_2.y
    L14_2 = L2_2.z
    L15_2 = 0
    L16_2 = false
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L10_2 = TriggerEvent
    L11_2 = "17mov_Lumberjack:PlaySound"
    L12_2 = "logroll.mp3"
    L13_2 = L7_2
    L14_2 = true
    L10_2(L11_2, L12_2, L13_2, L14_2)
  end
  L10_2 = L56_1
  L11_2 = L56_1
  L11_2 = L11_2 + 1
  L56_1 = L11_2
  L11_2 = L55_1
  L12_2 = {}
  L12_2.object = L7_2
  L12_2.point = L3_2
  L12_2.duration = L4_2
  L12_2.currentIndex = L5_2
  L12_2.changeObject = L6_2
  L13_2 = GetGameTimer
  L13_2 = L13_2()
  L12_2.startTime = L13_2
  L13_2 = GetEntityCoords
  L14_2 = L7_2
  L15_2 = false
  L13_2 = L13_2(L14_2, L15_2)
  L12_2.initialPos = L13_2
  L13_2 = GetEntityRotation
  L14_2 = L7_2
  L15_2 = 2
  L13_2 = L13_2(L14_2, L15_2)
  L12_2.initialRot = L13_2
  L12_2.type = L8_2
  L11_2[L10_2] = L12_2
  L11_2 = L57_1
  if not L11_2 then
    L11_2 = RunAnimationThread
    L11_2()
    L11_2 = true
    L57_1 = L11_2
  end
end
L58_1[L59_1] = L60_1
L58_1 = RegisterNetEvent
L59_1 = "17mov_Lumberjack:StartAnimation"
L60_1 = _ENV
L61_1 = "StartAnimation"
L60_1 = L60_1[L61_1]
L58_1(L59_1, L60_1)
L58_1 = _ENV
L59_1 = "RunAnimationThread"
function L60_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3
    L0_3 = nil
    L1_3 = nil
    L2_3 = nil
    L3_3 = nil
    L4_3 = nil
    L5_3 = nil
    L6_3 = nil
    L7_3 = nil
    L8_3 = nil
    L9_3 = nil
    L10_3 = nil
    L11_3 = nil
    L12_3 = nil
    L13_3 = nil
    L14_3 = nil
    while true do
      L15_3 = {}
      L16_3 = GetGameTimer
      L16_3 = L16_3()
      L6_3 = L16_3
      L16_3 = 0
      L17_3 = next
      L18_3 = L55_1
      L17_3 = L17_3(L18_3)
      if nil == L17_3 then
        L17_3 = false
        L57_1 = L17_3
        break
      end
      L17_3 = pairs
      L18_3 = L55_1
      L17_3, L18_3, L19_3, L20_3 = L17_3(L18_3)
      for L21_3, L22_3 in L17_3, L18_3, L19_3, L20_3 do
        L16_3 = L16_3 + 1
        L0_3 = L22_3.object
        L1_3 = L22_3.point
        L2_3 = L22_3.duration
        L3_3 = L22_3.currentIndex
        L4_3 = L22_3.changeObject
        L23_3 = L22_3.startTime
        L5_3 = L6_3 - L23_3
        L14_3 = L22_3.type
        L23_3 = nil
        if "chips" == L14_3 then
          L23_3 = L44_1
        else
          L23_3 = L45_1
        end
        L24_3 = GetEntityCoords
        L25_3 = L0_3
        L26_3 = false
        L24_3 = L24_3(L25_3, L26_3)
        if L2_3 <= L5_3 then
          L25_3 = table
          L25_3 = L25_3.insert
          L26_3 = L15_3
          L27_3 = L21_3
          L25_3(L26_3, L27_3)
          if L12_3 then
            L25_3 = RemoveParticleFx
            L26_3 = L12_3
            L27_3 = false
            L25_3(L26_3, L27_3)
            L12_3 = nil
          end
          L3_3 = L3_3 + 1
          L25_3 = #L23_3
          if L3_3 <= L25_3 then
            L25_3 = L3_3 - 1
            L25_3 = L23_3[L25_3]
            if nil ~= L25_3 then
              L26_3 = L25_3.changeObjectTo
              if L26_3 then
                if L4_3 then
                  L26_3 = DeleteObject
                  L27_3 = L0_3
                  L26_3(L27_3)
                  L26_3 = 0
                  while true do
                    L27_3 = DoesEntityExist
                    L28_3 = L0_3
                    L27_3 = L27_3(L28_3)
                    if not (L27_3 and L26_3 < 100) then
                      break
                    end
                    L27_3 = Wait
                    L28_3 = 10
                    L27_3(L28_3)
                    L27_3 = DeleteEntity
                    L28_3 = L0_3
                    L27_3(L28_3)
                    L26_3 = L26_3 + 1
                  end
                  L27_3 = GetHashKey
                  L28_3 = L25_3.changeObjectTo
                  L27_3 = L27_3(L28_3)
                  L28_3 = HasModelLoaded
                  L29_3 = L27_3
                  L28_3 = L28_3(L29_3)
                  if not L28_3 then
                    L28_3 = RequestModel
                    L29_3 = L27_3
                    L28_3(L29_3)
                    L28_3 = Wait
                    L29_3 = 100
                    L28_3(L29_3)
                  end
                  L28_3 = CreateObject
                  L29_3 = L27_3
                  L30_3 = L25_3.coords
                  L30_3 = L30_3.x
                  L31_3 = L25_3.coords
                  L31_3 = L31_3.y
                  L32_3 = L25_3.coords
                  L32_3 = L32_3.z
                  L33_3 = false
                  L34_3 = true
                  L35_3 = false
                  L28_3 = L28_3(L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
                  L0_3 = L28_3
                  L28_3 = SetEntityRotation
                  L29_3 = L0_3
                  L30_3 = L25_3.rotation
                  L30_3 = L30_3.x
                  L31_3 = L25_3.rotation
                  L31_3 = L31_3.y
                  L32_3 = L25_3.rotation
                  L32_3 = L32_3.z
                  L33_3 = 0
                  L34_3 = false
                  L28_3(L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                  L28_3 = DecorSetBool
                  L29_3 = L0_3
                  L30_3 = "entityOnForks"
                  L31_3 = true
                  L28_3(L29_3, L30_3, L31_3)
                else
                  L26_3 = DeleteObject
                  L27_3 = L0_3
                  L26_3(L27_3)
                  L26_3 = 0
                  while true do
                    L27_3 = DoesEntityExist
                    L28_3 = L0_3
                    L27_3 = L27_3(L28_3)
                    if not (L27_3 and L26_3 < 100) then
                      break
                    end
                    L27_3 = Wait
                    L28_3 = 10
                    L27_3(L28_3)
                    L27_3 = DeleteEntity
                    L28_3 = L0_3
                    L27_3(L28_3)
                    L26_3 = L26_3 + 1
                  end
                end
              end
            end
            L26_3 = StartAnimation
            L27_3 = {}
            L28_3 = nil
            L29_3 = nil
            L30_3 = L23_3[L3_3]
            L31_3 = L23_3[L3_3]
            L31_3 = L31_3.duration
            if not L31_3 then
              L31_3 = 1000
            end
            L32_3 = L3_3
            L33_3 = L4_3
            L34_3 = L0_3
            L35_3 = L14_3
            L27_3[1] = L28_3
            L27_3[2] = L29_3
            L27_3[3] = L30_3
            L27_3[4] = L31_3
            L27_3[5] = L32_3
            L27_3[6] = L33_3
            L27_3[7] = L34_3
            L27_3[8] = L35_3
            L26_3(L27_3)
          elseif L4_3 then
            if nil == L14_3 then
              L25_3 = Wait
              L26_3 = 100
              L25_3(L26_3)
              L25_3 = DeleteObject
              L26_3 = L0_3
              L25_3(L26_3)
              L25_3 = GetLastPlankLocationIndex
              L25_3 = L25_3()
              if 0 ~= L25_3 then
                L26_3 = TriggerServerEvent
                L27_3 = "17mov_lumberjack:SpawnLocalPlanks"
                L28_3 = L25_3
                L26_3(L27_3, L28_3)
              end
            else
              L25_3 = DeleteObject
              L26_3 = L0_3
              L25_3(L26_3)
              L25_3 = GetCurrActiveSkip
              L25_3 = L25_3()
              L26_3 = TriggerServerEvent
              L27_3 = "17mov_lumberjack:AddChipsToQueue"
              L26_3(L27_3)
            end
          end
        end
        L25_3 = L5_3 / L2_3
        L26_3 = vector3
        L27_3 = Lerp
        L28_3 = L22_3.initialPos
        L28_3 = L28_3.x
        L29_3 = L1_3.coords
        L29_3 = L29_3.x
        L30_3 = L25_3
        L27_3 = L27_3(L28_3, L29_3, L30_3)
        L28_3 = Lerp
        L29_3 = L22_3.initialPos
        L29_3 = L29_3.y
        L30_3 = L1_3.coords
        L30_3 = L30_3.y
        L31_3 = L25_3
        L28_3 = L28_3(L29_3, L30_3, L31_3)
        L29_3 = Lerp
        L30_3 = L22_3.initialPos
        L30_3 = L30_3.z
        L31_3 = L1_3.coords
        L31_3 = L31_3.z
        L32_3 = L25_3
        L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L29_3(L30_3, L31_3, L32_3)
        L26_3 = L26_3(L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
        L7_3 = L26_3
        L26_3 = L1_3.rotate
        if L26_3 then
          L9_3 = L2_3 / 1000.0
          L10_3 = L9_3 * -360.0
          L26_3 = L10_3 * L25_3
          L11_3 = L26_3 % -360.0
          L26_3 = vector3
          L27_3 = L22_3.initialRot
          L27_3 = L27_3.x
          L28_3 = L11_3
          L29_3 = L22_3.initialRot
          L29_3 = L29_3.z
          L26_3 = L26_3(L27_3, L28_3, L29_3)
          L8_3 = L26_3
        else
          L26_3 = vector3
          L27_3 = Lerp
          L28_3 = L22_3.initialRot
          L28_3 = L28_3.x
          L29_3 = L1_3.rotation
          L29_3 = L29_3.x
          L30_3 = L25_3
          L27_3 = L27_3(L28_3, L29_3, L30_3)
          L28_3 = Lerp
          L29_3 = L22_3.initialRot
          L29_3 = L29_3.y
          L30_3 = L1_3.rotation
          L30_3 = L30_3.y
          L31_3 = L25_3
          L28_3 = L28_3(L29_3, L30_3, L31_3)
          L29_3 = Lerp
          L30_3 = L22_3.initialRot
          L30_3 = L30_3.z
          L31_3 = L1_3.rotation
          L31_3 = L31_3.z
          L32_3 = L25_3
          L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3 = L29_3(L30_3, L31_3, L32_3)
          L26_3 = L26_3(L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
          L8_3 = L26_3
        end
        L26_3 = FreezeEntityPosition
        L27_3 = L0_3
        L28_3 = true
        L26_3(L27_3, L28_3)
        L26_3 = SetEntityRotation
        L27_3 = L0_3
        L28_3 = L8_3.x
        L29_3 = L8_3.y
        L30_3 = L8_3.z
        L31_3 = 2
        L32_3 = true
        L26_3(L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
        L26_3 = SetEntityCoords
        L27_3 = L0_3
        L28_3 = L7_3.x
        L29_3 = L7_3.y
        L30_3 = L7_3.z
        L31_3 = false
        L32_3 = false
        L33_3 = false
        L34_3 = false
        L26_3(L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
        L26_3 = L1_3.fxName
        if L26_3 then
          L26_3 = L1_3.particle
          if L26_3 then
            if L13_3 then
              L26_3 = L6_3 - L13_3
              L27_3 = 1500
              if not (L26_3 >= L27_3) then
                goto lbl_348
              end
            end
            L13_3 = L6_3
            L26_3 = 250
            L27_3 = GetGameTimer
            L27_3 = L27_3()
            L28_3 = true
            L29_3 = RequestNamedPtfxAsset
            L30_3 = L1_3.fxName
            L29_3(L30_3)
            while true do
              L29_3 = HasNamedPtfxAssetLoaded
              L30_3 = L1_3.fxName
              L29_3 = L29_3(L30_3)
              if L29_3 then
                break
              end
              L29_3 = Wait
              L30_3 = 0
              L29_3(L30_3)
              L29_3 = GetGameTimer
              L29_3 = L29_3()
              L29_3 = L29_3 - L27_3
              if L26_3 < L29_3 then
                L28_3 = false
                break
              end
            end
            if L28_3 then
              L29_3 = UseParticleFxAssetNextCall
              L30_3 = L1_3.fxName
              L29_3(L30_3)
              L29_3 = StartParticleFxNonLoopedOnEntity
              L30_3 = L1_3.particle
              L31_3 = L0_3
              L32_3 = 0.0
              L33_3 = 0.0
              L34_3 = 0.0
              L35_3 = 0.0
              L36_3 = 0.0
              L37_3 = 0.0
              L38_3 = 1.0
              L39_3 = false
              L40_3 = false
              L41_3 = false
              L29_3 = L29_3(L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3)
              L12_3 = L29_3
            end
          end
        end
        ::lbl_348::
      end
      L17_3 = ipairs
      L18_3 = L15_3
      L17_3, L18_3, L19_3, L20_3 = L17_3(L18_3)
      for L21_3, L22_3 in L17_3, L18_3, L19_3, L20_3 do
        L23_3 = L55_1
        L23_3[L22_3] = nil
      end
      if 0 == L16_3 then
        L17_3 = false
        L57_1 = L17_3
        break
      end
      L17_3 = Config
      L17_3 = L17_3.UseBetterPerformance
      if L17_3 then
        L17_3 = Wait
        L18_3 = 100
        L17_3(L18_3)
      else
        L17_3 = Wait
        L18_3 = 10
        L17_3(L18_3)
      end
    end
  end
  L0_2(L1_2)
end
L58_1[L59_1] = L60_1
L58_1 = RegisterNetEvent
L59_1 = "17mov_Lumberjack:AddChipsToQueue"
function L60_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L24_1
  L1_2 = Config
  L1_2 = L1_2.EnableVehicleLegacyMode
  if L1_2 then
    L1_2 = 4.5
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = 5.75
  ::lbl_10::
  L0_2 = L0_2 + L1_2
  L24_1 = L0_2
  L0_2 = false
  L25_1 = L0_2
  L0_2 = GetCurrActiveSkip
  L0_2 = L0_2()
  while true do
    L1_2 = OnDuty
    if L1_2 and 0 ~= L0_2 then
      L1_2 = SkipsSpawnPoints
      L1_2 = L1_2[L0_2]
      L1_2 = L1_2.percentage
      if L1_2 >= 100 then
        goto lbl_32
      end
    end
    L1_2 = OnDuty
    if not L1_2 or 0 ~= L0_2 then
      break
    end
    ::lbl_32::
    L1_2 = GetCurrActiveSkip
    L1_2 = L1_2()
    L0_2 = L1_2
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  L1_2 = SkipsSpawnPoints
  L2_2 = GetCurrActiveSkip
  L2_2 = L2_2()
  L1_2 = L1_2[L2_2]
  L2_2 = SkipsSpawnPoints
  L3_2 = GetCurrActiveSkip
  L3_2 = L3_2()
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.percentage
  L3_2 = Config
  L3_2 = L3_2.EnableVehicleLegacyMode
  if L3_2 then
    L3_2 = 4
    if L3_2 then
      goto lbl_56
    end
  end
  L3_2 = 5.25
  ::lbl_56::
  L2_2 = L2_2 + L3_2
  L1_2.percentage = L2_2
  L1_2 = ChipsThreadRunning
  if not L1_2 then
    ChipsThreadRunning = true
    L1_2 = StartChipsThread
    L1_2()
  end
end
L58_1(L59_1, L60_1)
L58_1 = _ENV
L59_1 = "StartChipsThread"
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = 1
  L1_2 = L42_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    while true do
      L4_2 = HasModelLoaded
      L5_2 = L42_1
      L5_2 = L5_2[L3_2]
      L5_2 = L5_2.model
      L4_2 = L4_2(L5_2)
      if L4_2 then
        break
      end
      L4_2 = RequestModel
      L5_2 = L42_1
      L5_2 = L5_2[L3_2]
      L5_2 = L5_2.model
      L4_2(L5_2)
      L4_2 = Wait
      L5_2 = 100
      L4_2(L5_2)
    end
    L4_2 = L42_1
    L4_2 = L4_2[L3_2]
    L5_2 = CreateObject
    L6_2 = L42_1
    L6_2 = L6_2[L3_2]
    L6_2 = L6_2.model
    L7_2 = L42_1
    L7_2 = L7_2[L3_2]
    L7_2 = L7_2.coords
    L7_2 = L7_2.x
    L8_2 = L42_1
    L8_2 = L8_2[L3_2]
    L8_2 = L8_2.coords
    L8_2 = L8_2.y
    L9_2 = L42_1
    L9_2 = L9_2[L3_2]
    L9_2 = L9_2.coords
    L9_2 = L9_2.z
    L10_2 = false
    L11_2 = true
    L12_2 = true
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L4_2.obj = L5_2
    L4_2 = SetEntityRotation
    L5_2 = L42_1
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.obj
    L6_2 = L42_1
    L6_2 = L6_2[L3_2]
    L6_2 = L6_2.rotation
    L6_2 = L6_2.x
    L7_2 = L42_1
    L7_2 = L7_2[L3_2]
    L7_2 = L7_2.rotation
    L7_2 = L7_2.y
    L8_2 = L42_1
    L8_2 = L8_2[L3_2]
    L8_2 = L8_2.rotation
    L8_2 = L8_2.z
    L9_2 = 0
    L10_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = FreezeEntityPosition
    L5_2 = L42_1
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.obj
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
  while true do
    L0_2 = ChipsThreadRunning
    if not L0_2 then
      break
    end
    L0_2 = GetCurrActiveSkip
    L0_2 = L0_2()
    L1_2 = OnDuty
    if L1_2 and 0 ~= L0_2 then
      L1_2 = SkipsSpawnPoints
      L1_2 = L1_2[L0_2]
      L1_2 = L1_2.liftProgress
      if L1_2 >= 100 then
        goto lbl_91
      end
    end
    L1_2 = OnDuty
    ::lbl_91::
    if L1_2 and 0 == L0_2 then
      L1_2 = 1
      L2_2 = L42_1
      L2_2 = #L2_2
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = DeleteEntity
        L6_2 = L42_1
        L6_2 = L6_2[L4_2]
        L6_2 = L6_2.obj
        L5_2(L6_2)
      end
      ChipsThreadRunning = false
      L1_2 = L9_1
      if not L1_2 then
        L1_2 = true
        L9_1 = L1_2
        L1_2 = ShowTutorial
        L2_2 = Config
        L2_2 = L2_2.Lang
        L2_2 = L2_2.afterSkipFullLoad
        L1_2(L2_2)
      end
    end
    L1_2 = SkipsSpawnPoints
    L1_2 = L1_2[L0_2]
    L2_2 = SkipsSpawnPoints
    L2_2 = L2_2[L0_2]
    L2_2 = L2_2.liftProgress
    L2_2 = L2_2 + 1
    L1_2.liftProgress = L2_2
    L1_2 = SkipsSpawnPoints
    L1_2 = L1_2[L0_2]
    L2_2 = L1_2.chipsAttachOffset
    L2_2 = L2_2.z
    L2_2 = L2_2 + 0.09574
    L3_2 = 7.0E-5
    L4_2 = L24_1
    L4_2 = L4_2 - 1
    L24_1 = L4_2
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
      while true do
        L0_3 = L1_2.chipsAttachOffset
        L0_3 = L0_3.z
        L1_3 = L2_2
        if not (L0_3 < L1_3) then
          break
        end
        L0_3 = L1_2.chipsAttachOffset
        L0_3 = L0_3.z
        L1_3 = L3_2
        L0_3 = L0_3 + L1_3
        L1_3 = DetachEntity
        L2_3 = L1_2.chipsObj
        L3_3 = true
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = AttachEntityToEntity
        L2_3 = L1_2.chipsObj
        L3_3 = L1_2.obj
        L4_3 = 0
        L5_3 = L1_2.chipsAttachOffset
        L5_3 = L5_3.x
        L6_3 = L1_2.chipsAttachOffset
        L6_3 = L6_3.y
        L7_3 = L0_3
        L8_3 = 0.0
        L9_3 = 0.0
        L10_3 = 0.0
        L11_3 = false
        L12_3 = true
        L13_3 = true
        L14_3 = false
        L15_3 = 2
        L16_3 = true
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        L1_3 = vec3
        L2_3 = L1_2.chipsAttachOffset
        L2_3 = L2_3.x
        L3_3 = L1_2.chipsAttachOffset
        L3_3 = L3_3.y
        L4_3 = L0_3
        L1_3 = L1_3(L2_3, L3_3, L4_3)
        L1_2.chipsAttachOffset = L1_3
        L1_3 = Wait
        L2_3 = 10
        L1_3(L2_3)
      end
    end
    L4_2(L5_2)
    L4_2 = TriggerServerEvent
    L5_2 = "17mov_Lumberjack:LiftChips"
    L6_2 = L0_2
    L4_2(L5_2, L6_2)
    L4_2 = Wait
    L5_2 = 500
    L4_2(L5_2)
    L4_2 = L24_1
    if L4_2 <= 0 then
      L4_2 = 1
      L5_2 = L42_1
      L5_2 = #L5_2
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = DeleteEntity
        L9_2 = L42_1
        L9_2 = L9_2[L7_2]
        L9_2 = L9_2.obj
        L8_2(L9_2)
      end
      ChipsThreadRunning = false
      L4_2 = ShowTutorial
      L5_2 = Config
      L5_2 = L5_2.Lang
      L5_2 = L5_2.afterSkipFullLoad
      L4_2(L5_2)
    end
  end
  L0_2 = false
  L9_1 = L0_2
end
L58_1[L59_1] = L60_1
L58_1 = _ENV
L59_1 = "GetCurrActiveSkip"
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = pairs
  L1_2 = SkipsSpawnPoints
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.currActiveSkip
    if L6_2 then
      return L4_2
    end
  end
  L0_2 = 0
  return L0_2
end
L58_1[L59_1] = L60_1
L58_1 = _ENV
L59_1 = "Lerp"
function L60_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
L58_1[L59_1] = L60_1
L58_1 = _ENV
L59_1 = "GetPedCrane"
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L15_1
  if nil ~= L0_2 then
    L0_2 = Cranes
    L1_2 = L15_1
    L0_2 = L0_2[L1_2]
    if nil ~= L0_2 then
      L0_2 = Cranes
      L1_2 = L15_1
      L0_2 = L0_2[L1_2]
      L0_2 = L0_2.crane
      if nil ~= L0_2 then
        L0_2 = Cranes
        L1_2 = L15_1
        L0_2 = L0_2[L1_2]
        return L0_2
    end
  end
  else
    L0_2 = pairs
    L1_2 = Cranes
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = type
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if "table" == L6_2 then
        L6_2 = type
        L7_2 = L5_2.crane
        L6_2 = L6_2(L7_2)
        if "table" == L6_2 then
          L6_2 = L5_2.crane
          L6_2 = L6_2.vehicleNetId
          L7_2 = L35_1.JobVehicle
          if L6_2 == L7_2 then
            goto lbl_44
          end
        end
      end
      L6_2 = L5_2.crane
      L6_2 = L6_2.vehicle
      L7_2 = L35_1.JobVehicle2
      ::lbl_44::
      if L6_2 == L7_2 then
        return L5_2
      end
    end
    L0_2 = nil
    return L0_2
  end
end
L58_1[L59_1] = L60_1
L58_1 = _ENV
L59_1 = "GetLogOnTrailerCount"
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Config
  L0_2 = L0_2.EnableVehicleLegacyMode
  if L0_2 then
    L0_2 = 0
    L1_2 = pairs
    L2_2 = L38_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.obj
      if 0 ~= L7_2 then
        L7_2 = L6_2.obj
        if nil ~= L7_2 then
          L0_2 = L0_2 + 1
        end
      end
    end
    return L0_2
  else
    L0_2 = GetPedCrane
    L0_2 = L0_2()
    if nil ~= L0_2 then
      L1_2 = L0_2.contentType
      if nil ~= L1_2 then
        L1_2 = L0_2.contentType
        L2_2 = Config
        L2_2 = L2_2.Props
        L2_2 = L2_2.logs
        L2_2 = L2_2.hash
        if L1_2 == L2_2 then
          L1_2 = L0_2.contentQuantity
          return L1_2
        end
      end
    end
    L1_2 = 0
    return L1_2
  end
end
L58_1[L59_1] = L60_1
L58_1 = _ENV
L59_1 = "GetPlanksOnTrailerCount"
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Config
  L0_2 = L0_2.EnableVehicleLegacyMode
  if L0_2 then
    L0_2 = 0
    L1_2 = pairs
    L2_2 = L30_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.obj
      if 0 ~= L7_2 then
        L7_2 = L6_2.obj
        if nil ~= L7_2 then
          L0_2 = L0_2 + 1
        end
      end
    end
    return L0_2
  else
    L0_2 = GetPedCrane
    L0_2 = L0_2()
    if L0_2 then
      L1_2 = L0_2.contentType
      if 1597396577 == L1_2 then
        L1_2 = L0_2.contentQuantity
        return L1_2
      end
    end
    L1_2 = 0
    return L1_2
  end
end
L58_1[L59_1] = L60_1
L58_1 = _ENV
L59_1 = "GetSkipsOnTrailerCount"
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Config
  L0_2 = L0_2.EnableVehicleLegacyMode
  if L0_2 then
    L0_2 = 0
    L1_2 = pairs
    L2_2 = L39_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.obj
      if 0 ~= L7_2 then
        L7_2 = L6_2.obj
        if nil ~= L7_2 then
          L0_2 = L0_2 + 1
        end
      end
    end
    return L0_2
  else
    L0_2 = GetPedCrane
    L0_2 = L0_2()
    if L0_2 then
      L1_2 = L0_2.contentType
      if -1937513394 == L1_2 then
        L1_2 = L0_2.contentQuantity
        return L1_2
      end
    end
    L1_2 = 0
    return L1_2
  end
end
L58_1[L59_1] = L60_1
L58_1 = _ENV
L59_1 = "GetClosetStation"
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = nil
  L4_2 = 100
  L5_2 = pairs
  L6_2 = Config
  L6_2 = L6_2.Stations
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = 1
    L12_2 = #L10_2
    L13_2 = 1
    for L14_2 = L11_2, L12_2, L13_2 do
      L15_2 = L10_2[L14_2]
      L15_2 = L15_2.coords
      L15_2 = L15_2.xyz
      L15_2 = L15_2 - L1_2
      L15_2 = #L15_2
      if L4_2 > L15_2 then
        L2_2 = L9_2
        L3_2 = L14_2
      end
    end
  end
  L5_2 = L2_2
  L6_2 = L3_2
  return L5_2, L6_2
end
L58_1[L59_1] = L60_1
L58_1 = RegisterNetEvent
L59_1 = "17mov_Lumberjack:PlanksProcessed"
function L60_1()
  local L0_2, L1_2
  PlanksProcessed = true
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNetEvent
L59_1 = "17mov_lumberjack:SetProcessedPlanksCount"
function L60_1(A0_2)
  local L1_2
  L29_1 = A0_2
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNetEvent
L59_1 = "17mov_Lumberjack:DeleteThisSlotObj"
function L60_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = pairs
  L4_2 = L17_1
  L4_2 = L4_2[A1_2]
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.slot
    if L9_2 == A0_2 then
      L9_2 = L8_2.type
      if L9_2 == A2_2 then
        L9_2 = L8_2.obj
        if nil ~= L9_2 then
          L9_2 = L8_2.obj
          L10_2 = GetGameTimer
          L10_2 = L10_2()
          while true do
            L11_2 = GetEntityModel
            L12_2 = L9_2
            L11_2 = L11_2(L12_2)
            L12_2 = Config
            L12_2 = L12_2.Props
            L12_2 = L12_2.logs
            L12_2 = L12_2.hash
            if L11_2 ~= L12_2 then
              L11_2 = GetEntityModel
              L12_2 = L9_2
              L11_2 = L11_2(L12_2)
              if 1597396577 ~= L11_2 then
                L11_2 = GetEntityModel
                L12_2 = L9_2
                L11_2 = L11_2(L12_2)
                if -1937513394 ~= L11_2 then
                  break
                end
              end
            end
            L11_2 = GetGameTimer
            L11_2 = L11_2()
            L11_2 = L11_2 - L10_2
            L12_2 = 5000
            if not (L11_2 < L12_2) then
              break
            end
            L11_2 = DeleteEntity
            L12_2 = L9_2
            L11_2(L12_2)
            L11_2 = SetEntityAsMissionEntity
            L12_2 = L9_2
            L13_2 = false
            L14_2 = false
            L11_2(L12_2, L13_2, L14_2)
            L11_2 = SetEntityCoords
            L12_2 = L9_2
            L13_2 = 0
            L14_2 = 0
            L15_2 = 0
            L16_2 = false
            L17_2 = false
            L18_2 = false
            L19_2 = false
            L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
            L11_2 = Wait
            L12_2 = 10
            L11_2(L12_2)
          end
        end
        L9_2 = L8_2.chips
        if nil ~= L9_2 then
          L9_2 = GetGameTimer
          L9_2 = L9_2()
          while true do
            L10_2 = GetEntityModel
            L11_2 = L8_2.chips
            L10_2 = L10_2(L11_2)
            if -195941584 ~= L10_2 then
              break
            end
            L10_2 = GetGameTimer
            L10_2 = L10_2()
            L10_2 = L10_2 - L9_2
            L11_2 = 5000
            if not (L10_2 < L11_2) then
              break
            end
            L10_2 = DeleteEntity
            L11_2 = L8_2.chips
            L10_2(L11_2)
            L10_2 = SetEntityAsMissionEntity
            L11_2 = L8_2.chips
            L12_2 = false
            L13_2 = false
            L10_2(L11_2, L12_2, L13_2)
            L10_2 = SetEntityCoords
            L11_2 = L8_2.chips
            L12_2 = 0
            L13_2 = 0
            L14_2 = 0
            L15_2 = false
            L16_2 = false
            L17_2 = false
            L18_2 = false
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
            L10_2 = Wait
            L11_2 = 10
            L10_2(L11_2)
          end
        end
        L9_2 = L17_1
        L9_2 = L9_2[A1_2]
        L9_2[L7_2] = nil
        break
      end
    end
  end
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNetEvent
L59_1 = "17mov_Lumberjack:ClearThisIDLog"
function L60_1(A0_2)
  local L1_2
  L1_2 = L38_1
  L1_2 = L1_2[A0_2]
  L1_2.obj = nil
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNetEvent
L59_1 = "17mov_Lumberjack:3dBoxState"
function L60_1(A0_2)
  local L1_2
  L23_1 = A0_2
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNetEvent
L59_1 = "17mov_Lumberjack:StartChipsProcessing"
function L60_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  if A1_2 then
    L2_2 = DeepCopy
    L3_2 = L43_1
    L2_2 = L2_2(L3_2)
    SkipsSpawnPoints = L2_2
    L2_2 = pairs
    L3_2 = SkipsSpawnPoints
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = nil
      L9_2 = nil
      while 0 ~= L8_2 do
        L10_2 = GetClosestLog
        L11_2 = vec3
        L12_2 = L7_2.coords
        L12_2 = L12_2.x
        L13_2 = L7_2.coords
        L13_2 = L13_2.y
        L14_2 = L7_2.coords
        L14_2 = L14_2.z
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L12_2 = 1.0
        L13_2 = -1937513394
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L8_2 = L10_2
        L10_2 = GetClosestLog
        L11_2 = vec3
        L12_2 = L7_2.coords
        L12_2 = L12_2.x
        L13_2 = L7_2.coords
        L13_2 = L13_2.y
        L14_2 = L7_2.coords
        L14_2 = L14_2.z
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L12_2 = 3.0
        L13_2 = -195941584
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L9_2 = L10_2
        if 0 ~= L8_2 then
          L10_2 = DeleteEntity
          L11_2 = L8_2
          L10_2(L11_2)
        end
        if 0 ~= L9_2 then
          L10_2 = DeleteEntity
          L11_2 = L9_2
          L10_2(L11_2)
        end
        L10_2 = Wait
        L11_2 = 100
        L10_2(L11_2)
      end
      L10_2 = CreateObject
      L11_2 = -1937513394
      L12_2 = L7_2.coords
      L12_2 = L12_2.x
      L13_2 = L7_2.coords
      L13_2 = L13_2.y
      L14_2 = L7_2.coords
      L14_2 = L14_2.z
      L15_2 = false
      L16_2 = true
      L17_2 = true
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L7_2.obj = L10_2
      L10_2 = FreezeEntityPosition
      L11_2 = L7_2.obj
      L12_2 = true
      L10_2(L11_2, L12_2)
      L10_2 = SetEntityRotation
      L11_2 = L7_2.obj
      L12_2 = L7_2.rotation
      L12_2 = L12_2.x
      L13_2 = L7_2.rotation
      L13_2 = L13_2.y
      L14_2 = L7_2.rotation
      L14_2 = L14_2.z
      L15_2 = 0
      L16_2 = false
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L7_2.percentage = 0
      L7_2.liftProgress = 0
      L10_2 = CreateObject
      L11_2 = -195941584
      L12_2 = L7_2.coords
      L12_2 = L12_2.x
      L13_2 = L7_2.coords
      L13_2 = L13_2.y
      L14_2 = L7_2.coords
      L14_2 = L14_2.z
      L15_2 = false
      L16_2 = true
      L17_2 = true
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L7_2.chipsObj = L10_2
      L10_2 = FreezeEntityPosition
      L11_2 = L7_2.chipsObj
      L12_2 = true
      L10_2(L11_2, L12_2)
      L10_2 = SetEntityRotation
      L11_2 = L7_2.chipsObj
      L12_2 = L7_2.rotation
      L12_2 = L12_2.x
      L13_2 = L7_2.rotation
      L13_2 = L13_2.y
      L14_2 = L7_2.rotation
      L14_2 = L14_2.z
      L15_2 = 0
      L16_2 = false
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L10_2 = AttachEntityToEntity
      L11_2 = L7_2.chipsObj
      L12_2 = L7_2.obj
      L13_2 = 0
      L14_2 = 0.027
      L15_2 = 0.076
      L16_2 = 0.16
      L17_2 = 0.0
      L18_2 = 0.0
      L19_2 = 0.0
      L20_2 = false
      L21_2 = false
      L22_2 = true
      L23_2 = false
      L24_2 = 2
      L25_2 = true
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      L10_2 = vec3
      L11_2 = 0.027
      L12_2 = 0.076
      L13_2 = 0.16
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L7_2.chipsAttachOffset = L10_2
      L10_2 = Entity
      L11_2 = L7_2.obj
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2.state
      L10_2.myIndex = L6_2
      L10_2 = Entity
      L11_2 = L7_2.obj
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2.state
      L10_2.type = "skips"
    end
  end
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNUICallback
L59_1 = "processToChips"
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetCurrActiveSkip
  L2_2 = L2_2()
  L3_2 = GetLogOnTrailerCount
  L3_2 = L3_2()
  if L3_2 < 1 then
    L3_2 = Notify
    L4_2 = Config
    L4_2 = L4_2.Lang
    L4_2 = L4_2.notEnoughLogs
    return L3_2(L4_2)
  end
  if 0 == L2_2 or nil == L2_2 then
    L3_2 = Notify
    L4_2 = Config
    L4_2 = L4_2.Lang
    L4_2 = L4_2.noSkipUnder
    return L3_2(L4_2)
  end
  L3_2 = SkipsSpawnPoints
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.percentage
  if L3_2 >= 100 then
    L3_2 = Notify
    L4_2 = Config
    L4_2 = L4_2.Lang
    L4_2 = L4_2.currentSkipIsFull
    return L3_2(L4_2)
  end
  L3_2 = Config
  L3_2 = L3_2.EnableVehicleLegacyMode
  if L3_2 then
    L1_2 = L34_1.JobFlatbed
    L3_2 = TriggerServerEvent
    L4_2 = "17mov_lumberjack:StopLoopOnThisFlatbed"
    L5_2 = L35_1.JobFlatbed
    L3_2(L4_2, L5_2)
  end
  L3_2 = true
  L25_1 = L3_2
  L3_2 = true
  L23_1 = L3_2
  L3_2 = TriggerServerEvent
  L4_2 = "17mov_lumberjack:StartChipsProcessing"
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = TriggerServerEvent
  L4_2 = "17mov_Lumberjack:3dBoxState"
  L5_2 = L23_1
  L3_2(L4_2, L5_2)
  L3_2 = NetworkRequestControlOfEntity
  L4_2 = L1_2
  L3_2(L4_2)
  L3_2 = FreezeEntityPosition
  L4_2 = L1_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = GetLastLogOnTrailer
  L3_2, L4_2 = L3_2()
  while nil ~= L3_2 and nil ~= L4_2 do
    L5_2 = SetEntityDrawOutlineColor
    L6_2 = 171
    L7_2 = 91
    L8_2 = 41
    L9_2 = 200
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = SetEntityDrawOutline
    L6_2 = L3_2
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = Wait
    L6_2 = 1200
    L5_2(L6_2)
    L5_2 = Config
    L5_2 = L5_2.EnableVehicleLegacyMode
    if L5_2 then
      L5_2 = TriggerServerEvent
      L6_2 = "17mov_Lumberjack:ClearThisIDLog"
      L7_2 = L4_2
      L8_2 = L35_1.JobFlatbed
      L9_2 = L4_2
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = L38_1
      L5_2 = L5_2[L4_2]
      L5_2.obj = nil
      L5_2 = CreateThread
      function L6_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = Wait
        L1_3 = 150
        L0_3(L1_3)
        L0_3 = TriggerServerEvent
        L1_3 = "17mov_Lumberjack:ClearThisIDLog"
        L2_3 = L4_2
        L3_3 = L35_1.JobFlatbed
        L4_3 = L4_2
        L0_3(L1_3, L2_3, L3_3, L4_3)
      end
      L5_2(L6_2)
    else
      L5_2 = L15_1
      if nil ~= L5_2 then
        L5_2 = TriggerServerEvent
        L6_2 = "17mov_Lumberjack:DeleteTrailerProp"
        L7_2 = L15_1
        L5_2(L6_2, L7_2)
      end
    end
    L5_2 = AnimateObjectToPoint
    L6_2 = nil
    L7_2 = L44_1
    L7_2 = L7_2[1]
    L8_2 = L44_1
    L8_2 = L8_2[1]
    L8_2 = L8_2.duration
    if not L8_2 then
      L8_2 = 1000
    end
    L9_2 = 1
    L10_2 = true
    L11_2 = vec3
    L12_2 = -469.596283
    L13_2 = 5333.026
    L14_2 = 82.56943
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = vec3
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = -20.0
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = "chips"
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 300
    L5_2(L6_2)
    L5_2 = GetLastLogOnTrailer
    L5_2, L6_2 = L5_2()
    L4_2 = L6_2
    L3_2 = L5_2
  end
  L5_2 = Config
  L5_2 = L5_2.EnableVehicleLegacyMode
  if L5_2 then
    L5_2 = TriggerServerEvent
    L6_2 = "17mov_lumberjack:StartLoopOnThisFlatbed"
    L7_2 = L35_1.JobFlatbed
    L5_2(L6_2, L7_2)
  end
  L5_2 = false
  L23_1 = L5_2
  L5_2 = ShowTutorial
  L6_2 = Config
  L6_2 = L6_2.Lang
  L6_2 = L6_2.afterChipsProcess
  L5_2(L6_2)
  L5_2 = NetworkRequestControlOfEntity
  L6_2 = L1_2
  L5_2(L6_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L1_2
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = TriggerServerEvent
  L6_2 = "17mov_lumberjack:StartChipsProcessing"
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = TriggerServerEvent
  L6_2 = "17mov_Lumberjack:3dBoxState"
  L7_2 = L23_1
  L5_2(L6_2, L7_2)
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNetEvent
L59_1 = "17mov_lumberjack:StartLoopOnThisFlatbed"
function L60_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = L17_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L5_2 == A0_2 and nil ~= L6_2 then
      L7_2 = 1
      L8_2 = #L6_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = L6_2[L10_2]
        L11_2 = L11_2.stopLoop
        if nil ~= L11_2 then
          L11_2 = L6_2[L10_2]
          L11_2.stopLoop = nil
        end
      end
    end
  end
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNetEvent
L59_1 = "17mov_lumberjack:StopLoopOnThisFlatbed"
function L60_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = L17_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L5_2 == A0_2 then
      L7_2 = 1
      L8_2 = #L6_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = L6_2[L10_2]
        L11_2.stopLoop = true
      end
    end
  end
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNUICallback
L59_1 = "processToPlanks"
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = GetLogOnTrailerCount
  L3_2 = L3_2()
  L4_2 = Config
  L4_2 = L4_2.EnableVehicleLegacyMode
  if L4_2 then
    L4_2 = 6
    if L4_2 then
      goto lbl_19
    end
  end
  L4_2 = 8
  ::lbl_19::
  L3_2 = L3_2 / L4_2
  L2_2 = L2_2(L3_2)
  if L2_2 < 1 then
    L3_2 = Notify
    L4_2 = Config
    L4_2 = L4_2.Lang
    L4_2 = L4_2.notEnoughLogs
    return L3_2(L4_2)
  end
  L3_2 = Config
  L3_2 = L3_2.EnableVehicleLegacyMode
  if L3_2 then
    L1_2 = L34_1.JobFlatbed
    L3_2 = TriggerServerEvent
    L4_2 = "17mov_lumberjack:StopLoopOnThisFlatbed"
    L5_2 = VehToNet
    L6_2 = L1_2
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  end
  PlanksProcessed = true
  L29_1 = L2_2
  L3_2 = true
  L23_1 = L3_2
  L3_2 = TriggerServerEvent
  L4_2 = "17mov_lumberjack:StartPlanksProcessing"
  L3_2(L4_2)
  L3_2 = TriggerServerEvent
  L4_2 = "17mov_Lumberjack:SetProcessedPlanksCount"
  L5_2 = L29_1
  L3_2(L4_2, L5_2)
  L3_2 = TriggerServerEvent
  L4_2 = "17mov_Lumberjack:3dBoxState"
  L5_2 = L23_1
  L3_2(L4_2, L5_2)
  L3_2 = NetworkRequestControlOfEntity
  L4_2 = L1_2
  L3_2(L4_2)
  L3_2 = FreezeEntityPosition
  L4_2 = L1_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = 0
  L4_2 = GetLastLogOnTrailer
  L4_2, L5_2 = L4_2()
  while nil ~= L4_2 and nil ~= L5_2 do
    L3_2 = L3_2 + 1
    L6_2 = SetEntityDrawOutlineColor
    L7_2 = 171
    L8_2 = 91
    L9_2 = 41
    L10_2 = 200
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = SetEntityDrawOutline
    L7_2 = L4_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = Wait
    L7_2 = 900
    L6_2(L7_2)
    L6_2 = Config
    L6_2 = L6_2.EnableVehicleLegacyMode
    if L6_2 then
      L6_2 = TriggerServerEvent
      L7_2 = "17mov_Lumberjack:ClearThisIDLog"
      L8_2 = L5_2
      L9_2 = L35_1.JobFlatbed
      L10_2 = L5_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = L38_1
      L6_2 = L6_2[L5_2]
      L6_2.obj = nil
      L6_2 = CreateThread
      function L7_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = Wait
        L1_3 = 150
        L0_3(L1_3)
        L0_3 = TriggerServerEvent
        L1_3 = "17mov_Lumberjack:ClearThisIDLog"
        L2_3 = L5_2
        L3_3 = L35_1.JobFlatbed
        L4_3 = L5_2
        L0_3(L1_3, L2_3, L3_3, L4_3)
      end
      L6_2(L7_2)
    else
      L6_2 = L15_1
      if nil ~= L6_2 then
        L6_2 = TriggerServerEvent
        L7_2 = "17mov_Lumberjack:DeleteTrailerProp"
        L8_2 = L15_1
        L6_2(L7_2, L8_2)
      end
    end
    L6_2 = Config
    L6_2 = L6_2.EnableVehicleLegacyMode
    if L6_2 then
      L6_2 = 6
      if L6_2 then
        goto lbl_117
      end
    end
    L6_2 = 8
    ::lbl_117::
    L7_2 = L3_2 % L6_2
    L7_2 = 0 == L7_2
    L8_2 = AnimateObjectToPoint
    L9_2 = nil
    L10_2 = L45_1
    L10_2 = L10_2[1]
    L11_2 = L45_1
    L11_2 = L11_2[1]
    L11_2 = L11_2.duration
    if not L11_2 then
      L11_2 = 1000
    end
    L12_2 = 1
    L13_2 = L7_2
    L14_2 = vec3
    L15_2 = -495.279846
    L16_2 = 5346.84375
    L17_2 = 80.76374
    L14_2 = L14_2(L15_2, L16_2, L17_2)
    L15_2 = vec3
    L16_2 = 0.0
    L17_2 = 0.0
    L18_2 = -20.0
    L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2, L17_2, L18_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L8_2 = Citizen
    L8_2 = L8_2.Wait
    L9_2 = 300
    L8_2(L9_2)
    L8_2 = GetLastLogOnTrailer
    L8_2, L9_2 = L8_2()
    L5_2 = L9_2
    L4_2 = L8_2
  end
  L6_2 = Config
  L6_2 = L6_2.EnableVehicleLegacyMode
  if L6_2 then
    L6_2 = TriggerServerEvent
    L7_2 = "17mov_lumberjack:StartLoopOnThisFlatbed"
    L8_2 = L35_1.JobFlatbed
    L6_2(L7_2, L8_2)
  end
  L6_2 = false
  L23_1 = L6_2
  L6_2 = ShowTutorial
  L7_2 = Config
  L7_2 = L7_2.EnableVehicleLegacyMode
  if L7_2 then
    L7_2 = Config
    L7_2 = L7_2.Lang
    L7_2 = L7_2.afterLogsProcessLegacy
    if L7_2 then
      goto lbl_188
    end
  end
  L7_2 = Config
  L7_2 = L7_2.Lang
  L7_2 = L7_2.afterLogsProcess
  ::lbl_188::
  L6_2(L7_2)
  L6_2 = NetworkRequestControlOfEntity
  L7_2 = L1_2
  L6_2(L7_2)
  L6_2 = FreezeEntityPosition
  L7_2 = L1_2
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = TriggerServerEvent
  L7_2 = "17mov_Lumberjack:3dBoxState"
  L8_2 = L23_1
  L6_2(L7_2, L8_2)
end
L58_1(L59_1, L60_1)
L58_1 = _ENV
L59_1 = "SimilarOrientation"
function L60_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = A0_2 - A1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 % 360
  L4_2 = 180
  if L3_2 > L4_2 then
    L4_2 = 360
    L3_2 = L4_2 - L3_2
  end
  L4_2 = A2_2 > L3_2
  return L4_2
end
L58_1[L59_1] = L60_1
L58_1 = RegisterNetEvent
L59_1 = "17mov_Lumberjack:UnloadThisLog"
function L60_1(A0_2)
  local L1_2
  L1_2 = L38_1
  L1_2 = L1_2[A0_2]
  L1_2.obj = nil
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNetEvent
L59_1 = "17mov_Lumberjack:UnloadThisPlank"
function L60_1(A0_2)
  local L1_2
  L1_2 = L30_1
  L1_2 = L1_2[A0_2]
  L1_2.obj = nil
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNetEvent
L59_1 = "17mov_Lumberjack:UnloadThisSkip"
function L60_1(A0_2)
  local L1_2
  L1_2 = L39_1
  L1_2 = L1_2[A0_2]
  L1_2.obj = nil
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNUICallback
L59_1 = "sellChips"
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetClosetStation
  L2_2, L3_2 = L2_2()
  L4_2 = L23_1
  if L4_2 then
    L4_2 = print
    L5_2 = "SELLING BLOCKED AND CANCELED"
    return L4_2(L5_2)
  end
  L4_2 = GetSkipsOnTrailerCount
  L4_2 = L4_2()
  if L4_2 <= 0 then
    L4_2 = Notify
    L5_2 = Config
    L5_2 = L5_2.Lang
    L5_2 = L5_2.dontHaveChips
    return L4_2(L5_2)
  end
  L4_2 = Config
  L4_2 = L4_2.EnableVehicleLegacyMode
  if L4_2 then
    L1_2 = L34_1.JobFlatbed
    L4_2 = TriggerServerEvent
    L5_2 = "17mov_lumberjack:StopLoopOnThisFlatbed"
    L6_2 = L35_1.JobFlatbed
    L4_2(L5_2, L6_2)
  end
  L4_2 = true
  L23_1 = L4_2
  L4_2 = TriggerServerEvent
  L5_2 = "17mov_Lumberjack:3dBoxState"
  L6_2 = L23_1
  L4_2(L5_2, L6_2)
  L4_2 = Notify
  L5_2 = Config
  L5_2 = L5_2.Lang
  L5_2 = L5_2.chipsSellInProgress
  L4_2(L5_2)
  L4_2 = NetworkRequestControlOfEntity
  L5_2 = L1_2
  L4_2(L5_2)
  L4_2 = FreezeEntityPosition
  L5_2 = L1_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = GetLastSkipOnTrailer
  L4_2, L5_2 = L4_2()
  L6_2 = Config
  L6_2 = L6_2.EnableVehicleLegacyMode
  if L6_2 then
    L6_2 = 3
    if L6_2 then
      goto lbl_63
    end
  end
  L6_2 = 2
  ::lbl_63::
  L7_2 = 0
  while nil ~= L4_2 and nil ~= L5_2 do
    L7_2 = L7_2 + 1
    L8_2 = SetEntityDrawOutlineColor
    L9_2 = 171
    L10_2 = 91
    L11_2 = 41
    L12_2 = 200
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = SetEntityDrawOutline
    L9_2 = L4_2
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = Wait
    L9_2 = math
    L9_2 = L9_2.random
    L10_2 = 100
    L11_2 = 200
    L9_2 = L9_2(L10_2, L11_2)
    L9_2 = 1300 + L9_2
    L8_2(L9_2)
    L8_2 = Config
    L8_2 = L8_2.EnableVehicleLegacyMode
    if L8_2 then
      L8_2 = TriggerServerEvent
      L9_2 = "17mov_Lumberjack:ClearThisIDSkip"
      L10_2 = L5_2
      L11_2 = L35_1.JobFlatbed
      L12_2 = L5_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = L39_1
      L8_2 = L8_2[L5_2]
      L8_2.obj = nil
      L8_2 = CreateThread
      function L9_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = Wait
        L1_3 = 150
        L0_3(L1_3)
        L0_3 = TriggerServerEvent
        L1_3 = "17mov_Lumberjack:ClearThisIDSkip"
        L2_3 = L5_2
        L3_3 = L35_1.JobFlatbed
        L4_3 = L5_2
        L0_3(L1_3, L2_3, L3_3, L4_3)
      end
      L8_2(L9_2)
    else
      L8_2 = L15_1
      if nil ~= L8_2 then
        L8_2 = TriggerServerEvent
        L9_2 = "17mov_Lumberjack:DeleteTrailerProp"
        L10_2 = L15_1
        L8_2(L9_2, L10_2)
      end
    end
    L8_2 = TriggerServerEvent
    L9_2 = "17mov_lumberjack:UnloadThisSkip"
    L10_2 = L5_2
    L11_2 = L3_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = Citizen
    L8_2 = L8_2.Wait
    L9_2 = 300
    L8_2(L9_2)
    L8_2 = GetLastSkipOnTrailer
    L8_2, L9_2 = L8_2()
    L5_2 = L9_2
    L4_2 = L8_2
    if L6_2 <= L7_2 then
      break
    end
  end
  L8_2 = Config
  L8_2 = L8_2.EnableVehicleLegacyMode
  if L8_2 then
    L8_2 = TriggerServerEvent
    L9_2 = "17mov_lumberjack:StartLoopOnThisFlatbed"
    L10_2 = L35_1.JobFlatbed
    L8_2(L9_2, L10_2)
  end
  L8_2 = false
  L23_1 = L8_2
  L8_2 = Notify
  L9_2 = Config
  L9_2 = L9_2.Lang
  L9_2 = L9_2.sold
  L8_2(L9_2)
  L8_2 = NetworkRequestControlOfEntity
  L9_2 = L1_2
  L8_2(L9_2)
  L8_2 = FreezeEntityPosition
  L9_2 = L1_2
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = TriggerServerEvent
  L9_2 = "17mov_Lumberjack:3dBoxState"
  L10_2 = L23_1
  L8_2(L9_2, L10_2)
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNUICallback
L59_1 = "sellPlanks"
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetClosetStation
  L2_2, L3_2 = L2_2()
  L4_2 = L23_1
  if L4_2 then
    L4_2 = print
    L5_2 = "SELLING BLOCKED AND CANCELED"
    return L4_2(L5_2)
  end
  L4_2 = GetPlanksOnTrailerCount
  L4_2 = L4_2()
  if L4_2 <= 0 then
    L4_2 = Notify
    L5_2 = Config
    L5_2 = L5_2.Lang
    L5_2 = L5_2.dontHavePlanks
    return L4_2(L5_2)
  end
  L4_2 = Config
  L4_2 = L4_2.EnableVehicleLegacyMode
  if L4_2 then
    L1_2 = L34_1.JobFlatbed
    L4_2 = TriggerServerEvent
    L5_2 = "17mov_lumberjack:StopLoopOnThisFlatbed"
    L6_2 = L35_1.JobFlatbed
    L4_2(L5_2, L6_2)
  end
  L4_2 = true
  L23_1 = L4_2
  L4_2 = TriggerServerEvent
  L5_2 = "17mov_Lumberjack:3dBoxState"
  L6_2 = L23_1
  L4_2(L5_2, L6_2)
  L4_2 = Notify
  L5_2 = Config
  L5_2 = L5_2.Lang
  L5_2 = L5_2.planksSellInProgress
  L4_2(L5_2)
  L4_2 = NetworkRequestControlOfEntity
  L5_2 = L1_2
  L4_2(L5_2)
  L4_2 = FreezeEntityPosition
  L5_2 = L1_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = GetLastPlankOnTrailer
  L4_2, L5_2 = L4_2()
  L6_2 = Config
  L6_2 = L6_2.EnableVehicleLegacyMode
  if L6_2 then
    L6_2 = 9
    if L6_2 then
      goto lbl_63
    end
  end
  L6_2 = 4
  ::lbl_63::
  L7_2 = 0
  while nil ~= L4_2 and nil ~= L5_2 do
    L7_2 = L7_2 + 1
    L8_2 = SetEntityDrawOutlineColor
    L9_2 = 171
    L10_2 = 91
    L11_2 = 41
    L12_2 = 200
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = SetEntityDrawOutline
    L9_2 = L4_2
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = Wait
    L9_2 = math
    L9_2 = L9_2.random
    L10_2 = 100
    L11_2 = 200
    L9_2 = L9_2(L10_2, L11_2)
    L9_2 = 1200 + L9_2
    L8_2(L9_2)
    L8_2 = Config
    L8_2 = L8_2.EnableVehicleLegacyMode
    if L8_2 then
      L8_2 = TriggerServerEvent
      L9_2 = "17mov_Lumberjack:ClearThisIDPlank"
      L10_2 = L5_2
      L11_2 = L35_1.JobFlatbed
      L12_2 = L5_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = L30_1
      L8_2 = L8_2[L5_2]
      L8_2.obj = nil
      L8_2 = CreateThread
      function L9_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = Wait
        L1_3 = 150
        L0_3(L1_3)
        L0_3 = TriggerServerEvent
        L1_3 = "17mov_Lumberjack:ClearThisIDPlank"
        L2_3 = L5_2
        L3_3 = L35_1.JobFlatbed
        L4_3 = L5_2
        L0_3(L1_3, L2_3, L3_3, L4_3)
      end
      L8_2(L9_2)
    else
      L8_2 = L15_1
      if nil ~= L8_2 then
        L8_2 = TriggerServerEvent
        L9_2 = "17mov_Lumberjack:DeleteTrailerProp"
        L10_2 = L15_1
        L8_2(L9_2, L10_2)
      end
    end
    L8_2 = TriggerServerEvent
    L9_2 = "17mov_lumberjack:UnloadThisPlank"
    L10_2 = L5_2
    L11_2 = L3_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = Citizen
    L8_2 = L8_2.Wait
    L9_2 = 300
    L8_2(L9_2)
    L8_2 = GetLastPlankOnTrailer
    L8_2, L9_2 = L8_2()
    L5_2 = L9_2
    L4_2 = L8_2
    if L6_2 <= L7_2 then
      break
    end
  end
  L8_2 = Config
  L8_2 = L8_2.EnableVehicleLegacyMode
  if L8_2 then
    L8_2 = TriggerServerEvent
    L9_2 = "17mov_lumberjack:StartLoopOnThisFlatbed"
    L10_2 = L35_1.JobFlatbed
    L8_2(L9_2, L10_2)
  end
  L8_2 = false
  L23_1 = L8_2
  L8_2 = Notify
  L9_2 = Config
  L9_2 = L9_2.Lang
  L9_2 = L9_2.sold
  L8_2(L9_2)
  L8_2 = NetworkRequestControlOfEntity
  L9_2 = L1_2
  L8_2(L9_2)
  L8_2 = FreezeEntityPosition
  L9_2 = L1_2
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = TriggerServerEvent
  L9_2 = "17mov_Lumberjack:3dBoxState"
  L10_2 = L23_1
  L8_2(L9_2, L10_2)
end
L58_1(L59_1, L60_1)
L58_1 = RegisterNUICallback
L59_1 = "sellLogs"
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetClosetStation
  L2_2, L3_2 = L2_2()
  L4_2 = L23_1
  if L4_2 then
    L4_2 = print
    L5_2 = "SELLING BLOCKED AND CANCELED"
    return L4_2(L5_2)
  end
  L4_2 = GetLogOnTrailerCount
  L4_2 = L4_2()
  if L4_2 <= 0 then
    L4_2 = Notify
    L5_2 = Config
    L5_2 = L5_2.Lang
    L5_2 = L5_2.dontHaveLogs
    return L4_2(L5_2)
  end
  L4_2 = Config
  L4_2 = L4_2.EnableVehicleLegacyMode
  if L4_2 then
    L1_2 = L34_1.JobFlatbed
    L4_2 = TriggerServerEvent
    L5_2 = "17mov_lumberjack:StopLoopOnThisFlatbed"
    L6_2 = L35_1.JobFlatbed
    L4_2(L5_2, L6_2)
  end
  L4_2 = true
  L23_1 = L4_2
  L4_2 = TriggerServerEvent
  L5_2 = "17mov_Lumberjack:3dBoxState"
  L6_2 = L23_1
  L4_2(L5_2, L6_2)
  L4_2 = Notify
  L5_2 = Config
  L5_2 = L5_2.Lang
  L5_2 = L5_2.logsSellInProgress
  L4_2(L5_2)
  L4_2 = NetworkRequestControlOfEntity
  L5_2 = L1_2
  L4_2(L5_2)
  L4_2 = FreezeEntityPosition
  L5_2 = L1_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = GetLastLogOnTrailer
  L4_2, L5_2 = L4_2()
  L6_2 = Config
  L6_2 = L6_2.EnableVehicleLegacyMode
  if L6_2 then
    L6_2 = 32
    if L6_2 then
      goto lbl_63
    end
  end
  L6_2 = 60
  ::lbl_63::
  L7_2 = 0
  while nil ~= L4_2 and nil ~= L5_2 do
    L7_2 = L7_2 + 1
    L8_2 = SetEntityDrawOutlineColor
    L9_2 = 171
    L10_2 = 91
    L11_2 = 41
    L12_2 = 200
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = SetEntityDrawOutline
    L9_2 = L4_2
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = Wait
    L9_2 = math
    L9_2 = L9_2.random
    L10_2 = 100
    L11_2 = 200
    L9_2 = L9_2(L10_2, L11_2)
    L9_2 = 1200 + L9_2
    L8_2(L9_2)
    L8_2 = Config
    L8_2 = L8_2.EnableVehicleLegacyMode
    if L8_2 then
      L8_2 = TriggerServerEvent
      L9_2 = "17mov_Lumberjack:ClearThisIDLog"
      L10_2 = L5_2
      L11_2 = L35_1.JobFlatbed
      L12_2 = L5_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = L38_1
      L8_2 = L8_2[L5_2]
      L8_2.obj = nil
      L8_2 = CreateThread
      function L9_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = Wait
        L1_3 = 150
        L0_3(L1_3)
        L0_3 = TriggerServerEvent
        L1_3 = "17mov_Lumberjack:ClearThisIDLog"
        L2_3 = L5_2
        L3_3 = L35_1.JobFlatbed
        L4_3 = L5_2
        L0_3(L1_3, L2_3, L3_3, L4_3)
      end
      L8_2(L9_2)
    else
      L8_2 = L15_1
      if nil ~= L8_2 then
        L8_2 = TriggerServerEvent
        L9_2 = "17mov_Lumberjack:DeleteTrailerProp"
        L10_2 = L15_1
        L8_2(L9_2, L10_2)
      end
    end
    L8_2 = TriggerServerEvent
    L9_2 = "17mov_lumberjack:UnloadThisLog"
    L10_2 = L3_2
    L11_2 = L5_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = Citizen
    L8_2 = L8_2.Wait
    L9_2 = 300
    L8_2(L9_2)
    L8_2 = GetLastLogOnTrailer
    L8_2, L9_2 = L8_2()
    L5_2 = L9_2
    L4_2 = L8_2
    if L6_2 <= L7_2 then
      break
    end
  end
  L8_2 = Config
  L8_2 = L8_2.EnableVehicleLegacyMode
  if L8_2 then
    L8_2 = TriggerServerEvent
    L9_2 = "17mov_lumberjack:StartLoopOnThisFlatbed"
    L10_2 = L35_1.JobFlatbed
    L8_2(L9_2, L10_2)
  end
  L8_2 = false
  L23_1 = L8_2
  L8_2 = Notify
  L9_2 = Config
  L9_2 = L9_2.Lang
  L9_2 = L9_2.sold
  L8_2(L9_2)
  L8_2 = NetworkRequestControlOfEntity
  L9_2 = L1_2
  L8_2(L9_2)
  L8_2 = FreezeEntityPosition
  L9_2 = L1_2
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = TriggerServerEvent
  L9_2 = "17mov_Lumberjack:3dBoxState"
  L10_2 = L23_1
  L8_2(L9_2, L10_2)
end
L58_1(L59_1, L60_1)
L58_1 = {}
L59_1 = RegisterNetEvent
L60_1 = "17mov_Lumberjack:PlaySound"
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = nil
  L4_2 = A0_2
  if "treefall.mp3" == A0_2 then
    L5_2 = Config
    L5_2 = L5_2.Sounds
    L3_2 = L5_2.TreeFallingMaxDistance
  elseif "chainsaw.mp3" == A0_2 then
    L5_2 = Config
    L5_2 = L5_2.Sounds
    L3_2 = L5_2.ChainsawNoiseMaxDistance
  elseif "logroll.mp3" == A0_2 then
    L5_2 = Config
    L5_2 = L5_2.Sounds
    L3_2 = L5_2.logRollProcessing
  end
  L5_2 = nil
  L6_2 = nil
  if A2_2 then
    L5_2 = A1_2
    L7_2 = GetEntityCoords
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
  else
    L6_2 = A1_2
  end
  L7_2 = GetEntityCoords
  L8_2 = PlayerPedId
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2()
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = L6_2 - L7_2
  L7_2 = #L7_2
  if L3_2 < L7_2 then
    return
  end
  L7_2 = Config
  L7_2 = L7_2.SoundsMultipler
  if not L7_2 then
    L7_2 = 0.5
  end
  L8_2 = L58_1
  L8_2 = #L8_2
  L8_2 = L8_2 + 1
  L9_2 = L58_1
  L9_2[L8_2] = false
  L9_2 = PlayerPedId
  L9_2 = L9_2()
  L10_2 = GetEntityCoords
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  L11_2 = GetEntityHeading
  L12_2 = L9_2
  L11_2 = L11_2(L12_2)
  L12_2 = SendNUIMessage
  L13_2 = {}
  L13_2.sound = "updateSounds"
  L14_2 = L10_2.x
  L13_2.x = L14_2
  L14_2 = L10_2.y
  L13_2.y = L14_2
  L14_2 = L10_2.z
  L13_2.z = L14_2
  L13_2.h = L11_2
  L12_2(L13_2)
  if A2_2 then
    L12_2 = GetEntityCoords
    L13_2 = L5_2
    L12_2 = L12_2(L13_2)
    L6_2 = L12_2
    L12_2 = CreateThread
    function L13_2()
      local L0_3, L1_3, L2_3
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 200
      L0_3(L1_3)
      while true do
        L1_3 = L8_2
        L0_3 = L58_1
        L0_3 = L0_3[L1_3]
        if not L0_3 then
          break
        end
        L0_3 = GetEntityCoords
        L1_3 = L5_2
        L0_3 = L0_3(L1_3)
        L6_2 = L0_3
        L0_3 = SendNUIMessage
        L1_3 = {}
        L1_3.sound = "updateSoundCoords"
        L2_3 = L8_2
        L1_3.id = L2_3
        L2_3 = L6_2.x
        L1_3.x = L2_3
        L2_3 = L6_2.y
        L1_3.y = L2_3
        L2_3 = L6_2.z
        L1_3.z = L2_3
        L0_3(L1_3)
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 100
        L0_3(L1_3)
      end
    end
    L12_2(L13_2)
  end
  L12_2 = SendNUIMessage
  L13_2 = {}
  L13_2.sound = "playSound"
  L13_2.id = L8_2
  L13_2.audioFile = L4_2
  L13_2.volume = L7_2
  L14_2 = L6_2.x
  L13_2.x = L14_2
  L14_2 = L6_2.y
  L13_2.y = L14_2
  L14_2 = L6_2.z
  L13_2.z = L14_2
  L13_2.maxDistance = L3_2
  L12_2(L13_2)
end
L59_1(L60_1, L61_1)
L59_1 = RegisterNUICallback
L60_1 = "soundsEnd"
function L61_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2.id
  L2_2 = L58_1
  L2_2[L3_2] = nil
end
L59_1(L60_1, L61_1)
L59_1 = _ENV
L60_1 = "CreateThread"
L59_1 = L59_1[L60_1]
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  while true do
    L0_2 = 100
    L1_2 = L58_1
    L1_2 = #L1_2
    if L1_2 > 0 then
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = GetEntityCoords
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = GetEntityHeading
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L0_2 = 10
      L4_2 = SendNUIMessage
      L5_2 = {}
      L5_2.sound = "updateSounds"
      L6_2 = L2_2.x
      L5_2.x = L6_2
      L6_2 = L2_2.y
      L5_2.y = L6_2
      L6_2 = L2_2.z
      L5_2.z = L6_2
      L5_2.h = L3_2
      L4_2(L5_2)
      L4_2 = pairs
      L5_2 = L58_1
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        if not L9_2 then
          L10_2 = L58_1
          L10_2[L8_2] = true
        end
      end
    end
    L1_2 = Wait
    L2_2 = L0_2
    L1_2(L2_2)
  end
end
L59_1(L60_1)
L59_1 = _ENV
L60_1 = "GetFreeForksSlots"
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Config
  L1_2 = L1_2.ForksAttachment
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = nil
  if A0_2 then
    L4_2 = Config
    L3_2 = L4_2.ForksAttachment2
  else
    L4_2 = Config
    L3_2 = L4_2.ForksAttachment
  end
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L8_2 = L8_2.obj
    if nil ~= L8_2 then
      L1_2 = L1_2 - 1
      if L2_2 == L7_2 then
        L8_2 = #L3_2
        if L7_2 == L8_2 then
          L2_2 = nil
        else
          L2_2 = L2_2 + 1
        end
      end
    end
  end
  L4_2 = L1_2
  L5_2 = L2_2
  return L4_2, L5_2
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "GetLastLogOnForks"
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = 0
  L1_2 = 0
  L2_2 = Config
  L2_2 = L2_2.ForksAttachment
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = Config
    L6_2 = L6_2.ForksAttachment
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.obj
    if nil ~= L6_2 then
      L6_2 = Config
      L6_2 = L6_2.ForksAttachment
      L6_2 = L6_2[L5_2]
      L0_2 = L6_2.obj
      L1_2 = L5_2
      break
    end
  end
  L2_2 = L0_2
  L3_2 = L1_2
  return L2_2, L3_2
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "GetLastLogOnForks2"
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = 0
  L1_2 = 0
  L2_2 = Config
  L2_2 = L2_2.ForksAttachment2
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = Config
    L6_2 = L6_2.ForksAttachment2
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.obj
    if nil ~= L6_2 then
      L6_2 = Config
      L6_2 = L6_2.ForksAttachment2
      L6_2 = L6_2[L5_2]
      L0_2 = L6_2.obj
      L1_2 = L5_2
      break
    end
  end
  L2_2 = L0_2
  L3_2 = L1_2
  return L2_2, L3_2
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "GetClosestLog"
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = GetGamePool
  L4_2 = "CObject"
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  if not A2_2 then
    L5_2 = Config
    L5_2 = L5_2.Props
    L5_2 = L5_2.logs
    A2_2 = L5_2.hash
  end
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = GetEntityModel
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if L11_2 == A2_2 then
      L11_2 = DecorGetBool
      L12_2 = L10_2
      L13_2 = "entityOnForks"
      L11_2 = L11_2(L12_2, L13_2)
      if not L11_2 then
        L11_2 = table
        L11_2 = L11_2.insert
        L12_2 = L4_2
        L13_2 = L10_2
        L11_2(L12_2, L13_2)
      end
    end
  end
  L5_2 = 0
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = 1.5
  end
  L7_2 = pairs
  L8_2 = L4_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = GetEntityCoords
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    L13_2 = L13_2 - A0_2
    L13_2 = #L13_2
    if L6_2 > L13_2 then
      L5_2 = L12_2
      L14_2 = GetEntityCoords
      L15_2 = L12_2
      L14_2 = L14_2(L15_2)
      L14_2 = L14_2 - A0_2
      L6_2 = #L14_2
    end
  end
  return L5_2
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "GetLastPlankOnTrailer"
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Config
  L0_2 = L0_2.EnableVehicleLegacyMode
  if L0_2 then
    L0_2 = nil
    L1_2 = nil
    L2_2 = L30_1
    L2_2 = #L2_2
    L3_2 = 1
    L4_2 = -1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L30_1
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.obj
      if nil ~= L6_2 then
        L6_2 = L34_1.JobFlatbed
        if nil ~= L6_2 then
          L6_2 = IsEntityAttachedToEntity
          L7_2 = L30_1
          L7_2 = L7_2[L5_2]
          L7_2 = L7_2.obj
          L8_2 = L34_1.JobFlatbed
          L6_2 = L6_2(L7_2, L8_2)
          if L6_2 then
            L6_2 = L30_1
            L6_2 = L6_2[L5_2]
            L0_2 = L6_2.obj
            L1_2 = L5_2
            break
          end
        end
      end
    end
    L2_2 = L0_2
    L3_2 = L1_2
    return L2_2, L3_2
  else
    L0_2 = GetPedCrane
    L0_2 = L0_2()
    if L0_2 then
      L1_2 = L0_2.crane
      if L1_2 then
        L1_2 = L0_2.contentType
        if 1597396577 == L1_2 then
          L1_2 = L0_2.crane
          L1_2 = L1_2.LoadedObjects
          L1_2 = #L1_2
          L2_2 = L0_2.crane
          L2_2 = L2_2.LoadedObjects
          L2_2 = L2_2[L1_2]
          L3_2 = L1_2
          return L2_2, L3_2
        end
      end
    end
  end
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "GetLastSkipOnTrailer"
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Config
  L0_2 = L0_2.EnableVehicleLegacyMode
  if L0_2 then
    L0_2 = nil
    L1_2 = nil
    L2_2 = L39_1
    L2_2 = #L2_2
    L3_2 = 1
    L4_2 = -1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L39_1
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.obj
      if nil ~= L6_2 then
        L6_2 = L34_1.JobFlatbed
        if nil ~= L6_2 then
          L6_2 = IsEntityAttachedToEntity
          L7_2 = L39_1
          L7_2 = L7_2[L5_2]
          L7_2 = L7_2.obj
          L8_2 = L34_1.JobFlatbed
          L6_2 = L6_2(L7_2, L8_2)
          if L6_2 then
            L6_2 = L39_1
            L6_2 = L6_2[L5_2]
            L0_2 = L6_2.obj
            L1_2 = L5_2
            break
          end
        end
      end
    end
    L2_2 = L0_2
    L3_2 = L1_2
    return L2_2, L3_2
  else
    L0_2 = GetPedCrane
    L0_2 = L0_2()
    if L0_2 then
      L1_2 = L0_2.crane
      if L1_2 then
        L1_2 = L0_2.contentType
        if -1937513394 == L1_2 then
          L1_2 = L0_2.crane
          L1_2 = L1_2.LoadedObjects
          L1_2 = #L1_2
          L2_2 = L0_2.crane
          L2_2 = L2_2.LoadedObjects
          L2_2 = L2_2[L1_2]
          L3_2 = L1_2
          return L2_2, L3_2
        end
      end
    end
  end
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "GetLastLogOnTrailer"
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Config
  L0_2 = L0_2.EnableVehicleLegacyMode
  if L0_2 then
    L0_2 = nil
    L1_2 = nil
    L2_2 = L38_1
    L2_2 = #L2_2
    L3_2 = 1
    L4_2 = -1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L38_1
      L6_2 = L6_2[L5_2]
      if nil ~= L6_2 then
        L6_2 = L38_1
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.obj
        if nil ~= L6_2 then
          L6_2 = L34_1.JobFlatbed
          if nil ~= L6_2 then
            L6_2 = IsEntityAttachedToEntity
            L7_2 = L38_1
            L7_2 = L7_2[L5_2]
            L7_2 = L7_2.obj
            L8_2 = L34_1.JobFlatbed
            L6_2 = L6_2(L7_2, L8_2)
            if L6_2 then
              L6_2 = L38_1
              L6_2 = L6_2[L5_2]
              L0_2 = L6_2.obj
              L1_2 = L5_2
              break
            end
          end
        end
      end
    end
    L2_2 = L0_2
    L3_2 = L1_2
    return L2_2, L3_2
  else
    L0_2 = GetPedCrane
    L0_2 = L0_2()
    if L0_2 then
      L1_2 = L0_2.crane
      if L1_2 then
        L1_2 = L0_2.contentType
        L2_2 = Config
        L2_2 = L2_2.Props
        L2_2 = L2_2.logs
        L2_2 = L2_2.hash
        if L1_2 == L2_2 then
          L1_2 = L0_2.crane
          L1_2 = L1_2.LoadedObjects
          L1_2 = #L1_2
          L2_2 = L0_2.crane
          L2_2 = L2_2.LoadedObjects
          L2_2 = L2_2[L1_2]
          L3_2 = L1_2
          return L2_2, L3_2
        end
      end
    end
  end
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "GetTrailerFreeSlot"
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = 0
  L1_2 = 1
  L2_2 = L38_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L38_1
    L5_2 = L5_2[L4_2]
    if nil ~= L5_2 then
      L5_2 = L38_1
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.obj
      if nil == L5_2 then
        L0_2 = L4_2
        break
      end
    end
  end
  return L0_2
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "Config"
L59_1 = L59_1[L60_1]
L60_1 = "EnableVehicleLegacyMode"
L59_1 = L59_1[L60_1]
if L59_1 then
  L59_1 = _ENV
  L60_1 = "CreateThread"
  L59_1 = L59_1[L60_1]
  function L60_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = TriggerServerCallback
        L1_3 = "17mov_lumberjack:requestLogsData"
        function L2_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4, L19_4, L20_4, L21_4, L22_4
          L1_4 = Config
          L1_4 = L1_4.Debug
          if nil ~= L1_4 then
            L1_4 = print
            L2_4 = "NEW DATA FROM CALLBACK"
            L1_4(L2_4)
          end
          L1_4 = pairs
          L2_4 = A0_4
          L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
          for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
            L7_4 = L17_1
            L7_4 = L7_4[L5_4]
            if nil == L7_4 then
              L7_4 = L17_1
              L7_4[L5_4] = L6_4
            else
              L7_4 = pairs
              L8_4 = L6_4
              L7_4, L8_4, L9_4, L10_4 = L7_4(L8_4)
              for L11_4, L12_4 in L7_4, L8_4, L9_4, L10_4 do
                L13_4 = false
                L14_4 = pairs
                L15_4 = L17_1
                L15_4 = L15_4[L5_4]
                L14_4, L15_4, L16_4, L17_4 = L14_4(L15_4)
                for L18_4, L19_4 in L14_4, L15_4, L16_4, L17_4 do
                  L20_4 = L19_4.slot
                  L21_4 = L12_4.slot
                  if L20_4 == L21_4 then
                    L13_4 = true
                    break
                  end
                end
                if not L13_4 then
                  L14_4 = Config
                  L14_4 = L14_4.Debug
                  if nil ~= L14_4 then
                    L14_4 = print
                    L15_4 = "ADDING NEW MATERIAL ON "
                    L16_4 = L12_4.slot
                    L14_4(L15_4, L16_4)
                  end
                  L14_4 = table
                  L14_4 = L14_4.insert
                  L15_4 = L17_1
                  L15_4 = L15_4[L5_4]
                  L16_4 = L12_4
                  L14_4(L15_4, L16_4)
                end
              end
            end
          end
          L1_4 = pairs
          L2_4 = L17_1
          L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
          for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
            L7_4 = A0_4[L5_4]
            if nil == L7_4 then
              L7_4 = L17_1
              L7_4[L5_4] = nil
            else
              L7_4 = {}
              L8_4 = pairs
              L9_4 = L6_4
              L8_4, L9_4, L10_4, L11_4 = L8_4(L9_4)
              for L12_4, L13_4 in L8_4, L9_4, L10_4, L11_4 do
                L14_4 = false
                L15_4 = pairs
                L16_4 = A0_4[L5_4]
                L15_4, L16_4, L17_4, L18_4 = L15_4(L16_4)
                for L19_4, L20_4 in L15_4, L16_4, L17_4, L18_4 do
                  L21_4 = L13_4.slot
                  L22_4 = L20_4.slot
                  if L21_4 == L22_4 then
                    L14_4 = true
                    break
                  end
                end
                if not L14_4 then
                  L15_4 = Config
                  L15_4 = L15_4.Debug
                  if nil ~= L15_4 then
                    L15_4 = print
                    L16_4 = "DELETING MATERIAL MATERIAL ON "
                    L17_4 = L13_4.slot
                    L15_4(L16_4, L17_4)
                  end
                  L15_4 = L35_1.JobFlatbed
                  if L15_4 == L5_4 then
                    L15_4 = L13_4.type
                    if "logs" == L15_4 then
                      L16_4 = L13_4.slot
                      L15_4 = L38_1
                      L15_4 = L15_4[L16_4]
                      L15_4.obj = nil
                    end
                    L15_4 = L13_4.type
                    if "planks" == L15_4 then
                      L16_4 = L13_4.slot
                      L15_4 = L30_1
                      L15_4 = L15_4[L16_4]
                      L15_4.obj = nil
                    end
                    L15_4 = L13_4.type
                    if "skip" == L15_4 then
                      L16_4 = L13_4.slot
                      L15_4 = L39_1
                      L15_4 = L15_4[L16_4]
                      L15_4.obj = nil
                      L16_4 = L13_4.slot
                      L15_4 = L39_1
                      L15_4 = L15_4[L16_4]
                      L15_4.chipsObj = nil
                      L15_4 = L13_4.chips
                      L16_4 = CreateThread
                      function L17_4()
                        local L0_5, L1_5
                        L0_5 = Wait
                        L1_5 = 50
                        L0_5(L1_5)
                        L0_5 = DeleteObject
                        L1_5 = L15_4
                        L0_5(L1_5)
                      end
                      L16_4(L17_4)
                    end
                  end
                  L15_4 = L13_4.obj
                  L16_4 = table
                  L16_4 = L16_4.insert
                  L17_4 = L7_4
                  L18_4 = L12_4
                  L16_4(L17_4, L18_4)
                  L16_4 = CreateThread
                  function L17_4()
                    local L0_5, L1_5
                    L0_5 = Wait
                    L1_5 = 50
                    L0_5(L1_5)
                    L0_5 = DeleteObject
                    L1_5 = L15_4
                    L0_5(L1_5)
                  end
                  L16_4(L17_4)
                end
              end
              L8_4 = #L7_4
              L9_4 = 1
              L10_4 = -1
              for L11_4 = L8_4, L9_4, L10_4 do
                L12_4 = Config
                L12_4 = L12_4.Debug
                if nil ~= L12_4 then
                  L12_4 = print
                  L13_4 = "4688: "
                  L14_4 = L5_4
                  L15_4 = L7_4[L11_4]
                  L12_4(L13_4, L14_4, L15_4)
                end
                L12_4 = L17_1
                L12_4 = L12_4[L5_4]
                L13_4 = L7_4[L11_4]
                L12_4 = L12_4[L13_4]
                if nil ~= L12_4 then
                  L12_4 = table
                  L12_4 = L12_4.remove
                  L13_4 = L17_1
                  L13_4 = L13_4[L5_4]
                  L14_4 = L7_4[L11_4]
                  L12_4(L13_4, L14_4)
                end
              end
            end
          end
        end
        L0_3(L1_3, L2_3)
        L0_3 = Wait
        L1_3 = 5171
        L0_3(L1_3)
      end
    end
    L0_2(L1_2)
    while true do
      L0_2 = Wait
      L1_2 = 2500
      L0_2(L1_2)
      L0_2 = pairs
      L1_2 = L17_1
      L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
      for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
        L6_2 = NetToVeh
        L7_2 = L4_2
        L6_2 = L6_2(L7_2)
        if 0 ~= L6_2 then
          L6_2 = GetEntityModel
          L7_2 = NetToVeh
          L8_2 = L4_2
          L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L7_2(L8_2)
          L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
          L7_2 = GetHashKey
          L8_2 = Config
          L8_2 = L8_2.LegacyJobFlatbedModel
          L7_2 = L7_2(L8_2)
          if L6_2 == L7_2 then
            L6_2 = GetEntityCoords
            L7_2 = NetToVeh
            L8_2 = L4_2
            L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L7_2(L8_2)
            L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
            L7_2 = GetEntityCoords
            L8_2 = PlayerPedId
            L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L8_2()
            L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
            L6_2 = L6_2 - L7_2
            L6_2 = #L6_2
            L7_2 = 400.0
            if L6_2 < L7_2 then
              L6_2 = NetToVeh
              L7_2 = L4_2
              L6_2 = L6_2(L7_2)
              L7_2 = pairs
              L8_2 = L5_2
              L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
              for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
                L13_2 = L12_2.stopLoop
                if true ~= L13_2 then
                  L13_2 = GetEntityCoords
                  L14_2 = L6_2
                  L13_2 = L13_2(L14_2)
                  L14_2 = L12_2.type
                  if "logs" == L14_2 then
                    L14_2 = L12_2.obj
                    if nil ~= L14_2 then
                      L14_2 = DoesEntityExist
                      L15_2 = L12_2.obj
                      L14_2 = L14_2(L15_2)
                      if L14_2 then
                        L14_2 = GetEntityModel
                        L15_2 = L12_2.obj
                        L14_2 = L14_2(L15_2)
                        L15_2 = Config
                        L15_2 = L15_2.Props
                        L15_2 = L15_2.logs
                        L15_2 = L15_2.hash
                        if L14_2 == L15_2 then
                          goto lbl_130
                        end
                      end
                    end
                    L14_2 = CreateObject
                    L15_2 = Config
                    L15_2 = L15_2.Props
                    L15_2 = L15_2.logs
                    L15_2 = L15_2.hash
                    L16_2 = L13_2.x
                    L17_2 = L13_2.y
                    L18_2 = L13_2.z
                    L19_2 = false
                    L20_2 = true
                    L21_2 = false
                    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                    L12_2.obj = L14_2
                    L14_2 = L35_1.JobFlatbed
                    if L4_2 == L14_2 then
                      L15_2 = L12_2.slot
                      L14_2 = L38_1
                      L14_2 = L14_2[L15_2]
                      L15_2 = L12_2.obj
                      L14_2.obj = L15_2
                    end
                    L14_2 = AttachEntityToEntity
                    L15_2 = L12_2.obj
                    L16_2 = L6_2
                    L17_2 = 0
                    L19_2 = L12_2.slot
                    L18_2 = L38_1
                    L18_2 = L18_2[L19_2]
                    L18_2 = L18_2.coords
                    L18_2 = L18_2.x
                    L20_2 = L12_2.slot
                    L19_2 = L38_1
                    L19_2 = L19_2[L20_2]
                    L19_2 = L19_2.coords
                    L19_2 = L19_2.y
                    L21_2 = L12_2.slot
                    L20_2 = L38_1
                    L20_2 = L20_2[L21_2]
                    L20_2 = L20_2.coords
                    L20_2 = L20_2.z
                    L21_2 = 0.0
                    L22_2 = 0.0
                    L23_2 = 0.0
                    L24_2 = true
                    L25_2 = true
                    L26_2 = true
                    L27_2 = false
                    L28_2 = 2
                    L29_2 = true
                    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                    L14_2 = DecorSetBool
                    L15_2 = L12_2.obj
                    L16_2 = "entityOnForks"
                    L17_2 = true
                    L14_2(L15_2, L16_2, L17_2)
                    ::lbl_130::
                    L14_2 = L12_2.obj
                    if nil ~= L14_2 then
                      L14_2 = IsEntityAttachedToEntity
                      L15_2 = L12_2.obj
                      L16_2 = L6_2
                      L14_2 = L14_2(L15_2, L16_2)
                      if not L14_2 then
                        L14_2 = AttachEntityToEntity
                        L15_2 = L12_2.obj
                        L16_2 = L6_2
                        L17_2 = 0
                        L19_2 = L12_2.slot
                        L18_2 = L38_1
                        L18_2 = L18_2[L19_2]
                        L18_2 = L18_2.coords
                        L18_2 = L18_2.x
                        L20_2 = L12_2.slot
                        L19_2 = L38_1
                        L19_2 = L19_2[L20_2]
                        L19_2 = L19_2.coords
                        L19_2 = L19_2.y
                        L21_2 = L12_2.slot
                        L20_2 = L38_1
                        L20_2 = L20_2[L21_2]
                        L20_2 = L20_2.coords
                        L20_2 = L20_2.z
                        L21_2 = 0.0
                        L22_2 = 0.0
                        L23_2 = 0.0
                        L24_2 = true
                        L25_2 = true
                        L26_2 = true
                        L27_2 = false
                        L28_2 = 2
                        L29_2 = true
                        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                      end
                    end
                  else
                    L14_2 = L12_2.type
                    if "planks" == L14_2 then
                      L14_2 = L12_2.obj
                      if nil ~= L14_2 then
                        L14_2 = DoesEntityExist
                        L15_2 = L12_2.obj
                        L14_2 = L14_2(L15_2)
                        if L14_2 then
                          goto lbl_227
                        end
                      end
                      L14_2 = CreateObject
                      L15_2 = "17mov_woodpile"
                      L16_2 = L13_2.x
                      L17_2 = L13_2.y
                      L18_2 = L13_2.z
                      L19_2 = false
                      L20_2 = true
                      L21_2 = false
                      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                      L12_2.obj = L14_2
                      L14_2 = L35_1.JobFlatbed
                      if L4_2 == L14_2 then
                        L15_2 = L12_2.slot
                        L14_2 = L30_1
                        L14_2 = L14_2[L15_2]
                        L15_2 = L12_2.obj
                        L14_2.obj = L15_2
                      end
                      L14_2 = AttachEntityToEntity
                      L15_2 = L12_2.obj
                      L16_2 = L6_2
                      L17_2 = 0
                      L19_2 = L12_2.slot
                      L18_2 = L30_1
                      L18_2 = L18_2[L19_2]
                      L18_2 = L18_2.coords
                      L18_2 = L18_2.x
                      L20_2 = L12_2.slot
                      L19_2 = L30_1
                      L19_2 = L19_2[L20_2]
                      L19_2 = L19_2.coords
                      L19_2 = L19_2.y
                      L21_2 = L12_2.slot
                      L20_2 = L30_1
                      L20_2 = L20_2[L21_2]
                      L20_2 = L20_2.coords
                      L20_2 = L20_2.z
                      L21_2 = 0.0
                      L22_2 = 0.0
                      L23_2 = 0.0
                      L24_2 = true
                      L25_2 = true
                      L26_2 = true
                      L27_2 = false
                      L28_2 = 2
                      L29_2 = true
                      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                      ::lbl_227::
                      L14_2 = L12_2.obj
                      if nil ~= L14_2 then
                        L14_2 = IsEntityAttachedToEntity
                        L15_2 = L12_2.obj
                        L16_2 = L6_2
                        L14_2 = L14_2(L15_2, L16_2)
                        if not L14_2 then
                          L14_2 = AttachEntityToEntity
                          L15_2 = L12_2.obj
                          L16_2 = L6_2
                          L17_2 = 0
                          L19_2 = L12_2.slot
                          L18_2 = L30_1
                          L18_2 = L18_2[L19_2]
                          L18_2 = L18_2.coords
                          L18_2 = L18_2.x
                          L20_2 = L12_2.slot
                          L19_2 = L30_1
                          L19_2 = L19_2[L20_2]
                          L19_2 = L19_2.coords
                          L19_2 = L19_2.y
                          L21_2 = L12_2.slot
                          L20_2 = L30_1
                          L20_2 = L20_2[L21_2]
                          L20_2 = L20_2.coords
                          L20_2 = L20_2.z
                          L21_2 = 0.0
                          L22_2 = 0.0
                          L23_2 = 0.0
                          L24_2 = true
                          L25_2 = true
                          L26_2 = true
                          L27_2 = false
                          L28_2 = 2
                          L29_2 = true
                          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                        end
                      end
                    else
                      L14_2 = L12_2.type
                      if "skip" == L14_2 then
                        L14_2 = L12_2.obj
                        if nil ~= L14_2 then
                          L14_2 = DoesEntityExist
                          L15_2 = L12_2.obj
                          L14_2 = L14_2(L15_2)
                          if L14_2 then
                            goto lbl_346
                          end
                        end
                        L14_2 = CreateObject
                        L15_2 = "17movement_skip"
                        L16_2 = L13_2.x
                        L17_2 = L13_2.y
                        L18_2 = L13_2.z
                        L19_2 = false
                        L20_2 = true
                        L21_2 = false
                        L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                        L12_2.obj = L14_2
                        L14_2 = CreateObject
                        L15_2 = "17movement_chips"
                        L16_2 = L13_2.x
                        L17_2 = L13_2.y
                        L18_2 = L13_2.z
                        L19_2 = false
                        L20_2 = true
                        L21_2 = false
                        L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                        L12_2.chips = L14_2
                        L14_2 = AttachEntityToEntity
                        L15_2 = L12_2.chips
                        L16_2 = L12_2.obj
                        L17_2 = 0
                        L18_2 = L12_2.offset
                        L18_2 = L18_2.x
                        L19_2 = L12_2.offset
                        L19_2 = L19_2.y
                        L20_2 = L12_2.offset
                        L20_2 = L20_2.z
                        L21_2 = 0.0
                        L22_2 = 0.0
                        L23_2 = 0.0
                        L24_2 = false
                        L25_2 = true
                        L26_2 = true
                        L27_2 = false
                        L28_2 = 2
                        L29_2 = true
                        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                        L14_2 = AttachEntityToEntity
                        L15_2 = L12_2.obj
                        L16_2 = L6_2
                        L17_2 = 0
                        L19_2 = L12_2.slot
                        L18_2 = L39_1
                        L18_2 = L18_2[L19_2]
                        L18_2 = L18_2.coords
                        L18_2 = L18_2.x
                        L20_2 = L12_2.slot
                        L19_2 = L39_1
                        L19_2 = L19_2[L20_2]
                        L19_2 = L19_2.coords
                        L19_2 = L19_2.y
                        L21_2 = L12_2.slot
                        L20_2 = L39_1
                        L20_2 = L20_2[L21_2]
                        L20_2 = L20_2.coords
                        L20_2 = L20_2.z
                        L21_2 = 0.0
                        L22_2 = 0.0
                        L23_2 = 0.0
                        L24_2 = true
                        L25_2 = true
                        L26_2 = true
                        L27_2 = false
                        L28_2 = 2
                        L29_2 = true
                        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                        ::lbl_346::
                        L14_2 = L12_2.obj
                        if nil ~= L14_2 then
                          L14_2 = IsEntityAttachedToEntity
                          L15_2 = L12_2.obj
                          L16_2 = L6_2
                          L14_2 = L14_2(L15_2, L16_2)
                          if not L14_2 then
                            L14_2 = AttachEntityToEntity
                            L15_2 = L12_2.obj
                            L16_2 = L6_2
                            L17_2 = 0
                            L19_2 = L12_2.slot
                            L18_2 = L39_1
                            L18_2 = L18_2[L19_2]
                            L18_2 = L18_2.coords
                            L18_2 = L18_2.x
                            L20_2 = L12_2.slot
                            L19_2 = L39_1
                            L19_2 = L19_2[L20_2]
                            L19_2 = L19_2.coords
                            L19_2 = L19_2.y
                            L21_2 = L12_2.slot
                            L20_2 = L39_1
                            L20_2 = L20_2[L21_2]
                            L20_2 = L20_2.coords
                            L20_2 = L20_2.z
                            L21_2 = 0.0
                            L22_2 = 0.0
                            L23_2 = 0.0
                            L24_2 = true
                            L25_2 = true
                            L26_2 = true
                            L27_2 = false
                            L28_2 = 2
                            L29_2 = true
                            L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                          end
                        end
                      end
                    end
                  end
                end
              end
          end
        end
        else
          L6_2 = pairs
          L7_2 = L5_2
          L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
          for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
            L12_2 = L11_2.obj
            if nil ~= L12_2 then
              L12_2 = GetEntityCoords
              L13_2 = L11_2.obj
              L12_2 = L12_2(L13_2)
              L13_2 = GetEntityCoords
              L14_2 = NetToVeh
              L15_2 = L4_2
              L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L14_2(L15_2)
              L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
              L12_2 = L12_2 - L13_2
              L12_2 = #L12_2
              if L12_2 > 20.0 then
                L12_2 = DeleteEntity
                L13_2 = L11_2.obj
                L12_2(L13_2)
                L11_2.obj = nil
              end
            end
          end
        end
      end
    end
  end
  L59_1(L60_1)
end
L59_1 = RegisterNetEvent
L60_1 = "17mov_Lumberjack:SaveObject"
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  while true do
    L2_2 = L17_1
    L2_2 = L2_2[A0_2]
    if nil ~= L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
  end
  while true do
    L2_2 = pairs
    L3_2 = L17_1
    L3_2 = L3_2[A0_2]
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.slot
      if L8_2 == A1_2 then
        L8_2 = L7_2.type
        if "logs" == L8_2 then
          L8_2 = L38_1
          L8_2 = L8_2[A1_2]
          L9_2 = L7_2.obj
          L8_2.obj = L9_2
          return
        end
      end
    end
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
  end
end
L59_1(L60_1, L61_1)
L59_1 = RegisterNetEvent
L60_1 = "17mov_Lumberjack:AttachLog_CL"
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L2_2 = L17_1
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    L2_2 = L17_1
    L3_2 = {}
    L2_2[A0_2] = L3_2
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L17_1
  L3_2 = L3_2[A0_2]
  L4_2 = {}
  L4_2.netid = A0_2
  L4_2.slot = A1_2
  L4_2.type = "logs"
  L2_2(L3_2, L4_2)
  L2_2 = NetToVeh
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if 0 ~= L2_2 then
    L3_2 = GetEntityModel
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = GetHashKey
    L5_2 = Config
    L5_2 = L5_2.LegacyJobFlatbedModel
    L4_2 = L4_2(L5_2)
    if L3_2 == L4_2 then
      L3_2 = GetEntityCoords
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = GetEntityCoords
      L5_2 = PlayerPedId
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L5_2()
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      L3_2 = L3_2 - L4_2
      L3_2 = #L3_2
      L4_2 = 400.0
      if L3_2 < L4_2 then
        L3_2 = pairs
        L4_2 = L17_1
        L4_2 = L4_2[A0_2]
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = L8_2.type
          if "logs" == L9_2 then
            L9_2 = L8_2.obj
            if nil ~= L9_2 then
              L9_2 = DoesEntityExist
              L10_2 = L8_2.obj
              L9_2 = L9_2(L10_2)
              if L9_2 then
                goto lbl_109
              end
            end
            L9_2 = GetEntityCoords
            L10_2 = L2_2
            L9_2 = L9_2(L10_2)
            L10_2 = CreateObject
            L11_2 = Config
            L11_2 = L11_2.Props
            L11_2 = L11_2.logs
            L11_2 = L11_2.hash
            L12_2 = L9_2.x
            L13_2 = L9_2.y
            L14_2 = L9_2.z
            L15_2 = false
            L16_2 = true
            L17_2 = false
            L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            L8_2.obj = L10_2
            L10_2 = AttachEntityToEntity
            L11_2 = L8_2.obj
            L12_2 = L2_2
            L13_2 = 0
            L14_2 = L38_1
            L14_2 = L14_2[A1_2]
            L14_2 = L14_2.coords
            L14_2 = L14_2.x
            L15_2 = L38_1
            L15_2 = L15_2[A1_2]
            L15_2 = L15_2.coords
            L15_2 = L15_2.y
            L16_2 = L38_1
            L16_2 = L16_2[A1_2]
            L16_2 = L16_2.coords
            L16_2 = L16_2.z
            L17_2 = 0.0
            L18_2 = 0.0
            L19_2 = 0.0
            L20_2 = true
            L21_2 = true
            L22_2 = true
            L23_2 = false
            L24_2 = 2
            L25_2 = true
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
            L10_2 = DecorSetBool
            L11_2 = L8_2.obj
            L12_2 = "entityOnForks"
            L13_2 = true
            L10_2(L11_2, L12_2, L13_2)
          end
          ::lbl_109::
        end
      end
    end
  end
end
L59_1(L60_1, L61_1)
L59_1 = RegisterNetEvent
L60_1 = "17mov_Lumberjack:AttachSkipToTrailer"
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  while true do
    L3_2 = NetToObj
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if 0 ~= L3_2 then
      L3_2 = NetToObj
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 ~= A0_2 then
        break
      end
    end
    L3_2 = Wait
    L4_2 = 10
    L3_2(L4_2)
  end
  L3_2 = L39_1
  L3_2 = L3_2[A2_2]
  L4_2 = NetToObj
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.obj = L4_2
  while true do
    L3_2 = NetToObj
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if 0 ~= L3_2 then
      L3_2 = NetToObj
      L4_2 = A1_2
      L3_2 = L3_2(L4_2)
      if L3_2 ~= A1_2 then
        break
      end
    end
    L3_2 = Wait
    L4_2 = 10
    L3_2(L4_2)
  end
  L3_2 = L39_1
  L3_2 = L3_2[A2_2]
  L4_2 = NetToObj
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2.chipsObj = L4_2
  L3_2 = false
  L31_1 = L3_2
  L3_2 = 0
  L3_1 = L3_2
  L3_2 = 0
  L4_1 = L3_2
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  while true do
    L4_2 = L34_1.JobFlatbed
    if nil == L4_2 then
      break
    end
    L4_2 = IsEntityAttachedToEntity
    L5_2 = L39_1
    L5_2 = L5_2[A2_2]
    L5_2 = L5_2.obj
    L6_2 = L34_1.JobFlatbed
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      break
    end
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    L4_2 = L4_2 - L3_2
    L5_2 = 2500
    if L4_2 > L5_2 then
      break
    end
    L4_2 = NetworkRequestControlOfEntity
    L5_2 = L39_1
    L5_2 = L5_2[A2_2]
    L5_2 = L5_2.obj
    L4_2(L5_2)
    L4_2 = AttachEntityToEntity
    L5_2 = L39_1
    L5_2 = L5_2[A2_2]
    L5_2 = L5_2.obj
    L6_2 = L34_1.JobFlatbed
    L7_2 = 0
    L8_2 = L39_1
    L8_2 = L8_2[A2_2]
    L8_2 = L8_2.coords
    L8_2 = L8_2.x
    L9_2 = L39_1
    L9_2 = L9_2[A2_2]
    L9_2 = L9_2.coords
    L9_2 = L9_2.y
    L10_2 = L39_1
    L10_2 = L10_2[A2_2]
    L10_2 = L10_2.coords
    L10_2 = L10_2.z
    L11_2 = 0.0
    L12_2 = 0.0
    L13_2 = 0.0
    L14_2 = true
    L15_2 = true
    L16_2 = true
    L17_2 = false
    L18_2 = 2
    L19_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L4_2 = Wait
    L5_2 = 250
    L4_2(L5_2)
  end
end
L59_1(L60_1, L61_1)
L59_1 = RegisterNetEvent
L60_1 = "17mov_Lumberjack:SaveSkipObject"
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  while true do
    L2_2 = L17_1
    L2_2 = L2_2[A0_2]
    if nil ~= L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
  end
  while true do
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
    L2_2 = pairs
    L3_2 = L17_1
    L3_2 = L3_2[A0_2]
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.slot
      if L8_2 == A1_2 then
        L8_2 = L7_2.type
        if "skip" == L8_2 then
          L8_2 = L39_1
          L8_2 = L8_2[A1_2]
          L9_2 = L7_2.obj
          L8_2.obj = L9_2
          L8_2 = L39_1
          L8_2 = L8_2[A1_2]
          L9_2 = L7_2.chips
          L8_2.chipsObj = L9_2
          L8_2 = false
          L31_1 = L8_2
          L8_2 = 0
          L32_1 = L8_2
          return
        end
      end
    end
  end
end
L59_1(L60_1, L61_1)
L59_1 = RegisterNetEvent
L60_1 = "17mov_Lumberjack:SavePlankObject"
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  while true do
    L2_2 = L17_1
    L2_2 = L2_2[A0_2]
    if nil ~= L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
  end
  while true do
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
    L2_2 = pairs
    L3_2 = L17_1
    L3_2 = L3_2[A0_2]
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.slot
      if L8_2 == A1_2 then
        L8_2 = L7_2.type
        if "planks" == L8_2 then
          L8_2 = L30_1
          L8_2 = L8_2[A1_2]
          L9_2 = L7_2.obj
          L8_2.obj = L9_2
          L8_2 = false
          L31_1 = L8_2
          L8_2 = 0
          L32_1 = L8_2
          return
        end
      end
    end
  end
end
L59_1(L60_1, L61_1)
L59_1 = RegisterNetEvent
L60_1 = "17mov_Lumberjack:AttachLocalSkip"
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L3_2 = L17_1
  L3_2 = L3_2[A0_2]
  if nil == L3_2 then
    L3_2 = L17_1
    L4_2 = {}
    L3_2[A0_2] = L4_2
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L17_1
  L4_2 = L4_2[A0_2]
  L5_2 = {}
  L5_2.netid = A0_2
  L5_2.slot = A1_2
  L5_2.type = "skip"
  L5_2.offset = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = NetToVeh
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if 0 ~= L3_2 then
    L4_2 = GetEntityModel
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = GetHashKey
    L6_2 = Config
    L6_2 = L6_2.LegacyJobFlatbedModel
    L5_2 = L5_2(L6_2)
    if L4_2 == L5_2 then
      L4_2 = GetEntityCoords
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = GetEntityCoords
      L6_2 = PlayerPedId
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L6_2()
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      L4_2 = L4_2 - L5_2
      L4_2 = #L4_2
      L5_2 = 400.0
      if L4_2 < L5_2 then
        L4_2 = pairs
        L5_2 = L17_1
        L5_2 = L5_2[A0_2]
        L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
        for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
          L10_2 = L9_2.type
          if "skip" == L10_2 then
            L10_2 = L9_2.obj
            if nil ~= L10_2 then
              L10_2 = DoesEntityExist
              L11_2 = L9_2.obj
              L10_2 = L10_2(L11_2)
              if L10_2 then
                goto lbl_132
              end
            end
            L10_2 = GetEntityCoords
            L11_2 = L3_2
            L10_2 = L10_2(L11_2)
            L11_2 = CreateObject
            L12_2 = "17movement_skip"
            L13_2 = L10_2.x
            L14_2 = L10_2.y
            L15_2 = L10_2.z
            L16_2 = false
            L17_2 = true
            L18_2 = false
            L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
            L9_2.obj = L11_2
            L11_2 = CreateObject
            L12_2 = "17movement_chips"
            L13_2 = L10_2.x
            L14_2 = L10_2.y
            L15_2 = L10_2.z
            L16_2 = false
            L17_2 = true
            L18_2 = false
            L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
            L9_2.chips = L11_2
            L11_2 = AttachEntityToEntity
            L12_2 = L9_2.chips
            L13_2 = L9_2.obj
            L14_2 = 0
            L15_2 = L9_2.offset
            L15_2 = L15_2.x
            L16_2 = L9_2.offset
            L16_2 = L16_2.y
            L17_2 = L9_2.offset
            L17_2 = L17_2.z
            L18_2 = 0.0
            L19_2 = 0.0
            L20_2 = 0.0
            L21_2 = false
            L22_2 = true
            L23_2 = true
            L24_2 = false
            L25_2 = 2
            L26_2 = true
            L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
            L11_2 = AttachEntityToEntity
            L12_2 = L9_2.obj
            L13_2 = L3_2
            L14_2 = 0
            L15_2 = L39_1
            L15_2 = L15_2[A1_2]
            L15_2 = L15_2.coords
            L15_2 = L15_2.x
            L16_2 = L39_1
            L16_2 = L16_2[A1_2]
            L16_2 = L16_2.coords
            L16_2 = L16_2.y
            L17_2 = L39_1
            L17_2 = L17_2[A1_2]
            L17_2 = L17_2.coords
            L17_2 = L17_2.z
            L18_2 = 0.0
            L19_2 = 0.0
            L20_2 = 0.0
            L21_2 = true
            L22_2 = true
            L23_2 = true
            L24_2 = false
            L25_2 = 2
            L26_2 = true
            L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
          end
          ::lbl_132::
        end
      end
    end
  end
end
L59_1(L60_1, L61_1)
L59_1 = RegisterNetEvent
L60_1 = "17mov_Lumberjack:AttachPallete"
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L2_2 = L17_1
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    L2_2 = L17_1
    L3_2 = {}
    L2_2[A0_2] = L3_2
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L17_1
  L3_2 = L3_2[A0_2]
  L4_2 = {}
  L4_2.netid = A0_2
  L4_2.slot = A1_2
  L4_2.type = "planks"
  L2_2(L3_2, L4_2)
  L2_2 = NetToVeh
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if 0 ~= L2_2 then
    L3_2 = GetEntityModel
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = GetHashKey
    L5_2 = Config
    L5_2 = L5_2.LegacyJobFlatbedModel
    L4_2 = L4_2(L5_2)
    if L3_2 == L4_2 then
      L3_2 = GetEntityCoords
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = GetEntityCoords
      L5_2 = PlayerPedId
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L5_2()
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      L3_2 = L3_2 - L4_2
      L3_2 = #L3_2
      L4_2 = 400.0
      if L3_2 < L4_2 then
        L3_2 = pairs
        L4_2 = L17_1
        L4_2 = L4_2[A0_2]
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = L8_2.type
          if "planks" == L9_2 then
            L9_2 = L8_2.obj
            if nil ~= L9_2 then
              L9_2 = DoesEntityExist
              L10_2 = L8_2.obj
              L9_2 = L9_2(L10_2)
              if L9_2 then
                goto lbl_101
              end
            end
            L9_2 = GetEntityCoords
            L10_2 = L2_2
            L9_2 = L9_2(L10_2)
            L10_2 = CreateObject
            L11_2 = "17mov_woodpile"
            L12_2 = L9_2.x
            L13_2 = L9_2.y
            L14_2 = L9_2.z
            L15_2 = false
            L16_2 = true
            L17_2 = false
            L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            L8_2.obj = L10_2
            L10_2 = AttachEntityToEntity
            L11_2 = L8_2.obj
            L12_2 = L2_2
            L13_2 = 0
            L14_2 = L30_1
            L14_2 = L14_2[A1_2]
            L14_2 = L14_2.coords
            L14_2 = L14_2.x
            L15_2 = L30_1
            L15_2 = L15_2[A1_2]
            L15_2 = L15_2.coords
            L15_2 = L15_2.y
            L16_2 = L30_1
            L16_2 = L16_2[A1_2]
            L16_2 = L16_2.coords
            L16_2 = L16_2.z
            L17_2 = 0.0
            L18_2 = 0.0
            L19_2 = 0.0
            L20_2 = true
            L21_2 = true
            L22_2 = true
            L23_2 = false
            L24_2 = 2
            L25_2 = true
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
          ::lbl_101::
        end
      end
    end
  end
end
L59_1(L60_1, L61_1)
L59_1 = RegisterNetEvent
L60_1 = "17mov_Lumberjack:ResetTractors"
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.ForksAttachment
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.obj
    if nil ~= L6_2 then
      L6_2 = L5_2.obj
      if 0 ~= L6_2 then
        L6_2 = DeleteEntity
        L7_2 = L5_2.obj
        L6_2(L7_2)
        L5_2.obj = nil
      end
    end
  end
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.ForksAttachment2
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.obj
    if nil ~= L6_2 then
      L6_2 = L5_2.obj
      if 0 ~= L6_2 then
        L6_2 = DeleteEntity
        L7_2 = L5_2.obj
        L6_2(L7_2)
        L5_2.obj = nil
      end
    end
  end
end
L59_1(L60_1, L61_1)
L59_1 = _ENV
L60_1 = "ShowTutorial"
function L61_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = GetResourceKvpInt
    L1_3 = "17mov_Tutorials:"
    L2_3 = A0_2
    L1_3 = L1_3 .. L2_3
    L0_3 = L0_3(L1_3)
    if 0 == L0_3 then
      L0_3 = true
      L8_1 = L0_3
      L0_3 = A0_2
      L21_1 = L0_3
      L0_3 = SetNuiFocus
      L1_3 = true
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = SendNUIMessage
      L1_3 = {}
      L1_3.action = "showTutorial"
      L2_3 = A0_2
      L1_3.customText = L2_3
      L0_3(L1_3)
      while true do
        L0_3 = L8_1
        if not L0_3 then
          break
        end
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
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
      end
    end
  end
  L1_2(L2_2)
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "OpenPanel"
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Config
  L2_2 = L2_2.Panels
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.content
  if A1_2 then
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = L2_2
    L5_2 = table
    L5_2 = L5_2.unpack
    L6_2 = A1_2
    L5_2, L6_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  end
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "showCustomPanel"
  L4_2.callbackName = A0_2
  L5_2 = Config
  L5_2 = L5_2.Panels
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.title
  L4_2.title = L5_2
  L5_2 = Config
  L5_2 = L5_2.Panels
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.subTitle
  L4_2.subTitle = L5_2
  L5_2 = Config
  L5_2 = L5_2.Panels
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.confirmBtn
  L4_2.confirmBtn = L5_2
  L5_2 = Config
  L5_2 = L5_2.Panels
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.closeBtn
  L4_2.closeBtn = L5_2
  L4_2.content = L2_2
  L5_2 = Config
  L5_2 = L5_2.Panels
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.photo
  L4_2.img = L5_2
  L3_2(L4_2)
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "AttachLogOnTrailer"
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GetTrailerFreeSlot
  L1_2 = L1_2()
  L2_2 = Config
  L2_2 = L2_2.TrailerLogsAttachments
  L2_2 = #L2_2
  if L1_2 >= L2_2 then
    L2_2 = ShowTutorial
    L3_2 = Config
    L3_2 = L3_2.Lang
    L3_2 = L3_2.afterLoadingFullTrailer
    L2_2(L3_2)
    L2_2 = TriggerServerEvent
    L3_2 = "17mov_Lumberjack:ResetTractors"
    L2_2(L3_2)
  end
  if 0 == L1_2 then
    L2_2 = Notify
    L3_2 = Config
    L3_2 = L3_2.Lang
    L3_2 = L3_2.fullTrailer
    return L2_2(L3_2)
  end
  L2_2 = NetworkDoesEntityExistWithNetworkId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = 0
    while true do
      if 0 ~= L2_2 then
        L3_2 = targerObj
        if L2_2 ~= L3_2 then
          break
        end
      end
      L3_2 = ObjToNet
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L2_2 = L3_2
      if 0 ~= L2_2 then
        L3_2 = targerObj
        if L2_2 ~= L3_2 then
          goto lbl_47
        end
      end
      L3_2 = Wait
      L4_2 = 100
      L3_2(L4_2)
      ::lbl_47::
    end
    while true do
      L3_2 = NetworkHasControlOfNetworkId
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = NetworkRequestControlOfNetworkId
      L4_2 = L2_2
      L3_2(L4_2)
      L3_2 = NetworkHasControlOfNetworkId
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = Wait
        L4_2 = 100
        L3_2(L4_2)
      end
    end
  end
  L2_2 = DeleteEntity
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = L38_1
  L2_2 = L2_2[L1_2]
  L2_2.obj = 17
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_Lumberjack:AttachLog"
  L4_2 = L1_2
  L5_2 = L35_1.JobFlatbed
  L6_2 = netId
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "RotatePointAroundOrigin"
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.sin
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2.x
  L5_2 = L5_2 * L3_2
  L6_2 = A0_2.y
  L6_2 = L6_2 * L4_2
  L5_2 = L5_2 - L6_2
  L6_2 = A0_2.x
  L6_2 = L6_2 * L4_2
  L7_2 = A0_2.y
  L7_2 = L7_2 * L3_2
  L6_2 = L6_2 + L7_2
  L7_2 = vector3
  L8_2 = L5_2
  L9_2 = L6_2
  L10_2 = A0_2.z
  return L7_2(L8_2, L9_2, L10_2)
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "DegreesToRadians"
function L61_1(A0_2)
  local L1_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = L1_2 / 180
  L1_2 = A0_2 * L1_2
  return L1_2
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "RotatePointAroundOrigin3D"
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = A1_2 - A0_2
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = DegreesToRadians
  L6_2 = A2_2.x
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = DegreesToRadians
  L7_2 = A2_2.x
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L6_2(L7_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = DegreesToRadians
  L8_2 = A2_2.y
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = DegreesToRadians
  L9_2 = A2_2.y
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = DegreesToRadians
  L10_2 = A2_2.z
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2 = math
  L9_2 = L9_2.sin
  L10_2 = DegreesToRadians
  L11_2 = A2_2.z
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = L3_2.x
  L11_2 = L6_2 * L8_2
  L10_2 = L10_2 * L11_2
  L11_2 = L3_2.y
  L12_2 = L8_2 * L5_2
  L12_2 = L12_2 * L7_2
  L13_2 = L4_2 * L9_2
  L12_2 = L12_2 - L13_2
  L11_2 = L11_2 * L12_2
  L10_2 = L10_2 + L11_2
  L11_2 = L3_2.z
  L12_2 = L5_2 * L9_2
  L13_2 = L4_2 * L8_2
  L13_2 = L13_2 * L7_2
  L12_2 = L12_2 + L13_2
  L11_2 = L11_2 * L12_2
  L10_2 = L10_2 + L11_2
  L11_2 = L3_2.x
  L12_2 = L6_2 * L9_2
  L11_2 = L11_2 * L12_2
  L12_2 = L3_2.y
  L13_2 = L4_2 * L8_2
  L14_2 = L5_2 * L7_2
  L14_2 = L14_2 * L9_2
  L13_2 = L13_2 + L14_2
  L12_2 = L12_2 * L13_2
  L11_2 = L11_2 + L12_2
  L12_2 = L3_2.z
  L13_2 = L4_2 * L7_2
  L13_2 = L13_2 * L9_2
  L14_2 = L8_2 * L5_2
  L13_2 = L13_2 - L14_2
  L12_2 = L12_2 * L13_2
  L11_2 = L11_2 + L12_2
  L12_2 = L3_2.x
  L13_2 = -L7_2
  L12_2 = L12_2 * L13_2
  L13_2 = L3_2.y
  L14_2 = L6_2 * L5_2
  L13_2 = L13_2 * L14_2
  L12_2 = L12_2 + L13_2
  L13_2 = L3_2.z
  L14_2 = L4_2 * L6_2
  L13_2 = L13_2 * L14_2
  L12_2 = L12_2 + L13_2
  L13_2 = vector3
  L14_2 = L10_2
  L15_2 = L11_2
  L16_2 = L12_2
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L13_2 = L13_2 + A0_2
  return L13_2
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "Draw3DBox"
function L61_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2)
  local L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2
  L11_2 = vector3
  L12_2 = A0_2
  L13_2 = A1_2
  L14_2 = A2_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = A3_2 / 2
  L13_2 = A4_2 / 2
  L14_2 = A5_2 / 2
  L15_2 = RotatePointAroundOrigin3D
  L16_2 = L11_2
  L17_2 = vector3
  L18_2 = A0_2 - L12_2
  L19_2 = A1_2 - L13_2
  L20_2 = A2_2 - L14_2
  L17_2 = L17_2(L18_2, L19_2, L20_2)
  L18_2 = A10_2
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L16_2 = RotatePointAroundOrigin3D
  L17_2 = L11_2
  L18_2 = vector3
  L19_2 = A0_2 + L12_2
  L20_2 = A1_2 - L13_2
  L21_2 = A2_2 - L14_2
  L18_2 = L18_2(L19_2, L20_2, L21_2)
  L19_2 = A10_2
  L16_2 = L16_2(L17_2, L18_2, L19_2)
  L17_2 = RotatePointAroundOrigin3D
  L18_2 = L11_2
  L19_2 = vector3
  L20_2 = A0_2 - L12_2
  L21_2 = A1_2 + L13_2
  L22_2 = A2_2 - L14_2
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L20_2 = A10_2
  L17_2 = L17_2(L18_2, L19_2, L20_2)
  L18_2 = RotatePointAroundOrigin3D
  L19_2 = L11_2
  L20_2 = vector3
  L21_2 = A0_2 + L12_2
  L22_2 = A1_2 + L13_2
  L23_2 = A2_2 - L14_2
  L20_2 = L20_2(L21_2, L22_2, L23_2)
  L21_2 = A10_2
  L18_2 = L18_2(L19_2, L20_2, L21_2)
  L19_2 = RotatePointAroundOrigin3D
  L20_2 = L11_2
  L21_2 = vector3
  L22_2 = A0_2 - L12_2
  L23_2 = A1_2 - L13_2
  L24_2 = A2_2 + L14_2
  L21_2 = L21_2(L22_2, L23_2, L24_2)
  L22_2 = A10_2
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L20_2 = RotatePointAroundOrigin3D
  L21_2 = L11_2
  L22_2 = vector3
  L23_2 = A0_2 + L12_2
  L24_2 = A1_2 - L13_2
  L25_2 = A2_2 + L14_2
  L22_2 = L22_2(L23_2, L24_2, L25_2)
  L23_2 = A10_2
  L20_2 = L20_2(L21_2, L22_2, L23_2)
  L21_2 = RotatePointAroundOrigin3D
  L22_2 = L11_2
  L23_2 = vector3
  L24_2 = A0_2 - L12_2
  L25_2 = A1_2 + L13_2
  L26_2 = A2_2 + L14_2
  L23_2 = L23_2(L24_2, L25_2, L26_2)
  L24_2 = A10_2
  L21_2 = L21_2(L22_2, L23_2, L24_2)
  L22_2 = RotatePointAroundOrigin3D
  L23_2 = L11_2
  L24_2 = vector3
  L25_2 = A0_2 + L12_2
  L26_2 = A1_2 + L13_2
  L27_2 = A2_2 + L14_2
  L24_2 = L24_2(L25_2, L26_2, L27_2)
  L25_2 = A10_2
  L22_2 = L22_2(L23_2, L24_2, L25_2)
  L23_2 = DrawPoly
  L24_2 = L15_2.x
  L25_2 = L15_2.y
  L26_2 = L15_2.z
  L27_2 = L16_2.x
  L28_2 = L16_2.y
  L29_2 = L16_2.z
  L30_2 = L19_2.x
  L31_2 = L19_2.y
  L32_2 = L19_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L16_2.x
  L25_2 = L16_2.y
  L26_2 = L16_2.z
  L27_2 = L20_2.x
  L28_2 = L20_2.y
  L29_2 = L20_2.z
  L30_2 = L19_2.x
  L31_2 = L19_2.y
  L32_2 = L19_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L16_2.x
  L25_2 = L16_2.y
  L26_2 = L16_2.z
  L27_2 = L15_2.x
  L28_2 = L15_2.y
  L29_2 = L15_2.z
  L30_2 = L20_2.x
  L31_2 = L20_2.y
  L32_2 = L20_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L15_2.x
  L25_2 = L15_2.y
  L26_2 = L15_2.z
  L27_2 = L19_2.x
  L28_2 = L19_2.y
  L29_2 = L19_2.z
  L30_2 = L20_2.x
  L31_2 = L20_2.y
  L32_2 = L20_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L17_2.x
  L25_2 = L17_2.y
  L26_2 = L17_2.z
  L27_2 = L18_2.x
  L28_2 = L18_2.y
  L29_2 = L18_2.z
  L30_2 = L21_2.x
  L31_2 = L21_2.y
  L32_2 = L21_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L18_2.x
  L25_2 = L18_2.y
  L26_2 = L18_2.z
  L27_2 = L22_2.x
  L28_2 = L22_2.y
  L29_2 = L22_2.z
  L30_2 = L21_2.x
  L31_2 = L21_2.y
  L32_2 = L21_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L18_2.x
  L25_2 = L18_2.y
  L26_2 = L18_2.z
  L27_2 = L17_2.x
  L28_2 = L17_2.y
  L29_2 = L17_2.z
  L30_2 = L22_2.x
  L31_2 = L22_2.y
  L32_2 = L22_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L17_2.x
  L25_2 = L17_2.y
  L26_2 = L17_2.z
  L27_2 = L21_2.x
  L28_2 = L21_2.y
  L29_2 = L21_2.z
  L30_2 = L22_2.x
  L31_2 = L22_2.y
  L32_2 = L22_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L15_2.x
  L25_2 = L15_2.y
  L26_2 = L15_2.z
  L27_2 = L17_2.x
  L28_2 = L17_2.y
  L29_2 = L17_2.z
  L30_2 = L19_2.x
  L31_2 = L19_2.y
  L32_2 = L19_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L17_2.x
  L25_2 = L17_2.y
  L26_2 = L17_2.z
  L27_2 = L21_2.x
  L28_2 = L21_2.y
  L29_2 = L21_2.z
  L30_2 = L19_2.x
  L31_2 = L19_2.y
  L32_2 = L19_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L17_2.x
  L25_2 = L17_2.y
  L26_2 = L17_2.z
  L27_2 = L15_2.x
  L28_2 = L15_2.y
  L29_2 = L15_2.z
  L30_2 = L21_2.x
  L31_2 = L21_2.y
  L32_2 = L21_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L15_2.x
  L25_2 = L15_2.y
  L26_2 = L15_2.z
  L27_2 = L19_2.x
  L28_2 = L19_2.y
  L29_2 = L19_2.z
  L30_2 = L21_2.x
  L31_2 = L21_2.y
  L32_2 = L21_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L16_2.x
  L25_2 = L16_2.y
  L26_2 = L16_2.z
  L27_2 = L18_2.x
  L28_2 = L18_2.y
  L29_2 = L18_2.z
  L30_2 = L20_2.x
  L31_2 = L20_2.y
  L32_2 = L20_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L18_2.x
  L25_2 = L18_2.y
  L26_2 = L18_2.z
  L27_2 = L22_2.x
  L28_2 = L22_2.y
  L29_2 = L22_2.z
  L30_2 = L20_2.x
  L31_2 = L20_2.y
  L32_2 = L20_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L18_2.x
  L25_2 = L18_2.y
  L26_2 = L18_2.z
  L27_2 = L16_2.x
  L28_2 = L16_2.y
  L29_2 = L16_2.z
  L30_2 = L22_2.x
  L31_2 = L22_2.y
  L32_2 = L22_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L16_2.x
  L25_2 = L16_2.y
  L26_2 = L16_2.z
  L27_2 = L20_2.x
  L28_2 = L20_2.y
  L29_2 = L20_2.z
  L30_2 = L22_2.x
  L31_2 = L22_2.y
  L32_2 = L22_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L19_2.x
  L25_2 = L19_2.y
  L26_2 = L19_2.z
  L27_2 = L20_2.x
  L28_2 = L20_2.y
  L29_2 = L20_2.z
  L30_2 = L21_2.x
  L31_2 = L21_2.y
  L32_2 = L21_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L20_2.x
  L25_2 = L20_2.y
  L26_2 = L20_2.z
  L27_2 = L22_2.x
  L28_2 = L22_2.y
  L29_2 = L22_2.z
  L30_2 = L21_2.x
  L31_2 = L21_2.y
  L32_2 = L21_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L22_2.x
  L25_2 = L22_2.y
  L26_2 = L22_2.z
  L27_2 = L20_2.x
  L28_2 = L20_2.y
  L29_2 = L20_2.z
  L30_2 = L21_2.x
  L31_2 = L21_2.y
  L32_2 = L21_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L20_2.x
  L25_2 = L20_2.y
  L26_2 = L20_2.z
  L27_2 = L19_2.x
  L28_2 = L19_2.y
  L29_2 = L19_2.z
  L30_2 = L21_2.x
  L31_2 = L21_2.y
  L32_2 = L21_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L15_2.x
  L25_2 = L15_2.y
  L26_2 = L15_2.z
  L27_2 = L16_2.x
  L28_2 = L16_2.y
  L29_2 = L16_2.z
  L30_2 = L17_2.x
  L31_2 = L17_2.y
  L32_2 = L17_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L16_2.x
  L25_2 = L16_2.y
  L26_2 = L16_2.z
  L27_2 = L18_2.x
  L28_2 = L18_2.y
  L29_2 = L18_2.z
  L30_2 = L17_2.x
  L31_2 = L17_2.y
  L32_2 = L17_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L16_2.x
  L25_2 = L16_2.y
  L26_2 = L16_2.z
  L27_2 = L15_2.x
  L28_2 = L15_2.y
  L29_2 = L15_2.z
  L30_2 = L18_2.x
  L31_2 = L18_2.y
  L32_2 = L18_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L23_2 = DrawPoly
  L24_2 = L15_2.x
  L25_2 = L15_2.y
  L26_2 = L15_2.z
  L27_2 = L17_2.x
  L28_2 = L17_2.y
  L29_2 = L17_2.z
  L30_2 = L18_2.x
  L31_2 = L18_2.y
  L32_2 = L18_2.z
  L33_2 = A6_2
  L34_2 = A7_2
  L35_2 = A8_2
  L36_2 = A9_2
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "IsThereSomebodyClose"
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = GetActivePlayers
  L0_2 = L0_2()
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = 3
  L4_2 = ipairs
  L5_2 = L0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = GetPlayerPed
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L1_2 ~= L10_2 then
      L11_2 = GetEntityCoords
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L12_2 = L2_2 - L11_2
      L12_2 = #L12_2
      if L3_2 >= L12_2 then
        L13_2 = true
        return L13_2
      end
    end
  end
  L4_2 = false
  return L4_2
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "ChainsawAnimation"
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = IsThereSomebodyClose
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = Notify
    L4_2 = Config
    L4_2 = L4_2.Lang
    L4_2 = L4_2.exploitFix
    L3_2(L4_2)
    L3_2 = false
    return L3_2
  end
  L3_2 = GetEntityCoords
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2 - L3_2
  L5_2 = vector3
  L6_2 = L4_2.x
  L7_2 = L4_2.y
  L8_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L5_2 = #L4_2
  L5_2 = L4_2 / L5_2
  L6_2 = 0.7
  L7_2 = L5_2 * L6_2
  L8_2 = L2_2 - L7_2
  L9_2 = GetEntityCoords
  L10_2 = L1_2
  L9_2 = L9_2(L10_2)
  L10_2 = L2_2.x
  L11_2 = L9_2.x
  L10_2 = L10_2 - L11_2
  L11_2 = L2_2.y
  L12_2 = L9_2.y
  L11_2 = L11_2 - L12_2
  L12_2 = GetHeadingFromVector_2d
  L13_2 = L10_2
  L14_2 = L11_2
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = SetEntityCoords
  L14_2 = L1_2
  L15_2 = L8_2.x
  L16_2 = L8_2.y
  L17_2 = L8_2.z
  L17_2 = L17_2 + 1.2
  L18_2 = true
  L19_2 = false
  L20_2 = false
  L21_2 = false
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L13_2 = SetEntityHeading
  L14_2 = L1_2
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  L13_2 = ClearPedTasks
  L14_2 = L1_2
  L13_2(L14_2)
  L13_2 = "weapons@heavy@minigun"
  L14_2 = "fire_med"
  L15_2 = RequestAnimDict
  L16_2 = L13_2
  L15_2(L16_2)
  while true do
    L15_2 = HasAnimDictLoaded
    L16_2 = L13_2
    L15_2 = L15_2(L16_2)
    if L15_2 then
      break
    end
    L15_2 = Wait
    L16_2 = 0
    L15_2(L16_2)
  end
  L15_2 = TaskPlayAnim
  L16_2 = L1_2
  L17_2 = L13_2
  L18_2 = L14_2
  L19_2 = 8.0
  L20_2 = -8.0
  L21_2 = -1
  L22_2 = 50
  L23_2 = 0
  L24_2 = false
  L25_2 = false
  L26_2 = false
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L15_2 = TriggerServerEvent
  L16_2 = "17mov_Lumberjack:PlaySound"
  L17_2 = "chainsaw.mp3"
  L18_2 = GetEntityCoords
  L19_2 = PlayerPedId
  L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2 = L19_2()
  L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
  L15_2 = CreateObject
  L16_2 = -1314067793
  L17_2 = 0
  L18_2 = 0
  L19_2 = 0
  L20_2 = true
  L21_2 = true
  L22_2 = true
  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L16_2 = GetPedBoneIndex
  L17_2 = L1_2
  L18_2 = 57005
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = vector3
  L18_2 = 0.3
  L19_2 = 0.18
  L20_2 = -0.1
  L17_2 = L17_2(L18_2, L19_2, L20_2)
  L18_2 = vector3
  L19_2 = -52.0
  L20_2 = 20.0
  L21_2 = 65.0
  L18_2 = L18_2(L19_2, L20_2, L21_2)
  L19_2 = AttachEntityToEntity
  L20_2 = L15_2
  L21_2 = L1_2
  L22_2 = L16_2
  L23_2 = L17_2.x
  L24_2 = L17_2.y
  L25_2 = L17_2.z
  L26_2 = L18_2.x
  L27_2 = L18_2.y
  L28_2 = L18_2.z
  L29_2 = true
  L30_2 = true
  L31_2 = false
  L32_2 = true
  L33_2 = 2
  L34_2 = true
  L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
  L19_2 = true
  L20_2 = CreateThread
  function L21_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    while true do
      L0_3 = L19_2
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 100
      L0_3(L1_3)
      L0_3 = GetOffsetFromEntityInWorldCoords
      L1_3 = L1_2
      L2_3 = 0.235
      L3_3 = 0.45
      L4_3 = 0.0
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      L1_3 = UseParticleFxAssetNextCall
      L2_3 = "core"
      L1_3(L2_3)
      L1_3 = StartNetworkedParticleFxNonLoopedAtCoord
      L2_3 = "ent_dst_wood_splinter"
      L3_3 = L0_3.x
      L4_3 = L0_3.y
      L5_3 = L0_3.z
      L6_3 = 0.0
      L7_3 = 0.0
      L8_3 = GetEntityHeading
      L9_3 = L1_2
      L8_3 = L8_3(L9_3)
      L8_3 = L8_3 - 180.0
      L9_3 = 0.4
      L10_3 = false
      L11_3 = false
      L12_3 = false
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    end
  end
  L20_2(L21_2)
  L20_2 = CreateThread
  function L21_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = L19_2
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableMotion
      L0_3()
    end
    L0_3 = EnableControlAction
    L1_3 = 0
    L2_3 = 32
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = EnableControlAction
    L1_3 = 0
    L2_3 = 33
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = EnableControlAction
    L1_3 = 0
    L2_3 = 34
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = EnableControlAction
    L1_3 = 0
    L2_3 = 35
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = EnableControlAction
    L1_3 = 0
    L2_3 = 30
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = EnableControlAction
    L1_3 = 0
    L2_3 = 31
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = EnableControlAction
    L1_3 = 0
    L2_3 = 22
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = EnableControlAction
    L1_3 = 0
    L2_3 = 59
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = EnableControlAction
    L1_3 = 0
    L2_3 = 60
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = EnableControlAction
    L1_3 = 0
    L2_3 = 61
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = EnableControlAction
    L1_3 = 0
    L2_3 = 62
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = EnableControlAction
    L1_3 = 0
    L2_3 = 63
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = EnableControlAction
    L1_3 = 0
    L2_3 = 64
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L20_2(L21_2)
  L20_2 = true
  L21_2 = ChainsawMinigame
  if nil == L21_2 then
    L21_2 = Wait
    L22_2 = 13000
    L21_2(L22_2)
  else
    L21_2 = ChainsawMinigame
    L21_2 = L21_2()
    L20_2 = L21_2
  end
  L19_2 = false
  L21_2 = FreezeEntityPosition
  L22_2 = PlayerPedId
  L22_2 = L22_2()
  L23_2 = false
  L21_2(L22_2, L23_2)
  L21_2 = ClearPedTasks
  L22_2 = L1_2
  L21_2(L22_2)
  L21_2 = RemoveAnimDict
  L22_2 = L13_2
  L21_2(L22_2)
  L21_2 = DeleteObject
  L22_2 = L15_2
  L21_2(L22_2)
  return L20_2
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "DisableMotion"
function L61_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 32
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 33
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 34
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 35
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 30
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 31
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 22
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 59
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 60
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 61
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 62
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 63
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 64
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = FreezeEntityPosition
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "GetGroundHeightRaycast"
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = StartShapeTestRay
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = 1000.0
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = -1000.0
  L9_2 = -1
  L10_2 = PlayerPedId
  L10_2 = L10_2()
  L11_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = GetShapeTestResult
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  if L4_2 then
    L6_2 = L5_2.z
    return L6_2
  else
    L6_2 = GetGroundZFor_3dCoord
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = 0.0
    L10_2 = false
    L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    return L7_2
  end
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "CalculateSlopeAngle"
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A1_2 * A2_2
  L3_2 = A0_2 + L3_2
  L4_2 = GetEntityCoords
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = L4_2.z
  L4_2 = L4_2 - 1.0
  L5_2 = GetGroundHeightRaycast
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = math
  L6_2 = L6_2.abs
  L7_2 = L5_2 - L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2.x
  L8_2 = A0_2.x
  L7_2 = L7_2 - L8_2
  L8_2 = L3_2.y
  L9_2 = A0_2.y
  L8_2 = L8_2 - L9_2
  L9_2 = math
  L9_2 = L9_2.sqrt
  L10_2 = L7_2 * L7_2
  L11_2 = L8_2 * L8_2
  L10_2 = L10_2 + L11_2
  L9_2 = L9_2(L10_2)
  L10_2 = math
  L10_2 = L10_2.deg
  L11_2 = math
  L11_2 = L11_2.atan
  L12_2 = L6_2 / L9_2
  L11_2, L12_2 = L11_2(L12_2)
  L10_2 = L10_2(L11_2, L12_2)
  if L4_2 > L5_2 then
    L10_2 = -L10_2
  end
  return L10_2
end
L59_1[L60_1] = L61_1
L59_1 = RegisterNetEvent
L60_1 = "17mov_lumberjack:StartFallAnim"
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L22_1
  if L2_2 == A0_2 then
    L2_2 = 0
    L22_1 = L2_2
    return
  end
  L2_2 = StartFallAnim
  L3_2 = L2_1
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.obj
  L4_2 = true
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L59_1(L60_1, L61_1)
L59_1 = RegisterNetEvent
L60_1 = "17mov_Lumberjack:updateCounter"
function L61_1()
  local L0_2, L1_2
  L0_2 = CurrentLogCounter
  L0_2 = L0_2 + 3
  CurrentLogCounter = L0_2
end
L59_1(L60_1, L61_1)
L59_1 = _ENV
L60_1 = "StartFallAnim"
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  if not A1_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "17mov_Lumberjack:PlaySound"
    L5_2 = "treefall.mp3"
    L6_2 = GetEntityCoords
    L7_2 = A0_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  else
    L3_2 = GetEntityCoords
    L4_2 = PlayerPedId
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
    L4_2 = GetEntityCoords
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 - L4_2
    L3_2 = #L3_2
    if L3_2 > 100 then
      L3_2 = DeleteObject
      L4_2 = A0_2
      L3_2(L4_2)
      return
    end
  end
  L3_2 = math
  L3_2 = L3_2.rad
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = vector3
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L5_2 = -L5_2
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = 0.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = Config
  L5_2 = L5_2.Props
  L5_2 = L5_2.logs
  L5_2 = L5_2.hash
  L6_2 = 4800
  L7_2 = GetEntityCoords
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = CalculateSlopeAngle
  L9_2 = L7_2
  L10_2 = L4_2
  L11_2 = 10.0
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = -90 + L8_2
  L10_2 = GetGameTimer
  L10_2 = L10_2()
  while true do
    L11_2 = math
    L11_2 = L11_2.min
    L12_2 = 1.0
    L13_2 = GetGameTimer
    L13_2 = L13_2()
    L13_2 = L13_2 - L10_2
    L13_2 = L13_2 / L6_2
    L11_2 = L11_2(L12_2, L13_2)
    if L11_2 >= 1.0 then
      L12_2 = 250
      L13_2 = GetGameTimer
      L13_2 = L13_2()
      L14_2 = true
      L15_2 = RequestNamedPtfxAsset
      L16_2 = "scr_reconstructionaccident"
      L15_2(L16_2)
      while true do
        L15_2 = HasNamedPtfxAssetLoaded
        L16_2 = "scr_reconstructionaccident"
        L15_2 = L15_2(L16_2)
        if L15_2 then
          break
        end
        L15_2 = Wait
        L16_2 = 0
        L15_2(L16_2)
        L15_2 = GetGameTimer
        L15_2 = L15_2()
        L15_2 = L15_2 - L13_2
        if L12_2 < L15_2 then
          L14_2 = false
          break
        end
      end
      if L14_2 then
        L15_2 = UseParticleFxAssetNextCall
        L16_2 = "scr_reconstructionaccident"
        L15_2(L16_2)
        L15_2 = _ENV
        L16_2 = "StartNetworkedParticleFxNonLoopedOnEntity"
        L15_2 = L15_2[L16_2]
        L16_2 = "scr_reconstruct_pipe_impact"
        L17_2 = A0_2
        L18_2 = 0.0
        L19_2 = -7.5
        L20_2 = 0.0
        L21_2 = -90.0
        L22_2 = 90.0
        L23_2 = 0.0
        L24_2 = 3.0
        L25_2 = false
        L26_2 = false
        L27_2 = false
        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      end
      L15_2 = Wait
      L16_2 = 350
      L15_2(L16_2)
      L15_2 = DeleteObject
      L16_2 = A0_2
      L15_2(L16_2)
      break
    end
    L12_2 = L11_2 * L11_2
    L11_2 = L12_2 * L11_2
    L12_2 = 0.0
    L13_2 = 0.5
    if L11_2 > L13_2 then
      L12_2 = L12_2 + 0.02
    end
    L13_2 = GetEntityCoords
    L14_2 = A0_2
    L13_2 = L13_2(L14_2)
    L14_2 = vector3
    L15_2 = L9_2 * L11_2
    L16_2 = 0.0
    L17_2 = A2_2
    L14_2 = L14_2(L15_2, L16_2, L17_2)
    L15_2 = SetEntityCoords
    L16_2 = A0_2
    L17_2 = L13_2.x
    L18_2 = L13_2.y
    L19_2 = L13_2.z
    L19_2 = L19_2 + L12_2
    L20_2 = false
    L21_2 = false
    L22_2 = false
    L23_2 = false
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L15_2 = SetEntityRotation
    L16_2 = A0_2
    L17_2 = L14_2.x
    L18_2 = L14_2.y
    L19_2 = L14_2.z
    L20_2 = 2
    L21_2 = true
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L15_2 = Wait
    L16_2 = 0
    L15_2(L16_2)
  end
  if A1_2 then
    return
  end
  L11_2 = {}
  L12_2 = 1
  L13_2 = 3
  L14_2 = 1
  for L15_2 = L12_2, L13_2, L14_2 do
    L16_2 = table
    L16_2 = L16_2.insert
    L17_2 = L11_2
    L18_2 = {}
    L18_2.hash = L5_2
    L19_2 = vector3
    L20_2 = L7_2.x
    L21_2 = L4_2.x
    L21_2 = L21_2 * L15_2
    L22_2 = Config
    L22_2 = L22_2.Props
    L22_2 = L22_2.logs
    L22_2 = L22_2.height
    L21_2 = L21_2 * L22_2
    L20_2 = L20_2 + L21_2
    L21_2 = L7_2.y
    L22_2 = L4_2.y
    L22_2 = L22_2 * L15_2
    L23_2 = Config
    L23_2 = L23_2.Props
    L23_2 = L23_2.logs
    L23_2 = L23_2.height
    L22_2 = L22_2 * L23_2
    L21_2 = L21_2 + L22_2
    L22_2 = GetGroundHeightRaycast
    L23_2 = L7_2.x
    L24_2 = L4_2.x
    L24_2 = L24_2 * L15_2
    L25_2 = Config
    L25_2 = L25_2.Props
    L25_2 = L25_2.logs
    L25_2 = L25_2.height
    L24_2 = L24_2 * L25_2
    L23_2 = L23_2 + L24_2
    L24_2 = L7_2.y
    L25_2 = L4_2.y
    L25_2 = L25_2 * L15_2
    L26_2 = Config
    L26_2 = L26_2.Props
    L26_2 = L26_2.logs
    L26_2 = L26_2.height
    L25_2 = L25_2 * L26_2
    L24_2 = L24_2 + L25_2
    L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L22_2(L23_2, L24_2)
    L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
    L18_2.coords = L19_2
    L18_2.heading = A2_2
    L16_2(L17_2, L18_2)
  end
  L12_2 = pairs
  L13_2 = L11_2
  L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
  for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
    L18_2 = CreateObject
    L19_2 = L17_2.hash
    L20_2 = L17_2.coords
    L20_2 = L20_2.x
    L21_2 = L17_2.coords
    L21_2 = L21_2.y
    L22_2 = L17_2.coords
    L22_2 = L22_2.z
    L23_2 = true
    L24_2 = true
    L25_2 = true
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L19_2 = SetEntityHeading
    L20_2 = L18_2
    L21_2 = L17_2.heading
    L19_2(L20_2, L21_2)
    L19_2 = PlaceObjectOnGroundProperly
    L20_2 = L18_2
    L19_2(L20_2)
    L19_2 = GetGameTimer
    L19_2 = L19_2()
    L20_2 = ObjToNet
    L21_2 = L18_2
    L20_2 = L20_2(L21_2)
    while L20_2 == L18_2 or 0 == L20_2 do
      L21_2 = Wait
      L22_2 = 100
      L21_2(L22_2)
      L21_2 = ObjToNet
      L22_2 = L18_2
      L21_2 = L21_2(L22_2)
      L20_2 = L21_2
      L21_2 = GetGameTimer
      L21_2 = L21_2()
      L21_2 = L21_2 - L19_2
      L22_2 = 1500
      if L21_2 > L22_2 then
        L21_2 = print
        L22_2 = "CANNOT SPAWN NET ID - SETTING LOG AS LOCAL TO PREVENT JOB STOP"
        L21_2(L22_2)
        break
      end
    end
  end
  L12_2 = L7_1
  if not L12_2 then
    L12_2 = true
    L7_1 = L12_2
    L12_2 = ShowTutorial
    L13_2 = Config
    L13_2 = L13_2.EnableVehicleLegacyMode
    if L13_2 then
      L13_2 = Config
      L13_2 = L13_2.Lang
      L13_2 = L13_2.AfterTreeFallTutorialLegacy
      if L13_2 then
        goto lbl_310
      end
    end
    L13_2 = Config
    L13_2 = L13_2.Lang
    L13_2 = L13_2.AfterTreeFallTutorial
    ::lbl_310::
    L12_2(L13_2)
  end
end
L59_1[L60_1] = L61_1
L59_1 = _ENV
L60_1 = "AddBlip"
function L61_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = AddBlipForCoord
  L6_2 = A2_2.x
  L7_2 = A2_2.y
  L8_2 = A2_2.z
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if nil ~= A1_2 then
    L6_2 = SetBlipSprite
    L7_2 = L5_2
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = SetBlipDisplay
  L7_2 = L5_2
  L8_2 = 4
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipScale
  L7_2 = L5_2
  L8_2 = A4_2
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipColour
  L7_2 = L5_2
  L8_2 = A3_2
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipAsShortRange
  L7_2 = L5_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = BeginTextCommandSetBlipName
  L7_2 = "STRING"
  L6_2(L7_2)
  L6_2 = AddTextComponentString
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = EndTextCommandSetBlipName
  L7_2 = L5_2
  L6_2(L7_2)
  return L5_2
end
L59_1[L60_1] = L61_1
L59_1 = RegisterNetEvent
L60_1 = "17mov_Lumberjack:ClearThisFlatbed"
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L17_1
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = L17_1
  L2_2 = L2_2[A0_2]
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DeleteEntity
    L8_2 = L6_2.obj
    L7_2(L8_2)
    L7_2 = L17_1
    L7_2 = L7_2[A0_2]
    L7_2[L5_2] = nil
  end
  L1_2 = L17_1
  L1_2[A0_2] = nil
end
L59_1(L60_1, L61_1)
L59_1 = _ENV
L60_1 = "EndJob"
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetEntityModel
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetHashKey
  L4_2 = Config
  L4_2 = L4_2.LegacyJobVehicleModel
  L3_2 = L3_2(L4_2)
  if L2_2 ~= L3_2 then
    L2_2 = GetEntityModel
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = GetHashKey
    L4_2 = Config
    L4_2 = L4_2.JobTruckModel
    L3_2 = L3_2(L4_2)
    if L2_2 ~= L3_2 then
      L2_2 = GetEntityModel
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = GetHashKey
      L4_2 = Config
      L4_2 = L4_2.PickupModel
      L3_2 = L3_2(L4_2)
      if L2_2 ~= L3_2 then
        L2_2 = GetEntityModel
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        L3_2 = GetHashKey
        L4_2 = Config
        L4_2 = L4_2.JobVehicleModel
        L3_2 = L3_2(L4_2)
        if L2_2 ~= L3_2 then
          goto lbl_63
        end
      end
    end
  end
  L2_2 = GetPedInVehicleSeat
  L3_2 = L1_2
  L4_2 = -1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= L0_2 then
    L2_2 = Notify
    L3_2 = Config
    L3_2 = L3_2.Lang
    L3_2 = L3_2.notADriver
    return L2_2(L3_2)
  end
  L2_2 = DeleteVehicleByCore
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "17mov_lumberjack:endJob_sv"
  L4_2 = true
  do return L2_2(L3_2, L4_2) end
  ::lbl_63::
  L2_2 = SetNuiFocus
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "openWarning"
  L2_2(L3_2)
end
L59_1[L60_1] = L61_1
L59_1 = RegisterNetEvent
L60_1 = "17mov_lumberjack:endJob_cl"
L59_1(L60_1)
L59_1 = AddEventHandler
L60_1 = "17mov_lumberjack:endJob_cl"
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = RemoveKeys
  if nil ~= L0_2 then
    L0_2 = RemoveKeys
    L0_2()
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Config
  L2_2 = L2_2.Locations
  L2_2 = L2_2.DutyToggle
  L2_2 = L2_2.Coords
  L2_2 = L2_2[1]
  L1_2 = L1_2 - L2_2
  L1_2 = #L1_2
  if L1_2 < 40.0 then
    L1_2 = Config
    L1_2 = L1_2.EnableVehicleTeleporting
    if L1_2 then
      L1_2 = DoScreenFadeOut
      L2_2 = 250
      L1_2(L2_2)
      L1_2 = Wait
      L2_2 = 1000
      L1_2(L2_2)
      L1_2 = SetEntityCoords
      L2_2 = L0_2
      L3_2 = Config
      L3_2 = L3_2.Locations
      L3_2 = L3_2.DutyToggle
      L3_2 = L3_2.Coords
      L3_2 = L3_2[1]
      L3_2 = L3_2.x
      L4_2 = Config
      L4_2 = L4_2.Locations
      L4_2 = L4_2.DutyToggle
      L4_2 = L4_2.Coords
      L4_2 = L4_2[1]
      L4_2 = L4_2.y
      L5_2 = Config
      L5_2 = L5_2.Locations
      L5_2 = L5_2.DutyToggle
      L5_2 = L5_2.Coords
      L5_2 = L5_2[1]
      L5_2 = L5_2.z
      L6_2 = true
      L7_2 = false
      L8_2 = false
      L9_2 = false
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    end
  end
  L1_2 = 1
  L2_2 = L38_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L38_1
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.obj
    if nil ~= L5_2 then
      L5_2 = DeleteEntity
      L6_2 = L38_1
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.obj
      L5_2(L6_2)
    end
  end
  L1_2 = L26_1
  if L1_2 then
    L1_2 = DeleteEntity
    L2_2 = L26_1
    L1_2(L2_2)
  end
  L1_2 = L27_1
  if L1_2 then
    L1_2 = DeleteEntity
    L2_2 = L27_1
    L1_2(L2_2)
  end
  L1_2 = DeleteEntity
  L2_2 = L28_1
  L1_2(L2_2)
  L1_2 = DeleteEntity
  L2_2 = L13_1
  L1_2(L2_2)
  L1_2 = DeleteEntity
  L2_2 = L14_1
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = L30_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L30_1
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.obj
    if nil ~= L5_2 then
      L5_2 = DeleteEntity
      L6_2 = L30_1
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.obj
      L5_2(L6_2)
    end
  end
  L1_2 = 1
  L2_2 = L39_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L39_1
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.obj
    if nil ~= L5_2 then
      L5_2 = DeleteEntity
      L6_2 = L39_1
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.obj
      L5_2(L6_2)
    end
    L5_2 = L39_1
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.chipsObj
    if nil ~= L5_2 then
      L5_2 = DeleteEntity
      L6_2 = L39_1
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.chipsObj
      L5_2(L6_2)
    end
  end
  L1_2 = Config
  L1_2 = L1_2.EnableVehicleLegacyMode
  if L1_2 then
    L1_2 = RemoveBlip
    L2_2 = Config
    L2_2 = L2_2.Locations
    L2_2 = L2_2.WithdrawTruck
    L2_2 = L2_2.blip
    L1_2(L2_2)
    L1_2 = RemoveBlip
    L2_2 = Config
    L2_2 = L2_2.Locations
    L2_2 = L2_2.rentForklift
    L2_2 = L2_2.blip
    L1_2(L2_2)
  end
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.Stations
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = 1
    L8_2 = #L6_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L6_2[L10_2]
      L11_2 = L11_2.blip
      if nil ~= L11_2 then
        L11_2 = RemoveBlip
        L12_2 = L6_2[L10_2]
        L12_2 = L12_2.blip
        L11_2(L12_2)
      end
    end
  end
  L1_2 = pairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.blip
    if nil ~= L7_2 then
      L7_2 = RemoveBlip
      L8_2 = L6_2.blip
      L7_2(L8_2)
    end
  end
  L1_2 = DoScreenFadeIn
  L2_2 = 300
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 1000
  L1_2(L2_2)
  OnDuty = false
  L1_2 = nil
  L15_1 = L1_2
  L1_2 = Config
  L1_2 = L1_2.RequireWorkClothes
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.EnableCloakroom
    if not L1_2 then
      L1_2 = false
      L10_1 = L1_2
      L1_2 = ChangeClothes
      L2_2 = "citizen"
      L1_2(L2_2)
    end
  end
end
L59_1(L60_1, L61_1)
L59_1 = RegisterNUICallback
L60_1 = "acceptWarning"
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "17mov_lumberjack:endJob_sv"
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
L59_1(L60_1, L61_1)
L59_1 = RegisterNetEvent
L60_1 = "onResourceStop"
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = L34_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DeleteEntity
    L8_2 = L6_2
    L7_2(L8_2)
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
    L9_2 = L9_2.Props
    L9_2 = L9_2.logs
    L9_2 = L9_2.hash
    if L8_2 ~= L9_2 then
      L9_2 = Config
      L9_2 = L9_2.Props
      L9_2 = L9_2.tree
      L9_2 = L9_2.hash
      if L8_2 ~= L9_2 then
        goto lbl_41
      end
    end
    L9_2 = DeleteEntity
    L10_2 = L7_2
    L9_2(L10_2)
    ::lbl_41::
  end
end
L59_1(L60_1, L61_1)
L59_1 = RegisterNetEvent
L60_1 = "17mov_Lumberjack:UpdateLogCounter"
function L61_1()
  local L0_2, L1_2
  L0_2 = CurrentLogCounter
  L0_2 = L0_2 - 1
  CurrentLogCounter = L0_2
end
L59_1(L60_1, L61_1)

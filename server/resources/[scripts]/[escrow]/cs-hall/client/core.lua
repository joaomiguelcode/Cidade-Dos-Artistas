local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1, L78_1, L79_1, L80_1, L81_1, L82_1, L83_1, L84_1, L85_1, L86_1, L87_1, L88_1, L89_1, L90_1, L91_1, L92_1
L0_1 = config
if not L0_1 then
  L0_1 = error
  L1_1 = "[criticalscripts.shop] cs-hall configuration file has a syntax error, please resolve it otherwise the resource will not work."
  L0_1(L1_1)
  return
end
L0_1 = "1.1.4"
L1_1 = "cs_scaleform_hall_renderer"
L2_1 = {}
L3_1 = {}
L4_1 = {}
L5_1 = {}
L6_1 = {}
L7_1 = {}
L8_1 = {}
L9_1 = {}
L9_1.ready = false
L9_1.draw = false
L9_1.tick = false
L9_1.failed = false
L9_1.solid = true
L9_1.handle = nil
L9_1.interval = nil
L9_1.first = nil
L9_1.position = nil
L9_1.rotation = nil
L9_1.scale = nil
L10_1 = {}
L10_1.dynamic = false
L11_1 = {}
L11_1.time = 0
L11_1.playing = false
L12_1 = {}
L12_1.bass = 0
L12_1.mid = 0
L12_1.treble = 0
L12_1.lowMid = 0
L12_1.highMid = 0
L13_1 = {}
L14_1 = {}
L14_1.bass = 0
L14_1.mid = 0
L14_1.treble = 0
L14_1.lowMid = 0
L14_1.highMid = 0
L13_1.current = L14_1
L14_1 = {}
L14_1.bass = 0
L14_1.mid = 0
L14_1.treble = 0
L14_1.lowMid = 0
L14_1.highMid = 0
L13_1.previous = L14_1
L13_1.time = 0
L14_1 = {}
L14_1.bass = 0
L14_1.mid = 0
L14_1.treble = 0
L14_1.lowMid = 0
L14_1.highMid = 0
L15_1 = {}
L15_1.bass = 0
L15_1.mid = 0
L15_1.treble = 0
L15_1.lowMid = 0
L15_1.highMid = 0
L16_1 = {}
L17_1 = {}
L18_1 = 0
L19_1 = 0
L20_1 = 0
L17_1[1] = L18_1
L17_1[2] = L19_1
L17_1[3] = L20_1
L16_1.DarkVibrant = L17_1
L17_1 = {}
L18_1 = 0
L19_1 = 0
L20_1 = 0
L17_1[1] = L18_1
L17_1[2] = L19_1
L17_1[3] = L20_1
L16_1.Vibrant = L17_1
L17_1 = {}
L18_1 = 0
L19_1 = 0
L20_1 = 0
L17_1[1] = L18_1
L17_1[2] = L19_1
L17_1[3] = L20_1
L16_1.LightVibrant = L17_1
L17_1 = {}
L18_1 = 0
L19_1 = 0
L20_1 = 0
L17_1[1] = L18_1
L17_1[2] = L19_1
L17_1[3] = L20_1
L16_1.DarkMuted = L17_1
L17_1 = {}
L18_1 = 0
L19_1 = 0
L20_1 = 0
L17_1[1] = L18_1
L17_1[2] = L19_1
L17_1[3] = L20_1
L16_1.LightMuted = L17_1
L17_1 = {}
L18_1 = {}
L18_1.identifier = nil
L18_1.enabled = false
L18_1.active = false
L18_1.playing = false
L18_1.isUpdater = false
L18_1.isController = false
L18_1.screensAdvanced = false
L18_1.time = 0
L18_1.duration = 0
L19_1 = {}
L20_1 = {}
L21_1 = {}
L21_1.cooldownMs = nil
L21_1.colorWithDynamicSpotlights = nil
L20_1.smoke = L21_1
L21_1 = {}
L21_1.cooldownMs = nil
L21_1.colorWithDynamicSpotlights = nil
L20_1.sparklers = L21_1
L19_1.bass = L20_1
L20_1 = {}
L20_1.white = nil
L20_1.dynamic = nil
L20_1.photorythmic = nil
L21_1 = {}
L20_1.states = L21_1
L21_1 = {}
L20_1.colors = L21_1
L19_1.spotlights = L20_1
L20_1 = {}
L21_1 = {}
L20_1.colors = L21_1
L19_1.smokers = L20_1
L20_1 = {}
L21_1 = {}
L20_1.colors = L21_1
L19_1.sparklers = L20_1
L20_1 = {}
L21_1 = {}
L20_1.volumes = L21_1
L19_1.speakers = L20_1
L19_1.idleWallpaperUrl = nil
L19_1.videoToggle = nil
L18_1.settings = L19_1
L19_1 = {}
L18_1.original = L19_1
L18_1.lastFrequencyLevels = L12_1
L19_1 = nil
L20_1 = nil
L21_1 = nil
L22_1 = nil
L23_1 = nil
L24_1 = nil
L25_1 = nil
L26_1 = nil
L27_1 = nil
L28_1 = nil
L29_1 = 0
L30_1 = 0
L31_1 = 0
L32_1 = 0
L33_1 = 0
L34_1 = 0
L35_1 = 0
L36_1 = false
L37_1 = false
L38_1 = false
L39_1 = false
L40_1 = false
L41_1 = false
L42_1 = false
L43_1 = false
L44_1 = false
L45_1 = false
L46_1 = false
L47_1 = false
L48_1 = false
L49_1 = true
L50_1 = false
L51_1 = false
L52_1 = false
L53_1 = false
L54_1 = false
L55_1 = false
L56_1 = false
L57_1 = false
L58_1 = false
L59_1 = false
L60_1 = false
L61_1 = false
L62_1 = true
L63_1 = 250
L64_1 = 200
L65_1 = 200
L66_1 = 75
L67_1 = 100
L68_1 = 25
L69_1 = 50
L70_1 = 100
L71_1 = 250
L72_1 = 3000
L73_1 = 1000
L74_1 = 1000
L75_1 = 100
L76_1 = 100
L77_1 = 100
L78_1 = 5000
L79_1 = 1500
L80_1 = 3
L81_1 = 1
L82_1 = 1500
L83_1 = 2500
L84_1 = false
L85_1 = false
L86_1 = nil
L87_1 = {}
L88_1 = {}
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = math
  L1_2 = L1_2.rad
  L2_2 = A0_2.z
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = A0_2.x
  L6_2 = -30.0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 30.0
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = vector3
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L5_2 = -L5_2
  L5_2 = L5_2 * L3_2
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 * L3_2
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L2_2
  L7_2, L8_2 = L7_2(L8_2)
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
RotationToDirection = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = Ternary
  L3_2 = A1_2
  L4_2 = {}
  L5_2 = A1_2
  L4_2[1] = L5_2
  L5_2 = config
  L5_2 = L5_2.entries
  L6_2 = L19_1
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.area
  L5_2 = L5_2.polygons
  if L5_2 then
    L5_2 = config
    L5_2 = L5_2.entries
    L6_2 = L19_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.area
    L5_2 = L5_2.polygons
    L5_2 = L5_2.entries
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = false
    L9_2 = A0_2.z
    L10_2 = L7_2.height
    L10_2 = L10_2.min
    if L9_2 >= L10_2 then
      L9_2 = A0_2.z
      L10_2 = L7_2.height
      L10_2 = L10_2.max
      if not (L9_2 < L10_2) then
        L9_2 = #L2_2
        if 1 ~= L9_2 then
          goto lbl_97
        end
        L9_2 = A0_2.z
        L10_2 = L7_2.height
        L10_2 = L10_2.max
        if L9_2 ~= L10_2 then
          goto lbl_97
        end
      end
      L9_2 = L7_2.points
      L9_2 = #L9_2
      L10_2 = 1
      L11_2 = L7_2.points
      L11_2 = #L11_2
      L12_2 = 1
      for L13_2 = L10_2, L11_2, L12_2 do
        L14_2 = L7_2.points
        L14_2 = L14_2[L13_2]
        L14_2 = L14_2.x
        L15_2 = L7_2.points
        L15_2 = L15_2[L13_2]
        L15_2 = L15_2.y
        L16_2 = L7_2.points
        L16_2 = L16_2[L9_2]
        L16_2 = L16_2.x
        L17_2 = L7_2.points
        L17_2 = L17_2[L9_2]
        L17_2 = L17_2.y
        L18_2 = A0_2.y
        L18_2 = L15_2 > L18_2
        L19_2 = A0_2.y
        L19_2 = L17_2 > L19_2
        if L18_2 ~= L19_2 then
          L18_2 = A0_2.x
          L19_2 = L16_2 - L14_2
          L20_2 = A0_2.y
          L20_2 = L20_2 - L15_2
          L19_2 = L19_2 * L20_2
          L20_2 = L17_2 - L15_2
          L19_2 = L19_2 / L20_2
          L19_2 = L19_2 + L14_2
          if L18_2 < L19_2 then
            L8_2 = not L8_2
          end
        end
        L9_2 = L13_2
      end
    end
    ::lbl_97::
    if L8_2 then
      L9_2 = true
      return L9_2
    end
  end
  L3_2 = false
  return L3_2
end
IsPositionInsideArea = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = HasModelLoaded
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  while true do
    L3_2 = HasModelLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = RequestModel
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = L76_1
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    L4_2 = Ternary
    L5_2 = A1_2
    L6_2 = config
    L6_2 = L6_2.timeouts
    L6_2 = L6_2.assetLoadMs
    L7_2 = config
    L7_2 = L7_2.timeouts
    L7_2 = L7_2.syncAssetLoadMs
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L3_2 > L4_2 then
      break
    end
  end
  if A1_2 then
    L3_2 = HasModelLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      if 1036697368 == A0_2 or -824545400 == A0_2 or "cs_prop_hall_spotlight" == A0_2 or "h4_prop_battle_club_screen" == A0_2 then
        L3_2 = error
        L4_2 = "[criticalscripts.shop] cs-hall enabled configuration model \""
        L5_2 = A0_2
        L6_2 = "\" ("
        L7_2 = A1_2
        L8_2 = ") which is included by default in \"cs-stream\" resource could not be loaded, consult the package's store page for further information."
        L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
        L3_2(L4_2)
      else
        L3_2 = error
        L4_2 = "[criticalscripts.shop] cs-hall enabled configuration model \""
        L5_2 = A0_2
        L6_2 = "\" ("
        L7_2 = A1_2
        L8_2 = ") could not be loaded."
        L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
        L3_2(L4_2)
      end
    end
  end
end
RequestAssetModel = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = HasNamedPtfxAssetLoaded
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  while true do
    L3_2 = HasNamedPtfxAssetLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = RequestNamedPtfxAsset
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = L76_1
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    L4_2 = Ternary
    L5_2 = A1_2
    L6_2 = config
    L6_2 = L6_2.timeouts
    L6_2 = L6_2.assetLoadMs
    L7_2 = config
    L7_2 = L7_2.timeouts
    L7_2 = L7_2.syncAssetLoadMs
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L3_2 > L4_2 then
      break
    end
  end
  if A1_2 then
    L3_2 = HasNamedPtfxAssetLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      if "scr_ba_club" == A0_2 or "scr_ih_club" == A0_2 then
        L3_2 = error
        L4_2 = "[criticalscripts.shop] cs-hall enabled configuration effect \""
        L5_2 = A0_2
        L6_2 = "\" ("
        L7_2 = A1_2
        L8_2 = ") which is included by default in \"cs-stream\" resource could not be loaded, consult the package's store page for further information."
        L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
        L3_2(L4_2)
      else
        L3_2 = error
        L4_2 = "[criticalscripts.shop] cs-hall enabled configuration effect \""
        L5_2 = A0_2
        L6_2 = "\" ("
        L7_2 = A1_2
        L8_2 = ") could not be loaded."
        L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
        L3_2(L4_2)
      end
    end
  end
end
RequestAssetPtfx = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = HasModelLoaded
  L2_2 = A0_2.hash
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = CreateObject
  L2_2 = A0_2.hash
  L3_2 = A0_2.position
  L3_2 = L3_2.x
  L4_2 = A0_2.position
  L4_2 = L4_2.y
  L5_2 = A0_2.position
  L5_2 = L5_2.z
  L6_2 = false
  L7_2 = true
  L8_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = SetEntityCoords
  L3_2 = L1_2
  L4_2 = A0_2.position
  L4_2 = L4_2.x
  L5_2 = A0_2.position
  L5_2 = L5_2.y
  L6_2 = A0_2.position
  L6_2 = L6_2.z
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetEntityHeading
  L3_2 = L1_2
  L4_2 = Ternary
  L5_2 = A0_2.heading
  L6_2 = 0.0
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.rotation
  if L2_2 then
    L2_2 = SetEntityRotation
    L3_2 = L1_2
    L4_2 = A0_2.rotation
    L4_2 = L4_2.x
    L5_2 = A0_2.rotation
    L5_2 = L5_2.y
    L6_2 = A0_2.rotation
    L6_2 = L6_2.z
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = A0_2.quaternion
  if L2_2 then
    L2_2 = SetEntityQuaternion
    L3_2 = L1_2
    L4_2 = A0_2.quaternion
    L4_2 = L4_2.x
    L5_2 = A0_2.quaternion
    L5_2 = L5_2.y
    L6_2 = A0_2.quaternion
    L6_2 = L6_2.z
    L7_2 = A0_2.quaternion
    L7_2 = L7_2.w
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = A0_2.visible
  if not L2_2 then
    L2_2 = SetEntityVisible
    L3_2 = L1_2
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityCompletelyDisableCollision
    L3_2 = L1_2
    L4_2 = false
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2.lodDistance
  if L2_2 then
    L2_2 = SetEntityLodDist
    L3_2 = L1_2
    L4_2 = A0_2.lodDistance
    L2_2(L3_2, L4_2)
  end
  L2_2 = FreezeEntityPosition
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  return L1_2
end
CreateSpeakerOrSmokeOrSparklersMachine = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = HasModelLoaded
  L2_2 = A0_2.hash
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = CreateObject
  L2_2 = A0_2.hash
  L3_2 = A0_2.position
  L3_2 = L3_2.x
  L4_2 = A0_2.position
  L4_2 = L4_2.y
  L5_2 = A0_2.position
  L5_2 = L5_2.z
  L6_2 = false
  L7_2 = true
  L8_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = SetEntityCoords
  L3_2 = L1_2
  L4_2 = A0_2.position
  L4_2 = L4_2.x
  L5_2 = A0_2.position
  L5_2 = L5_2.y
  L6_2 = A0_2.position
  L6_2 = L6_2.z
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetEntityHeading
  L3_2 = L1_2
  L4_2 = Ternary
  L5_2 = A0_2.heading
  L6_2 = 0.0
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.rotation
  if L2_2 then
    L2_2 = SetEntityRotation
    L3_2 = L1_2
    L4_2 = A0_2.rotation
    L4_2 = L4_2.x
    L5_2 = A0_2.rotation
    L5_2 = L5_2.y
    L6_2 = A0_2.rotation
    L6_2 = L6_2.z
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = A0_2.quaternion
  if L2_2 then
    L2_2 = SetEntityQuaternion
    L3_2 = L1_2
    L4_2 = A0_2.quaternion
    L4_2 = L4_2.x
    L5_2 = A0_2.quaternion
    L5_2 = L5_2.y
    L6_2 = A0_2.quaternion
    L6_2 = L6_2.z
    L7_2 = A0_2.quaternion
    L7_2 = L7_2.w
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = A0_2.lodDistance
  if L2_2 then
    L2_2 = SetEntityLodDist
    L3_2 = L1_2
    L4_2 = A0_2.lodDistance
    L2_2(L3_2, L4_2)
  end
  L2_2 = FreezeEntityPosition
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityLights
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetObjectLightColor
  L3_2 = L1_2
  L4_2 = true
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  return L1_2
end
CreateSpotlight = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = HasModelLoaded
  L2_2 = A0_2.hash
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = CreateObject
  L2_2 = A0_2.hash
  L3_2 = A0_2.position
  L3_2 = L3_2.x
  L4_2 = A0_2.position
  L4_2 = L4_2.y
  L5_2 = A0_2.position
  L5_2 = L5_2.z
  L6_2 = false
  L7_2 = true
  L8_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = SetEntityCoords
  L3_2 = L1_2
  L4_2 = A0_2.position
  L4_2 = L4_2.x
  L5_2 = A0_2.position
  L5_2 = L5_2.y
  L6_2 = A0_2.position
  L6_2 = L6_2.z
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetEntityHeading
  L3_2 = L1_2
  L4_2 = Ternary
  L5_2 = A0_2.heading
  L6_2 = 0.0
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.rotation
  if L2_2 then
    L2_2 = SetEntityRotation
    L3_2 = L1_2
    L4_2 = A0_2.rotation
    L4_2 = L4_2.x
    L5_2 = A0_2.rotation
    L5_2 = L5_2.y
    L6_2 = A0_2.rotation
    L6_2 = L6_2.z
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = A0_2.quaternion
  if L2_2 then
    L2_2 = SetEntityQuaternion
    L3_2 = L1_2
    L4_2 = A0_2.quaternion
    L4_2 = L4_2.x
    L5_2 = A0_2.quaternion
    L5_2 = L5_2.y
    L6_2 = A0_2.quaternion
    L6_2 = L6_2.z
    L7_2 = A0_2.quaternion
    L7_2 = L7_2.w
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = A0_2.lodDistance
  if L2_2 then
    L2_2 = SetEntityLodDist
    L3_2 = L1_2
    L4_2 = A0_2.lodDistance
    L2_2(L3_2, L4_2)
  end
  L2_2 = FreezeEntityPosition
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  return L1_2
end
CreateMonitorOrScreen = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2[1]
  L1_2 = L1_2 / 255
  L2_2 = A0_2[2]
  L2_2 = L2_2 / 255
  L3_2 = A0_2[3]
  L3_2 = L3_2 / 255
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = nil
  L7_2 = nil
  L8_2 = L5_2 + L4_2
  L8_2 = L8_2 / 2
  if L5_2 == L4_2 then
    L6_2 = 0
    L7_2 = 0
  else
    L9_2 = L5_2 - L4_2
    L10_2 = Ternary
    L11_2 = 0.5
    L11_2 = L8_2 > L11_2
    L12_2 = 2
    L12_2 = L12_2 - L5_2
    L12_2 = L12_2 - L4_2
    L12_2 = L9_2 / L12_2
    L13_2 = L5_2 + L4_2
    L13_2 = L9_2 / L13_2
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L7_2 = L10_2
    if L5_2 == L1_2 then
      L10_2 = L2_2 - L3_2
      L10_2 = L10_2 / L9_2
      L11_2 = Ternary
      L12_2 = L2_2 < L3_2
      L13_2 = 6
      L14_2 = 0
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L6_2 = L10_2 + L11_2
    elseif L5_2 == L2_2 then
      L10_2 = L3_2 - L1_2
      L10_2 = L10_2 / L9_2
      L6_2 = L10_2 + 2
    elseif L5_2 == L3_2 then
      L10_2 = L1_2 - L2_2
      L10_2 = L10_2 / L9_2
      L6_2 = L10_2 + 4
    end
    L6_2 = L6_2 / 6
  end
  L9_2 = {}
  L10_2 = L6_2
  L11_2 = L7_2
  L12_2 = L8_2
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  return L9_2
end
RGB2HSL = L89_1
function L89_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 < 0 then
    A2_2 = A2_2 + 1
  end
  if A2_2 > 1 then
    A2_2 = A2_2 - 1
  end
  L3_2 = 0.16666666666666666
  if A2_2 < L3_2 then
    L3_2 = A1_2 - A0_2
    L3_2 = L3_2 * 6
    L3_2 = L3_2 * A2_2
    L3_2 = A0_2 + L3_2
    return L3_2
  end
  L3_2 = 0.5
  if A2_2 < L3_2 then
    return A1_2
  end
  L3_2 = 0.6666666666666666
  if A2_2 < L3_2 then
    L3_2 = A1_2 - A0_2
    L4_2 = 0.6666666666666666
    L4_2 = L4_2 - A2_2
    L3_2 = L3_2 * L4_2
    L3_2 = L3_2 * 6
    L3_2 = A0_2 + L3_2
    return L3_2
  end
  return A0_2
end
Hue2RGB = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2[1]
  L2_2 = A0_2[2]
  L3_2 = A0_2[3]
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  if 0 == L2_2 then
    L4_2 = L3_2
    L5_2 = L3_2
    L6_2 = L3_2
  else
    L7_2 = Ternary
    L8_2 = 0.5
    L8_2 = L3_2 < L8_2
    L9_2 = 1 + L2_2
    L9_2 = L3_2 * L9_2
    L10_2 = L3_2 + L2_2
    L11_2 = L3_2 * L2_2
    L10_2 = L10_2 - L11_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = 2 * L3_2
    L8_2 = L8_2 - L7_2
    L9_2 = Hue2RGB
    L10_2 = L8_2
    L11_2 = L7_2
    L12_2 = L1_2 + 0.3333333333333333
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L4_2 = L9_2
    L9_2 = Hue2RGB
    L10_2 = L8_2
    L11_2 = L7_2
    L12_2 = L1_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L5_2 = L9_2
    L9_2 = Hue2RGB
    L10_2 = L8_2
    L11_2 = L7_2
    L12_2 = L1_2 - 0.3333333333333333
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L6_2 = L9_2
  end
  L7_2 = {}
  L8_2 = math
  L8_2 = L8_2.floor
  L9_2 = math
  L9_2 = L9_2.round
  L10_2 = L4_2 * 255
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = math
  L9_2 = L9_2.floor
  L10_2 = math
  L10_2 = L10_2.round
  L11_2 = L5_2 * 255
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = math
  L10_2 = L10_2.floor
  L11_2 = math
  L11_2 = L11_2.round
  L12_2 = L6_2 * 255
  L11_2, L12_2 = L11_2(L12_2)
  L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L7_2[5] = L12_2
  return L7_2
end
HSL2RGB = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if 0 == A1_2 then
    L2_2 = {}
    L3_2 = 0
    L4_2 = 0
    L5_2 = 0
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    return L2_2
  end
  L2_2 = RGB2HSL
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2[3]
  L3_2 = L3_2 * A1_2
  L2_2[3] = L3_2
  L3_2 = HSL2RGB
  L4_2 = L2_2
  return L3_2(L4_2)
end
AlterColorBrightness = L89_1
function L89_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = 1
  L3_2 = L3_2 - A2_2
  L3_2 = A0_2 * L3_2
  L4_2 = A1_2 * A2_2
  L3_2 = L3_2 + L4_2
  return L3_2
end
Lerp = L89_1
function L89_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2
  L8_2 = GetGameTimer
  L8_2 = L8_2()
  L9_2 = false
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    while true do
      L0_3 = L9_2
      if L0_3 then
        break
      end
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = L8_2
      L0_3 = L0_3 - L1_3
      L1_3 = A2_2
      L1_3 = L0_3 / L1_3
      L2_3 = type
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      if "table" ~= L2_3 then
        L2_3 = type
        L3_3 = A1_2
        L2_3 = L2_3(L3_3)
        if "table" ~= L2_3 then
          goto lbl_42
        end
      end
      L2_3 = {}
      L3_3 = 1
      L4_3 = A0_2
      L4_3 = #L4_3
      L5_3 = 1
      for L6_3 = L3_3, L4_3, L5_3 do
        L7_3 = Lerp
        L8_3 = A0_2
        L8_3 = L8_3[L6_3]
        L9_3 = A1_2
        L9_3 = L9_3[L6_3]
        L10_3 = L1_3
        L7_3 = L7_3(L8_3, L9_3, L10_3)
        L2_3[L6_3] = L7_3
      end
      L3_3 = A4_2
      L4_3 = L2_3
      L3_3(L4_3)
      goto lbl_49
      ::lbl_42::
      L2_3 = A4_2
      L3_3 = Lerp
      L4_3 = A0_2
      L5_3 = A1_2
      L6_3 = L1_3
      L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      ::lbl_49::
      L2_3 = L1_3 * 100
      L3_3 = Ternary
      L4_3 = A7_2
      L5_3 = 100
      L3_3 = L3_3(L4_3, L5_3)
      if L2_3 >= L3_3 then
        break
      end
      L2_3 = A5_2
      if L2_3 then
        L2_3 = A5_2
        L2_3 = L2_3()
        if not L2_3 then
          break
        end
      end
      L2_3 = Wait
      L3_3 = A3_2
      L2_3(L3_3)
    end
    L0_3 = A6_2
    if L0_3 then
      L0_3 = A6_2
      L0_3()
    end
    L0_3 = true
    L9_2 = L0_3
  end
  L10_2(L11_2)
  function L10_2()
    local L0_3, L1_3
    L0_3 = L9_2
    return L0_3
  end
  return L10_2
end
LerpCallback = L89_1
function L89_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "table" == L4_2 then
    L4_2 = {}
    L5_2 = 1
    L6_2 = #A0_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = A0_2[L8_2]
      L10_2 = A2_2 / 100
      L11_2 = A1_2[L8_2]
      L12_2 = A0_2[L8_2]
      L11_2 = L11_2 - L12_2
      L10_2 = L10_2 * L11_2
      L9_2 = L9_2 + L10_2
      L4_2[L8_2] = L9_2
    end
    L5_2 = A3_2
    L6_2 = L4_2
    L5_2(L6_2)
  else
    L4_2 = A3_2
    L5_2 = A2_2 / 100
    L6_2 = A1_2 - A0_2
    L5_2 = L5_2 * L6_2
    L5_2 = A0_2 + L5_2
    L4_2(L5_2)
  end
end
JumpPercentage = L89_1
function L89_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = 0
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "table" == L4_2 then
    L4_2 = 1
    L5_2 = #A0_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A2_2[L7_2]
      L9_2 = A0_2[L7_2]
      L8_2 = L8_2 - L9_2
      if 0 ~= L8_2 then
        L8_2 = A1_2[L7_2]
        L9_2 = A0_2[L7_2]
        L8_2 = L8_2 - L9_2
        L9_2 = A2_2[L7_2]
        L10_2 = A0_2[L7_2]
        L9_2 = L9_2 - L10_2
        L8_2 = L8_2 / L9_2
        L8_2 = L8_2 * 100
        if L3_2 > L8_2 then
          L3_2 = L8_2
        end
      else
        L3_2 = 100
      end
    end
  else
    L4_2 = A2_2 - A0_2
    if 0 ~= L4_2 then
      L4_2 = A1_2 - A0_2
      L5_2 = A2_2 - A0_2
      L4_2 = L4_2 / L5_2
      L3_2 = L4_2 * 100
    else
      L3_2 = 100
    end
  end
  if L3_2 > 100 then
    L3_2 = 100
  end
  return L3_2
end
CalculatePercentage = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L2_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = {}
    L3_2 = 0
    L4_2 = 0
    L5_2 = 0
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    return L2_2
  else
    L2_2 = SceneVariable
    L3_2 = "spotlightColor"
    L4_2 = A1_2
    L5_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = {}
    L4_2 = L2_2[1]
    L5_2 = L2_2[2]
    L6_2 = L2_2[3]
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    return L3_2
  end
end
GetSpotlightColor = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L57_1
  if L0_2 then
    L0_2 = config
    L0_2 = L0_2.entries
    L1_2 = L19_1
    L0_2 = L0_2[L1_2]
    L0_2 = L0_2.bass
    if L0_2 then
      L0_2 = config
      L0_2 = L0_2.entries
      L1_2 = L19_1
      L0_2 = L0_2[L1_2]
      L0_2 = L0_2.bass
      L0_2 = L0_2.smoke
      if L0_2 then
        L0_2 = SceneVariable
        L1_2 = "bassSmokeColorWithDynamicSpotlights"
        L2_2 = config
        L2_2 = L2_2.entries
        L3_2 = L19_1
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.bass
        L2_2 = L2_2.smoke
        L2_2 = L2_2.colorWithDynamicSpotlights
        L0_2 = L0_2(L1_2, L2_2)
        if L0_2 then
          L0_2 = L46_1
          if not L0_2 then
            L0_2 = L47_1
            if L0_2 then
              L0_2 = L10_1.dynamic
              if L0_2 then
                L0_2 = L11_1.playing
                if L0_2 then
                  L0_2 = FloatValues
                  L1_2 = L16_1.DarkVibrant
                  return L0_2(L1_2)
              end
            end
          end
        end
      end
    end
  end
  else
    return
  end
end
GetSmokeColor = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L57_1
  if L0_2 then
    L0_2 = config
    L0_2 = L0_2.entries
    L1_2 = L19_1
    L0_2 = L0_2[L1_2]
    L0_2 = L0_2.bass
    if L0_2 then
      L0_2 = config
      L0_2 = L0_2.entries
      L1_2 = L19_1
      L0_2 = L0_2[L1_2]
      L0_2 = L0_2.bass
      L0_2 = L0_2.sparklers
      if L0_2 then
        L0_2 = SceneVariable
        L1_2 = "bassSparklersColorWithDynamicSpotlights"
        L2_2 = config
        L2_2 = L2_2.entries
        L3_2 = L19_1
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.bass
        L2_2 = L2_2.sparklers
        L2_2 = L2_2.colorWithDynamicSpotlights
        L0_2 = L0_2(L1_2, L2_2)
        if L0_2 then
          L0_2 = L46_1
          if not L0_2 then
            L0_2 = L47_1
            if L0_2 then
              L0_2 = L10_1.dynamic
              if L0_2 then
                L0_2 = L11_1.playing
                if L0_2 then
                  L0_2 = FloatValues
                  L1_2 = L16_1.DarkVibrant
                  return L0_2(L1_2)
              end
            end
          end
        end
      end
    end
  end
  else
    return
  end
end
GetSparklersColor = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = L51_1
  if not L2_2 then
    L2_2 = L57_1
    if L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = L57_1
  if L2_2 then
    L2_2 = true
    L51_1 = L2_2
    L2_2 = 1
    L3_2 = L3_1
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L3_1
      L6_2 = L6_2[L5_2]
      if L6_2 then
        L6_2 = L3_1
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.smokes
        if L6_2 and (not A1_2 or L5_2 == A1_2) then
          L6_2 = CreateThread
          function L7_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
            L0_3 = 1
            L2_3 = L5_2
            L1_3 = L3_1
            L1_3 = L1_3[L2_3]
            L1_3 = L1_3.smokes
            L1_3 = #L1_3
            L2_3 = 1
            for L3_3 = L0_3, L1_3, L2_3 do
              L4_3 = 1
              L5_3 = Ternary
              L6_3 = config
              L6_3 = L6_3.entries
              L7_3 = L19_1
              L6_3 = L6_3[L7_3]
              L6_3 = L6_3.smokeFxMultiplier
              L7_3 = L80_1
              L5_3 = L5_3(L6_3, L7_3)
              L6_3 = 1
              for L7_3 = L4_3, L5_3, L6_3 do
                L8_3 = CreateThread
                function L9_3()
                  local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4
                  L0_4 = FloatValues
                  L1_4 = Ternary
                  L2_4 = Ternary
                  L3_4 = A0_2
                  L4_4 = SceneVariable
                  L5_4 = "smokeColor"
                  L7_4 = L5_2
                  L6_4 = L3_1
                  L6_4 = L6_4[L7_4]
                  L6_4 = L6_4.color
                  L7_4 = L5_2
                  L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4 = L4_4(L5_4, L6_4, L7_4)
                  L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4)
                  L3_4 = {}
                  L4_4 = 255
                  L5_4 = 255
                  L6_4 = 255
                  L3_4[1] = L4_4
                  L3_4[2] = L5_4
                  L3_4[3] = L6_4
                  L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4 = L1_4(L2_4, L3_4)
                  L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4)
                  L1_4 = UseParticleFxAsset
                  L3_4 = L5_2
                  L2_4 = L3_1
                  L2_4 = L2_4[L3_4]
                  L2_4 = L2_4.fx
                  L2_4 = L2_4.library
                  L1_4(L2_4)
                  L1_4 = table
                  L1_4 = L1_4.insert
                  L3_4 = L5_2
                  L2_4 = L3_1
                  L2_4 = L2_4[L3_4]
                  L2_4 = L2_4.smokes
                  L3_4 = L3_3
                  L2_4 = L2_4[L3_4]
                  L2_4 = L2_4.handles
                  L3_4 = StartParticleFxLoopedAtCoord
                  L5_4 = L5_2
                  L4_4 = L3_1
                  L4_4 = L4_4[L5_4]
                  L4_4 = L4_4.fx
                  L4_4 = L4_4.effect
                  L6_4 = L5_2
                  L5_4 = L3_1
                  L5_4 = L5_4[L6_4]
                  L5_4 = L5_4.smokes
                  L6_4 = L3_3
                  L5_4 = L5_4[L6_4]
                  L5_4 = L5_4.position
                  L5_4 = L5_4.x
                  L7_4 = L5_2
                  L6_4 = L3_1
                  L6_4 = L6_4[L7_4]
                  L6_4 = L6_4.smokes
                  L7_4 = L3_3
                  L6_4 = L6_4[L7_4]
                  L6_4 = L6_4.position
                  L6_4 = L6_4.y
                  L8_4 = L5_2
                  L7_4 = L3_1
                  L7_4 = L7_4[L8_4]
                  L7_4 = L7_4.smokes
                  L8_4 = L3_3
                  L7_4 = L7_4[L8_4]
                  L7_4 = L7_4.position
                  L7_4 = L7_4.z
                  L8_4 = 0.0
                  L9_4 = 0.0
                  L10_4 = 0.0
                  L11_4 = 10.0
                  L12_4 = 0
                  L13_4 = 0
                  L14_4 = 0
                  L15_4 = 1
                  L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4 = L3_4(L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4)
                  L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4)
                  L1_4 = SetParticleFxLoopedColour
                  L3_4 = L5_2
                  L2_4 = L3_1
                  L2_4 = L2_4[L3_4]
                  L2_4 = L2_4.smokes
                  L3_4 = L3_3
                  L2_4 = L2_4[L3_4]
                  L2_4 = L2_4.handles
                  L4_4 = L5_2
                  L3_4 = L3_1
                  L3_4 = L3_4[L4_4]
                  L3_4 = L3_4.smokes
                  L4_4 = L3_3
                  L3_4 = L3_4[L4_4]
                  L3_4 = L3_4.handles
                  L3_4 = #L3_4
                  L2_4 = L2_4[L3_4]
                  L3_4 = L0_4[1]
                  L4_4 = L0_4[2]
                  L5_4 = L0_4[3]
                  L6_4 = 0
                  L1_4(L2_4, L3_4, L4_4, L5_4, L6_4)
                end
                L8_3(L9_3)
              end
              L4_3 = Wait
              L5_3 = Ternary
              L6_3 = config
              L6_3 = L6_3.entries
              L7_3 = L19_1
              L6_3 = L6_3[L7_3]
              L6_3 = L6_3.delayBetweenSmokeChainMs
              L7_3 = L82_1
              L5_3, L6_3, L7_3, L8_3, L9_3 = L5_3(L6_3, L7_3)
              L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
            end
          end
          L6_2(L7_2)
        end
      end
    end
    L2_2 = 0
    L3_2 = 1
    L4_2 = L3_1
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L3_1
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.smokes
      L7_2 = #L7_2
      L2_2 = L2_2 + L7_2
    end
    L3_2 = Wait
    L4_2 = Ternary
    L5_2 = config
    L5_2 = L5_2.entries
    L6_2 = L19_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.smokeTimeoutMs
    L6_2 = L78_1
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = Ternary
    L6_2 = config
    L6_2 = L6_2.entries
    L7_2 = L19_1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.delayBetweenSmokeChainMs
    L7_2 = L82_1
    L5_2 = L5_2(L6_2, L7_2)
    L5_2 = L2_2 * L5_2
    L4_2 = L4_2 + L5_2
    L3_2(L4_2)
    L3_2 = 1
    L4_2 = L3_1
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      if not A1_2 or L6_2 == A1_2 then
        L7_2 = 1
        L8_2 = L3_1
        L8_2 = L8_2[L6_2]
        L8_2 = L8_2.smokes
        L8_2 = #L8_2
        L9_2 = 1
        for L10_2 = L7_2, L8_2, L9_2 do
          L11_2 = 1
          L12_2 = L3_1
          L12_2 = L12_2[L6_2]
          L12_2 = L12_2.smokes
          L12_2 = L12_2[L10_2]
          L12_2 = L12_2.handles
          L12_2 = #L12_2
          L13_2 = 1
          for L14_2 = L11_2, L12_2, L13_2 do
            L15_2 = StopParticleFxLooped
            L16_2 = L3_1
            L16_2 = L16_2[L6_2]
            L16_2 = L16_2.smokes
            L16_2 = L16_2[L10_2]
            L16_2 = L16_2.handles
            L16_2 = L16_2[L14_2]
            L17_2 = false
            L15_2(L16_2, L17_2)
          end
          L11_2 = L3_1
          L11_2 = L11_2[L6_2]
          L11_2 = L11_2.smokes
          L11_2 = L11_2[L10_2]
          L12_2 = {}
          L11_2.handles = L12_2
        end
      end
    end
    L3_2 = false
    L51_1 = L3_2
  end
end
DoSmoke = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = L52_1
  if not L2_2 then
    L2_2 = L57_1
    if L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = L57_1
  if L2_2 then
    L2_2 = true
    L52_1 = L2_2
    L2_2 = 1
    L3_2 = L4_1
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      if not A1_2 or L5_2 == A1_2 then
        L6_2 = 1
        L7_2 = Ternary
        L8_2 = config
        L8_2 = L8_2.entries
        L9_2 = L19_1
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.sparklerFxMultiplier
        L9_2 = L81_1
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = CreateThread
          function L11_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
            L0_3 = FloatValues
            L1_3 = Ternary
            L2_3 = Ternary
            L3_3 = A0_2
            L4_3 = SceneVariable
            L5_3 = "sparklerColor"
            L7_3 = L5_2
            L6_3 = L4_1
            L6_3 = L6_3[L7_3]
            L6_3 = L6_3.color
            L7_3 = L5_2
            L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L4_3(L5_3, L6_3, L7_3)
            L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
            L3_3 = {}
            L4_3 = 255
            L5_3 = 255
            L6_3 = 255
            L3_3[1] = L4_3
            L3_3[2] = L5_3
            L3_3[3] = L6_3
            L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L1_3(L2_3, L3_3)
            L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
            L1_3 = UseParticleFxAsset
            L3_3 = L5_2
            L2_3 = L4_1
            L2_3 = L2_3[L3_3]
            L2_3 = L2_3.fx
            L2_3 = L2_3.library
            L1_3(L2_3)
            L1_3 = table
            L1_3 = L1_3.insert
            L3_3 = L5_2
            L2_3 = L4_1
            L2_3 = L2_3[L3_3]
            L2_3 = L2_3.handles
            L3_3 = StartParticleFxLoopedAtCoord
            L5_3 = L5_2
            L4_3 = L4_1
            L4_3 = L4_3[L5_3]
            L4_3 = L4_3.fx
            L4_3 = L4_3.effect
            L6_3 = L5_2
            L5_3 = L4_1
            L5_3 = L5_3[L6_3]
            L5_3 = L5_3.position
            L5_3 = L5_3.x
            L7_3 = L5_2
            L6_3 = L4_1
            L6_3 = L6_3[L7_3]
            L6_3 = L6_3.position
            L6_3 = L6_3.y
            L8_3 = L5_2
            L7_3 = L4_1
            L7_3 = L7_3[L8_3]
            L7_3 = L7_3.position
            L7_3 = L7_3.z
            L8_3 = 0.0
            L9_3 = 0.0
            L10_3 = 0.0
            L11_3 = 10.0
            L12_3 = 0
            L13_3 = 0
            L14_3 = 0
            L15_3 = 1
            L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
            L1_3 = SetParticleFxLoopedColour
            L3_3 = L5_2
            L2_3 = L4_1
            L2_3 = L2_3[L3_3]
            L2_3 = L2_3.handles
            L4_3 = L5_2
            L3_3 = L4_1
            L3_3 = L3_3[L4_3]
            L3_3 = L3_3.handles
            L3_3 = #L3_3
            L2_3 = L2_3[L3_3]
            L3_3 = L0_3[1]
            L4_3 = L0_3[2]
            L5_3 = L0_3[3]
            L6_3 = 0
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
          end
          L10_2(L11_2)
        end
      end
    end
    L2_2 = Wait
    L3_2 = Ternary
    L4_2 = config
    L4_2 = L4_2.entries
    L5_2 = L19_1
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.sparklerTimeoutMs
    L5_2 = L79_1
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L2_2 = 1
    L3_2 = L4_1
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      if not A1_2 or L5_2 == A1_2 then
        L6_2 = 1
        L7_2 = L4_1
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.handles
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = StopParticleFxLooped
          L11_2 = L4_1
          L11_2 = L11_2[L5_2]
          L11_2 = L11_2.handles
          L11_2 = L11_2[L9_2]
          L12_2 = false
          L10_2(L11_2, L12_2)
        end
        L6_2 = L4_1
        L6_2 = L6_2[L5_2]
        L7_2 = {}
        L6_2.handles = L7_2
      end
    end
    L2_2 = false
    L52_1 = L2_2
  end
end
DoSparklers = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = true
  L50_1 = L0_2
  L0_2 = L57_1
  if L0_2 then
    L0_2 = 1
    L1_2 = L2_1
    L1_2 = #L1_2
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = L2_1
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.handle
      if L4_2 then
        L4_2 = SetEntityLights
        L5_2 = L2_1
        L5_2 = L5_2[L3_2]
        L5_2 = L5_2.handle
        L6_2 = false
        L4_2(L5_2, L6_2)
      end
    end
    L0_2 = SyncSpotlightStates
    L0_2()
  end
end
TurnOnSpotlights = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = false
  L50_1 = L0_2
  L0_2 = L57_1
  if L0_2 then
    L0_2 = 1
    L1_2 = L2_1
    L1_2 = #L1_2
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = L2_1
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.handle
      if L4_2 then
        L4_2 = SetEntityLights
        L5_2 = L2_1
        L5_2 = L5_2[L3_2]
        L5_2 = L5_2.handle
        L6_2 = true
        L4_2(L5_2, L6_2)
      end
    end
    L0_2 = SyncSpotlightStates
    L0_2()
  end
end
TurnOffSpotlights = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L57_1
  if L0_2 then
    L0_2 = 1
    L1_2 = L2_1
    L1_2 = #L1_2
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = L2_1
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.handle
      if L4_2 then
        L4_2 = L43_1
        if L4_2 then
          L4_2 = L18_1.active
          if L4_2 then
            L4_2 = L18_1.settings
            L4_2 = L4_2.spotlights
            L4_2 = L4_2.states
            L4_2 = L4_2[L3_2]
            if nil ~= L4_2 then
              L4_2 = L18_1.settings
              L4_2 = L4_2.spotlights
              L4_2 = L4_2.states
              L4_2 = L4_2[L3_2]
              if L4_2 then
                L4_2 = SetEntityLights
                L5_2 = L2_1
                L5_2 = L5_2[L3_2]
                L5_2 = L5_2.handle
                L6_2 = false
                L4_2(L5_2, L6_2)
              else
                L4_2 = SetEntityLights
                L5_2 = L2_1
                L5_2 = L5_2[L3_2]
                L5_2 = L5_2.handle
                L6_2 = true
                L4_2(L5_2, L6_2)
              end
          end
        end
      end
      else
        L4_2 = L50_1
        if L4_2 then
          L4_2 = SetEntityLights
          L5_2 = L2_1
          L5_2 = L5_2[L3_2]
          L5_2 = L5_2.handle
          L6_2 = false
          L4_2(L5_2, L6_2)
        else
          L4_2 = SetEntityLights
          L5_2 = L2_1
          L5_2 = L5_2[L3_2]
          L5_2 = L5_2.handle
          L6_2 = true
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
end
SyncSpotlightStates = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L46_1
  if L0_2 then
    L0_2 = 1
    L1_2 = L2_1
    L1_2 = #L1_2
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = L2_1
      L4_2 = L4_2[L3_2]
      L5_2 = {}
      L6_2 = 255
      L7_2 = 255
      L8_2 = 255
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L5_2[3] = L8_2
      L4_2.currentColor = L5_2
    end
  else
    L0_2 = L48_1
    if not L0_2 then
      L0_2 = 1
      L1_2 = L2_1
      L1_2 = #L1_2
      L2_2 = 1
      for L3_2 = L0_2, L1_2, L2_2 do
        L4_2 = L2_1
        L4_2 = L4_2[L3_2]
        L5_2 = {}
        L6_2 = 0
        L7_2 = 0
        L8_2 = 0
        L5_2[1] = L6_2
        L5_2[2] = L7_2
        L5_2[3] = L8_2
        L4_2.currentColor = L5_2
      end
    else
      L0_2 = L47_1
      if L0_2 then
        L0_2 = L10_1.dynamic
        if L0_2 then
          goto lbl_61
        end
      end
      L0_2 = 1
      L1_2 = L2_1
      L1_2 = #L1_2
      L2_2 = 1
      for L3_2 = L0_2, L1_2, L2_2 do
        L4_2 = L2_1
        L4_2 = L4_2[L3_2]
        L5_2 = GetSpotlightColor
        L6_2 = L3_2
        L7_2 = L2_1
        L7_2 = L7_2[L3_2]
        L7_2 = L7_2.originalColor
        L5_2 = L5_2(L6_2, L7_2)
        L4_2.currentColor = L5_2
      end
      goto lbl_84
      ::lbl_61::
      L0_2 = L11_1.playing
      if not L0_2 then
        L0_2 = 1
        L1_2 = L2_1
        L1_2 = #L1_2
        L2_2 = 1
        for L3_2 = L0_2, L1_2, L2_2 do
          L4_2 = L2_1
          L4_2 = L4_2[L3_2]
          L4_2 = L4_2.handle
          if L4_2 then
            L4_2 = SetObjectLightColor
            L5_2 = L2_1
            L5_2 = L5_2[L3_2]
            L5_2 = L5_2.handle
            L6_2 = true
            L7_2 = 0
            L8_2 = 0
            L9_2 = 0
            L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
          end
        end
      end
    end
  end
  ::lbl_84::
  L0_2 = 1
  L1_2 = L2_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L2_1
    L4_2 = L4_2[L3_2]
    L5_2 = GetSpotlightColor
    L6_2 = L3_2
    L7_2 = L2_1
    L7_2 = L7_2[L3_2]
    L7_2 = L7_2.currentColor
    L5_2 = L5_2(L6_2, L7_2)
    L4_2.currentColor = L5_2
    L4_2 = L2_1
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.handle
    if L4_2 then
      L4_2 = L48_1
      if L4_2 then
        L4_2 = SetObjectLightColor
        L5_2 = L2_1
        L5_2 = L5_2[L3_2]
        L5_2 = L5_2.handle
        L6_2 = true
        L7_2 = 0
        L8_2 = 0
        L9_2 = 0
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      else
        L4_2 = SetObjectLightColor
        L5_2 = L2_1
        L5_2 = L5_2[L3_2]
        L5_2 = L5_2.handle
        L6_2 = true
        L7_2 = L2_1
        L7_2 = L7_2[L3_2]
        L7_2 = L7_2.currentColor
        L7_2 = L7_2[1]
        L8_2 = L2_1
        L8_2 = L8_2[L3_2]
        L8_2 = L8_2.currentColor
        L8_2 = L8_2[2]
        L9_2 = L2_1
        L9_2 = L9_2[L3_2]
        L9_2 = L9_2.currentColor
        L9_2 = L9_2[3]
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      end
    end
  end
end
SyncSpotlightColors = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = 1
  L1_2 = L6_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = SetEntityCoords
    L5_2 = L6_1
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.handle
    L6_2 = L6_1
    L6_2 = L6_2[L3_2]
    L6_2 = L6_2.advance
    L6_2 = L6_2.position
    L6_2 = L6_2.x
    L7_2 = L6_1
    L7_2 = L7_2[L3_2]
    L7_2 = L7_2.advance
    L7_2 = L7_2.position
    L7_2 = L7_2.y
    L8_2 = L6_1
    L8_2 = L8_2[L3_2]
    L8_2 = L8_2.advance
    L8_2 = L8_2.position
    L8_2 = L8_2.z
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
AdvanceScreensImmediately = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = L40_1
  if L2_2 then
    return
  end
  L2_2 = false
  L41_1 = L2_2
  L2_2 = true
  L40_1 = L2_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = L6_1
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L6_1
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.handle
    L8_2 = L6_1
    L8_2 = L8_2[L6_2]
    L8_2 = L8_2.position
    L9_2 = L6_1
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.advance
    L10_2 = A1_2 - A0_2
    L11_2 = L9_2.durationMs
    if L10_2 > L11_2 then
      L11_2 = SetEntityCoords
      L12_2 = L7_2
      L13_2 = L9_2.position
      L13_2 = L13_2.x
      L14_2 = L9_2.position
      L14_2 = L14_2.y
      L15_2 = L9_2.position
      L15_2 = L15_2.z
      L11_2(L12_2, L13_2, L14_2, L15_2)
    else
      L11_2 = GetEntityCoords
      L12_2 = L7_2
      L11_2 = L11_2(L12_2)
      L12_2 = CalculatePercentage
      L13_2 = {}
      L14_2 = L8_2.x
      L15_2 = L8_2.y
      L16_2 = L8_2.z
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L13_2[3] = L16_2
      L14_2 = {}
      L15_2 = L11_2.x
      L16_2 = L11_2.y
      L17_2 = L11_2.z
      L14_2[1] = L15_2
      L14_2[2] = L16_2
      L14_2[3] = L17_2
      L15_2 = {}
      L16_2 = L9_2.position
      L16_2 = L16_2.x
      L17_2 = L9_2.position
      L17_2 = L17_2.y
      L18_2 = L9_2.position
      L18_2 = L18_2.z
      L15_2[1] = L16_2
      L15_2[2] = L17_2
      L15_2[3] = L18_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L13_2 = L9_2.durationMs
      L13_2 = L10_2 / L13_2
      L13_2 = L13_2 * 100
      L14_2 = Ternary
      L15_2 = L12_2 > L13_2
      L16_2 = L12_2
      L17_2 = L13_2
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L15_2 = JumpPercentage
      L16_2 = {}
      L17_2 = L11_2.x
      L18_2 = L11_2.y
      L19_2 = L11_2.z
      L16_2[1] = L17_2
      L16_2[2] = L18_2
      L16_2[3] = L19_2
      L17_2 = {}
      L18_2 = L9_2.position
      L18_2 = L18_2.x
      L19_2 = L9_2.position
      L19_2 = L19_2.y
      L20_2 = L9_2.position
      L20_2 = L20_2.z
      L17_2[1] = L18_2
      L17_2[2] = L19_2
      L17_2[3] = L20_2
      L18_2 = L13_2
      function L19_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
        L1_3 = SetEntityCoords
        L2_3 = L7_2
        L3_3 = A0_3[1]
        L4_3 = A0_3[2]
        L5_3 = A0_3[3]
        L1_3(L2_3, L3_3, L4_3, L5_3)
        L1_3 = table
        L1_3 = L1_3.insert
        L2_3 = L2_2
        L3_3 = LerpCallback
        L4_3 = {}
        L5_3 = A0_3[1]
        L6_3 = A0_3[2]
        L7_3 = A0_3[3]
        L4_3[1] = L5_3
        L4_3[2] = L6_3
        L4_3[3] = L7_3
        L5_3 = {}
        L6_3 = L9_2.position
        L6_3 = L6_3.x
        L7_3 = L9_2.position
        L7_3 = L7_3.y
        L8_3 = L9_2.position
        L8_3 = L8_3.z
        L5_3[1] = L6_3
        L5_3[2] = L7_3
        L5_3[3] = L8_3
        L6_3 = L14_2
        L6_3 = L6_3 / 100
        L7_3 = 1.0
        L6_3 = L7_3 - L6_3
        L7_3 = L9_2.durationMs
        L6_3 = L6_3 * L7_3
        L7_3 = L68_1
        function L8_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4
          L1_4 = DoesEntityExist
          L2_4 = L7_2
          L1_4 = L1_4(L2_4)
          if L1_4 then
            L1_4 = SetEntityCoords
            L2_4 = L7_2
            L3_4 = A0_4[1]
            L4_4 = A0_4[2]
            L5_4 = A0_4[3]
            L1_4(L2_4, L3_4, L4_4, L5_4)
          end
        end
        function L9_3()
          local L0_4, L1_4
          L0_4 = L57_1
          if L0_4 then
            L0_4 = L40_1
          end
          return L0_4
        end
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      end
      L15_2(L16_2, L17_2, L18_2, L19_2)
    end
  end
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    while true do
      L0_3 = L57_1
      if not L0_3 then
        break
      end
      L0_3 = false
      L1_3 = 1
      L2_3 = L2_2
      L2_3 = #L2_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = L2_2
        L5_3 = L5_3[L4_3]
        L5_3 = L5_3()
        if not L5_3 then
          L0_3 = true
          break
        end
      end
      if not L0_3 then
        L1_3 = false
        L40_1 = L1_3
        break
      end
      L1_3 = Wait
      L2_3 = L68_1
      L1_3(L2_3)
    end
  end
  L3_2(L4_2)
end
AdvanceScreens = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = L41_1
  if L2_2 then
    return
  end
  L2_2 = false
  L40_1 = L2_2
  L2_2 = true
  L41_1 = L2_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = L6_1
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L6_1
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.handle
    L8_2 = L6_1
    L8_2 = L8_2[L6_2]
    L8_2 = L8_2.position
    L9_2 = L6_1
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.advance
    L10_2 = A1_2 - A0_2
    L11_2 = L9_2.durationMs
    if L10_2 > L11_2 then
      L11_2 = SetEntityCoords
      L12_2 = L7_2
      L13_2 = L8_2.x
      L14_2 = L8_2.y
      L15_2 = L8_2.z
      L11_2(L12_2, L13_2, L14_2, L15_2)
    else
      L11_2 = GetEntityCoords
      L12_2 = L7_2
      L11_2 = L11_2(L12_2)
      L12_2 = CalculatePercentage
      L13_2 = {}
      L14_2 = L9_2.position
      L14_2 = L14_2.x
      L15_2 = L9_2.position
      L15_2 = L15_2.y
      L16_2 = L9_2.position
      L16_2 = L16_2.z
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L13_2[3] = L16_2
      L14_2 = {}
      L15_2 = L11_2.x
      L16_2 = L11_2.y
      L17_2 = L11_2.z
      L14_2[1] = L15_2
      L14_2[2] = L16_2
      L14_2[3] = L17_2
      L15_2 = {}
      L16_2 = L8_2.x
      L17_2 = L8_2.y
      L18_2 = L8_2.z
      L15_2[1] = L16_2
      L15_2[2] = L17_2
      L15_2[3] = L18_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L13_2 = L9_2.durationMs
      L13_2 = L10_2 / L13_2
      L13_2 = L13_2 * 100
      L14_2 = Ternary
      L15_2 = L12_2 > L13_2
      L16_2 = L12_2
      L17_2 = L13_2
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L15_2 = JumpPercentage
      L16_2 = {}
      L17_2 = L11_2.x
      L18_2 = L11_2.y
      L19_2 = L11_2.z
      L16_2[1] = L17_2
      L16_2[2] = L18_2
      L16_2[3] = L19_2
      L17_2 = {}
      L18_2 = L8_2.x
      L19_2 = L8_2.y
      L20_2 = L8_2.z
      L17_2[1] = L18_2
      L17_2[2] = L19_2
      L17_2[3] = L20_2
      L18_2 = L13_2
      function L19_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
        L1_3 = SetEntityCoords
        L2_3 = L7_2
        L3_3 = A0_3[1]
        L4_3 = A0_3[2]
        L5_3 = A0_3[3]
        L1_3(L2_3, L3_3, L4_3, L5_3)
        L1_3 = table
        L1_3 = L1_3.insert
        L2_3 = L2_2
        L3_3 = LerpCallback
        L4_3 = {}
        L5_3 = A0_3[1]
        L6_3 = A0_3[2]
        L7_3 = A0_3[3]
        L4_3[1] = L5_3
        L4_3[2] = L6_3
        L4_3[3] = L7_3
        L5_3 = {}
        L6_3 = L8_2.x
        L7_3 = L8_2.y
        L8_3 = L8_2.z
        L5_3[1] = L6_3
        L5_3[2] = L7_3
        L5_3[3] = L8_3
        L6_3 = L14_2
        L6_3 = L6_3 / 100
        L7_3 = 1.0
        L6_3 = L7_3 - L6_3
        L7_3 = L9_2.durationMs
        L6_3 = L6_3 * L7_3
        L7_3 = L68_1
        function L8_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4
          L1_4 = DoesEntityExist
          L2_4 = L7_2
          L1_4 = L1_4(L2_4)
          if L1_4 then
            L1_4 = SetEntityCoords
            L2_4 = L7_2
            L3_4 = A0_4[1]
            L4_4 = A0_4[2]
            L5_4 = A0_4[3]
            L1_4(L2_4, L3_4, L4_4, L5_4)
          end
        end
        function L9_3()
          local L0_4, L1_4
          L0_4 = L57_1
          if L0_4 then
            L0_4 = L41_1
          end
          return L0_4
        end
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      end
      L15_2(L16_2, L17_2, L18_2, L19_2)
    end
  end
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    while true do
      L0_3 = L57_1
      if not L0_3 then
        break
      end
      L0_3 = false
      L1_3 = 1
      L2_3 = L2_2
      L2_3 = #L2_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = L2_2
        L5_3 = L5_3[L4_3]
        L5_3 = L5_3()
        if not L5_3 then
          L0_3 = true
          break
        end
      end
      if not L0_3 then
        L1_3 = false
        L41_1 = L1_3
        break
      end
      L1_3 = Wait
      L2_3 = L68_1
      L1_3(L2_3)
    end
  end
  L3_2(L4_2)
end
RetractScreens = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CanAccessUi
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L0_2 = true
  L38_1 = L0_2
  L0_2 = SetNuiFocus
  L1_2 = L38_1
  L2_2 = L38_1
  L0_2(L1_2, L2_2)
  L0_2 = SetNuiFocusKeepInput
  L1_2 = true
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "cs-hall:show"
  L2_2 = config
  L2_2 = L2_2.entries
  L3_2 = L19_1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.allowAllSources
  L1_2.allowAllSources = L2_2
  L0_2(L1_2)
  L0_2 = TriggerEvent
  L1_2 = "cs-hall:onControllerInterfaceOpen"
  L0_2(L1_2)
end
ShowUi = L89_1
function L89_1()
  local L0_2, L1_2, L2_2
  L0_2 = false
  L38_1 = L0_2
  L0_2 = SetNuiFocus
  L1_2 = L38_1
  L2_2 = L38_1
  L0_2(L1_2, L2_2)
  L0_2 = SetNuiFocusKeepInput
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "cs-hall:hide"
  L0_2(L1_2)
  L0_2 = TriggerEvent
  L1_2 = "cs-hall:onControllerInterfaceClose"
  L0_2(L1_2)
end
HideUi = L89_1
function L89_1()
  local L0_2, L1_2
  L0_2 = L39_1
  if L0_2 then
    L0_2 = L57_1
    if L0_2 then
      L0_2 = L61_1
      if L0_2 then
        L0_2 = L54_1
        if L0_2 then
          L0_2 = L36_1
        end
      end
    end
  end
  return L0_2
end
CanAccessUi = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PushScaleformMovieFunction
  L2_2 = A0_2
  L3_2 = "SET_TEXTURE"
  L1_2(L2_2, L3_2)
  L1_2 = PushScaleformMovieMethodParameterString
  L2_2 = "browser"
  L1_2(L2_2)
  L1_2 = PushScaleformMovieMethodParameterString
  L2_2 = "browserTexture"
  L1_2(L2_2)
  L1_2 = PushScaleformMovieFunctionParameterInt
  L2_2 = 0
  L1_2(L2_2)
  L1_2 = PushScaleformMovieFunctionParameterInt
  L2_2 = 0
  L1_2(L2_2)
  L1_2 = PushScaleformMovieFunctionParameterInt
  L2_2 = 1280
  L1_2(L2_2)
  L1_2 = PushScaleformMovieFunctionParameterInt
  L2_2 = 720
  L1_2(L2_2)
  L1_2 = PopScaleformMovieFunctionVoid
  L1_2()
end
SetScaleformTexture = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = L59_1
  if not L1_2 then
    L1_2 = L57_1
    if not L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = true
  L59_1 = L1_2
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.smokers
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.smokers
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = RequestAssetPtfx
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.smokers
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.fx
      L6_2 = L6_2.library
      L5_2(L6_2)
      L5_2 = RequestAssetModel
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.smokers
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.hash
      L7_2 = config
      L7_2 = L7_2.entries
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.smokers
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.interior
      if L7_2 then
        L7_2 = "\""
        L8_2 = A0_2
        L9_2 = "\" - smoker index: "
        L10_2 = L4_2
        L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
        if L7_2 then
          goto lbl_56
        end
      end
      L7_2 = nil
      ::lbl_56::
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.sparklers
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.sparklers
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = RequestAssetPtfx
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.sparklers
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.fx
      L6_2 = L6_2.library
      L5_2(L6_2)
      L5_2 = RequestAssetModel
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.sparklers
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.hash
      L7_2 = config
      L7_2 = L7_2.entries
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.sparklers
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.interior
      if L7_2 then
        L7_2 = "\""
        L8_2 = A0_2
        L9_2 = "\" - sparkler index: "
        L10_2 = L4_2
        L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
        if L7_2 then
          goto lbl_104
        end
      end
      L7_2 = nil
      ::lbl_104::
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.speakers
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.speakers
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = RequestAssetModel
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.speakers
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.hash
      L7_2 = config
      L7_2 = L7_2.entries
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.speakers
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.interior
      if L7_2 then
        L7_2 = "\""
        L8_2 = A0_2
        L9_2 = "\" - speaker index: "
        L10_2 = L4_2
        L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
        if L7_2 then
          goto lbl_143
        end
      end
      L7_2 = nil
      ::lbl_143::
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.spotlights
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.spotlights
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = RequestAssetModel
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.spotlights
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.hash
      L7_2 = config
      L7_2 = L7_2.entries
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.spotlights
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.interior
      if L7_2 then
        L7_2 = "\""
        L8_2 = A0_2
        L9_2 = "\" - spotlight index: "
        L10_2 = L4_2
        L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
        if L7_2 then
          goto lbl_182
        end
      end
      L7_2 = nil
      ::lbl_182::
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.monitors
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.monitors
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = RequestAssetModel
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.monitors
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.hash
      L7_2 = config
      L7_2 = L7_2.entries
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.monitors
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.interior
      if L7_2 then
        L7_2 = "\""
        L8_2 = A0_2
        L9_2 = "\" - monitor index: "
        L10_2 = L4_2
        L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
        if L7_2 then
          goto lbl_221
        end
      end
      L7_2 = nil
      ::lbl_221::
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.screens
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.screens
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = RequestAssetModel
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.screens
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.hash
      L7_2 = config
      L7_2 = L7_2.entries
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.screens
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.interior
      if L7_2 then
        L7_2 = "\""
        L8_2 = A0_2
        L9_2 = "\" - screen index: "
        L10_2 = L4_2
        L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
        if L7_2 then
          goto lbl_260
        end
      end
      L7_2 = nil
      ::lbl_260::
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.disableEmitters
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.disableEmitters
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = SetStaticEmitterEnabled
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.disableEmitters
      L6_2 = L6_2[L4_2]
      L7_2 = false
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.smokers
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.smokers
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = Copy
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.smokers
      L6_2 = L6_2[L4_2]
      L5_2 = L5_2(L6_2)
      L6_2 = CreateSpeakerOrSmokeOrSparklersMachine
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L7_2 = HasNamedPtfxAssetLoaded
        L8_2 = L5_2.fx
        L8_2 = L8_2.library
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = GetEntityMatrix
          L8_2 = L6_2
          L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
          L5_2.forward = L7_2
          L5_2.right = L8_2
          L5_2.up = L9_2
          L5_2.position = L10_2
          L5_2.handle = L6_2
          L11_2 = {}
          L12_2 = {}
          L13_2 = L5_2.position
          L14_2 = L5_2.up
          L14_2 = L14_2 * 0.25
          L13_2 = L13_2 + L14_2
          L12_2.position = L13_2
          L13_2 = {}
          L12_2.handles = L13_2
          L13_2 = {}
          L14_2 = L5_2.position
          L15_2 = L5_2.forward
          L15_2 = L15_2 * -3.0
          L16_2 = L5_2.up
          L16_2 = L16_2 * 0.5
          L15_2 = L15_2 + L16_2
          L14_2 = L14_2 + L15_2
          L13_2.position = L14_2
          L14_2 = {}
          L13_2.handles = L14_2
          L11_2[1] = L12_2
          L11_2[2] = L13_2
          L5_2.smokes = L11_2
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L3_1
          L13_2 = L5_2
          L11_2(L12_2, L13_2)
        end
      end
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.sparklers
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.sparklers
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = Copy
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.sparklers
      L6_2 = L6_2[L4_2]
      L5_2 = L5_2(L6_2)
      L6_2 = CreateSpeakerOrSmokeOrSparklersMachine
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L7_2 = HasNamedPtfxAssetLoaded
        L8_2 = L5_2.fx
        L8_2 = L8_2.library
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = GetEntityMatrix
          L8_2 = L6_2
          L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
          L11_2 = {}
          L5_2.handles = L11_2
          L5_2.forward = L7_2
          L5_2.right = L8_2
          L5_2.up = L9_2
          L5_2.position = L10_2
          L5_2.handle = L6_2
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L4_1
          L13_2 = L5_2
          L11_2(L12_2, L13_2)
        end
      end
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.speakers
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.speakers
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = Copy
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.speakers
      L6_2 = L6_2[L4_2]
      L5_2 = L5_2(L6_2)
      L6_2 = CreateSpeakerOrSmokeOrSparklersMachine
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L7_2 = GetEntityMatrix
        L8_2 = L6_2
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        L5_2.forward = L7_2
        L5_2.right = L8_2
        L5_2.up = L9_2
        L5_2.position = L10_2
        L5_2.id = L4_2
        L5_2.handle = L6_2
        L11_2 = Ternary
        L12_2 = L5_2.volumeMultiplier
        L13_2 = 1.0
        L11_2 = L11_2(L12_2, L13_2)
        L5_2.originalVolumeMultiplier = L11_2
        L11_2 = table
        L11_2 = L11_2.insert
        L12_2 = L7_1
        L13_2 = L5_2
        L11_2(L12_2, L13_2)
        L11_2 = AddBrowserSpeaker
        L12_2 = L5_2
        L13_2 = A0_2
        L11_2(L12_2, L13_2)
      end
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.monitors
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.monitors
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = Copy
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.monitors
      L6_2 = L6_2[L4_2]
      L5_2 = L5_2(L6_2)
      L6_2 = CreateMonitorOrScreen
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L7_2 = GetEntityMatrix
        L8_2 = L6_2
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        L5_2.forward = L7_2
        L5_2.right = L8_2
        L5_2.up = L9_2
        L5_2.position = L10_2
        L5_2.handle = L6_2
        L11_2 = table
        L11_2 = L11_2.insert
        L12_2 = L5_1
        L13_2 = L5_2
        L11_2(L12_2, L13_2)
      end
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.screens
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.screens
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = Copy
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.screens
      L6_2 = L6_2[L4_2]
      L5_2 = L5_2(L6_2)
      L6_2 = CreateMonitorOrScreen
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L7_2 = GetEntityMatrix
        L8_2 = L6_2
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        L5_2.forward = L7_2
        L5_2.right = L8_2
        L5_2.up = L9_2
        L5_2.position = L10_2
        L5_2.handle = L6_2
        L11_2 = table
        L11_2 = L11_2.insert
        L12_2 = L6_1
        L13_2 = L5_2
        L11_2(L12_2, L13_2)
      end
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.spotlights
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.spotlights
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = Copy
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.spotlights
      L6_2 = L6_2[L4_2]
      L5_2 = L5_2(L6_2)
      L6_2 = CreateSpotlight
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L7_2 = GetEntityMatrix
        L8_2 = L6_2
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        L11_2 = {}
        L12_2 = L5_2.color
        L12_2 = L12_2[1]
        L13_2 = L5_2.color
        L13_2 = L13_2[2]
        L14_2 = L5_2.color
        L14_2 = L14_2[3]
        L11_2[1] = L12_2
        L11_2[2] = L13_2
        L11_2[3] = L14_2
        L5_2.originalColor = L11_2
        L11_2 = L46_1
        if L11_2 then
          L11_2 = {}
          L12_2 = 255
          L13_2 = 255
          L14_2 = 255
          L11_2[1] = L12_2
          L11_2[2] = L13_2
          L11_2[3] = L14_2
          L5_2.currentColor = L11_2
        else
          L11_2 = {}
          L12_2 = 0
          L13_2 = 0
          L14_2 = 0
          L11_2[1] = L12_2
          L11_2[2] = L13_2
          L11_2[3] = L14_2
          L5_2.currentColor = L11_2
        end
        L11_2 = {}
        L12_2 = 0
        L13_2 = 0
        L14_2 = 0
        L11_2[1] = L12_2
        L11_2[2] = L13_2
        L11_2[3] = L14_2
        L5_2.lastColor = L11_2
        L5_2.forward = L7_2
        L5_2.right = L8_2
        L5_2.up = L9_2
        L5_2.position = L10_2
        L5_2.handle = L6_2
        L11_2 = table
        L11_2 = L11_2.insert
        L12_2 = L2_1
        L13_2 = L5_2
        L11_2(L12_2, L13_2)
      end
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.scaleform
  if L1_2 then
    L1_2 = Ternary
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.scaleform
    L2_2 = L2_2.solid
    L3_2 = true
    L1_2 = L1_2(L2_2, L3_2)
    L9_1.solid = L1_2
    L1_2 = config
    L1_2 = L1_2.entries
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.scaleform
    L1_2 = L1_2.position
    L9_1.position = L1_2
    L1_2 = config
    L1_2 = L1_2.entries
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.scaleform
    L1_2 = L1_2.rotation
    L9_1.rotation = L1_2
    L1_2 = config
    L1_2 = L1_2.entries
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.scaleform
    L1_2 = L1_2.scale
    L9_1.scale = L1_2
    L9_1.draw = true
    L1_2 = L9_1.ready
    if L1_2 then
      L1_2 = SetScaleformTexture
      L2_2 = L9_1.handle
      L1_2(L2_2)
      L9_1.tick = true
    end
    L1_2 = SetBrowserFlagRatio
    L2_2 = Ternary
    L3_2 = config
    L3_2 = L3_2.entries
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.scaleform
    L3_2 = L3_2.flag
    L4_2 = false
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2(L3_2, L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  else
    L1_2 = SetBrowserFlagRatio
    L2_2 = false
    L1_2(L2_2)
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.replacers
  if L1_2 then
    L1_2 = config
    L1_2 = L1_2.entries
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.area
    L1_2 = L1_2.polygons
    if L1_2 then
      L1_2 = config
      L1_2 = L1_2.entries
      L1_2 = L1_2[A0_2]
      L1_2 = L1_2.area
      L1_2 = L1_2.polygons
      L1_2 = L1_2.hideReplacersOutside
      if not L1_2 then
        L1_2 = pairs
        L2_2 = config
        L2_2 = L2_2.entries
        L2_2 = L2_2[A0_2]
        L2_2 = L2_2.replacers
        L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
        for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
          L7_2 = AddReplaceTexture
          L8_2 = L5_2
          L9_2 = L6_2
          L10_2 = "browser"
          L11_2 = "browserTexture"
          L7_2(L8_2, L9_2, L10_2, L11_2)
        end
      end
    end
  end
  L1_2 = Ternary
  L2_2 = config
  L2_2 = L2_2.entries
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.idleWallpaperUrl
  L3_2 = "none"
  L1_2 = L1_2(L2_2, L3_2)
  L28_1 = L1_2
  L1_2 = SetBrowserIdleWallpaperUrl
  L2_2 = L28_1
  L1_2(L2_2)
  L1_2 = GetInteriorFromEntity
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L21_1 = L1_2
  L1_2 = true
  L57_1 = L1_2
  L1_2 = false
  L59_1 = L1_2
  L1_2 = SetScene
  L1_2()
  L1_2 = TriggerEvent
  L2_2 = "cs-hall:areaSynced"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = TriggerServerEvent
  L2_2 = "cs-hall:enteredSyncArea"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
SyncArea = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = L59_1
  if not L1_2 then
    L1_2 = L57_1
    if L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = true
  L59_1 = L1_2
  L1_2 = false
  L57_1 = L1_2
  L1_2 = HideUi
  L1_2()
  L1_2 = DesyncBrowser
  L1_2()
  L1_2 = 1
  L2_2 = L7_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = DeleteEntity
    L6_2 = L7_1
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.handle
    L5_2(L6_2)
  end
  L1_2 = 1
  L2_2 = L5_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = DeleteEntity
    L6_2 = L5_1
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.handle
    L5_2(L6_2)
  end
  L1_2 = 1
  L2_2 = L6_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = DeleteEntity
    L6_2 = L6_1
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.handle
    L5_2(L6_2)
  end
  L1_2 = 1
  L2_2 = L2_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.handle
    if L5_2 then
      L5_2 = DeleteEntity
      L6_2 = L2_1
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.handle
      L5_2(L6_2)
    end
  end
  L1_2 = 1
  L2_2 = L3_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L3_1
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = L3_1
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.smokes
      if L5_2 then
        L5_2 = 1
        L6_2 = L3_1
        L6_2 = L6_2[L4_2]
        L6_2 = L6_2.smokes
        L6_2 = #L6_2
        L7_2 = 1
        for L8_2 = L5_2, L6_2, L7_2 do
          L9_2 = 1
          L10_2 = L3_1
          L10_2 = L10_2[L4_2]
          L10_2 = L10_2.smokes
          L10_2 = L10_2[L8_2]
          L10_2 = L10_2.handles
          L10_2 = #L10_2
          L11_2 = 1
          for L12_2 = L9_2, L10_2, L11_2 do
            L13_2 = StopParticleFxLooped
            L14_2 = L3_1
            L14_2 = L14_2[L4_2]
            L14_2 = L14_2.smokes
            L14_2 = L14_2[L8_2]
            L14_2 = L14_2.handles
            L14_2 = L14_2[L12_2]
            L15_2 = false
            L13_2(L14_2, L15_2)
          end
        end
      end
    end
  end
  L1_2 = 1
  L2_2 = L4_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = 1
    L6_2 = L4_1
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.handles
    L6_2 = #L6_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = StopParticleFxLooped
      L10_2 = L4_1
      L10_2 = L10_2[L8_2]
      L10_2 = L10_2.handles
      L11_2 = ii
      L10_2 = L10_2[L11_2]
      L11_2 = false
      L9_2(L10_2, L11_2)
    end
  end
  L1_2 = {}
  L7_1 = L1_2
  L1_2 = {}
  L3_1 = L1_2
  L1_2 = {}
  L4_1 = L1_2
  L1_2 = {}
  L5_1 = L1_2
  L1_2 = {}
  L6_1 = L1_2
  L1_2 = {}
  L2_1 = L1_2
  L9_1.tick = false
  L9_1.draw = false
  L9_1.solid = true
  L9_1.position = nil
  L9_1.rotation = nil
  L9_1.scale = nil
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.smokers
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.smokers
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = RemoveNamedPtfxAsset
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.smokers
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.fx
      L6_2 = L6_2.library
      L5_2(L6_2)
      L5_2 = SetModelAsNoLongerNeeded
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.smokers
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.hash
      L5_2(L6_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.sparklers
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.sparklers
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = RemoveNamedPtfxAsset
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.sparklers
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.fx
      L6_2 = L6_2.library
      L5_2(L6_2)
      L5_2 = SetModelAsNoLongerNeeded
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.sparklers
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.hash
      L5_2(L6_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.speakers
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.speakers
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = SetModelAsNoLongerNeeded
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.speakers
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.hash
      L5_2(L6_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.spotlights
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.spotlights
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = SetModelAsNoLongerNeeded
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.spotlights
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.hash
      L5_2(L6_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.monitors
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.monitors
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = SetModelAsNoLongerNeeded
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.monitors
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.hash
      L5_2(L6_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.screens
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.screens
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = SetModelAsNoLongerNeeded
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.screens
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.hash
      L5_2(L6_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.disableEmitters
  if L1_2 then
    L1_2 = 1
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.disableEmitters
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = SetStaticEmitterEnabled
      L6_2 = config
      L6_2 = L6_2.entries
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.disableEmitters
      L6_2 = L6_2[L4_2]
      L7_2 = true
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.replacers
  if L1_2 then
    L1_2 = pairs
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.replacers
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = RemoveReplaceTexture
      L8_2 = L5_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = nil
  L28_1 = L1_2
  L1_2 = nil
  L21_1 = L1_2
  L1_2 = false
  L50_1 = L1_2
  L1_2 = false
  L40_1 = L1_2
  L1_2 = false
  L41_1 = L1_2
  L1_2 = false
  L53_1 = L1_2
  L1_2 = false
  L59_1 = L1_2
  L1_2 = L18_1.active
  if L1_2 then
    L1_2 = ResetScene
    L1_2()
  end
  L1_2 = TriggerEvent
  L2_2 = "cs-hall:areaDesynced"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = TriggerServerEvent
  L2_2 = "cs-hall:leftSyncArea"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
DesyncArea = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L60_1
  if not L1_2 then
    L1_2 = L58_1
    if not L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = true
  L60_1 = L1_2
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.replacers
  if L1_2 then
    L1_2 = pairs
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.replacers
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = AddReplaceTexture
      L8_2 = L5_2
      L9_2 = L6_2
      L10_2 = "browser"
      L11_2 = "browserTexture"
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
  L1_2 = true
  L58_1 = L1_2
  L1_2 = false
  L60_1 = L1_2
end
SyncHallArea = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L60_1
  if not L1_2 then
    L1_2 = L58_1
    if L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = true
  L60_1 = L1_2
  L1_2 = false
  L58_1 = L1_2
  L1_2 = config
  L1_2 = L1_2.entries
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.replacers
  if L1_2 then
    L1_2 = config
    L1_2 = L1_2.entries
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.area
    L1_2 = L1_2.polygons
    if L1_2 then
      L1_2 = config
      L1_2 = L1_2.entries
      L1_2 = L1_2[A0_2]
      L1_2 = L1_2.area
      L1_2 = L1_2.polygons
      L1_2 = L1_2.hideReplacersOutside
      if not L1_2 then
        goto lbl_47
      end
    end
    L1_2 = pairs
    L2_2 = config
    L2_2 = L2_2.entries
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.replacers
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = RemoveReplaceTexture
      L8_2 = L5_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  ::lbl_47::
  L1_2 = false
  L60_1 = L1_2
end
DesyncHallArea = L89_1
function L89_1()
  local L0_2, L1_2
  L12_1.bass = 0
  L12_1.mid = 0
  L12_1.treble = 0
  L12_1.lowMid = 0
  L12_1.highMid = 0
  L0_2 = L13_1.current
  L0_2.bass = 0
  L0_2 = L13_1.current
  L0_2.mid = 0
  L0_2 = L13_1.current
  L0_2.treble = 0
  L0_2 = L13_1.current
  L0_2.lowMid = 0
  L0_2 = L13_1.current
  L0_2.highMid = 0
  L0_2 = L13_1.previous
  L0_2.bass = 0
  L0_2 = L13_1.previous
  L0_2.mid = 0
  L0_2 = L13_1.previous
  L0_2.treble = 0
  L0_2 = L13_1.previous
  L0_2.lowMid = 0
  L0_2 = L13_1.previous
  L0_2.highMid = 0
  L13_1.time = 0
  L14_1.bass = 0
  L14_1.mid = 0
  L14_1.treble = 0
  L14_1.lowMid = 0
  L14_1.highMid = 0
  L15_1.bass = 0
  L15_1.mid = 0
  L15_1.treble = 0
  L15_1.lowMid = 0
  L15_1.highMid = 0
end
ResetFrequencyData = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L84_1
  if L2_2 then
    L2_2 = L85_1
    if not L2_2 then
      goto lbl_13
    end
  end
  L2_2 = {}
  L2_2.data = A0_2
  L2_2.temp = A1_2
  L86_1 = L2_2
  goto lbl_57
  ::lbl_13::
  L2_2 = true
  L85_1 = L2_2
  L2_2 = nil
  L86_1 = L2_2
  L2_2 = SendDuiMessage
  L3_2 = L20_1
  L4_2 = json
  L4_2 = L4_2.encode
  L5_2 = {}
  L5_2.type = "cs-hall:sync"
  L6_2 = L19_1
  L5_2.area = L6_2
  L6_2 = A0_2.playing
  L5_2.playing = L6_2
  L6_2 = A0_2.stopped
  L5_2.stopped = L6_2
  L6_2 = A0_2.time
  L5_2.time = L6_2
  L6_2 = A0_2.duration
  L5_2.duration = L6_2
  L6_2 = A0_2.volume
  L5_2.volume = L6_2
  L6_2 = A0_2.url
  L5_2.url = L6_2
  L6_2 = {}
  L7_2 = A1_2.force
  L6_2.force = L7_2
  L7_2 = A1_2.adjust
  L6_2.adjust = L7_2
  L7_2 = Ternary
  L8_2 = A1_2.media
  L9_2 = A1_2.media
  if L9_2 then
    L9_2 = A1_2.media
    L9_2 = L9_2.seek
  end
  L10_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.seek = L7_2
  L5_2.temp = L6_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  ::lbl_57::
end
SyncBrowser = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L84_1
  if L1_2 then
    L1_2 = SendDuiMessage
    L2_2 = L20_1
    L3_2 = json
    L3_2 = L3_2.encode
    L4_2 = {}
    L4_2.type = "cs-hall:adjust"
    L4_2.time = A0_2
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
AdjustBrowser = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L0_2 = L54_1
  if not L0_2 then
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetGameplayCamRot
  L2_2 = 2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityMatrix
  L3_2 = L0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  L6_2 = RotationToDirection
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L7_2 = GetEntityBoneIndexByName
  L8_2 = L0_2
  L9_2 = "BONETAG_HEAD"
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = Ternary
  L9_2 = -1 ~= L7_2
  L10_2 = GetWorldPositionOfEntityBone
  L11_2 = L0_2
  L12_2 = L7_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = {}
  L10_2 = 1
  L11_2 = L7_1
  L11_2 = #L11_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = L7_1
    L14_2 = L14_2[L13_2]
    L15_2 = L14_2.position
    L16_2 = Ternary
    L17_2 = L14_2.soundOffset
    L18_2 = vector3
    L19_2 = 0.0
    L20_2 = 0.0
    L21_2 = 0.0
    L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L18_2(L19_2, L20_2, L21_2)
    L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L15_2 = L15_2 + L16_2
    L16_2 = L14_2.forward
    L16_2 = L16_2 * -1
    L17_2 = Ternary
    L18_2 = L14_2.directionOffset
    L19_2 = vector3
    L20_2 = 1.0
    L21_2 = 1.0
    L22_2 = 1.0
    L19_2, L20_2, L21_2, L22_2, L23_2 = L19_2(L20_2, L21_2, L22_2)
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L16_2 = L16_2 * L17_2
    L17_2 = table
    L17_2 = L17_2.insert
    L18_2 = L9_2
    L19_2 = {}
    L20_2 = L14_2.id
    L19_2.id = L20_2
    L20_2 = config
    L20_2 = L20_2.entries
    L21_2 = L19_1
    L20_2 = L20_2[L21_2]
    L20_2 = L20_2.area
    L20_2 = L20_2.polygons
    if L20_2 then
      L20_2 = config
      L20_2 = L20_2.entries
      L21_2 = L19_1
      L20_2 = L20_2[L21_2]
      L20_2 = L20_2.area
      L20_2 = L20_2.polygons
      L20_2 = L20_2.invertLowPassApplication
      if L20_2 then
        L20_2 = Ternary
        L21_2 = L55_1
        L22_2 = 1.0
        L23_2 = 0.0
        L20_2 = L20_2(L21_2, L22_2, L23_2)
        if L20_2 then
          goto lbl_100
        end
      end
    end
    L20_2 = Ternary
    L21_2 = L55_1
    L22_2 = 0.0
    L23_2 = 1.0
    L20_2 = L20_2(L21_2, L22_2, L23_2)
    ::lbl_100::
    L19_2.lowPassFilterFade = L20_2
    L20_2 = {}
    L21_2 = L15_2.x
    L22_2 = L15_2.y
    L23_2 = L15_2.z
    L20_2[1] = L21_2
    L20_2[2] = L22_2
    L20_2[3] = L23_2
    L19_2.position = L20_2
    L20_2 = {}
    L21_2 = L16_2.x
    L22_2 = L16_2.y
    L23_2 = L16_2.z
    L20_2[1] = L21_2
    L20_2[2] = L22_2
    L20_2[3] = L23_2
    L19_2.orientation = L20_2
    L20_2 = L8_2 - L15_2
    L20_2 = #L20_2
    L19_2.distance = L20_2
    L17_2(L18_2, L19_2)
  end
  L10_2 = SendDuiMessage
  L11_2 = L20_1
  L12_2 = json
  L12_2 = L12_2.encode
  L13_2 = {}
  L13_2.type = "cs-hall:update"
  L14_2 = Ternary
  L15_2 = config
  L15_2 = L15_2.entries
  L16_2 = L19_1
  L15_2 = L15_2[L16_2]
  L15_2 = L15_2.area
  L15_2 = L15_2.polygons
  if L15_2 then
    L15_2 = config
    L15_2 = L15_2.entries
    L16_2 = L19_1
    L15_2 = L15_2[L16_2]
    L15_2 = L15_2.area
    L15_2 = L15_2.polygons
    L15_2 = L15_2.applyLowPassFilterOutside
  end
  L16_2 = true
  L17_2 = false
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L13_2.applyLowPassFilter = L14_2
  L14_2 = {}
  L15_2 = {}
  L16_2 = L4_2.x
  L17_2 = L4_2.y
  L18_2 = L4_2.z
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L14_2.up = L15_2
  L15_2 = {}
  L16_2 = L6_2.x
  L17_2 = L6_2.y
  L18_2 = L6_2.z
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L14_2.forward = L15_2
  L15_2 = {}
  L16_2 = L8_2.x
  L17_2 = L8_2.y
  L18_2 = L8_2.z
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L14_2.position = L15_2
  L13_2.listener = L14_2
  L13_2.speakers = L9_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L12_2(L13_2)
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
end
UpdateBrowser = L89_1
function L89_1()
  local L0_2, L1_2, L2_2
  L0_2 = true
  L84_1 = L0_2
  while true do
    L0_2 = L87_1
    L0_2 = #L0_2
    if not (L0_2 > 0) then
      break
    end
    L0_2 = L87_1
    L0_2 = L0_2[1]
    L0_2()
    L0_2 = table
    L0_2 = L0_2.remove
    L1_2 = L87_1
    L2_2 = 1
    L0_2(L1_2, L2_2)
  end
  L0_2 = L86_1
  if L0_2 then
    L0_2 = SyncBrowser
    L1_2 = L86_1.data
    L2_2 = L86_1.temp
    L0_2(L1_2, L2_2)
  end
end
OnBrowserManagerReady = L89_1
function L89_1()
  local L0_2, L1_2, L2_2
  L0_2 = false
  L85_1 = L0_2
  L0_2 = L86_1
  if L0_2 then
    L0_2 = SyncBrowser
    L1_2 = L86_1.data
    L2_2 = L86_1.temp
    L0_2(L1_2, L2_2)
  end
end
OnBrowserSynced = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L84_1
  if not L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L87_1
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = AddBrowserSpeaker
      L1_3 = A0_2
      L2_3 = A1_2
      L0_3(L1_3, L2_3)
    end
    L2_2(L3_2, L4_2)
  else
    L2_2 = Ternary
    L3_2 = A0_2.maxDistance
    L4_2 = config
    L4_2 = L4_2.entries
    L4_2 = L4_2[A1_2]
    L4_2 = L4_2.area
    L4_2 = L4_2.range
    L4_2 = L4_2 / 4
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = Ternary
    L4_2 = A0_2.refDistance
    L5_2 = config
    L5_2 = L5_2.entries
    L5_2 = L5_2[A1_2]
    L5_2 = L5_2.area
    L5_2 = L5_2.range
    L5_2 = L5_2 / 8
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = SendDuiMessage
    L5_2 = L20_1
    L6_2 = json
    L6_2 = L6_2.encode
    L7_2 = {}
    L7_2.type = "cs-hall:addSpeaker"
    L8_2 = A0_2.id
    L7_2.speakerId = L8_2
    L8_2 = Ternary
    L9_2 = L2_2 < L3_2
    L10_2 = L3_2 / 2
    L10_2 = L3_2 + L10_2
    L11_2 = L2_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2.maxDistance = L8_2
    L7_2.refDistance = L3_2
    L8_2 = Ternary
    L9_2 = A0_2.rolloffFactor
    L10_2 = 1.25
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.rolloffFactor = L8_2
    L8_2 = Ternary
    L9_2 = A0_2.coneInnerAngle
    L10_2 = 90
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.coneInnerAngle = L8_2
    L8_2 = Ternary
    L9_2 = A0_2.coneOuterAngle
    L10_2 = 180
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.coneOuterAngle = L8_2
    L8_2 = Ternary
    L9_2 = A0_2.coneOuterGain
    L10_2 = 0.5
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.coneOuterGain = L8_2
    L8_2 = Ternary
    L9_2 = A0_2.fadeDurationMs
    L10_2 = 250
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.fadeDurationMs = L8_2
    L8_2 = A0_2.originalVolumeMultiplier
    L7_2.volumeMultiplier = L8_2
    L8_2 = Ternary
    L9_2 = A0_2.lowPassGainReductionPercent
    L10_2 = 15
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.lowPassGainReductionPercent = L8_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
AddBrowserSpeaker = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L84_1
  if not L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L87_1
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = SetBrowserSpeakerVolume
      L1_3 = A0_2
      L2_3 = A1_2
      L0_3(L1_3, L2_3)
    end
    L2_2(L3_2, L4_2)
  else
    L2_2 = SendDuiMessage
    L3_2 = L20_1
    L4_2 = json
    L4_2 = L4_2.encode
    L5_2 = {}
    L5_2.type = "cs-hall:setSpeakerVolume"
    L5_2.speakerId = A0_2
    L6_2 = Ternary
    L7_2 = A1_2
    L8_2 = 1.0
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.volumeMultiplier = L6_2
    L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
SetBrowserSpeakerVolume = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L84_1
  if not L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = L87_1
    function L3_2()
      local L0_3, L1_3
      L0_3 = SetBrowserFlagRatio
      L1_3 = A0_2
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2)
  else
    L1_2 = SendDuiMessage
    L2_2 = L20_1
    L3_2 = json
    L3_2 = L3_2.encode
    L4_2 = {}
    L4_2.type = "cs-hall:setFlagRatio"
    L4_2.flag = A0_2
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
SetBrowserFlagRatio = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L84_1
  if not L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = L87_1
    function L3_2()
      local L0_3, L1_3
      L0_3 = SetBrowserIdleWallpaperUrl
      L1_3 = A0_2
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2)
  else
    L1_2 = SendDuiMessage
    L2_2 = L20_1
    L3_2 = json
    L3_2 = L3_2.encode
    L4_2 = {}
    L4_2.type = "cs-hall:setIdleWallpaperUrl"
    L4_2.url = A0_2
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
SetBrowserIdleWallpaperUrl = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L84_1
  if not L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = L87_1
    function L3_2()
      local L0_3, L1_3
      L0_3 = SetBrowserVideoToggle
      L1_3 = A0_2
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2)
  else
    L1_2 = SendDuiMessage
    L2_2 = L20_1
    L3_2 = json
    L3_2 = L3_2.encode
    L4_2 = {}
    L4_2.type = "cs-hall:setVideoToggle"
    L4_2.toggle = A0_2
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
SetBrowserVideoToggle = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L84_1
  if not L0_2 then
    L0_2 = table
    L0_2 = L0_2.insert
    L1_2 = L87_1
    function L2_2()
      local L0_3, L1_3
      L0_3 = DesyncBrowser
      L0_3()
    end
    L0_2(L1_2, L2_2)
  else
    L0_2 = SendDuiMessage
    L1_2 = L20_1
    L2_2 = json
    L2_2 = L2_2.encode
    L3_2 = {}
    L3_2.type = "cs-hall:desync"
    L2_2, L3_2 = L2_2(L3_2)
    L0_2(L1_2, L2_2, L3_2)
  end
end
DesyncBrowser = L89_1
function L89_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = L43_1
  if L3_2 then
    L3_2 = L18_1.active
    if L3_2 then
      if "smokeColor" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.smokers
        L3_2 = L3_2.colors
        L3_2 = L3_2[A2_2]
        if nil ~= L3_2 then
          L3_2 = L18_1.settings
          L3_2 = L3_2.smokers
          L3_2 = L3_2.colors
          L3_2 = L3_2[A2_2]
          return L3_2
        end
      elseif "sparklerColor" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.sparklers
        L3_2 = L3_2.colors
        L3_2 = L3_2[A2_2]
        if nil ~= L3_2 then
          L3_2 = L18_1.settings
          L3_2 = L3_2.sparklers
          L3_2 = L3_2.colors
          L3_2 = L3_2[A2_2]
          return L3_2
        end
      elseif "speakerVolume" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.speakers
        L3_2 = L3_2.volumes
        L3_2 = L3_2[A2_2]
        if nil ~= L3_2 then
          L3_2 = L18_1.settings
          L3_2 = L3_2.speakers
          L3_2 = L3_2.volumes
          L3_2 = L3_2[A2_2]
          return L3_2
        end
      elseif "spotlightColor" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.spotlights
        L3_2 = L3_2.colors
        L3_2 = L3_2[A2_2]
        if nil ~= L3_2 then
          L3_2 = L18_1.settings
          L3_2 = L3_2.spotlights
          L3_2 = L3_2.colors
          L3_2 = L3_2[A2_2]
          return L3_2
        end
      elseif "idleWallpaperUrl" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.idleWallpaperUrl
        if nil ~= L3_2 then
          L3_2 = L18_1.settings
          L3_2 = L3_2.idleWallpaperUrl
          return L3_2
        end
      elseif "whiteSpotlights" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.spotlights
        L3_2 = L3_2.white
        if nil ~= L3_2 then
          L3_2 = L18_1.settings
          L3_2 = L3_2.spotlights
          L3_2 = L3_2.white
          return L3_2
        end
      elseif "dynamicSpotlights" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.spotlights
        L3_2 = L3_2.dynamic
        if nil ~= L3_2 then
          L3_2 = L18_1.settings
          L3_2 = L3_2.spotlights
          L3_2 = L3_2.dynamic
          return L3_2
        end
      elseif "photorythmicSpotlights" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.spotlights
        L3_2 = L3_2.photorythmic
        if nil ~= L3_2 then
          L3_2 = L18_1.settings
          L3_2 = L3_2.spotlights
          L3_2 = L3_2.photorythmic
          return L3_2
        end
      elseif "videoToggle" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.videoToggle
        if nil ~= L3_2 then
          L3_2 = L18_1.settings
          L3_2 = L3_2.videoToggle
          return L3_2
        end
      elseif "bassSmoke" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.bass
        L3_2 = L3_2.smoke
        if "off" == L3_2 then
          L3_2 = nil
          return L3_2
        else
          L3_2 = L18_1.settings
          L3_2 = L3_2.bass
          L3_2 = L3_2.smoke
          if L3_2 then
            L3_2 = L18_1.settings
            L3_2 = L3_2.bass
            L3_2 = L3_2.smoke
            return L3_2
          end
        end
      elseif "bassSparklers" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.bass
        L3_2 = L3_2.sparklers
        if "off" == L3_2 then
          L3_2 = nil
          return L3_2
        else
          L3_2 = L18_1.settings
          L3_2 = L3_2.bass
          L3_2 = L3_2.sparklers
          if L3_2 then
            L3_2 = L18_1.settings
            L3_2 = L3_2.bass
            L3_2 = L3_2.sparklers
            return L3_2
          end
        end
      elseif "bassSmokeCooldownMs" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.bass
        L3_2 = L3_2.smoke
        if L3_2 then
          L3_2 = L18_1.settings
          L3_2 = L3_2.bass
          L3_2 = L3_2.smoke
          L3_2 = L3_2.cooldownMs
          if nil ~= L3_2 then
            L3_2 = L18_1.settings
            L3_2 = L3_2.bass
            L3_2 = L3_2.smoke
            L3_2 = L3_2.cooldownMs
            return L3_2
          end
        end
      elseif "bassSparklersCooldownMs" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.bass
        L3_2 = L3_2.sparklers
        if L3_2 then
          L3_2 = L18_1.settings
          L3_2 = L3_2.bass
          L3_2 = L3_2.sparklers
          L3_2 = L3_2.cooldownMs
          if nil ~= L3_2 then
            L3_2 = L18_1.settings
            L3_2 = L3_2.bass
            L3_2 = L3_2.sparklers
            L3_2 = L3_2.cooldownMs
            return L3_2
          end
        end
      elseif "bassSmokeColorWithDynamicSpotlights" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.bass
        L3_2 = L3_2.smoke
        if L3_2 then
          L3_2 = L18_1.settings
          L3_2 = L3_2.bass
          L3_2 = L3_2.smoke
          if "off" ~= L3_2 then
            L3_2 = L18_1.settings
            L3_2 = L3_2.bass
            L3_2 = L3_2.smoke
            L3_2 = L3_2.colorWithDynamicSpotlights
            if nil ~= L3_2 then
              L3_2 = L18_1.settings
              L3_2 = L3_2.bass
              L3_2 = L3_2.smoke
              L3_2 = L3_2.colorWithDynamicSpotlights
              return L3_2
            end
          end
        end
      elseif "bassSparklersColorWithDynamicSpotlights" == A0_2 then
        L3_2 = L18_1.settings
        L3_2 = L3_2.bass
        L3_2 = L3_2.sparklers
        if L3_2 then
          L3_2 = L18_1.settings
          L3_2 = L3_2.bass
          L3_2 = L3_2.smoke
          if "off" ~= L3_2 then
            L3_2 = L18_1.settings
            L3_2 = L3_2.bass
            L3_2 = L3_2.sparklers
            L3_2 = L3_2.colorWithDynamicSpotlights
            if nil ~= L3_2 then
              L3_2 = L18_1.settings
              L3_2 = L3_2.bass
              L3_2 = L3_2.sparklers
              L3_2 = L3_2.colorWithDynamicSpotlights
              return L3_2
            end
          end
        end
      end
    end
  end
  return A1_2
end
SceneVariable = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L18_1.SetIdleWallpaperUrl
  L1_2 = SceneVariable
  L2_2 = "idleWallpaperUrl"
  L3_2 = L28_1
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L1_2(L2_2, L3_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L0_2 = L18_1.SetVideoToggle
  L1_2 = SceneVariable
  L2_2 = "videoToggle"
  L3_2 = L49_1
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L1_2(L2_2, L3_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L0_2 = SceneVariable
  L1_2 = "whiteSpotlights"
  L2_2 = L46_1
  L0_2 = L0_2(L1_2, L2_2)
  L46_1 = L0_2
  L0_2 = SceneVariable
  L1_2 = "dynamicSpotlights"
  L2_2 = L47_1
  L0_2 = L0_2(L1_2, L2_2)
  L47_1 = L0_2
  L0_2 = SceneVariable
  L1_2 = "photorythmicSpotlights"
  L2_2 = L48_1
  L0_2 = L0_2(L1_2, L2_2)
  L48_1 = L0_2
  L0_2 = SyncSpotlightColors
  L0_2()
  L0_2 = SyncSpotlightStates
  L0_2()
  L0_2 = 1
  L1_2 = L7_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = SetBrowserSpeakerVolume
    L5_2 = L7_1
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.id
    L6_2 = SceneVariable
    L7_2 = "speakerVolume"
    L8_2 = L7_1
    L8_2 = L8_2[L3_2]
    L8_2 = L8_2.originalVolumeMultiplier
    L9_2 = L3_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
ActivateScenes = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = SetBrowserVideoToggle
  L1_2 = L49_1
  L0_2(L1_2)
  L0_2 = SetBrowserIdleWallpaperUrl
  L1_2 = L28_1
  L0_2(L1_2)
  L0_2 = L18_1.original
  L0_2 = L0_2.whiteSpotlights
  if nil ~= L0_2 then
    L0_2 = L18_1.original
    L0_2 = L0_2.whiteSpotlights
    L46_1 = L0_2
  end
  L0_2 = L18_1.original
  L0_2 = L0_2.dynamicSpotlights
  if nil ~= L0_2 then
    L0_2 = L18_1.original
    L0_2 = L0_2.dynamicSpotlights
    L47_1 = L0_2
  end
  L0_2 = L18_1.original
  L0_2 = L0_2.photorythmicSpotlights
  if nil ~= L0_2 then
    L0_2 = L18_1.original
    L0_2 = L0_2.photorythmicSpotlights
    L48_1 = L0_2
  end
  L0_2 = SyncSpotlightColors
  L0_2()
  L0_2 = SyncSpotlightStates
  L0_2()
  L0_2 = 1
  L1_2 = L7_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = SetBrowserSpeakerVolume
    L5_2 = L7_1
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.id
    L6_2 = L7_1
    L6_2 = L6_2[L3_2]
    L6_2 = L6_2.originalVolumeMultiplier
    L4_2(L5_2, L6_2)
  end
end
DeactivateScenes = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L27_1
  if L0_2 then
    L0_2 = L19_1
    if L0_2 then
      L0_2 = L11_1.playing
      if L0_2 then
        L1_2 = L27_1
        L0_2 = L8_1
        L0_2 = L0_2[L1_2]
        if L0_2 then
          L0_2 = L18_1.active
          if L0_2 then
            L0_2 = L18_1.identifier
            L1_2 = L27_1
            if L0_2 == L1_2 then
              goto lbl_79
            end
          end
          L0_2 = InArray
          L1_2 = L19_1
          L3_2 = L27_1
          L2_2 = L8_1
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.areas
          L0_2 = L0_2(L1_2, L2_2)
          if L0_2 then
            L18_1.active = true
            L0_2 = L19_1
            L18_1.area = L0_2
            L0_2 = L27_1
            L18_1.identifier = L0_2
            L1_2 = L27_1
            L0_2 = L8_1
            L0_2 = L0_2[L1_2]
            L0_2 = L0_2.register
            L1_2 = L18_1.identifier
            L0_2(L1_2)
            L0_2 = L27_1
            if L0_2 then
              L1_2 = L27_1
              L0_2 = L8_1
              L0_2 = L0_2[L1_2]
              if L0_2 then
                L1_2 = L27_1
                L0_2 = L8_1
                L0_2 = L0_2[L1_2]
                L0_2 = L0_2.ticker
                if L0_2 then
                  while true do
                    L0_2 = L18_1.active
                    if not L0_2 then
                      break
                    end
                    L0_2 = L27_1
                    if not L0_2 then
                      break
                    end
                    L0_2 = L18_1.identifier
                    if not L0_2 then
                      break
                    end
                    L0_2 = L18_1.identifier
                    L1_2 = L27_1
                    if L0_2 ~= L1_2 then
                      break
                    end
                    L1_2 = L27_1
                    L0_2 = L8_1
                    L0_2 = L0_2[L1_2]
                    L0_2 = L0_2.ticker
                    L1_2 = L18_1
                    L0_2(L1_2)
                    L0_2 = Wait
                    L1_2 = L74_1
                    L0_2(L1_2)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_79::
end
SetScene = L89_1
function L89_1()
  local L0_2, L1_2, L2_2
  L0_2 = L18_1.active
  if L0_2 then
    L18_1.active = false
    L18_1.area = nil
    L18_1.identifier = nil
    L0_2 = {}
    L1_2 = {}
    L1_2.smoke = nil
    L1_2.sparklers = nil
    L0_2.bass = L1_2
    L1_2 = {}
    L1_2.white = nil
    L1_2.dynamic = nil
    L1_2.photorythmic = nil
    L2_2 = {}
    L1_2.states = L2_2
    L2_2 = {}
    L1_2.colors = L2_2
    L0_2.spotlights = L1_2
    L1_2 = {}
    L2_2 = {}
    L1_2.colors = L2_2
    L0_2.smokers = L1_2
    L1_2 = {}
    L2_2 = {}
    L1_2.colors = L2_2
    L0_2.sparklers = L1_2
    L1_2 = {}
    L2_2 = {}
    L1_2.volumes = L2_2
    L0_2.speakers = L1_2
    L0_2.idleWallpaperUrl = nil
    L0_2.videoToggle = nil
    L18_1.settings = L0_2
  end
  L0_2 = DeactivateScenes
  L0_2()
end
ResetScene = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2
  if "off" == A0_2 then
    L1_2 = L18_1.settings
    L1_2 = L1_2.bass
    L1_2.smoke = "off"
  else
    L1_2 = L18_1.settings
    L1_2 = L1_2.bass
    if A0_2 then
      L2_2 = {}
      L3_2 = A0_2.cooldownMs
      L2_2.cooldownMs = L3_2
      L3_2 = A0_2.colorWithDynamicSpotlights
      L2_2.colorWithDynamicSpotlights = L3_2
      if L2_2 then
        goto lbl_20
      end
    end
    L2_2 = nil
    ::lbl_20::
    L1_2.smoke = L2_2
  end
end
L18_1.SetSmokeBassSettings = L89_1
function L89_1(A0_2)
  local L1_2, L2_2, L3_2
  if "off" == A0_2 then
    L1_2 = L18_1.settings
    L1_2 = L1_2.bass
    L1_2.sparklers = "off"
  else
    L1_2 = L18_1.settings
    L1_2 = L1_2.bass
    if A0_2 then
      L2_2 = {}
      L3_2 = A0_2.cooldownMs
      L2_2.cooldownMs = L3_2
      L3_2 = A0_2.colorWithDynamicSpotlights
      L2_2.colorWithDynamicSpotlights = L3_2
      if L2_2 then
        goto lbl_20
      end
    end
    L2_2 = nil
    ::lbl_20::
    L1_2.sparklers = L2_2
  end
end
L18_1.SetSparklersBassSettings = L89_1
function L89_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = L18_1.settings
  L3_2 = L3_2.spotlights
  L3_2.white = A0_2
  L3_2 = L18_1.settings
  L3_2 = L3_2.spotlights
  L3_2.dynamic = A1_2
  L3_2 = L18_1.settings
  L3_2 = L3_2.spotlights
  L3_2.photorythmic = A2_2
  L3_2 = L43_1
  if L3_2 then
    L3_2 = L18_1.active
    if L3_2 then
      L46_1 = A0_2
      L47_1 = A1_2
      L48_1 = A2_2
      L3_2 = SyncSpotlightColors
      L3_2()
    end
  end
end
L18_1.SetSpotlightsSettings = L89_1
function L89_1(A0_2, A1_2)
  local L2_2
  L2_2 = L2_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L18_1.settings
    L2_2 = L2_2.spotlights
    L2_2 = L2_2.states
    L2_2[A0_2] = A1_2
  end
  L2_2 = L43_1
  if L2_2 then
    L2_2 = L18_1.active
    if L2_2 then
      L2_2 = SyncSpotlightStates
      L2_2()
    end
  end
end
L18_1.SetSpotlightState = L89_1
function L89_1(A0_2, A1_2)
  local L2_2
  L2_2 = L2_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L18_1.settings
    L2_2 = L2_2.spotlights
    L2_2 = L2_2.colors
    L2_2[A0_2] = A1_2
  end
  L2_2 = L43_1
  if L2_2 then
    L2_2 = L18_1.active
    if L2_2 then
      L2_2 = SyncSpotlightColors
      L2_2()
    end
  end
end
L18_1.SetSpotlightColor = L89_1
function L89_1(A0_2, A1_2)
  local L2_2
  L2_2 = L3_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L18_1.settings
    L2_2 = L2_2.smokers
    L2_2 = L2_2.colors
    L2_2[A0_2] = A1_2
  end
end
L18_1.SetSmokerColor = L89_1
function L89_1(A0_2, A1_2)
  local L2_2
  L2_2 = L4_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L18_1.settings
    L2_2 = L2_2.sparklers
    L2_2 = L2_2.colors
    L2_2[A0_2] = A1_2
  end
end
L18_1.SetSparklerColor = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L7_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L18_1.settings
    L2_2 = L2_2.speakers
    L2_2 = L2_2.volumes
    L2_2[A0_2] = A1_2
    L2_2 = L43_1
    if L2_2 then
      L2_2 = L18_1.active
      if L2_2 then
        L2_2 = SetBrowserSpeakerVolume
        L3_2 = L7_1
        L3_2 = L3_2[A0_2]
        L3_2 = L3_2.id
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L18_1.SetSpeakerVolume = L89_1
function L89_1(A0_2)
  local L1_2, L2_2
  L1_2 = L18_1.settings
  L1_2.idleWallpaperUrl = A0_2
  L1_2 = L43_1
  if L1_2 then
    L1_2 = L18_1.active
    if L1_2 then
      L1_2 = SetBrowserIdleWallpaperUrl
      L2_2 = A0_2
      L1_2(L2_2)
    end
  end
end
L18_1.SetIdleWallpaperUrl = L89_1
function L89_1(A0_2)
  local L1_2, L2_2
  L1_2 = L18_1.settings
  L1_2.videoToggle = A0_2
  L1_2 = L43_1
  if L1_2 then
    L1_2 = L18_1.active
    if L1_2 then
      L1_2 = SetBrowserVideoToggle
      L2_2 = A0_2
      L1_2(L2_2)
    end
  end
end
L18_1.SetVideoToggle = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L19_1
  if L2_2 then
    L2_2 = L43_1
    if L2_2 then
      L2_2 = L18_1.active
      if L2_2 then
        L2_2 = CreateThread
        function L3_2()
          local L0_3, L1_3, L2_3
          L0_3 = DoSmoke
          L1_3 = A0_2
          if not L1_3 then
            L1_3 = GetSmokeColor
            L1_3 = L1_3()
          end
          L2_3 = A1_2
          L0_3(L1_3, L2_3)
        end
        L2_2(L3_2)
      end
    end
  end
end
L18_1.TriggerSmoke = L89_1
function L89_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L19_1
  if L2_2 then
    L2_2 = L43_1
    if L2_2 then
      L2_2 = L18_1.active
      if L2_2 then
        L2_2 = CreateThread
        function L3_2()
          local L0_3, L1_3, L2_3
          L0_3 = DoSparklers
          L1_3 = A0_2
          if not L1_3 then
            L1_3 = GetSparklersColor
            L1_3 = L1_3()
          end
          L2_3 = A1_2
          L0_3(L1_3, L2_3)
        end
        L2_2(L3_2)
      end
    end
  end
end
L18_1.TriggerSparklers = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L19_1
  if L0_2 then
    L0_2 = L43_1
    if L0_2 then
      L0_2 = L18_1.active
      if L0_2 then
        L0_2 = L42_1
        if not L0_2 then
          L0_2 = isController
          if L0_2 then
            L0_2 = TriggerServerEvent
            L1_2 = "cs-hall:triggerSetting"
            L2_2 = L19_1
            L3_2 = "screenControl"
            L0_2(L1_2, L2_2, L3_2)
          end
        end
      end
    end
  end
end
L18_1.AdvanceScreens = L89_1
function L89_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L19_1
  if L0_2 then
    L0_2 = L43_1
    if L0_2 then
      L0_2 = L18_1.active
      if L0_2 then
        L0_2 = L42_1
        if L0_2 then
          L0_2 = isController
          if L0_2 then
            L0_2 = TriggerServerEvent
            L1_2 = "cs-hall:triggerSetting"
            L2_2 = L19_1
            L3_2 = "screenControl"
            L0_2(L1_2, L2_2, L3_2)
          end
        end
      end
    end
  end
end
L18_1.RetractScreens = L89_1
function L89_1()
  local L0_2, L1_2
  L0_2 = ResetScene
  L0_2()
end
L18_1.Reset = L89_1
function L89_1()
  local L0_2, L1_2
  L0_2 = L2_1
  return L0_2
end
L18_1.GetSpotlights = L89_1
function L89_1()
  local L0_2, L1_2
  L0_2 = L3_1
  return L0_2
end
L18_1.GetSmokers = L89_1
function L89_1()
  local L0_2, L1_2
  L0_2 = L4_1
  return L0_2
end
L18_1.GetSparklers = L89_1
function L89_1()
  local L0_2, L1_2
  L0_2 = L7_1
  return L0_2
end
L18_1.GetSpeakers = L89_1
L89_1 = LerpCallback
L18_1.LerpCallback = L89_1
L89_1 = RegisterNUICallback
L90_1 = "browserReady"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = true
  L54_1 = L2_2
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "managerReady"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = OnBrowserManagerReady
  L2_2()
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "synced"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = OnBrowserSynced
  L2_2()
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "controllerInfo"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L57_1
  if L2_2 then
    L2_2 = A0_2.area
    L3_2 = L19_1
    if L2_2 == L3_2 then
      L2_2 = A0_2.dynamic
      L10_1.dynamic = L2_2
      L2_2 = L46_1
      if not L2_2 then
        L2_2 = L47_1
        if L2_2 then
          L2_2 = L10_1.dynamic
          if L2_2 then
            L2_2 = 1
            L3_2 = L2_1
            L3_2 = #L3_2
            L4_2 = 1
            for L5_2 = L2_2, L3_2, L4_2 do
              L6_2 = L2_1
              L6_2 = L6_2[L5_2]
              L7_2 = {}
              L8_2 = 0
              L9_2 = 0
              L10_2 = 0
              L7_2[1] = L8_2
              L7_2[2] = L9_2
              L7_2[3] = L10_2
              L6_2.currentColor = L7_2
            end
        end
        else
          L2_2 = 1
          L3_2 = L2_1
          L3_2 = #L3_2
          L4_2 = 1
          for L5_2 = L2_2, L3_2, L4_2 do
            L6_2 = L2_1
            L6_2 = L6_2[L5_2]
            L7_2 = GetSpotlightColor
            L8_2 = L5_2
            L9_2 = L2_1
            L9_2 = L9_2[L5_2]
            L9_2 = L9_2.originalColor
            L7_2 = L7_2(L8_2, L9_2)
            L6_2.currentColor = L7_2
          end
        end
      end
    end
  end
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "controllerError"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L57_1
  if L2_2 then
    L2_2 = A0_2.area
    L3_2 = L19_1
    if L2_2 == L3_2 then
      L2_2 = L38_1
      if L2_2 then
        L2_2 = A0_2.error
        L3_2 = A0_2.error
        if "E_SOURCE_ERROR" == L3_2 then
          L3_2 = config
          L3_2 = L3_2.lang
          L2_2 = L3_2.sourceError
        else
          L3_2 = A0_2.error
          if "E_TWITCH_CHANNEL_OFFLINE" == L3_2 then
            L3_2 = config
            L3_2 = L3_2.lang
            L2_2 = L3_2.twitchChannelOffline
          else
            L3_2 = A0_2.error
            if "E_TWITCH_VOD_SUB_ONLY" == L3_2 then
              L3_2 = config
              L3_2 = L3_2.lang
              L2_2 = L3_2.twitchVodSubOnly
            else
              L3_2 = A0_2.error
              if "E_TWITCH_PLAYBACK_BLOCKED" == L3_2 then
                L3_2 = config
                L3_2 = L3_2.lang
                L2_2 = L3_2.twitchError
              else
                L3_2 = A0_2.error
                if "E_YOUTUBE_ERROR" == L3_2 then
                  L3_2 = config
                  L3_2 = L3_2.lang
                  L2_2 = L3_2.youtubeError
                else
                  L3_2 = A0_2.error
                  if "E_SOURCE_NOT_FOUND" == L3_2 then
                    L3_2 = config
                    L3_2 = L3_2.lang
                    L2_2 = L3_2.sourceNotFound
                  end
                end
              end
            end
          end
        end
        L3_2 = SendNUIMessage
        L4_2 = {}
        L4_2.type = "cs-hall:error"
        L4_2.error = L2_2
        L3_2(L4_2)
      end
      L2_2 = L53_1
      if L2_2 then
        L2_2 = TriggerServerEvent
        L3_2 = "cs-hall:controllerError"
        L4_2 = L19_1
        L2_2(L3_2, L4_2)
      end
    end
  end
  L2_2 = ResetFrequencyData
  L2_2()
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "controllerEnded"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L57_1
  if L2_2 then
    L2_2 = A0_2.area
    L3_2 = L19_1
    if L2_2 == L3_2 then
      L2_2 = L53_1
      if L2_2 then
        L2_2 = TriggerServerEvent
        L3_2 = "cs-hall:controllerEnded"
        L4_2 = L19_1
        L2_2(L3_2, L4_2)
      end
    end
  end
  L2_2 = ResetFrequencyData
  L2_2()
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "controllerResync"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L57_1
  if L2_2 then
    L2_2 = A0_2.area
    L3_2 = L19_1
    if L2_2 == L3_2 then
      L2_2 = TriggerServerEvent
      L3_2 = "cs-hall:resync"
      L4_2 = L19_1
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "frequencyData"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.levels
  L2_2 = L2_2.bass
  L12_1.bass = L2_2
  L2_2 = A0_2.levels
  L2_2 = L2_2.mid
  L12_1.mid = L2_2
  L2_2 = A0_2.levels
  L2_2 = L2_2.treble
  L12_1.treble = L2_2
  L2_2 = A0_2.levels
  L2_2 = L2_2.lowMid
  L12_1.lowMid = L2_2
  L2_2 = A0_2.levels
  L2_2 = L2_2.highMid
  L12_1.highMid = L2_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = L13_1.time
  L2_2 = L2_2 - L3_2
  L3_2 = L63_1
  if L2_2 >= L3_2 then
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L13_1.time = L2_2
    L2_2 = L13_1.previous
    L3_2 = L13_1.current
    L3_2 = L3_2.bass
    L2_2.bass = L3_2
    L2_2 = L13_1.previous
    L3_2 = L13_1.current
    L3_2 = L3_2.mid
    L2_2.mid = L3_2
    L2_2 = L13_1.previous
    L3_2 = L13_1.current
    L3_2 = L3_2.treble
    L2_2.treble = L3_2
    L2_2 = L13_1.previous
    L3_2 = L13_1.current
    L3_2 = L3_2.lowMid
    L2_2.lowMid = L3_2
    L2_2 = L13_1.previous
    L3_2 = L13_1.current
    L3_2 = L3_2.highMid
    L2_2.highMid = L3_2
    L2_2 = L13_1.current
    L2_2.bass = 0
    L2_2 = L13_1.current
    L2_2.mid = 0
    L2_2 = L13_1.current
    L2_2.treble = 0
    L2_2 = L13_1.current
    L2_2.lowMid = 0
    L2_2 = L13_1.current
    L2_2.highMid = 0
    L14_1.bass = 0
    L14_1.mid = 0
    L14_1.treble = 0
    L14_1.lowMid = 0
    L14_1.highMid = 0
    L15_1.bass = 0
    L15_1.mid = 0
    L15_1.treble = 0
    L15_1.lowMid = 0
    L15_1.highMid = 0
  end
  L2_2 = L14_1.bass
  L3_2 = L12_1.bass
  L2_2 = L2_2 + L3_2
  L14_1.bass = L2_2
  L2_2 = L15_1.bass
  L2_2 = L2_2 + 1
  L15_1.bass = L2_2
  L2_2 = L13_1.current
  L3_2 = L14_1.bass
  L4_2 = L15_1.bass
  L3_2 = L3_2 / L4_2
  L2_2.bass = L3_2
  L2_2 = L14_1.mid
  L3_2 = L12_1.mid
  L2_2 = L2_2 + L3_2
  L14_1.mid = L2_2
  L2_2 = L15_1.mid
  L2_2 = L2_2 + 1
  L15_1.mid = L2_2
  L2_2 = L13_1.current
  L3_2 = L14_1.mid
  L4_2 = L15_1.mid
  L3_2 = L3_2 / L4_2
  L2_2.mid = L3_2
  L2_2 = L14_1.treble
  L3_2 = L12_1.treble
  L2_2 = L2_2 + L3_2
  L14_1.treble = L2_2
  L2_2 = L15_1.treble
  L2_2 = L2_2 + 1
  L15_1.treble = L2_2
  L2_2 = L13_1.current
  L3_2 = L14_1.treble
  L4_2 = L15_1.treble
  L3_2 = L3_2 / L4_2
  L2_2.treble = L3_2
  L2_2 = L14_1.lowMid
  L3_2 = L12_1.lowMid
  L2_2 = L2_2 + L3_2
  L14_1.lowMid = L2_2
  L2_2 = L15_1.lowMid
  L2_2 = L2_2 + 1
  L15_1.lowMid = L2_2
  L2_2 = L13_1.current
  L3_2 = L14_1.lowMid
  L4_2 = L15_1.lowMid
  L3_2 = L3_2 / L4_2
  L2_2.lowMid = L3_2
  L2_2 = L14_1.highMid
  L3_2 = L12_1.highMid
  L2_2 = L2_2 + L3_2
  L14_1.highMid = L2_2
  L2_2 = L15_1.highMid
  L2_2 = L2_2 + 1
  L15_1.highMid = L2_2
  L2_2 = L13_1.current
  L3_2 = L14_1.highMid
  L4_2 = L15_1.highMid
  L3_2 = L3_2 / L4_2
  L2_2.highMid = L3_2
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "mediaKey"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L57_1
  if L2_2 then
    L3_2 = L19_1
    L2_2 = L17_1
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L2_2 = CanAccessUi
      L2_2 = L2_2()
      if L2_2 then
        goto lbl_14
      end
    end
  end
  do return end
  ::lbl_14::
  L2_2 = A0_2.type
  if "play" == L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "cs-hall:play"
    L4_2 = L19_1
    L5_2 = true
    L6_2 = L38_1
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2.type
    if "pause" == L2_2 then
      L2_2 = TriggerServerEvent
      L3_2 = "cs-hall:pause"
      L4_2 = L19_1
      L5_2 = true
      L6_2 = L38_1
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      L2_2 = A0_2.type
      if "stop" == L2_2 then
        L2_2 = TriggerServerEvent
        L3_2 = "cs-hall:stop"
        L4_2 = L19_1
        L5_2 = true
        L6_2 = L38_1
        L2_2(L3_2, L4_2, L5_2, L6_2)
      else
        L2_2 = A0_2.type
        if "nexttrack" == L2_2 then
          L2_2 = TriggerServerEvent
          L3_2 = "cs-hall:nextQueueSong"
          L4_2 = L19_1
          L5_2 = true
          L6_2 = L38_1
          L2_2(L3_2, L4_2, L5_2, L6_2)
        end
      end
    end
  end
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "controllerPlayingInfo"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.area
  L3_2 = L19_1
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = L11_1.playing
  if not L2_2 then
    L2_2 = A0_2.playing
    if L2_2 then
      L2_2 = GetGameTimer
      L2_2 = L2_2()
      L24_1 = L2_2
  end
  else
    L2_2 = A0_2.playing
    if not L2_2 then
      L2_2 = nil
      L24_1 = L2_2
    end
  end
  L2_2 = A0_2.time
  L11_1.time = L2_2
  L2_2 = A0_2.duration
  L11_1.duration = L2_2
  L2_2 = A0_2.playing
  L11_1.playing = L2_2
  L2_2 = A0_2.time
  L18_1.time = L2_2
  L2_2 = A0_2.duration
  L18_1.duration = L2_2
  L2_2 = A0_2.playing
  L18_1.playing = L2_2
  L2_2 = SetScene
  L2_2()
  L2_2 = L18_1.active
  if L2_2 then
    L2_2 = L27_1
    if L2_2 then
      L3_2 = L27_1
      L2_2 = L8_1
      L2_2 = L2_2[L3_2]
      if L2_2 then
        goto lbl_48
      end
    end
    L2_2 = ResetScene
    L2_2()
  end
  ::lbl_48::
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "cs-hall:info"
  L4_2 = L11_1.time
  L3_2.time = L4_2
  L4_2 = L11_1.duration
  L3_2.duration = L4_2
  L2_2(L3_2)
  L2_2 = L11_1.duration
  if L2_2 then
    L2_2 = L11_1.duration
    L3_2 = L23_1
    if L2_2 ~= L3_2 then
      L2_2 = L11_1.duration
      L23_1 = L2_2
      L2_2 = L53_1
      if L2_2 then
        L2_2 = TriggerServerEvent
        L3_2 = "cs-hall:duration"
        L4_2 = L19_1
        L5_2 = L11_1.duration
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "controllerSeeked"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "cs-hall:seeked"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "colorData"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.colors
  L2_2 = L2_2.DarkVibrant
  L16_1.DarkVibrant = L2_2
  L2_2 = A0_2.colors
  L2_2 = L2_2.Vibrant
  L16_1.Vibrant = L2_2
  L2_2 = A0_2.colors
  L2_2 = L2_2.LightVibrant
  L16_1.LightVibrant = L2_2
  L2_2 = A0_2.colors
  L2_2 = L2_2.DarkMuted
  L16_1.DarkMuted = L2_2
  L2_2 = A0_2.colors
  L2_2 = L2_2.LightMuted
  L16_1.LightMuted = L2_2
  L2_2 = L46_1
  if not L2_2 then
    L2_2 = L47_1
    if L2_2 then
      L2_2 = L10_1.dynamic
      if L2_2 then
        L2_2 = 1
        L3_2 = L2_1
        L3_2 = #L3_2
        L4_2 = 1
        for L5_2 = L2_2, L3_2, L4_2 do
          L6_2 = L2_1
          L6_2 = L6_2[L5_2]
          L6_2 = L6_2.soundSyncType
          L7_2 = SOUND_SYNC_TYPE
          L7_2 = L7_2.BASS
          if L6_2 == L7_2 then
            L6_2 = L2_1
            L6_2 = L6_2[L5_2]
            L7_2 = A0_2.colors
            L7_2 = L7_2.DarkVibrant
            L6_2.currentColor = L7_2
          else
            L6_2 = L2_1
            L6_2 = L6_2[L5_2]
            L6_2 = L6_2.soundSyncType
            L7_2 = SOUND_SYNC_TYPE
            L7_2 = L7_2.MID
            if L6_2 == L7_2 then
              L6_2 = L2_1
              L6_2 = L6_2[L5_2]
              L7_2 = A0_2.colors
              L7_2 = L7_2.Vibrant
              L6_2.currentColor = L7_2
            else
              L6_2 = L2_1
              L6_2 = L6_2[L5_2]
              L6_2 = L6_2.soundSyncType
              L7_2 = SOUND_SYNC_TYPE
              L7_2 = L7_2.TREBLE
              if L6_2 == L7_2 then
                L6_2 = L2_1
                L6_2 = L6_2[L5_2]
                L7_2 = A0_2.colors
                L7_2 = L7_2.LightVibrant
                L6_2.currentColor = L7_2
              else
                L6_2 = L2_1
                L6_2 = L6_2[L5_2]
                L6_2 = L6_2.soundSyncType
                L7_2 = SOUND_SYNC_TYPE
                L7_2 = L7_2.LOW_MID
                if L6_2 == L7_2 then
                  L6_2 = L2_1
                  L6_2 = L6_2[L5_2]
                  L7_2 = A0_2.colors
                  L7_2 = L7_2.DarkMuted
                  L6_2.currentColor = L7_2
                else
                  L6_2 = L2_1
                  L6_2 = L6_2[L5_2]
                  L6_2 = L6_2.soundSyncType
                  L7_2 = SOUND_SYNC_TYPE
                  L7_2 = L7_2.HIGH_MID
                  if L6_2 == L7_2 then
                    L6_2 = L2_1
                    L6_2 = L6_2[L5_2]
                    L7_2 = A0_2.colors
                    L7_2 = L7_2.LightMuted
                    L6_2.currentColor = L7_2
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "urlAdded"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:addToQueue"
  L4_2 = L19_1
  L5_2 = A0_2.url
  L6_2 = A0_2.thumbnailUrl
  L7_2 = Ternary
  L8_2 = A0_2.thumbnailTitle
  L9_2 = false
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2.title
  L9_2 = Ternary
  L10_2 = A0_2.icon
  L11_2 = false
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "remoteControl"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = L19_1
  L2_2 = L17_1
  L5_2 = L19_1
  L4_2 = L17_1
  L4_2 = L4_2[L5_2]
  L4_2 = not L4_2
  L2_2[L3_2] = L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:resync"
  L4_2 = L19_1
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "setSceneIdentifier"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.identifier
  L27_1 = L2_2
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "playerPaused"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:pause"
  L4_2 = L19_1
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "playerPlayed"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:play"
  L4_2 = L19_1
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "playerStopped"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:stop"
  L4_2 = L19_1
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "playerSkipped"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:nextQueueSong"
  L4_2 = L19_1
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "playerLooped"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:toggleLoop"
  L4_2 = L19_1
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "changeVolume"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:changeVolume"
  L4_2 = L19_1
  L5_2 = A0_2.value
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "seek"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:seek"
  L4_2 = L19_1
  L5_2 = Ternary
  L6_2 = L11_1.duration
  if L6_2 then
    L6_2 = L11_1.duration
    L6_2 = L6_2 > 0
  end
  L7_2 = L11_1.duration
  L7_2 = L7_2 - 0.5
  L8_2 = A0_2.value
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "queueNow"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:queueNow"
  L4_2 = L19_1
  L5_2 = A0_2.index
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "queueNext"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:queueNext"
  L4_2 = L19_1
  L5_2 = A0_2.index
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "queueRemove"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:queueRemove"
  L4_2 = L19_1
  L5_2 = A0_2.index
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "toggleSetting"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:toggleSetting"
  L4_2 = L19_1
  L5_2 = A0_2.key
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "triggerSetting"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "cs-hall:triggerSetting"
  L4_2 = L19_1
  L5_2 = A0_2.key
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "inputBlur"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L38_1
  if L2_2 then
    L2_2 = SetNuiFocusKeepInput
    L3_2 = true
    L2_2(L3_2)
  end
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "inputFocus"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Wait
  L3_2 = 250
  L2_2(L3_2)
  L2_2 = SetNuiFocusKeepInput
  L3_2 = false
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "hideUi"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L38_1
  if L2_2 then
    L2_2 = HideUi
    L2_2()
  end
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNUICallback
L90_1 = "nuiReady"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = true
  L61_1 = L2_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "cs-hall:ready"
  L4_2 = config
  L4_2 = L4_2.lang
  L3_2.lang = L4_2
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNetEvent
L90_1 = "cs-hall:cui"
function L91_1(A0_2)
  local L1_2
  L1_2 = L38_1
  if L1_2 then
    L1_2 = HideUi
    L1_2()
  elseif not A0_2 then
    L1_2 = ShowUi
    L1_2()
  end
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNetEvent
L90_1 = "cs-hall:updater"
function L91_1(A0_2, A1_2)
  local L2_2
  L2_2 = L19_1
  if A0_2 == L2_2 then
    L53_1 = A1_2
    L2_2 = L53_1
    L18_1.isUpdater = L2_2
  end
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNetEvent
L90_1 = "cs-hall:controller"
function L91_1(A0_2, A1_2)
  local L2_2
  L2_2 = L19_1
  if A0_2 == L2_2 then
    isController = A1_2
    L2_2 = isController
    L18_1.isController = L2_2
  end
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNetEvent
L90_1 = "cs-hall:smoke"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L19_1
  if A0_2 == L2_2 then
    L2_2 = DoSmoke
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNetEvent
L90_1 = "cs-hall:sparklers"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L19_1
  if A0_2 == L2_2 then
    L2_2 = DoSparklers
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNetEvent
L90_1 = "cs-hall:queue"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L19_1
  if A0_2 == L2_2 then
    L88_1 = A1_2
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.type = "cs-hall:queue"
    L4_2 = L88_1
    L3_2.queue = L4_2
    L2_2(L3_2)
  end
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNetEvent
L90_1 = "cs-hall:client"
function L91_1()
  local L0_2, L1_2
  L0_2 = true
  L36_1 = L0_2
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNetEvent
L90_1 = "cs-hall:params"
function L91_1(A0_2, A1_2)
  local L2_2
  L25_1 = A0_2
  L26_1 = A1_2
  L2_2 = true
  L37_1 = L2_2
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNetEvent
L90_1 = "cs-hall:sync"
function L91_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = L19_1
  if A0_2 == L4_2 then
    L4_2 = config
    L4_2 = L4_2.debug
    if L4_2 then
      L4_2 = print
      L5_2 = "[debug] syncing"
      L6_2 = L6_1
      L6_2 = #L6_2
      L7_2 = A2_2.force
      L8_2 = A1_2.screens
      L8_2 = L8_2.advancedAt
      L9_2 = A1_2.screens
      L9_2 = L9_2.retractedAt
      L10_2 = A3_2
      L11_2 = A1_2.screens
      L11_2 = L11_2.advancingAt
      L12_2 = A1_2.screens
      L12_2 = L12_2.retractingAt
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
    L4_2 = A2_2.force
    if L4_2 then
      L4_2 = A1_2.screens
      L4_2 = L4_2.advancedAt
      if L4_2 then
        L4_2 = A1_2.screens
        L4_2 = L4_2.advancedAt
        if A3_2 > L4_2 then
          L4_2 = A1_2.screens
          L4_2 = L4_2.retractedAt
          if L4_2 then
            L4_2 = A1_2.screens
            L4_2 = L4_2.advancedAt
            L5_2 = A1_2.screens
            L5_2 = L5_2.retractedAt
            if not (L4_2 > L5_2) then
              goto lbl_53
            end
          end
          L4_2 = config
          L4_2 = L4_2.debug
          if L4_2 then
            L4_2 = print
            L5_2 = "[debug] advancing screens immediately"
            L4_2(L5_2)
          end
          L4_2 = AdvanceScreensImmediately
          L4_2()
        end
      end
    end
    ::lbl_53::
    L4_2 = L6_1
    L4_2 = #L4_2
    if L4_2 > 0 then
      L4_2 = A1_2.screens
      L4_2 = L4_2.advancedAt
      if L4_2 then
        L4_2 = A1_2.screens
        L4_2 = L4_2.advancedAt
        if A3_2 <= L4_2 then
          L4_2 = A1_2.screens
          L4_2 = L4_2.retractingAt
          if L4_2 then
            L4_2 = A1_2.screens
            L4_2 = L4_2.advancingAt
            L5_2 = A1_2.screens
            L5_2 = L5_2.retractingAt
            if not (L4_2 > L5_2) then
              goto lbl_91
            end
          end
          L4_2 = config
          L4_2 = L4_2.debug
          if L4_2 then
            L4_2 = print
            L5_2 = "[debug] advancing screens normally"
            L4_2(L5_2)
          end
          L4_2 = AdvanceScreens
          L5_2 = A1_2.screens
          L5_2 = L5_2.advancingAt
          L6_2 = A3_2
          L4_2(L5_2, L6_2)
          L4_2 = true
          L42_1 = L4_2
          L18_1.screensAdvanced = true
      end
      ::lbl_91::
      else
        L4_2 = A1_2.screens
        L4_2 = L4_2.retractedAt
        if L4_2 then
          L4_2 = A1_2.screens
          L4_2 = L4_2.retractedAt
          if A3_2 <= L4_2 then
            L4_2 = A1_2.screens
            L4_2 = L4_2.advancingAt
            if L4_2 then
              L4_2 = A1_2.screens
              L4_2 = L4_2.retractingAt
              L5_2 = A1_2.screens
              L5_2 = L5_2.advancingAt
              if not (L4_2 > L5_2) then
                goto lbl_124
              end
            end
            L4_2 = config
            L4_2 = L4_2.debug
            if L4_2 then
              L4_2 = print
              L5_2 = "[debug] retracting screens"
              L4_2(L5_2)
            end
            L4_2 = RetractScreens
            L5_2 = A1_2.screens
            L5_2 = L5_2.retractingAt
            L6_2 = A3_2
            L4_2(L5_2, L6_2)
            L4_2 = false
            L42_1 = L4_2
            L18_1.screensAdvanced = false
          end
        end
      end
    end
    ::lbl_124::
    L4_2 = SendNUIMessage
    L5_2 = {}
    L5_2.type = "cs-hall:sync"
    L6_2 = A1_2.media
    L5_2.media = L6_2
    L6_2 = A1_2.screens
    L5_2.screens = L6_2
    L6_2 = A1_2.settings
    L5_2.settings = L6_2
    L6_2 = L6_1
    L6_2 = #L6_2
    L6_2 = L6_2 > 0
    L5_2.hasScreens = L6_2
    L6_2 = L3_1
    L6_2 = #L6_2
    L6_2 = L6_2 > 0
    L5_2.hasSmokers = L6_2
    L6_2 = L4_1
    L6_2 = #L6_2
    L6_2 = L6_2 > 0
    L5_2.hasSparklers = L6_2
    L6_2 = config
    L6_2 = L6_2.entries
    L7_2 = L19_1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.bass
    L6_2 = config
    L6_2 = L6_2.entries
    L7_2 = L19_1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.bass
    L6_2 = L6_2.smoke
    L6_2 = not L6_2
    L6_2 = L6_2 and L6_2
    L5_2.hasAutoSmokers = L6_2
    L6_2 = config
    L6_2 = L6_2.entries
    L7_2 = L19_1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.bass
    L6_2 = config
    L6_2 = L6_2.entries
    L7_2 = L19_1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.bass
    L6_2 = L6_2.sparklers
    L6_2 = not L6_2
    L6_2 = L6_2 and L6_2
    L5_2.hasAutoSparklers = L6_2
    L6_2 = L2_1
    L6_2 = #L6_2
    L6_2 = L6_2 > 0
    L5_2.hasSpotlights = L6_2
    L6_2 = L7_1
    L6_2 = #L6_2
    L6_2 = L6_2 > 0
    L5_2.hasSpeakers = L6_2
    L7_2 = L19_1
    L6_2 = L17_1
    L6_2 = L6_2[L7_2]
    L5_2.remoteControl = L6_2
    L4_2(L5_2)
    L4_2 = A1_2.settings
    L4_2 = L4_2.scenesEnabled
    L43_1 = L4_2
    L4_2 = A1_2.settings
    L4_2 = L4_2.bassSmoke
    L44_1 = L4_2
    L4_2 = A1_2.settings
    L4_2 = L4_2.bassSparklers
    L45_1 = L4_2
    L4_2 = L43_1
    L18_1.enabled = L4_2
    L4_2 = L18_1.original
    L5_2 = A1_2.settings
    L5_2 = L5_2.whiteSpotlights
    L4_2.whiteSpotlights = L5_2
    L4_2 = L18_1.original
    L5_2 = A1_2.settings
    L5_2 = L5_2.dynamicSpotlights
    L4_2.dynamicSpotlights = L5_2
    L4_2 = L18_1.original
    L5_2 = A1_2.settings
    L5_2 = L5_2.photorythmicSpotlights
    L4_2.photorythmicSpotlights = L5_2
    L4_2 = L43_1
    if L4_2 then
      L4_2 = L18_1.active
      if L4_2 then
        goto lbl_250
      end
    end
    L4_2 = A1_2.settings
    L4_2 = L4_2.whiteSpotlights
    L46_1 = L4_2
    L4_2 = A1_2.settings
    L4_2 = L4_2.dynamicSpotlights
    L47_1 = L4_2
    L4_2 = A1_2.settings
    L4_2 = L4_2.photorythmicSpotlights
    L48_1 = L4_2
    ::lbl_250::
    L4_2 = A1_2.settings
    L4_2 = L4_2.videoToggle
    L49_1 = L4_2
    L4_2 = SyncSpotlightColors
    L4_2()
    L4_2 = L53_1
    if L4_2 then
      L4_2 = A1_2.media
      L4_2 = L4_2.duration
      if L4_2 then
        L4_2 = A1_2.media
        L4_2 = L4_2.duration
        if L4_2 > 0 then
          L4_2 = A1_2.media
          L4_2 = L4_2.time
          if L4_2 then
            L4_2 = L11_1.time
            if L4_2 then
              L4_2 = Round
              L5_2 = A1_2.media
              L5_2 = L5_2.time
              L4_2 = L4_2(L5_2)
              L5_2 = Round
              L6_2 = L11_1.time
              L5_2 = L5_2(L6_2)
              if L4_2 ~= L5_2 then
                L4_2 = L11_1.time
                L22_1 = L4_2
                L4_2 = TriggerServerEvent
                L5_2 = "cs-hall:time"
                L6_2 = L19_1
                L7_2 = L11_1.time
                L8_2 = true
                L4_2(L5_2, L6_2, L7_2, L8_2)
              end
            end
          end
        end
      end
    end
    L4_2 = A1_2.media
    L4_2 = L4_2.stopped
    if L4_2 then
      L4_2 = nil
      L23_1 = L4_2
    end
    L4_2 = L43_1
    if L4_2 then
      L4_2 = ActivateScenes
      L4_2()
    else
      L4_2 = DeactivateScenes
      L4_2()
    end
    L4_2 = SyncBrowser
    L5_2 = A1_2.media
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
    L4_2 = L43_1
    if L4_2 then
      L4_2 = L18_1.active
      if L4_2 then
        goto lbl_317
      end
    end
    L4_2 = SetBrowserVideoToggle
    L5_2 = L49_1
    L4_2(L5_2)
  end
  ::lbl_317::
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNetEvent
L90_1 = "cs-hall:adjust"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L19_1
  if A0_2 == L2_2 then
    L2_2 = AdjustBrowser
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNetEvent
L90_1 = "cs-hall:interfacelessFeatureUsed"
function L91_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerEvent
  L3_2 = "cs-hall:onInterfacelessFeatureUsed"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L89_1(L90_1, L91_1)
L89_1 = RegisterNetEvent
L90_1 = "cs-hall:setUiAccessible"
function L91_1(A0_2)
  local L1_2
  L39_1 = A0_2
end
L89_1(L90_1, L91_1)
L89_1 = AddEventHandler
L90_1 = "onResourceStop"
function L91_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = GetCurrentServerEndpoint
    L1_2 = L1_2()
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = L57_1
  if L1_2 then
    L1_2 = config
    L1_2 = L1_2.entries
    L2_2 = L19_1
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.replacers
    if L1_2 then
      L1_2 = pairs
      L2_2 = config
      L2_2 = L2_2.entries
      L3_2 = L19_1
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.replacers
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = RemoveReplaceTexture
        L8_2 = L5_2
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  L1_2 = L20_1
  if L1_2 then
    L1_2 = DestroyDui
    L2_2 = L20_1
    L1_2(L2_2)
  end
  L1_2 = L9_1.handle
  if L1_2 then
    L1_2 = SetScaleformMovieAsNoLongerNeeded
    L2_2 = L9_1.handle
    L1_2(L2_2)
  end
  L1_2 = 1
  L2_2 = L7_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = DeleteEntity
    L6_2 = L7_1
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.handle
    L5_2(L6_2)
  end
  L1_2 = 1
  L2_2 = L2_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.handle
    if L5_2 then
      L5_2 = DeleteEntity
      L6_2 = L2_1
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.handle
      L5_2(L6_2)
    end
  end
  L1_2 = 1
  L2_2 = L3_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = DeleteEntity
    L6_2 = L3_1
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.handle
    L5_2(L6_2)
  end
  L1_2 = 1
  L2_2 = L4_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = DeleteEntity
    L6_2 = L4_1
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.handle
    L5_2(L6_2)
  end
  L1_2 = 1
  L2_2 = L5_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = DeleteEntity
    L6_2 = L5_1
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.handle
    L5_2(L6_2)
  end
  L1_2 = 1
  L2_2 = L6_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = DeleteEntity
    L6_2 = L6_1
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.handle
    L5_2(L6_2)
  end
  L1_2 = pairs
  L2_2 = config
  L2_2 = L2_2.entries
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.enabled
    if L7_2 then
      L7_2 = L6_2.smokers
      if L7_2 then
        L7_2 = 1
        L8_2 = L6_2.smokers
        L8_2 = #L8_2
        L9_2 = 1
        for L10_2 = L7_2, L8_2, L9_2 do
          L11_2 = RemoveNamedPtfxAsset
          L12_2 = L6_2.smokers
          L12_2 = L12_2[L10_2]
          L12_2 = L12_2.fx
          L12_2 = L12_2.library
          L11_2(L12_2)
          L11_2 = SetModelAsNoLongerNeeded
          L12_2 = L6_2.smokers
          L12_2 = L12_2[L10_2]
          L12_2 = L12_2.hash
          L11_2(L12_2)
        end
      end
      L7_2 = L6_2.sparklers
      if L7_2 then
        L7_2 = 1
        L8_2 = L6_2.sparklers
        L8_2 = #L8_2
        L9_2 = 1
        for L10_2 = L7_2, L8_2, L9_2 do
          L11_2 = RemoveNamedPtfxAsset
          L12_2 = L6_2.sparklers
          L12_2 = L12_2[L10_2]
          L12_2 = L12_2.fx
          L12_2 = L12_2.library
          L11_2(L12_2)
          L11_2 = SetModelAsNoLongerNeeded
          L12_2 = L6_2.sparklers
          L12_2 = L12_2[L10_2]
          L12_2 = L12_2.hash
          L11_2(L12_2)
        end
      end
      L7_2 = L6_2.speakers
      if L7_2 then
        L7_2 = 1
        L8_2 = L6_2.speakers
        L8_2 = #L8_2
        L9_2 = 1
        for L10_2 = L7_2, L8_2, L9_2 do
          L11_2 = SetModelAsNoLongerNeeded
          L12_2 = L6_2.speakers
          L12_2 = L12_2[L10_2]
          L12_2 = L12_2.hash
          L11_2(L12_2)
        end
      end
      L7_2 = L6_2.spotlights
      if L7_2 then
        L7_2 = 1
        L8_2 = L6_2.spotlights
        L8_2 = #L8_2
        L9_2 = 1
        for L10_2 = L7_2, L8_2, L9_2 do
          L11_2 = SetModelAsNoLongerNeeded
          L12_2 = L6_2.spotlights
          L12_2 = L12_2[L10_2]
          L12_2 = L12_2.hash
          L11_2(L12_2)
        end
      end
      L7_2 = L6_2.monitors
      if L7_2 then
        L7_2 = 1
        L8_2 = L6_2.monitors
        L8_2 = #L8_2
        L9_2 = 1
        for L10_2 = L7_2, L8_2, L9_2 do
          L11_2 = SetModelAsNoLongerNeeded
          L12_2 = L6_2.monitors
          L12_2 = L12_2[L10_2]
          L12_2 = L12_2.hash
          L11_2(L12_2)
        end
      end
      L7_2 = L6_2.screens
      if L7_2 then
        L7_2 = 1
        L8_2 = L6_2.screens
        L8_2 = #L8_2
        L9_2 = 1
        for L10_2 = L7_2, L8_2, L9_2 do
          L11_2 = SetModelAsNoLongerNeeded
          L12_2 = L6_2.screens
          L12_2 = L12_2[L10_2]
          L12_2 = L12_2.hash
          L11_2(L12_2)
        end
      end
      L7_2 = L6_2.disableEmitters
      if L7_2 then
        L7_2 = 1
        L8_2 = L6_2.disableEmitters
        L8_2 = #L8_2
        L9_2 = 1
        for L10_2 = L7_2, L8_2, L9_2 do
          L11_2 = SetStaticEmitterEnabled
          L12_2 = L6_2.disableEmitters
          L12_2 = L12_2[L10_2]
          L13_2 = true
          L11_2(L12_2, L13_2)
        end
      end
    end
  end
end
L89_1(L90_1, L91_1)
L89_1 = CreateThread
function L90_1()
  local L0_2, L1_2, L2_2, L3_2
  while true do
    L0_2 = L20_1
    if L0_2 then
      L0_2 = IsDuiAvailable
      L1_2 = L20_1
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = L61_1
        if L0_2 then
          L0_2 = L54_1
          if L0_2 then
            L0_2 = L36_1
            if L0_2 then
              break
            end
          end
        end
      end
    end
    L0_2 = Wait
    L1_2 = L77_1
    L0_2(L1_2)
  end
  L0_2 = SendDuiMessage
  L1_2 = L20_1
  L2_2 = json
  L2_2 = L2_2.encode
  L3_2 = {}
  L3_2.type = "cs-hall:create"
  L2_2, L3_2 = L2_2(L3_2)
  L0_2(L1_2, L2_2, L3_2)
end
L89_1(L90_1)
L89_1 = CreateThread
function L90_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  while true do
    L0_2 = NetworkIsSessionStarted
    L0_2 = L0_2()
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = L75_1
    L0_2(L1_2)
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    L0_3 = TriggerServerEvent
    L1_3 = "cs-hall:fetch"
    L0_3(L1_3)
  end
  L0_2(L1_2)
  while true do
    L0_2 = L61_1
    if L0_2 then
      L0_2 = L37_1
      if L0_2 then
        break
      end
    end
    L0_2 = Wait
    L1_2 = L75_1
    L0_2(L1_2)
  end
  L0_2 = pairs
  L1_2 = config
  L1_2 = L1_2.entries
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.enabled
    if L6_2 then
      L6_2 = L5_2.smokers
      if L6_2 then
        L6_2 = 1
        L7_2 = L5_2.smokers
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = RequestAssetPtfx
          L11_2 = L5_2.smokers
          L11_2 = L11_2[L9_2]
          L11_2 = L11_2.fx
          L11_2 = L11_2.library
          L12_2 = "\""
          L13_2 = L4_2
          L14_2 = "\" - smoker index: "
          L15_2 = L9_2
          L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
          L10_2(L11_2, L12_2)
          L10_2 = L5_2.smokers
          L10_2 = L10_2[L9_2]
          L10_2 = L10_2.interior
          if not L10_2 then
            L10_2 = RequestAssetModel
            L11_2 = L5_2.smokers
            L11_2 = L11_2[L9_2]
            L11_2 = L11_2.hash
            L12_2 = "\""
            L13_2 = L4_2
            L14_2 = "\" - smoker index: "
            L15_2 = L9_2
            L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
            L10_2(L11_2, L12_2)
          end
          L10_2 = RemoveNamedPtfxAsset
          L11_2 = L5_2.smokers
          L11_2 = L11_2[L9_2]
          L11_2 = L11_2.fx
          L11_2 = L11_2.library
          L10_2(L11_2)
          L10_2 = SetModelAsNoLongerNeeded
          L11_2 = L5_2.smokers
          L11_2 = L11_2[L9_2]
          L11_2 = L11_2.hash
          L10_2(L11_2)
        end
      end
      L6_2 = L5_2.sparklers
      if L6_2 then
        L6_2 = 1
        L7_2 = L5_2.sparklers
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = RequestAssetPtfx
          L11_2 = L5_2.sparklers
          L11_2 = L11_2[L9_2]
          L11_2 = L11_2.fx
          L11_2 = L11_2.library
          L12_2 = "\""
          L13_2 = L4_2
          L14_2 = "\" - sparklers index: "
          L15_2 = L9_2
          L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
          L10_2(L11_2, L12_2)
          L10_2 = L5_2.sparklers
          L10_2 = L10_2[L9_2]
          L10_2 = L10_2.interior
          if not L10_2 then
            L10_2 = RequestAssetModel
            L11_2 = L5_2.sparklers
            L11_2 = L11_2[L9_2]
            L11_2 = L11_2.hash
            L12_2 = "\""
            L13_2 = L4_2
            L14_2 = "\" - sparklers index: "
            L15_2 = L9_2
            L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
            L10_2(L11_2, L12_2)
          end
          L10_2 = RemoveNamedPtfxAsset
          L11_2 = L5_2.sparklers
          L11_2 = L11_2[L9_2]
          L11_2 = L11_2.fx
          L11_2 = L11_2.library
          L10_2(L11_2)
          L10_2 = SetModelAsNoLongerNeeded
          L11_2 = L5_2.sparklers
          L11_2 = L11_2[L9_2]
          L11_2 = L11_2.hash
          L10_2(L11_2)
        end
      end
      L6_2 = L5_2.speakers
      if L6_2 then
        L6_2 = 1
        L7_2 = L5_2.speakers
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = L5_2.speakers
          L10_2 = L10_2[L9_2]
          L10_2 = L10_2.interior
          if not L10_2 then
            L10_2 = RequestAssetModel
            L11_2 = L5_2.speakers
            L11_2 = L11_2[L9_2]
            L11_2 = L11_2.hash
            L12_2 = "\""
            L13_2 = L4_2
            L14_2 = "\" - speaker index: "
            L15_2 = L9_2
            L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
            L10_2(L11_2, L12_2)
          end
          L10_2 = SetModelAsNoLongerNeeded
          L11_2 = L5_2.speakers
          L11_2 = L11_2[L9_2]
          L11_2 = L11_2.hash
          L10_2(L11_2)
        end
      end
      L6_2 = L5_2.spotlights
      if L6_2 then
        L6_2 = 1
        L7_2 = L5_2.spotlights
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = L5_2.spotlights
          L10_2 = L10_2[L9_2]
          L10_2 = L10_2.interior
          if not L10_2 then
            L10_2 = RequestAssetModel
            L11_2 = L5_2.spotlights
            L11_2 = L11_2[L9_2]
            L11_2 = L11_2.hash
            L12_2 = "\""
            L13_2 = L4_2
            L14_2 = "\" - spotlight index: "
            L15_2 = L9_2
            L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
            L10_2(L11_2, L12_2)
          end
          L10_2 = SetModelAsNoLongerNeeded
          L11_2 = L5_2.spotlights
          L11_2 = L11_2[L9_2]
          L11_2 = L11_2.hash
          L10_2(L11_2)
        end
      end
      L6_2 = L5_2.monitors
      if L6_2 then
        L6_2 = 1
        L7_2 = L5_2.monitors
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = L5_2.monitors
          L10_2 = L10_2[L9_2]
          L10_2 = L10_2.interior
          if not L10_2 then
            L10_2 = RequestAssetModel
            L11_2 = L5_2.monitors
            L11_2 = L11_2[L9_2]
            L11_2 = L11_2.hash
            L12_2 = "\""
            L13_2 = L4_2
            L14_2 = "\" - monitor index: "
            L15_2 = L9_2
            L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
            L10_2(L11_2, L12_2)
          end
          L10_2 = SetModelAsNoLongerNeeded
          L11_2 = L5_2.monitors
          L11_2 = L11_2[L9_2]
          L11_2 = L11_2.hash
          L10_2(L11_2)
        end
      end
      L6_2 = L5_2.screens
      if L6_2 then
        L6_2 = 1
        L7_2 = L5_2.screens
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = L5_2.screens
          L10_2 = L10_2[L9_2]
          L10_2 = L10_2.interior
          if not L10_2 then
            L10_2 = RequestAssetModel
            L11_2 = L5_2.screens
            L11_2 = L11_2[L9_2]
            L11_2 = L11_2.hash
            L12_2 = "\""
            L13_2 = L4_2
            L14_2 = "\" - screen index: "
            L15_2 = L9_2
            L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
            L10_2(L11_2, L12_2)
          end
          L10_2 = SetModelAsNoLongerNeeded
          L11_2 = L5_2.screens
          L11_2 = L11_2[L9_2]
          L11_2 = L11_2.hash
          L10_2(L11_2)
        end
      end
      L6_2 = L5_2.disableEmitters
      if L6_2 then
        L6_2 = 1
        L7_2 = L5_2.disableEmitters
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = SetStaticEmitterEnabled
          L11_2 = L5_2.disableEmitters
          L11_2 = L11_2[L9_2]
          L12_2 = false
          L10_2(L11_2, L12_2)
        end
      end
    end
  end
  L0_2 = CreateDui
  L1_2 = L25_1
  L2_2 = "?v="
  L3_2 = L26_1
  L4_2 = "+"
  L5_2 = L0_1
  L6_2 = config
  L6_2 = L6_2.debug
  if L6_2 then
    L6_2 = "&debug=1"
    if L6_2 then
      goto lbl_269
    end
  end
  L6_2 = ""
  ::lbl_269::
  L7_2 = "#"
  L8_2 = GetCurrentResourceName
  L8_2 = L8_2()
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L2_2 = 1280
  L3_2 = 720
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L20_1 = L0_2
  L0_2 = CreateRuntimeTextureFromDuiHandle
  L1_2 = CreateRuntimeTxd
  L2_2 = "browser"
  L1_2 = L1_2(L2_2)
  L2_2 = "browserTexture"
  L3_2 = GetDuiHandle
  L4_2 = L20_1
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L3_2(L4_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L0_2 = TriggerServerEvent
  L1_2 = "cs-hall:server"
  L0_2(L1_2)
  L0_2 = AddEventHandler
  L1_2 = "cs-hall:integrationReady"
  function L2_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "cs-hall:ready"
    L0_3(L1_3)
  end
  L0_2(L1_2, L2_2)
  L0_2 = TriggerEvent
  L1_2 = "cs-hall:ready"
  L0_2(L1_2)
  L0_2 = false
  L1_2 = pairs
  L2_2 = config
  L2_2 = L2_2.entries
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.enabled
    if L7_2 then
      L7_2 = L6_2.scaleform
      if L7_2 then
        L0_2 = true
        break
      end
    end
  end
  if L0_2 then
    L9_1.interval = true
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3
      while true do
        L0_3 = L9_1.interval
        if not L0_3 then
          break
        end
        L0_3 = L36_1
        if L0_3 then
          L0_3 = L9_1.first
          if not L0_3 then
            L0_3 = GetGameTimer
            L0_3 = L0_3()
            L9_1.first = L0_3
          end
          L0_3 = L9_1.handle
          if L0_3 then
            L0_3 = HasScaleformMovieLoaded
            L1_3 = L9_1.handle
            L0_3 = L0_3(L1_3)
            if L0_3 then
              L9_1.interval = false
              L9_1.ready = true
              L0_3 = L9_1.draw
              if L0_3 then
                L0_3 = SetScaleformTexture
                L1_3 = L9_1.handle
                L0_3(L1_3)
                L9_1.tick = true
              end
          end
          else
            L0_3 = GetGameTimer
            L0_3 = L0_3()
            L1_3 = L9_1.first
            L0_3 = L0_3 - L1_3
            L1_3 = config
            L1_3 = L1_3.timeouts
            L1_3 = L1_3.scaleformRequestMs
            if L0_3 >= L1_3 then
              L9_1.tick = false
              L9_1.interval = false
              L9_1.failed = true
              L0_3 = error
              L1_3 = "[criticalscripts.shop] cs-hall enabled renderer scaleform which is included by default in \"cs-stream\" resource could not be loaded, consult the package's store page for further information."
              L0_3(L1_3)
            else
              L0_3 = RequestScaleformMovie
              L1_3 = L1_1
              L0_3 = L0_3(L1_3)
              L9_1.handle = L0_3
            end
          end
        end
        L0_3 = Wait
        L1_3 = L67_1
        L0_3(L1_3)
      end
    end
    L1_2(L2_2)
  end
  while true do
    L1_2 = L61_1
    if L1_2 then
      L1_2 = L36_1
      if L1_2 then
        L1_2 = L62_1
        if L1_2 then
          L1_2 = GetGameTimer
          L1_2 = L1_2()
          L2_2 = L33_1
          L2_2 = L1_2 - L2_2
          L3_2 = L71_1
          if L2_2 > L3_2 then
            L33_1 = L1_2
            L2_2 = L57_1
            if L2_2 then
              L2_2 = L38_1
              if L2_2 then
                L2_2 = CanAccessUi
                L2_2 = L2_2()
                if not L2_2 then
                  L2_2 = HideUi
                  L2_2()
                end
              end
            end
            L2_2 = nil
            L3_2 = PlayerPedId
            L3_2 = L3_2()
            L4_2 = GetEntityCoords
            L5_2 = L3_2
            L4_2 = L4_2(L5_2)
            L5_2 = pairs
            L6_2 = config
            L6_2 = L6_2.entries
            L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
            for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
              L11_2 = L10_2.enabled
              if L11_2 then
                L11_2 = L10_2.area
                L11_2 = L11_2.center
                L11_2 = L4_2 - L11_2
                L11_2 = #L11_2
                L12_2 = L10_2.area
                L12_2 = L12_2.range
                if L11_2 <= L12_2 then
                  L11_2 = L10_2.area
                  L11_2 = L11_2.height
                  if L11_2 then
                    L11_2 = L4_2.z
                    L12_2 = L10_2.area
                    L12_2 = L12_2.height
                    L12_2 = L12_2.min
                    if not (L11_2 >= L12_2) then
                      goto lbl_390
                    end
                    L11_2 = L4_2.z
                    L12_2 = L10_2.area
                    L12_2 = L12_2.height
                    L12_2 = L12_2.max
                    if not (L11_2 <= L12_2) then
                      goto lbl_390
                    end
                  end
                  L2_2 = L9_2
                  break
                end
              end
              ::lbl_390::
            end
            L5_2 = L57_1
            if L5_2 then
              L5_2 = L19_1
              if L5_2 ~= L2_2 then
                L5_2 = DesyncHallArea
                L6_2 = L19_1
                L5_2(L6_2)
                L5_2 = DesyncArea
                L6_2 = L19_1
                L5_2(L6_2)
                L5_2 = false
                L56_1 = L5_2
                L5_2 = false
                L55_1 = L5_2
              end
            end
            L5_2 = not L2_2
            L5_2 = not L5_2
            L6_2 = L56_1
            if L5_2 ~= L6_2 then
              L6_2 = L59_1
              if not L6_2 then
                L56_1 = L5_2
                if L5_2 then
                  L6_2 = SyncArea
                  L7_2 = L2_2
                  L6_2(L7_2)
                else
                  L6_2 = DesyncArea
                  L7_2 = L19_1
                  L6_2(L7_2)
                end
              end
            end
            L6_2 = L19_1
            if L6_2 ~= L2_2 then
              L6_2 = {}
              L88_1 = L6_2
              if L2_2 then
                L6_2 = TriggerEvent
                L7_2 = "cs-hall:onAreaEntered"
                L8_2 = L2_2
                L6_2(L7_2, L8_2)
              else
                L6_2 = TriggerEvent
                L7_2 = "cs-hall:onAreaLeft"
                L8_2 = L19_1
                L6_2(L7_2, L8_2)
              end
            end
            L19_1 = L2_2
            if L5_2 then
              L6_2 = GetInteriorFromEntity
              L7_2 = L3_2
              L6_2 = L6_2(L7_2)
              L7_2 = L21_1
              if L7_2 ~= L6_2 then
                L21_1 = L6_2
                L7_2 = CreateThread
                function L8_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
                  L0_3 = 1
                  L1_3 = L2_1
                  L1_3 = #L1_3
                  L2_3 = 1
                  for L3_3 = L0_3, L1_3, L2_3 do
                    L4_3 = L2_1
                    L4_3 = L4_3[L3_3]
                    L4_3 = L4_3.handle
                    if L4_3 then
                      L4_3 = DeleteEntity
                      L5_3 = L2_1
                      L5_3 = L5_3[L3_3]
                      L5_3 = L5_3.handle
                      L4_3(L5_3)
                    end
                    L4_3 = L2_1
                    L4_3 = L4_3[L3_3]
                    L4_3.handle = nil
                    L4_3 = config
                    L4_3 = L4_3.entries
                    L5_3 = L19_1
                    L4_3 = L4_3[L5_3]
                    L4_3 = L4_3.spotlights
                    if L4_3 then
                      L4_3 = 1
                      L5_3 = config
                      L5_3 = L5_3.entries
                      L6_3 = L19_1
                      L5_3 = L5_3[L6_3]
                      L5_3 = L5_3.spotlights
                      L5_3 = #L5_3
                      L6_3 = 1
                      for L7_3 = L4_3, L5_3, L6_3 do
                        L8_3 = SetModelAsNoLongerNeeded
                        L9_3 = config
                        L9_3 = L9_3.entries
                        L10_3 = L19_1
                        L9_3 = L9_3[L10_3]
                        L9_3 = L9_3.spotlights
                        L9_3 = L9_3[L7_3]
                        L9_3 = L9_3.hash
                        L8_3(L9_3)
                      end
                    end
                    L4_3 = RequestAssetModel
                    L5_3 = L2_1
                    L5_3 = L5_3[L3_3]
                    L5_3 = L5_3.hash
                    L4_3(L5_3)
                    L4_3 = L2_1
                    L4_3 = L4_3[L3_3]
                    L5_3 = CreateSpotlight
                    L6_3 = L2_1
                    L6_3 = L6_3[L3_3]
                    L5_3 = L5_3(L6_3)
                    L4_3.handle = L5_3
                    L4_3 = L50_1
                    if L4_3 then
                      L4_3 = TurnOnSpotlights
                      L4_3()
                    else
                      L4_3 = TurnOffSpotlights
                      L4_3()
                    end
                    L4_3 = SyncSpotlightColors
                    L4_3()
                  end
                end
                L7_2(L8_2)
              end
              L7_2 = Ternary
              L8_2 = config
              L8_2 = L8_2.entries
              L9_2 = L19_1
              L8_2 = L8_2[L9_2]
              L8_2 = L8_2.area
              L8_2 = L8_2.polygons
              L9_2 = IsPositionInsideArea
              L10_2 = L4_2
              L9_2 = L9_2(L10_2)
              L10_2 = true
              L7_2 = L7_2(L8_2, L9_2, L10_2)
              L8_2 = L55_1
              if L7_2 ~= L8_2 then
                L8_2 = L60_1
                if not L8_2 then
                  if L7_2 then
                    L8_2 = SyncHallArea
                    L9_2 = L19_1
                    L8_2(L9_2)
                  else
                    L8_2 = DesyncHallArea
                    L9_2 = L19_1
                    L8_2(L9_2)
                  end
                  L55_1 = L7_2
                end
              end
            end
          end
          L2_2 = L57_1
          if L2_2 then
            L2_2 = L31_1
            L2_2 = L1_2 - L2_2
            L3_2 = L70_1
            if L2_2 > L3_2 then
              L31_1 = L1_2
              L2_2 = UpdateBrowser
              L2_2()
            end
            L2_2 = L32_1
            L2_2 = L1_2 - L2_2
            L3_2 = L69_1
            if L2_2 > L3_2 then
              L32_1 = L1_2
              L2_2 = L11_1.playing
              if not L2_2 then
                L2_2 = L46_1
                if not L2_2 then
                  goto lbl_516
                end
                L2_2 = L48_1
                if L2_2 then
                  goto lbl_516
                end
              end
              L2_2 = L58_1
              ::lbl_516::
              if not L2_2 then
                L2_2 = L50_1
                if L2_2 then
                  L2_2 = TurnOffSpotlights
                  L2_2()
              end
              else
                L2_2 = L11_1.playing
                if not L2_2 then
                  L2_2 = L46_1
                  if not L2_2 then
                    goto lbl_539
                  end
                  L2_2 = L48_1
                  if L2_2 then
                    goto lbl_539
                  end
                end
                L2_2 = L58_1
                if L2_2 then
                  L2_2 = L50_1
                  if not L2_2 then
                    L2_2 = TurnOnSpotlights
                    L2_2()
                  end
                end
              end
              ::lbl_539::
              L2_2 = PlayerId
              L2_2 = L2_2()
              L3_2 = L11_1.playing
              if L3_2 then
                L3_2 = nil
                L4_2 = nil
                L3_2 = L12_1.bass
                L5_2 = L13_1.previous
                L4_2 = L5_2.bass
                L5_2 = 255
                if L4_2 >= L5_2 then
                  L4_2 = 255
                else
                  L5_2 = L66_1
                  if L4_2 <= L5_2 then
                    L4_2 = L66_1
                  end
                end
                L5_2 = GetGameTimer
                L5_2 = L5_2()
                L6_2 = 0
                L7_2 = L58_1
                if L7_2 and L3_2 >= L4_2 then
                  L7_2 = L53_1
                  if L7_2 then
                    L7_2 = L24_1
                    if L7_2 then
                      L7_2 = config
                      L7_2 = L7_2.entries
                      L8_2 = L19_1
                      L7_2 = L7_2[L8_2]
                      L7_2 = L7_2.bass
                      if L7_2 then
                        L7_2 = L24_1
                        L7_2 = L5_2 - L7_2
                        L8_2 = Ternary
                        L9_2 = config
                        L9_2 = L9_2.entries
                        L10_2 = L19_1
                        L9_2 = L9_2[L10_2]
                        L9_2 = L9_2.delayToTriggerBassEffectsAfterPlayingMs
                        L10_2 = L83_1
                        L8_2 = L8_2(L9_2, L10_2)
                        if L7_2 >= L8_2 then
                          L7_2 = L44_1
                          if L7_2 then
                            L7_2 = SceneVariable
                            L8_2 = "bassSmoke"
                            L9_2 = config
                            L9_2 = L9_2.entries
                            L10_2 = L19_1
                            L9_2 = L9_2[L10_2]
                            L9_2 = L9_2.bass
                            L9_2 = L9_2.smoke
                            L7_2 = L7_2(L8_2, L9_2)
                            if L7_2 then
                              L7_2 = L64_1
                              if L3_2 >= L7_2 then
                                L7_2 = L29_1
                                L7_2 = L5_2 - L7_2
                                L8_2 = SceneVariable
                                L9_2 = "bassSmokeCooldownMs"
                                L10_2 = config
                                L10_2 = L10_2.entries
                                L11_2 = L19_1
                                L10_2 = L10_2[L11_2]
                                L10_2 = L10_2.bass
                                L10_2 = L10_2.smoke
                                L10_2 = L10_2.cooldownMs
                                L8_2 = L8_2(L9_2, L10_2)
                                if L7_2 >= L8_2 then
                                  L29_1 = L5_2
                                  L7_2 = TriggerServerEvent
                                  L8_2 = "cs-hall:smoke"
                                  L9_2 = L19_1
                                  L10_2 = GetSmokeColor
                                  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2()
                                  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
                                end
                              end
                            end
                          end
                          L7_2 = L45_1
                          if L7_2 then
                            L7_2 = SceneVariable
                            L8_2 = "bassSparklers"
                            L9_2 = config
                            L9_2 = L9_2.entries
                            L10_2 = L19_1
                            L9_2 = L9_2[L10_2]
                            L9_2 = L9_2.bass
                            L9_2 = L9_2.sparklers
                            L7_2 = L7_2(L8_2, L9_2)
                            if L7_2 then
                              L7_2 = L65_1
                              if L3_2 >= L7_2 then
                                L7_2 = L30_1
                                L7_2 = L5_2 - L7_2
                                L8_2 = SceneVariable
                                L9_2 = "bassSparklersCooldownMs"
                                L10_2 = config
                                L10_2 = L10_2.entries
                                L11_2 = L19_1
                                L10_2 = L10_2[L11_2]
                                L10_2 = L10_2.bass
                                L10_2 = L10_2.sparklers
                                L10_2 = L10_2.cooldownMs
                                L8_2 = L8_2(L9_2, L10_2)
                                if L7_2 >= L8_2 then
                                  L30_1 = L5_2
                                  L7_2 = TriggerServerEvent
                                  L8_2 = "cs-hall:sparklers"
                                  L9_2 = L19_1
                                  L10_2 = GetSparklersColor
                                  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2()
                                  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
                L7_2 = L50_1
                if L7_2 then
                  L7_2 = L58_1
                  if L7_2 then
                    L7_2 = L48_1
                    if L7_2 then
                      L7_2 = 1
                      L8_2 = L2_1
                      L8_2 = #L8_2
                      L9_2 = 1
                      for L10_2 = L7_2, L8_2, L9_2 do
                        L11_2 = L2_1
                        L11_2 = L11_2[L10_2]
                        L11_2 = L11_2.soundSyncType
                        L12_2 = SOUND_SYNC_TYPE
                        L12_2 = L12_2.BASS
                        if L11_2 == L12_2 then
                          L3_2 = L12_1.bass
                          L11_2 = L13_1.previous
                          L4_2 = L11_2.bass
                        else
                          L11_2 = L2_1
                          L11_2 = L11_2[L10_2]
                          L11_2 = L11_2.soundSyncType
                          L12_2 = SOUND_SYNC_TYPE
                          L12_2 = L12_2.MID
                          if L11_2 == L12_2 then
                            L3_2 = L12_1.mid
                            L11_2 = L13_1.previous
                            L4_2 = L11_2.mid
                          else
                            L11_2 = L2_1
                            L11_2 = L11_2[L10_2]
                            L11_2 = L11_2.soundSyncType
                            L12_2 = SOUND_SYNC_TYPE
                            L12_2 = L12_2.TREBLE
                            if L11_2 == L12_2 then
                              L3_2 = L12_1.treble
                              L11_2 = L13_1.previous
                              L4_2 = L11_2.treble
                            else
                              L11_2 = L2_1
                              L11_2 = L11_2[L10_2]
                              L11_2 = L11_2.soundSyncType
                              L12_2 = SOUND_SYNC_TYPE
                              L12_2 = L12_2.LOW_MID
                              if L11_2 == L12_2 then
                                L3_2 = L12_1.lowMid
                                L11_2 = L13_1.previous
                                L4_2 = L11_2.lowMid
                              else
                                L11_2 = L2_1
                                L11_2 = L11_2[L10_2]
                                L11_2 = L11_2.soundSyncType
                                L12_2 = SOUND_SYNC_TYPE
                                L12_2 = L12_2.HIGH_MID
                                if L11_2 == L12_2 then
                                  L3_2 = L12_1.highMid
                                  L11_2 = L13_1.previous
                                  L4_2 = L11_2.highMid
                                end
                              end
                            end
                          end
                        end
                        L11_2 = 255
                        if L4_2 >= L11_2 then
                          L4_2 = 255
                        else
                          L11_2 = L66_1
                          if L4_2 <= L11_2 then
                            L4_2 = L66_1
                          end
                        end
                        L11_2 = AlterColorBrightness
                        L12_2 = L2_1
                        L12_2 = L12_2[L10_2]
                        L12_2 = L12_2.currentColor
                        L13_2 = Ternary
                        L14_2 = L3_2 >= L4_2
                        L15_2 = L3_2 - L4_2
                        L16_2 = 255
                        L16_2 = L16_2 - L4_2
                        L15_2 = L15_2 / L16_2
                        L16_2 = 0.0
                        L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2(L14_2, L15_2, L16_2)
                        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
                        L12_2 = L11_2[1]
                        L13_2 = L2_1
                        L13_2 = L13_2[L10_2]
                        L13_2 = L13_2.lastColor
                        L13_2 = L13_2[1]
                        if L12_2 == L13_2 then
                          L12_2 = L11_2[2]
                          L13_2 = L2_1
                          L13_2 = L13_2[L10_2]
                          L13_2 = L13_2.lastColor
                          L13_2 = L13_2[2]
                          if L12_2 == L13_2 then
                            L12_2 = L11_2[3]
                            L13_2 = L2_1
                            L13_2 = L13_2[L10_2]
                            L13_2 = L13_2.lastColor
                            L13_2 = L13_2[3]
                            if L12_2 == L13_2 then
                              goto lbl_800
                            end
                          end
                        end
                        L12_2 = L2_1
                        L12_2 = L12_2[L10_2]
                        L12_2 = L12_2.handle
                        if L12_2 then
                          L12_2 = SetObjectLightColor
                          L13_2 = L2_1
                          L13_2 = L13_2[L10_2]
                          L13_2 = L13_2.handle
                          L14_2 = true
                          L15_2 = L11_2[1]
                          L16_2 = L11_2[2]
                          L17_2 = L11_2[3]
                          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
                        end
                        ::lbl_800::
                        L12_2 = L2_1
                        L12_2 = L12_2[L10_2]
                        L13_2 = {}
                        L14_2 = L11_2[1]
                        L15_2 = L11_2[2]
                        L16_2 = L11_2[3]
                        L13_2[1] = L14_2
                        L13_2[2] = L15_2
                        L13_2[3] = L16_2
                        L12_2.lastColor = L13_2
                      end
                    end
                  end
                end
              end
            end
            L2_2 = L34_1
            L2_2 = L1_2 - L2_2
            L3_2 = L73_1
            if L2_2 > L3_2 then
              L34_1 = L1_2
              L2_2 = L56_1
              if L2_2 then
                L2_2 = L55_1
                if not L2_2 then
                  L2_2 = config
                  L2_2 = L2_2.entries
                  L3_2 = L19_1
                  L2_2 = L2_2[L3_2]
                  L2_2 = L2_2.polygons
                  if not L2_2 then
                    goto lbl_871
                  end
                  L2_2 = config
                  L2_2 = L2_2.entries
                  L3_2 = L19_1
                  L2_2 = L2_2[L3_2]
                  L2_2 = L2_2.polygons
                  L2_2 = L2_2.hideReplacersOutside
                  if L2_2 then
                    goto lbl_871
                  end
                end
                L2_2 = config
                L2_2 = L2_2.entries
                L3_2 = L19_1
                L2_2 = L2_2[L3_2]
                L2_2 = L2_2.replacers
                if L2_2 then
                  L2_2 = pairs
                  L3_2 = config
                  L3_2 = L3_2.entries
                  L4_2 = L19_1
                  L3_2 = L3_2[L4_2]
                  L3_2 = L3_2.replacers
                  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
                  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
                    L8_2 = AddReplaceTexture
                    L9_2 = L6_2
                    L10_2 = L7_2
                    L11_2 = "browser"
                    L12_2 = "browserTexture"
                    L8_2(L9_2, L10_2, L11_2, L12_2)
                  end
                end
                L2_2 = L9_1.ready
                if L2_2 then
                  L2_2 = L9_1.draw
                  if L2_2 then
                    L2_2 = SetScaleformTexture
                    L3_2 = L9_1.handle
                    L2_2(L3_2)
                  end
                end
              end
            end
            ::lbl_871::
            L2_2 = L35_1
            L2_2 = L1_2 - L2_2
            L3_2 = L72_1
            if L2_2 > L3_2 then
              L35_1 = L1_2
              L2_2 = L53_1
              if L2_2 then
                L2_2 = L11_1.playing
                if L2_2 then
                  L2_2 = L11_1.duration
                  if L2_2 then
                    L2_2 = L11_1.duration
                    if L2_2 > 0 then
                      L2_2 = L11_1.time
                      if L2_2 > 0 then
                        L2_2 = L22_1
                        L3_2 = L11_1.time
                        if L2_2 ~= L3_2 then
                          L2_2 = L11_1.time
                          L22_1 = L2_2
                          L2_2 = TriggerServerEvent
                          L3_2 = "cs-hall:time"
                          L4_2 = L19_1
                          L5_2 = L11_1.time
                          L6_2 = false
                          L2_2(L3_2, L4_2, L5_2, L6_2)
                        end
                      end
                    end
                  end
                end
              end
            end
            L2_2 = L9_1.tick
            if L2_2 then
              L2_2 = L9_1.solid
              if L2_2 then
                L2_2 = DrawScaleformMovie_3dSolid
                L3_2 = L9_1.handle
                L4_2 = L9_1.position
                L4_2 = L4_2.x
                L5_2 = L9_1.position
                L5_2 = L5_2.y
                L6_2 = L9_1.position
                L6_2 = L6_2.z
                L7_2 = Ternary
                L8_2 = L9_1.rotation
                L8_2 = L8_2.x
                L9_2 = 0.0
                L7_2 = L7_2(L8_2, L9_2)
                L8_2 = Ternary
                L9_2 = L9_1.rotation
                L9_2 = L9_2.y
                L10_2 = 0.0
                L8_2 = L8_2(L9_2, L10_2)
                L9_2 = Ternary
                L10_2 = L9_1.rotation
                L10_2 = L10_2.z
                L11_2 = 0.0
                L9_2 = L9_2(L10_2, L11_2)
                L10_2 = 0.0
                L11_2 = 1.0
                L12_2 = 0.0
                L13_2 = Ternary
                L14_2 = L9_1.scale
                L14_2 = L14_2.x
                L15_2 = 1.0
                L13_2 = L13_2(L14_2, L15_2)
                L14_2 = Ternary
                L15_2 = L9_1.scale
                L15_2 = L15_2.y
                L16_2 = 1.0
                L14_2 = L14_2(L15_2, L16_2)
                L15_2 = Ternary
                L16_2 = L9_1.scale
                L16_2 = L16_2.z
                L17_2 = 1.0
                L15_2 = L15_2(L16_2, L17_2)
                L16_2 = 0.0
                L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
              else
                L2_2 = DrawScaleformMovie_3d
                L3_2 = L9_1.handle
                L4_2 = L9_1.position
                L4_2 = L4_2.x
                L5_2 = L9_1.position
                L5_2 = L5_2.y
                L6_2 = L9_1.position
                L6_2 = L6_2.z
                L7_2 = Ternary
                L8_2 = L9_1.rotation
                L8_2 = L8_2.x
                L9_2 = 0.0
                L7_2 = L7_2(L8_2, L9_2)
                L8_2 = Ternary
                L9_2 = L9_1.rotation
                L9_2 = L9_2.y
                L10_2 = 0.0
                L8_2 = L8_2(L9_2, L10_2)
                L9_2 = Ternary
                L10_2 = L9_1.rotation
                L10_2 = L10_2.z
                L11_2 = 0.0
                L9_2 = L9_2(L10_2, L11_2)
                L10_2 = 0.0
                L11_2 = 1.0
                L12_2 = 0.0
                L13_2 = Ternary
                L14_2 = L9_1.scale
                L14_2 = L14_2.x
                L15_2 = L9_1.scale
                L15_2 = L15_2.x
                L15_2 = -L15_2
                L16_2 = 1.0
                L13_2 = L13_2(L14_2, L15_2, L16_2)
                L14_2 = Ternary
                L15_2 = L9_1.scale
                L15_2 = L15_2.y
                L16_2 = L9_1.scale
                L16_2 = L16_2.y
                L16_2 = -L16_2
                L17_2 = 1.0
                L14_2 = L14_2(L15_2, L16_2, L17_2)
                L15_2 = Ternary
                L16_2 = L9_1.scale
                L16_2 = L16_2.z
                L17_2 = L9_1.scale
                L17_2 = L17_2.z
                L17_2 = -L17_2
                L18_2 = 1.0
                L15_2 = L15_2(L16_2, L17_2, L18_2)
                L16_2 = 0.0
                L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
              end
            end
          end
        end
      end
    end
    L1_2 = Wait
    L2_2 = L19_1
    if not L2_2 then
      L2_2 = 500
      if L2_2 then
        goto lbl_1015
      end
    end
    L2_2 = 0
    ::lbl_1015::
    L1_2(L2_2)
  end
end
L89_1(L90_1)
L89_1 = config
L89_1 = L89_1.debug
if L89_1 then
  function L89_1(A0_2, A1_2, A2_2, A3_2)
    local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L4_2 = World3dToScreen2d
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 then
      L7_2 = SetTextScale
      L8_2 = 0.35
      L9_2 = 0.35
      L7_2(L8_2, L9_2)
      L7_2 = SetTextFont
      L8_2 = 4
      L7_2(L8_2)
      L7_2 = SetTextProportional
      L8_2 = 1
      L7_2(L8_2)
      L7_2 = SetTextColour
      L8_2 = 255
      L9_2 = 255
      L10_2 = 255
      L11_2 = 215
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L7_2 = SetTextEntry
      L8_2 = "STRING"
      L7_2(L8_2)
      L7_2 = SetTextDropshadow
      L8_2 = 0
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L12_2 = 255
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      L7_2 = SetTextEdge
      L8_2 = 1
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L12_2 = 255
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      L7_2 = SetTextDropShadow
      L7_2()
      L7_2 = SetTextOutline
      L7_2()
      L7_2 = SetTextCentre
      L8_2 = 1
      L7_2(L8_2)
      L7_2 = AddTextComponentString
      L8_2 = A3_2
      L7_2(L8_2)
      L7_2 = DrawText
      L8_2 = L5_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  function L90_1(A0_2, A1_2, A2_2, A3_2, A4_2)
    local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
    L5_2 = vector3
    L6_2 = A0_2.x
    L7_2 = A0_2.y
    L8_2 = A2_2.min
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = vector3
    L7_2 = A0_2.x
    L8_2 = A0_2.y
    L9_2 = A2_2.max
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = vector3
    L8_2 = A1_2.x
    L9_2 = A1_2.y
    L10_2 = A2_2.min
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = vector3
    L9_2 = A1_2.x
    L10_2 = A1_2.y
    L11_2 = A2_2.max
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = DrawPoly
    L10_2 = L5_2.x
    L11_2 = L5_2.y
    L12_2 = L5_2.z
    L13_2 = L6_2.x
    L14_2 = L6_2.y
    L15_2 = L6_2.z
    L16_2 = L7_2.x
    L17_2 = L7_2.y
    L18_2 = L7_2.z
    L19_2 = Ternary
    L20_2 = A3_2
    L21_2 = 0
    L22_2 = 255
    L19_2 = L19_2(L20_2, L21_2, L22_2)
    L20_2 = Ternary
    L21_2 = A4_2
    L22_2 = 255
    L23_2 = Ternary
    L24_2 = A3_2
    L25_2 = 165
    L26_2 = 0
    L23_2, L24_2, L25_2, L26_2 = L23_2(L24_2, L25_2, L26_2)
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L21_2 = 0
    L22_2 = 125
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L9_2 = DrawPoly
    L10_2 = L6_2.x
    L11_2 = L6_2.y
    L12_2 = L6_2.z
    L13_2 = L8_2.x
    L14_2 = L8_2.y
    L15_2 = L8_2.z
    L16_2 = L7_2.x
    L17_2 = L7_2.y
    L18_2 = L7_2.z
    L19_2 = Ternary
    L20_2 = A3_2
    L21_2 = 0
    L22_2 = 255
    L19_2 = L19_2(L20_2, L21_2, L22_2)
    L20_2 = Ternary
    L21_2 = A4_2
    L22_2 = 255
    L23_2 = Ternary
    L24_2 = A3_2
    L25_2 = 165
    L26_2 = 0
    L23_2, L24_2, L25_2, L26_2 = L23_2(L24_2, L25_2, L26_2)
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L21_2 = 0
    L22_2 = 125
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L9_2 = DrawPoly
    L10_2 = L7_2.x
    L11_2 = L7_2.y
    L12_2 = L7_2.z
    L13_2 = L8_2.x
    L14_2 = L8_2.y
    L15_2 = L8_2.z
    L16_2 = L6_2.x
    L17_2 = L6_2.y
    L18_2 = L6_2.z
    L19_2 = Ternary
    L20_2 = A3_2
    L21_2 = 0
    L22_2 = 255
    L19_2 = L19_2(L20_2, L21_2, L22_2)
    L20_2 = Ternary
    L21_2 = A4_2
    L22_2 = 255
    L23_2 = Ternary
    L24_2 = A3_2
    L25_2 = 165
    L26_2 = 0
    L23_2, L24_2, L25_2, L26_2 = L23_2(L24_2, L25_2, L26_2)
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L21_2 = 0
    L22_2 = 125
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L9_2 = DrawPoly
    L10_2 = L7_2.x
    L11_2 = L7_2.y
    L12_2 = L7_2.z
    L13_2 = L6_2.x
    L14_2 = L6_2.y
    L15_2 = L6_2.z
    L16_2 = L5_2.x
    L17_2 = L5_2.y
    L18_2 = L5_2.z
    L19_2 = Ternary
    L20_2 = A3_2
    L21_2 = 0
    L22_2 = 255
    L19_2 = L19_2(L20_2, L21_2, L22_2)
    L20_2 = Ternary
    L21_2 = A4_2
    L22_2 = 255
    L23_2 = Ternary
    L24_2 = A3_2
    L25_2 = 165
    L26_2 = 0
    L23_2, L24_2, L25_2, L26_2 = L23_2(L24_2, L25_2, L26_2)
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L21_2 = 0
    L22_2 = 125
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  end
  L91_1 = CreateThread
  function L92_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
    while true do
      L0_2 = L19_1
      if L0_2 then
        L0_2 = 1
        L1_2 = L3_1
        L1_2 = #L1_2
        L2_2 = 1
        for L3_2 = L0_2, L1_2, L2_2 do
          L4_2 = L3_1
          L4_2 = L4_2[L3_2]
          L4_2 = L4_2.position
          L5_2 = L3_1
          L5_2 = L5_2[L3_2]
          L5_2 = L5_2.up
          L5_2 = L5_2 * 0.25
          L4_2 = L4_2 + L5_2
          L5_2 = L3_1
          L5_2 = L5_2[L3_2]
          L5_2 = L5_2.position
          L6_2 = L3_1
          L6_2 = L6_2[L3_2]
          L6_2 = L6_2.forward
          L6_2 = L6_2 * -3.0
          L5_2 = L5_2 + L6_2
          L6_2 = L3_1
          L6_2 = L6_2[L3_2]
          L6_2 = L6_2.up
          L6_2 = L6_2 * 0.5
          L5_2 = L5_2 + L6_2
          L6_2 = DrawLine
          L7_2 = L4_2.x
          L8_2 = L4_2.y
          L9_2 = L4_2.z
          L10_2 = L5_2.x
          L11_2 = L5_2.y
          L12_2 = L5_2.z
          L13_2 = 255
          L14_2 = 0
          L15_2 = 0
          L16_2 = 125
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        end
        L0_2 = 1
        L1_2 = L4_1
        L1_2 = #L1_2
        L2_2 = 1
        for L3_2 = L0_2, L1_2, L2_2 do
          L4_2 = L4_1
          L4_2 = L4_2[L3_2]
          L4_2 = L4_2.position
          L5_2 = L4_1
          L5_2 = L5_2[L3_2]
          L5_2 = L5_2.up
          L5_2 = L5_2 * 1.5
          L4_2 = L4_2 + L5_2
          L5_2 = DrawLine
          L6_2 = L4_1
          L6_2 = L6_2[L3_2]
          L6_2 = L6_2.position
          L6_2 = L6_2.x
          L7_2 = L4_1
          L7_2 = L7_2[L3_2]
          L7_2 = L7_2.position
          L7_2 = L7_2.y
          L8_2 = L4_1
          L8_2 = L8_2[L3_2]
          L8_2 = L8_2.position
          L8_2 = L8_2.z
          L9_2 = L4_2.x
          L10_2 = L4_2.y
          L11_2 = L4_2.z
          L12_2 = 255
          L13_2 = 0
          L14_2 = 255
          L15_2 = 125
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        end
        L0_2 = 1
        L1_2 = L2_1
        L1_2 = #L1_2
        L2_2 = 1
        for L3_2 = L0_2, L1_2, L2_2 do
          L4_2 = L2_1
          L4_2 = L4_2[L3_2]
          L4_2 = L4_2.position
          L5_2 = L2_1
          L5_2 = L5_2[L3_2]
          L5_2 = L5_2.up
          L5_2 = L5_2 * -0.15
          L4_2 = L4_2 + L5_2
          L5_2 = L2_1
          L5_2 = L5_2[L3_2]
          L5_2 = L5_2.position
          L6_2 = L2_1
          L6_2 = L6_2[L3_2]
          L6_2 = L6_2.forward
          L6_2 = L6_2 * -10.0
          L5_2 = L5_2 + L6_2
          L6_2 = L2_1
          L6_2 = L6_2[L3_2]
          L6_2 = L6_2.up
          L6_2 = L6_2 * -5.0
          L5_2 = L5_2 + L6_2
          L6_2 = DrawLine
          L7_2 = L4_2.x
          L8_2 = L4_2.y
          L9_2 = L4_2.z
          L10_2 = L5_2.x
          L11_2 = L5_2.y
          L12_2 = L5_2.z
          L13_2 = 255
          L14_2 = 255
          L15_2 = 0
          L16_2 = 125
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          L6_2 = L89_1
          L7_2 = L4_2.x
          L8_2 = L4_2.y
          L9_2 = L4_2.z
          L10_2 = "Sound Sync: "
          L11_2 = L2_1
          L11_2 = L11_2[L3_2]
          L11_2 = L11_2.soundSyncType
          L10_2 = L10_2 .. L11_2
          L6_2(L7_2, L8_2, L9_2, L10_2)
        end
        L0_2 = PlayerPedId
        L0_2 = L0_2()
        L1_2 = GetGameplayCamRot
        L2_2 = 2
        L1_2 = L1_2(L2_2)
        L2_2 = GetEntityMatrix
        L3_2 = L0_2
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        L6_2 = RotationToDirection
        L7_2 = L1_2
        L6_2 = L6_2(L7_2)
        L7_2 = GetEntityBoneIndexByName
        L8_2 = L0_2
        L9_2 = "BONETAG_HEAD"
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = Ternary
        L9_2 = -1 ~= L7_2
        L10_2 = GetWorldPositionOfEntityBone
        L11_2 = L0_2
        L12_2 = L7_2
        L10_2 = L10_2(L11_2, L12_2)
        L11_2 = L5_2
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        L9_2 = 1
        L10_2 = L7_1
        L10_2 = #L10_2
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L13_2 = L7_1
          L13_2 = L13_2[L12_2]
          L14_2 = L13_2.position
          L15_2 = Ternary
          L16_2 = L13_2.soundOffset
          L17_2 = vector3
          L18_2 = 0.0
          L19_2 = 0.0
          L20_2 = 0.0
          L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L17_2(L18_2, L19_2, L20_2)
          L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
          L14_2 = L14_2 + L15_2
          L15_2 = L13_2.forward
          L15_2 = L15_2 * -1
          L16_2 = Ternary
          L17_2 = L13_2.directionOffset
          L18_2 = vector3
          L19_2 = 1.0
          L20_2 = 1.0
          L21_2 = 1.0
          L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L18_2(L19_2, L20_2, L21_2)
          L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
          L15_2 = L15_2 * L16_2
          L16_2 = L15_2 * 15.0
          L16_2 = L14_2 + L16_2
          L17_2 = DrawLine
          L18_2 = L14_2.x
          L19_2 = L14_2.y
          L20_2 = L14_2.z
          L21_2 = L16_2.x
          L22_2 = L16_2.y
          L23_2 = L16_2.z
          L24_2 = 0
          L25_2 = 0
          L26_2 = 255
          L27_2 = 125
          L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
          L17_2 = DrawLine
          L18_2 = L8_2.x
          L19_2 = L8_2.y
          L20_2 = L8_2.z
          L21_2 = L14_2.x
          L22_2 = L14_2.y
          L23_2 = L14_2.z
          L24_2 = 0
          L25_2 = 255
          L26_2 = 255
          L27_2 = 125
          L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
        end
        L9_2 = L6_2 * 5.0
        L9_2 = L5_2 + L9_2
        L10_2 = L4_2 * 5.0
        L10_2 = L5_2 + L10_2
        L11_2 = DrawLine
        L12_2 = L5_2.x
        L13_2 = L5_2.y
        L14_2 = L5_2.z
        L15_2 = L9_2.x
        L16_2 = L9_2.y
        L17_2 = L9_2.z
        L18_2 = 255
        L19_2 = 125
        L20_2 = 0
        L21_2 = 125
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L11_2 = DrawLine
        L12_2 = L5_2.x
        L13_2 = L5_2.y
        L14_2 = L5_2.z
        L15_2 = L10_2.x
        L16_2 = L10_2.y
        L17_2 = L10_2.z
        L18_2 = 0
        L19_2 = 255
        L20_2 = 0
        L21_2 = 125
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L11_2 = config
        L11_2 = L11_2.entries
        L12_2 = L19_1
        L11_2 = L11_2[L12_2]
        L11_2 = L11_2.area
        L11_2 = L11_2.polygons
        if L11_2 then
          L11_2 = config
          L11_2 = L11_2.entries
          L12_2 = L19_1
          L11_2 = L11_2[L12_2]
          L11_2 = L11_2.area
          L11_2 = L11_2.polygons
          L11_2 = L11_2.entries
          if L11_2 then
            L11_2 = config
            L11_2 = L11_2.entries
            L12_2 = L19_1
            L11_2 = L11_2[L12_2]
            L11_2 = L11_2.area
            L11_2 = L11_2.polygons
            L11_2 = L11_2.entries
            L12_2 = 1
            L13_2 = #L11_2
            L14_2 = 1
            for L15_2 = L12_2, L13_2, L14_2 do
              L16_2 = L11_2[L15_2]
              L17_2 = 1
              L18_2 = L16_2.points
              L18_2 = #L18_2
              L19_2 = 1
              for L20_2 = L17_2, L18_2, L19_2 do
                L21_2 = IsPositionInsideArea
                L22_2 = L5_2
                L21_2 = L21_2(L22_2)
                L22_2 = IsPositionInsideArea
                L23_2 = L5_2
                L24_2 = L16_2
                L22_2 = L22_2(L23_2, L24_2)
                L23_2 = L89_1
                L24_2 = L16_2.points
                L24_2 = L24_2[L20_2]
                L24_2 = L24_2.x
                L25_2 = L16_2.points
                L25_2 = L25_2[L20_2]
                L25_2 = L25_2.y
                L26_2 = L16_2.height
                L26_2 = L26_2.min
                L27_2 = L16_2.height
                L27_2 = L27_2.max
                L28_2 = L16_2.height
                L28_2 = L28_2.min
                L27_2 = L27_2 - L28_2
                L27_2 = L27_2 / 2
                L26_2 = L26_2 + L27_2
                L27_2 = "Polygon - Point Index: "
                L28_2 = L15_2
                L29_2 = " - "
                L30_2 = L20_2
                L27_2 = L27_2 .. L28_2 .. L29_2 .. L30_2
                L23_2(L24_2, L25_2, L26_2, L27_2)
                L23_2 = L16_2.points
                L23_2 = #L23_2
                if L20_2 < L23_2 then
                  L23_2 = L90_1
                  L24_2 = L16_2.points
                  L24_2 = L24_2[L20_2]
                  L25_2 = L16_2.points
                  L26_2 = L20_2 + 1
                  L25_2 = L25_2[L26_2]
                  L26_2 = L16_2.height
                  L27_2 = L22_2
                  L28_2 = L21_2
                  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2)
                end
                L23_2 = L16_2.points
                L23_2 = #L23_2
                if L23_2 > 2 then
                  L23_2 = L90_1
                  L24_2 = L16_2.points
                  L24_2 = L24_2[1]
                  L25_2 = L16_2.points
                  L26_2 = L16_2.points
                  L26_2 = #L26_2
                  L25_2 = L25_2[L26_2]
                  L26_2 = L16_2.height
                  L27_2 = L22_2
                  L28_2 = L21_2
                  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2)
                end
              end
            end
          end
        end
        L11_2 = L89_1
        L12_2 = config
        L12_2 = L12_2.entries
        L13_2 = L19_1
        L12_2 = L12_2[L13_2]
        L12_2 = L12_2.area
        L12_2 = L12_2.center
        L12_2 = L12_2.x
        L13_2 = config
        L13_2 = L13_2.entries
        L14_2 = L19_1
        L13_2 = L13_2[L14_2]
        L13_2 = L13_2.area
        L13_2 = L13_2.center
        L13_2 = L13_2.y
        L14_2 = config
        L14_2 = L14_2.entries
        L15_2 = L19_1
        L14_2 = L14_2[L15_2]
        L14_2 = L14_2.area
        L14_2 = L14_2.center
        L14_2 = L14_2.z
        L15_2 = "Config Entry: "
        L16_2 = L19_1
        L15_2 = L15_2 .. L16_2
        L11_2(L12_2, L13_2, L14_2, L15_2)
      end
      L0_2 = Wait
      L1_2 = 0
      L0_2(L1_2)
    end
  end
  L91_1(L92_1)
end
L89_1 = exports
L90_1 = "CanAccessRemoteControl"
function L91_1()
  local L0_2, L1_2
  L0_2 = L57_1
  if L0_2 then
    L1_2 = L19_1
    L0_2 = L17_1
    L0_2 = L0_2[L1_2]
    if L0_2 then
      L0_2 = CanAccessUi
      L0_2 = L0_2()
    end
  end
  return L0_2
end
L89_1(L90_1, L91_1)
function L89_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = L8_1
  L5_2 = {}
  L5_2.register = A2_2
  L5_2.ticker = A3_2
  L5_2.areas = A1_2
  L4_2[A0_2] = L5_2
  L4_2 = SetScene
  L4_2()
end
RegisterScene = L89_1
L89_1 = exports
L90_1 = "RegisterScene"
L91_1 = RegisterScene
L89_1(L90_1, L91_1)
Scene = L18_1
L89_1 = exports
L90_1 = "IsUiEnabled"
function L91_1()
  local L0_2, L1_2
  L0_2 = L38_1
  return L0_2
end
L89_1(L90_1, L91_1)
L89_1 = exports
L90_1 = "Enable"
function L91_1()
  local L0_2, L1_2
  L0_2 = true
  L62_1 = L0_2
end
L89_1(L90_1, L91_1)
L89_1 = exports
L90_1 = "Disable"
function L91_1()
  local L0_2, L1_2
  L0_2 = false
  L62_1 = L0_2
  L0_2 = L19_1
  if L0_2 then
    L0_2 = DesyncHallArea
    L1_2 = L19_1
    L0_2(L1_2)
    L0_2 = DesyncArea
    L1_2 = L19_1
    L0_2(L1_2)
    L0_2 = nil
    L19_1 = L0_2
    L0_2 = false
    L56_1 = L0_2
    L0_2 = false
    L55_1 = L0_2
  end
end
L89_1(L90_1, L91_1)

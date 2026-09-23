local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1
L0_1 = module
L1_1 = "vrp"
L2_1 = "lib/Tunnel"
L0_1 = L0_1(L1_1, L2_1)
L1_1 = module
L2_1 = "vrp"
L3_1 = "lib/Proxy"
L1_1 = L1_1(L2_1, L3_1)
L2_1 = L1_1.getInterface
L3_1 = "vRP"
L2_1 = L2_1(L3_1)
vRP = L2_1
L2_1 = L0_1.getInterface
L3_1 = "trig_mecanica"
L2_1 = L2_1(L3_1)
vSERVER = L2_1
L2_1 = {}
src = L2_1
L2_1 = L0_1.bindInterface
L3_1 = "trig_mecanica"
L4_1 = src
L2_1(L3_1, L4_1)
L2_1 = {}
L3_1 = {}
infos = L3_1
L3_1 = {}
vehicle = L3_1
L3_1 = {}
L4_1 = {}
MechanicInfo = L4_1
L4_1 = {}
L4_1.sport = 0
L4_1.muscle = 1
L4_1.lowrider = 2
L4_1.suv = 3
L4_1.offroad = 4
L4_1.tuner = 5
L4_1.highend = 7
L4_1.bennys = 8
L5_1 = {}
L5_1[1] = "#014FB7"
L5_1[2] = "#006B92"
L5_1[3] = "#009F63"
L5_1[4] = "#A5E100"
L5_1[5] = "#DADC00"
L5_1[6] = "#D7AE00"
L5_1[7] = "#D18100"
L5_1[8] = "#F70000"
L5_1[9] = "#DB7B91"
L5_1[10] = "#CE00A3"
L5_1[11] = "#7202D0"
L5_1[12] = "#4210B4"
L6_1 = {}
L6_1[0] = "#756F63"
L6_1[1] = "#928978"
L6_1[2] = "#ABA495"
L6_1[3] = "#C3BDAB"
L6_1[4] = "#ECE7DE"
L6_1[5] = "#F5F2EA"
L6_1[6] = "#E8E1D1"
L6_1[7] = "#D0CDC1"
L6_1[8] = "#D5C8AD"
L6_1[9] = "#B4AA95"
L6_1[10] = "#C2BDA9"
L6_1[11] = "#9B8B70"
L6_1[12] = "#897C66"
L6_1[13] = "#9D9077"
L6_1[14] = "#D6CDB2"
L6_1[15] = "#777167"
L6_1[16] = "#878175"
L6_1[17] = "#A4A096"
L6_1[18] = "#E4E1DC"
L6_1[19] = "#A0A39E"
L6_1[20] = "#BAC0C3"
L6_1[21] = "#7E7B75"
L6_1[22] = "#A29D91"
L6_1[23] = "#E6E3DA"
L6_1[24] = "#F8F6F5"
L6_1[25] = "#ECEDEF"
L6_1[26] = "#C8CFD1"
L6_1[27] = "#DB5B54"
L6_1[28] = "#EE625B"
L6_1[29] = "#EB856C"
L6_1[30] = "#D9736B"
L6_1[31] = "#D57970"
L6_1[32] = "#CD6F6A"
L6_1[33] = "#C87654"
L6_1[34] = "#A45C69"
L6_1[35] = "#E85A78"
L6_1[36] = "#FDC6AD"
L6_1[37] = "#EBD4A3"
L6_1[38] = "#FCCF52"
L6_1[39] = "#F25853"
L6_1[40] = "#C9635D"
L6_1[41] = "#FBC44B"
L6_1[42] = "#F9E04B"
L6_1[43] = "#DA514D"
L6_1[44] = "#F65E58"
L6_1[45] = "#D57850"
L6_1[46] = "#DB9893"
L6_1[47] = "#ECC4A8"
L6_1[48] = "#9A675A"
L6_1[49] = "#556D61"
L6_1[50] = "#4F8261"
L6_1[51] = "#56958C"
L6_1[52] = "#949F8B"
L6_1[53] = "#58BB60"
L6_1[54] = "#6FC4C5"
L6_1[55] = "#C4F050"
L6_1[56] = "#72907A"
L6_1[57] = "#59B677"
L6_1[58] = "#839A83"
L6_1[59] = "#A6B598"
L6_1[60] = "#C9DCD5"
L6_1[61] = "#597480"
L6_1[62] = "#58779F"
L6_1[63] = "#93AED0"
L6_1[64] = "#5C8ED6"
L6_1[65] = "#BCD0E9"
L6_1[66] = "#A3ABBA"
L6_1[67] = "#EBF4F8"
L6_1[68] = "#C2E1EB"
L6_1[69] = "#8EACBA"
L6_1[70] = "#52D6FC"
L6_1[71] = "#8E87A8"
L6_1[72] = "#827F9D"
L6_1[73] = "#72AEE4"
L6_1[74] = "#BDDCEE"
L6_1[75] = "#7185AC"
L7_1 = {}
L8_1 = {}
L9_1 = 120
L8_1[1] = L9_1
L7_1.cromado = L8_1
L8_1 = {}
L9_1 = 0
L10_1 = 147
L11_1 = 1
L12_1 = 11
L13_1 = 2
L14_1 = 3
L15_1 = 4
L16_1 = 5
L17_1 = 6
L18_1 = 7
L19_1 = 8
L20_1 = 9
L21_1 = 10
L22_1 = 27
L23_1 = 28
L24_1 = 29
L25_1 = 150
L26_1 = 30
L27_1 = 31
L28_1 = 32
L29_1 = 33
L30_1 = 34
L31_1 = 143
L32_1 = 35
L33_1 = 135
L34_1 = 137
L35_1 = 136
L36_1 = 36
L37_1 = 38
L38_1 = 138
L39_1 = 99
L40_1 = 90
L41_1 = 88
L42_1 = 89
L43_1 = 91
L44_1 = 49
L45_1 = 50
L46_1 = 51
L47_1 = 52
L48_1 = 53
L49_1 = 54
L50_1 = 92
L51_1 = 141
L52_1 = 61
L53_1 = 62
L54_1 = 63
L55_1 = 64
L56_1 = 65
L57_1 = 66
L58_1 = 67
L8_1[1] = L9_1
L8_1[2] = L10_1
L8_1[3] = L11_1
L8_1[4] = L12_1
L8_1[5] = L13_1
L8_1[6] = L14_1
L8_1[7] = L15_1
L8_1[8] = L16_1
L8_1[9] = L17_1
L8_1[10] = L18_1
L8_1[11] = L19_1
L8_1[12] = L20_1
L8_1[13] = L21_1
L8_1[14] = L22_1
L8_1[15] = L23_1
L8_1[16] = L24_1
L8_1[17] = L25_1
L8_1[18] = L26_1
L8_1[19] = L27_1
L8_1[20] = L28_1
L8_1[21] = L29_1
L8_1[22] = L30_1
L8_1[23] = L31_1
L8_1[24] = L32_1
L8_1[25] = L33_1
L8_1[26] = L34_1
L8_1[27] = L35_1
L8_1[28] = L36_1
L8_1[29] = L37_1
L8_1[30] = L38_1
L8_1[31] = L39_1
L8_1[32] = L40_1
L8_1[33] = L41_1
L8_1[34] = L42_1
L8_1[35] = L43_1
L8_1[36] = L44_1
L8_1[37] = L45_1
L8_1[38] = L46_1
L8_1[39] = L47_1
L8_1[40] = L48_1
L8_1[41] = L49_1
L8_1[42] = L50_1
L8_1[43] = L51_1
L8_1[44] = L52_1
L8_1[45] = L53_1
L8_1[46] = L54_1
L8_1[47] = L55_1
L8_1[48] = L56_1
L8_1[49] = L57_1
L8_1[50] = L58_1
L9_1 = 68
L10_1 = 69
L11_1 = 73
L12_1 = 70
L13_1 = 74
L14_1 = 96
L15_1 = 101
L16_1 = 95
L17_1 = 94
L18_1 = 97
L19_1 = 103
L20_1 = 104
L21_1 = 98
L22_1 = 100
L23_1 = 102
L24_1 = 99
L25_1 = 105
L26_1 = 106
L27_1 = 71
L28_1 = 72
L29_1 = 142
L30_1 = 145
L31_1 = 107
L32_1 = 111
L33_1 = 112
L8_1[51] = L9_1
L8_1[52] = L10_1
L8_1[53] = L11_1
L8_1[54] = L12_1
L8_1[55] = L13_1
L8_1[56] = L14_1
L8_1[57] = L15_1
L8_1[58] = L16_1
L8_1[59] = L17_1
L8_1[60] = L18_1
L8_1[61] = L19_1
L8_1[62] = L20_1
L8_1[63] = L21_1
L8_1[64] = L22_1
L8_1[65] = L23_1
L8_1[66] = L24_1
L8_1[67] = L25_1
L8_1[68] = L26_1
L8_1[69] = L27_1
L8_1[70] = L28_1
L8_1[71] = L29_1
L8_1[72] = L30_1
L8_1[73] = L31_1
L8_1[74] = L32_1
L8_1[75] = L33_1
L7_1["met\195\161lico"] = L8_1
L8_1 = {}
L9_1 = 12
L10_1 = 13
L11_1 = 14
L12_1 = 131
L13_1 = 83
L14_1 = 82
L15_1 = 84
L16_1 = 149
L17_1 = 148
L18_1 = 39
L19_1 = 40
L20_1 = 41
L21_1 = 42
L22_1 = 55
L23_1 = 128
L24_1 = 151
L25_1 = 155
L26_1 = 152
L27_1 = 153
L28_1 = 154
L8_1[1] = L9_1
L8_1[2] = L10_1
L8_1[3] = L11_1
L8_1[4] = L12_1
L8_1[5] = L13_1
L8_1[6] = L14_1
L8_1[7] = L15_1
L8_1[8] = L16_1
L8_1[9] = L17_1
L8_1[10] = L18_1
L8_1[11] = L19_1
L8_1[12] = L20_1
L8_1[13] = L21_1
L8_1[14] = L22_1
L8_1[15] = L23_1
L8_1[16] = L24_1
L8_1[17] = L25_1
L8_1[18] = L26_1
L8_1[19] = L27_1
L8_1[20] = L28_1
L7_1.fosco = L8_1
L8_1 = {}
L9_1 = 117
L10_1 = 118
L11_1 = 119
L12_1 = 158
L13_1 = 159
L8_1[1] = L9_1
L8_1[2] = L10_1
L8_1[3] = L11_1
L8_1[4] = L12_1
L8_1[5] = L13_1
L7_1.metal = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = pairs
  L2_2 = L7_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      if L12_2 == A0_2 then
        return L5_2
      end
    end
  end
end
colorType = L8_1
L8_1 = Citizen
L8_1 = L8_1.CreateThread
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2
  L0_2 = UseArea
  if not L0_2 then
    while true do
      L0_2 = 1000
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = GetVehiclePedIsIn
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = pairs
        L4_2 = Tunners
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = GetEntityCoords
          L10_2 = L1_2
          L9_2 = L9_2(L10_2)
          L10_2 = L8_2.coords
          L9_2 = L9_2 - L10_2
          L9_2 = #L9_2
          if L9_2 <= 7 then
            L10_2 = table
            L10_2 = L10_2.unpack
            L11_2 = L8_2.coords
            L10_2, L11_2, L12_2 = L10_2(L11_2)
            L0_2 = 0
            L13_2 = vehicle
            L13_2 = L13_2.entity
            if not L13_2 then
              L13_2 = IsPedInAnyVehicle
              L14_2 = L1_2
              L13_2 = L13_2(L14_2)
              if L13_2 then
                L13_2 = DrawMarker
                L14_2 = Markers
                L14_2 = L14_2.id
                L15_2 = L10_2
                L16_2 = L11_2
                L17_2 = L12_2 - 0.4
                L18_2 = 0.0
                L19_2 = 0.0
                L20_2 = 0.0
                L21_2 = 0.0
                L22_2 = 0.0
                L23_2 = 180.0
                L24_2 = Markers
                L24_2 = L24_2.scale
                L24_2 = L24_2[1]
                L25_2 = Markers
                L25_2 = L25_2.scale
                L25_2 = L25_2[2]
                L26_2 = Markers
                L26_2 = L26_2.scale
                L26_2 = L26_2[3]
                L26_2 = L26_2 + 0.7
                L27_2 = Markers
                L27_2 = L27_2.color
                L27_2 = L27_2[1]
                L28_2 = Markers
                L28_2 = L28_2.color
                L28_2 = L28_2[2]
                L29_2 = Markers
                L29_2 = L29_2.color
                L29_2 = L29_2[3]
                L29_2 = L29_2 + 0.7
                L30_2 = Markers
                L30_2 = L30_2.color
                L30_2 = L30_2[4]
                L31_2 = false
                L32_2 = true
                L33_2 = 2
                L34_2 = false
                L35_2 = nil
                L36_2 = nil
                L37_2 = false
                L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
                L13_2 = DrawText3D
                L14_2 = L10_2
                L15_2 = L11_2
                L16_2 = L12_2 + 0.2
                L17_2 = "Pressione ~g~ [E] ~w~ para customizar."
                L13_2(L14_2, L15_2, L16_2, L17_2)
                if L9_2 <= 3 then
                  L13_2 = IsControlJustPressed
                  L14_2 = 1
                  L15_2 = 51
                  L13_2 = L13_2(L14_2, L15_2)
                  if L13_2 then
                    L13_2 = L8_2.perm
                    if L13_2 then
                      L13_2 = vSERVER
                      L13_2 = L13_2.checkPerm
                      L14_2 = L7_2
                      L13_2 = L13_2(L14_2)
                      if not L13_2 then
                        L13_2 = TriggerEvent
                        L14_2 = "Notify"
                        L15_2 = "aviso"
                        L16_2 = "Permiss\195\163o insuficiente."
                        L17_2 = 5000
                        L13_2(L14_2, L15_2, L16_2, L17_2)
                    end
                    else
                      L13_2 = MechanicInfo
                      L14_2 = L8_2.name
                      L13_2.name = L14_2
                      L13_2 = MechanicInfo
                      L14_2 = L8_2.hiddenParts
                      L13_2.hiddenParts = L14_2
                      L13_2 = openMechanic
                      L14_2 = "client"
                      L13_2(L14_2)
                    end
                  end
                end
              end
            end
          end
        end
      end
      L3_2 = Wait
      L4_2 = L0_2
      L3_2(L4_2)
    end
  end
end
L8_1(L9_1)
L8_1 = RegisterNUICallback
L9_1 = "closeUI"
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = closeMechanic
  L2_2 = A0_2
  L1_2(L2_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "atualizeCart"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = atualizeCart
  L3_2 = A0_2.cart
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "setNeonColor"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = table
  L2_2 = L2_2.unpack
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L5_2 = SetVehicleNeonLightsColour
  L6_2 = vehicle
  L6_2 = L6_2.entity
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = setCache
  L6_2 = "colors"
  L7_2 = "neon"
  L8_2 = {}
  L9_2 = L2_2
  L10_2 = L3_2
  L11_2 = L4_2
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L5_2(L6_2, L7_2, L8_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "wheelTint"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = SetVehicleModKit
  L3_2 = vehicle
  L3_2 = L3_2.entity
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = GetVehicleExtraColours
  L3_2 = vehicle
  L3_2 = L3_2.entity
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = SetVehicleExtraColours
  L5_2 = vehicle
  L5_2 = L5_2.entity
  L6_2 = L2_2
  L7_2 = parseInt
  L8_2 = A0_2
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = setCache
  L5_2 = "colors"
  L6_2 = "wheelTint"
  L7_2 = parseInt
  L8_2 = A0_2
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L8_1(L9_1, L10_1)
L8_1 = {}
L9_1 = {}
L10_1 = 0
L11_1 = 1
L9_1[1] = L10_1
L9_1[2] = L11_1
L8_1.front = L9_1
L9_1 = {}
L10_1 = 2
L11_1 = 3
L12_1 = 4
L13_1 = 5
L9_1[1] = L10_1
L9_1[2] = L11_1
L9_1[3] = L12_1
L9_1[4] = L13_1
L8_1.back = L9_1
L9_1 = {}
L10_1 = {}
L11_1 = RegisterNUICallback
L12_1 = "WheelRotation"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = DoesEntityExist
  L2_2 = vehicle
  L2_2 = L2_2.entity
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2.position
  L2_2 = A0_2.rotationType
  L3_2 = A0_2.value
  L4_2 = L8_1
  L4_2 = L4_2[L1_2]
  if L4_2 then
    L4_2 = GetVehicleNumberPlateText
    L5_2 = vehicle
    L5_2 = L5_2.entity
    L4_2 = L4_2(L5_2)
    L5_2 = GetEntityModel
    L6_2 = vehicle
    L6_2 = L6_2.entity
    L5_2 = L5_2(L6_2)
    L6_2 = GetDisplayNameFromVehicleModel
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2
    L6_2 = L6_2.lower
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2
    L8_2 = L4_2
    L7_2 = L7_2 .. L8_2
    L8_2 = L9_1
    L7_2 = L8_2[L7_2]
    if not L7_2 then
      L7_2 = L6_2
      L8_2 = L4_2
      L7_2 = L7_2 .. L8_2
      L8_2 = L9_1
      L9_2 = {}
      L10_2 = VehToNet
      L11_2 = vehicle
      L11_2 = L11_2.entity
      L10_2 = L10_2(L11_2)
      L9_2.netId = L10_2
      L10_2 = {}
      L9_2.x = L10_2
      L10_2 = {}
      L9_2.y = L10_2
      L8_2[L7_2] = L9_2
    end
    if "x" == L2_2 then
      L7_2 = pairs
      L8_2 = L8_1
      L8_2 = L8_2[L1_2]
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        if 2 == L11_2 then
          L3_2 = L3_2 * -1
        end
        L13_2 = SetVehicleWheelXOffset
        L14_2 = vehicle
        L14_2 = L14_2.entity
        L15_2 = L12_2
        L16_2 = tonumber
        L17_2 = L3_2
        L16_2, L17_2 = L16_2(L17_2)
        L13_2(L14_2, L15_2, L16_2, L17_2)
        L13_2 = L6_2
        L14_2 = L4_2
        L13_2 = L13_2 .. L14_2
        L14_2 = L9_1
        L13_2 = L14_2[L13_2]
        L13_2 = L13_2.x
        L14_2 = tonumber
        L15_2 = L3_2
        L14_2 = L14_2(L15_2)
        L13_2[L12_2] = L14_2
        L13_2 = L6_2
        L14_2 = L4_2
        L13_2 = L13_2 .. L14_2
        L14_2 = L10_1
        L15_2 = L6_2
        L16_2 = L4_2
        L15_2 = L15_2 .. L16_2
        L16_2 = L9_1
        L15_2 = L16_2[L15_2]
        L14_2[L13_2] = L15_2
      end
    elseif "y" == L2_2 then
      L7_2 = pairs
      L8_2 = L8_1
      L8_2 = L8_2[L1_2]
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        if 2 == L11_2 then
          L3_2 = L3_2 * -1
        end
        L13_2 = SetVehicleWheelYRotation
        L14_2 = vehicle
        L14_2 = L14_2.entity
        L15_2 = L12_2
        L16_2 = tonumber
        L17_2 = L3_2
        L16_2, L17_2 = L16_2(L17_2)
        L13_2(L14_2, L15_2, L16_2, L17_2)
        L13_2 = L6_2
        L14_2 = L4_2
        L13_2 = L13_2 .. L14_2
        L14_2 = L9_1
        L13_2 = L14_2[L13_2]
        L13_2 = L13_2.y
        L14_2 = tonumber
        L15_2 = L3_2
        L14_2 = L14_2(L15_2)
        L13_2[L12_2] = L14_2
        L13_2 = L6_2
        L14_2 = L4_2
        L13_2 = L13_2 .. L14_2
        L14_2 = L10_1
        L15_2 = L6_2
        L16_2 = L4_2
        L15_2 = L15_2 .. L16_2
        L16_2 = L9_1
        L15_2 = L16_2[L15_2]
        L14_2[L13_2] = L15_2
      end
    end
  end
end
L11_1(L12_1, L13_1)
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetEntityModel
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = GetDisplayNameFromVehicleModel
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.lower
    L3_2 = L3_2(L4_2)
    L4_2 = GetVehicleNumberPlateText
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = L3_2
    L6_2 = L4_2
    L5_2 = L5_2 .. L6_2
    L6_2 = L9_1
    L5_2 = L6_2[L5_2]
    if not L5_2 then
      L5_2 = L3_2
      L6_2 = L4_2
      L5_2 = L5_2 .. L6_2
      L6_2 = L9_1
      L7_2 = {}
      L8_2 = VehToNet
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L7_2.netId = L8_2
      L8_2 = {}
      L7_2.x = L8_2
      L8_2 = {}
      L7_2.y = L8_2
      L6_2[L5_2] = L7_2
    end
    L5_2 = pairs
    L6_2 = A1_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      if "x" == L9_2 then
        L11_2 = pairs
        L12_2 = L10_2
        L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
        for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
          if 2 == L15_2 then
            L16_2 = L16_2 * -1
          end
          L17_2 = SetVehicleWheelXOffset
          L18_2 = A0_2
          L19_2 = parseInt
          L20_2 = L15_2
          L19_2 = L19_2(L20_2)
          L20_2 = tonumber
          L21_2 = L16_2
          L20_2, L21_2 = L20_2(L21_2)
          L17_2(L18_2, L19_2, L20_2, L21_2)
          L17_2 = L3_2
          L18_2 = L4_2
          L17_2 = L17_2 .. L18_2
          L18_2 = L9_1
          L17_2 = L18_2[L17_2]
          L17_2 = L17_2.x
          L18_2 = tonumber
          L19_2 = L16_2
          L18_2 = L18_2(L19_2)
          L17_2[L15_2] = L18_2
          L17_2 = L3_2
          L18_2 = L4_2
          L17_2 = L17_2 .. L18_2
          L18_2 = L10_1
          L19_2 = L3_2
          L20_2 = L4_2
          L19_2 = L19_2 .. L20_2
          L20_2 = L9_1
          L19_2 = L20_2[L19_2]
          L18_2[L17_2] = L19_2
        end
      elseif "y" == L9_2 then
        L11_2 = pairs
        L12_2 = L10_2
        L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
        for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
          if 2 == L15_2 then
            L16_2 = L16_2 * -1
          end
          L17_2 = SetVehicleWheelYRotation
          L18_2 = A0_2
          L19_2 = parseInt
          L20_2 = L15_2
          L19_2 = L19_2(L20_2)
          L20_2 = tonumber
          L21_2 = L16_2
          L20_2, L21_2 = L20_2(L21_2)
          L17_2(L18_2, L19_2, L20_2, L21_2)
          L17_2 = L3_2
          L18_2 = L4_2
          L17_2 = L17_2 .. L18_2
          L18_2 = L9_1
          L17_2 = L18_2[L17_2]
          L17_2 = L17_2.y
          L18_2 = tonumber
          L19_2 = L16_2
          L18_2 = L18_2(L19_2)
          L17_2[L15_2] = L18_2
          L17_2 = L3_2
          L18_2 = L4_2
          L17_2 = L17_2 .. L18_2
          L18_2 = L10_1
          L19_2 = L3_2
          L20_2 = L4_2
          L19_2 = L19_2 .. L20_2
          L20_2 = L9_1
          L19_2 = L20_2[L19_2]
          L18_2[L17_2] = L19_2
        end
      end
    end
  end
end
applyAngular = L11_1
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = table
  L0_2 = L0_2.unpack
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = true
  L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2, L3_2)
  L0_2, L1_2, L2_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L3_2 = L0_2
  L4_2 = L1_2
  L5_2 = L2_2
  return L3_2, L4_2, L5_2
end
getPosition = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L1_2 = {}
  L2_2 = GetPlayerPed
  L3_2 = i
  L2_2 = L2_2(L3_2)
  L3_2 = PlayerId
  L3_2 = L3_2()
  L4_2 = getPosition
  L4_2, L5_2, L6_2 = L4_2()
  L7_2 = GetActivePlayers
  L7_2 = L7_2()
  L8_2 = pairs
  L9_2 = L7_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = GetPlayerFromServerId
    L15_2 = L12_2
    L14_2 = L14_2(L15_2)
    if L14_2 ~= L3_2 and L14_2 then
      L15_2 = NetworkIsPlayerConnected
      L16_2 = L14_2
      L15_2 = L15_2(L16_2)
      if L15_2 then
        L15_2 = GetPlayerPed
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        L16_2 = table
        L16_2 = L16_2.unpack
        L17_2 = GetEntityCoords
        L18_2 = L15_2
        L19_2 = true
        L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L17_2(L18_2, L19_2)
        L16_2, L17_2, L18_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        L19_2 = GetDistanceBetweenCoords
        L20_2 = L16_2
        L21_2 = L17_2
        L22_2 = L18_2
        L23_2 = L4_2
        L24_2 = L5_2
        L25_2 = L6_2
        L26_2 = true
        L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        if A0_2 >= L19_2 then
          L1_2[L12_2] = L19_2
        end
      end
    end
  end
  return L1_2
end
getNearestPlayers = L11_1
L11_1 = Citizen
L11_1 = L11_1.CreateThread
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  while true do
    L0_2 = 500
    L1_2 = vehicle
    L1_2 = L1_2.entity
    if not L1_2 then
      L1_2 = pairs
      L2_2 = L10_1
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = NetToVeh
        L8_2 = L6_2.netId
        L7_2 = L7_2(L8_2)
        L8_2 = DoesEntityExist
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = GetEntityCoords
          L9_2 = PlayerPedId
          L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L9_2()
          L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L9_2 = GetEntityCoords
          L10_2 = L7_2
          L9_2 = L9_2(L10_2)
          L8_2 = L8_2 - L9_2
          L8_2 = #L8_2
          if L8_2 <= 50 then
            L0_2 = 0
            L9_2 = pairs
            L10_2 = L6_2
            L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
            for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
              if "x" == L13_2 or "y" == L13_2 then
                L15_2 = pairs
                L16_2 = L14_2
                L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
                for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
                  if "x" == L13_2 then
                    L21_2 = SetVehicleWheelXOffset
                    L22_2 = L7_2
                    L23_2 = parseInt
                    L24_2 = L19_2
                    L23_2 = L23_2(L24_2)
                    L24_2 = tonumber
                    L25_2 = L20_2
                    L24_2, L25_2 = L24_2(L25_2)
                    L21_2(L22_2, L23_2, L24_2, L25_2)
                  elseif "y" == L13_2 then
                    L21_2 = SetVehicleWheelYRotation
                    L22_2 = L7_2
                    L23_2 = parseInt
                    L24_2 = L19_2
                    L23_2 = L23_2(L24_2)
                    L24_2 = tonumber
                    L25_2 = L20_2
                    L24_2, L25_2 = L24_2(L25_2)
                    L21_2(L22_2, L23_2, L24_2, L25_2)
                  end
                end
              end
            end
          end
        else
          L8_2 = L10_1
          L8_2[L5_2] = nil
        end
      end
    end
    L1_2 = Wait
    L2_2 = L0_2
    L1_2(L2_2)
  end
end
L11_1(L12_1)
L11_1 = RegisterNetEvent
L12_1 = "syncClientStancer"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L10_1
    L7_2[L5_2] = L6_2
  end
end
L11_1(L12_1, L13_1)
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
len = L11_1
L11_1 = Citizen
L11_1 = L11_1.CreateThread
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  while true do
    L0_2 = Wait
    L1_2 = 5000
    L0_2(L1_2)
    L0_2 = len
    L1_2 = L10_1
    L0_2 = L0_2(L1_2)
    if L0_2 > 0 then
      L0_2 = getNearestPlayers
      L1_2 = 10
      L0_2 = L0_2(L1_2)
      L1_2 = {}
      L2_2 = pairs
      L3_2 = L0_2
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      end
      L2_2 = TriggerServerEvent
      L3_2 = "syncStancer"
      L4_2 = L1_2
      L5_2 = L10_1
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L11_1(L12_1)
L11_1 = RegisterNUICallback
L12_1 = "setColor"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2[1]
  if L2_2 then
    L2_2 = A0_2[1]
    L3_2 = A0_2[2]
    L4_2 = SetVehicleCustomPrimaryColour
    L5_2 = vehicle
    L5_2 = L5_2.entity
    L6_2 = L2_2[1]
    L7_2 = L2_2[2]
    L8_2 = L2_2[3]
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = SetVehicleCustomSecondaryColour
    L5_2 = vehicle
    L5_2 = L5_2.entity
    L6_2 = L3_2[1]
    L7_2 = L3_2[2]
    L8_2 = L3_2[3]
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = setCache
    L5_2 = "colors"
    L6_2 = "primary"
    L7_2 = {}
    L8_2 = L2_2[1]
    L9_2 = L2_2[2]
    L10_2 = L2_2[3]
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L7_2[3] = L10_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = setCache
    L5_2 = "colors"
    L6_2 = "secondary"
    L7_2 = {}
    L8_2 = L3_2[1]
    L9_2 = L3_2[2]
    L10_2 = L3_2[3]
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L7_2[3] = L10_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L11_1(L12_1, L13_1)
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = {}
    L2_2 = {}
    L1_2.mods = L2_2
    L2_2 = {}
    L1_2.colors = L2_2
    L2_2 = {}
    L1_2.wheel = L2_2
    L2_2 = {}
    L1_2.wheelAngular = L2_2
    L2_2 = L1_2.wheel
    L3_2 = GetVehicleWheelType
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L2_2.type = L3_2
    L2_2 = L1_2.wheelAngular
    L3_2 = {}
    L2_2.x = L3_2
    L2_2 = L1_2.wheelAngular
    L3_2 = {}
    L2_2.y = L3_2
    L2_2 = 0
    L3_2 = 5
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2.wheelAngular
      L6_2 = L6_2.x
      L7_2 = GetVehicleWheelXOffset
      L8_2 = A0_2
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      L6_2[L5_2] = L7_2
    end
    L2_2 = 0
    L3_2 = 5
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2.wheelAngular
      L6_2 = L6_2.y
      L7_2 = GetVehicleWheelYRotation
      L8_2 = A0_2
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      L6_2[L5_2] = L7_2
    end
    L2_2 = pairs
    L3_2 = parts
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      if 18 == L6_2 then
        L8_2 = L1_2.mods
        L9_2 = IsToggleModOn
        L10_2 = A0_2
        L11_2 = 18
        L9_2 = L9_2(L10_2, L11_2)
        L8_2[L6_2] = L9_2
      elseif 95 == L6_2 then
        L8_2 = L1_2.mods
        L9_2 = GetVehicleModVariation
        L10_2 = A0_2
        L11_2 = 23
        L9_2 = L9_2(L10_2, L11_2)
        if not L9_2 then
          L9_2 = GetVehicleModVariation
          L10_2 = A0_2
          L11_2 = 24
          L9_2 = L9_2(L10_2, L11_2)
        end
        L8_2[L6_2] = L9_2
      elseif 96 == L6_2 then
        L8_2 = L1_2.mods
        L9_2 = GetVehicleTyresCanBurst
        L10_2 = A0_2
        L9_2 = L9_2(L10_2)
        L9_2 = not L9_2
        L8_2[L6_2] = L9_2
      elseif 35 == L6_2 then
        L8_2 = L1_2.mods
        L9_2 = GetVehicleNumberPlateTextIndex
        L10_2 = A0_2
        L9_2 = L9_2(L10_2)
        L8_2[L6_2] = L9_2
      elseif 46 == L6_2 then
        L8_2 = L1_2.mods
        L9_2 = GetVehicleWindowTint
        L10_2 = A0_2
        L9_2 = L9_2(L10_2)
        L8_2[L6_2] = L9_2
      else
        L8_2 = L1_2.mods
        L9_2 = GetVehicleMod
        L10_2 = A0_2
        L11_2 = parseInt
        L12_2 = L6_2
        L11_2, L12_2 = L11_2(L12_2)
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L8_2[L6_2] = L9_2
      end
    end
    L2_2 = loadColors
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2.colors = L2_2
    return L1_2
  end
end
newVehicleMods = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = SetVehicleModKit
    L2_2 = A0_2
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L1_2 = {}
    L2_2 = GetVehicleTyreSmokeColor
    L3_2 = A0_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    L5_2 = {}
    L6_2 = L2_2
    L7_2 = L3_2
    L8_2 = L4_2
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L1_2.smoke = L5_2
    L5_2 = GetVehicleExtraColours
    L6_2 = A0_2
    L5_2, L6_2 = L5_2(L6_2)
    L1_2.wheelColor = L6_2
    L1_2.pearly = L5_2
    L7_2 = IsToggleModOn
    L8_2 = A0_2
    L9_2 = 22
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = GetVehicleXenonLightsColor
      L8_2 = A0_2
      L7_2 = L7_2(L8_2)
      L8_2 = L5_1
      L8_2 = L8_2[L7_2]
      L1_2.flashLightColor = L8_2
      L1_2.xenon = L7_2
    else
      L1_2.xenon = false
    end
    L7_2 = GetVehicleColours
    L8_2 = A0_2
    L7_2, L8_2 = L7_2(L8_2)
    L9_2 = {}
    L10_2 = L7_2
    L11_2 = L8_2
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L1_2.colorType = L9_2
    L9_2 = GetVehicleCustomPrimaryColour
    L10_2 = A0_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    L12_2 = {}
    L13_2 = L9_2
    L14_2 = L10_2
    L15_2 = L11_2
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L1_2.primary = L12_2
    L12_2 = GetVehicleCustomSecondaryColour
    L13_2 = A0_2
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    L15_2 = {}
    L16_2 = L12_2
    L17_2 = L13_2
    L18_2 = L14_2
    L15_2[1] = L16_2
    L15_2[2] = L17_2
    L15_2[3] = L18_2
    L1_2.secondary = L15_2
    L15_2 = IsVehicleNeonLightEnabled
    L16_2 = A0_2
    L17_2 = 1
    L15_2 = L15_2(L16_2, L17_2)
    if L15_2 then
      L15_2 = GetVehicleNeonLightsColour
      L16_2 = A0_2
      L15_2, L16_2, L17_2 = L15_2(L16_2)
      L18_2 = {}
      L19_2 = L15_2
      L20_2 = L16_2
      L21_2 = L17_2
      L18_2[1] = L19_2
      L18_2[2] = L20_2
      L18_2[3] = L21_2
      L1_2.neon = L18_2
    else
      L1_2.neon = false
    end
    return L1_2
  end
end
loadColors = L11_1
L11_1 = RegisterNUICallback
L12_1 = "confirmBudget"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = NetToVeh
  L4_2 = A0_2.budget
  L4_2 = L4_2.netId
  L3_2 = L3_2(L4_2)
  L4_2 = DoesEntityExist
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = GetEntityCoords
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = GetEntityCoords
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2 - L4_2
    L5_2 = #L5_2
    L6_2 = BudgetDistance
    if L5_2 > L6_2 then
      L6_2 = TriggerEvent
      L7_2 = "Notify"
      L8_2 = "aviso"
      L9_2 = "Nenhum veiculo pr\195\179ximo"
      L10_2 = 5000
      return L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = GetEntityModel
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L7_2 = GetDisplayNameFromVehicleModel
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2
    L7_2 = L7_2.lower
    L7_2 = L7_2(L8_2)
    L8_2 = useVehList
    if L8_2 then
      L8_2 = useVehList
      L9_2 = 7
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    end
    if not L7_2 then
      L8_2 = print
      L9_2 = "Veiculo"
      L10_2 = L7_2
      L11_2 = "nao registrado"
      return L8_2(L9_2, L10_2, L11_2)
    end
    L8_2 = GetVehicleNumberPlateText
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L9_2 = vSERVER
    L9_2 = L9_2.confirmBudget
    L10_2 = A0_2.price
    L11_2 = L7_2
    L12_2 = L8_2
    L13_2 = A0_2
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    if L9_2 then
      L10_2 = closeMechanic
      L11_2 = "mechanic"
      L10_2(L11_2)
      L10_2 = DoesEntityExist
      L11_2 = L3_2
      L10_2 = L10_2(L11_2)
      if not L10_2 then
        goto lbl_107
      end
      L10_2 = NetworkRequestControlOfEntity
      L11_2 = L3_2
      L10_2(L11_2)
      while true do
        L10_2 = NetworkHasControlOfEntity
        L11_2 = L3_2
        L10_2 = L10_2(L11_2)
        if L10_2 then
          break
        end
        L10_2 = Wait
        L11_2 = 21
        L10_2(L11_2)
      end
      L10_2 = onMechanicApply
      L11_2 = VehToNet
      L12_2 = L3_2
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = applyColors
      L11_2 = L3_2
      L12_2 = A0_2.saved
      L12_2 = L12_2.colors
      L10_2(L11_2, L12_2)
      L10_2 = src
      L10_2 = L10_2.applyMods
      L11_2 = VehToNet
      L12_2 = L3_2
      L11_2 = L11_2(L12_2)
      L12_2 = A0_2.saved
      L12_2 = L12_2.mods
      L10_2(L11_2, L12_2)
    else
      L10_2 = compareMods
      L10_2()
    end
    ::lbl_107::
    L10_2 = A1_2
    if L9_2 then
      L11_2 = true
      if L11_2 then
        goto lbl_114
      end
    end
    L11_2 = "declined"
    ::lbl_114::
    L10_2(L11_2)
    return
  end
  L4_2 = A1_2
  L5_2 = "undefined"
  L4_2(L5_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "smokeColor"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = smokeColor
  L3_2 = vehicle
  L3_2 = L3_2.entity
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L11_1(L12_1, L13_1)
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = vehicle
  L3_2 = L3_2.mods
  if L3_2 then
    L3_2 = vehicle
    L3_2 = L3_2.mods
    L3_2 = L3_2[A0_2]
    if not L3_2 then
      L3_2 = vehicle
      L3_2 = L3_2.mods
      L4_2 = {}
      L3_2[A0_2] = L4_2
    end
    L3_2 = vehicle
    L3_2 = L3_2.mods
    L3_2 = L3_2[A0_2]
    L3_2[A1_2] = A2_2
  end
end
setCache = L11_1
L11_1 = RegisterNUICallback
L12_1 = "choosePearly"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = SetVehicleModKit
  L3_2 = vehicle
  L3_2 = L3_2.entity
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = GetVehicleExtraColours
  L3_2 = vehicle
  L3_2 = L3_2.entity
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = SetVehicleExtraColours
  L5_2 = vehicle
  L5_2 = L5_2.entity
  L6_2 = parseInt
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = setCache
  L5_2 = "colors"
  L6_2 = "pearly"
  L7_2 = parseInt
  L8_2 = A0_2
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "XenonColor"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = SetVehicleModKit
  L3_2 = vehicle
  L3_2 = L3_2.entity
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = setCache
  L3_2 = "colors"
  L4_2 = "xenon"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetVehicleXenonLightsColour
  L3_2 = vehicle
  L3_2 = L3_2.entity
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "handleTint"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetVehicleModKit
  L3_2 = vehicle
  L3_2 = L3_2.entity
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = handleTint
  L3_2 = A0_2[1]
  L4_2 = A0_2[2]
  L2_2(L3_2, L4_2)
end
L11_1(L12_1, L13_1)
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = SetVehicleModKit
  L3_2 = vehicle
  L3_2 = L3_2.entity
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = GetVehicleColours
  L3_2 = vehicle
  L3_2 = L3_2.entity
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = L7_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2[1]
  L5_2 = ClearVehicleCustomPrimaryColour
  L6_2 = vehicle
  L6_2 = L6_2.entity
  L5_2(L6_2)
  L5_2 = SetVehicleCustomPrimaryColour
  L6_2 = vehicle
  L6_2 = L6_2.entity
  L7_2 = A1_2[1]
  L8_2 = A1_2[2]
  L9_2 = A1_2[3]
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = setCache
  L6_2 = "colors"
  L7_2 = "primary"
  L8_2 = {}
  L9_2 = A1_2[1]
  L10_2 = A1_2[2]
  L11_2 = A1_2[3]
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetVehicleColours
  L6_2 = vehicle
  L6_2 = L6_2.entity
  L7_2 = L4_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
handleTint = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L1_2 = #L1_2
  L2_1 = A0_2
  L2_2 = L2_1
  L2_2 = #L2_2
  if L1_2 < L2_2 then
    L2_2 = TriggerEvent
    L3_2 = SoundEvent
    L4_2 = "addtokart"
    L5_2 = 0.8
    L2_2(L3_2, L4_2, L5_2)
  end
end
atualizeCart = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L4_1
  L1_2 = L1_2[A0_2]
  L2_2 = false
  L3_2 = 0
  L4_2 = 0
  L5_2 = GetVehicleWheelType
  L6_2 = vehicle
  L6_2 = L6_2.entity
  L5_2 = L5_2(L6_2)
  if L5_2 == L1_2 then
    L2_2 = true
    L3_2 = rodaatual
  end
  L6_2 = SetVehicleWheelType
  L7_2 = vehicle
  L7_2 = L7_2.entity
  L8_2 = L1_2
  L6_2(L7_2, L8_2)
  L6_2 = GetNumVehicleMods
  L7_2 = vehicle
  L7_2 = L7_2.entity
  L8_2 = 23
  L6_2 = L6_2(L7_2, L8_2)
  L4_2 = L6_2
  L6_2 = SetVehicleWheelType
  L7_2 = vehicle
  L7_2 = L7_2.entity
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2
  return L6_2, L7_2, L8_2
end
isWheelType = L11_1
L11_1 = RegisterNUICallback
L12_1 = "setDiscount"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = vSERVER
  L2_2 = L2_2.canSetDiscount
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L11_1(L12_1, L13_1)
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2
  L0_2 = vehicle
  L0_2 = L0_2.entity
  while true do
    L1_2 = DoesEntityExist
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 25
    L1_2(L2_2)
  end
  L1_2 = SetVehicleModKit
  L2_2 = L0_2
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = json
  L1_2 = L1_2.encode
  L2_2 = carParts
  L1_2 = L1_2(L2_2)
  L2_2 = json
  L2_2 = L2_2.decode
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = pairs
    L11_2 = L9_2
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      L16_2 = L15_2.subCategories
      if not L16_2 then
        L16_2 = L15_2.itemIndex
        if L16_2 then
          L16_2 = L15_2.itemIndex
          if 98 ~= L16_2 then
            L16_2 = L15_2.itemIndex
            L17_2 = 200
            if L16_2 < L17_2 then
              L16_2 = GetNumVehicleMods
              L17_2 = L0_2
              L18_2 = L15_2.itemIndex
              L16_2 = L16_2(L17_2, L18_2)
              L17_2 = L15_2.itemIndex
              if 46 == L17_2 then
                L17_2 = GetNumVehicleWindowTints
                L17_2 = L17_2()
                L16_2 = L17_2
              else
                L17_2 = L15_2.itemIndex
                if 18 == L17_2 then
                  L16_2 = 1
                end
              end
              if L16_2 > 0 then
                L17_2 = L15_2.itemIndex
                if 35 == L17_2 then
                  L17_2 = GetVehicleNumberPlateTextIndex
                  L18_2 = L0_2
                  L17_2 = L17_2(L18_2)
                  L17_2 = L17_2 - 1
                  alreadyIndex = L17_2
                else
                  L17_2 = L15_2.itemIndex
                  if 18 == L17_2 then
                    L17_2 = IsToggleModOn
                    L18_2 = L0_2
                    L19_2 = 18
                    L17_2 = L17_2(L18_2, L19_2)
                    if L17_2 then
                      L17_2 = 0
                      if L17_2 then
                        goto lbl_90
                      end
                    end
                    L17_2 = -1
                    ::lbl_90::
                    alreadyIndex = L17_2
                  else
                    L17_2 = L15_2.itemIndex
                    if 46 == L17_2 then
                      L17_2 = GetVehicleWindowTint
                      L18_2 = L0_2
                      L17_2 = L17_2(L18_2)
                      alreadyIndex = L17_2
                    else
                      L17_2 = GetVehicleMod
                      L18_2 = L0_2
                      L19_2 = L15_2.itemIndex
                      L17_2 = L17_2(L18_2, L19_2)
                      alreadyIndex = L17_2
                    end
                  end
                end
                L17_2 = L2_2[L8_2]
                L17_2 = L17_2[L14_2]
                L18_2 = {}
                L17_2.itemOptions = L18_2
                L17_2 = 0
                L18_2 = L16_2
                L19_2 = 1
                for L20_2 = L17_2, L18_2, L19_2 do
                  L21_2 = alreadyIndex
                  L21_2 = L21_2 + 1
                  L21_2 = L21_2 == L20_2
                  if L21_2 and L20_2 > 0 then
                    L22_2 = L2_2[L8_2]
                    L22_2 = L22_2[L14_2]
                    L22_2.installed = true
                  end
                  L22_2 = table
                  L22_2 = L22_2.insert
                  L23_2 = L2_2[L8_2]
                  L23_2 = L23_2[L14_2]
                  L23_2 = L23_2.itemOptions
                  L24_2 = {}
                  if 0 == L20_2 then
                    L25_2 = "original"
                    if L25_2 then
                      goto lbl_147
                    end
                  end
                  L25_2 = parts
                  L26_2 = L15_2.itemIndex
                  L25_2 = L25_2[L26_2]
                  L25_2 = L25_2[1]
                  L26_2 = " "
                  L27_2 = L20_2
                  L25_2 = L25_2 .. L26_2 .. L27_2
                  ::lbl_147::
                  L24_2.name = L25_2
                  if 0 == L20_2 then
                    L25_2 = 0
                    if L25_2 then
                      goto lbl_175
                    end
                  end
                  if 1 == L20_2 then
                    L25_2 = parts
                    L26_2 = L15_2.itemIndex
                    L25_2 = L25_2[L26_2]
                    L25_2 = L25_2[2]
                    if L25_2 then
                      goto lbl_175
                    end
                  end
                  L25_2 = parts
                  L26_2 = L15_2.itemIndex
                  L25_2 = L25_2[L26_2]
                  L25_2 = L25_2[2]
                  L26_2 = parts
                  L27_2 = L15_2.itemIndex
                  L26_2 = L26_2[L27_2]
                  L26_2 = L26_2[3]
                  L27_2 = L20_2 - 1
                  L26_2 = L26_2 * L27_2
                  L25_2 = L25_2 + L26_2
                  ::lbl_175::
                  L24_2.price = L25_2
                  L24_2.purchased = L21_2
                  L22_2(L23_2, L24_2)
                end
              else
                L17_2 = L15_2.itemIndex
                if "reparar" ~= L17_2 then
                  L17_2 = table
                  L17_2 = L17_2.insert
                  L18_2 = L2_2[L8_2]
                  L18_2 = L18_2[L14_2]
                  L18_2 = L18_2.itemOptions
                  L19_2 = {}
                  L19_2.name = "original"
                  L19_2.price = 0
                  L19_2.purchased = true
                  L17_2(L18_2, L19_2)
                end
              end
            end
          end
        end
        L16_2 = L15_2.itemName
        if "cores" == L16_2 then
          L16_2 = GetVehicleCustomPrimaryColour
          L17_2 = L0_2
          L16_2, L17_2, L18_2 = L16_2(L17_2)
          L19_2 = rgbToHex
          L20_2 = {}
          L21_2 = L16_2
          L22_2 = L17_2
          L23_2 = L18_2
          L20_2[1] = L21_2
          L20_2[2] = L22_2
          L20_2[3] = L23_2
          L19_2 = L19_2(L20_2)
          L20_2 = GetVehicleCustomSecondaryColour
          L21_2 = L0_2
          L20_2, L21_2, L22_2 = L20_2(L21_2)
          L23_2 = rgbToHex
          L24_2 = {}
          L25_2 = L20_2
          L26_2 = L21_2
          L27_2 = L22_2
          L24_2[1] = L25_2
          L24_2[2] = L26_2
          L24_2[3] = L27_2
          L23_2 = L23_2(L24_2)
          L24_2 = GetVehicleExtraColours
          L25_2 = L0_2
          L24_2, L25_2 = L24_2(L25_2)
          L26_2 = colorType
          L27_2 = GetVehicleColours
          L28_2 = L0_2
          L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L27_2(L28_2)
          L26_2 = L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
          L27_2 = L2_2[L8_2]
          L27_2 = L27_2[L14_2]
          L27_2.primaryColor = L19_2
          L27_2 = L2_2[L8_2]
          L27_2 = L27_2[L14_2]
          L27_2.secondaryColor = L23_2
          L27_2 = L2_2[L8_2]
          L27_2 = L27_2[L14_2]
          L27_2.selectedColorType = L26_2
          L27_2 = L2_2[L8_2]
          L27_2 = L27_2[L14_2]
          L28_2 = L6_1
          L28_2 = L28_2[L24_2]
          L27_2.pearlyColor = L28_2
        end
      else
        L16_2 = pairs
        L17_2 = L15_2.subCategories
        L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
        for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
          L22_2 = L21_2.itemName
          if "tipo" == L22_2 then
            L22_2 = IsThisModelABike
            L23_2 = GetEntityModel
            L24_2 = L0_2
            L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L23_2(L24_2)
            L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
            if not L22_2 then
              L22_2 = L2_2[L8_2]
              L22_2 = L22_2[L14_2]
              L22_2 = L22_2.subCategories
              L22_2 = L22_2[L20_2]
              L22_2 = L22_2.subCategories
              if not L22_2 then
                L22_2 = L2_2[L8_2]
                L22_2 = L22_2[L14_2]
                L22_2 = L22_2.subCategories
                L22_2 = L22_2[L20_2]
                L23_2 = {}
                L22_2.subCategories = L23_2
              end
              L22_2 = pairs
              L23_2 = L4_1
              L22_2, L23_2, L24_2, L25_2 = L22_2(L23_2)
              for L26_2, L27_2 in L22_2, L23_2, L24_2, L25_2 do
                L28_2 = isWheelType
                L29_2 = L26_2
                L28_2, L29_2, L30_2 = L28_2(L29_2)
                L31_2 = GetVehicleWheelType
                L32_2 = L0_2
                L31_2 = L31_2(L32_2)
                L32_2 = L27_2 == L31_2
                L33_2 = {}
                L34_2 = false
                L35_2 = 1
                L36_2 = L30_2
                L37_2 = 1
                for L38_2 = L35_2, L36_2, L37_2 do
                  L39_2 = L32_2 or L39_2
                  if L32_2 then
                    L39_2 = GetVehicleMod
                    L40_2 = L0_2
                    L41_2 = 23
                    L39_2 = L39_2(L40_2, L41_2)
                    L40_2 = L38_2 - 2
                    L39_2 = L39_2 == L40_2
                  end
                  if L39_2 then
                    L34_2 = true
                  end
                  L40_2 = table
                  L40_2 = L40_2.insert
                  L41_2 = L33_2
                  L42_2 = {}
                  L43_2 = "roda "
                  if 1 == L38_2 then
                    L44_2 = "padr\195\163o"
                    if L44_2 then
                      goto lbl_318
                    end
                  end
                  L44_2 = L38_2
                  ::lbl_318::
                  L43_2 = L43_2 .. L44_2
                  L42_2.name = L43_2
                  if 1 == L38_2 then
                    L43_2 = 0
                    if L43_2 then
                      goto lbl_347
                    end
                  end
                  if 2 == L38_2 then
                    L43_2 = parts
                    L44_2 = L21_2.itemIndex
                    L43_2 = L43_2[L44_2]
                    L43_2 = L43_2[2]
                    if L43_2 then
                      goto lbl_347
                    end
                  end
                  L43_2 = parts
                  L44_2 = L21_2.itemIndex
                  L43_2 = L43_2[L44_2]
                  L43_2 = L43_2[2]
                  L44_2 = parts
                  L45_2 = L21_2.itemIndex
                  L44_2 = L44_2[L45_2]
                  L44_2 = L44_2[3]
                  L45_2 = L38_2 - 1
                  L44_2 = L44_2 * L45_2
                  L43_2 = L43_2 + L44_2
                  ::lbl_347::
                  L42_2.price = L43_2
                  L42_2.itemName = L26_2
                  L42_2.itemIndex = 23
                  L42_2.purchased = L39_2
                  L40_2(L41_2, L42_2)
                end
                L35_2 = table
                L35_2 = L35_2.insert
                L36_2 = L2_2[L8_2]
                L36_2 = L36_2[L14_2]
                L36_2 = L36_2.subCategories
                L36_2 = L36_2[L20_2]
                L36_2 = L36_2.subCategories
                L37_2 = {}
                L37_2.itemName = L26_2
                L37_2.itemSize = "small"
                L37_2.itemOptions = L33_2
                L37_2.itemIndex = 23
                L37_2.installed = L34_2
                L35_2(L36_2, L37_2)
              end
            else
              L22_2 = L2_2[L8_2]
              L22_2 = L22_2[L14_2]
              L22_2 = L22_2.subCategories
              L22_2 = L22_2[L20_2]
              L22_2 = L22_2.itemOptions
              if not L22_2 then
                L22_2 = L2_2[L8_2]
                L22_2 = L22_2[L14_2]
                L22_2 = L22_2.subCategories
                L22_2 = L22_2[L20_2]
                L23_2 = {}
                L22_2.itemOptions = L23_2
              end
              L22_2 = GetNumVehicleMods
              L23_2 = L0_2
              L24_2 = 23
              L22_2 = L22_2(L23_2, L24_2)
              L23_2 = GetVehicleMod
              L24_2 = L0_2
              L25_2 = 23
              L23_2 = L23_2(L24_2, L25_2)
              L24_2 = 1
              L25_2 = L22_2
              L26_2 = 1
              for L27_2 = L24_2, L25_2, L26_2 do
                L28_2 = haveCategory
                if L28_2 then
                  L28_2 = GetVehicleMod
                  L29_2 = L0_2
                  L30_2 = 23
                  L28_2 = L28_2(L29_2, L30_2)
                  L29_2 = L27_2 - 2
                  L28_2 = L28_2 == L29_2
                end
                L29_2 = table
                L29_2 = L29_2.insert
                L30_2 = L2_2[L8_2]
                L30_2 = L30_2[L14_2]
                L30_2 = L30_2.subCategories
                L30_2 = L30_2[L20_2]
                L30_2 = L30_2.itemOptions
                L31_2 = {}
                L32_2 = "roda "
                if 1 == L27_2 then
                  L33_2 = "padr\195\163o"
                  if L33_2 then
                    goto lbl_427
                  end
                end
                L33_2 = L27_2
                ::lbl_427::
                L32_2 = L32_2 .. L33_2
                L31_2.name = L32_2
                if 1 == L27_2 then
                  L32_2 = 0
                  if L32_2 then
                    goto lbl_456
                  end
                end
                if 2 == L27_2 then
                  L32_2 = parts
                  L33_2 = L21_2.itemIndex
                  L32_2 = L32_2[L33_2]
                  L32_2 = L32_2[2]
                  if L32_2 then
                    goto lbl_456
                  end
                end
                L32_2 = parts
                L33_2 = L21_2.itemIndex
                L32_2 = L32_2[L33_2]
                L32_2 = L32_2[2]
                L33_2 = parts
                L34_2 = L21_2.itemIndex
                L33_2 = L33_2[L34_2]
                L33_2 = L33_2[3]
                L34_2 = L27_2 - 1
                L33_2 = L33_2 * L34_2
                L32_2 = L32_2 + L33_2
                ::lbl_456::
                L31_2.price = L32_2
                L31_2.purchased = L28_2
                L29_2(L30_2, L31_2)
              end
            end
          else
            L22_2 = L21_2.itemName
            if "cor" == L22_2 then
              L22_2 = L2_2[L8_2]
              L22_2 = L22_2[L14_2]
              L22_2 = L22_2.subCategories
              L22_2 = L22_2[L20_2]
              L23_2 = L6_1
              L22_2.colorPresets = L23_2
            else
              L22_2 = nil
              L23_2 = L21_2.itemIndex
              if 35 == L23_2 then
                L23_2 = GetNumberOfVehicleNumberPlates
                L23_2 = L23_2()
                L22_2 = L23_2 - 1
              else
                L23_2 = GetNumVehicleMods
                L24_2 = L0_2
                L25_2 = L21_2.itemIndex
                L23_2 = L23_2(L24_2, L25_2)
                L22_2 = L23_2
              end
              L23_2 = L2_2[L8_2]
              L23_2 = L23_2[L14_2]
              L24_2 = {}
              L23_2.itemOptions = L24_2
              L23_2 = GetVehicleMod
              L24_2 = L0_2
              L25_2 = L21_2.itemIndex
              L23_2 = L23_2(L24_2, L25_2)
              L24_2 = L21_2.itemIndex
              if L24_2 then
                L24_2 = L21_2.itemIndex
                if 22 ~= L24_2 then
                  L24_2 = L21_2.itemIndex
                  if 100 ~= L24_2 then
                    L24_2 = 0
                    L25_2 = L22_2
                    L26_2 = 1
                    for L27_2 = L24_2, L25_2, L26_2 do
                      L28_2 = L2_2[L8_2]
                      L28_2 = L28_2[L14_2]
                      L28_2 = L28_2.subCategories
                      L28_2 = L28_2[L20_2]
                      L28_2 = L28_2.itemOptions
                      if not L28_2 then
                        L28_2 = L2_2[L8_2]
                        L28_2 = L28_2[L14_2]
                        L28_2 = L28_2.subCategories
                        L28_2 = L28_2[L20_2]
                        L29_2 = {}
                        L28_2.itemOptions = L29_2
                      end
                      L28_2 = table
                      L28_2 = L28_2.insert
                      L29_2 = L2_2[L8_2]
                      L29_2 = L29_2[L14_2]
                      L29_2 = L29_2.subCategories
                      L29_2 = L29_2[L20_2]
                      L29_2 = L29_2.itemOptions
                      L30_2 = {}
                      if 0 == L27_2 then
                        L31_2 = "original"
                        if L31_2 then
                          goto lbl_542
                        end
                      end
                      L31_2 = parts
                      L32_2 = L21_2.itemIndex
                      L31_2 = L31_2[L32_2]
                      L31_2 = L31_2[1]
                      L32_2 = " "
                      L33_2 = L27_2
                      L31_2 = L31_2 .. L32_2 .. L33_2
                      ::lbl_542::
                      L30_2.name = L31_2
                      if 0 == L27_2 then
                        L31_2 = 0
                        if L31_2 then
                          goto lbl_570
                        end
                      end
                      if 1 == L27_2 then
                        L31_2 = parts
                        L32_2 = L21_2.itemIndex
                        L31_2 = L31_2[L32_2]
                        L31_2 = L31_2[2]
                        if L31_2 then
                          goto lbl_570
                        end
                      end
                      L31_2 = parts
                      L32_2 = L21_2.itemIndex
                      L31_2 = L31_2[L32_2]
                      L31_2 = L31_2[2]
                      L32_2 = parts
                      L33_2 = L21_2.itemIndex
                      L32_2 = L32_2[L33_2]
                      L32_2 = L32_2[3]
                      L33_2 = L27_2 - 1
                      L32_2 = L32_2 * L33_2
                      L31_2 = L31_2 + L32_2
                      ::lbl_570::
                      L30_2.price = L31_2
                      L31_2 = L23_2 + 1
                      L31_2 = L31_2 == L27_2
                      L30_2.purchased = L31_2
                      L28_2(L29_2, L30_2)
                    end
                    if L22_2 > 0 then
                    end
                end
              end
              else
                L24_2 = L21_2.itemIndex
                if 22 == L24_2 then
                  L24_2 = IsToggleModOn
                  L25_2 = L0_2
                  L26_2 = 22
                  L24_2 = L24_2(L25_2, L26_2)
                  L25_2 = L2_2[L8_2]
                  L25_2 = L25_2[L14_2]
                  L25_2 = L25_2.subCategories
                  L25_2 = L25_2[L20_2]
                  L25_2 = L25_2.itemOptions
                  L25_2 = L25_2[2]
                  L25_2.purchased = L24_2
                else
                  L24_2 = L21_2.itemIndex
                  if 100 == L24_2 then
                    L24_2 = IsVehicleNeonLightEnabled
                    L25_2 = L0_2
                    L26_2 = 3
                    L24_2 = L24_2(L25_2, L26_2)
                    L25_2 = L2_2[L8_2]
                    L25_2 = L25_2[L14_2]
                    L25_2 = L25_2.subCategories
                    L25_2 = L25_2[L20_2]
                    L25_2 = L25_2.itemOptions
                    L25_2 = L25_2[2]
                    L25_2.purchased = L24_2
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  return L2_2
end
loadVehicleMods = L11_1
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = vehicle
  L0_2 = L0_2.entity
  L1_2 = {}
  L2_2 = DoesEntityExist
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetVehicleTyreSmokeColor
    L3_2 = L0_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    L5_2 = {}
    L6_2 = L2_2
    L7_2 = L3_2
    L8_2 = L4_2
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L1_2.smokeColor = L5_2
    L5_2 = vehicle
    L5_2 = L5_2.mods
    L5_2 = L5_2.colors
    L6_2 = {}
    L7_2 = L2_2
    L8_2 = L3_2
    L9_2 = L4_2
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L5_2.smoke = L6_2
    L5_2 = GetVehicleNeonLightsColour
    L6_2 = L0_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L8_2 = rgbToHex
    L9_2 = {}
    L10_2 = L5_2
    L11_2 = L6_2
    L12_2 = L7_2
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L8_2 = L8_2(L9_2)
    L1_2.neonColor = L8_2
    L8_2 = vehicle
    L8_2 = L8_2.mods
    L8_2 = L8_2.colors
    L9_2 = {}
    L10_2 = L5_2
    L11_2 = L6_2
    L12_2 = L7_2
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L8_2.neon = L9_2
    L8_2 = GetVehicleExtraColours
    L9_2 = L0_2
    L8_2, L9_2 = L8_2(L9_2)
    L10_2 = L6_1
    L10_2 = L10_2[L9_2]
    L1_2.wheelColor = L10_2
    L10_2 = GetVehicleXenonLightsColor
    L11_2 = L0_2
    L10_2 = L10_2(L11_2)
    L11_2 = vehicle
    L11_2 = L11_2.mods
    L11_2 = L11_2.colors
    L11_2.xenon = L10_2
    L11_2 = L5_1
    L11_2 = L11_2[L10_2]
    L1_2.flashLightColor = L11_2
    L11_2 = L6_1
    L11_2 = L11_2[L8_2]
    L1_2.pearly = L11_2
  end
  return L1_2
end
loadCustomColors = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = "#"
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = ""
    while L7_2 > 0 do
      L9_2 = math
      L9_2 = L9_2.fmod
      L10_2 = L7_2
      L11_2 = 16
      L9_2 = L9_2(L10_2, L11_2)
      L9_2 = L9_2 + 1
      L10_2 = math
      L10_2 = L10_2.floor
      L11_2 = L7_2 / 16
      L10_2 = L10_2(L11_2)
      L7_2 = L10_2
      L10_2 = string
      L10_2 = L10_2.sub
      L11_2 = "0123456789ABCDEF"
      L12_2 = L9_2
      L13_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L11_2 = L8_2
      L10_2 = L10_2 .. L11_2
      L8_2 = L10_2
    end
    L9_2 = string
    L9_2 = L9_2.len
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if 0 == L9_2 then
      L8_2 = "00"
    else
      L9_2 = string
      L9_2 = L9_2.len
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if 1 == L9_2 then
        L9_2 = "0"
        L10_2 = L8_2
        L9_2 = L9_2 .. L10_2
        L8_2 = L9_2
      end
    end
    L9_2 = L1_2
    L10_2 = L8_2
    L9_2 = L9_2 .. L10_2
    L1_2 = L9_2
  end
  return L1_2
end
rgbToHex = L11_1
L11_1 = RegisterNUICallback
L12_1 = "setMod"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetVehiclePedIsIn
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = setMod
  L4_2 = L2_2
  L5_2 = parseInt
  L6_2 = A0_2.partIndex
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.selectedTunning
  L7_2 = A0_2.weelType
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L11_1(L12_1, L13_1)
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetVehicleMod
  L3_2 = L1_2
  L4_2 = 23
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetLabelText
  L4_2 = GetModTextLabel
  L5_2 = L1_2
  L6_2 = 23
  L7_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = GetVehicleWheelType
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = L4_2
  return L5_2, L6_2, L7_2
end
GetCurrentWheel = L11_1
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = SetVehicleModKit
  L5_2 = A0_2
  L6_2 = 0
  L4_2(L5_2, L6_2)
  L4_2 = functions
  L4_2 = L4_2[A1_2]
  if L4_2 then
    if 35 == A1_2 then
    elseif 18 == A1_2 then
      A2_2 = 0 == A2_2 or 1 == A2_2
      L4_2 = functions
      L4_2 = L4_2[A1_2]
      L5_2 = A0_2
      L6_2 = 18
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
      return
    elseif 46 == A1_2 and -1 == A2_2 then
      A2_2 = 0
    end
    L4_2 = functions
    L4_2 = L4_2[A1_2]
    L5_2 = A0_2
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  else
    if 14 == A1_2 then
      L4_2 = OverrideVehHorn
      L5_2 = A0_2
      L6_2 = false
      L7_2 = 0
      L4_2(L5_2, L6_2, L7_2)
    elseif 23 == A1_2 or 24 == A1_2 then
      L4_2 = GetVehicleClass
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      if 8 == L4_2 then
        L4_2 = SetVehicleWheelType
        L5_2 = A0_2
        L6_2 = 23
        L4_2(L5_2, L6_2)
        L4_2 = SetVehicleWheelType
        L5_2 = A0_2
        L6_2 = 24
        L4_2(L5_2, L6_2)
      elseif A3_2 then
        L4_2 = L4_1
        L4_2 = L4_2[A3_2]
        if L4_2 then
          L4_2 = setCache
          L5_2 = "Wheel"
          L6_2 = "type"
          L7_2 = A3_2
          L4_2(L5_2, L6_2, L7_2)
          L4_2 = setCache
          L5_2 = "Wheel"
          L6_2 = "wheel"
          L7_2 = A2_2
          L4_2(L5_2, L6_2, L7_2)
          L4_2 = SetVehicleWheelType
          L5_2 = A0_2
          L6_2 = L4_1
          L6_2 = L6_2[A3_2]
          L4_2(L5_2, L6_2)
        end
      end
    elseif 100 == A1_2 then
      L4_2 = 0 == A2_2
      L5_2 = setNeon
      L6_2 = A0_2
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      if not L4_2 then
        L5_2 = SetVehicleNeonLightsColour
        L6_2 = A0_2
        L7_2 = 255
        L8_2 = 255
        L9_2 = 255
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
    elseif 22 == A1_2 then
      L4_2 = 0 == A2_2
      L5_2 = ToggleVehicleMod
      L6_2 = A0_2
      L7_2 = 22
      L8_2 = L4_2
      L5_2(L6_2, L7_2, L8_2)
      return
    elseif 96 == A1_2 then
      L4_2 = type
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      L4_2 = "number" == L4_2 and (-1 == A2_2 or A2_2 > 1) or L4_2
      L5_2 = SetVehicleTyresCanBurst
      L6_2 = A0_2
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      return
    elseif 95 == A1_2 then
      L4_2 = 0 == A2_2
      L5_2 = SetVehicleModKit
      L6_2 = A0_2
      L7_2 = 0
      L5_2(L6_2, L7_2)
      L5_2 = GetVehicleMod
      L6_2 = A0_2
      L7_2 = 23
      L5_2 = L5_2(L6_2, L7_2)
      if L4_2 then
        L6_2 = SetVehicleMod
        L7_2 = A0_2
        L8_2 = 23
        L9_2 = L5_2
        L10_2 = true
        L6_2(L7_2, L8_2, L9_2, L10_2)
        L6_2 = GetVehicleClass
        L7_2 = A0_2
        L6_2 = L6_2(L7_2)
        if 8 == L6_2 then
          L6_2 = SetVehicleMod
          L7_2 = A0_2
          L8_2 = 24
          L9_2 = L5_2
          L10_2 = true
          L6_2(L7_2, L8_2, L9_2, L10_2)
        end
      else
        L6_2 = SetVehicleMod
        L7_2 = A0_2
        L8_2 = 23
        L9_2 = L5_2
        L10_2 = false
        L6_2(L7_2, L8_2, L9_2, L10_2)
        L6_2 = GetVehicleClass
        L7_2 = A0_2
        L6_2 = L6_2(L7_2)
        if 8 == L6_2 then
          L6_2 = SetVehicleMod
          L7_2 = A0_2
          L8_2 = 24
          L9_2 = L5_2
          L10_2 = false
          L6_2(L7_2, L8_2, L9_2, L10_2)
        end
      end
      return
    end
    if 23 == A1_2 then
      L4_2 = GetVehicleClass
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      if 8 == L4_2 then
        L4_2 = SetVehicleMod
        L5_2 = A0_2
        L6_2 = 23
        L7_2 = A2_2
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = SetVehicleMod
        L5_2 = A0_2
        L6_2 = 24
        L7_2 = A2_2
        L4_2(L5_2, L6_2, L7_2)
      else
        L4_2 = SetVehicleMod
        L5_2 = A0_2
        L6_2 = 23
        L7_2 = A2_2
        L4_2(L5_2, L6_2, L7_2)
      end
      return
    end
    L4_2 = type
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if "table" ~= L4_2 then
      L4_2 = SetVehicleMod
      L5_2 = A0_2
      L6_2 = A1_2
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
setMod = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 0
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = SetVehicleNeonLightEnabled
    L7_2 = A0_2
    L8_2 = L5_2
    L9_2 = A1_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
setNeon = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = parseInt
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  L3_2 = parseInt
  L4_2 = A1_2[2]
  L3_2 = L3_2(L4_2)
  L4_2 = parseInt
  L5_2 = A1_2[3]
  L4_2 = L4_2(L5_2)
  L5_2 = ToggleVehicleMod
  L6_2 = A0_2
  L7_2 = 20
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetVehicleTyreSmokeColor
  L6_2 = A0_2
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = setCache
  L6_2 = "colors"
  L7_2 = "smoke"
  L8_2 = {}
  L9_2 = L2_2
  L10_2 = L3_2
  L11_2 = L4_2
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L5_2(L6_2, L7_2, L8_2)
end
smokeColor = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if "client" == A0_2 then
    L1_2 = compareMods
    L1_2()
    L1_2 = FreezeEntityPosition
    L2_2 = vehicle
    L2_2 = L2_2.entity
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = ResetCam
    L1_2()
    L1_2 = status
    L1_2 = L1_2.doors
    if L1_2 then
      L1_2 = SetVehicleDoorShut
      L2_2 = vehicle
      L2_2 = L2_2.entity
      L3_2 = 0
      L4_2 = 0
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = SetVehicleDoorShut
      L2_2 = vehicle
      L2_2 = L2_2.entity
      L3_2 = 1
      L4_2 = 0
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = status
      L1_2.doors = false
    end
    L1_2 = vehicle
    L1_2 = L1_2.radar
    if not L1_2 then
      L1_2 = DisplayRadar
      L2_2 = true
      L1_2(L2_2)
    end
    L1_2 = {}
    vehicle = L1_2
  elseif "mechanic" == A0_2 then
    L1_2 = StopScreenEffect
    L2_2 = "MenuMGSelectionIn"
    L1_2(L2_2)
    L1_2 = LocalPlayer
    L1_2 = L1_2.state
    L2_2 = L1_2
    L1_2 = L1_2.set
    L3_2 = "MechanicActive"
    L4_2 = false
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
end
closeMechanic = L11_1
L11_1 = RegisterNUICallback
L12_1 = "receiveBudget"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = vehicle
  L2_2 = L2_2.entity
  L3_2 = {}
  L4_2 = newVehicleMods
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L3_2.mods = L4_2
  L4_2 = loadColors
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L3_2.colors = L4_2
  L4_2 = compareMods
  L4_2()
  L4_2 = DoesEntityExist
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = GetEntityModel
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L5_2 = GetDisplayNameFromVehicleModel
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2
    L5_2 = L5_2.lower
    L5_2 = L5_2(L6_2)
    L6_2 = PlayerId
    L6_2 = L6_2()
    L7_2 = GetPlayerServerId
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = {}
    L8_2.clientId = L7_2
    L8_2.clientCar = L5_2
    L9_2 = A0_2.price
    L8_2.budgetPrice = L9_2
    L9_2 = A0_2.items
    L8_2.items = L9_2
    L8_2.saved = L3_2
    L9_2 = VehToNet
    L10_2 = L2_2
    L9_2 = L9_2(L10_2)
    L8_2.netId = L9_2
    L9_2 = LocalPlayer
    L9_2 = L9_2.state
    L10_2 = L9_2
    L9_2 = L9_2.set
    L11_2 = "awaitingBudget"
    L12_2 = L8_2
    L13_2 = true
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = vSERVER
    L9_2 = L9_2.addBudget
    L10_2 = L8_2
    L9_2(L10_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = src
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L3_2 = "updateBudget"
  L4_2 = A0_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L1_2(L2_2)
end
L11_1.syncBudget = L12_1
L11_1 = RegisterNUICallback
L12_1 = "receiveCart"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = vehicle
  L2_2 = L2_2.entity
  L3_2 = DoesEntityExist
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = GetEntityModel
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = GetDisplayNameFromVehicleModel
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2
    L4_2 = L4_2.lower
    L4_2 = L4_2(L5_2)
    L5_2 = useVehList
    if L5_2 then
      L5_2 = useVehList
      L6_2 = 7
      L5_2 = L5_2(L6_2)
      L4_2 = L5_2
    end
    if not L4_2 then
      L5_2 = print
      L6_2 = "Veiculo"
      L7_2 = L4_2
      L8_2 = "nao registrado"
      return L5_2(L6_2, L7_2, L8_2)
    end
    L5_2 = GetVehicleNumberPlateText
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    L6_2 = L4_2
    L7_2 = L5_2
    L6_2 = L6_2 .. L7_2
    L7_2 = L9_1
    L6_2 = L7_2[L6_2]
    if L6_2 then
      L6_2 = vehicle
      L6_2 = L6_2.mods
      L7_2 = L4_2
      L8_2 = L5_2
      L7_2 = L7_2 .. L8_2
      L8_2 = L9_1
      L7_2 = L8_2[L7_2]
      L6_2.WheelAngular = L7_2
    end
    L6_2 = A0_2.cart
    L6_2 = L6_2[1]
    if not L6_2 then
      L6_2 = vehicle
      L6_2 = L6_2.savedMods
      L7_2 = newVehicleMods
      L8_2 = L2_2
      L7_2 = L7_2(L8_2)
    end
    L6_2 = L6_2 ~= L7_2
    L7_2 = vehicle
    L8_2 = newVehicleMods
    L9_2 = L2_2
    L8_2 = L8_2(L9_2)
    L7_2.mods = L8_2
    L7_2 = vSERVER
    L7_2 = L7_2.canBudget
    L8_2 = A0_2
    L9_2 = L4_2
    L10_2 = L5_2
    L11_2 = vehicle
    L11_2 = L11_2.mods
    L12_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    if L7_2 then
      L8_2 = A0_2.cart
      L8_2 = L8_2[1]
      L8_2 = L8_2.partIndex
      if 98 == L8_2 then
        L8_2 = A0_2.cart
        L8_2 = L8_2[1]
        L8_2 = L8_2.tunning
        if -1 == L8_2 then
          L8_2 = SetVehicleDirtLevel
          L9_2 = vehicle
          L9_2 = L9_2.entity
          L10_2 = 0.0
          L8_2(L9_2, L10_2)
        else
          L8_2 = A0_2.cart
          L8_2 = L8_2[1]
          L8_2 = L8_2.tunning
          if 0 == L8_2 then
            L8_2 = SetVehicleEngineHealth
            L9_2 = vehicle
            L9_2 = L9_2.entity
            L10_2 = 1000.0
            L8_2(L9_2, L10_2)
          else
            L8_2 = SetVehicleEngineHealth
            L9_2 = vehicle
            L9_2 = L9_2.entity
            L10_2 = 1000.0
            L8_2(L9_2, L10_2)
            L8_2 = SetVehicleFixed
            L9_2 = vehicle
            L9_2 = L9_2.entity
            L8_2(L9_2)
            L8_2 = SetVehicleDirtLevel
            L9_2 = vehicle
            L9_2 = L9_2.entity
            L10_2 = 0.0
            L8_2(L9_2, L10_2)
            L8_2 = SetVehicleUndriveable
            L9_2 = vehicle
            L9_2 = L9_2.entity
            L10_2 = false
            L8_2(L9_2, L10_2)
          end
        end
      end
      L8_2 = vehicle
      L9_2 = loadColors
      L10_2 = vehicle
      L10_2 = L10_2.entity
      L9_2 = L9_2(L10_2)
      L8_2.savedColors = L9_2
      L8_2 = pairs
      L9_2 = A0_2.cart
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = purchaseMod
        L15_2 = L13_2.partIndex
        L16_2 = L13_2.tunning
        L14_2(L15_2, L16_2)
      end
    else
      L8_2 = compareMods
      L8_2()
    end
    L8_2 = A1_2
    L9_2 = L7_2
    L8_2(L9_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "deleteBudget"
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = vSERVER
  L1_2 = L1_2.deleteBudget
  L2_2 = A0_2
  L1_2(L2_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "trig_mecanica:applyMods"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 or not A0_2 then
    L3_2 = NetToVeh
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    A0_2 = L3_2
  end
  L3_2 = DoesEntityExist
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = GetEntityModel
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = A2_2 or L4_2
    if not A2_2 then
      L4_2 = GetDisplayNameFromVehicleModel
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = L4_2
      L4_2 = L4_2.lower
      L4_2 = L4_2(L5_2)
    end
    L5_2 = VehToNet
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L6_2 = GetVehicleNumberPlateText
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L7_2 = TriggerServerEvent
    L8_2 = "trig_mecanica_apply"
    L9_2 = L5_2
    L10_2 = {}
    L11_2 = L4_2
    L12_2 = L6_2
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L11_1(L12_1, L13_1)
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if 23 == A0_2 then
    L2_2 = vehicle
    L2_2 = L2_2.savedMods
    L2_2 = L2_2.mods
    L3_2 = tostring
    L4_2 = 24
    L3_2 = L3_2(L4_2)
    L2_2[L3_2] = A1_2
  end
  L2_2 = vehicle
  L2_2 = L2_2.savedMods
  L2_2 = L2_2.mods
  L3_2 = tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2[L3_2] = A1_2
end
purchaseMod = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L4_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 == A0_2 then
      return L5_2
    end
  end
end
getWheelType = L11_1
L11_1 = src
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = NetToVeh
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  while true do
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 25
    L3_2(L4_2)
  end
  L3_2 = DoesEntityExist
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = SetVehicleModKit
    L4_2 = L2_2
    L5_2 = 0
    L3_2(L4_2, L5_2)
    L3_2 = A1_2.wheel
    if L3_2 then
      L3_2 = A1_2.wheel
      L3_2 = L3_2.type
      if L3_2 then
        L3_2 = SetVehicleWheelType
        L4_2 = L2_2
        L5_2 = getWheelType
        L6_2 = A1_2.wheel
        L6_2 = L6_2.type
        L5_2 = L5_2(L6_2)
        L6_2 = L4_1
        L5_2 = L6_2[L5_2]
        L3_2(L4_2, L5_2)
      end
    end
    L3_2 = A1_2.mods
    if not L3_2 then
      L3_2 = {}
    end
    L4_2 = pairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = async
      function L11_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = setMod
        L1_3 = L2_2
        L2_3 = parseInt
        L3_3 = L8_2
        L2_3 = L2_3(L3_3)
        L3_3 = L9_2
        L0_3(L1_3, L2_3, L3_3)
      end
      L10_2(L11_2)
    end
    L4_2 = L3_2["95"]
    if L4_2 then
      L4_2 = GetVehicleMod
      L5_2 = L2_2
      L6_2 = 23
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = SetVehicleMod
      L6_2 = L2_2
      L7_2 = 23
      L8_2 = L4_2
      L9_2 = true
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = GetVehicleClass
      L6_2 = L2_2
      L5_2 = L5_2(L6_2)
      if 8 == L5_2 then
        L5_2 = SetVehicleMod
        L6_2 = L2_2
        L7_2 = 24
        L8_2 = L4_2
        L9_2 = true
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
    end
    L4_2 = A1_2.colors
    if L4_2 then
      L4_2 = applyColors
      L5_2 = L2_2
      L6_2 = A1_2.colors
      L4_2(L5_2, L6_2)
    end
    L4_2 = AngularDetect
    if L4_2 then
      L4_2 = A1_2.wheelAngular
      if L4_2 then
        L4_2 = applyAngular
        L5_2 = L2_2
        L6_2 = A1_2.wheelAngular
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L11_1.applyMods = L12_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = SetVehicleModKit
    L3_2 = A0_2
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L2_2 = A1_2.primary
    if L2_2 then
      L3_2 = SetVehicleCustomPrimaryColour
      L4_2 = A0_2
      L5_2 = L2_2[1]
      L6_2 = L2_2[2]
      L7_2 = L2_2[3]
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    L3_2 = A1_2.secondary
    if L3_2 then
      L4_2 = SetVehicleCustomSecondaryColour
      L5_2 = A0_2
      L6_2 = L3_2[1]
      L7_2 = L3_2[2]
      L8_2 = L3_2[3]
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
    L4_2 = A1_2.colorType
    if L4_2 then
      L4_2 = table
      L4_2 = L4_2.unpack
      L5_2 = A1_2.colorType
      L4_2, L5_2 = L4_2(L5_2)
      if L4_2 and L5_2 then
        L6_2 = SetVehicleColours
        L7_2 = A0_2
        L8_2 = L4_2
        L9_2 = L5_2
        L6_2(L7_2, L8_2, L9_2)
      end
    end
    L4_2 = A1_2.pearly
    if L4_2 then
      L5_2 = GetVehicleExtraColours
      L6_2 = A0_2
      L5_2, L6_2 = L5_2(L6_2)
      L7_2 = SetVehicleExtraColours
      L8_2 = A0_2
      L9_2 = parseInt
      L10_2 = L4_2
      L9_2 = L9_2(L10_2)
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    end
    L5_2 = A1_2.xenon
    if L5_2 then
      L6_2 = ToggleVehicleMod
      L7_2 = A0_2
      L8_2 = 22
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetVehicleXenonLightsColour
      L7_2 = A0_2
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    else
      L6_2 = ToggleVehicleMod
      L7_2 = A0_2
      L8_2 = 22
      L9_2 = false
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = A1_2.smoke
    if L6_2 then
      L7_2 = ToggleVehicleMod
      L8_2 = A0_2
      L9_2 = 20
      L10_2 = true
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = SetVehicleTyreSmokeColor
      L8_2 = A0_2
      L9_2 = L6_2[1]
      L10_2 = L6_2[2]
      L11_2 = L6_2[3]
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
    L7_2 = A1_2.neon
    if L7_2 then
      L8_2 = L7_2[1]
      L9_2 = L7_2[2]
      L8_2 = L8_2 == L9_2
      L9_2 = L7_2[3]
      L8_2 = L8_2 == L9_2
      if not L8_2 then
        L9_2 = L7_2[1]
        if L9_2 then
          L9_2 = L7_2[2]
          if L9_2 then
            L9_2 = L7_2[3]
            if L9_2 then
              L9_2 = setNeon
              L10_2 = A0_2
              L11_2 = true
              L9_2(L10_2, L11_2)
              L9_2 = SetVehicleNeonLightsColour
              L10_2 = A0_2
              L11_2 = L7_2[1]
              L12_2 = L7_2[2]
              L13_2 = L7_2[3]
              L9_2(L10_2, L11_2, L12_2, L13_2)
            end
          end
        end
      end
    else
      L8_2 = setNeon
      L9_2 = A0_2
      L10_2 = false
      L8_2(L9_2, L10_2)
    end
    L8_2 = A1_2.wheelColor
    if L8_2 then
      L9_2 = GetVehicleExtraColours
      L10_2 = A0_2
      L9_2, L10_2 = L9_2(L10_2)
      L11_2 = SetVehicleExtraColours
      L12_2 = A0_2
      L13_2 = L9_2
      L14_2 = parseInt
      L15_2 = L8_2
      L14_2, L15_2 = L14_2(L15_2)
      L11_2(L12_2, L13_2, L14_2, L15_2)
    end
  end
end
applyColors = L11_1
L11_1 = src
function L12_1()
  local L0_2, L1_2
  L0_2 = compareMods
  L0_2()
end
L11_1.compareMods = L12_1
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = vehicle
  L0_2 = L0_2.entity
  L1_2 = DoesEntityExist
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = SetVehicleModKit
    L2_2 = L0_2
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L1_2 = newVehicleMods
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = vehicle
    L2_2 = L2_2.savedMods
    L2_2 = L2_2.wheel
    L2_2 = L2_2.type
    L3_2 = GetVehicleWheelType
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    if L2_2 ~= L3_2 then
      L3_2 = SetVehicleWheelType
      L4_2 = L0_2
      L5_2 = getWheelType
      L6_2 = L2_2
      L5_2 = L5_2(L6_2)
      L6_2 = L4_1
      L5_2 = L6_2[L5_2]
      L3_2(L4_2, L5_2)
    end
    L3_2 = pairs
    L4_2 = L1_2.mods
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = async
      function L10_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
        L0_3 = vehicle
        L0_3 = L0_3.savedMods
        L0_3 = L0_3.mods
        L1_3 = tostring
        L2_3 = L7_2
        L1_3 = L1_3(L2_3)
        L0_3 = L0_3[L1_3]
        L1_3 = L8_2
        if L0_3 ~= L1_3 then
          L0_3 = setMod
          L1_3 = L0_2
          L2_3 = L7_2
          L3_3 = vehicle
          L3_3 = L3_3.savedMods
          L3_3 = L3_3.mods
          L4_3 = tostring
          L5_3 = L7_2
          L4_3 = L4_3(L5_3)
          L3_3 = L3_3[L4_3]
          L0_3(L1_3, L2_3, L3_3)
        end
      end
      L9_2(L10_2)
    end
    L3_2 = applyAngular
    L4_2 = L0_2
    L5_2 = vehicle
    L5_2 = L5_2.savedMods
    L5_2 = L5_2.wheelAngular
    L3_2(L4_2, L5_2)
    L3_2 = json
    L3_2 = L3_2.encode
    L4_2 = vehicle
    L4_2 = L4_2.savedColors
    L3_2 = L3_2(L4_2)
    L4_2 = json
    L4_2 = L4_2.encode
    L5_2 = loadColors
    L6_2 = vehicle
    L6_2 = L6_2.entity
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = L3_2 ~= L4_2
    if L3_2 then
      L4_2 = applyColors
      L5_2 = vehicle
      L5_2 = L5_2.entity
      L6_2 = vehicle
      L6_2 = L6_2.savedColors
      L4_2(L5_2, L6_2)
    end
  end
end
compareMods = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if "mechanic" == A0_2 then
    L1_2 = vSERVER
    L1_2 = L1_2.mechanicPanel
    L1_2 = L1_2()
    L2_2 = type
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if "string" == L2_2 then
      L2_2 = type
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
    end
    if "string" ~= L2_2 and "nono" ~= L1_2 then
      L2_2 = LocalPlayer
      L2_2 = L2_2.state
      L3_2 = L2_2
      L2_2 = L2_2.set
      L4_2 = "MechanicActive"
      L5_2 = true
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = StartScreenEffect
      L3_2 = "MenuMGSelectionIn"
      L4_2 = 0
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = SendNUIMessage
      L3_2 = {}
      L4_2 = "openPanel"
      L5_2 = {}
      L6_2 = MechanicInfo
      L6_2 = L6_2.name
      L5_2.name = L6_2
      L6_2 = vSERVER
      L6_2 = L6_2.returnServices
      L6_2 = L6_2()
      L5_2.services = L6_2
      L5_2.budgets = L1_2
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L2_2(L3_2)
      L2_2 = SetNuiFocus
      L3_2 = true
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  elseif "client" == A0_2 then
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = vehicle
    L3_2 = GetVehiclePedIsUsing
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L2_2.entity = L3_2
    L2_2 = DoesEntityExist
    L3_2 = vehicle
    L3_2 = L3_2.entity
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = SetVehicleEngineOn
      L3_2 = vehicle
      L3_2 = L3_2.entity
      L4_2 = true
      L5_2 = false
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = FreezeEntityPosition
      L3_2 = vehicle
      L3_2 = L3_2.entity
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = vehicle
      L3_2 = GetVehicleBodyHealth
      L4_2 = vehicle
      L4_2 = L4_2.entity
      L3_2 = L3_2(L4_2)
      L4_2 = 1000
      L3_2 = L4_2 - L3_2
      L3_2 = L3_2 / 100
      L2_2.damage = L3_2
      L2_2 = vehicle
      L3_2 = newVehicleMods
      L4_2 = vehicle
      L4_2 = L4_2.entity
      L3_2 = L3_2(L4_2)
      L2_2.mods = L3_2
      L2_2 = vehicle
      L3_2 = json
      L3_2 = L3_2.decode
      L4_2 = json
      L4_2 = L4_2.encode
      L5_2 = vehicle
      L5_2 = L5_2.mods
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2(L5_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L2_2.savedMods = L3_2
      L2_2 = vehicle
      L3_2 = loadColors
      L4_2 = vehicle
      L4_2 = L4_2.entity
      L3_2 = L3_2(L4_2)
      L2_2.savedColors = L3_2
      L2_2 = vehicle
      L3_2 = loadVehicleMods
      L3_2 = L3_2()
      L2_2.mechanic = L3_2
      L2_2 = vehicle
      L3_2 = loadCustomColors
      L3_2 = L3_2()
      L2_2.colors = L3_2
      L2_2 = {}
      L3_2 = pairs
      L4_2 = L6_1
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L2_2
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
      L3_2 = SendNUIMessage
      L4_2 = {}
      L5_2 = "openMechanic"
      L6_2 = MechanicInfo
      L6_2 = L6_2.name
      L7_2 = vehicle
      L7_2 = L7_2.mechanic
      L8_2 = L2_2
      L9_2 = L5_1
      L10_2 = vehicle
      L10_2 = L10_2.damage
      L11_2 = vehicle
      L11_2 = L11_2.colors
      L12_2 = Premium
      L13_2 = MechanicInfo
      L13_2 = L13_2.hiddenParts
      if not L13_2 then
        L13_2 = {}
      end
      L14_2 = ColorPrices
      L15_2 = vehicle
      L15_2 = L15_2.savedColors
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L4_2[3] = L7_2
      L4_2[4] = L8_2
      L4_2[5] = L9_2
      L4_2[6] = L10_2
      L4_2[7] = L11_2
      L4_2[8] = L12_2
      L4_2[9] = L13_2
      L4_2[10] = L14_2
      L4_2[11] = L15_2
      L3_2(L4_2)
      L3_2 = CreateCam
      L4_2 = "DEFAULT_SCRIPTED_CAMERA"
      L5_2 = true
      L6_2 = 2
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      cam = L3_2
      L3_2 = SetNuiFocus
      L4_2 = true
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = vehicle
      L4_2 = IsRadarHidden
      L4_2 = L4_2()
      L3_2.radar = L4_2
      L3_2 = DisplayRadar
      L4_2 = false
      L3_2(L4_2)
    else
      L2_2 = TriggerEvent
      L3_2 = "Notify"
      L4_2 = "aviso"
      L5_2 = "Or\195\167amento pendente."
      L6_2 = 5000
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
openMechanic = L11_1
L11_1 = RegisterCommand
L12_1 = Commands
L12_1 = L12_1.menu
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = vSERVER
  L2_2 = L2_2.checkPriority
  L2_2 = L2_2()
  L3_2 = MechanicInfo
  L4_2 = ServerName
  L3_2.name = L4_2
  if not L2_2 then
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = pairs
    L5_2 = Tunners
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = GetEntityCoords
      L11_2 = L3_2
      L10_2 = L10_2(L11_2)
      L11_2 = L9_2.coords
      L10_2 = L10_2 - L11_2
      L10_2 = #L10_2
      L11_2 = UseDistance
      if L10_2 <= L11_2 then
        L11_2 = L9_2.perm
        if L11_2 then
          L11_2 = vSERVER
          L11_2 = L11_2.checkPerm
          L12_2 = L8_2
          L11_2 = L11_2(L12_2)
          if not L11_2 then
            return
          end
        end
        L2_2 = true
        L11_2 = MechanicInfo
        L12_2 = L9_2.name
        L11_2.name = L12_2
        L11_2 = MechanicInfo
        L12_2 = L9_2.hiddenParts
        L11_2.hiddenParts = L12_2
      end
    end
  end
  if not L2_2 then
    return
  end
  L3_2 = openMechanic
  L4_2 = "client"
  L3_2(L4_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterCommand
L12_1 = Commands
L12_1 = L12_1.panel
function L13_1()
  local L0_2, L1_2
  L0_2 = Premium
  if L0_2 then
    L0_2 = openMechanic
    L1_2 = "mechanic"
    L0_2(L1_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = Citizen
L11_1 = L11_1.CreateThread
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  while true do
    L0_2 = 1000
    L1_2 = vehicle
    L1_2 = L1_2.entity
    if L1_2 then
      L0_2 = 0
      L1_2 = DisableControlAction
      L2_2 = 1
      L3_2 = 75
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
    end
    L1_2 = Wait
    L2_2 = L0_2
    L1_2(L2_2)
  end
end
L11_1(L12_1)

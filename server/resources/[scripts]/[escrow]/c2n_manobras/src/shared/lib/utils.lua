local L0_1, L1_1
L0_1 = ResourceName
if not L0_1 then
  L0_1 = GetCurrentResourceName
  L0_1 = L0_1()
end
ResourceName = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = "%s:%s"
  L3_2 = ResourceName
  L4_2 = A0_2
  return L1_2(L2_2, L3_2, L4_2)
end
ResourceBaseEvent = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = {}
    L3_3 = A0_2.gmatch
    L4_3 = A1_3
    L5_3 = "[^%.]+"
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3, L5_3)
    for L7_3 in L3_3, L4_3, L5_3, L6_3 do
      L8_3 = table
      L8_3 = L8_3.insert
      L9_3 = L2_3
      L10_3 = L7_3
      L8_3(L9_3, L10_3)
    end
    L3_3 = A0_3
    L4_3 = ipairs
    L5_3 = L2_3
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
    for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
      L10_3 = type
      L11_3 = L3_3
      L10_3 = L10_3(L11_3)
      if "table" == L10_3 then
        L10_3 = L3_3[L9_3]
        if nil ~= L10_3 then
          goto lbl_31
        end
      end
      L10_3 = nil
      do return L10_3 end
      ::lbl_31::
      L3_3 = L3_3[L9_3]
    end
    return L3_3
  end
  L3_2 = Locale
  if L3_2 and A0_2 then
    L3_2 = L2_2
    L4_2 = Locale
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    if nil ~= L3_2 then
      L4_2 = type
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if "string" == L4_2 then
        if A1_2 then
          L4_2 = A0_2.gsub
          L5_2 = L3_2
          L6_2 = "{(.-)}"
          L7_2 = A1_2
          L4_2 = L4_2(L5_2, L6_2, L7_2)
          L3_2 = L4_2
          return L3_2
        else
          return L3_2
        end
      else
        L4_2 = type
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if "table" == L4_2 then
          return L3_2
        end
      end
    end
  end
  L3_2 = Locale
  if not L3_2 then
    L3_2 = Debugger
    L4_2 = "Invalid language"
    L3_2(L4_2)
  end
  return A0_2
end
Translate = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L1_2 = print
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = [[
(   C2N DEBUG - %s   )
[=] %s]]
    L4_2 = ResourceName
    L5_2 = A0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
    return L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
Debugger = L0_1
L0_1 = string
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = A0_2
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L4_2 = L3_2
  L3_2 = L3_2.gmatch
  L5_2 = "(.-)"
  L6_2 = A1_2
  L5_2 = L5_2 .. L6_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  for L7_2 in L3_2, L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L2_2
end
L0_1.split = L1_1
L0_1 = string
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.sub
  L4_2 = 1
  L5_2 = #A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2 = L2_2 == A1_2
  return L2_2
end
L0_1.starts = L1_1
L0_1 = string
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.sub
  L4_2 = #A1_2
  L4_2 = -L4_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 == A1_2
  return L2_2
end
L0_1.ends = L1_1
L0_1 = table
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.contains = L1_1
L0_1 = table
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = pairs
    L3_2 = A0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2 in L2_2, L3_2, L4_2, L5_2 do
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
L0_1.length = L1_1
L0_1 = table
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = #A0_2
  L1_2 = L1_2 > 0
  return L1_2
end
L0_1.isarray = L1_1
L0_1 = json
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L5_2 = table
  L5_2 = L5_2.concat
  L6_2 = string
  L6_2 = L6_2.sub
  L7_2 = string
  L7_2 = L7_2.rep
  L8_2 = A4_2 or L8_2
  if not A4_2 then
    L8_2 = json
    L8_2 = L8_2.encode
  end
  L9_2 = A0_2
  L8_2, L9_2 = L8_2(L9_2)
  if not L8_2 then
    L10_2 = L8_2
    L11_2 = L9_2
    return L10_2, L11_2
  end
  L10_2 = A1_2 or L10_2
  if not A1_2 then
    L10_2 = "\n"
  end
  L11_2 = A2_2 or L11_2
  if not A2_2 then
    L11_2 = "\t"
  end
  if not A3_2 then
    A3_2 = " "
  end
  A2_2 = L11_2
  A1_2 = L10_2
  L10_2 = 1
  L11_2 = 0
  L12_2 = 0
  L13_2 = #L8_2
  L14_2 = {}
  L15_2 = nil
  L16_2 = nil
  L17_2 = L6_2
  L18_2 = A3_2
  L19_2 = -1
  L17_2 = L17_2(L18_2, L19_2)
  L17_2 = "\n" == L17_2
  L18_2 = 1
  L19_2 = L13_2
  L20_2 = 1
  for L21_2 = L18_2, L19_2, L20_2 do
    L22_2 = L6_2
    L23_2 = L8_2
    L24_2 = L21_2
    L25_2 = L21_2
    L22_2 = L22_2(L23_2, L24_2, L25_2)
    if not L16_2 and ("{" == L22_2 or "[" == L22_2) then
      if ":" == L15_2 then
        L23_2 = L5_2
        L24_2 = {}
        L25_2 = L22_2
        L26_2 = A1_2
        L24_2[1] = L25_2
        L24_2[2] = L26_2
        L23_2 = L23_2(L24_2)
        if L23_2 then
          goto lbl_81
        end
      end
      L23_2 = L5_2
      L24_2 = {}
      L25_2 = L7_2
      L26_2 = A2_2
      L27_2 = L11_2
      L25_2 = L25_2(L26_2, L27_2)
      L26_2 = L22_2
      L27_2 = A1_2
      L24_2[1] = L25_2
      L24_2[2] = L26_2
      L24_2[3] = L27_2
      L23_2 = L23_2(L24_2)
      ::lbl_81::
      L14_2[L10_2] = L23_2
      L11_2 = L11_2 + 1
    elseif not L16_2 and ("}" == L22_2 or "]" == L22_2) then
      L11_2 = L11_2 - 1
      if "{" == L15_2 or "[" == L15_2 then
        L10_2 = L10_2 - 1
        L23_2 = L5_2
        L24_2 = {}
        L25_2 = L7_2
        L26_2 = A2_2
        L27_2 = L11_2
        L25_2 = L25_2(L26_2, L27_2)
        L26_2 = L15_2
        L27_2 = L22_2
        L24_2[1] = L25_2
        L24_2[2] = L26_2
        L24_2[3] = L27_2
        L23_2 = L23_2(L24_2)
        L14_2[L10_2] = L23_2
      else
        L23_2 = L5_2
        L24_2 = {}
        L25_2 = A1_2
        L26_2 = L7_2
        L27_2 = A2_2
        L28_2 = L11_2
        L26_2 = L26_2(L27_2, L28_2)
        L27_2 = L22_2
        L24_2[1] = L25_2
        L24_2[2] = L26_2
        L24_2[3] = L27_2
        L23_2 = L23_2(L24_2)
        L14_2[L10_2] = L23_2
      end
    elseif not L16_2 and "," == L22_2 then
      L23_2 = L5_2
      L24_2 = {}
      L25_2 = L22_2
      L26_2 = A1_2
      L24_2[1] = L25_2
      L24_2[2] = L26_2
      L23_2 = L23_2(L24_2)
      L14_2[L10_2] = L23_2
      L12_2 = -1
    elseif not L16_2 and ":" == L22_2 then
      L23_2 = L5_2
      L24_2 = {}
      L25_2 = L22_2
      L26_2 = A3_2
      L24_2[1] = L25_2
      L24_2[2] = L26_2
      L23_2 = L23_2(L24_2)
      L14_2[L10_2] = L23_2
      if L17_2 then
        L10_2 = L10_2 + 1
        L23_2 = L7_2
        L24_2 = A2_2
        L25_2 = L11_2
        L23_2 = L23_2(L24_2, L25_2)
        L14_2[L10_2] = L23_2
      end
    else
      if "\"" == L22_2 and "\\" ~= L15_2 then
        if not L16_2 then
          L23_2 = true
          if L23_2 then
            goto lbl_171
            L16_2 = L23_2 or L16_2
          end
        end
        L16_2 = nil
      end
      ::lbl_171::
      if L11_2 ~= L12_2 then
        L23_2 = L7_2
        L24_2 = A2_2
        L25_2 = L11_2
        L23_2 = L23_2(L24_2, L25_2)
        L14_2[L10_2] = L23_2
        L23_2 = L10_2 + 1
        L12_2 = L11_2
        L10_2 = L23_2
      end
      L14_2[L10_2] = L22_2
    end
    L23_2 = L22_2
    L10_2 = L10_2 + 1
    L15_2 = L23_2
  end
  L18_2 = L5_2
  L19_2 = L14_2
  return L18_2(L19_2)
end
L0_1.pretty = L1_1

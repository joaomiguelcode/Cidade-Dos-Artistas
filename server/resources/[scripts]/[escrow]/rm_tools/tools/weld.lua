local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = IsDuplicityVersion
L0_1 = L0_1()
if L0_1 then
  L0_1 = cfg
  L0_1 = L0_1.enableDurability
  if L0_1 then
    L0_1 = reduceDurability
    if L0_1 then
      L0_1 = AddStateBagChangeHandler
      L1_1 = "rm_tools:weldEffect"
      L2_1 = nil
      function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
        local L5_2, L6_2, L7_2, L8_2, L9_2
        L5_2 = Wait
        L6_2 = 50
        L5_2(L6_2)
        L5_2 = GetPlayerFromStateBagName
        L6_2 = A0_2
        L5_2 = L5_2(L6_2)
        if A2_2 then
          L6_2 = A2_2.slot
          if L6_2 then
            goto lbl_15
          end
        end
        L6_2 = players
        L6_2[L5_2] = nil
        goto lbl_31
        ::lbl_15::
        L6_2 = reduceDurability
        L7_2 = L5_2
        L8_2 = A2_2.slot
        L9_2 = A2_2.itemName
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = players
        L7_2 = {}
        L8_2 = GetGameTimer
        L8_2 = L8_2()
        L7_2.lastTime = L8_2
        L8_2 = A2_2.slot
        L7_2.slot = L8_2
        L8_2 = A2_2.itemName
        L7_2.item = L8_2
        L6_2[L5_2] = L7_2
        ::lbl_31::
      end
      L0_1(L1_1, L2_1, L3_1)
    end
  end
else
  L0_1 = cfg
  L0_1 = L0_1.weldSettings
  if L0_1 then
    L0_1 = L0_1.particle
  end
  if not L0_1 then
    L0_1 = {}
    L0_1.assetName = "core"
    L0_1.fxName = "ent_anim_welder"
    L1_1 = vec3
    L2_1 = 0.07901
    L3_1 = -0.002502
    L4_1 = 0.145
    L1_1 = L1_1(L2_1, L3_1, L4_1)
    L0_1.offset = L1_1
    L0_1.scale = 1.0
  end
  L1_1 = {}
  L2_1 = {}
  L3_1 = DisablePlayerFiring
  L4_1 = DisableControlAction
  L5_1 = DisplayAmmoThisFrame
  L6_1 = IsPlayerFreeAiming
  L7_1 = GetCurrentPedWeapon
  L8_1 = IsDisabledControlPressed
  L9_1 = IsDisabledControlJustReleased
  L10_1 = IsDisabledControlJustPressed
  L11_1 = DoesEntityExist
  L12_1 = GetCurrentPedWeaponEntityIndex
  L13_1 = HasSoundFinished
  L14_1 = PlaySoundFromEntity
  function L15_1(A0_2)
    local L1_2, L2_2, L3_2
    L1_2 = cfg
    L1_2 = L1_2.disableParticles
    if not L1_2 then
      L1_2 = L1_1
      L1_2 = L1_2[A0_2]
      if L1_2 then
        L1_2 = StopParticleFxLooped
        L2_2 = L1_1
        L2_2 = L2_2[A0_2]
        L3_2 = false
        L1_2(L2_2, L3_2)
        L1_2 = RemoveNamedPtfxAsset
        L2_2 = L0_1.assetName
        L1_2(L2_2)
        L1_2 = L1_1
        L1_2[A0_2] = nil
      end
    end
    L1_2 = L2_1
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L1_2 = StopSound
      L2_2 = L2_1
      L2_2 = L2_2[A0_2]
      L1_2(L2_2)
      L1_2 = ReleaseSoundId
      L2_2 = L2_1
      L2_2 = L2_2[A0_2]
      L1_2(L2_2)
      L1_2 = ReleaseNamedScriptAudioBank
      L2_2 = "audiodirectory/rm_tools"
      L1_2(L2_2)
      L1_2 = L2_1
      L1_2[A0_2] = nil
    end
  end
  L16_1 = AddStateBagChangeHandler
  L17_1 = "rm_tools:weldEffect"
  L18_1 = nil
  function L19_1(A0_2, A1_2, A2_2, A3_2, A4_2)
    local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
    L5_2 = Wait
    L6_2 = 50
    L5_2(L6_2)
    L5_2 = GetPlayerFromStateBagName
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L6_2 = GetPlayerPed
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if not A2_2 then
      L7_2 = L15_1
      L8_2 = L5_2
      L7_2(L8_2)
    else
      L7_2 = lib
      L7_2 = L7_2.waitFor
      function L8_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = L7_1
        L1_3 = L6_2
        L0_3, L1_3 = L0_3(L1_3)
        L2_3 = weaponHashes
        L2_3 = L2_3.weld
        if L1_3 == L2_3 then
          L2_3 = L12_1
          L3_3 = L6_2
          return L2_3(L3_3)
        end
        L2_3 = Wait
        L3_3 = 50
        L2_3(L3_3)
      end
      L9_2 = "Failed to get WEAPON_WELD object"
      L10_2 = 5000
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L8_2 = CreateThread
      function L9_2()
        local L0_3, L1_3
        while true do
          L0_3 = L11_1
          L1_3 = L7_2
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            break
          end
          L0_3 = L11_1
          L1_3 = L6_2
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            break
          end
          L0_3 = Wait
          L1_3 = 1000
          L0_3(L1_3)
        end
        L0_3 = L15_1
        L1_3 = L5_2
        L0_3(L1_3)
      end
      L8_2(L9_2)
      L8_2 = cfg
      L8_2 = L8_2.disableParticles
      if not L8_2 then
        L8_2 = L1_1
        L8_2 = L8_2[L5_2]
        if not L8_2 then
          L8_2 = lib
          L8_2 = L8_2.requestNamedPtfxAsset
          L9_2 = L0_1.assetName
          L8_2(L9_2)
          L8_2 = UseParticleFxAsset
          L9_2 = L0_1.assetName
          L8_2(L9_2)
          L8_2 = L1_1
          L9_2 = StartParticleFxLoopedOnEntity
          L10_2 = L0_1.fxName
          L11_2 = L7_2
          L12_2 = L0_1.offset
          L12_2 = L12_2.x
          L13_2 = L0_1.offset
          L13_2 = L13_2.y
          L14_2 = L0_1.offset
          L14_2 = L14_2.z
          L15_2 = 0
          L16_2 = 0
          L17_2 = 0
          L18_2 = L0_1.scale
          L19_2 = false
          L20_2 = false
          L21_2 = false
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          L8_2[L5_2] = L9_2
        end
      end
      L8_2 = L2_1
      L8_2 = L8_2[L5_2]
      if not L8_2 then
        L8_2 = L2_1
        L9_2 = GetSoundId
        L9_2 = L9_2()
        L8_2[L5_2] = L9_2
        while true do
          L8_2 = RequestScriptAudioBank
          L9_2 = "audiodirectory/rm_tools"
          L10_2 = false
          L8_2 = L8_2(L9_2, L10_2)
          if L8_2 then
            break
          end
          L8_2 = Wait
          L9_2 = 25
          L8_2(L9_2)
        end
        L8_2 = L14_1
        L9_2 = L2_1
        L9_2 = L9_2[L5_2]
        L10_2 = "weld"
        L11_2 = L7_2
        L12_2 = "rm_tools"
        L13_2 = false
        L14_2 = 0
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        while true do
          L8_2 = L2_1
          L8_2 = L8_2[L5_2]
          if not L8_2 then
            break
          end
          L8_2 = L13_1
          L9_2 = L2_1
          L9_2 = L9_2[L5_2]
          L8_2 = L8_2(L9_2)
          if L8_2 then
            L8_2 = L14_1
            L9_2 = L2_1
            L9_2 = L9_2[L5_2]
            L10_2 = "weld"
            L11_2 = L7_2
            L12_2 = "rm_tools"
            L13_2 = false
            L14_2 = 0
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
          end
          L8_2 = Wait
          L9_2 = 10
          L8_2(L9_2)
        end
      end
    end
  end
  L16_1(L17_1, L18_1, L19_1)
  function L16_1()
    local L0_2, L1_2, L2_2
    L0_2 = using
    if not L0_2 then
      return
    end
    L0_2 = RemoveWeaponFromPed
    L1_2 = cache
    L1_2 = L1_2.ped
    L2_2 = weaponHashes
    L2_2 = L2_2.weld
    L0_2(L1_2, L2_2)
    L0_2 = nil
    obj = nil
    using = L0_2
    L0_2 = setStatebag
    L1_2 = "weldEffect"
    L2_2 = nil
    L0_2(L1_2, L2_2)
  end
  removeWeld = L16_1
  function L16_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
    L1_2 = using
    if "weld" == L1_2 then
      return
    end
    L1_2 = nil
    L2_2 = nil
    L3_2 = nil
    L4_2 = cfg
    L4_2 = L4_2.enableDurability
    if L4_2 and A0_2 then
      L4_2 = A0_2.durability
      if L4_2 then
        L4_2 = A0_2.durability
        if L4_2 <= 0 then
          L4_2 = Wait
          L5_2 = 750
          L4_2(L5_2)
          L4_2 = removeWeld
          L4_2()
          return
        end
      end
      L1_2 = A0_2.slot
      L2_2 = A0_2.durability
      L3_2 = A0_2.name
    end
    L4_2 = lib
    L4_2 = L4_2.waitFor
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L7_1
      L1_3 = cache
      L1_3 = L1_3.ped
      L0_3, L1_3 = L0_3(L1_3)
      L2_3 = weaponHashes
      L2_3 = L2_3.weld
      if L1_3 == L2_3 then
        L2_3 = cache
        L2_3 = L2_3.weapon
        if L2_3 == L1_3 then
          L2_3 = L12_1
          L3_3 = cache
          L3_3 = L3_3.ped
          return L2_3(L3_3)
        end
      end
      L2_3 = Wait
      L3_3 = 50
      L2_3(L3_3)
    end
    L6_2 = "Failed to get WEAPON_WELD object"
    L7_2 = 5000
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    obj = L4_2
    using = "weld"
    L4_2 = TriggerEvent
    L5_2 = "rm_tools:usageStarted"
    L6_2 = "weld"
    L4_2(L5_2, L6_2)
    L4_2 = nil
    while true do
      L5_2 = using
      if not L5_2 then
        break
      end
      L5_2 = cache
      L5_2 = L5_2.vehicle
      if not L5_2 then
        L5_2 = L11_1
        L6_2 = obj
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = cache
          L5_2 = L5_2.weapon
          L6_2 = weaponHashes
          L6_2 = L6_2.weld
          if L5_2 == L6_2 then
            goto lbl_61
          end
        end
      end
      L5_2 = removeWeld
      L5_2()
      do break end
      ::lbl_61::
      L5_2 = L3_1
      L6_2 = cache
      L6_2 = L6_2.playerId
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = L4_1
      L6_2 = 0
      L7_2 = 24
      L8_2 = true
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = L4_1
      L6_2 = 0
      L7_2 = 140
      L8_2 = true
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = L4_1
      L6_2 = 0
      L7_2 = 141
      L8_2 = true
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = L4_1
      L6_2 = 0
      L7_2 = 142
      L8_2 = true
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = L5_1
      L6_2 = false
      L5_2(L6_2)
      L5_2 = L6_1
      L6_2 = cache
      L6_2 = L6_2.playerId
      L5_2 = L5_2(L6_2)
      if L5_2 then
        if not L4_2 then
          L5_2 = L10_1
          L6_2 = 0
          L7_2 = 24
          L5_2 = L5_2(L6_2, L7_2)
          if L5_2 then
            L4_2 = true
            L5_2 = setStatebag
            L6_2 = "weldEffect"
            L7_2 = {}
            L7_2.slot = L1_2
            L7_2.itemName = L3_2
            L5_2(L6_2, L7_2)
        end
        elseif L4_2 then
          L5_2 = L8_1
          L6_2 = 0
          L7_2 = 24
          L5_2 = L5_2(L6_2, L7_2)
          if not L5_2 then
            L4_2 = false
            L5_2 = setStatebag
            L6_2 = "weldEffect"
            L7_2 = nil
            L5_2(L6_2, L7_2)
          end
        end
      elseif L4_2 then
        L4_2 = false
        L5_2 = setStatebag
        L6_2 = "weldEffect"
        L7_2 = nil
        L5_2(L6_2, L7_2)
      end
      L5_2 = Wait
      L6_2 = 1
      L5_2(L6_2)
    end
    L5_2 = TriggerEvent
    L6_2 = "rm_tools:usageFinished"
    L7_2 = "weld"
    L5_2(L6_2, L7_2)
  end
  initWeld = L16_1
  L16_1 = exports
  L17_1 = "isWeldUsing"
  function L18_1()
    local L0_2, L1_2
    L0_2 = using
    L0_2 = "weld" == L0_2
    return L0_2
  end
  L16_1(L17_1, L18_1)
  L16_1 = exports
  L17_1 = "getWeldObject"
  function L18_1()
    local L0_2, L1_2
    L0_2 = using
    if "weld" == L0_2 then
      L0_2 = obj
      if L0_2 then
        goto lbl_8
      end
    end
    L0_2 = nil
    ::lbl_8::
    return L0_2
  end
  L16_1(L17_1, L18_1)
  L16_1 = exports
  L17_1 = "removeWeld"
  L18_1 = removeWeld
  L16_1(L17_1, L18_1)
end

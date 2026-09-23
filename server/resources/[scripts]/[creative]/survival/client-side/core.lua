-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("survival",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Death = false
local DeathTimer = 500
local Cooldown = GetGameTimer()
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local TimeDistance = 999

		if LocalPlayer["state"]["Active"] then
			local Ped = PlayerPedId()
			if GetEntityHealth(Ped) <= 100 then
				if not Death then
					Death = true

					local Coords = GetEntityCoords(Ped)
					NetworkResurrectLocalPlayer(Coords,0.0)

					NetworkSetFriendlyFireOption(false)
					LocalPlayer["state"]["Invincible"] = true
					SetEntityInvincible(Ped,true)
					SetEntityHealth(Ped,100)

					if LocalPlayer["state"]["Route"] < 900000 then
						DeathTimer = 500

						TriggerEvent("hud:RemoveHood")
						TriggerEvent("hud:ScubaRemove")
						TriggerEvent("radio:RadioClean")
						TriggerEvent("inventory:Cancel")
						TriggerEvent("inventory:CleanWeapons")
						TriggerServerEvent("paramedic:bloodDeath")
						exports["pma-voice"]:Mute(true)
					else
						DeathTimer = 5
					end

					SendNUIMessage({ Action = "Display", Mode = "block" })
					TriggerEvent("inventory:preventWeapon",false)
					vRP.playAnim(false,{"misstrevor3_beatup","guard_beatup_exit_dockworker"},true)
					TriggerEvent("inventory:Close")
				else
					TimeDistance = 1
					SetEntityHealth(Ped,100)

					DisableControlAction(1,18,true)
					DisableControlAction(1,22,true)
					DisableControlAction(1,24,true)
					DisableControlAction(1,25,true)
					DisableControlAction(1,68,true)
					DisableControlAction(1,70,true)
					DisableControlAction(1,91,true)
					DisableControlAction(1,69,true)
					DisableControlAction(1,75,true)
					DisableControlAction(1,140,true)
					DisableControlAction(1,142,true)
					DisableControlAction(1,257,true)
					DisablePlayerFiring(Ped,true)

					if not LocalPlayer["state"]["Bed"] and (not IsEntityPlayingAnim(Ped,"misstrevor3_beatup","guard_beatup_exit_dockworker",3) and not IsPedInAnyVehicle(Ped) and not IsEntityPlayingAnim(Ped,"nm","firemans_carry",3)) then
                        vRP.playAnim(false,{"misstrevor3_beatup","guard_beatup_exit_dockworker"},true)
                    end

					if IsPedInAnyVehicle(Ped) then
						local Vehicle = GetVehiclePedIsUsing(Ped)
						if GetPedInVehicleSeat(Vehicle,-1) == Ped then
							SetVehicleEngineOn(Vehicle,false,true,true)
						end
					end

					if GetGameTimer() >= Cooldown then
						Cooldown = GetGameTimer() + 1000

						if DeathTimer > 0 then
							DeathTimer = DeathTimer - 1
							SendNUIMessage({ Action = "Message", Message = "Você está inconsciente, aguarde "..DeathTimer.." segundos" })

							if DeathTimer <= 0 then
								if LocalPlayer["state"]["Route"] < 900000 then
									SendNUIMessage({ Action = "Message", Message = "Digite <color>/GG</color> para desistir imediatamente" })
								else
									SendNUIMessage({ Action = "Message", Message = "Pressione <color>E</color> para renascer dentro da arena" })
								end
							end
						end
					end
				end
			end
		end

		Wait(TimeDistance)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKDEATH
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.CheckDeath()
	if Death and DeathTimer <= 0 then
		return true
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- RESPAWN
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Respawn()
	if not LocalPlayer["state"]["Rope"] and not IsEntityPlayingAnim(Ped, "nm", "firemans_carry", 3) and not LocalPlayer["state"]["Inspect"] then
		local Ped = PlayerPedId()
		Death = false
		DeathTimer = 500

		ClearPedTasks(Ped)
		ClearPedSecondaryTask(Ped)
		ClearPedTasksImmediately(Ped)
		NetworkSetFriendlyFireOption(true)
	    ClearPedBloodDamage(Ped)
	    SetEntityHealth(Ped,200)
	    SetEntityInvincible(Ped,false)
	    LocalPlayer["state"]["Invincible"] = false
	    
	    TriggerEvent("target:UpBed")
	    TriggerEvent("paramedic:Reset")
	    TriggerEvent("inventory:CleanWeapons")
	    LocalPlayer["state"]["Handcuff"] = false
	    exports["pma-voice"]:Mute(false)
    
	    DoScreenFadeOut(0)
	    SetEntityCoords(Ped,-2311.16,371.78,174.6)
	    SendNUIMessage({ Action = "Display", Mode = "none" })
	    Wait(1000)
	    DoScreenFadeIn(1000)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- REVIVE
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Revive",function(Health,Arena)
	local Ped = PlayerPedId()

	SetEntityHealth(Ped,Health)
	SetEntityInvincible(Ped,false)
	LocalPlayer["state"]["Invincible"] = false

	if Arena then
		SetPedArmour(Ped,99)
	end

	if Death then
		Death = false
		DeathTimer = 500

		ClearPedTasks(Ped)
		NetworkSetFriendlyFireOption(true)

		SendNUIMessage({ Action = "Display", Mode = "none" })

		if LocalPlayer["state"]["Route"] < 900000 then
			TriggerEvent("paramedic:Reset")
	
			exports["pma-voice"]:Mute(false)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REVIVE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Revive(Health,Arena)
	exports["survival"]:Revive(Health,Arena)
end
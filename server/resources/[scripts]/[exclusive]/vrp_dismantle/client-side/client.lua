-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cnVRP = {}
Tunnel.bindInterface("vrp_dismantle",cnVRP)
vSERVER = Tunnel.getInterface("vrp_dismantle")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local inService = false
local timeDismantle = GetGameTimer()

local DismantleCoords = {
	{ 2274.77,3584.6,60.86, "Tiradentes",7.0 },
	{ -2422.31,1756.69,187.96, "Itaquera",7.0 },
	{ 1532.62,1685.33,110.05, "Nhocune",7.0 },
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADDISMANTLE
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local timeDistance = 3000
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local coords = GetEntityCoords(ped)
			for k,v in pairs(DismantleCoords) do
				local distance = #(coords - vector3(v[1],v[2],v[3]))
				if distance <= v[5] then
					timeDistance = 4
					dwText("~g~E~w~ PARA DESMANCHAR",0.93)
					if IsControlJustPressed(1,38) and timeDismantle <= GetGameTimer() then
						if vSERVER.hasPermission(v[4]) then
							if vSERVER.checkItem() then 
								timeDismantle = GetGameTimer() + 3000
								local dismantle,vehicle,vehName,vehPrice,id,vehNet,vehPlate = vSERVER.checkVehicle()
								if dismantle then
									if vehicle then
										TriggerEvent("Progress","Desmanchando",39000)
										TaskTurnPedToFaceEntity(ped,vehicle,10)
										Wait(1000)
										SetEntityInvincible(ped,true)
										FreezeEntityPosition(ped,true)
										LocalPlayer["state"]["Buttons"] = true 
										LocalPlayer["state"]["Commands"] = true
										FreezeEntityPosition(vehicle,true)
										vRP._playAnim(false,{"anim@amb@clubhouse@tutorial@bkr_tut_ig3@","machinic_loop_mechandplayer"},true)

										for i = 0,5 do
											Wait(3000)
											SetVehicleDoorBroken(vehicle,i,false)
										end

										for i = 0,7 do
											Wait(3000)
											SetVehicleTyreBurst(vehicle,i,1,1000.01)
										end

										vRP.removeObjects()
										SetEntityInvincible(ped,false)
										FreezeEntityPosition(ped,false)
										LocalPlayer["state"]["Buttons"] = false
										LocalPlayer["state"]["Commands"] = false
										vSERVER.paymentMethod(vehicle,vehPrice,vehName,id,vehNet, vehPlate)
									end
								else
									TriggerEvent("Notify","vermelho","Não existe nenhum carro próximo",3000)
								end
							end
						else
							TriggerEvent("Notify","vermelho","Você não tem permissão para isso",3000)
						end
					end
				end
			end
		end
		Wait(timeDistance)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DWTEXT
-----------------------------------------------------------------------------------------------------------------------------------------
function dwText(text,height)
	SetTextFont(4)
	SetTextScale(0.50,0.50)
	SetTextColour(255,255,255,180)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(0.5,height)
end
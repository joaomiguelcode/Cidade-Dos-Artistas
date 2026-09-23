-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("target")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Zones = {}
local Models = {}
local Selected = {}
local Sucess = false
local Dismantleds = 1
LocalPlayer["state"]["Target"] = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- TOWS
-----------------------------------------------------------------------------------------------------------------------------------------
local Tows = {
	{ -142.24,-1174.19,23.76 }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISMANTLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Dismantles = {
	{ 943.23,-1497.87,30.11 },
	{ -1172.57,-2037.65,13.75 },
	{ -524.94,-1680.63,19.21 },
	{ 1358.14,-2095.41,52.0 },
	{ 602.47,-437.82,24.75 },
	{ -413.86,-2179.29,10.31 },
	{ 146.51,320.62,112.14 },
	{ 520.91,169.14,99.36 },
	{ 1137.99,-794.32,57.59 },
	{ -93.07,-2549.6,6.0 },
	{ -1537.85,-577.49,25.71 },
	{ 820.07,-488.43,30.46 },
	{ 819.53,-822.27,26.18 },
	{ 1078.62,-2325.56,30.25 },
	{ 1204.69,-3116.71,5.54 }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- TARGET:DISMANTLES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("target:Dismantles")
AddEventHandler("target:Dismantles",function()
	Dismantleds = math.random(#Dismantles)
	TriggerEvent("NotifyPush",{ code = 20, title = "Localização do Desmanche", x = Dismantles[Dismantleds][1], y = Dismantles[Dismantleds][2], z = Dismantles[Dismantleds][3], blipColor = 60 })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TYRELIST
-----------------------------------------------------------------------------------------------------------------------------------------
local tyreList = {
	["wheel_lf"] = 0,
	["wheel_rf"] = 1,
	["wheel_lm"] = 2,
	["wheel_rm"] = 3,
	["wheel_lr"] = 4,
	["wheel_rr"] = 5
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUELS
-----------------------------------------------------------------------------------------------------------------------------------------
local Fuels = {
	{ 273.83,-1253.46,28.29 },
	{ 273.83,-1261.29,28.29 },
	{ 273.83,-1268.63,28.29 },
	{ 265.06,-1253.46,28.29 },
	{ 265.06,-1261.29,28.29 },
	{ 265.06,-1268.63,28.29 },
	{ 256.43,-1253.46,28.29 },
	{ 256.43,-1261.29,28.29 },
	{ 256.43,-1268.63,28.29 },
	{ 2680.90,3266.40,54.39 },
	{ 2678.51,3262.33,54.39 },
	{ -2104.53,-311.01,12.16 },
	{ -2105.39,-319.21,12.16 },
	{ -2106.06,-325.57,12.16 },
	{ -2097.48,-326.48,12.16 },
	{ -2096.81,-320.11,12.16 },
	{ -2096.09,-311.90,12.16 },
	{ -2087.21,-312.81,12.16 },
	{ -2088.08,-321.03,12.16 },
	{ -2088.75,-327.39,12.16 },
	{ -2551.39,2327.11,32.24 },
	{ -2558.02,2326.70,32.24 },
	{ -2558.48,2334.13,32.24 },
	{ -2552.60,2334.46,32.24 },
	{ -2558.77,2341.48,32.24 },
	{ -2552.39,2341.89,32.24 },
	{ 186.97,6606.21,31.06 },
	{ 179.67,6604.93,31.06 },
	{ 172.33,6603.63,31.06 },
	{ 818.99,-1026.24,25.44 },
	{ 810.7,-1026.24,25.44 },
	{ 810.7,-1030.94,25.44 },
	{ 818.99,-1030.94,25.44 },
	{ 818.99,-1026.24,25.44 },
	{ 827.3,-1026.24,25.64 },
	{ 827.3,-1030.94,25.64 },
	{ 1207.07,-1398.16,34.39 },
	{ 1204.2,-1401.03,34.39 },
	{ 1210.07,-1406.9,34.39 },
	{ 1212.94,-1404.03,34.39 },
	{ 1178.97,-339.54,68.37 },
	{ 1186.4,-338.23,68.36 },
	{ 1184.89,-329.7,68.31 },
	{ 1177.46,-331.01,68.32 },
	{ 1175.71,-322.3,68.36 },
	{ 1183.13,-320.99,68.36 },
	{ 629.64,263.84,102.27 },
	{ 629.64,273.97,102.27 },
	{ 620.99,273.97,102.27 },
	{ 621.0,263.84,102.27 },
	{ 612.44,263.84,102.27 },
	{ 612.43,273.96,102.27 },
	{ 2588.41,358.56,107.66 },
	{ 2588.65,364.06,107.66 },
	{ 2581.18,364.39,107.66 },
	{ 2580.94,358.89,107.66 },
	{ 2573.55,359.21,107.66 },
	{ 2573.79,364.71,107.66 },
	{ 174.99,-1568.44,28.33 },
	{ 181.81,-1561.96,28.33 },
	{ 176.03,-1555.91,28.33 },
	{ 169.3,-1562.26,28.33 },
	{ -329.81,-1471.63,29.73 },
	{ -324.74,-1480.41,29.73 },
	{ -317.26,-1476.09,29.73 },
	{ -322.33,-1467.31,29.73 },
	{ -314.92,-1463.03,29.73 },
	{ -309.85,-1471.79,29.73 },
	{ 1786.08,3329.86,40.42 },
	{ 1785.04,3331.48,40.35 },
	{ 50.31,2778.54,57.05 },
	{ 48.92,2779.59,57.05 },
	{ 264.98,2607.18,43.99 },
	{ 263.09,2606.8,43.99 },
	{ 1035.45,2674.44,38.71 },
	{ 1043.22,2674.45,38.71 },
	{ 1043.22,2667.92,38.71 },
	{ 1035.45,2667.91,38.71 },
	{ 1209.59,2658.36,36.9 },
	{ 1208.52,2659.43,36.9 },
	{ 1205.91,2662.05,36.9 },
	{ 2539.8,2594.81,36.96 },
	{ 2001.55,3772.21,31.4 },
	{ 2003.92,3773.48,31.4 },
	{ 2006.21,3774.96,31.4 },
	{ 2009.26,3776.78,31.4 },
	{ 1684.6,4931.66,41.23 },
	{ 1690.1,4927.81,41.23 },
	{ 1705.74,6414.61,31.77 },
	{ 1701.73,6416.49,31.77 },
	{ 1697.76,6418.35,31.77 },
	{ -97.06,6416.77,30.65 },
	{ -91.29,6422.54,30.65 },
	{ -1808.71,799.96,137.69 },
	{ -1803.62,794.4,137.69 },
	{ -1797.22,800.56,137.66 },
	{ -1802.31,806.12,137.66 },
	{ -1795.93,811.97,137.7 },
	{ -1790.83,806.41,137.7 },
	{ -1438.07,-268.69,45.41 },
	{ -1444.5,-274.23,45.41 },
	{ -1435.5,-284.68,45.41 },
	{ -1429.07,-279.15,45.41 },
	{ -732.64,-932.51,18.22 },
	{ -732.64,-939.32,18.22 },
	{ -724.0,-939.32,18.22 },
	{ -724.0,-932.51,18.22 },
	{ -715.43,-932.51,18.22 },
	{ -715.43,-939.32,18.22 },
	{ -532.28,-1212.71,17.33 },
	{ -529.51,-1213.96,17.33 },
	{ -524.92,-1216.15,17.33 },
	{ -522.23,-1217.42,17.33 },
	{ -518.52,-1209.5,17.33 },
	{ -521.21,-1208.23,17.33 },
	{ -525.8,-1206.04,17.33 },
	{ -528.57,-1204.8,17.33 },
	{ -72.03,-1765.1,28.53 },
	{ -69.45,-1758.01,28.55 },
	{ -77.59,-1755.05,28.81 },
	{ -80.17,-1762.14,28.8 },
	{ -63.61,-1767.93,28.27 },
	{ -61.03,-1760.85,28.31 },
	{ 814.53,-789.63,25.251 },
	{ 812.96,-789.63,25.251 },
	{ 807.00,-789.63,25.251 },
	{ 805.42,-789.63,25.251 },
	{ 808.9,-1586.12,31.31 },
	{ -2180.98,3309.34,32.96 },
	{ -2454.3,2970.65,32.81 },
	{ -1228.5,6917.66,20.64 },
	{ -492.26,7559.9,6.5 },
	{ -488.46,7564.59,6.52 },
	{ -494.41,7570.77,6.5 },
	{ -498.35,7566.12,6.52 },
	{ -503.92,7570.33,6.52 },
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- TARGET:ANIMDEITAR
-----------------------------------------------------------------------------------------------------------------------------------------
local beds = {
	[1631638868] = { 0.0,0.0 },
	[2117668672] = { 0.0,0.0 },
	[-1498379115] = { 1.0,90.0 },
	[-1519439119] = { 1.0,0.0 },
	[2117668672] =  { 0.0,0.0 },
	[-289946279] = { 1.0,0.0 },
	[`prop_ld_binbag_01`] = { 1.0,0.0 }
}

RegisterNetEvent("target:animDeitar")
AddEventHandler("target:animDeitar",function()
	if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] then
		local Ped = PlayerPedId()
		if GetEntityHealth(Ped) > 101 then
			local objCoords = GetEntityCoords(Selected[1])

			SetEntityCoords(Ped,objCoords["x"],objCoords["y"],objCoords["z"] + beds[Selected[2]][1],1,0,0,0)
			SetEntityHeading(Ped,GetEntityHeading(Selected[1]) + beds[Selected[2]][2] - 180.0)

			vRP.playAnim(false,{"anim@gangops@morgue@table@","body_search"},true)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSTART
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	RegisterCommand("+entityTarget",TargetEnable)
	RegisterCommand("-entityTarget",TargetDisable)
	RegisterKeyMapping("+entityTarget","Interação auricular.","keyboard","LMENU")

	AddTargetModel({ -2007231801,1339433404,1694452750,1933174915,-462817101,-469694731,-164877493,486135101 },{
		options = {
			{
				event = "shops:Fuel",
				label = "Combustível",
				tunnel = "client"
			}
		},
		Distance = 0.75
	})

	-- AddTargetModel({ 303280717 }, { --CAIXA REGISTRADORA
	-- 	options = {
	-- 		{
	-- 			event = "Register:Init",
	-- 			label = "Roubar",
	-- 			tunnel = "shop"
	-- 		}
	-- 	},
	-- 	Distance = 0.75
	-- })

	AddCircleZone("Trucker",vec3(2679.41, 1418.25, 24.55),0.5,{
		name = "Trucker",
		heading = 3374176
	},{
		Distance = 1.25,
		options = {
			{
				event = "trucker:initVehicles",
				label = "Entrega de Veículos (3,72km)",
				tunnel = "client"
			},{
				event = "trucker:initDiesel",
				label = "Entrega de Diesel (5,79km)",
				tunnel = "client"
			},{
				event = "trucker:initFuel",
				label = "Entrega de Gasolina (5,81km)",
				tunnel = "client"
			},{
				event = "trucker:initWood",
				label = "Entrega de Madeira (7,25km)",
				tunnel = "client"
			}
		}
	})

	AddBoxZone("WorkIfood",vec3(95.64,284.84,109.96), 0.5, 0.5,{
        name = "WorkIfood",
        heading = 255.12,
    },{
        Distance = 2.0,
        options = {
            {
                event = "jobdeliver:StartJob",
                label = "Trabalhar",
                tunnel = "client"
            }
        }
    })

	-- AddCircleZone("makePaper",vec3(-533.18,5292.15,74.17),0.5,{
	-- 	name = "makePaper",
	-- 	heading = 3374176
	-- },{
	-- 	Distance = 0.75,
	-- 	options = {
	-- 		{
	-- 			event = "inventory:MakeProducts",
	-- 			label = "Produzir",
	-- 			tunnel = "products",
	-- 			service = "paper"
	-- 		}
	-- 	}
	-- })

	AddCircleZone("Yoga01",vec3(169.28,-954.8,29.45),0.5,{
		name = "Yoga01",
		heading = 3374176
	},{
		Distance = 1.25,
		options = {
			{
				event = "player:Yoga",
				label = "Yoga",
				tunnel = "client"
			}
		}
	})

	AddCircleZone("Yoga02",vec3(170.66,-956.47,29.45),0.5,{
		name = "Yoga02",
		heading = 3374176
	},{
		Distance = 1.25,
		options = {
			{
				event = "player:Yoga",
				label = "Yoga",
				tunnel = "client"
			}
		}
	})

	AddCircleZone("Yoga03",vec3(172.59,-958.1,29.45),0.5,{
		name = "Yoga03",
		heading = 3374176
	},{
		Distance = 1.25,
		options = {
			{
				event = "player:Yoga",
				label = "Yoga",
				tunnel = "client"
			}
		}
	})

	AddCircleZone("Yoga04",vec3(169.53,-959.11,29.45),0.5,{
		name = "Yoga04",
		heading = 3374176
	},{
		Distance = 1.25,
		options = {
			{
				event = "player:Yoga",
				label = "Yoga",
				tunnel = "client"
			}
		}
	})

	AddCircleZone("Yoga05",vec3(168.0,-957.65,29.45),0.5,{
		name = "Yoga05",
		heading = 3374176
	},{
		Distance = 1.25,
		options = {
			{
				event = "player:Yoga",
				label = "Yoga",
				tunnel = "client"
			}
		}
	})

	AddCircleZone("Yoga06",vec3(174.33,-953.03,29.45),0.5,{
		name = "Yoga06",
		heading = 3374176
	},{
		Distance = 1.25,
		options = {
			{
				event = "player:Yoga",
				label = "Yoga",
				tunnel = "client"
			}
		}
	})

	-- AddTargetModel({ 654385216,161343630,-430989390,1096374064,-1519644200,-1932041857,207578973,-487222358 },{
	-- 	options = {
	-- 		{
	-- 			event = "slotmachine:Init",
	-- 			label = "Caça-Níqueis",
	-- 			tunnel = "client"
	-- 		}
	-- 	},
	-- 	Distance = 0.75
	-- })

	AddTargetModel({ -1691644768,-742198632 },{
		options = {
			{
				event = "inventory:MakeProducts",
				label = "Encher",
				tunnel = "products",
				service = "emptybottle"
			},
			{
				event = "inventory:Drink",
				label = "Beber",
				tunnel = "server"
			}
		},
		Distance = 1.20
	})

	AddTargetModel({ -935625561 },{
		options = {
			{
				event = "target:BedDeitar",
				label = "Deitar",
				tunnel = "client"
			},
			{
				event = "paramedic:checkPacient",
				label = "Retirar Paciente",
				tunnel = "server"
			},{
				event = "target:BedDestroy",
				label = "Destruir",
				tunnel = "client"
			}
		},
		Distance = 1.0
	})

	AddTargetModel({ 690372739 },{
		options = {
			{
				event = "shops:coffeeMachine",
				label = "Comprar",
				tunnel = "client"
			}
		},
		Distance = 1.0
	})

	AddTargetModel({ -654402915,1421582485 },{
		options = {
			{
				event = "shops:donutMachine",
				label = "Comprar",
				tunnel = "client"
			}
		},
		Distance = 1.0
	})

	AddTargetModel({ 992069095,1114264700 },{
		options = {
			{
				event = "shops:sodaMachine",
				label = "Comprar",
				tunnel = "client"
			}
		},
		Distance = 1.0
	})

	AddTargetModel({ 1129053052 },{
		options = {
			{
				event = "shops:burgerMachine",
				label = "Comprar",
				tunnel = "client"
			}
		},
		Distance = 1.0
	})

	AddTargetModel({ -1581502570 },{
		options = {
			{
				event = "shops:hotdogMachine",
				label = "Comprar",
				tunnel = "client"
			}
		},
		Distance = 1.0
	})

	AddTargetModel({ -272361894 },{
		options = {
			{
				event = "shops:Chihuahua",
				label = "Comprar",
				tunnel = "client"
			}
		},
		Distance = 1.0
	})

	AddTargetModel({ 1099892058 },{
		options = {
			{
				event = "shops:waterMachine",
				label = "Comprar",
				tunnel = "client"
			}
		},
		Distance = 1.0
	})

	AddTargetModel({ -99500382,-1173315865 },{
		options = {
			{
				event = "target:SitChair2",
				label = "Sentar",
				tunnel = "client"
			}
		},
		Distance = 2.0
	})

	AddTargetModel({ -832573324,-1430839454,1457690978,1682622302,402729631,-664053099,1794449327,307287994,-1323586730,111281960,-541762431,-745300483,-417505688 },{
		options = {
			{
				event = "inventory:Animals",
				label = "Esfolar",
				tunnel = "shop"
			}
		},
		Distance = 1.0
	})

	-- AddTargetModel({ 1281992692,1158960338,1511539537,-78626473,-429560270 },{
	-- 	options = {
	-- 		{
	-- 			event = "hup:phoneObject",
	-- 			label = "Ligar",
	-- 			tunnel = "client"
	-- 		}
	-- 	},
	-- 	Distance = 1.0
	-- })

	-- AddTargetModel({ 684586828,577432224,-1587184881,-2096124444,1329570871, -1831107703, -1340926540, 388197031, -515278816, -1790177567, 	1605769687, 364445978},{
	-- 	options = {
	-- 		{
	-- 			event = "inventory:VerifyObjects",
	-- 			label = "Vasculhar",
	-- 			tunnel = "shop",
	-- 			service = "Lixeiro"
	-- 		}
	-- 	},
	-- 	Distance = 0.75
	-- })

	-- AddTargetModel({ -206690185,666561306,218085040,-58485588,1511880420,682791951, 673826957, 375956747, 1233218915,-85604259 },{
	-- 	options = {
	-- 		{
	-- 			event = "player:enterTrash",
	-- 			label = "Esconder",
	-- 			tunnel = "client"
	-- 		},{
	-- 			event = "player:checkTrash",
	-- 			label = "Verificar",
	-- 			tunnel = "server"
	-- 		}
	-- 		-- ,{
	-- 		-- 	event = "chest:Open",
	-- 		-- 	label = "Abrir",
	-- 		-- 	tunnel = "entity",
	-- 		-- 	service = "Custom"
	-- 		-- }
	-- 	},
	-- 	Distance = 0.75
	-- })

	AddCircleZone("tabletVehicles",vec3(1652.91,3509.27,36.6),2.5,{
		name = "tabletVehicles",
		heading = 3374176
	},{
		shop = "Santos",
		Distance = 4.0,
		options = {
			{
				event = "tablet:Open",
				label = "Abrir",
				tunnel = "shop"
			}
		}
	})
	
	AddCircleZone("ChaveiroArua",vec3(-2806.21,-205.43,17.71),1.5,{
		name = "ChaveiroArua",
		heading = 3374176
	},{
		shop = "Arua",
		Distance = 1.0,
		options = {
			{
				event = "Arua:CreateKey",
				label = "Chaveiro",
				tunnel = "proserver"
			}
		}
	})

	-- AddCircleZone("cemiteryMan",vec3(-1745.57,-205.19,57.37),0.5,{
	-- 	name = "cemiteryMan",
	-- 	heading = 3374176
	-- },{
	-- 	Distance = 1.0,
	-- 	options = {
	-- 		{
	-- 			event = "cemitery:initBody",
	-- 			label = "Conversar",
	-- 			tunnel = "client"
	-- 		}
	-- 	}
	-- })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TARGETENABLE
-----------------------------------------------------------------------------------------------------------------------------------------
local buttonToLock = 25 -- 24 - BOTAO ESQUERDO | 25 - BOTAO DIREITO
function TargetEnable()
	if LocalPlayer["state"]["Active"] and not IsPauseMenuActive() then
		local Ped = PlayerPedId()
		
		if LocalPlayer["state"]["Buttons"] or LocalPlayer["state"]["Commands"] or LocalPlayer["state"]["Handcuff"] or Sucess or IsPedArmed(Ped,6) or IsPedInAnyVehicle(Ped) or LocalPlayer["state"]["Route"] > 900000 then
			return
		end

		SendNUIMessage({ Action = "Open" })
		LocalPlayer["state"]["Target"] = true

		while LocalPlayer["state"]["Target"] do
			local hitZone,entCoords,Model = RayCastGamePlayCamera()

			if hitZone == 1 then
				local Coords = GetEntityCoords(Ped)

				for k,v in pairs(Zones) do
					if Zones[k]:isPointInside(entCoords) then
						if #(Coords - Zones[k]["center"]) <= v["targetoptions"]["Distance"] then

							if v["targetoptions"]["shop"] ~= nil then
								Selected = v["targetoptions"]["shop"]
							end

							SendNUIMessage({ Action = "Valid", data = Zones[k]["targetoptions"]["options"] })

							Sucess = true
							while Sucess do
								local Ped = PlayerPedId()
								local Coords = GetEntityCoords(Ped)
								local _,entCoords = RayCastGamePlayCamera()

								if (IsControlJustReleased(1,buttonToLock) or IsDisabledControlJustReleased(1,buttonToLock)) then
									SetCursorLocation(0.5,0.5)
									SetNuiFocus(true,true)
								end

								if entCoords then
									if not Zones[k]:isPointInside(entCoords) then
										Sucess = false
									end
								end
								
								if #(Coords - Zones[k]["center"]) > v["targetoptions"]["Distance"] then
									Sucess = false
								end

								Wait(1)
							end

							SendNUIMessage({ Action = "Left" })
						end
					end
				end

				if GetEntityType(Model) ~= 0 then
					if IsEntityAVehicle(Model) then
						local Plate = GetVehicleNumberPlateText(Model)
						if #(Coords - entCoords) <= 1.0 and Plate ~= "PDMSPORT" then
							local Network = nil
							local Combustivel = false
							local vehModel = GetEntityModel(Model)
							SetEntityAsMissionEntity(Model,true,true)

							if NetworkGetEntityIsNetworked(Model) then
								Network = VehToNet(Model)
							end

							Selected = { Plate,vRP.VehicleModel(Model),Model,Network }

							local Menu = {}

							for k,v in pairs(Fuels) do
								local Distance = #(Coords - vec3(v[1],v[2],v[3]))
								if Distance <= 2.5 then
									Combustivel = true
									break
								end
							end

							if not Combustivel then
								if GetSelectedPedWeapon(Ped) == 883325847 then
									Selected[5] = true
									Menu[#Menu + 1] = { event = "engine:Supply", label = "Abastecer", tunnel = "client" }
								else
									if Entity(Model).state.Plates then
										if GetVehicleDoorLockStatus(Model) == 1 then
											for k,Tyre in pairs(tyreList) do
												local Wheel = GetEntityBoneIndexByName(Model,k)
												if Wheel ~= -1 then
													local cWheel = GetWorldPositionOfEntityBone(Model,Wheel)
													local Distance = #(Coords - cWheel)
													if Distance <= 1.0 then
														Selected[5] = Tyre
														Menu[#Menu + 1] = { event = "inventory:RemoveTyres", label = "Retirar Pneu", tunnel = "client" }
													end
												end
											end

											Menu[#Menu + 1] = { event = "trunkchest:openTrunk", label = "Abrir Porta-Malas", tunnel = "server" }
											Menu[#Menu + 1] = { event = "player:checkTrunk", label = "Checar Porta-Malas", tunnel = "server" }
										end

										-- Menu[#Menu + 1] = { event = "garages:Key", label = "Criar Chave Cópia", tunnel = "police" }
										Menu[#Menu + 1] = { event = "inventory:applyPlate", label = "Trocar Placa", tunnel = "server" }
									end

									if not IsThisModelABike(vehModel) then
										local Rolling = GetEntityRoll(Model)
										if Rolling > 75.0 or Rolling < -75.0 then
											Menu[#Menu + 1] = { event = "player:RollVehicle", label = "Desvirar", tunnel = "server" }
										else
											if GetEntityBoneIndexByName(Model,"boot") ~= -1 then
												local Trunk = GetEntityBoneIndexByName(Model,"boot")
												local cTrunk = GetWorldPositionOfEntityBone(Model,Trunk)
												local Distance = #(Coords - cTrunk)
												if Distance <= 1.25 then
													if GetVehicleDoorLockStatus(Model) == 1 then
														Menu[#Menu + 1] = { event = "player:enterTrunk", label = "Entrar no Porta-Malas", tunnel = "client" }
													end

													Menu[#Menu + 1] = { event = "inventory:StealTrunk", label = "Arrombar Porta-Malas", tunnel = "client" }
												end
											end
										end
									end

									if LocalPlayer["state"]["Police"] then
										-- Menu[#Menu + 1] = { event = "pma-voice:Copom", label = "Abrir Copom", tunnel = "client" }
										Menu[#Menu + 1] = { event = "police:Plate", label = "Verificar Placa", tunnel = "police" }
										Menu[#Menu + 1] = { event = "police:Impound", label = "Registrar Veículo", tunnel = "police" }

										if Entity(Model).state.Plates then
											Menu[#Menu + 1] = { event = "police:Arrest", label = "Apreender Veículo", tunnel = "police" }
										end
									else
										if Plate == "DISM"..(1000 + LocalPlayer["state"]["Passport"]) then
											local Distance = #(Coords - vec3(Dismantles[Dismantleds][1],Dismantles[Dismantleds][2],Dismantles[Dismantleds][3]))
											if Distance <= 10 then
												Menu[#Menu + 1] = { event = "inventory:Dismantle", label = "Desmanchar", tunnel = "client" }
											end
										end

										for k,v in pairs(Tows) do
											local Distance = #(Coords - vec3(v[1],v[2],v[3]))
											if Distance <= 10 then
												Menu[#Menu + 1] = { event = "towdriver:Tow", label = "Rebocar", tunnel = "client" }
												Menu[#Menu + 1] = { event = "impound:Check", label = "Impound", tunnel = "police" }
											end
										end
									end

									Menu[#Menu + 1] = { event = "engine:Vehrify", label = "Verificar", tunnel = "client" }
								end
							else
								Selected[5] = false
								Menu[#Menu + 1] = { event = "engine:Supply", label = "Abastecer", tunnel = "client" }
							end

							SendNUIMessage({ Action = "Valid", data = Menu })

							Sucess = true
							while Sucess do
								local Ped = PlayerPedId()
								local Coords = GetEntityCoords(Ped)
								local _,entCoords,Model = RayCastGamePlayCamera()

								if (IsControlJustReleased(1,buttonToLock) or IsDisabledControlJustReleased(1,buttonToLock)) then
									SetCursorLocation(0.5,0.5)
									SetNuiFocus(true,true)
								end

								if GetEntityType(Model) == 0 or #(Coords - entCoords) > 1.0 then
									Sucess = false
								end

								Wait(1)
							end

							SendNUIMessage({ Action = "Left" })
						end
					elseif IsPedAPlayer(Model) then
						if #(Coords - entCoords) <= 1.0 then
							local index = NetworkGetPlayerIndexFromPed(Model)
							local source = GetPlayerServerId(index)
							local Menu = {}

							Selected = { source }

							if LocalPlayer["state"]["Police"] then
								Menu[#Menu + 1] = { event = "police:runInspect", label = "Revistar", tunnel = "police" }
								Menu[#Menu + 1] = { event = "police:prisonClothes", label = "Uniforme Presidiário", tunnel = "police" }
								if LocalPlayer["state"]["Bombeiro"] then
									Menu[#Menu + 1] = { event = "paramedic:Revive", label = "Reanimar", tunnel = "paramedic" }
									Menu[#Menu + 1] = { event = "paramedic:Bed", label = "Deitar Paciente", tunnel = "paramedic" }
								end
							elseif LocalPlayer["state"]["Paramedic"] then
								if GetEntityHealth(Model) <= 100 then
									Menu[#Menu + 1] = { event = "paramedic:Revive", label = "Reanimar", tunnel = "paramedic" }
								else
									Menu[#Menu + 1] = { event = "paramedic:Treatment", label = "Tratamento", tunnel = "paramedic" }
									Menu[#Menu + 1] = { event = "paramedic:Reposed", label = "Colocar de Repouso", tunnel = "paramedic" }
									Menu[#Menu + 1] = { event = "paramedic:Bandage", label = "Passar Ataduras", tunnel = "paramedic" }
									Menu[#Menu + 1] = { event = "paramedic:presetBurn", label = "Roupa de Queimadura", tunnel = "paramedic" }
									Menu[#Menu + 1] = { event = "paramedic:presetPlaster", label = "Colocar Gesso", tunnel = "paramedic" }
									Menu[#Menu + 1] = { event = "paramedic:extractBlood", label = "Extrair Sangue", tunnel = "paramedic" }
								end
								Menu[#Menu + 1] = { event = "paramedic:Diagnostic", label = "Informações", tunnel = "paramedic" }
								Menu[#Menu + 1] = { event = "paramedic:Bed", label = "Deitar Paciente", tunnel = "paramedic" }
							elseif LocalPlayer["state"]["Bombeiro"] then
								Menu[#Menu + 1] = { event = "paramedic:Diagnostic", label = "Informações", tunnel = "paramedic" }
								Menu[#Menu + 1] = { event = "bombeiro:Treatment", label = "Tratamento", tunnel = "paramedic" }
								Menu[#Menu + 1] = { event = "paramedic:Revive", label = "Reanimar", tunnel = "paramedic" }
								Menu[#Menu + 1] = { event = "paramedic:Bed", label = "Deitar Paciente", tunnel = "paramedic" }
							end
							if IsEntityPlayingAnim(Model,"random@mugging3","handsup_standing_base",3) or (GetEntityHealth(Model) <= 100 and LocalPlayer["state"]["Org"]) or IsEntityPlayingAnim(Model,"mp_arresting","idle",3) then
								Menu[#Menu + 1] = { event = "player:checkShoes", label = "Roubar Sapatos", tunnel = "paramedic" }
								Menu[#Menu + 1] = { event = "police:runInspect", label = "Revistar", tunnel = "police" }
							end

							SendNUIMessage({ Action = "Valid", data = Menu })

							Sucess = true
							while Sucess do
								local Ped = PlayerPedId()
								local Coords = GetEntityCoords(Ped)
								local _,entCoords,Model = RayCastGamePlayCamera()

								if (IsControlJustReleased(1,buttonToLock) or IsDisabledControlJustReleased(1,buttonToLock)) then
									SetCursorLocation(0.5,0.5)
									SetNuiFocus(true,true)
								end

								if GetEntityType(Model) == 0 or #(Coords - entCoords) > 1.0 then
									Sucess = false
								end

								Wait(1)
							end

							SendNUIMessage({ Action = "Left" })
						end
					else
						for k,v in pairs(Models) do
							if DoesEntityExist(Model) then
								if k == GetEntityModel(Model) then
									if #(Coords - entCoords) <= Models[k]["Distance"] then
										local objNet = nil
										if NetworkGetEntityIsNetworked(Model) then
											objNet = ObjToNet(Model)
										end

										Selected = { Model,k,objNet,GetEntityCoords(Model) }

										SendNUIMessage({ Action = "Valid", data = Models[k]["options"] })

										Sucess = true
										while Sucess do
											local Ped = PlayerPedId()
											local Coords = GetEntityCoords(Ped)
											local _,entCoords,Model = RayCastGamePlayCamera()

											if (IsControlJustReleased(1,buttonToLock) or IsDisabledControlJustReleased(1,buttonToLock)) then
												SetCursorLocation(0.5,0.5)
												SetNuiFocus(true,true)
											end

											if GetEntityType(Model) == 0 or #(Coords - entCoords) > Models[k]["Distance"] then
												Sucess = false
											end

											Wait(1)
										end

										SendNUIMessage({ Action = "Left" })
									end
								end
							end
						end
					end
				end
			end

			Wait(100)
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TARGET:ROLLVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("target:RollVehicle")
AddEventHandler("target:RollVehicle",function(Network)
	if NetworkDoesNetworkIdExist(Network) then
		local Vehicle = NetToEnt(Network)
		if DoesEntityExist(Vehicle) then
			SetVehicleOnGroundProperly(Vehicle)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TARGETDISABLE
-----------------------------------------------------------------------------------------------------------------------------------------
function TargetDisable()
	if Sucess or not LocalPlayer["state"]["Target"] then
		return
	end

	SendNUIMessage({ Action = "Close" })
	LocalPlayer["state"]["Target"] = false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SELECT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Select",function(Data,Callback)
	Sucess = false
	SetNuiFocus(false,false)
	SendNUIMessage({ Action = "Close" })
	LocalPlayer["state"]["Target"] = false

	if Data["tunnel"] == "client" then
		TriggerEvent(Data["event"],Selected)
	elseif Data["tunnel"] == "shop" then
		TriggerEvent(Data["event"],Selected,Data["service"])
	elseif Data["tunnel"] == "atm" then
		TriggerEvent(Data["event"],Data["service"][1],Data["service"][2])
	elseif Data["tunnel"] == "entity" then
		TriggerEvent(Data["event"],Selected[1],Data["service"])
	elseif Data["tunnel"] == "products" then
		TriggerEvent(Data["event"],Data["service"])
	elseif Data["tunnel"] == "server" then
		TriggerServerEvent(Data["event"],Selected)
	elseif Data["tunnel"] == "police" then
		TriggerServerEvent(Data["event"],Selected,Data["service"])
	elseif Data["tunnel"] == "paramedic" then
		TriggerServerEvent(Data["event"],Selected[1],Data["service"])
	elseif Data["tunnel"] == "proserver" then
		TriggerServerEvent(Data["event"],Data["service"])
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Close",function(Data,Callback)
	Sucess = false
	SetNuiFocus(false,false)
	SendNUIMessage({ Action = "Close" })
	LocalPlayer["state"]["Target"] = false

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEBUG
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("target:Debug")
AddEventHandler("target:Debug",function()
	Sucess = false
	SetNuiFocus(false,false)
	SendNUIMessage({ Action = "Close" })
	LocalPlayer["state"]["Target"] = false
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETCOORDSFROMCAM
-----------------------------------------------------------------------------------------------------------------------------------------
function GetCoordsFromCam(Distance,Coords)
	local Rotation = GetGameplayCamRot()
	local Adjuste = vec3((math.pi / 180) * Rotation["x"],(math.pi / 180) * Rotation["y"],(math.pi / 180) * Rotation["z"])
	local direction = vec3(-math.sin(Adjuste[3]) * math.abs(math.cos(Adjuste[1])),math.cos(Adjuste[3]) * math.abs(math.cos(Adjuste[1])),math.sin(Adjuste[1]))

	return vec3(Coords[1] + direction[1] * Distance, Coords[2] + direction[2] * Distance, Coords[3] + direction[3] * Distance)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- RAYCASTGAMEPLAYCAMERA
-----------------------------------------------------------------------------------------------------------------------------------------
function RayCastGamePlayCamera()
	local Ped = PlayerPedId()
	local Cam = GetGameplayCamCoord()
	local Cam2 = GetCoordsFromCam(10.0,Cam)
	local Handle = StartExpensiveSynchronousShapeTestLosProbe(Cam,Cam2,-1,Ped,4)
	local a,Hit,Coords,b,Model = GetShapeTestResult(Handle)

	return Hit,Coords,Model
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDCIRCLEZONE
-----------------------------------------------------------------------------------------------------------------------------------------
function AddCircleZone(Name,Center,Radius,Options,Target)
	Zones[Name] = CircleZone:Create(Center,Radius,Options)
	Zones[Name]["targetoptions"] = Target
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMCIRCLEZONE
-----------------------------------------------------------------------------------------------------------------------------------------
function RemCircleZone(Name)
	if Zones[Name] then
		Zones[Name] = nil
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDTARGETMODEL
-----------------------------------------------------------------------------------------------------------------------------------------
function AddTargetModel(Model,Options)
	for _,v in pairs(Model) do
		Models[v] = Options
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- LABELTEXT
-----------------------------------------------------------------------------------------------------------------------------------------
function LabelText(Name,Text)
	if Zones[Name] then
		Zones[Name]["targetoptions"]["options"][1]["label"] = Text
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDBOXZONE
-----------------------------------------------------------------------------------------------------------------------------------------
function AddBoxZone(Name,Center,Length,Width,Options,Target)
    Zones[Name] = BoxZone:Create(Center,Length,Width,Options)
    Zones[Name]["targetoptions"] = Target
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
exports("LabelText",LabelText)
exports("AddBoxZone",AddBoxZone)
exports("RemCircleZone",RemCircleZone)
exports("AddCircleZone",AddCircleZone)
exports("AddTargetModel",AddTargetModel)
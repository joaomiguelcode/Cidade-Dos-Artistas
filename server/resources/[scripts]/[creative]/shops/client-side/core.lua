-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("shops",Creative)
vSERVER = Tunnel.getInterface("shops")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("close",function(Data,Callback)
	SendNUIMessage({ action = "hideNUI" })
	SetNuiFocus(false,false)

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUESTSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("requestShop",function(Data,Callback)
	local inventoryShop,inventoryUser,invPeso,invMaxpeso,shopSlots = vSERVER.requestShop(Data["shop"])
	if inventoryShop then
		Callback({ inventoryShop = inventoryShop, inventoryUser = inventoryUser, invPeso = invPeso, invMaxpeso = invMaxpeso, shopSlots = shopSlots })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUESTBUY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("functionShops",function(Data,Callback)
	vSERVER.functionShops(Data["shop"],Data["item"],Data["amount"],Data["slot"])

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- POPULATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("populateSlot",function(Data,Callback)
	TriggerServerEvent("shops:populateSlot",Data["item"],Data["slot"],Data["target"],Data["amount"])

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("updateSlot",function(Data,Callback)
	TriggerServerEvent("shops:updateSlot",Data["item"],Data["slot"],Data["target"],Data["amount"])

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRUNKCHEST:UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.updateShops(action)
	SendNUIMessage({ action = action })
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- LIST
-----------------------------------------------------------------------------------------------------------------------------------------
local List = {
	-- Prefeitura
	-- { -545.03,-204.19,38.22,"Identity",false,2.75 },
	-- { 2328.68,2569.68,46.67,"Identity2",false,2.75 },
	--- loja de roupas
	{ 79.9,-1393.33,29.37,"Roupaspecas",true },
	{ 1689.21,4822.5,42.06,"Roupaspecas",true },
	{ 2.04,6516.02,31.88,"Roupaspecas",true },

	-- Lojas de Departamento
	{ 24.89,-1346.91,29.49,"Departament",true,true },
	{ 2556.86,381.26,108.61,"Departament",true,true },
	{ 161.21,6641.69,31.69,"Departament",true,true },
	{ 1164.82,-323.63,69.2,"Departament",true,true },
	{ -706.16,-914.55,19.21,"Departament",true,true },
	{ -47.39,-1758.63,29.42,"Departament",true,true },
	{ 373.11,326.81,103.56,"Departament",true,true },
	{ -3242.74,1000.46,12.82,"Departament",true,true },
	{ 1728.43,6415.42,35.03,"Departament",true,true },
	{ 548.71,2670.8,42.16,"Departament",true,true },
	{ 1960.21,3740.66,32.33,"Departament",true,true },
	{ 2677.8,3279.95,55.23,"Departament",true,true },
	{ 1697.35,4923.46,42.0,"Departament",true,true },
	{ -1819.55,793.51,138.08,"Departament",true,true },
	{ 1392.03,3606.1,34.98,"Departament",true,true },
	{ -2966.41,391.59,15.05,"Departament",true,true },
	{ -3039.57,584.75,7.9,"Departament",true,true },
	{ 1134.33,-983.09,46.4,"Departament",true,true },
	{ 1165.26,2710.79,38.15,"Departament",true,true },
	{ -1486.77,-377.56,40.15,"Departament",true,true },
	{ -1221.42,-907.91,12.32,"Departament",true,true },
	{ -2290.32,347.94,174.6,"Departament",true,true },

	{ -856.98,-2152.49,8.95,"Departament",true,true }, -- HOSPITAL

	--Ammunations
	{ 1693.19,3759.97,34.69,"Ammunation",false },
	{ 22.04,-1106.76,29.79,"Ammunation",false },
	{ 1692.28,3760.94,34.6,"Ammunation",false },
	{ 253.79,-50.5,69.94,"Ammunation",false },
	{ 842.41,-1035.28,28.19,"Ammunation",false },
	{ -331.62,6084.93,31.46,"Ammunation",false },
	{ -662.29,-933.62,21.82,"Ammunation",false },
	{ -1304.17,-394.62,36.7,"Ammunation",false },
	{ -1118.95,2699.73,18.55,"Ammunation",false },
	{ 2567.98,292.65,108.73,"Ammunation",false },
	{ -3173.51,1088.38,20.84,"Ammunation",false },
	{ 22.59,-1105.54,29.79,"Ammunation",false },
	{  810.22,-2158.99,29.62,"Ammunation",false },
	{ -330.8,6083.89,31.46,"Ammunation",false },

	{ 1520.78,3780.21,34.82	,"Fishing",false },
	{ 1524.71,3783.6,34.88,"Fishing2",true,2.25 },
	{ -678.17,5838.69,17.32,"Hunting2",false },
	{ 1140.36,-1530.01,35.03,"Pharmacy",false },
	{ -253.71,6327.33,32.42,"Pharmacy",false },
	{ -799.46,-2693.88,14.86,"Bombeiro",false },
	{ 1195.46,2622.81,38.37,"Harmony",false },
	{ 1162.9,2634.4,38.37,"Harmony",false },
	{ 1811.03,3680.06,38.59,"Paramedic",false },
	
	
	{ 753.58,-1692.34,31.24,"Humaita",false },
	{ 2513.1,4200.26,41.87,"Anchieta",false }, -- Anchieta
	{ 602.43,630.36,129.37,"Gcm",false }, -- GCM
	{ -1669.19,4866.7,61.0,"Rota",false },
	{ -768.52,-1008.48,18.94,"Transito",false }, 
	{ 1722.81,1483.65,85.04,"Rodoviaria",false }, -- cpa 23
	{ 2762.67,1362.11,24.6,"Coe",false }, -- coe
	{ 363.7,-1990.73,24.06,"Militar",false }, -- cpa 23
	{ -943.45,-1172.3,5.09,"Baep",false }, -- baep
	{ 345.67,-2085.37,20.02,"Cavpm",false }, -- cavpm
	{ 321.62,-2060.78,19.41,"Tatica",false }, -- tatica
	{ 1924.65,-1037.48,95.02,"Tatica",false }, -- tatica
	{ 291.0,-2071.71,18.69,"Caep",false }, -- caep
	{ 404.8,-2079.99,24.84,"Police",false }, -- geral
	{ 1081.65,-2186.08,36.09,"Cmtg",false }, --cmtg
	{-1014.64,-430.12,58.33,"Receita",false}, -- Receita
	

	{ -2349.81,3267.88,32.81,"Exercito",false }, -- GERAL
	{ -2354.90,3258.81,92.90,"Exercito",false }, -- GENERAL
	{ 480.28,2638.17,43.44,"Pc",false }, -- civil
	{ -401.56,1212.99,332.56,"Pc",false }, -- dope
	{ 1962.44,3137.46,41.2,"Federal",false }, --federal
	{ 1113.88,2649.64,39.31,"Penal",false }, --penal

	{ 2740.9,3467.31,55.71,"AutoPublic",false },
	{ 2725.13,3464.85,55.71,"Autosport",false },
	{ 949.02,-934.07,42.95,"OverPublic",false },
	{ 941.17,-934.03,42.95,"Overspeed",false },
	{ 913.34,365.42,118.23,"Tiao",false },
	{ 581.16,139.13,99.46,"Lumberman",false },
	{ 2746.09,3460.25,55.79,"Megamall",false },
	{ 83.61,-1551.5,29.59,"Megamall",false },
	{ 46.65,-1749.74,29.62,"Megamall",false },
	{109.42,-1797.59,27.08,"Megamall2", false},
	{-91.43,6514.57,32.1, "Megamall2", false},
	{4906.22,-4944.03,3.37, "Festa", false},
	{2746.91,-765.08,24.57, "Festa2", false},
	{-777.86,-802.76,12.05, "Vitrine", false},
	{-1388.14,-612.27,30.31, "Bahamas", false},
	{-562.25,287.98,82.18, "Vilamix", false},
	{-1520.61,109.86,55.64, "Playboy", false},
	{-1710.46,-799.92,10.24, "Asgard", false},
	{-1713.07,-800.62,10.24, "Asgard2", false},
	{-2581.6,-1706.66,3.98, "Ilha", false},

	-- NPC de Frutas e Caçador
	{ 1087.65,6509.91,21.06,"Frutas",false },
	{ -70.02,6261.9,31.46,"Hunting",false },

	-- NPC Minerador
	-- { 2833.28,2794.96,57.96,"Minerador",false },
	{ -349.54,-1569.89,25.22,"Reciclagem1",false },
	{ 1780.92,2559.57,45.67,"Refeitorio",false },
	
	{ 1132.79,-473.02,66.76,"Digitalden2",false },  
	{ 152.02,-223.04,54.42,"Digitalden2",false },
	{ 153.87,-223.87,54.42,"Digitalden2",false },
	{ 152.14,-228.39,54.42,"Digitalden2",false },
	{ 150.28,-222.63,54.42,"Digitalden2",false },
	{ 149.91,-233.05,54.42,"Digitalden2",false },
	{ 1930.51,3721.11,32.82,"VendaRoubo",false },
	
	
	{ 1134.65,-469.76,66.71,"Digitaldenpublico",false },	

	{ 154.83,-218.39,54.34,"Digitalden2",false },	
	{ 129.41,-1284.07,29.27,"Vanilla",false },
	{ 1385.68,4699.86,134.83,"Tropical",false },
	{ -601.89,-721.21,211.75,"Cobertura",false },
	
	{ 1404.41,1112.63,114.39,"Renato01",false },

	{ -81.38,27.95,72.94,"McDonalds",false,true },
	{ -84.92,29.81,72.94,"McDonalds",false,true },
	{ -87.95,31.39,72.94,"McDonalds",false,true },
	
	{ -1351.12,-475.05,33.18,"Protege",false,false },
	{ 241.13,-1378.86,33.73,"Habilitacao",false,false },
	{ -458.66,1157.65,328.02,"Oab",false,false },
	{ 954.47,24.33,71.83,"Cassino",false,false },
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- STATE
-----------------------------------------------------------------------------------------------------------------------------------------
local Hours = GlobalState["Hours"]

AddStateBagChangeHandler("Hours", nil, function(_, __, value)
    Hours = value
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPS:OPENSYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("shops:openSystem",function(shopId)
	if not shopId or not List[shopId] then return end

	if List[shopId][6] then 
		if Hours and ((Hours >= 19 and Hours < 24) or (Hours >= 0 and Hours < 8)) then 
			TriggerEvent("Notify","amarelo","Horario de Funcionamento: 8h as 19h") 
			return 
		end 
	end
	if LocalPlayer["state"]["Route"] < 900000 then
		if vSERVER.requestPerm(List[shopId][4]) then
			SetNuiFocus(true,true)
			SendNUIMessage({ action = "showNUI", name = List[shopId][4], type = vSERVER.getShopType(List[shopId][4]) })

			if List[shopId][5] then
				TriggerEvent("sounds:Private","shop",0.5)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPS:COFFEEMACHINE
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("shops:coffeeMachine",function()
	if Hours > 20 and Hours < 6 then TriggerEvent("Notify","amarelo","Horario de Funcionamento: 6h as 20h") return end
	if LocalPlayer["state"]["Route"] < 900000 then
		SendNUIMessage({ action = "showNUI", name = "coffeeMachine", type = "Buy" })
		SetNuiFocus(true,true)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPS:SODAMACHINE
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("shops:sodaMachine",function()
	if Hours > 20 and Hours < 6 then TriggerEvent("Notify","amarelo","Horario de Funcionamento: 6h as 20h") return end
	if LocalPlayer["state"]["Route"] < 900000 then
		SendNUIMessage({ action = "showNUI", name = "sodaMachine", type = "Buy" })
		SetNuiFocus(true,true)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPS:DONUTMACHINE
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("shops:donutMachine",function()
	if Hours > 20 and Hours < 6 then TriggerEvent("Notify","amarelo","Horario de Funcionamento: 6h as 20h") return end
	if LocalPlayer["state"]["Route"] < 900000 then
		SendNUIMessage({ action = "showNUI", name = "donutMachine", type = "Buy" })
		SetNuiFocus(true,true)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPS:BURGERMACHINE
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("shops:burgerMachine",function()
	if Hours > 20 and Hours < 6 then TriggerEvent("Notify","amarelo","Horario de Funcionamento: 6h as 20h") return end
	if LocalPlayer["state"]["Route"] < 900000 then
		SendNUIMessage({ action = "showNUI", name = "burgerMachine", type = "Buy" })
		SetNuiFocus(true,true)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPS:HOTDOGMACHINE
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("shops:hotdogMachine",function()
	if Hours > 20 and Hours < 6 then TriggerEvent("Notify","amarelo","Horario de Funcionamento: 6h as 20h") return end
	if LocalPlayer["state"]["Route"] < 900000 then
		SendNUIMessage({ action = "showNUI", name = "hotdogMachine", type = "Buy" })
		SetNuiFocus(true,true)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPS:CHIHUAHUA
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("shops:Chihuahua",function()
	if Hours > 20 and Hours < 6 then TriggerEvent("Notify","amarelo","Horario de Funcionamento: 6h as 20h") return end
	if LocalPlayer["state"]["Route"] < 900000 then
		SendNUIMessage({ action = "showNUI", name = "Chihuahua", type = "Buy" })
		SetNuiFocus(true,true)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPS:WATERMACHINE
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("shops:waterMachine",function()
	if Hours > 20 and Hours < 6 then TriggerEvent("Notify","amarelo","Horario de Funcionamento: 6h as 20h") return end
	if LocalPlayer["state"]["Route"] < 900000 then
		SendNUIMessage({ action = "showNUI", name = "waterMachine", type = "Buy" })
		SetNuiFocus(true,true)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPS:MEDICBAG
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("shops:medicBag",function()
	if LocalPlayer["state"]["Route"] < 900000 then
		if LocalPlayer["state"]["Paramedic"] or LocalPlayer["state"]["Bombeiro"] then
			SetNuiFocus(true,true)
			SendNUIMessage({ action = "showNUI", name = "Paramedic", type = "Buy" })
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPS:FUEL
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("shops:Fuel",function()
	SendNUIMessage({ action = "showNUI", name = "Fuel", type = "Buy" })
	SetNuiFocus(true,true)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSTART
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	for Number,v in pairs(List) do
		exports["target"]:AddCircleZone("Shops:"..Number,vec3(v[1],v[2],v[3]),2.50,{
			name = "Shops:"..Number,
			heading = 3374176
		},{
			shop = Number,
			Distance = 1.50,
			options = {
				{
					event = "shops:openSystem",
					label = "Abrir",
					tunnel = "shop"
				}
			}
		})
	end
end)

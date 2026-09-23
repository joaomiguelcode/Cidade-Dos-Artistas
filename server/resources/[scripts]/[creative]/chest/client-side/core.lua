-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("chest")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTS
-----------------------------------------------------------------------------------------------------------------------------------------
local Chests = {
	{ ["Name"] = "Admin", ["Coords"] = vec3(132.45,-737.32,258.16), ["Mode"] = "2" }, 
	-- Polícia 
	{ ["Name"] = "Oab", ["Coords"] = vec3(-458.13,1159.93,328.02), ["Mode"] = "1" }, 

	{ ["Name"] = "Rota", ["Coords"] = vec3(-1673.19,4865.27,61.0), ["Mode"] = "1" }, 
	{ ["Name"] = "Humaita", ["Coords"] = vec3(757.19,-1690.15,31.24), ["Mode"] = "1" }, 
	{ ["Name"] = "Anchieta", ["Coords"] = vec3(2513.15,4203.26,41.87), ["Mode"] = "1" }, 
	{ ["Name"] = "Gcm", ["Coords"] = vec3(599.99,626.44,129.37), ["Mode"] = "1" }, 
	{ ["Name"] = "Cmtg", ["Coords"] = vec3(403.67,-2071.78,24.87), ["Mode"] = "1" }, 
	{ ["Name"] = "CPA", ["Coords"] = vec3(399.63,-2076.6,24.85), ["Mode"] = "1" }, 
	{ ["Name"] = "Corregedoria", ["Coords"] = vec3(401.41,-2080.76,24.84), ["Mode"] = "1" }, 
	{ ["Name"] = "Transito", ["Coords"] = vec3(-768.31,-1011.3,18.94), ["Mode"] = "1" }, 
	{ ["Name"] = "Rodoviaria", ["Coords"] = vec3(1725.71,1485.92,85.04), ["Mode"] = "1" }, 
	{ ["Name"] = "Militar", ["Coords"] = vec3(368.1,-1990.82,24.06), ["Mode"] = "1" }, 
	{ ["Name"] = "Baep", ["Coords"] = vec3(-946.72,-1174.23,5.09), ["Mode"] = "1" }, 
	{ ["Name"] = "Caep", ["Coords"] = vec3(294.91,-2070.93,18.69), ["Mode"] = "1" }, 
    { ["Name"] = "Tatica", ["Coords"] = vec3(317.83,-2061.46,19.41), ["Mode"] = "1" }, 
    { ["Name"] = "Cavpm", ["Coords"] = vec3(344.89,-2081.41,20.02), ["Mode"] = "1" }, 
	{ ["Name"] = "Penal", ["Coords"] = vec3(1116.41,2652.22,39.31), ["Mode"] = "1" }, 
	{ ["Name"] = "Coe", ["Coords"] = vec3(2672.71,1343.33,27.75), ["Mode"] = "1" }, 
    { ["Name"] = "Receita", ["Coords"] = vec3(-1027.7,-429.92,58.33), ["Mode"] = "1" }, 
	{ ["Name"] = "PE", ["Coords"] = vec3(1862.40,3688.81,34.26), ["Mode"] = "1" },
	{ ["Name"] = "Alojamento", ["Coords"] = vec3(-1753.39,3180.07,32.90), ["Mode"] = "1" },
	{ ["Name"] = "BAC", ["Coords"] = vec3(-2474.64,3024.95,32.88), ["Mode"] = "1" },

	{ ["Name"] = "Dope", ["Coords"] = vec3(-399.32,1213.76,332.56), ["Mode"] = "1" },
	{ ["Name"] = "Pc", ["Coords"] = vec3(486.2,2638.86,43.44), ["Mode"] = "1" },
	{ ["Name"] = "Pf", ["Coords"] = vec3(1921.67,3112.28,48.49), ["Mode"] = "1" },
	{ ["Name"] = "Apreensao", ["Coords"] = vec3(-2239.37,2354.5,30.89), ["Mode"] = "2" },

	{ ["Name"] = "Bombeiro", ["Coords"] = vec3(-793.27,-2690.24,14.86), ["Mode"] = "1" },
	{ ["Name"] = "Paramedic", ["Coords"] = vec3(1811.48,3675.93,38.59), ["Mode"] = "1" },

	{ ["Name"] = "Mcdonalds", ["Coords"] = vec3(-86.67,21.57,72.93), ["Mode"] = "3" },
	{ ["Name"] = "Autosport", ["Coords"] = vec3(2749.53,3474.15,60.27), ["Mode"] = "3" },
	{ ["Name"] = "Overspeed", ["Coords"] = vec3(922.03,-926.45,50.33), ["Mode"] = "3" },

	-- Ilegal Sul
	{ ["Name"] = "Sonia", ["Coords"] = vec3(1854.55,-2249.43,171.75), ["Mode"] = "3" },
	{ ["Name"] = "Cobertura", ["Coords"] = vec3(-600.72,-708.64,220.28), ["Mode"] = "3" },
	{ ["Name"] = "Life", ["Coords"] = vec3(-1062.84,-250.11,44.01), ["Mode"] = "3" },
	{ ["Name"] = "Jaguare", ["Coords"] = vec3(1250.39,-225.75,98.99), ["Mode"] = "3" },
	{ ["Name"] = "Vanilla", ["Coords"] = vec3(120.7,-1301.49,21.11), ["Mode"] = "3" },
	{ ["Name"] = "Campolimpo", ["Coords"] = vec3(1345.84,-680.66,88.55), ["Mode"] = "3" },
	{ ["Name"] = "Laura", ["Coords"] = vec3(-3087.9,1473.0,25.24), ["Mode"] = "3" },
	{ ["Name"] = "Vilaede", ["Coords"] = vec3(1251.84,-1084.32,54.16), ["Mode"] = "3" },
	{ ["Name"] = "Guaianazes", ["Coords"] = vec3(1364.73,-2440.1,62.18), ["Mode"] = "3" },
	{ ["Name"] = "Rua100", ["Coords"] = vec3(204.4,700.49,220.33), ["Mode"] = "3" },
	{ ["Name"] = "Playboy", ["Coords"] = vec3(-1525.14,149.03,60.79), ["Mode"] = "3" },
	{ ["Name"] = "Vilamix", ["Coords"] = vec3(-1876.21,2062.63,145.57), ["Mode"] = "3" },
	{ ["Name"] = "Asgard", ["Coords"] = vec3(-1704.48,-794.61,10.24), ["Mode"] = "3" },

	--Ilegal Norte
	{ ["Name"] = "Final", ["Coords"] = vec3(5010.7,-5757.36,15.48), ["Mode"] = "3" },
	{ ["Name"] = "Final2", ["Coords"] = vec3(1721.29,3320.34,41.21), ["Mode"] = "3" },
	{ ["Name"] = "Final3", ["Coords"] = vec3(2146.52,4775.42,41.01), ["Mode"] = "3" },
	{ ["Name"] = "Final4", ["Coords"] = vec3(4920.02,-5241.7,2.53), ["Mode"] = "3" },
	{ ["Name"] = "Diadema", ["Coords"] = vec3(111.71,1342.74,286.67), ["Mode"] = "3" },
	{ ["Name"] = "Brasilandia", ["Coords"] = vec3(894.68,348.89,121.27), ["Mode"] = "3" },
	{ ["Name"] = "Capaoredondo", ["Coords"] = vec3(801.63,-288.6,69.89), ["Mode"] = "3" },
	{ ["Name"] = "Tiradentes", ["Coords"] = vec3(2281.3,3561.41,66.05), ["Mode"] = "3" },
	{ ["Name"] = "Nhocune", ["Coords"] = vec3(1525.56,1732.73,114.76), ["Mode"] = "3" },
	{ ["Name"] = "Oziel", ["Coords"] = vec3(2690.15,-623.07,53.16), ["Mode"] = "3" },
	{ ["Name"] = "Osasco", ["Coords"] = vec3(465.72,3281.65,83.54), ["Mode"] = "3" },
	{ ["Name"] = "Heliopolis", ["Coords"] = vec3(1902.55,2.79,188.89), ["Mode"] = "3" },
	{ ["Name"] = "Morato", ["Coords"] = vec3(3754.81,4538.26,33.4), ["Mode"] = "3" },
	{ ["Name"] = "Alba", ["Coords"] = vec3(-1183.3,-1736.34,11.9), ["Mode"] = "3" },
	{ ["Name"] = "Marcone", ["Coords"] = vec3(620.1,2562.28,73.36), ["Mode"] = "3" },
	{ ["Name"] = "Bahamas", ["Coords"] = vec3(-1367.01,-612.76,30.31), ["Mode"] = "3" },
	{ ["Name"] = "Grajau", ["Coords"] = vec3(-1719.92,-219.61,61.79), ["Mode"] = "3" },
	{ ["Name"] = "Paraisopolis", ["Coords"] = vec3(857.74,1171.01,346.47), ["Mode"] = "3" },
	{ ["Name"] = "Itaquera", ["Coords"] = vec3(-2364.34,1747.77,215.48), ["Mode"] = "3" },
	{ ["Name"] = "Itapevi", ["Coords"] = vec3(1667.81,6513.95,34.69), ["Mode"] = "3" },

	{ ["Name"] = "Protege", ["Coords"] = vec3(-1353.78,-473.59,33.18), ["Mode"] = "2" },
	{ ["Name"] = "Cnn", ["Coords"] = vec3(-568.9,-938.14,23.86), ["Mode"] = "2" },
	
	{ ["Name"] = "Cassino", ["Coords"] = vec3(974.06,17.85,71.83), ["Mode"] = "2" },
	{ ["Name"] = "LoveFunk", ["Coords"] = vec3(976.63,-207.7,71.98), ["Mode"] = "2" },
	{ ["Name"] = "Tropical", ["Coords"] = vec3(1414.62,4714.22,140.24), ["Mode"] = "2" },
	{ ["Name"] = "Guedes", ["Coords"] = vec3(-263.34,-727.78,125.46), ["Mode"] = "2" },
	{ ["Name"] = "Renato01", ["Coords"] = vec3(1402.4,1126.25,114.73), ["Mode"] = "2" },
	{ ["Name"] = "Renato02", ["Coords"] = vec3(2421.38,5002.5,41.77), ["Mode"] = "2" },
	{ ["Name"] = "Xavier", ["Coords"] = vec3(2853.83,1964.95,84.4), ["Mode"] = "2" },
	{ ["Name"] = "Lobo01", ["Coords"] = vec3(-2678.1,3713.64,6.22), ["Mode"] = "2" },
	{ ["Name"] = "Lobo02", ["Coords"] = vec3(-107.59,977.07,240.88), ["Mode"] = "2" },
	{ ["Name"] = "Lobo03", ["Coords"] = vec3(-97.91,829.24,227.59), ["Mode"] = "2" },
	{ ["Name"] = "Lobo04", ["Coords"] = vec3(-1793.56,449.89,128.5), ["Mode"] = "2" },
	{ ["Name"] = "Tommy", ["Coords"] = vec3(1252.7,-868.41,79.11), ["Mode"] = "2" },

	{ ["Name"] = "Arua-1", ["Coords"] = vec3(-2731.64,-82.43,21.82), ["Mode"] = "5" },
	{ ["Name"] = "Arua-2", ["Coords"] = vec3(-2770.07,-78.32,21.85), ["Mode"] = "5" },
	{ ["Name"] = "Arua-3", ["Coords"] = vec3(-2766.34,-121.08,21.82), ["Mode"] = "5" },
	{ ["Name"] = "Arua-4", ["Coords"] = vec3(-2798.22,-92.55,21.85), ["Mode"] = "5" },
	{ ["Name"] = "Arua-5", ["Coords"] = vec3(-2818.87,-111.66,21.85), ["Mode"] = "5" },
	{ ["Name"] = "Arua-6", ["Coords"] = vec3(-2835.11,-142.44,21.85), ["Mode"] = "5" },
	{ ["Name"] = "Arua-7", ["Coords"] = vec3(-2795.35,-153.95,21.84), ["Mode"] = "5" },
	{ ["Name"] = "Arua-8", ["Coords"] = vec3(-2834.09,-181.85,21.85), ["Mode"] = "5" },
	{ ["Name"] = "Arua-9", ["Coords"] = vec3(-2797.66,-224.91,21.85), ["Mode"] = "5" },
	{ ["Name"] = "Arua-10", ["Coords"] = vec3(-2759.06,-232.29,21.85), ["Mode"] = "5" },
	{ ["Name"] = "Arua-11", ["Coords"] = vec3(-2764.8,-191.59,21.85), ["Mode"] = "5" },
	{ ["Name"] = "Arua-12", ["Coords"] = vec3(-2725.85,-221.7,21.85), ["Mode"] = "5" },
	{ ["Name"] = "Arua-13", ["Coords"] = vec3(-2703.45,-204.67,21.85), ["Mode"] = "5" },
	{ ["Name"] = "Arua-14", ["Coords"] = vec3(-2684.74,-179.32,21.85), ["Mode"] = "5" },
	{ ["Name"] = "Arua-15", ["Coords"] = vec3(-2726.87,-169.54,21.85), ["Mode"] = "5" },
	{ ["Name"] = "Arua-16", ["Coords"] = vec3(-2682.46,-140.7,21.84), ["Mode"] = "5" },

	{ ["Name"] = "Alphaville-1", ["Coords"] = vec3(915.59,927.28,241.81), ["Mode"] = "5" },
	{ ["Name"] = "Alphaville-2", ["Coords"] = vec3(867.86,927.26,241.81), ["Mode"] = "5" },
	{ ["Name"] = "Alphaville-3", ["Coords"] = vec3(915.42,898.13,241.81), ["Mode"] = "5" },
	{ ["Name"] = "Alphaville-4", ["Coords"] = vec3(867.93,898.08,241.81), ["Mode"] = "5" },
	{ ["Name"] = "Alphaville-5", ["Coords"] = vec3(915.33,868.99,241.81), ["Mode"] = "5" },
	{ ["Name"] = "Alphaville-6", ["Coords"] = vec3(867.78,868.96,241.81), ["Mode"] = "5" },
	{ ["Name"] = "Alphaville-7", ["Coords"] = vec3(915.42,839.78,241.81), ["Mode"] = "5" },
	{ ["Name"] = "Alphaville-8", ["Coords"] = vec3(867.74,839.83,241.81), ["Mode"] = "5" },
	{ ["Name"] = "Alphaville-9", ["Coords"] = vec3(915.42,810.64,241.81), ["Mode"] = "5" },
	{ ["Name"] = "Alphaville-10", ["Coords"] = vec3(867.87,810.66,241.81), ["Mode"] = "5" },

	{ ["Name"] = "Vintage-1", ["Coords"] = vec3(-924.72, 971.58, 230.34), ["Mode"] = "5" },
	{ ["Name"] = "Vintage-2", ["Coords"] = vec3(-954.48,962.75,230.34), ["Mode"] = "5" },
	{ ["Name"] = "Vintage-3", ["Coords"] = vec3(-1038.58, 937.96, 230.34), ["Mode"] = "5" },
	{ ["Name"] = "Vintage-4", ["Coords"] = vec3(-1052.59, 994.57, 230.42), ["Mode"] = "5" },
	{ ["Name"] = "Vintage-5", ["Coords"] = vec3(-1058.62, 1027.5, 230.42), ["Mode"] = "5" },
	{ ["Name"] = "Vintage-6", ["Coords"] = vec3(-985.09, 1003.09, 230.4), ["Mode"] = "5" },
	{ ["Name"] = "Vintage-7", ["Coords"] = vec3(-992.66, 1028.44, 230.4), ["Mode"] = "5" },
	{ ["Name"] = "Vintage-8", ["Coords"] = vec3(-999.59, 1051.71, 230.4), ["Mode"] = "5" },
	{ ["Name"] = "Vintage-9", ["Coords"] = vec3(-994.7, 1104.84, 230.4), ["Mode"] = "5" },
	{ ["Name"] = "Vintage-10", ["Coords"] = vec3(-1022.24, 1096.25, 230.42), ["Mode"] = "5" },
	{ ["Name"] = "Vintage-11", ["Coords"] = vec3(-1051.0, 1087.73, 230.42), ["Mode"] = "5" },
	{ ["Name"] = "Vintage-12", ["Coords"] = vec3(-1029.73, 1030.57, 230.4), ["Mode"] = "5" },

	{ ["Name"] = "Bangalo-1", ["Coords"] = vec3(-2154.51,-585.52,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-2", ["Coords"] = vec3(-2183.93,-600.34,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-3", ["Coords"] = vec3(-2189.64,-569.57,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-4", ["Coords"] = vec3(-2215.05,-590.12,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-5", ["Coords"] = vec3(-2213.06,-526.12,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-6", ["Coords"] = vec3(-2241.53,-509.96,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-7", ["Coords"] = vec3(-2246.75,-540.15,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-8", ["Coords"] = vec3(-2273.23,-518.69,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-9", ["Coords"] = vec3(-2289.3,-547.1,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-10", ["Coords"] = vec3(-2242.15,-633.63,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-11", ["Coords"] = vec3(-2271.48,-648.34,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-12", ["Coords"] = vec3(-2276.96,-617.65,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-13", ["Coords"] = vec3(-2302.54,-638.0,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-14", ["Coords"] = vec3(-2337.92,-599.45,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-15", ["Coords"] = vec3(-2365.48,-617.2,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-16", ["Coords"] = vec3(-2397.63,-610.2,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-17", ["Coords"] = vec3(-2415.28,-582.73,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-18", ["Coords"] = vec3(-2408.36,-550.68,5.91), ["Mode"] = "5" }, 
	{ ["Name"] = "Bangalo-19", ["Coords"] = vec3(-2380.85,-532.94,5.91), ["Mode"] = "5" },
	{ ["Name"] = "Bangalo-20", ["Coords"] = vec3(-2348.7,-539.92,5.91), ["Mode"] = "5" },
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- LABELS
-----------------------------------------------------------------------------------------------------------------------------------------
local Labels = {
	["1"] = {
		{
			event = "chest:Open",
			label = "Compartimento Geral",
			tunnel = "shop",
			service = "Normal"
		},{
			event = "chest:Open",
			label = "Compartimento Pessoal",
			tunnel = "shop",
			service = "Personal"
		},{
			event = "chest:Upgrade",
			label = "Aumentar",
			tunnel = "server"
		}
	},
	["2"] = {
		{
			event = "chest:Open",
			label = "Abrir",
			tunnel = "shop",
			service = "Normal"
		},{
			event = "chest:Upgrade",
			label = "Aumentar",
			tunnel = "server"
		}
	},
	["3"] = {
		{
			event = "chest:Open",
			label = "Abrir",
			tunnel = "shop",
			service = "Normal"
		},{
			event = "chest:Upgrade",
			label = "Aumentar",
			tunnel = "server"
		},{
			event = "chest:Open",
			label = "Cofre",
			tunnel = "shop",
			service = "Manager"
		}
	},
	["4"] = {
		{
			event = "chest:Open",
			label = "Balcão",
			tunnel = "shop",
			service = "Normal"
		}
	},
	["5"] = {
		{
			event = "chest:Open",
			label = "Abrir",
			tunnel = "shop",
			service = "House"
		}
	},
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADINIT
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	for Name,v in pairs(Chests) do
		exports["target"]:AddCircleZone("Chest:"..Name,v["Coords"],1.0,{
			name = "Chest:"..Name,
			heading = 3374176
		},{
			Distance = 1.7,
			shop = v["Name"],
			options = Labels[v["Mode"]]
		})
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('chest:Open')
AddEventHandler("chest:Open",function(Name,Init,weight)
	if LocalPlayer["state"]["Route"] < 900000 then
		if vSERVER.Permissions(Name,Init,weight) then
			SetNuiFocus(true,true)
			SendNUIMessage({ Action = "Open" })
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTCLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Close",function(Data,Callback)
	SendNUIMessage({ Action = "Close" })
	SetNuiFocus(false,false)

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TAKE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Take",function(Data,Callback)
	if not MumbleIsConnected() then 
		SendNUIMessage({ Action = "Close" })
		SetNuiFocus(false,false)
		return
	end

	vSERVER.Take(Data["item"],Data["slot"],Data["amount"],Data["target"])

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STORE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Store",function(Data,Callback)
	if not MumbleIsConnected() then 
		SendNUIMessage({ Action = "Close" })
		SetNuiFocus(false,false)
		return
	end
	vSERVER.Store(Data["item"],Data["slot"],Data["amount"],Data["target"])

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Update",function(Data,Callback)
	if not MumbleIsConnected() then 
		SendNUIMessage({ Action = "Close" })
		SetNuiFocus(false,false)
		return
	end
	
	vSERVER.Update(Data["slot"],Data["target"],Data["amount"])

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Chest",function(Data,Callback)
	local Inventory,Chest,invPeso,invMaxpeso,chestPeso,chestMaxpeso = vSERVER.Chest()
	if Inventory then
		Callback({ Inventory = Inventory, Chest = Chest, invPeso = invPeso, invMaxpeso = invMaxpeso, chestPeso = chestPeso, chestMaxpeso = chestMaxpeso })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST:UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chest:Update")
AddEventHandler("chest:Update",function(Action,invPeso,invMaxpeso,chestPeso,chestMaxpeso)
	SendNUIMessage({ Action = Action, invPeso = invPeso, invMaxpeso = invMaxpeso, chestPeso = chestPeso, chestMaxpeso = chestMaxpeso })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST:CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chest:Close")
AddEventHandler("chest:Close",function(Action)
	SendNUIMessage({ Action = "Close" })
	SetNuiFocus(false,false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HEYYHOUSES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chest:forceOpen",function()
    if LocalPlayer["state"]["Route"] < 900000 then
        SetNuiFocus(true,true)
        SendNUIMessage({ Action = "Open" })
    end
end)
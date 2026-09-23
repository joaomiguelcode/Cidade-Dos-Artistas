-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("routes",Creative)
vCLIENT = Tunnel.getInterface("routes")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONFIG
-----------------------------------------------------------------------------------------------------------------------------------------
local defaultItems = {
	["coca"] = { name = "Folhas de Coca", amount = { 3, 5 } },
	["pastabase"] = { name = "Pasta Base", amount = { 2, 4 } },
	["meth"] = { name = "Metanfetamina", amount = { 2, 4 } },
	["maconha"] = { name = "Maconha", amount = { 3, 5 } },
	["copper"] = { name = "Cobre", amount = { 5, 10 } },
	["metal"] = { name = "Metal", amount = { 5, 10 } },
	["plastic"] = { name = "Plástico", amount = { 5, 10 } },
	["gunpowder"] = { name = "Pólvora", amount = { 3, 6 } },
	["dollars"] = { name = "Dinheiro", amount = { 250, 500 } }
}

local routesConfig = {
	["Mcdonalds"] = { perm = "Mcdonalds", items = { ["coca"] = defaultItems["coca"], ["pastabase"] = defaultItems["pastabase"] } },
	["Jaguare"] = { perm = "Jaguare", items = { ["maconha"] = defaultItems["maconha"], ["meth"] = defaultItems["meth"] } },
	["Vanilla"] = { perm = "Vanilla", items = { ["dollars"] = defaultItems["dollars"], ["copper"] = defaultItems["copper"] } },
	["Campolimpo"] = { perm = "Campolimpo", items = { ["coca"] = defaultItems["coca"], ["gunpowder"] = defaultItems["gunpowder"] } },
	["Laura"] = { perm = "Laura", items = { ["metal"] = defaultItems["metal"], ["plastic"] = defaultItems["plastic"] } },
	["Guaianazes"] = { perm = "Guaianazes", items = { ["coca"] = defaultItems["coca"], ["meth"] = defaultItems["meth"] } },
	["Vilaede"] = { perm = "Vilaede", items = { ["maconha"] = defaultItems["maconha"], ["pastabase"] = defaultItems["pastabase"] } },
	["Sonia"] = { perm = "Sonia", items = { ["gunpowder"] = defaultItems["gunpowder"], ["metal"] = defaultItems["metal"] } },
	["Rua100"] = { perm = "Rua100", items = { ["coca"] = defaultItems["coca"], ["copper"] = defaultItems["copper"] } },
	["Capaoredondo"] = { perm = "Capaoredondo", items = { ["maconha"] = defaultItems["maconha"], ["dollars"] = defaultItems["dollars"] } },
	["Tiradentes"] = { perm = "Tiradentes", items = { ["plastic"] = defaultItems["plastic"], ["copper"] = defaultItems["copper"] } },
	["Heliopolis"] = { perm = "Heliopolis", items = { ["coca"] = defaultItems["coca"], ["meth"] = defaultItems["meth"] } },
	["Osasco"] = { perm = "Osasco", items = { ["gunpowder"] = defaultItems["gunpowder"], ["metal"] = defaultItems["metal"] } },
	["Malibu"] = { perm = "Malibu", items = { ["dollars"] = defaultItems["dollars"], ["pastabase"] = defaultItems["pastabase"] } },
	["Final"] = { perm = "Final", items = { ["copper"] = defaultItems["copper"], ["plastic"] = defaultItems["plastic"] } },
	["Oziel"] = { perm = "Oziel", items = { ["coca"] = defaultItems["coca"], ["maconha"] = defaultItems["maconha"] } },
	["Ferrovelho"] = { perm = "Ferrovelho", items = { ["metal"] = defaultItems["metal"], ["copper"] = defaultItems["copper"] } },
	["Grajau"] = { perm = "Grajau", items = { ["pastabase"] = defaultItems["pastabase"], ["meth"] = defaultItems["meth"] } },
	["Morato"] = { perm = "Morato", items = { ["coca"] = defaultItems["coca"], ["gunpowder"] = defaultItems["gunpowder"] } },
	["Marcone"] = { perm = "Marcone", items = { ["maconha"] = defaultItems["maconha"], ["plastic"] = defaultItems["plastic"] } },
	["Vitrine"] = { perm = "Vitrine", items = { ["dollars"] = defaultItems["dollars"], ["metal"] = defaultItems["metal"] } },
	["Vilamix"] = { perm = "Vilamix", items = { ["meth"] = defaultItems["meth"], ["copper"] = defaultItems["copper"] } },
	["Alba"] = { perm = "Alba", items = { ["coca"] = defaultItems["coca"], ["dollars"] = defaultItems["dollars"] } },
	["Corrida"] = { perm = nil, items = { ["dollars"] = defaultItems["dollars"] } }
}

local activeRoutes = {}
local cooldown = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKPERMISSION
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.checkPermission(routeCode)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local config = routesConfig[routeCode]
		if not config or not config.perm then
			return true
		end

		if vRP.HasGroup(Passport,config.perm) or vRP.HasPermission(Passport,config.perm) then
			return true
		end

		TriggerClientEvent("Notify",source,"vermelho","Você não tem acesso a esta rota.",5000)
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETITEMS
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.getItems(routeCode)
	local items = {}
	local config = routesConfig[routeCode]
	local list = (config and config.items) or defaultItems

	for itemCode, itemData in pairs(list) do
		items[itemCode] = {
			name = itemName(itemCode) or itemData.name,
			image = itemCode
		}
	end

	return items
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SELECTROUTE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("routes:selectRoute")
AddEventHandler("routes:selectRoute",function(routeCode,itemCode)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		activeRoutes[Passport] = {
			route = routeCode,
			item = itemCode
		}

		local displayName = itemName(itemCode) or itemCode
		TriggerClientEvent("routes:exit",source)
		TriggerClientEvent("routes:startRoute",source,routeCode,displayName)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKPAYMENT
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.checkPayment(routeCode,position)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if cooldown[Passport] and os.time() < cooldown[Passport] then
			return false
		end

		cooldown[Passport] = os.time() + 2

		local userRoute = activeRoutes[Passport]
		local item = userRoute and userRoute.item or position
		if not item or item == "" then
			item = "dollars"
		end

		local itemInfo = defaultItems[item]
		local minAmount = itemInfo and itemInfo.amount[1] or 1
		local maxAmount = itemInfo and itemInfo.amount[2] or 3
		local amount = math.random(minAmount,maxAmount)

		local itemWeight = itemWeight(item) * amount
		if (vRP.InventoryWeight(Passport) + itemWeight) <= vRP.GetWeight(Passport) then
			vRPC.playAnim(source,false,{"anim@mp_player_intcelebrationmale@face_palm","face_palm"},false)
			vRP.GenerateItem(Passport,item,amount,true)
			return true
		else
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.",5000)
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ENDROUTE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("routes:endRoute")
AddEventHandler("routes:endRoute",function()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and activeRoutes[Passport] then
		activeRoutes[Passport] = nil
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Disconnect",function(Passport,source)
	if activeRoutes[Passport] then
		activeRoutes[Passport] = nil
	end
	if cooldown[Passport] then
		cooldown[Passport] = nil
	end
end)

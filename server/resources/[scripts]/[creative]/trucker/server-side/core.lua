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
Tunnel.bindInterface("trucker",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKEXIST
-----------------------------------------------------------------------------------------------------------------------------------------
local Trucker = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKEXIST
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.checkExist()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if not Trucker[Passport] then
			Trucker[Passport] = os.time()
		end

		if os.time() >= Trucker[Passport] then
			return true
		else
			local truckerTimers = parseInt(Trucker[Passport] - os.time())
			TriggerClientEvent("Notify",source,"azul","Aguarde <b>"..MinimalTimers(truckerTimers).."</b> para trabalhar novamente.",5000)
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DELIVERY
-----------------------------------------------------------------------------------------------------------------------------------------
local Delivery = {
	["vehicles"] = {
		{ ["item"] = "tarp", ["min"] = 4, ["max"] = 5 },
		{ ["item"] = "battery", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "elastic", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "techtrash", ["min"] = 3, ["max"] = 4 },
		{ ["item"] = "roadsigns", ["min"] = 4, ["max"] = 5 },
		{ ["item"] = "metalcan", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "explosives", ["min"] = 2, ["max"] = 3 },
		{ ["item"] = "sheetmetal", ["min"] = 4, ["max"] = 6 },
		{ ["item"] = "glassbottle", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "plasticbottle", ["min"] = 8, ["max"] = 10 }
	},
	["diesel"] = {
		{ ["item"] = "tarp", ["min"] = 3, ["max"] = 4 },
		{ ["item"] = "battery", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "elastic", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "techtrash", ["min"] = 2, ["max"] = 3 },
		{ ["item"] = "roadsigns", ["min"] = 3, ["max"] = 4 },
		{ ["item"] = "metalcan", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "explosives", ["min"] = 1, ["max"] = 2 },
		{ ["item"] = "sheetmetal", ["min"] = 3, ["max"] = 4 },
		{ ["item"] = "glassbottle", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "plasticbottle", ["min"] = 8, ["max"] = 10 }
	},
	["fuel"] = {
		{ ["item"] = "tarp", ["min"] = 3, ["max"] = 4 },
		{ ["item"] = "battery", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "elastic", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "techtrash", ["min"] = 2, ["max"] = 3 },
		{ ["item"] = "roadsigns", ["min"] = 3, ["max"] = 4 },
		{ ["item"] = "metalcan", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "explosives", ["min"] = 1, ["max"] = 2 },
		{ ["item"] = "sheetmetal", ["min"] = 3, ["max"] = 4 },
		{ ["item"] = "glassbottle", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "plasticbottle", ["min"] = 8, ["max"] = 10 }
	},
	["wood"] = {
		{ ["item"] = "tarp", ["min"] = 4, ["max"] = 5 },
		{ ["item"] = "battery", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "elastic", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "techtrash", ["min"] = 3, ["max"] = 4 },
		{ ["item"] = "roadsigns", ["min"] = 4, ["max"] = 5 },
		{ ["item"] = "metalcan", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "explosives", ["min"] = 2, ["max"] = 3 },
		{ ["item"] = "sheetmetal", ["min"] = 4, ["max"] = 6 },
		{ ["item"] = "glassbottle", ["min"] = 8, ["max"] = 10 },
		{ ["item"] = "plasticbottle", ["min"] = 8, ["max"] = 10 }
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAYMENT
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Payment(Service)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.CheckRolepass(source) then
			Trucker[Passport] = os.time() + 14400
		else
			Trucker[Passport] = os.time() + 21600
		end

		for k,v in pairs(Delivery[Service]) do
			local Rand = math.random(v["min"],v["max"])
			vRP.GenerateItem(Passport,v["item"],Rand,true)
		end
	end
end
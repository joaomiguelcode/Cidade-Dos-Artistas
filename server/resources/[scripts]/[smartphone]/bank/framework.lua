-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP FRAMEWORK INTEGRATION
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")

Framework = {}

function Framework.GetPassport(source)
	if not source or source <= 0 then return nil end
	return vRP.Passport(source)
end

function Framework.GetSource(passport)
	if not passport then return nil end
	return vRP.Source(passport)
end

function Framework.GetIdentity(passport)
	if not passport then return { name = "Indivíduo", name2 = "Indigente", phone = "000-000" } end
	local identity = vRP.Identity(passport)
	if not identity then
		local query = exports.oxmysql:query_async("SELECT name, name2, phone FROM characters WHERE id = ?", { passport })
		if query and query[1] then
			return query[1]
		end
		return { name = "Cidadão", name2 = tostring(passport), phone = "000-000" }
	end
	return identity
end

function Framework.GetBank(passport)
	if not passport then return 0 end
	local bank = vRP.GetBank(passport)
	if not bank then
		local query = exports.oxmysql:query_async("SELECT bank FROM characters WHERE id = ?", { passport })
		if query and query[1] then
			return parseInt(query[1].bank) or 0
		end
		return 0
	end
	return parseInt(bank) or 0
end

function Framework.GiveBank(passport, amount)
	local cleanAmount = parseInt(amount)
	if cleanAmount <= 0 then return false end
	vRP.GiveBank(passport, cleanAmount)
	return true
end

function Framework.RemoveBank(passport, amount)
	local cleanAmount = parseInt(amount)
	if cleanAmount <= 0 then return false end
	return vRP.RemoveBank(passport, cleanAmount)
end

function Framework.GetWallet(passport)
	if not passport then return 0 end
	return vRP.ItemAmount(passport, "dollars") or 0
end

function Framework.GiveWallet(passport, amount)
	local cleanAmount = parseInt(amount)
	if cleanAmount <= 0 then return false end
	vRP.GenerateItem(passport, "dollars", cleanAmount, true)
	return true
end

function Framework.RemoveWallet(passport, amount)
	local cleanAmount = parseInt(amount)
	if cleanAmount <= 0 then return false end
	return vRP.TakeItem(passport, "dollars", cleanAmount, true)
end

function Framework.HasPermission(passport, perm)
	if not passport or not perm then return false end
	return vRP.HasPermission(passport, perm) or vRP.HasGroup(passport, perm)
end

function Framework.GetFines(passport)
	local query = exports.oxmysql:query_async("SELECT fines FROM characters WHERE id = ?", { passport })
	if query and query[1] then
		return parseInt(query[1].fines) or 0
	end
	return 0
end

function Framework.AddFine(passport, amount)
	local cleanAmount = parseInt(amount)
	if cleanAmount > 0 then
		exports.oxmysql:execute("UPDATE characters SET fines = fines + ? WHERE id = ?", { cleanAmount, passport })
		return true
	end
	return false
end

function Framework.RemoveFine(passport, amount)
	local cleanAmount = parseInt(amount)
	if cleanAmount > 0 then
		exports.oxmysql:execute("UPDATE characters SET fines = GREATEST(0, fines - ?) WHERE id = ?", { cleanAmount, passport })
		return true
	end
	return false
end

function Framework.Notify(source, type, message)
	if source and source > 0 then
		TriggerClientEvent("Notify", source, type, message, 5000)
	end
end

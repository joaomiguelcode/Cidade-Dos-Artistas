-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP / TUNNEL / PROXY
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")

local vSERVER = {}
Tunnel.bindInterface(GetCurrentResourceName(), vSERVER)

-----------------------------------------------------------------------------------------------------------------------------------------
-- AUXILIARY FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
--- Check if player has VIP status (via item or permission)
local function hasVipStatus(Passport)
	if not Passport then return false end

	-- Check VIP physical item
	local vipItem = CasinoConfig.VipItem or "casino_vip"
	local vipCount = vRP.ItemAmount(Passport, vipItem)
	if vipCount and vipCount > 0 then
		return true
	end

	-- Check permissions if configured
	if vRP.HasPermission and CasinoConfig.FreeAccessPermissions then
		for perm, _ in pairs(CasinoConfig.FreeAccessPermissions) do
			if vRP.HasPermission(Passport, perm) then
				return true
			end
		end
	end

	return false
end

--- Check if player has Member or VIP status
local function hasMemberStatus(Passport)
	if not Passport then return false end

	if hasVipStatus(Passport) then
		return true
	end

	local memberItem = CasinoConfig.MemberItem or "casino_member"
	local memberCount = vRP.ItemAmount(Passport, memberItem)
	if memberCount and memberCount > 0 then
		return true
	end

	return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- TUNNEL INTERFACE (CALLED BY CLIENT SCRIPTS)
-----------------------------------------------------------------------------------------------------------------------------------------
--- Check VIP status requested by teleport_to_penthouse.lua
function vSERVER.checkVIPStatus()
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return false end

	return hasVipStatus(Passport)
end

--- Check Member status
function vSERVER.checkMemberStatus()
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return false end

	return hasMemberStatus(Passport)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- OX_LIB CALLBACKS
-----------------------------------------------------------------------------------------------------------------------------------------
lib.callback.register("casino:server:checkVIP", function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		return hasVipStatus(Passport)
	end
	return false
end)

lib.callback.register("casino:server:checkMember", function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		return hasMemberStatus(Passport)
	end
	return false
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- NETWORK EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
-- Server-side teleport to penthouse with validation
RegisterNetEvent("casino:server:teleportPenthouse")
AddEventHandler("casino:server:teleportPenthouse", function()
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	if hasVipStatus(Passport) then
		local coords = CasinoConfig.Coordinates.Penthouse or vector3(963.62, 59.29, 111.55)
		local ped = GetPlayerPed(source)
		SetEntityCoords(ped, coords.x, coords.y, coords.z, false, false, false, true)
		TriggerClientEvent("Notify", source, "verde", "Bem-vindo à Cobertura VIP do Cassino.", 5000)
	else
		TriggerClientEvent("Notify", source, "aviso", "Você precisa de um passe VIP para acessar a Cobertura.", 5000)
	end
end)

-- Server-side teleport to lobby
RegisterNetEvent("casino:server:teleportLobby")
AddEventHandler("casino:server:teleportLobby", function()
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	local coords = CasinoConfig.Coordinates.Lobby or vector3(930.42, 35.73, 81.09)
	local ped = GetPlayerPed(source)
	SetEntityCoords(ped, coords.x, coords.y, coords.z, false, false, false, true)
	TriggerClientEvent("Notify", source, "azul", "Você retornou ao Lobby do Cassino.", 5000)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVER EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
exports("checkVIP", function(passport)
	return hasVipStatus(passport)
end)

exports("checkMember", function(passport)
	return hasMemberStatus(passport)
end)

exports("giveVIP", function(passport, amount)
	local cleanAmount = parseInt(amount)
	if cleanAmount <= 0 then cleanAmount = 1 end
	local item = CasinoConfig.VipItem or "casino_vip"
	vRP.GenerateItem(passport, item, cleanAmount, true)
	return true
end)

exports("giveMember", function(passport, amount)
	local cleanAmount = parseInt(amount)
	if cleanAmount <= 0 then cleanAmount = 1 end
	local item = CasinoConfig.MemberItem or "casino_member"
	vRP.GenerateItem(passport, item, cleanAmount, true)
	return true
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN COMMANDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("givecasinovip", function(source, args, rawCommand)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not Passport or not vRP.HasPermission(Passport, "Admin") then
			TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para este comando.", 5000)
			return
		end
	end

	local targetPassport = parseInt(args[1])
	local amount = parseInt(args[2])
	if amount <= 0 then amount = 1 end

	if targetPassport <= 0 then
		if source == 0 then
			print("[casino_member] Uso: givecasinovip <passport> [quantidade]")
		else
			TriggerClientEvent("Notify", source, "amarelo", "Uso: /givecasinovip <id> [quantidade]", 5000)
		end
		return
	end

	local targetSource = vRP.Source(targetPassport)
	if targetSource then
		vRP.GenerateItem(targetPassport, CasinoConfig.VipItem or "casino_vip", amount, true)
		if source ~= 0 then
			TriggerClientEvent("Notify", source, "verde", "Você entregou <b>" .. amount .. "x Ingresso VIP Cassino</b> ao ID <b>" .. targetPassport .. "</b>.", 5000)
		else
			print("[casino_member] Entregue " .. amount .. "x Ingresso VIP Cassino para o ID " .. targetPassport .. ".")
		end
	else
		if source ~= 0 then
			TriggerClientEvent("Notify", source, "vermelho", "Jogador com ID <b>" .. targetPassport .. "</b> não está online.", 5000)
		else
			print("[casino_member] Jogador offline.")
		end
	end
end, false)

RegisterCommand("givecasinomember", function(source, args, rawCommand)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not Passport or not vRP.HasPermission(Passport, "Admin") then
			TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para este comando.", 5000)
			return
		end
	end

	local targetPassport = parseInt(args[1])
	local amount = parseInt(args[2])
	if amount <= 0 then amount = 1 end

	if targetPassport <= 0 then
		if source == 0 then
			print("[casino_member] Uso: givecasinomember <passport> [quantidade]")
		else
			TriggerClientEvent("Notify", source, "amarelo", "Uso: /givecasinomember <id> [quantidade]", 5000)
		end
		return
	end

	local targetSource = vRP.Source(targetPassport)
	if targetSource then
		vRP.GenerateItem(targetPassport, CasinoConfig.MemberItem or "casino_member", amount, true)
		if source ~= 0 then
			TriggerClientEvent("Notify", source, "verde", "Você entregou <b>" .. amount .. "x Ingresso Cassino</b> ao ID <b>" .. targetPassport .. "</b>.", 5000)
		else
			print("[casino_member] Entregue " .. amount .. "x Ingresso Cassino para o ID " .. targetPassport .. ".")
		end
	else
		if source ~= 0 then
			TriggerClientEvent("Notify", source, "vermelho", "Jogador com ID <b>" .. targetPassport .. "</b> não está online.", 5000)
		else
			print("[casino_member] Jogador offline.")
		end
	end
end, false)

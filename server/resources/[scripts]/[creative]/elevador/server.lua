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
Tunnel.bindInterface(GetCurrentResourceName(),Creative)
vCLIENT = Tunnel.getInterface(GetCurrentResourceName())
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKPERMISSION
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.checkpermission(perm)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then
		return false
	end

	-- Se permissão for nula ou vazia, acesso liberado para todos
	if not perm or perm == "" then
		return true
	end

	-- Se permissão for uma tabela com múltiplas opções (qualquer uma válida libera)
	if type(perm) == "table" then
		for _, permission in pairs(perm) do
			if vRP.HasGroup(Passport, permission) or vRP.HasPermission(Passport, permission) then
				return true
			end
		end
		TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para acessar este andar.", 5000)
		return false
	elseif type(perm) == "string" then
		if vRP.HasGroup(Passport, perm) or vRP.HasPermission(Passport, perm) then
			return true
		else
			TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para acessar este andar.", 5000)
			return false
		end
	end

	return true
end

-- Alias caso chamado com CamelCase
Creative.checkPermission = Creative.checkpermission

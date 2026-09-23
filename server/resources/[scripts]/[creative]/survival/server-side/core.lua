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
Tunnel.bindInterface("survival",Creative)
vCLIENT = Tunnel.getInterface("survival")
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
exports("CheckDeath",function(source)
	if source then
		return vCLIENT.CheckDeath(source)
	end
	return false
end)

exports("Revive",function(source,Health)
	if source then
		vCLIENT.Revive(source,Health or 200)
		return true
	end
	return false
end)

exports("Respawn",function(source)
	if source then
		vCLIENT.Respawn(source)
		return true
	end
	return false
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GG
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("gg",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vCLIENT.CheckDeath(source) then
			TriggerEvent("player:Death",source)
		else
			TriggerClientEvent("Notify",source,"amarelo","Você ainda não pode desistir.",5000)
		end
	end
end)

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
Tunnel.bindInterface("cinematic",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETPERMISSION
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.GetPermission()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if not Cfg.usePermissions then
			return true
		end

		if vRP.HasGroup(Passport,"Admin") or (Cfg.OpenPermission and (vRP.HasGroup(Passport,Cfg.OpenPermission) or vRP.HasPermission(Passport,Cfg.OpenPermission))) then
			return true
		end

		TriggerClientEvent("Notify",source,"vermelho","Você não possui permissão para usar a câmera cinematográfica.",5000)
	end

	return false
end

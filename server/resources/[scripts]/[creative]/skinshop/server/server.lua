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
-- CHECKWANTED
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.CheckWanted()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if exports["cda_hud"] and exports["cda_hud"]:Reposed(Passport) then
			return false
		end
		if exports["cda_hud"] and exports["cda_hud"]:Wanted(Passport,source) then
			return false
		end
		return true
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATECLOTHES / UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.updateClothes(Clothes)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and Clothes then
		vRP.Query("playerdata/SetData",{ Passport = Passport, dkey = "Clothings", dvalue = json.encode(Clothes) })
	end
end

function Creative.Update(Clothes)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and Clothes then
		vRP.Query("playerdata/SetData",{ Passport = Passport, dkey = "Clothings", dvalue = json.encode(Clothes) })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKSHARES
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.checkShares()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.PaymentFull(Passport,100) then
			return true
		else
			TriggerClientEvent("Notify",source,"vermelho","Dinheiro insuficiente.",5000)
			return false
		end
	end

	return true
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SKINSHOP:REMOVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("skinshop:Remove")
AddEventHandler("skinshop:Remove",function(Mode)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local ClosestPed = vRPC.ClosestPed(source,2)
		if ClosestPed then
			if vRP.HasService(Passport,"Police") then
				TriggerClientEvent("skinshop:set"..Mode,ClosestPed)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ROUPAS COMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("roupas",function(source,args)
	local Passport = vRP.Passport(source)
	if Passport then
		if SkinVip then
			if vRP.HasPermission(Passport,"Premium") or vRP.HasPermission(Passport,"Admin") then
				TriggerClientEvent("skinshop:Open",source)
			else
				TriggerClientEvent("Notify",source,"amarelo","Comando restrito a membros VIP.",5000)
			end
		else
			TriggerClientEvent("skinshop:Open",source)
		end
	end
end)

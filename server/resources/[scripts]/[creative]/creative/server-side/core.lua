-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANYRESOURCESTOP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("AnyResourceStop")
AddEventHandler("AnyResourceStop",function(Resource)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		TriggerEvent("Discord","Anticheat","**Passaporte:** "..Passport.."\n**Parou o recurso:** "..Resource.."\n**Endpoint:** "..GetPlayerEndpoint(source),15158332)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS & EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("showme:pressMe")
AddEventHandler("showme:pressMe",function(message,seconds,border)
	local source = source
	if message and message ~= "" then
		TriggerClientEvent("showme:pressMe",-1,source,message,seconds or 5,border or false)
	end
end)

exports("pressMe",function(source,message,seconds,border)
	if source and message then
		TriggerClientEvent("showme:pressMe",-1,source,message,seconds or 5,border or false)
	end
end)

exports("removeMe",function(source)
	if source then
		TriggerClientEvent("showme:removeMe",-1,source)
	end
end)

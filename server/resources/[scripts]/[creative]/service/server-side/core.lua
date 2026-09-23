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
Tunnel.bindInterface("service",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Panel = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVICE:TOGGLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("service:Toggle")
AddEventHandler("service:Toggle",function(Service)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		vRP.ServiceToggle(source,Passport,Service,false)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAINEL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("painel",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and Message[1] and Message[1] ~= "Premium" then
		if vRP.HasPermission(Passport,Message[1],1) then
			Panel[Passport] = Message[1]
			TriggerClientEvent("service:Open",source,Message[1])
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUEST
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Request()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and Panel[Passport] then
		local Members = {}
		local Sources = vRP.Players()
		local Entitys = vRP.DataGroups(Panel[Passport])
		local Hierarchy = vRP.Hierarchy(Panel[Passport])

		for Number,v in pairs(Entitys) do
			local Number = parseInt(Number)
			local Identity = vRP.Identity(Number)
			if Identity then
				Members[#Members + 1] = { ["Name"] = Identity["name"].." "..Identity["name2"], ["Phone"] = Identity["phone"], ["Status"] = Sources[Number], ["Passport"] = Number, ["Hierarchy"] = Hierarchy[v] or Hierarchy }
			end
		end

		return Members
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVICE:REMOVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("service:Remove")
AddEventHandler("service:Remove",function(Number)
	local source = source
	local Number = parseInt(Number)
	local Passport = vRP.Passport(source)
	if Passport and Panel[Passport] and Number > 1 and Passport ~= Number then
		if vRP.HasPermission(Passport,Panel[Passport],1) then
			vRP.RemovePermission(Number,Panel[Passport])

			TriggerClientEvent("service:Update",source)
			TriggerClientEvent("Notify",source,"verde","Passaporte removido.",5000)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVICE:ADD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("service:Add")
AddEventHandler("service:Add",function(Number)
	local source = source
	local Number = parseInt(Number)
	local Passport = vRP.Passport(source)
	if Passport and Panel[Passport] and Number > 1 and Passport ~= Number and vRP.Identity(Number) then
		if vRP.HasPermission(Passport,Panel[Passport],1) then
			vRP.SetPermission(Number,Panel[Passport])

			TriggerClientEvent("Notify",source,"verde","Passaporte adicionado.",5000)
			TriggerClientEvent("service:Update",source)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVICE:HIERARCHY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("service:Hierarchy")
AddEventHandler("service:Hierarchy",function(OtherPassport,Mode)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and Panel[Passport] and OtherPassport > 1 and Passport ~= OtherPassport and vRP.Identity(OtherPassport) then
		if vRP.HasPermission(Passport,Panel[Passport],1) then
			vRP.SetPermission(OtherPassport,Panel[Passport],nil,Mode)
			TriggerClientEvent("Notify",source,"verde","Hierarquia atualizada.",5000)
			TriggerClientEvent("service:Update",source)
		end
	end
end)
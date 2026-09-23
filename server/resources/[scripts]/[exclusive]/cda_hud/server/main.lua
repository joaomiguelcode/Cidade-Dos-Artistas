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
if not Srr then
    Srr = {}
    Tunnel.bindInterface(GetCurrentResourceName(),Srr)
end
vCLIENT = Tunnel.getInterface(GetCurrentResourceName())

-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
GlobalState["Work"] = 0
if GlobalState["Hours"] == nil then GlobalState["Hours"] = 12 end
if GlobalState["Minutes"] == nil then GlobalState["Minutes"] = 0 end
if GlobalState["Weather"] == nil then GlobalState["Weather"] = "EXTRASUNNY" end
GlobalState["Nitro"] = {}

local Reposed = {}
local Wanted = {}
local Call = {}

-----------------------------------------------------------------------------------------------------------------------------------------
-- SHORTCUTS
-----------------------------------------------------------------------------------------------------------------------------------------
function Srr.Shortcuts()
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        local Inventory = vRP.Inventory(Passport)
        local Shortcuts = {}
        for i = 1, 5 do
            local slot = tostring(i)
            if Inventory and Inventory[slot] then
                local item = Inventory[slot].item
                local amount = Inventory[slot].amount
                Shortcuts[slot] = {
                    item = item,
                    name = itemName(item),
                    amount = amount,
                    weight = itemWeight(item),
                    index = itemIndex(item)
                }
            end
        end
        return Shortcuts
    end
    return {}
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:VEHICLEEJECT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("hud:VehicleEject")
AddEventHandler("hud:VehicleEject",function(Velocity)
	local source = source
	local Ped = GetPlayerPed(source)
	if Ped and DoesEntityExist(Ped) then
		local Coords = GetEntityCoords(Ped)

		SetEntityCoords(Ped,Coords["x"],Coords["y"],Coords["z"] - 0.5,true,true,true)
		SetEntityVelocity(Ped,Velocity)

		Wait(1)

		SetPedToRagdoll(Ped,5000,5000,0,0,0,0)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- NITRO
-----------------------------------------------------------------------------------------------------------------------------------------
function Srr.UpdateNitro(Plate,Fuel)
	if GlobalState["Nitro"] and GlobalState["Nitro"][Plate] then
		local Nitro = GlobalState["Nitro"]
		Nitro[Plate] = Fuel
		GlobalState:set("Nitro",Nitro,true)
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSYNC (TIME & CLOCK)
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		GlobalState["Work"] = (GlobalState["Work"] or 0) + 1
		GlobalState["Minutes"] = (GlobalState["Minutes"] or 0) + 1

		if GlobalState["Minutes"] >= 60 then
			GlobalState["Hours"] = (GlobalState["Hours"] or 0) + 1
			GlobalState["Minutes"] = 0

			if GlobalState["Hours"] >= 24 then
				GlobalState["Hours"] = 0
			end
		end

		Wait(10000)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- TIMESET
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("timeset",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin") then
			GlobalState["Hours"] = parseInt(Message[1])
			GlobalState["Minutes"] = parseInt(Message[2])

			if Message[3] then
				GlobalState["Weather"] = Message[3]
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- REPOSED
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Reposed",function(source,Passport,Seconds)
	if Reposed[Passport] then
		if os.time() > Reposed[Passport] then
			Reposed[Passport] = os.time() + Seconds
		else
			Reposed[Passport] = Reposed[Passport] + Seconds
		end
	else
		Reposed[Passport] = os.time() + Seconds
	end

	TriggerClientEvent("hud:Reposed",source,Reposed[Passport] - os.time())
end)

exports("Reposed",function(Passport)
	local Passport = parseInt(Passport)

	if Reposed[Passport] then
		if Reposed[Passport] > os.time() then
			return true
		end
	end

	return false
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- WANTED
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Wanted",function(source,Passport,Seconds)
	if Wanted[Passport] then
		if os.time() > Wanted[Passport] then
			Wanted[Passport] = os.time() + Seconds
		else
			Wanted[Passport] = Wanted[Passport] + Seconds
		end
	else
		Wanted[Passport] = os.time() + Seconds
	end

	TriggerClientEvent("hud:Wanted",source,Wanted[Passport] - os.time())
end)

exports("Wanted",function(Passport,source)
	local source = parseInt(source)
	local Passport = parseInt(Passport)

	if Wanted[Passport] then
		if Wanted[Passport] > os.time() then
			if not Call[Passport] then
				Call[Passport] = os.time()
			end

			if Call[Passport] <= os.time() and source > 0 then
				Call[Passport] = os.time() + 60

				TriggerClientEvent("Notify",source,"amarelo","Você foi denunciado, parece que suas digitais<br>estão no banco de dados do governo como procurado.",5000)

				local Ped = GetPlayerPed(source)
				local Coords = GetEntityCoords(Ped)
				local Service = vRP.NumPermission("Police")
				for Passports,Sources in pairs(Service) do
					async(function()
						TriggerClientEvent("NotifyPush",Sources,{ code = 20, title = "Digitais Encontrada", x = Coords["x"], y = Coords["y"], z = Coords["z"], criminal = "Alerta de procurado", time = "Recebido às "..os.date("%H:%M"), blipColor = 16 })
					end)
				end
			end

			return true
		end
	end

	return false
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Connect",function(Passport,source)
	if Wanted[Passport] and Wanted[Passport] > os.time() then
		TriggerClientEvent("hud:Wanted",source,Wanted[Passport] - os.time())
	end
	if Reposed[Passport] and Reposed[Passport] > os.time() then
		TriggerClientEvent("hud:Reposed",source,Reposed[Passport] - os.time())
	end
end)

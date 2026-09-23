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
Tunnel.bindInterface("epic_garages",Creative)
Tunnel.bindInterface("garages",Creative)
vCLIENT = Tunnel.getInterface("epic_garages")
vKEYBOARD = Tunnel.getInterface("keyboard")

-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local Spawn = {}
local Signal = {}
local Searched = {}
local Propertys = {}

-----------------------------------------------------------------------------------------------------------------------------------------
-- GLOBALSTATE
-----------------------------------------------------------------------------------------------------------------------------------------
if not GlobalState["Plates"] then
	GlobalState["Plates"] = {}
end
if not GlobalState["Nitro"] then
	GlobalState["Nitro"] = {}
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGES CONFIG & PERMISSIONS
-----------------------------------------------------------------------------------------------------------------------------------------
local Garages = {
	["1"] = { name = "Garage", payment = false },
	["2"] = { name = "Garage", payment = true },
	["3"] = { name = "Garage", payment = false },
	["4"] = { name = "Garage", payment = true },
	["5"] = { name = "Garage", payment = true },
	["6"] = { name = "Garage", payment = true },
	["7"] = { name = "Garage", payment = true },
	["8"] = { name = "Garage", payment = true },
	["9"] = { name = "Garage", payment = true },
	["10"] = { name = "Garage", payment = true },
	["11"] = { name = "Garage", payment = true },
	["12"] = { name = "Garage", payment = true },
	["13"] = { name = "Garage", payment = true },
	["14"] = { name = "Garage", payment = true },
	["15"] = { name = "Garage", payment = true },
	["16"] = { name = "Garage", payment = true },
	["17"] = { name = "Garage", payment = true },
	["18"] = { name = "Garage", payment = true },
	["19"] = { name = "Garage", payment = true },
	["20"] = { name = "Garage", payment = true },
	["21"] = { name = "Garage", payment = true },
	["22"] = { name = "Garage", payment = true },
	["23"] = { name = "Garage", payment = false },
	["24"] = { name = "Garage", payment = true },
	["25"] = { name = "Garage", payment = true },

	-- Paramedic
	["41"] = { name = "Paramedic", payment = false, perm = "Paramedic" },
	["42"] = { name = "heliParamedic", payment = false, perm = "Paramedic" },
	["43"] = { name = "Paramedic", payment = false, perm = "Paramedic" },
	["44"] = { name = "heliParamedic", payment = false, perm = "Paramedic" },
	["45"] = { name = "Paramedic", payment = false, perm = "Paramedic" },

	-- Police
	["61"] = { name = "Police", payment = false, perm = "Police" },
	["62"] = { name = "heliPolice", payment = false, perm = "Police" },
	["63"] = { name = "Police", payment = false, perm = "Police" },
	["64"] = { name = "heliPolice", payment = false, perm = "Police" },
	["65"] = { name = "Police", payment = false, perm = "Police" },
	["66"] = { name = "heliPolice", payment = false, perm = "Police" },
	["67"] = { name = "Police", payment = false, perm = "Police" },
	["68"] = { name = "busPolice", payment = false, perm = "Police" },
	["69"] = { name = "Police", payment = false, perm = "Police" },
	["70"] = { name = "Police", payment = false, perm = "Police" },
	["71"] = { name = "heliPolice", payment = false, perm = "Police" },
	["72"] = { name = "busPolice", payment = false, perm = "Police" },

	["91"] = { name = "Ballas", payment = true, perm = "Ballas" },
	["92"] = { name = "Families", payment = true, perm = "Families" },
	["93"] = { name = "Vagos", payment = true, perm = "Vagos" },
	["94"] = { name = "Aztecas", payment = true, perm = "Aztecas" },
	["95"] = { name = "Bloods", payment = true, perm = "Bloods" },
	["96"] = { name = "Triads", payment = true, perm = "Triads" },
	["97"] = { name = "Razors", payment = true, perm = "Razors" },

	-- Boats
	["121"] = { name = "Boats", payment = false },
	["122"] = { name = "Boats", payment = false },
	["123"] = { name = "Boats", payment = false },
	["124"] = { name = "Boats", payment = false },
	["125"] = { name = "Boats", payment = false },
	["126"] = { name = "Boats", payment = false },

	-- Works
	["141"] = { name = "Lumberman", payment = false },
	["142"] = { name = "Driver", payment = false },
	["143"] = { name = "Garbageman", payment = false },
	["144"] = { name = "Transporter", payment = false },
	["145"] = { name = "Taxi", payment = false },
	["146"] = { name = "TowDriver", payment = false },
	["147"] = { name = "Garbageman", payment = false },
	["148"] = { name = "Garbageman", payment = false },
	["149"] = { name = "Taxi", payment = false },
	["150"] = { name = "Trucker", payment = false }
}

local Works = {
	["Paramedic"] = { "lguard", "blazer2", "ambulance2", "firetruk" },
	["heliParamedic"] = { "maverick2" },
	["Police"] = { "polvic", "komodapol", "r1250pol", "nc700pol", "polchar", "ballerpol", "elegy2pol", "fugitivepol", "kurumapol", "oracle2pol", "police3pol", "policepol", "policetpol", "schafter2pol", "sheriff2pol", "sultanrspol", "tailgater2pol", "polcorv", "polchall", "poltang" },
	["heliPolice"] = { "maverick2" },
	["busPolice"] = { "pbus", "riot" },
	["Driver"] = { "bus" },
	["Boats"] = { "dinghy", "jetmax", "marquis", "seashark", "speeder", "squalo", "suntrap", "toro", "tropic" },
	["Transporter"] = { "stockade" },
	["Lumberman"] = { "ratloader" },
	["TowDriver"] = { "flatbed", "towtruck", "towtruck2" },
	["Garbageman"] = { "trash" },
	["Taxi"] = { "taxi" },
	["Trucker"] = { "hauler", "hauler2", "packer", "phantom" }
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVERVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.ServerVehicle(Model,x,y,z,Heading,Plate,Nitrox,Doors,Body,Fuel)
	local Vehicle = CreateVehicle(Model,x,y,z,Heading,true,true)

	local Count = 0
	while not DoesEntityExist(Vehicle) and Count < 50 do
		Wait(100)
		Count = Count + 1
	end

	if DoesEntityExist(Vehicle) then
		if Plate ~= nil then
			SetVehicleNumberPlateText(Vehicle,Plate)
		else
			Plate = vRP.GeneratePlate()
			SetVehicleNumberPlateText(Vehicle,Plate)
		end

		SetVehicleBodyHealth(Vehicle,(Body or 1000) + 0.0)

		if not Fuel then
			TriggerEvent("engine:tryFuel",Plate,100)
		end

		if Doors then
			local DoorsDecoded = (type(Doors) == "string") and json.decode(Doors) or Doors
			if DoorsDecoded ~= nil then
				for Number,Status in pairs(DoorsDecoded) do
					if Status then
						SetVehicleDoorBroken(Vehicle,parseInt(Number),true)
					end
				end
			end
		end

		local Network = NetworkGetNetworkIdFromEntity(Vehicle)

		if Model ~= "wheelchair" then
			SetVehicleDoorsLocked(Vehicle,2)

			local Nitro = GlobalState["Nitro"] or {}
			Nitro[Plate] = Nitrox or 0
			GlobalState:set("Nitro",Nitro,true)
		end

		return true,Network,Vehicle
	end

	return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKGARAGE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.CheckGarage(Number)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local numStr = tostring(Number)
		if Garages[numStr] and Garages[numStr]["perm"] then
			if not vRP.HasService(Passport,Garages[numStr]["perm"]) then
				TriggerClientEvent("Notify",source,"vermelho","Acesso não autorizado a esta garagem.",5000)
				return false
			end
		end

		if string.sub(numStr,1,9) == "Propertys" then
			local Consult = vRP.Query("propertys/Exist",{ name = numStr })
			if Consult and Consult[1] then
				if parseInt(Consult[1]["Passport"]) == Passport or vRP.InventoryFull(Passport,"propertys-"..Consult[1]["Serial"]) then
					if os.time() > Consult[1]["Tax"] then
						TriggerClientEvent("Notify",source,"amarelo","Aluguel atrasado, procure um <b>Corretor de Imóveis</b>.",5000)
						return false
					end
				else
					return false
				end
			end
		end

		return true
	end
	return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLES
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Vehicles(Number)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and not exports["cda_hud"]:Wanted(Passport) then
		local numStr = tostring(Number)
		if Garages[numStr] and Garages[numStr]["perm"] then
			if not vRP.HasService(Passport,Garages[numStr]["perm"]) then
				return false
			end
		end

		local Vehicle = {}
		local Garage = Garages[numStr] and Garages[numStr]["name"] or "Garage"

		if Works[Garage] then
			for _,v in pairs(Works[Garage]) do
				if VehicleExist(v) then
					Vehicle[#Vehicle + 1] = {
						vehicle = v,
						Model = v,
						name = VehicleName(v),
						price = VehiclePrice(v) or 0,
						engine = 1000,
						body = 1000,
						fuel = 100,
						arrest = 0,
						tax = 0,
						rental = 0,
						foto = (Config.ImgVehicles or "")..v..".png"
					}
				end
			end
		else
			local Consult = vRP.Query("vehicles/UserVehicles",{ Passport = Passport })
			for _,v in pairs(Consult) do
				if VehicleExist(v["vehicle"]) then
					if v["work"] == "false" or v["work"] == false then
						local vehModel = v["vehicle"]
						Vehicle[#Vehicle + 1] = {
							vehicle = vehModel,
							Model = vehModel,
							name = VehicleName(vehModel),
							plate = v["plate"],
							price = VehiclePrice(vehModel) or 0,
							engine = v["engine"] or 1000,
							body = v["body"] or 1000,
							fuel = v["fuel"] or 100,
							arrest = (v["arrest"] and v["arrest"] > os.time()) and 1 or 0,
							tax = (v["tax"] and v["tax"] <= os.time()) and 1 or 0,
							rental = (v["rental"] and v["rental"] > 0) and 1 or 0,
							foto = (Config.ImgVehicles or "")..vehModel..".png"
						}
					end
				end
			end
		end

		return Vehicle
	end

	return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- INFOSVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.InfosVehicle(vehName, GarageOpen)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Consult = vRP.Query("vehicles/selectVehicles",{ Passport = Passport, vehicle = vehName })
		if Consult and Consult[1] then
			local v = Consult[1]
			return {
				vehicle = vehName,
				name = VehicleName(vehName),
				plate = v["plate"],
				price = VehiclePrice(vehName) or 0,
				engine = v["engine"] or 1000,
				body = v["body"] or 1000,
				fuel = v["fuel"] or 100,
				tax = (v["tax"] and v["tax"] <= os.time()) and 1 or 0,
				arrest = (v["arrest"] and v["arrest"] > os.time()) and 1 or 0,
				seguradora = 0.10,
				ipva = 0.10,
				detido = 0.10
			}
		else
			return {
				vehicle = vehName,
				name = VehicleName(vehName),
				plate = "WORK",
				price = VehiclePrice(vehName) or 0,
				engine = 1000,
				body = 1000,
				fuel = 100,
				tax = 0,
				arrest = 0,
				seguradora = 0.10,
				ipva = 0.10,
				detido = 0.10
			}
		end
	end
	return nil
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLEINVENTORY (CHEST)
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.VehicleInventory(vehName)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local ChestData = vRP.GetSrvData("Chest:"..Passport..":"..vehName, true) or {}
		local itemList = {}
		local totalWeight = 0.0

		for k, v in pairs(ChestData) do
			local itemWeightVal = itemWeight(k) * (v.amount or 1)
			totalWeight = totalWeight + itemWeightVal
			table.insert(itemList, {
				item = k,
				name = itemName(k),
				amount = v.amount or 1,
				peso = itemWeightVal,
				index = itemIndex(k)
			})
		end

		local maxWeight = VehicleChest(vehName) or 50
		local slots = 50

		return itemList, totalWeight, maxWeight, slots
	end
	return {}, 0, 50, 50
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- INFOSITEM
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.InfosItem(item, amount)
	if item then
		local amt = parseInt(amount) or 1
		return {
			item = item,
			name = itemName(item),
			amount = amt,
			peso = itemWeight(item) * amt,
			index = itemIndex(item)
		}
	end
	return nil
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLETUNING
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.VehicleTuning(vehName)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Datatable = vRP.Query("entitydata/GetData",{ dkey = "Mods:"..Passport..":"..vehName })
		if Datatable and Datatable[1] and Datatable[1]["dvalue"] then
			local mods = json.decode(Datatable[1]["dvalue"])
			return mods or {}
		end
	end
	return {}
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- KEYFUNCTION
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.KeyFunction(Plate, TargetId)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if Plate and TargetId then
			local targetPassport = parseInt(TargetId)
			local targetSource = vRP.Source(targetPassport)
			if targetSource then
				vRP.GenerateItem(targetPassport,"vehkey-"..Plate,1,true)
				TriggerClientEvent("Notify",source,"verde","Chave emprestada para o passaporte "..targetPassport..".",5000)
				TriggerClientEvent("Notify",targetSource,"verde","Você recebeu a chave do veículo com placa "..Plate..".",5000)
			else
				TriggerClientEvent("Notify",source,"amarelo","Jogador não está online.",5000)
			end
		elseif Plate then
			vRP.GenerateItem(Passport,"vehkey-"..Plate,1,true)
			TriggerClientEvent("Notify",source,"verde","Chave gerada no seu inventário.",5000)
		end
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- IMPOUND
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Impound()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Vehicles = {}
		local Vehicle = vRP.Query("vehicles/UserVehicles",{ Passport = Passport })

		for Number,v in ipairs(Vehicle) do
			if v["arrest"] and v["arrest"] >= os.time() then
				Vehicles[#Vehicles + 1] = { ["Model"] = Vehicle[Number]["vehicle"], ["name"] = VehicleName(Vehicle[Number]["vehicle"]) }
			end
		end

		return Vehicles
	end
	return {}
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- DELETE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Delete(Network,Health,Engine,Body,Fuel,Doors,Windows,Tyres,Plate)
	if Plate and Spawn[Plate] then
		local Passport = Spawn[Plate][1]
		local vehName = Spawn[Plate][2]

		if parseInt(Engine) <= 100 then Engine = 100 end
		if parseInt(Body) <= 100 then Body = 100 end
		if parseInt(Fuel) >= 100 then Fuel = 100 end
		if parseInt(Fuel) <= 0 then Fuel = 0 end

		local vehicle = vRP.Query("vehicles/selectVehicles",{ Passport = Passport, vehicle = vehName })
		if vehicle and vehicle[1] ~= nil then
			vRP.Query("vehicles/updateVehicles",{
				Passport = Passport,
				vehicle = vehName,
				nitro = (GlobalState["Nitro"] and GlobalState["Nitro"][Plate]) or 0,
				engine = parseInt(Engine),
				body = parseInt(Body),
				health = parseInt(Health),
				fuel = parseInt(Fuel),
				doors = json.encode(Doors),
				windows = json.encode(Windows),
				tyres = json.encode(Tyres)
			})
		end
	end

	TriggerEvent("garages:deleteVehicle",Network,Plate)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGES:DELETEVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("garages:deleteVehicle")
AddEventHandler("garages:deleteVehicle",function(Network,Plate)
	if Network ~= nil and Plate ~= nil then
		if GlobalState["Plates"] and GlobalState["Plates"][Plate] then
			local Plates = GlobalState["Plates"]
			Plates[Plate] = nil
			GlobalState:set("Plates",Plates,true)
		end

		if GlobalState["Nitro"] and GlobalState["Nitro"][Plate] then
			local Nitro = GlobalState["Nitro"]
			Nitro[Plate] = nil
			GlobalState:set("Nitro",Nitro,true)
		end

		if Signal[Plate] then Signal[Plate] = nil end
		if Spawn[Plate] then Spawn[Plate] = nil end

		if string.sub(Plate,1,4) == "DISM" then
			local Passport = parseInt(string.sub(Plate,5,8)) - 1000
			local source = vRP.Source(Passport)
			if source then
				TriggerClientEvent("inventory:Disreset",source)
				TriggerClientEvent("Notify",source,"amarelo","O veículo do seu contrato foi encaminhado para o <b>Impound</b> e o <b>Lester</b> disse que você pode assinar um novo contrato quando quiser.",10000)
			end
		end

		local NetEntity = NetworkGetEntityFromNetworkId(Network)
		if DoesEntityExist(NetEntity) and not IsPedAPlayer(NetEntity) and GetEntityType(NetEntity) == 2 then
			DeleteEntity(NetEntity)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGES:SPAWN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("garages:Spawn")
AddEventHandler("garages:Spawn",function(Table)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local splitName = splitString(Table,"-")
		local Name = splitName[1]
		local Number = splitName[2]

		local Gemstone = VehicleGems(Name) or 0
		local vehicle = vRP.Query("vehicles/selectVehicles",{ Passport = Passport, vehicle = Name })

		if not vehicle or not vehicle[1] then
			if parseInt(Gemstone) > 0 then
				if vRP.Request(source,"Alugar o veículo <b>"..VehicleName(Name).."</b> por <b>"..Gemstone.."</b> gemas?","Sim, concluír aluguel","Não, mudei de ideia") then
					if vRP.PaymentGems(Passport,Gemstone) then
						vRP.Query("vehicles/rentalVehicles",{ Passport = Passport, vehicle = Name, plate = vRP.GeneratePlate(), work = "true" })
						TriggerClientEvent("Notify",source,"verde","Aluguel do veículo <b>"..VehicleName(Name).."</b> concluído.",5000)
						vehicle = vRP.Query("vehicles/selectVehicles",{ Passport = Passport, vehicle = Name })
					else
						TriggerClientEvent("Notify",source,"vermelho","<b>Gemas</b> insuficientes.",5000)
						return
					end
				else
					return
				end
			else
				local VehiclePriceVal = VehiclePrice(Name) or 0
				if parseInt(VehiclePriceVal) > 0 then
					if vRP.Request(source,"Comprar <b>"..VehicleName(Name).."</b> por <b>$"..parseFormat(VehiclePriceVal).."</b> dólares?","Sim, concluír pagamento","Não, mudei de ideia") then
						if vRP.PaymentFull(Passport,VehiclePriceVal) then
							vRP.Query("vehicles/addVehicles",{ Passport = Passport, vehicle = Name, plate = vRP.GeneratePlate(), work = "true" })
							vehicle = vRP.Query("vehicles/selectVehicles",{ Passport = Passport, vehicle = Name })
						else
							TriggerClientEvent("Notify",source,"vermelho","<b>Dólares</b> insuficientes.",5000)
							return
						end
					else
						return
					end
				else
					vRP.Query("vehicles/addVehicles",{ Passport = Passport, vehicle = Name, plate = vRP.GeneratePlate(), work = "true" })
					vehicle = vRP.Query("vehicles/selectVehicles",{ Passport = Passport, vehicle = Name })
				end
			end
		end

		if vehicle and vehicle[1] then
			local Plates = GlobalState["Plates"] or {}
			local Plate = vehicle[1]["plate"]

			if Spawn[Plate] then
				if not Signal[Plate] then
					if not Searched[Passport] then
						Searched[Passport] = os.time()
					end

					if os.time() >= parseInt(Searched[Passport]) then
						Searched[Passport] = os.time() + 60

						local NetId = Spawn[Plate][3]
						local NetEntity = NetworkGetEntityFromNetworkId(NetId)
						if DoesEntityExist(NetEntity) and not IsPedAPlayer(NetEntity) and GetEntityType(NetEntity) == 2 then
							vCLIENT.SearchBlip(source,GetEntityCoords(NetEntity))
							TriggerClientEvent("Notify",source,"amarelo","Rastreador do veículo ativado por <b>30</b> segundos.",10000)
						else
							Spawn[Plate] = nil
							if Plates[Plate] then
								Plates[Plate] = nil
								GlobalState:set("Plates",Plates,true)
							end
							TriggerClientEvent("Notify",source,"verde","O veículo já se encontra disponível na garagem.",5000)
						end
					else
						TriggerClientEvent("Notify",source,"amarelo","Rastreador só pode ser ativado a cada <b>60</b> segundos.",5000)
					end
				else
					TriggerClientEvent("Notify",source,"amarelo","Rastreador desativado.",5000)
				end
			else
				if vehicle[1]["tax"] and vehicle[1]["tax"] <= os.time() then
					TriggerClientEvent("Notify",source,"amarelo","Taxa do veículo atrasada.",5000)
				elseif vehicle[1]["arrest"] and vehicle[1]["arrest"] >= os.time() then
					TriggerClientEvent("Notify",source,"amarelo","Veículo apreendido, dirija-se até o <b>Impound</b>.",5000)
				else
					if vehicle[1]["rental"] and vehicle[1]["rental"] ~= 0 and vehicle[1]["rental"] <= os.time() then
						if vRP.Request(source,"Atualizar o aluguel do veículo <b>"..VehicleName(Name).."</b> por <b>"..Gemstone.." gemas</b>?","Sim, concluír pagamento","Não, mudei de ideia") then
							if vRP.PaymentGems(Passport,Gemstone) then
								vRP.Query("vehicles/rentalVehiclesUpdate",{ Passport = Passport, vehicle = Name })
								TriggerClientEvent("Notify",source,"verde","Aluguel atualizado.",5000)
							else
								TriggerClientEvent("Notify",source,"vermelho","<b>Gemas</b> insuficientes.",5000)
								return
							end
						else
							return
						end
					end

					local Coords = vCLIENT.SpawnPosition(source,Number)
					if Coords then
						local Mods = nil
						local Datatable = vRP.Query("entitydata/GetData",{ dkey = "Mods:"..Passport..":"..Name })
						if Datatable and Datatable[1] and Datatable[1]["dvalue"] then
							Mods = Datatable[1]["dvalue"]
						end

						local Exist,Network = Creative.ServerVehicle(Name,Coords[1],Coords[2],Coords[3],Coords[4],Plate,vehicle[1]["nitro"],vehicle[1]["doors"],vehicle[1]["body"])

						if Exist then
							vCLIENT.CreateVehicle(-1,Name,Network,vehicle[1]["engine"],vehicle[1]["health"],Mods,vehicle[1]["windows"],vehicle[1]["tyres"],Plate)
							TriggerEvent("engine:tryFuel",Plate,vehicle[1]["fuel"])
							Spawn[Plate] = { Passport,Name,Network }

							Plates[Plate] = Passport
							GlobalState:set("Plates",Plates,true)
						end
					end
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGES:SELL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("garages:Sell")
AddEventHandler("garages:Sell",function(Name)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Consult = vRP.Query("vehicles/selectVehicles",{ Passport = Passport, vehicle = Name })
		if Consult and Consult[1] then
			local Price = (VehiclePrice(Name) or 0) * 0.5
			if vRP.Request(source,"Vender o veículo <b>"..VehicleName(Name).."</b> por <b>$"..parseFormat(Price).."</b>?","Sim, concluir venda","Não, mudei de ideia") then
				local ConsultCheck = vRP.Query("vehicles/selectVehicles",{ Passport = Passport, vehicle = Name })
				if ConsultCheck and ConsultCheck[1] then
					vRP.GiveBank(Passport,Price)
					vRP.Query("vehicles/removeVehicles",{ Passport = Passport, vehicle = Name })
					vRP.Query("entitydata/RemoveData",{ dkey = "Mods:"..Passport..":"..Name })
					vRP.Query("entitydata/RemoveData",{ dkey = "Chest:"..Passport..":"..Name })
					TriggerClientEvent("Notify",source,"verde","Veículo vendido com sucesso.",5000)
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGES:TRANSFER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("garages:Transfer")
AddEventHandler("garages:Transfer",function(Name, OtherId, Value)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local myVehicle = vRP.Query("vehicles/selectVehicles",{ Passport = Passport, vehicle = Name })
		if myVehicle and myVehicle[1] then
			local targetId = parseInt(OtherId)
			if targetId <= 0 then
				local Keyboard = vKEYBOARD.keySingle(source,"Passaporte:")
				if Keyboard then
					targetId = parseInt(Keyboard[1])
				end
			end

			if targetId and targetId > 0 and targetId ~= Passport then
				local Identity = vRP.Identity(targetId)
				if Identity then
					if vRP.Request(source,"Transferir o veículo <b>"..VehicleName(Name).."</b> para <b>"..(Identity["name"] or "").." "..(Identity["name2"] or "").."</b>?","Sim, transferir","Não, mudei de ideia") then
						local checkVehicle = vRP.Query("vehicles/selectVehicles",{ Passport = targetId, vehicle = Name })
						if checkVehicle and checkVehicle[1] then
							TriggerClientEvent("Notify",source,"amarelo","Jogador já possui este modelo de veículo.",5000)
						else
							vRP.Query("vehicles/moveVehicles",{ Passport = Passport, OtherPassport = targetId, vehicle = Name })

							local Datatable = vRP.Query("entitydata/GetData",{ dkey = "Mods:"..Passport..":"..Name })
							if Datatable and Datatable[1] then
								vRP.Query("entitydata/SetData",{ dkey = "Mods:"..targetId..":"..Name, dvalue = Datatable[1]["dvalue"] })
								vRP.Query("entitydata/RemoveData",{ dkey = "Mods:"..Passport..":"..Name })
							end

							local ChestData = vRP.GetSrvData("Chest:"..Passport..":"..Name,true)
							vRP.SetSrvData("Chest:"..targetId..":"..Name,ChestData,true)
							vRP.RemSrvData("Chest:"..Passport..":"..Name,true)

							TriggerClientEvent("Notify",source,"verde","Transferência concluída com sucesso.",5000)
							local targetSource = vRP.Source(targetId)
							if targetSource then
								TriggerClientEvent("Notify",targetSource,"verde","Você recebeu o veículo "..VehicleName(Name)..".",5000)
							end
						end
					end
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGES:IMPOUND RELEASE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("garages:Impound")
AddEventHandler("garages:Impound",function(vehName)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Price = (VehiclePrice(vehName) or 0) * 0.25
		if vRP.Request(source,"A liberação do veículo tem o custo de <b>$"..parseFormat(Price).."</b>, deseja prosseguir?","Sim, pagar","Não") then
			if vRP.PaymentFull(Passport,Price) then
				vRP.Query("vehicles/paymentArrest",{ Passport = Passport, vehicle = vehName })
				TriggerClientEvent("Notify",source,"verde","Veículo liberado do Impound.",5000)
			else
				TriggerClientEvent("Notify",source,"vermelho","<b>Dólares</b> insuficientes.",5000)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGES:TAX
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("garages:Tax")
AddEventHandler("garages:Tax",function(Name)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Consult = vRP.Query("vehicles/selectVehicles",{ Passport = Passport, vehicle = Name })
		if Consult and Consult[1] and Consult[1]["tax"] <= os.time() then
			local Price = (VehiclePrice(Name) or 0) * 0.10
			if vRP.PaymentFull(Passport,Price) then
				vRP.Query("vehicles/updateVehiclesTax",{ Passport = Passport, vehicle = Name })
				TriggerClientEvent("Notify",source,"verde","Pagamento do IPVA concluído.",5000)
			else
				TriggerClientEvent("Notify",source,"vermelho","<b>Dólares</b> insuficientes.",5000)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGES:LOCK & LOCKVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("garages:Lock")
AddEventHandler("garages:Lock",function(Network,Plate)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and GlobalState["Plates"] and GlobalState["Plates"][Plate] == Passport then
		TriggerEvent("garages:LockVehicle",source,Network)
	end
end)

AddEventHandler("garages:LockVehicle",function(source,Network)
	local NetEntity = NetworkGetEntityFromNetworkId(Network)
	if DoesEntityExist(NetEntity) then
		local Doors = GetVehicleDoorLockStatus(NetEntity)
		if parseInt(Doors) <= 1 then
			TriggerClientEvent("Notify",source,"locked","Veículo trancado.",5000)
			TriggerClientEvent("sounds:Private",source,"locked",0.7)
			SetVehicleDoorsLocked(NetEntity,2)
		else
			TriggerClientEvent("Notify",source,"unlocked","Veículo destrancado.",5000)
			TriggerClientEvent("sounds:Private",source,"unlocked",0.7)
			SetVehicleDoorsLocked(NetEntity,1)
		end

		if not vRP.InsideVehicle(source) then
			vRPC.playAnim(source,true,{"anim@mp_player_intmenu@key_fob@","fob_click"},false)
			Wait(350)
			vRPC.stopAnim(source)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GARAGES:KEY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("garages:Key")
AddEventHandler("garages:Key",function(entity)
	local source = source
	local Plate = entity[1]
	local Passport = vRP.Passport(source)
	if Passport and GlobalState["Plates"] and GlobalState["Plates"][Plate] == Passport then
		vRP.GenerateItem(Passport,"vehkey-"..Plate,1,true)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- COMMANDS: CAR & DV
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("car",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and vRP.HasGroup(Passport,"Admin") and Message[1] then
		local VehicleName = Message[1]
		local Ped = GetPlayerPed(source)
		local Coords = GetEntityCoords(Ped)
		local Heading = GetEntityHeading(Ped)
		local Plate = "VEH"..(10000 + Passport)
		local Exist,Network,Vehicle = Creative.ServerVehicle(VehicleName,Coords["x"],Coords["y"],Coords["z"],Heading,Plate,2000,nil,1000)

		if not Exist then return end

		vCLIENT.CreateVehicle(-1,VehicleName,Network,1000,1000,nil,false,false,Plate)
		Spawn[Plate] = { Passport,VehicleName,Network }
		TriggerEvent("engine:tryFuel",Plate,100)
		SetPedIntoVehicle(Ped,Vehicle,-1)

		local Plates = GlobalState["Plates"] or {}
		Plates[Plate] = Passport
		GlobalState:set("Plates",Plates,true)
	end
end)

RegisterCommand("dv",function(source)
	local Passport = vRP.Passport(source)
	if Passport and vRP.HasGroup(Passport,"Admin",2) then
		TriggerClientEvent("garages:Delete",source)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- STATE EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("signalRemove",function(Plate)
	if not Signal[Plate] then Signal[Plate] = true end
end)

AddEventHandler("plateReveryone",function(Plate)
	if GlobalState["Plates"] and GlobalState["Plates"][Plate] then
		local Plates = GlobalState["Plates"]
		Plates[Plate] = nil
		GlobalState:set("Plates",Plates,true)
	end
end)

AddEventHandler("plateEveryone",function(Plate)
	local Plates = GlobalState["Plates"] or {}
	Plates[Plate] = true
	GlobalState:set("Plates",Plates,true)
end)

AddEventHandler("platePlayers",function(Plate,Passport)
	if not vRP.PassportPlate(Plate) then
		local Plates = GlobalState["Plates"] or {}
		Plates[Plate] = Passport
		GlobalState:set("Plates",Plates,true)
	end
end)

exports("Signal",function(Plate)
	return Signal[Plate]
end)

exports("ServerVehicle",function(...)
	return Creative.ServerVehicle(...)
end)

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
Tunnel.bindInterface("police",Creative)
vCLIENT = Tunnel.getInterface("police")
vKEYBOARD = Tunnel.getInterface("keyboard")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PREPARES
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("police/getPrisons","SELECT * FROM police_prison WHERE nuser_id = @Passport ORDER BY id DESC")
vRP.Prepare("police/getPrisonById","SELECT * FROM police_prison WHERE id = @id")
vRP.Prepare("police/insertPrison","INSERT INTO police_prison(police,nuser_id,services,fines,text,date,cops,association,residual,url) VALUES(@police,@nuser_id,@services,@fines,@text,@date,@cops,@association,@residual,@url)")
vRP.Prepare("police/getPort","SELECT * FROM police_port ORDER BY portId DESC")
vRP.Prepare("police/getPortById","SELECT * FROM police_port WHERE portId = @id")
vRP.Prepare("police/insertPort","INSERT INTO police_port(user_id,identity,status,serial,exam,date) VALUES(@user_id,@identity,@status,@serial,@exam,@date)")
vRP.Prepare("police/updatePort","UPDATE police_port SET user_id = @user_id, identity = @identity, status = @status, serial = @serial, exam = @exam WHERE portId = @id")
vRP.Prepare("police/deletePort","DELETE FROM police_port WHERE portId = @id")
vRP.Prepare("police/getWarrants","SELECT * FROM police_warrants ORDER BY id DESC")
vRP.Prepare("police/getWarrantById","SELECT * FROM police_warrants WHERE id = @id")
vRP.Prepare("police/insertWarrant","INSERT INTO police_warrants(user_id,identity,status,nidentity,timeStamp,reason) VALUES(@user_id,@identity,@status,@nidentity,@timeStamp,@reason)")
vRP.Prepare("police/deleteWarrant","DELETE FROM police_warrants WHERE id = @id")
vRP.Prepare("police/getReports","SELECT * FROM police_reports ORDER BY id DESC")
vRP.Prepare("police/insertReport","INSERT INTO police_reports(victim_id,police_name,solved,victim_name,created_at,victim_report) VALUES(@victim_id,@police_name,@solved,@victim_name,@created_at,@victim_report)")
vRP.Prepare("police/updateReportSolved","UPDATE police_reports SET solved = 'Sim', updated_at = @updated_at WHERE id = @id")
vRP.Prepare("police/deleteReport","DELETE FROM police_reports WHERE id = @id")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Reduces = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETHTTPHANDLER
-----------------------------------------------------------------------------------------------------------------------------------------
SetHttpHandler(function(Request,Callback)
	local ReturnVar = "Ok"
	if Request["path"] == "/prison" then
		if Request["headers"]["auth"] == "creAuthMdtInfos" then
			local Fines = parseInt(Request["headers"]["fines"])
			local Services = parseInt(Request["headers"]["services"])
			local Passport = parseInt(Request["headers"]["passport"])
			local source = vRP.Source(Passport)

			if Services > 0 then
				vRP.InitPrison(Passport,Services)

				if source then
					vRP.Teleport(source,1691.53,2565.91,45.56)
				end
			end

			if Fines > 0 then
				vRP.GiveFine(Passport,Fines)
			end
		end
	end

	if Request["path"] == "/services" then
		if Request["headers"]["auth"] == "creAuthMdtInfos" then
			local Passport = parseInt(Request["headers"]["passport"])
			local Identity = vRP.Identity(Passport)
			if Identity then
				ReturnVar = Identity["name"].."-"..Identity["name2"].."-"..Identity["phone"].."-"..Identity["sex"].."-"..Identity["fines"].."-"..Identity["prison"]
			end
		end
	end

	if Request["path"] == "/cops" then
		if Request["headers"]["auth"] == "creAuthMdtInfos" then
			local Service = vRP.NumPermission("Police")
			ReturnVar = json.encode(Service)
		end
	end

	Callback.writeHead(200,{
		["Content-Type"] = "application/json",
		["Access-Control-Allow-Origin"] = "*",
		["Access-Control-Allow-Headers"] = "*",
		["Access-Control-Request-Headers"] = "*",
		["Access-Control-Allow-Methods"] = "GET,HEAD,PUT,PATCH,POST,DELETE"
	})

	Callback.send(ReturnVar)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRESET
-----------------------------------------------------------------------------------------------------------------------------------------
local Preset = {
	["mp_m_freemode_01"] = {
		["hat"] = { item = -1, texture = 0 },
		["pants"] = { item = 145, texture = 0 },
		["vest"] = { item = 0, texture = 0 },
		["bracelet"] = { item = -1, texture = 0 },
		["backpack"] = { item = 0, texture = 0 },
		["decals"] = { item = 0, texture = 0 },
		["mask"] = { item = 0, texture = 0 },
		["shoes"] = { item = 25, texture = 0 },
		["tshirt"] = { item = 15, texture = 0 },
		["torso"] = { item = 395, texture = 0 },
		["accessory"] = { item = 0, texture = 0 },
		["watch"] = { item = -1, texture = 0 },
		["arms"] = { item = 83, texture = 0 },
		["glass"] = { item = 0, texture = 0 },
		["ear"] = { item = -1, texture = 0 }
	},
	["mp_f_freemode_01"] = {
		["hat"] = { item = -1, texture = 0 },
		["pants"] = { item = 152, texture = 0 },
		["vest"] = { item = 0, texture = 0 },
		["bracelet"] = { item = -1, texture = 0 },
		["backpack"] = { item = 0, texture = 0 },
		["decals"] = { item = 0, texture = 0 },
		["mask"] = { item = 0, texture = 0 },
		["shoes"] = { item = 25, texture = 0 },
		["tshirt"] = { item = 14, texture = 0 },
		["torso"] = { item = 418, texture = 0 },
		["accessory"] = { item = 0, texture = 0 },
		["watch"] = { item = -1, texture = 0 },
		["arms"] = { item = 86, texture = 0 },
		["glass"] = { item = 0, texture = 0 },
		["ear"] = { item = -1, texture = 0 }
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- POLICE:PRISONCLOTHES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("police:prisonClothes")
AddEventHandler("police:prisonClothes",function(entity)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and vRP.GetHealth(source) > 100 then
		local mHash = vRP.ModelPlayer(entity[1])
		if mHash == "mp_m_freemode_01" or mHash == "mp_f_freemode_01" then
			TriggerClientEvent("skinshop:Apply",entity[1],Preset[mHash])
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- POLICE:REDUCES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("police:Reduces")
AddEventHandler("police:Reduces",function(Number)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Identity = vRP.Identity(Passport)
		if parseInt(Identity["prison"]) > 0 then
			if not Reduces[Number] then
				Reduces[Number] = {}
			end

			if Reduces[Number][Passport] then
				if os.time() > Reduces[Number][Passport] then
					reduceFunction(source,Passport,Number)
				else
					TriggerClientEvent("Notify",source,"amarelo","Nada encontrado.",5000)
				end
			else
				reduceFunction(source,Passport,Number)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REDUCEFUNCTION
-----------------------------------------------------------------------------------------------------------------------------------------
function reduceFunction(source,Passport,Number)
	vRPC.playAnim(source,false,{"amb@prop_human_bum_bin@base","base"},true)
	TriggerClientEvent("Progress",source,"Vasculhando",10000)
	Reduces[Number][Passport] = os.time() + 600
	Player(source)["state"]["Buttons"] = true
	Player(source)["state"]["Cancel"] = true
	local timeProgress = 10

	repeat
		Wait(1000)
		timeProgress = timeProgress - 1
	until timeProgress <= 0

	vRP.UpdatePrison(Passport,math.random(2))
	Player(source)["state"]["Buttons"] = false
	Player(source)["state"]["Cancel"] = false
	vRPC.removeObjects(source)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MDT: INITPRISON
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.initPrison(nuser_id,services,fines,text,association,material,url,cops)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasService(Passport,"Police") or vRP.HasGroup(Passport,"Police") then
			nuser_id = parseInt(nuser_id)
			services = parseInt(services)
			fines = parseInt(fines)

			local Identity = vRP.Identity(Passport)
			local OfficerName = Identity and (Identity["name"].." "..Identity["name2"]) or ("Policial #"..Passport)

			if services > 0 then
				vRP.InitPrison(nuser_id,services)
				local nsource = vRP.Source(nuser_id)
				if nsource then
					vRP.Teleport(nsource,1691.53,2565.91,45.56)
					TriggerClientEvent("police:prisonClothes",nsource,{ nsource })
				end
			end

			if fines > 0 then
				vRP.GiveFine(nuser_id,fines)
			end

			local currentDate = os.date("%d/%m/%Y %H:%M")
			local residualValue = (material == "Sim") and 1 or 0

			vRP.Query("police/insertPrison",{
				police = OfficerName,
				nuser_id = nuser_id,
				services = services,
				fines = fines,
				text = text or "Sem descrição.",
				date = currentDate,
				cops = cops or "",
				association = association or "",
				residual = residualValue,
				url = url or ""
			})

			TriggerClientEvent("Notify",source,"verde","Prisão registrada com sucesso para o passaporte <b>"..nuser_id.."</b>.",5000)
		else
			TriggerClientEvent("Notify",source,"vermelho","Você não possui permissão para executar esta ação.",5000)
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MDT: INITFINE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.initFine(nuser_id,fines,text,cnh)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasService(Passport,"Police") or vRP.HasGroup(Passport,"Police") then
			nuser_id = parseInt(nuser_id)
			fines = parseInt(fines)

			if fines > 0 then
				vRP.GiveFine(nuser_id,fines)
				TriggerClientEvent("Notify",source,"verde","Multa de <b>$"..fines.."</b> aplicada ao passaporte <b>"..nuser_id.."</b>.",5000)

				local nsource = vRP.Source(nuser_id)
				if nsource then
					TriggerClientEvent("Notify",nsource,"amarelo","Você recebeu uma multa no valor de <b>$"..fines.."</b>.",5000)
				end
			end
		else
			TriggerClientEvent("Notify",source,"vermelho","Você não possui permissão para aplicar multas.",5000)
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MDT: SEARCHUSER
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.searchUser(nuser_id)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		nuser_id = parseInt(nuser_id)
		local Identity = vRP.Identity(nuser_id)
		if Identity then
			local Prisons = vRP.Query("police/getPrisons",{ Passport = nuser_id })
			local Serial = Identity["serial"] or "Nenhum"
			local FullName = Identity["name"].." "..Identity["name2"]

			return {
				true,
				FullName,
				Identity["phone"] or "Nenhum",
				Identity["fines"] or 0,
				Prisons or {},
				"",
				Serial,
				"",
				nuser_id
			}
		end
	end

	return { false }
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MDT: REDUCEPRISON
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.reducePrison()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		vRP.UpdatePrison(Passport,1)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MDT: PORTES (GUN LICENSES)
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.searchPort()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local rows = vRP.Query("police/getPort",{})
		if rows and #rows > 0 then
			return { true, rows }
		end
	end

	return { false }
end

function Creative.givePort(nuser_id,serial,status,exam)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasService(Passport,"Police") or vRP.HasGroup(Passport,"Police") then
			nuser_id = parseInt(nuser_id)
			local Identity = vRP.Identity(nuser_id)
			local FullName = Identity and (Identity["name"].." "..Identity["name2"]) or ("Cidadão #"..nuser_id)
			local currentDate = os.date("%d/%m/%Y")

			vRP.Query("police/insertPort",{
				user_id = nuser_id,
				identity = FullName,
				status = status or "Válido",
				serial = serial or "",
				exam = exam or "Aprovado",
				date = currentDate
			})

			TriggerClientEvent("Notify",source,"verde","Porte registrado com sucesso.",5000)
		end
	end
end

function Creative.editPort(id,nuser_id,serial,status,exam)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasService(Passport,"Police") or vRP.HasGroup(Passport,"Police") then
			id = parseInt(id)
			nuser_id = parseInt(nuser_id)
			local Identity = vRP.Identity(nuser_id)
			local FullName = Identity and (Identity["name"].." "..Identity["name2"]) or ("Cidadão #"..nuser_id)

			vRP.Query("police/updatePort",{
				id = id,
				user_id = nuser_id,
				identity = FullName,
				status = status or "Válido",
				serial = serial or "",
				exam = exam or "Aprovado"
			})

			TriggerClientEvent("Notify",source,"verde","Porte atualizado com sucesso.",5000)
		end
	end
end

function Creative.deletePort(id)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasService(Passport,"Police") or vRP.HasGroup(Passport,"Police") then
			vRP.Query("police/deletePort",{ id = parseInt(id) })
			TriggerClientEvent("Notify",source,"verde","Porte removido com sucesso.",5000)
		end
	end
end

function Creative.getPortById(id)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local row = vRP.Query("police/getPortById",{ id = parseInt(id) })
		if row and row[1] then
			row[1]["portType"] = row[1]["status"]
			return { true, row[1] }
		end
	end

	return { false }
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MDT: WARRANTS (PROCURADOS)
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.getWarrants()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local rows = vRP.Query("police/getWarrants",{})
		if rows and #rows > 0 then
			return { true, rows }
		end
	end

	return { false }
end

function Creative.setWarrant(nuser_id,reason)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasService(Passport,"Police") or vRP.HasGroup(Passport,"Police") then
			nuser_id = parseInt(nuser_id)
			local TargetIdentity = vRP.Identity(nuser_id)
			local OfficerIdentity = vRP.Identity(Passport)
			local TargetName = TargetIdentity and (TargetIdentity["name"].." "..TargetIdentity["name2"]) or ("Indivíduo #"..nuser_id)
			local OfficerName = OfficerIdentity and (OfficerIdentity["name"].." "..OfficerIdentity["name2"]) or ("Policial #"..Passport)
			local currentDate = os.date("%d/%m/%Y %H:%M")

			vRP.Query("police/insertWarrant",{
				user_id = nuser_id,
				identity = TargetName,
				status = "Procurado",
				nidentity = OfficerName,
				timeStamp = currentDate,
				reason = reason or "Mandado ativo."
			})

			TriggerClientEvent("Notify",source,"verde","Mandado registrado para o passaporte <b>"..nuser_id.."</b>.",5000)
		end
	end
end

function Creative.checkWarrantId(id)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local row = vRP.Query("police/getWarrantById",{ id = parseInt(id) })
		if row and row[1] then
			return { true, row[1]["identity"], row[1] }
		end
	end

	return { false }
end

function Creative.deleteWarrant(id)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasService(Passport,"Police") or vRP.HasGroup(Passport,"Police") then
			vRP.Query("police/deleteWarrant",{ id = parseInt(id) })
			TriggerClientEvent("Notify",source,"verde","Mandado removido com sucesso.",5000)
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MDT: CHECKPRISIONID
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.checkPrisionId(id)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local row = vRP.Query("police/getPrisonById",{ id = parseInt(id) })
		if row and row[1] then
			local TargetIdentity = vRP.Identity(row[1]["nuser_id"])
			local TargetName = TargetIdentity and (TargetIdentity["name"].." "..TargetIdentity["name2"]) or ("Preso #"..row[1]["nuser_id"])
			return { true, TargetName, row[1] }
		end
	end

	return { false }
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MDT: REPORTS (BOLETINS DE OCORRÊNCIA)
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.getReports()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local rows = vRP.Query("police/getReports",{})
		return rows or {}
	end

	return {}
end

function Creative.addReport(data)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasService(Passport,"Police") or vRP.HasGroup(Passport,"Police") then
			local OfficerIdentity = vRP.Identity(Passport)
			local OfficerName = OfficerIdentity and (OfficerIdentity["name"].." "..OfficerIdentity["name2"]) or ("Policial #"..Passport)
			local currentDate = os.date("%d/%m/%Y %H:%M")

			vRP.Query("police/insertReport",{
				victim_id = data.victim_id or "",
				police_name = OfficerName,
				solved = "Não",
				victim_name = data.victim_name or "",
				created_at = currentDate,
				victim_report = data.victim_report or ""
			})

			TriggerClientEvent("Notify",source,"verde","Boletim de ocorrência registrado.",5000)
		end
	end
end

function Creative.setReportSolved(id)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasService(Passport,"Police") or vRP.HasGroup(Passport,"Police") then
			local currentDate = os.date("%d/%m/%Y %H:%M")
			vRP.Query("police/updateReportSolved",{
				id = parseInt(id),
				updated_at = currentDate
			})
			TriggerClientEvent("Notify",source,"verde","Boletim marcado como resolvido.",5000)
		end
	end
end

function Creative.setReportRemoved(id)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasService(Passport,"Police") or vRP.HasGroup(Passport,"Police") then
			vRP.Query("police/deleteReport",{ id = parseInt(id) })
			TriggerClientEvent("Notify",source,"verde","Boletim excluído com sucesso.",5000)
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MDT: UPDATEPOLICE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.updatePolice(passport)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		-- Ação opcional reservada para sincronização adicional
	end
end

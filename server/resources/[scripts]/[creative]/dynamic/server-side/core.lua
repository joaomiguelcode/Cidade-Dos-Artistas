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
Tunnel.bindInterface("dynamic",Creative)
vKEYBOARD = Tunnel.getInterface("keyboard")
-----------------------------------------------------------------------------------------------------------------------------------------
-- WORKS
-----------------------------------------------------------------------------------------------------------------------------------------
local Works = {
	["Dismantle"] = "Desmanche",
	["Tows"] = "Reboque",
	["Delivery"] = "Entregador",
	["Transporter"] = "Transportador",
	["Lumberman"] = "Lenhador"
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPERIENCE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Experience()
	local source = source
	local Passport = vRP.Passport(source)
	local Datatable = vRP.Datatable(Passport)
	if Passport and Datatable then
		local Experiences = {}

		for Index,v in pairs(Works) do
			if Datatable[Index] then
				Experiences[v] = Datatable[Index]
			else
				Experiences[v] = 0
			end
		end

		return Experiences
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXCLUSIVAS
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Exclusivas()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Clothes = {}
		local Consult = vRP.GetSrvData("Exclusivas:"..Passport,true)

		for Index,v in pairs(Consult) do
			Clothes[#Clothes + 1] = { ["name"] = Index, ["id"] = v["id"], ["texture"] = v["texture"] or 0, ["type"] = v["type"] }
		end

		return Clothes
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETINFOS
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.GetInfos()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Clothes = vRP.GetSrvData("saveOutfits:"..Passport,true)
		local Services = {}

		if Groups then
			for Permission,Group in pairs(Groups) do
				if Group["Service"] and vRP.HasGroup(Passport,Permission) then
					table.insert(Services,Permission)
				end
			end
		end

		return Clothes,Services
	end

	return {},{}
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TENCODE
-----------------------------------------------------------------------------------------------------------------------------------------
local Tencodes = {
	["1"] = { title = "QTI - Deslocamento", text = "Oficial em deslocamento." },
	["2"] = { title = "QTH - Localização", text = "Oficial reportando localização atual." },
	["3"] = { title = "QRR - Apoio com Prioridade", text = "Oficial solicitando reforço urgente!" },
	["4"] = { title = "QRT - Oficial Ferido", text = "Oficial necessita de socorro imediato!" }
}

RegisterServerEvent("dynamic:Tencode")
AddEventHandler("dynamic:Tencode",function(Code)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local CodeData = Tencodes[tostring(Code)]
		if CodeData then
			local Ped = GetPlayerPed(source)
			local Coords = GetEntityCoords(Ped)
			local Identity = vRP.Identity(Passport)
			local OfficerName = Identity and (Identity["name"].." "..Identity["name2"]) or ("Oficial #"..Passport)

			local Service = vRP.NumPermission("Police")
			for TargetPassport,TargetSource in pairs(Service) do
				async(function()
					TriggerClientEvent("NotifyPush",TargetSource,{
						code = CodeData["title"],
						title = OfficerName,
						text = CodeData["text"],
						x = Coords["x"],
						y = Coords["y"],
						z = Coords["z"],
						time = "Agora"
					})
					vRPC.PlaySound(TargetSource,"Event_Start_Text","GTAO_FM_Events_Soundset")
				end)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- EMERGENCYANNOUNCE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("dynamic:EmergencyAnnounce")
AddEventHandler("dynamic:EmergencyAnnounce",function(Dept)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Police") or vRP.HasGroup(Passport,"Paramedic") or vRP.HasGroup(Passport,"Bombeiro") then
			local Keyboard = vKEYBOARD.keyArea(source,"Mensagem do Anúncio:")
			if Keyboard and Keyboard[1] and Keyboard[1] ~= "" then
				local Identity = vRP.Identity(Passport)
				local Name = Identity and (Identity["name"].." "..Identity["name2"]) or "Oficial"
				TriggerClientEvent("Notify",-1,"azul","<b>[COMUNICADO DE EMERGÊNCIA]</b><br>"..Keyboard[1].."<br><br>Emitido por: <b>"..Name.."</b>",15000)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVADEPROPERTY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("dynamic:invadeProperty")
AddEventHandler("dynamic:invadeProperty",function()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and vRP.HasGroup(Passport,"Police") then
		TriggerClientEvent("Notify",source,"verde","Mandado executado. Arrombando residência.",5000)
		TriggerClientEvent("heyy_houses:forceEnter",source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVEOUTFITS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:saveOutfits")
AddEventHandler("player:saveOutfits",function(OutfitName)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Clothes = vRP.GetSrvData("saveOutfits:"..Passport,true)
		if Clothes and Clothes[OutfitName] then
			TriggerClientEvent("skinshop:Apply",source,Clothes[OutfitName])
			TriggerClientEvent("Notify",source,"verde","Traje <b>"..OutfitName.."</b> aplicado com sucesso.",5000)
		end
	end
end)

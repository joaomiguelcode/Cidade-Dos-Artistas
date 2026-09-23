-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cRP = {}
Tunnel.bindInterface("bodycam",cRP)
vCLIENT = Tunnel.getInterface("bodycam")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local camPlayers = {}

local PoliceGroups = {
	"Corregedoria",
	"Rota",
	"Baep",
	"Caep",
	"Tatica",
	"Cavpm",
	"Militar",
	"Cmtg",
	"Penal",
	"Coe",
	"Receita",
	"Pf",
	"Pc",
	"Exercito",
	"Police"
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETOFFICERDETAILS
-----------------------------------------------------------------------------------------------------------------------------------------
local function getOfficerDetails(source,Passport)
	local Identity = vRP.Identity(Passport)
	if not Identity then
		return nil
	end

	local rank = "Oficial"
	local department = "Polícia Militar"

	for _,grp in ipairs(PoliceGroups) do
		if vRP.HasGroup(Passport,grp) then
			department = grp
			local Data = vRP.DataGroups(grp)
			if Data and Data[tostring(Passport)] then
				local level = Data[tostring(Passport)]
				if Groups and Groups[grp] and Groups[grp]["Hierarchy"] and Groups[grp]["Hierarchy"][level] then
					rank = Groups[grp]["Hierarchy"][level]
				end
			end
			break
		end
	end

	return {
		source = source,
		passport = Passport,
		fname = Identity["name"] or "Oficial",
		lname = Identity["name2"] or tostring(Passport),
		rank = rank,
		department = department,
		label = tostring(Passport),
		camon = (camPlayers[source] and camPlayers[source]["camon"]) or false
	}
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETPLAYERINFOS
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.getPlayerInfos()
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then
		return {
			fname = "Oficial",
			lname = "Desconhecido",
			rank = "Oficial",
			department = "Polícia",
			label = "0"
		}
	end

	local details = getOfficerDetails(source,Passport)
	if details then
		return details
	end

	return {
		fname = "Oficial",
		lname = tostring(Passport),
		rank = "Oficial",
		department = "Polícia",
		label = tostring(Passport)
	}
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETPOPOS
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.getPopos()
	local officers = {}

	for _,src in pairs(vRP.Players()) do
		local Passport = vRP.Passport(src)
		if Passport then
			local isPolice = false
			for _,grp in ipairs(PoliceGroups) do
				if vRP.HasGroup(Passport,grp) then
					isPolice = true
					break
				end
			end

			if isPolice or (camPlayers[src] and camPlayers[src]["camon"]) then
				local details = getOfficerDetails(src,Passport)
				if details then
					table.insert(officers,details)
				end
			end
		end
	end

	return officers
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETPLAYER
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.getPlayer(targetSource)
	local targetSource = parseInt(targetSource)
	local ped = GetPlayerPed(targetSource)

	if DoesEntityExist(ped) then
		local coords = GetEntityCoords(ped)
		local netId = NetworkGetNetworkIdFromEntity(ped)
		local isCam = (camPlayers[targetSource] and camPlayers[targetSource]["camon"]) or false

		return {
			isCam = isCam,
			coords = coords,
			pednid = netId,
			source = targetSource
		}
	end

	return { isCam = false }
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MESSY:CAMSTATUS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("messy:camstatus")
AddEventHandler("messy:camstatus",function(status)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	if not camPlayers[source] then
		camPlayers[source] = getOfficerDetails(source,Passport) or { camon = false }
	end

	if status ~= nil then
		camPlayers[source]["camon"] = status
	else
		camPlayers[source]["camon"] = not camPlayers[source]["camon"]
	end

	local statusList = {}
	for src,data in pairs(camPlayers) do
		statusList[src] = data["camon"]
	end

	TriggerClientEvent("bcam:UpdateWatch",-1,statusList)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Disconnect",function(Passport,source)
	if camPlayers[source] then
		camPlayers[source] = nil

		local statusList = {}
		for src,data in pairs(camPlayers) do
			statusList[src] = data["camon"]
		end

		TriggerClientEvent("bcam:UpdateWatch",-1,statusList)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BODYCAM COMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("bodycam",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		local isPolice = false
		for _,grp in ipairs(PoliceGroups) do
			if vRP.HasGroup(Passport,grp) then
				isPolice = true
				break
			end
		end

		if isPolice or vRP.ItemAmount(Passport,"bodycam") > 0 then
			TriggerClientEvent("messy:camtoggle",source)
		else
			TriggerClientEvent("Notify",source,"vermelho","Você não tem autorização ou não possui uma Bodycam.",5000)
		end
	end
end)

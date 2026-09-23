-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("blipsystem")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Blips = {}
local Players = {}
local Pause = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- COLORS
-----------------------------------------------------------------------------------------------------------------------------------------
local Colors = {
	["Rota"] = 40,
	["Baep"] = 22,
	["Caep"] = 22,
	["Tatica"] = 38,
	["Cavpm"] = 52,
	["Humaita"] = 55,
	["Anchieta"] = 55,
	["CPA"] = 57,
	["Gcm"] = 39,
	["Corregedoria"] = 43,
	["Transito"] = 46,
	["Rodoviaria"] = 46,
	["Militar"] = 38,
	["Cmtg"] = 46,
	["Penal"] = 43,
	["Coe"] = 25,
	["Receita"] = 40,
	["Pf"] = 16,
	["Pc"] = 0,
	["Exercito"] = 52,

	["Bombeiro"] = 6,
	["Paramedic"] = 6,
	
	["Prisioneiro"] = 33,
	["Corredor"] = 32,
	["Oab"] = 41,
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADBLIPS
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		if LocalPlayer["state"]["Active"] then
			if LocalPlayer["state"]["Police"] or LocalPlayer["state"]["Paramedic"] or LocalPlayer["state"]["Bombeiro"] or LocalPlayer["state"]["Oab"] then
				if IsPauseMenuActive() then
					if not Pause then
						Pause = true

						for Number,_ in pairs(Blips) do
							RemoveBlip(Blips[Number])
							Blips[Number] = nil
						end
					end

					local List = vSERVER.playerList()

					for Number,v in pairs(List) do
						if Blips[Number] then
							SetBlipCoords(Blips[Number],v["Coords"])
						else
							Blips[Number] = AddBlipForCoord(v["Coords"])
							SetBlipSprite(Blips[Number],1)
							SetBlipDisplay(Blips[Number],4)
							SetBlipAsShortRange(Blips[Number],true)
							SetBlipColour(Blips[Number],Colors[v["service"]])
							SetBlipScale(Blips[Number],0.7)
							BeginTextCommandSetBlipName("STRING")
							AddTextComponentString("! "..v["service"])
							EndTextCommandSetBlipName(Blips[Number])
						end
					end
				else
					if Pause then
						Pause = false

						for Number,_ in pairs(Blips) do
							RemoveBlip(Blips[Number])
							Blips[Number] = nil
						end
					end

					local Active = activePlayers()

					for Number,v in pairs(Players) do
						if Active[Number] then
							if not Blips[Number] then
								local source = GetPlayerFromServerId(Number)
								local Ped = GetPlayerPed(source)

								Blips[Number] = AddBlipForEntity(Ped)
								SetBlipSprite(Blips[Number],1)
								SetBlipDisplay(Blips[Number],4)
								SetBlipShowCone(Blips[Number],true)
								SetBlipAsShortRange(Blips[Number],true)
								SetBlipColour(Blips[Number],Colors[v["service"]])
								SetBlipScale(Blips[Number],0.7)
								BeginTextCommandSetBlipName("STRING")
								AddTextComponentString("! "..v["service"])
								EndTextCommandSetBlipName(Blips[Number])
							end
						else
							if Blips[Number] then
								RemoveBlip(Blips[Number])
								Blips[Number] = nil
							end
						end
					end
				end
			end
		end

		Wait(1000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLIPSYSTEM:FULL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("blipsystem:Full")
AddEventHandler("blipsystem:Full",function(Table)
	Players = Table
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLIPSYSTEM:ENTER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("blipsystem:Enter")
AddEventHandler("blipsystem:Enter",function(source,Table)
	Players[source] = Table
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLIPSYSTEM:EXIT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("blipsystem:Exit")
AddEventHandler("blipsystem:Exit",function(source)
	if Players[source] then
		Players[source] = nil
	end

	if Blips[source] then
		if DoesBlipExist(Blips[source]) then
			RemoveBlip(Blips[source])
			Blips[source] = nil
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLIPSYSTEM:CLEAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("blipsystem:Clear")
AddEventHandler("blipsystem:Clear",function()
	for Number,_ in pairs(Blips) do
		RemoveBlip(Blips[Number])
	end

	Pause = false
	Players = {}
	Blips = {}
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ACTIVEPLAYERS
-----------------------------------------------------------------------------------------------------------------------------------------
function activePlayers()
	local PlayerList = {}

	for _,v in ipairs(GetActivePlayers()) do
		PlayerList[GetPlayerServerId(v)] = true
	end

	return PlayerList
end
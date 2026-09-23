-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES & STATE
-----------------------------------------------------------------------------------------------------------------------------------------
local isNuiOpen = false
local pendingRequests = {}
local requestCounter = 0

-----------------------------------------------------------------------------------------------------------------------------------------
-- OPEN / CLOSE BANK INTERFACE
-----------------------------------------------------------------------------------------------------------------------------------------
function openBank(initialTab)
	if isNuiOpen then return end
	local ped = PlayerPedId()
	if IsPedInAnyVehicle(ped, false) or IsEntityDead(ped) then return end

	isNuiOpen = true
	SetNuiFocus(true, true)
	SendNUIMessage({ "open", initialTab or "auth" })
end

function closeBank()
	if not isNuiOpen then return end
	isNuiOpen = false
	SetNuiFocus(false, false)
end

exports("openBank", openBank)
exports("closeBank", closeBank)

RegisterNetEvent("bank:open", function(initialTab)
	openBank(initialTab)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- NUI CALLBACKS
-----------------------------------------------------------------------------------------------------------------------------------------
-- 1. NUI Callback: "shared" (Config & Close)
RegisterNUICallback("shared", function(data, cb)
	local action = data[1]
	if action == "getConfig" then
		cb({ Config })
	elseif action == "close" then
		closeBank()
		cb({})
	else
		cb({})
	end
end)

-- 2. NUI Callback: "request" (Server Operations)
RegisterNUICallback("request", function(data, cb)
	requestCounter = requestCounter + 1
	local reqId = requestCounter

	local action = data[1]
	local args = {}
	for i = 2, #data do
		table.insert(args, data[i])
	end

	pendingRequests[reqId] = cb
	TriggerServerEvent("bank:request", reqId, action, args)

	-- Timeout de segurança caso o servidor não responda em 10s
	SetTimeout(10000, function()
		if pendingRequests[reqId] then
			pendingRequests[reqId]({ { __error = { type = "SERVER_ERROR", errors = { message = "Tempo esgotado na requisição" } } } })
			pendingRequests[reqId] = nil
		end
	end)
end)

-- 3. Resposta do Servidor
RegisterNetEvent("bank:response", function(reqId, response)
	if pendingRequests[reqId] then
		pendingRequests[reqId]({ response })
		pendingRequests[reqId] = nil
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- COMANDOS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("bank", function()
	openBank("auth")
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- INTERAÇÃO: BANCOS E CAIXAS ELETRÔNICOS (ATMS)
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	local atms = Config.atms or {}
	local banks = Config.banks or {}

	while true do
		local idle = 1000
		local ped = PlayerPedId()
		if not isNuiOpen and not IsPedInAnyVehicle(ped, false) and not IsEntityDead(ped) then
			local playerCoords = GetEntityCoords(ped)
			local nearInteractable = false

			-- Checagem de Agências Bancárias
			for _, bCoord in ipairs(banks) do
				local dist = #(playerCoords - bCoord)
				if dist <= 5.0 then
					idle = 4
					nearInteractable = true
					if Config.draw then
						Config.draw(bCoord)
					end
					if dist <= 1.5 then
						if exports["0r-textui"] then
							exports["0r-textui"]:displayTextUI("Pressione [E] para acessar o Banco", "E")
						end
						if IsControlJustPressed(0, 38) then
							openBank("auth")
						end
					end
					break
				end
			end

			-- Checagem de Caixas Eletrônicos (ATMs)
			if not nearInteractable then
				for _, atmModel in ipairs(atms) do
					local obj = GetClosestObjectOfType(playerCoords.x, playerCoords.y, playerCoords.z, 1.5, atmModel, false, false, false)
					if obj and DoesEntityExist(obj) then
						idle = 4
						nearInteractable = true
						if exports["0r-textui"] then
							exports["0r-textui"]:displayTextUI("Pressione [E] para acessar o Caixa Eletrônico", "E")
						end
						if IsControlJustPressed(0, 38) then
							openBank("auth")
						end
						break
					end
				end
			end

			if not nearInteractable and exports["0r-textui"] then
				-- Se saiu de perto, limpa o TextUI
				exports["0r-textui"]:hideTextUI()
			end
		end

		Wait(idle)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CLIENT STATE & VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local isOutlineActive = false
local isNuiOpen = false

-- Alvos autorizados sincronizados pelo servidor: [serverId] = { passport, group, label, color = {r,g,b}, name, isSelf }
local currentTargets = {}

-- Entidades atualmente ativas para renderização: [pedEntity] = { color = {r,g,b}, isSelf = bool }
local activePedsMap = {}
local renderedOutlines = {}

-- Preferências visuais (customizáveis na NUI)
local settings = {
	distance = Config.DefaultDistance or 80.0,
	alpha = Config.DefaultAlpha or 220,
	shader = Config.DefaultShader or 1,
	highlightSelf = (Config.HighlightSelf ~= false),
	neonGlow = (Config.NeonGlow ~= false),
	groundRing = (Config.GroundRing ~= false),
	hideInVehicle = Config.HideInVehicle or false,
	hideDead = Config.HideDead or false,
	pulse = Config.PulseEffect or false
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- LIMPEZA GERAL DE OUTLINES
-----------------------------------------------------------------------------------------------------------------------------------------
local function clearAllOutlines()
	for ped, _ in pairs(renderedOutlines) do
		if DoesEntityExist(ped) then
			SetEntityDrawOutline(ped, false)
		end
	end
	renderedOutlines = {}
	activePedsMap = {}

	local myPed = PlayerPedId()
	if DoesEntityExist(myPed) then
		SetEntityDrawOutline(myPed, false)
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONTROLE DA INTERFACE (NUI)
-----------------------------------------------------------------------------------------------------------------------------------------
local function closeNUI()
	if not isNuiOpen then return end
	isNuiOpen = false
	SetNuiFocus(false, false)
	SendNUIMessage({ action = "close" })
end

RegisterNUICallback("close", function(data, cb)
	closeNUI()
	cb("ok")
end)

RegisterNUICallback("toggle", function(data, cb)
	TriggerServerEvent("cda_outline:toggleSystem")
	cb("ok")
end)

RegisterNUICallback("saveSettings", function(data, cb)
	if data then
		if data.distance then settings.distance = tonumber(data.distance) or settings.distance end
		if data.alpha then settings.alpha = tonumber(data.alpha) or settings.alpha end
		if data.shader ~= nil then settings.shader = tonumber(data.shader) or settings.shader end
		if data.highlightSelf ~= nil then settings.highlightSelf = data.highlightSelf end
		if data.neonGlow ~= nil then settings.neonGlow = data.neonGlow end
		if data.groundRing ~= nil then settings.groundRing = data.groundRing end
		if data.hideInVehicle ~= nil then settings.hideInVehicle = data.hideInVehicle end
		if data.hideDead ~= nil then settings.hideDead = data.hideDead end
		if data.pulse ~= nil then settings.pulse = data.pulse end
	end
	cb("ok")
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- EVENTOS RECEBIDOS DO SERVIDOR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("cda_outline:openNUI", function(payload)
	if not payload then return end

	payload.action = "open"
	payload.settings = settings

	isNuiOpen = true
	SetNuiFocus(true, true)
	SendNUIMessage(payload)
end)

RegisterNetEvent("cda_outline:systemState", function(state)
	isOutlineActive = state

	if not isOutlineActive then
		clearAllOutlines()
	end

	if isNuiOpen then
		SendNUIMessage({
			action = "updateStats",
			active = isOutlineActive,
			targetsCount = 0
		})
	end
end)

RegisterNetEvent("cda_outline:syncTargets", function(targets)
	currentTargets = targets or {}

	if not isOutlineActive or next(currentTargets) == nil then
		clearAllOutlines()
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- COMANDOS E MAPEAMENTO DE TECLA
-----------------------------------------------------------------------------------------------------------------------------------------
-- Comando principal (abre a NUI)
RegisterCommand(Config.Command, function()
	if isNuiOpen then
		closeNUI()
	else
		TriggerServerEvent("cda_outline:requestOpen")
	end
end, false)

RegisterKeyMapping(Config.Command, Config.KeyMappingDescription or "Abrir Painel Outline", "keyboard", Config.KeyMapping or "F10")

-- Comando de atalho rápido para ligar/desligar sem abrir a NUI
if Config.QuickToggleCommand and Config.QuickToggleCommand ~= "" then
	RegisterCommand(Config.QuickToggleCommand, function()
		TriggerServerEvent("cda_outline:toggleSystem")
	end, false)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- THREAD 1: FILTRAGEM E DETECÇÃO DE ALVOS (Executa a cada ~250ms)
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		if not isOutlineActive or next(currentTargets) == nil then
			Wait(1000)
		else
			local myPed = PlayerPedId()
			local myServerId = GetPlayerServerId(PlayerId())
			local myCoords = GetEntityCoords(myPed)
			local newActive = {}
			local activeCount = 0

			for serverId, targetData in pairs(currentTargets) do
				local sId = tonumber(serverId)
				local isSelf = (sId == myServerId)
				local targetPed = nil

				if isSelf then
					if settings.highlightSelf then
						targetPed = myPed
					end
				else
					local playerIdx = GetPlayerFromServerId(sId)
					if playerIdx and playerIdx ~= -1 and NetworkIsPlayerActive(playerIdx) then
						targetPed = GetPlayerPed(playerIdx)
					end
				end

				if targetPed and targetPed ~= 0 and DoesEntityExist(targetPed) then
					local dist = isSelf and 0.0 or #(myCoords - GetEntityCoords(targetPed))

					if isSelf or dist <= (settings.distance or 80.0) then
						local allowHighlight = true

						if settings.hideInVehicle and IsPedInAnyVehicle(targetPed, false) then
							allowHighlight = false
						end

						if settings.hideDead and (IsEntityDead(targetPed) or IsPedFatallyInjured(targetPed)) then
							allowHighlight = false
						end

						if allowHighlight then
							newActive[targetPed] = {
								color = targetData.color or Config.DefaultColor,
								isSelf = isSelf
							}
							activeCount = activeCount + 1
						end
					end
				end
			end

			-- Desativa outlines nativos de quem saiu do alcance
			for ped, _ in pairs(renderedOutlines) do
				if not newActive[ped] then
					if DoesEntityExist(ped) then
						SetEntityDrawOutline(ped, false)
					end
					renderedOutlines[ped] = nil
				end
			end

			-- Ativa outlines nativos de quem está ativo
			for ped, info in pairs(newActive) do
				SetEntityDrawOutlineShader(settings.shader or 1)
				SetEntityDrawOutlineColor(info.color[1], info.color[2], info.color[3], settings.alpha or 220)
				SetEntityDrawOutline(ped, true)
				renderedOutlines[ped] = true
			end

			activePedsMap = newActive

			if isNuiOpen then
				SendNUIMessage({
					action = "updateStats",
					targetsCount = activeCount,
					active = isOutlineActive
				})
			end

			Wait(Config.ClientCheckInterval or 250)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- THREAD 2: RENDERIZAÇÃO VISUAL REAL-TIME (Luz Neon Dinâmica & Aura no Chão)
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	local pulsePhase = 0.0

	while true do
		if not isOutlineActive or next(activePedsMap) == nil then
			Wait(500)
		else
			-- Atualização suave de pulso
			if settings.pulse then
				pulsePhase = pulsePhase + 0.08
				if pulsePhase > (math.pi * 2) then pulsePhase = 0.0 end
			end

			local pulseFactor = settings.pulse and (0.7 + 0.3 * math.sin(pulsePhase)) or 1.0

			for ped, info in pairs(activePedsMap) do
				if DoesEntityExist(ped) then
					local coords = GetEntityCoords(ped)
					local c = info.color
					local r, g, b = c[1], c[2], c[3]

					-- 1. Efeito de Luz Neon Dinâmica (ilumina o personagem e o redor em tempo real)
					if settings.neonGlow then
						local lightIntensity = (info.isSelf and 3.2 or 2.8) * pulseFactor
						DrawLightWithRange(coords.x, coords.y, coords.z + 0.2, r, g, b, 3.2, lightIntensity)
					end

					-- 2. Anel e Aura Tática Neon sob os pés do personagem
					if settings.groundRing then
						local ringAlpha = math.floor((info.isSelf and 210 or 170) * pulseFactor)
						-- Anel nítido no chão
						DrawMarker(
							25,
							coords.x, coords.y, coords.z - 0.95,
							0.0, 0.0, 0.0,
							0.0, 0.0, 0.0,
							1.15, 1.15, 1.15,
							r, g, b, ringAlpha,
							false, false, 2, false, nil, nil, false
						)
						-- Aura volumétrica suave
						DrawMarker(
							1,
							coords.x, coords.y, coords.z - 0.98,
							0.0, 0.0, 0.0,
							0.0, 0.0, 0.0,
							1.1, 1.1, 1.8,
							r, g, b, math.floor(35 * pulseFactor),
							false, false, 2, false, nil, nil, false
						)
					end
				end
			end

			Wait(0)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- INICIALIZAÇÃO AUTOMÁTICA AO SPAWNAR / RECURSO INICIAR
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	Wait(2500)
	TriggerServerEvent("cda_outline:initPlayer")
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- LIMPEZA AO PARAR O RESOURCE
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("onResourceStop", function(resName)
	if GetCurrentResourceName() == resName then
		clearAllOutlines()
		closeNUI()
	end
end)

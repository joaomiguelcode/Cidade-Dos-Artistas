-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP FRAMEWORK
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- ACTIVE SESSIONS & CACHE
-----------------------------------------------------------------------------------------------------------------------------------------
-- Armazena jogadores autorizados com o sistema de contorno ATIVO
-- activeWatchers[source] = { passport = 1, group = "Admin", canView = { ["Admin"] = true, ... } }
local activeWatchers = {}

-----------------------------------------------------------------------------------------------------------------------------------------
-- HELPER: OBTÉM O GRUPO PRIMÁRIO DE UM JOGADOR
-----------------------------------------------------------------------------------------------------------------------------------------
local function getPlayerPrimaryGroup(passport)
	if not passport then return nil end

	for _, grpName in ipairs(Config.GroupPriority) do
		if Config.Groups[grpName] then
			if vRP.HasGroup(passport, grpName) or vRP.HasPermission(passport, grpName) then
				return grpName, Config.Groups[grpName]
			end
		end
	end

	return nil
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- HELPER: GERA MAPA DE GRUPOS QUE O JOGADOR PODE VISUALIZAR
-----------------------------------------------------------------------------------------------------------------------------------------
local function getAllowedViewGroups(passport)
	local canViewMap = {}
	local canViewList = {}
	local checked = {}

	for _, grpName in ipairs(Config.GroupPriority) do
		if Config.Groups[grpName] and (vRP.HasGroup(passport, grpName) or vRP.HasPermission(passport, grpName)) then
			local grpConfig = Config.Groups[grpName]
			if grpConfig.canView then
				for _, targetGrp in ipairs(grpConfig.canView) do
					if not checked[targetGrp] and Config.Groups[targetGrp] then
						checked[targetGrp] = true
						canViewMap[targetGrp] = true

						local rgb = Config.Groups[targetGrp].color or Config.DefaultColor
						local hex = string.format("#%02x%02x%02x", rgb[1], rgb[2], rgb[3])

						table.insert(canViewList, {
							name = targetGrp,
							label = Config.Groups[targetGrp].label or targetGrp,
							color = rgb,
							colorHex = hex
						})
					end
				end
			end
		end
	end

	return canViewMap, canViewList
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- HELPER: COMPUTA OS ALVOS ONLINE PERMITIDOS PARA UM OBSERVADOR ESPECÍFICO
-----------------------------------------------------------------------------------------------------------------------------------------
local function computeTargetsForWatcher(watcherSource, canViewMap)
	local targets = {}
	local onlinePlayers = GetPlayers()

	for _, targetSrcStr in ipairs(onlinePlayers) do
		local targetSrc = tonumber(targetSrcStr)
		if targetSrc then
			local targetPassport = vRP.Passport(targetSrc)
			if targetPassport then
				local targetGroup, grpConfig = getPlayerPrimaryGroup(targetPassport)
				-- Permite o alvo se estiver no canViewMap OU se for o próprio observador
				if targetGroup and (canViewMap[targetGroup] or targetSrc == watcherSource) then
					local identity = vRP.Identity(targetPassport) or {}
					local targetName = (identity.name or "Cidadão") .. " " .. (identity.name2 or "")

					targets[targetSrc] = {
						passport = targetPassport,
						group = targetGroup,
						label = grpConfig.label or targetGroup,
						color = grpConfig.color or Config.DefaultColor,
						name = targetName,
						isSelf = (targetSrc == watcherSource)
					}
				end
			end
		end
	end

	return targets
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- THREAD: SINCRONIZAÇÃO PERIÓDICA PARA OBSERVADORES ATIVOS
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		Wait(Config.ServerSyncInterval or 3000)

		-- Apenas executa se houver pelo menos um jogador com o outline ativado
		if next(activeWatchers) ~= nil then
			for watcherSrc, watcherData in pairs(activeWatchers) do
				-- Verifica se o jogador ainda está conectado
				if GetPlayerPing(watcherSrc) > 0 then
					-- Revalida permissão para evitar exploits caso tenha perdido o grupo
					local currentGrp = getPlayerPrimaryGroup(watcherData.passport)
					if currentGrp then
						local targets = computeTargetsForWatcher(watcherSrc, watcherData.canView)
						TriggerClientEvent("cda_outline:syncTargets", watcherSrc, targets)
					else
						-- Jogador perdeu o cargo/grupo enquanto o sistema estava ativo
						activeWatchers[watcherSrc] = nil
						TriggerClientEvent("cda_outline:syncTargets", watcherSrc, {})
						TriggerClientEvent("cda_outline:systemState", watcherSrc, false)
						TriggerClientEvent("Notify", watcherSrc, "vermelho", "Seu acesso ao sistema de Outline foi revogado.", 5000)
					end
				else
					activeWatchers[watcherSrc] = nil
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- EVENTO: SOLICITAÇÃO DE ABERTURA DA NUI
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("cda_outline:requestOpen")
AddEventHandler("cda_outline:requestOpen", function()
	local source = source
	local passport = vRP.Passport(source)
	if not passport then return end

	local primaryGroup, grpConfig = getPlayerPrimaryGroup(passport)
	if not primaryGroup then
		TriggerClientEvent("Notify", source, "vermelho", "Você não possui permissão para acessar o sistema de Outline.", 5000)
		return
	end

	local canViewMap, canViewList = getAllowedViewGroups(passport)
	local identity = vRP.Identity(passport) or {}
	local userName = (identity.name or "Cidadão") .. " " .. (identity.name2 or "")

	local isCurrentlyActive = (activeWatchers[source] ~= nil)
	local targetsCount = 0

	if isCurrentlyActive then
		local targets = computeTargetsForWatcher(source, canViewMap)
		for _ in pairs(targets) do targetsCount = targetsCount + 1 end
	end

	local payload = {
		active = isCurrentlyActive,
		user = {
			name = userName,
			id = passport,
			group = {
				name = primaryGroup,
				label = grpConfig.label or primaryGroup,
				badgeColor = grpConfig.badgeColor or "#ff2a42"
			}
		},
		canView = canViewList,
		stats = {
			targetsCount = targetsCount,
			groupsCount = #canViewList
		}
	}

	TriggerClientEvent("cda_outline:openNUI", source, payload)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- EVENTO: ATIVAR / DESATIVAR O SISTEMA (SERVER VALIDATED)
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("cda_outline:toggleSystem")
AddEventHandler("cda_outline:toggleSystem", function()
	local source = source
	local passport = vRP.Passport(source)
	if not passport then return end

	local primaryGroup = getPlayerPrimaryGroup(passport)
	if not primaryGroup then
		TriggerClientEvent("Notify", source, "vermelho", "Acesso negado: Você não possui permissão para usar este sistema.", 5000)
		return
	end

	local canViewMap, canViewList = getAllowedViewGroups(passport)

	if activeWatchers[source] then
		-- Desativar
		activeWatchers[source] = nil
		TriggerClientEvent("cda_outline:syncTargets", source, {})
		TriggerClientEvent("cda_outline:systemState", source, false)
		TriggerClientEvent("Notify", source, "amarelo", "Sistema de Outline <b>Desativado</b>.", 3500)
	else
		-- Ativar
		activeWatchers[source] = {
			passport = passport,
			group = primaryGroup,
			canView = canViewMap
		}

		-- Computa e envia imediatamente a lista inicial de alvos autorizados
		local targets = computeTargetsForWatcher(source, canViewMap)
		TriggerClientEvent("cda_outline:syncTargets", source, targets)
		TriggerClientEvent("cda_outline:systemState", source, true)
		TriggerClientEvent("Notify", source, "verde", "Sistema de Outline <b>Ativado</b>.", 3500)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- INICIALIZAÇÃO E AUTO-ATIVAÇÃO (SE CONFIGURADO)
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("cda_outline:initPlayer")
AddEventHandler("cda_outline:initPlayer", function()
	local source = source
	local passport = vRP.Passport(source)
	if not passport then return end

	local primaryGroup = getPlayerPrimaryGroup(passport)
	if primaryGroup and Config.AutoEnableOnStart then
		local canViewMap = getAllowedViewGroups(passport)
		activeWatchers[source] = {
			passport = passport,
			group = primaryGroup,
			canView = canViewMap
		}
		local targets = computeTargetsForWatcher(source, canViewMap)
		TriggerClientEvent("cda_outline:syncTargets", source, targets)
		TriggerClientEvent("cda_outline:systemState", source, true)
	end
end)

AddEventHandler("onResourceStart", function(resName)
	if GetCurrentResourceName() == resName and Config.AutoEnableOnStart then
		CreateThread(function()
			Wait(1000)
			for _, srcStr in ipairs(GetPlayers()) do
				local src = tonumber(srcStr)
				if src then
					local passport = vRP.Passport(src)
					if passport then
						local primaryGroup = getPlayerPrimaryGroup(passport)
						if primaryGroup then
							local canViewMap = getAllowedViewGroups(passport)
							activeWatchers[src] = {
								passport = passport,
								group = primaryGroup,
								canView = canViewMap
							}
							local targets = computeTargetsForWatcher(src, canViewMap)
							TriggerClientEvent("cda_outline:syncTargets", src, targets)
							TriggerClientEvent("cda_outline:systemState", src, true)
						end
					end
				end
			end
		end)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- LIMPEZA NA DESCONEXÃO DO JOGADOR
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("playerDropped", function()
	local source = source
	if activeWatchers[source] then
		activeWatchers[source] = nil
	end
end)


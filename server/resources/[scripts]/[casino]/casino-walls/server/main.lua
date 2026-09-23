-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP / CREATIVE INTEGRATION
-----------------------------------------------------------------------------------------------------------------------------------------
local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- STATE MANAGEMENT
-----------------------------------------------------------------------------------------------------------------------------------------
local PlayersInCasino = {}
local currentWallTheme = Config.AnimatedWallNormal or "CASINO_DIA_PL"

local ValidThemes = {
	["diamonds"] = "CASINO_DIA_PL",
	["skulls"] = "CASINO_HLW_PL",
	["snow"] = "CASINO_SNWFLK_PL",
	["confetti"] = "CASINO_WIN_PL",
	["win"] = "CASINO_WIN_PL",
	["CASINO_DIA_PL"] = "CASINO_DIA_PL",
	["CASINO_HLW_PL"] = "CASINO_HLW_PL",
	["CASINO_SNWFLK_PL"] = "CASINO_SNWFLK_PL",
	["CASINO_WIN_PL"] = "CASINO_WIN_PL"
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- NETWORK EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
-- Player entered casino area
RegisterNetEvent('chCasinoWall:server:enteredCasino')
AddEventHandler('chCasinoWall:server:enteredCasino', function()
	local source = source
	PlayersInCasino[source] = true

	-- Sync current wall theme to the player
	TriggerClientEvent('casino-walls:client:syncWallTheme', source, currentWallTheme)

	-- Welcome notification
	if Config.SendWelcomeMail then
		TriggerClientEvent("Notify", source, "azul", "<b>" .. (Config.WelcomeMailsender or "Cassino CDA") .. "</b><br>" .. (Config.WelcomeMailmessage or "Bem-vindo ao Cassino CDA!"), 7000)
	end
end)

-- Player exited casino area
RegisterNetEvent('chCasinoWall:server:exitedCasino')
AddEventHandler('chCasinoWall:server:exitedCasino', function()
	local source = source
	PlayersInCasino[source] = nil
end)

-- Fallback for qb-phone welcome mail
RegisterNetEvent('qb-phone:server:sendNewMail')
AddEventHandler('qb-phone:server:sendNewMail', function(mailData)
	local source = source
	if type(mailData) == "table" and mailData.message then
		TriggerClientEvent("Notify", source, "azul", "<b>" .. (mailData.sender or "Cassino CDA") .. "</b><br>" .. mailData.message, 7000)
	end
end)

-- Broadcast Big Win effect to casino walls
RegisterNetEvent('chCasinoWall:server:bigWin')
AddEventHandler('chCasinoWall:server:bigWin', function()
	TriggerClientEvent('chCasinoWall:bigWin', -1)
end)

RegisterNetEvent('casino-walls:server:bigWin')
AddEventHandler('casino-walls:server:bigWin', function()
	TriggerClientEvent('chCasinoWall:bigWin', -1)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT HANDLER
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('playerDropped', function()
	local source = source
	PlayersInCasino[source] = nil
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
exports('triggerBigWin', function()
	TriggerClientEvent('chCasinoWall:bigWin', -1)
end)

exports('getCasinoPlayerCount', function()
	local count = 0
	for _ in pairs(PlayersInCasino) do
		count = count + 1
	end
	return count
end)

exports('isPlayerInCasino', function(targetSource)
	return PlayersInCasino[targetSource] == true
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN COMMANDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('casinowin', function(source, args, rawCommand)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not Passport or not vRP.HasPermission(Passport, "Admin") then
			TriggerClientEvent("Notify", source, "vermelho", "Você não possui permissão para este comando.", 5000)
			return
		end
	end

	TriggerClientEvent('chCasinoWall:bigWin', -1)

	if source ~= 0 then
		TriggerClientEvent("Notify", source, "verde", "Efeito Big Win comemorativo acionado nos telões do cassino!", 5000)
	else
		print("[casino-walls] Efeito Big Win acionado.")
	end
end, false)

RegisterCommand('casinowall', function(source, args, rawCommand)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not Passport or not vRP.HasPermission(Passport, "Admin") then
			TriggerClientEvent("Notify", source, "vermelho", "Você não possui permissão para este comando.", 5000)
			return
		end
	end

	local themeChoice = args[1] and args[1]:lower()
	local targetTheme = ValidThemes[themeChoice]

	if not targetTheme then
		local msg = "Temas válidos: diamonds (padrão), skulls (halloween), snow (natal), confetti (comemoração)."
		if source ~= 0 then
			TriggerClientEvent("Notify", source, "amarelo", msg, 6000)
		else
			print("[casino-walls] " .. msg)
		end
		return
	end

	currentWallTheme = targetTheme
	TriggerClientEvent('casino-walls:client:syncWallTheme', -1, currentWallTheme)

	local feedback = "Tema dos telões do cassino alterado para: <b>" .. targetTheme .. "</b>."
	if source ~= 0 then
		TriggerClientEvent("Notify", source, "verde", feedback, 5000)
	else
		print("[casino-walls] " .. feedback)
	end
end, false)

RegisterCommand('casinocount', function(source, args, rawCommand)
	local count = 0
	for _ in pairs(PlayersInCasino) do
		count = count + 1
	end

	local msg = "Jogadores no interior do cassino no momento: <b>" .. count .. "</b>."
	if source ~= 0 then
		TriggerClientEvent("Notify", source, "azul", msg, 5000)
	else
		print("[casino-walls] " .. msg)
	end
end, false)

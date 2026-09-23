-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP / CREATIVE INTEGRATION
-----------------------------------------------------------------------------------------------------------------------------------------
local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- NETWORK EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
-- Show UI for a specific player
RegisterNetEvent('casinoUi:server:ShowUI')
AddEventHandler('casinoUi:server:ShowUI', function(targetSource, action, text)
	if not targetSource or targetSource <= 0 then targetSource = source end
	TriggerClientEvent('casinoUi:ShowUI', targetSource, action or 'show', text or '')
end)

-- Hide UI for a specific player
RegisterNetEvent('casinoUi:server:HideUI')
AddEventHandler('casinoUi:server:HideUI', function(targetSource)
	if not targetSource or targetSource <= 0 then targetSource = source end
	TriggerClientEvent('casinoUi:HideUI', targetSource)
end)

-- Broadcast UI to all players
RegisterNetEvent('casinoUi:server:BroadcastUI')
AddEventHandler('casinoUi:server:BroadcastUI', function(action, text)
	TriggerClientEvent('casinoUi:ShowUI', -1, action or 'show', text or '')
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVER EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawCasinoUi(targetSource, action, text)
	if not targetSource or targetSource <= 0 then
		TriggerClientEvent('casinoUi:ShowUI', -1, action or 'show', text or '')
	else
		TriggerClientEvent('casinoUi:ShowUI', targetSource, action or 'show', text or '')
	end
end

function HideCasinoUi(targetSource)
	if not targetSource or targetSource <= 0 then
		TriggerClientEvent('casinoUi:HideUI', -1)
	else
		TriggerClientEvent('casinoUi:HideUI', targetSource)
	end
end

function DrawCasinoUiAll(action, text)
	TriggerClientEvent('casinoUi:ShowUI', -1, action or 'show', text or '')
end

function HideCasinoUiAll()
	TriggerClientEvent('casinoUi:HideUI', -1)
end

exports('DrawCasinoUi', DrawCasinoUi)
exports('HideCasinoUi', HideCasinoUi)
exports('DrawCasinoUiAll', DrawCasinoUiAll)
exports('HideCasinoUiAll', HideCasinoUiAll)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN COMMANDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('casinoui', function(source, args, rawCommand)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not Passport or not vRP.HasPermission(Passport, "Admin") then
			TriggerClientEvent("Notify", source, "vermelho", "Você não possui permissão para este comando.", 5000)
			return
		end
	end

	local subCommand = args[1] and args[1]:lower()

	if subCommand == "show" then
		table.remove(args, 1)
		local message = table.concat(args, " ")
		if message == "" then
			message = "<strong>Cassino CDA</strong></p>Interface de teste ativa!"
		end
		if source ~= 0 then
			TriggerClientEvent('casinoUi:ShowUI', source, 'show', message)
			TriggerClientEvent("Notify", source, "verde", "Casino UI ativada na sua tela.", 4000)
		else
			print("[casinoUi] Uso via jogo: casinoui show <texto>")
		end
	elseif subCommand == "hide" then
		if source ~= 0 then
			TriggerClientEvent('casinoUi:HideUI', source)
			TriggerClientEvent("Notify", source, "amarelo", "Casino UI ocultada da sua tela.", 4000)
		else
			print("[casinoUi] Uso via jogo: casinoui hide")
		end
	else
		local msg = "Uso: /casinoui show <texto> ou /casinoui hide"
		if source ~= 0 then
			TriggerClientEvent("Notify", source, "amarelo", msg, 5000)
		else
			print("[casinoUi] " .. msg)
		end
	end
end, false)

RegisterCommand('casinouiall', function(source, args, rawCommand)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not Passport or not vRP.HasPermission(Passport, "Admin") then
			TriggerClientEvent("Notify", source, "vermelho", "Você não possui permissão para este comando.", 5000)
			return
		end
	end

	local subCommand = args[1] and args[1]:lower()

	if subCommand == "show" then
		table.remove(args, 1)
		local message = table.concat(args, " ")
		if message == "" then
			message = "<strong>Cassino CDA</strong></p>Aviso Global do Cassino!"
		end
		TriggerClientEvent('casinoUi:ShowUI', -1, 'show', message)
		if source ~= 0 then
			TriggerClientEvent("Notify", source, "verde", "Casino UI exibida para TODOS os jogadores.", 4000)
		else
			print("[casinoUi] Exibida para todos.")
		end
	elseif subCommand == "hide" then
		TriggerClientEvent('casinoUi:HideUI', -1)
		if source ~= 0 then
			TriggerClientEvent("Notify", source, "amarelo", "Casino UI ocultada para TODOS os jogadores.", 4000)
		else
			print("[casinoUi] Ocultada para todos.")
		end
	else
		local msg = "Uso: /casinouiall show <texto> ou /casinouiall hide"
		if source ~= 0 then
			TriggerClientEvent("Notify", source, "amarelo", msg, 5000)
		else
			print("[casinoUi] " .. msg)
		end
	end
end, false)

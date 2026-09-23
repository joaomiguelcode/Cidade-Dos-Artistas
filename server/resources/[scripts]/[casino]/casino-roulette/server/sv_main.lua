-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP / CREATIVE INTEGRATION
-----------------------------------------------------------------------------------------------------------------------------------------
local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- STATE MANAGEMENT
-----------------------------------------------------------------------------------------------------------------------------------------
local RulettTables = {}

for tableId, data in pairs(Config.RulettTables) do
	RulettTables[tableId] = {
		id = tableId,
		data = data,
		statusz = false,
		timeLeft = nil,
		chairs = {},  -- [chairId] = playerSource
		players = {}, -- [playerSource] = { chairId = x, chairData = y }
		bets = {}     -- array of { betId, betAmount, playerSrc, passport, chairId }
	}
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- AUXILIARY FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
local startTableCountdown
local spinRouletteWheel

local function countSeatedPlayers(tbl)
	local count = 0
	for _ in pairs(tbl.players) do
		count = count + 1
	end
	return count
end

local function checkBetWin(betId, winningNumber)
	-- Straight up bets on numbers 1 to 36 (pays 36x)
	if betId >= 1 and betId <= 36 then
		if tostring(betId) == winningNumber then
			return true, 36
		end
		return false, 0
	end

	-- Zero (pays 36x)
	if betId == 37 then
		if winningNumber == '0' then
			return true, 36
		end
		return false, 0
	end

	-- Double Zero (pays 36x)
	if betId == 38 then
		if winningNumber == '00' then
			return true, 36
		end
		return false, 0
	end

	-- RED (pays 2x)
	if betId == 39 then
		if RULETT_NUMBERS.Pirosak and RULETT_NUMBERS.Pirosak[winningNumber] then
			return true, 2
		end
		return false, 0
	end

	-- BLACK (pays 2x)
	if betId == 40 then
		if RULETT_NUMBERS.Feketek and RULETT_NUMBERS.Feketek[winningNumber] then
			return true, 2
		end
		return false, 0
	end

	-- EVEN (pays 2x)
	if betId == 41 then
		if RULETT_NUMBERS.Parosak and RULETT_NUMBERS.Parosak[winningNumber] then
			return true, 2
		end
		return false, 0
	end

	-- ODD (pays 2x)
	if betId == 42 then
		if RULETT_NUMBERS.Paratlanok and RULETT_NUMBERS.Paratlanok[winningNumber] then
			return true, 2
		end
		return false, 0
	end

	-- 1 to 18 (pays 2x)
	if betId == 43 then
		if RULETT_NUMBERS.to18 and RULETT_NUMBERS.to18[winningNumber] then
			return true, 2
		end
		return false, 0
	end

	-- 19 to 36 (pays 2x)
	if betId == 44 then
		if RULETT_NUMBERS.to36 and RULETT_NUMBERS.to36[winningNumber] then
			return true, 2
		end
		return false, 0
	end

	-- 1st 12 (pays 3x)
	if betId == 45 then
		if RULETT_NUMBERS.st12 and RULETT_NUMBERS.st12[winningNumber] then
			return true, 3
		end
		return false, 0
	end

	-- 2nd 12 (pays 3x)
	if betId == 46 then
		if RULETT_NUMBERS.sn12 and RULETT_NUMBERS.sn12[winningNumber] then
			return true, 3
		end
		return false, 0
	end

	-- 3rd 12 (pays 3x)
	if betId == 47 then
		if RULETT_NUMBERS.rd12 and RULETT_NUMBERS.rd12[winningNumber] then
			return true, 3
		end
		return false, 0
	end

	-- 2 to 1 (1st Column: 1, 4, 7... 34) (pays 3x)
	if betId == 48 then
		if RULETT_NUMBERS.ket_to_1 and RULETT_NUMBERS.ket_to_1[winningNumber] then
			return true, 3
		end
		return false, 0
	end

	-- 2 to 1 (2nd Column: 2, 5, 8... 35) (pays 3x)
	if betId == 49 then
		if RULETT_NUMBERS.ket_to_2 and RULETT_NUMBERS.ket_to_2[winningNumber] then
			return true, 3
		end
		return false, 0
	end

	-- 2 to 1 (3rd Column: 3, 6, 9... 36) (pays 3x)
	if betId == 50 then
		if RULETT_NUMBERS.ket_to_3 and RULETT_NUMBERS.ket_to_3[winningNumber] then
			return true, 3
		end
		return false, 0
	end

	return false, 0
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CALLBACKS
-----------------------------------------------------------------------------------------------------------------------------------------
lib.callback.register('roulette:server:ChipsAmount', function(source)
	local Passport = vRP.Passport(source)
	if not Passport then return 0 end
	return vRP.InventoryItemAmount(Passport, "casinochips") or 0
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- NETWORK EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
-- Sit down request
RegisterNetEvent('server_remote:rulett:taskSitDown')
AddEventHandler('server_remote:rulett:taskSitDown', function(rulettIndex, closestChairData)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	local tbl = RulettTables[rulettIndex]
	if not tbl then return end

	if not closestChairData or not closestChairData.chairId then return end
	local chairId = closestChairData.chairId

	if tbl.statusz then
		TriggerClientEvent("Notify", source, "amarelo", "Aguarde a rodada da roleta terminar para se sentar.", 5000)
		return
	end

	if tbl.chairs[chairId] and tbl.chairs[chairId] ~= source then
		TriggerClientEvent("Notify", source, "vermelho", "Este assento já está ocupado.", 5000)
		return
	end

	-- Assign chair
	tbl.chairs[chairId] = source
	tbl.players[source] = {
		chairId = chairId,
		chairData = closestChairData
	}

	TriggerClientEvent('client_callback:rulett:taskSitDown', source, rulettIndex, closestChairData)
end)

-- Open roulette and start session
RegisterNetEvent('casino:taskStartRoulette')
AddEventHandler('casino:taskStartRoulette', function(rulettIndex, chairId)
	local source = source
	local tbl = RulettTables[rulettIndex]
	if not tbl then return end

	TriggerClientEvent('client:casino:openRulett', source, rulettIndex)

	if not tbl.timeLeft and not tbl.statusz then
		startTableCountdown(rulettIndex)
	else
		TriggerClientEvent('client:rulett:updateStatusz', source, rulettIndex, tbl.timeLeft or 0, tbl.statusz)
		TriggerClientEvent('client:rulett:updateTableBets', source, rulettIndex, tbl.bets)
	end
end)

-- Stand up / Leave table
RegisterNetEvent('casino:rulett:notUsing')
AddEventHandler('casino:rulett:notUsing', function(rulettIndex)
	local source = source
	local tbl = RulettTables[rulettIndex]
	if not tbl then return end

	if tbl.players[source] then
		local chairId = tbl.players[source].chairId
		tbl.chairs[chairId] = nil
		tbl.players[source] = nil
	end
end)

-- Place Bet
RegisterNetEvent('casino:taskBetRulett')
AddEventHandler('casino:taskBetRulett', function(rulettIndex, aimingAtBet, currentBetAmount)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	local tbl = RulettTables[rulettIndex]
	if not tbl then return end

	if tbl.statusz then
		TriggerClientEvent("Notify", source, "vermelho", "As apostas já foram encerradas nesta rodada.", 5000)
		return
	end

	local pData = tbl.players[source]
	if not pData then return end

	aimingAtBet = tonumber(aimingAtBet)
	currentBetAmount = tonumber(currentBetAmount) or 0

	if not aimingAtBet or aimingAtBet < 1 or aimingAtBet > 50 then
		return
	end

	if currentBetAmount < tbl.data.minBet or currentBetAmount > tbl.data.maxBet then
		TriggerClientEvent("Notify", source, "vermelho", "Valor da aposta inválido para esta mesa. Mínimo: <b>" .. parseFormat(tbl.data.minBet) .. "</b> | Máximo: <b>" .. parseFormat(tbl.data.maxBet) .. "</b>.", 5000)
		return
	end

	local chips = vRP.InventoryItemAmount(Passport, "casinochips") or 0
	if chips < currentBetAmount then
		TriggerClientEvent("Notify", source, "vermelho", "Você não possui fichas suficientes.", 5000)
		return
	end

	if not vRP.TakeItem(Passport, "casinochips", currentBetAmount, true) then
		TriggerClientEvent("Notify", source, "vermelho", "Falha ao processar suas fichas.", 5000)
		return
	end

	table.insert(tbl.bets, {
		betId = aimingAtBet,
		betAmount = currentBetAmount,
		playerSrc = source,
		passport = Passport,
		chairId = pData.chairId
	})

	TriggerClientEvent('client:rulett:playBetAnim', source, pData.chairId)
	TriggerClientEvent('client:rulett:updateTableBets', -1, rulettIndex, tbl.bets)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ROUND & WHEEL ENGINE
-----------------------------------------------------------------------------------------------------------------------------------------
startTableCountdown = function(rulettIndex)
	local tbl = RulettTables[rulettIndex]
	if not tbl then return end

	tbl.timeLeft = Config.RouletteStart or 40

	Citizen.CreateThread(function()
		while tbl.timeLeft and tbl.timeLeft > 0 do
			TriggerClientEvent('client:rulett:updateStatusz', -1, rulettIndex, tbl.timeLeft, false)
			Citizen.Wait(1000)
			if tbl.timeLeft then
				tbl.timeLeft = tbl.timeLeft - 1
			end
		end

		tbl.timeLeft = 0
		tbl.statusz = true
		TriggerClientEvent('client:rulett:updateStatusz', -1, rulettIndex, 0, true)

		spinRouletteWheel(rulettIndex)
	end)
end

spinRouletteWheel = function(rulettIndex)
	local tbl = RulettTables[rulettIndex]
	if not tbl then return end

	-- Determine winning pocket
	local tickRate = Config.TestTicker or math.random(1, 38)
	local winningNumber = Config.rouletteSzamok[tickRate] or "0"

	-- Start the wheel spin on clients
	TriggerClientEvent('casino:rulett:startSpin', -1, rulettIndex, tostring(tickRate))

	-- Wait for the ball animation to settle in the slot (~16 seconds)
	Citizen.Wait(16000)

	-- Calculate results
	local playerResults = {}

	for _, bet in ipairs(tbl.bets) do
		local pSrc = bet.playerSrc
		if not playerResults[pSrc] then
			playerResults[pSrc] = {
				won = 0,
				betTotal = 0,
				chairId = bet.chairId,
				passport = bet.passport
			}
		end

		playerResults[pSrc].betTotal = playerResults[pSrc].betTotal + bet.betAmount

		local isWin, multiplier = checkBetWin(bet.betId, winningNumber)
		if isWin then
			local winAmount = bet.betAmount * multiplier
			playerResults[pSrc].won = playerResults[pSrc].won + winAmount
		end
	end

	-- Distribute payouts and trigger animations
	for pSrc, res in pairs(playerResults) do
		if res.won > 0 then
			vRP.GenerateItem(res.passport, "casinochips", res.won, true)
			TriggerClientEvent('client:rulett:playWinAnim', pSrc, res.chairId)
			TriggerClientEvent('sounds:Private', pSrc, 'cash', 0.5)
			TriggerClientEvent("Notify", pSrc, "verde", "Parabéns! Você ganhou <b>" .. parseFormat(res.won) .. "</b> fichas na Roleta! Número sorteado: <b>" .. winningNumber .. "</b>.", 8000)
		else
			TriggerClientEvent('client:rulett:playLossAnim', pSrc, res.chairId)
			TriggerClientEvent("Notify", pSrc, "vermelho", "Você não ganhou nesta rodada. Número sorteado: <b>" .. winningNumber .. "</b>.", 6000)
		end
	end

	-- Wait for dealer chip clearing animation (~6.5 seconds)
	Citizen.Wait(6500)

	-- Clear table bets
	tbl.bets = {}
	TriggerClientEvent('client:rulett:updateTableBets', -1, rulettIndex, tbl.bets)

	tbl.statusz = false
	tbl.timeLeft = nil

	-- Restart round if there are still players seated
	if countSeatedPlayers(tbl) > 0 then
		startTableCountdown(rulettIndex)
	else
		TriggerClientEvent('client:rulett:updateStatusz', -1, rulettIndex, 0, false)
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT HANDLER
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('playerDropped', function()
	local source = source
	for rulettIndex, tbl in pairs(RulettTables) do
		if tbl.players[source] then
			local chairId = tbl.players[source].chairId
			tbl.chairs[chairId] = nil
			tbl.players[source] = nil
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN COMMANDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rultick', function(source, args, rawCommand)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not Passport or not vRP.HasPermission(Passport, "Admin") then
			TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para este comando.", 5000)
			return
		end
	end

	local tick = tonumber(args[1])
	if tick and tick >= 1 and tick <= 38 then
		Config.TestTicker = tick
		local msg = "Roulette TestTicker definido para o slot: " .. tick .. " (Número: " .. Config.rouletteSzamok[tick] .. ")"
		if source == 0 then
			print("[casino-roulette] " .. msg)
		else
			TriggerClientEvent("Notify", source, "verde", msg, 6000)
		end
	else
		Config.TestTicker = nil
		local msg = "Roulette TestTicker resetado para o modo ALEATÓRIO."
		if source == 0 then
			print("[casino-roulette] " .. msg)
		else
			TriggerClientEvent("Notify", source, "amarelo", msg, 5000)
		end
	end
end, false)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP / CREATIVE INTEGRATION
-----------------------------------------------------------------------------------------------------------------------------------------
local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- STATE MANAGEMENT
-----------------------------------------------------------------------------------------------------------------------------------------
local PokerTables = {}

for tableId, data in pairs(Config.Pokers) do
	PokerTables[tableId] = {
		id = tableId,
		data = data,
		active = false,
		bettingTime = nil,
		chairs = {},       -- [chairId] = playerSource
		players = {},      -- [playerSource] = { source, passport, chairData, ante, pairPlus, play, cards, status }
		ServerCards = {},
		dealerHand = {}
	}
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- AUXILIARY FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
local startPokerRound
local function getPlayerTable(source)
	for tableId, tbl in pairs(PokerTables) do
		for chairId, occupant in pairs(tbl.chairs) do
			if occupant == source then
				return tableId, chairId
			end
		end
	end
	return nil, nil
end

local function generateShuffledDeck()
	local deck = {}
	for i = 1, 52 do
		deck[i] = i
	end
	for i = #deck, 2, -1 do
		local j = math.random(1, i)
		deck[i], deck[j] = deck[j], deck[i]
	end
	return deck
end

local function countTablePlayers(tbl)
	local count = 0
	for _, pData in pairs(tbl.players) do
		if pData.ante and pData.ante > 0 then
			count = count + 1
		end
	end
	return count
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CALLBACKS
-----------------------------------------------------------------------------------------------------------------------------------------
lib.callback.register('aquiverPoker:sitDown', function(source, arg1, arg2)
	local Passport = vRP.Passport(source)
	if not Passport then return false end

	local tableId = arg1
	local chairId = arg2

	-- Fallback handling in case parameters were shifted
	if not chairId and type(tableId) == "number" then
		chairId = tableId
		tableId = nil
	end

	if not tableId or not chairId then return false end

	local tbl = PokerTables[tableId]
	if not tbl then return false end

	-- Check if table is currently in an active hand
	if tbl.active then
		TriggerClientEvent("Notify", source, "amarelo", "Esta mesa está com uma rodada em andamento. Aguarde a finalização.", 5000)
		return false
	end

	-- Check if chair is taken
	if tbl.chairs[chairId] and tbl.chairs[chairId] ~= source then
		TriggerClientEvent("Notify", source, "vermelho", "Este assento já está ocupado.", 5000)
		return false
	end

	-- Vacate previous seat if seated elsewhere
	local prevTable, prevChair = getPlayerTable(source)
	if prevTable and PokerTables[prevTable] then
		PokerTables[prevTable].chairs[prevChair] = nil
		PokerTables[prevTable].players[source] = nil
	end

	-- Assign seat
	tbl.chairs[chairId] = source

	-- Send player's current chips count
	local chips = vRP.InventoryItemAmount(Passport, "casinochips") or 0
	TriggerClientEvent('aquiverPoker:updatePlayerChips', source, chips)

	return true
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- NETWORK EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
-- Stand up from table
RegisterNetEvent('aquiverPoker:standUp')
AddEventHandler('aquiverPoker:standUp', function(tableId, chairId)
	local source = source
	local tbl = PokerTables[tableId]
	if not tbl then return end

	if tbl.chairs[chairId] == source then
		tbl.chairs[chairId] = nil
	end

	if tbl.players[source] then
		if tbl.active then
			tbl.players[source].status = "folded"
			TriggerClientEvent('aquiverPoker:playerFoldCards', -1, source, tableId)
		else
			tbl.players[source] = nil
		end
	end
end)

-- Place Ante Bet
RegisterNetEvent('aquiverPoker:betPlayer')
AddEventHandler('aquiverPoker:betPlayer', function(tableId, activeChairData, currentBetInput)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	local tbl = PokerTables[tableId]
	if not tbl then return end

	if tbl.active then
		TriggerClientEvent("Notify", source, "vermelho", "As apostas já foram encerradas para esta rodada.", 5000)
		return
	end

	currentBetInput = tonumber(currentBetInput) or 0
	if currentBetInput < tbl.data.MinimumBet or currentBetInput > tbl.data.MaximumBet then
		TriggerClientEvent("Notify", source, "vermelho", "Valor da aposta inválido para esta mesa. Mínimo: <b>" .. parseFormat(tbl.data.MinimumBet) .. "</b> | Máximo: <b>" .. parseFormat(tbl.data.MaximumBet) .. "</b>.", 5000)
		return
	end

	local chips = vRP.InventoryItemAmount(Passport, "casinochips") or 0
	if chips < currentBetInput then
		TriggerClientEvent("Notify", source, "vermelho", "Você não possui fichas suficientes. Fichas necessárias: <b>" .. parseFormat(currentBetInput) .. "</b>.", 5000)
		return
	end

	if not vRP.TakeItem(Passport, "casinochips", currentBetInput, true) then
		TriggerClientEvent("Notify", source, "vermelho", "Falha ao debitar suas fichas.", 5000)
		return
	end

	-- Store Ante Bet
	tbl.players[source] = {
		source = source,
		passport = Passport,
		chairData = activeChairData,
		ante = currentBetInput,
		pairPlus = 0,
		play = 0,
		cards = {},
		status = "betting"
	}

	local remainingChips = vRP.InventoryItemAmount(Passport, "casinochips") or 0
	TriggerClientEvent('aquiverPoker:updatePlayerChips', source, remainingChips)
	TriggerClientEvent('aquiverPoker:playerBetAnim', source, currentBetInput)

	-- Start betting countdown if not already running
	if not tbl.bettingTime then
		tbl.bettingTime = Config.TimeLeftAfter or 15
		Citizen.CreateThread(function()
			while tbl.bettingTime and tbl.bettingTime > 0 do
				TriggerClientEvent('aquiverPoker:updateState', -1, tableId, true, tbl.bettingTime)
				Citizen.Wait(1000)
				if tbl.bettingTime then
					tbl.bettingTime = tbl.bettingTime - 1
				end
			end

			tbl.bettingTime = nil
			TriggerClientEvent('aquiverPoker:updateState', -1, tableId, false, 0)

			-- Start the poker round
			startPokerRound(tableId)
		end)
	end
end)

-- Place Pair Plus Bet
RegisterNetEvent('aquiverPoker:betPairPlusPlayer')
AddEventHandler('aquiverPoker:betPairPlusPlayer', function(tableId, currentBetInput)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	local tbl = PokerTables[tableId]
	if not tbl then return end

	if tbl.active or not tbl.players[source] or tbl.players[source].ante <= 0 then
		TriggerClientEvent("Notify", source, "vermelho", "Você precisa realizar a aposta Ante antes do Pair Plus.", 5000)
		return
	end

	if tbl.players[source].pairPlus > 0 then
		TriggerClientEvent("Notify", source, "amarelo", "Você já realizou a aposta Pair Plus para esta rodada.", 5000)
		return
	end

	currentBetInput = tonumber(currentBetInput) or 0
	if currentBetInput < tbl.data.MinimumBet or currentBetInput > tbl.data.MaximumBet then
		TriggerClientEvent("Notify", source, "vermelho", "Valor da aposta Pair Plus inválido para esta mesa.", 5000)
		return
	end

	local chips = vRP.InventoryItemAmount(Passport, "casinochips") or 0
	if chips < currentBetInput then
		TriggerClientEvent("Notify", source, "vermelho", "Você não possui fichas suficientes.", 5000)
		return
	end

	if not vRP.TakeItem(Passport, "casinochips", currentBetInput, true) then
		return
	end

	tbl.players[source].pairPlus = currentBetInput

	local remainingChips = vRP.InventoryItemAmount(Passport, "casinochips") or 0
	TriggerClientEvent('aquiverPoker:updatePlayerChips', source, remainingChips)
	TriggerClientEvent('aquiverPoker:playerPairPlusAnim', source, currentBetInput)
end)

-- Play Cards (Match Ante bet)
RegisterNetEvent('aquiverPoker:playCards')
AddEventHandler('aquiverPoker:playCards', function(tableId, playerBetted)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	local tbl = PokerTables[tableId]
	if not tbl or not tbl.active or not tbl.players[source] then return end

	local pData = tbl.players[source]
	if pData.status ~= "waiting_decision" then return end

	local playCost = pData.ante
	local chips = vRP.InventoryItemAmount(Passport, "casinochips") or 0
	if chips < playCost then
		TriggerClientEvent("Notify", source, "vermelho", "Você não tem fichas suficientes para Cobrir (Play). Sua mão foi desistida.", 6000)
		pData.status = "folded"
		TriggerClientEvent('aquiverPoker:playerFoldCards', -1, source, tableId)
		return
	end

	if not vRP.TakeItem(Passport, "casinochips", playCost, true) then
		pData.status = "folded"
		TriggerClientEvent('aquiverPoker:playerFoldCards', -1, source, tableId)
		return
	end

	pData.play = playCost
	pData.status = "played"

	local remainingChips = vRP.InventoryItemAmount(Passport, "casinochips") or 0
	TriggerClientEvent('aquiverPoker:updatePlayerChips', source, remainingChips)
	TriggerClientEvent('aquiverPoker:playerPlayCards', -1, source, tableId)
end)

-- Fold Cards (Forfeit hand)
RegisterNetEvent('aquiverPoker:foldCards')
AddEventHandler('aquiverPoker:foldCards', function(tableId)
	local source = source
	local tbl = PokerTables[tableId]
	if not tbl or not tbl.active or not tbl.players[source] then return end

	local pData = tbl.players[source]
	if pData.status == "waiting_decision" then
		pData.status = "folded"
		TriggerClientEvent('aquiverPoker:playerFoldCards', -1, source, tableId)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ROUND LOGIC & ENGINE
-----------------------------------------------------------------------------------------------------------------------------------------
startPokerRound = function(tableId)
	local tbl = PokerTables[tableId]
	if not tbl then return end

	local activePlayers = {}
	local activeCount = 0

	for pSrc, pData in pairs(tbl.players) do
		if pData.ante and pData.ante > 0 then
			activePlayers[pSrc] = pData
			activeCount = activeCount + 1
		end
	end

	if activeCount == 0 then
		tbl.active = false
		tbl.players = {}
		TriggerClientEvent('aquiverPoker:resetTable', -1, tableId)
		return
	end

	tbl.active = true

	-- Generate deck and deal cards
	local deck = generateShuffledDeck()
	local deckIdx = 1

	tbl.dealerHand = { deck[deckIdx], deck[deckIdx + 1], deck[deckIdx + 2] }
	deckIdx = deckIdx + 3

	tbl.ServerCards = {
		['dealer'] = { Hand = tbl.dealerHand }
	}

	for pSrc, pData in pairs(activePlayers) do
		pData.cards = { deck[deckIdx], deck[deckIdx + 1], deck[deckIdx + 2] }
		deckIdx = deckIdx + 3
		pData.status = "waiting_decision"

		tbl.ServerCards[pSrc] = {
			Hand = pData.cards,
			chairData = pData.chairData
		}
	end

	-- Broadcast cards to all clients
	TriggerClientEvent('aquiverPoker:updateCards', -1, tableId, tbl.ServerCards)

	-- Stage 1: Dealer anim
	TriggerClientEvent('aquiverPoker:Stage:1', -1, tableId)
	Citizen.Wait(4000)

	-- Stage 2: Deal to players
	TriggerClientEvent('aquiverPoker:Stage:2', -1, tableId)
	Citizen.Wait((activeCount * 3000) + 1500)

	-- Stage 3: Deal to dealer self
	TriggerClientEvent('aquiverPoker:Stage:3', -1, tableId)
	Citizen.Wait(4000)

	-- Stage 4: Watch cards / Decision phase
	TriggerClientEvent('aquiverPoker:Stage:4', -1, tableId)

	local decideTime = (Config.PlayerDecideTime or 15) * 10
	while decideTime > 0 do
		local allDecided = true
		for pSrc, pData in pairs(activePlayers) do
			if pData.status == "waiting_decision" then
				allDecided = false
				break
			end
		end

		if allDecided then
			break
		end

		Citizen.Wait(100)
		decideTime = decideTime - 1
	end

	-- Auto-fold any player who failed to decide in time
	for pSrc, pData in pairs(activePlayers) do
		if pData.status == "waiting_decision" then
			pData.status = "folded"
			TriggerClientEvent('aquiverPoker:playerFoldCards', -1, pSrc, tableId)
		end
	end

	Citizen.Wait(1000)

	-- Stage 5: Reveal player cards
	TriggerClientEvent('aquiverPoker:Stage:5', -1, tableId)
	Citizen.Wait((activeCount * 5000) + 2000)

	-- Stage 6: Reveal dealer cards
	TriggerClientEvent('aquiverPoker:Stage:6', -1, tableId)
	Citizen.Wait(9000)

	-- Evaluate outcomes and payouts
	local dealerHandValue = Config.getHandAllValues(tbl.dealerHand)
	local dealerQualifies = Config.canDealerPlay(dealerHandValue)

	for pSrc, pData in pairs(activePlayers) do
		local Passport = pData.passport

		if pData.status == "folded" then
			TriggerClientEvent('aquiverPoker:playerLost', pSrc, tableId)
		elseif pData.status == "played" then
			local playerHandValue = Config.getHandAllValues(pData.cards)
			local anteBonusMult = Config.GetAnteMultiplier(playerHandValue) or 0
			local pairPlusMult = Config.GetPairMultiplier(playerHandValue) or 0

			local totalPayout = 0

			-- 1. Pair Plus Bet (evaluated strictly by player's hand)
			if pData.pairPlus > 0 and pairPlusMult > 0 then
				totalPayout = totalPayout + (pData.pairPlus * (pairPlusMult + 1))
			end

			-- 2. Ante Bonus (paid regardless of dealer hand)
			if anteBonusMult > 0 then
				totalPayout = totalPayout + (pData.ante * anteBonusMult)
			end

			-- 3. Main Game (Ante + Play)
			if not dealerQualifies then
				-- Dealer did not qualify (less than Queen High)
				-- Ante pays 1:1, Play pushes (returned)
				totalPayout = totalPayout + (pData.ante * 2) + pData.play
				TriggerClientEvent('aquiverPoker:playerWin', pSrc, tableId)
				TriggerClientEvent("Notify", pSrc, "verde", "Dealer não qualificou! Aposta Ante pagou 1:1 e Play devolvida.", 7000)
			else
				-- Dealer qualifies
				if playerHandValue > dealerHandValue then
					-- Player beats Dealer: Ante 1:1, Play 1:1
					totalPayout = totalPayout + (pData.ante * 2) + (pData.play * 2)
					TriggerClientEvent('aquiverPoker:playerWin', pSrc, tableId)
					TriggerClientEvent("Notify", pSrc, "verde", "Parabéns! Você venceu a mão do Dealer!", 7000)
				elseif playerHandValue == dealerHandValue then
					-- Tie: Ante and Play push (returned)
					totalPayout = totalPayout + pData.ante + pData.play
					TriggerClientEvent('aquiverPoker:playerDraw', pSrc, tableId)
					TriggerClientEvent("Notify", pSrc, "amarelo", "Empate com o Dealer! Apostas devolvidas.", 7000)
				else
					-- Dealer wins: Ante and Play lost
					TriggerClientEvent('aquiverPoker:playerLost', pSrc, tableId)
					TriggerClientEvent("Notify", pSrc, "vermelho", "O Dealer venceu esta mão.", 6000)
				end
			end

			-- Deliver chip winnings
			if totalPayout > 0 then
				vRP.GenerateItem(Passport, "casinochips", totalPayout, true)
				TriggerClientEvent("sounds:Private", pSrc, "cash", 0.5)
			end

			local finalChips = vRP.InventoryItemAmount(Passport, "casinochips") or 0
			TriggerClientEvent('aquiverPoker:updatePlayerChips', pSrc, finalChips)
		end
	end

	-- Stage 7: Clear table
	TriggerClientEvent('aquiverPoker:Stage:7', -1, tableId)
	Citizen.Wait((activeCount * 4000) + 4000)

	-- Reset table
	TriggerClientEvent('aquiverPoker:resetTable', -1, tableId)

	tbl.active = false
	tbl.players = {}
	tbl.ServerCards = {}
	tbl.dealerHand = {}
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT HANDLER
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('playerDropped', function()
	local source = source
	for tableId, tbl in pairs(PokerTables) do
		for chairId, occupant in pairs(tbl.chairs) do
			if occupant == source then
				tbl.chairs[chairId] = nil
			end
		end

		if tbl.players[source] then
			if tbl.active then
				tbl.players[source].status = "folded"
				TriggerClientEvent('aquiverPoker:playerFoldCards', -1, source, tableId)
			else
				tbl.players[source] = nil
			end
		end
	end
end)

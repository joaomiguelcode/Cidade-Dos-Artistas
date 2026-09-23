-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP / CREATIVE INTEGRATION
-----------------------------------------------------------------------------------------------------------------------------------------
local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- DECK GENERATION & CARD VALUES
-----------------------------------------------------------------------------------------------------------------------------------------
local Suits = { "club", "dia", "hrt", "spd" }
local Ranks = { "02", "03", "04", "05", "06", "07", "08", "09", "10", "jack", "queen", "king", "ACE" }

local function generateShoe(deckCount)
	local shoe = {}
	local count = deckCount or 4
	for d = 1, count do
		for _, suit in ipairs(Suits) do
			for _, rank in ipairs(Ranks) do
				table.insert(shoe, suit .. "_" .. rank)
			end
		end
	end

	-- Fisher-Yates shuffle
	for i = #shoe, 2, -1 do
		local j = math.random(i)
		shoe[i], shoe[j] = shoe[j], shoe[i]
	end

	return shoe
end

local function cardValue(card)
	if not card then return 0 end
	if string.find(card, "ACE") then
		return 11
	end
	for i = 2, 10 do
		if string.find(card, tostring(i)) then
			return i
		end
	end
	return 10
end

local function handValue(hand)
	if not hand then return 0 end
	local sum = 0
	local numAces = 0

	for _, c in ipairs(hand) do
		local val = cardValue(c)
		sum = sum + val
		if string.find(c, "ACE") then
			numAces = numAces + 1
		end
	end

	while sum > 21 and numAces > 0 do
		sum = sum - 10
		numAces = numAces - 1
	end

	return sum
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- TABLE STATE MANAGEMENT
-----------------------------------------------------------------------------------------------------------------------------------------
local TableStates = {}

local function initializeTable(i)
	TableStates[i] = {
		index = i,
		players = {}, -- [chairId] = { source, passport, bet, hand, splitHand, hasBet, hasSplit }
		dealerHand = {},
		deck = generateShoe(4),
		stage = "idle",
		running = false,
		currentTurnChair = nil,
		lastMove = nil,
		timeLeft = 15
	}
end

-- Initialize all tables from coords.lua
CreateThread(function()
	Wait(500)
	if tables then
		for i = 1, #tables do
			initializeTable(i)
		end
	end
end)

local function getTablePlayerCount(tableIndex)
	local tbl = TableStates[tableIndex]
	if not tbl then return 0 end
	local count = 0
	for _, p in pairs(tbl.players) do
		if p and p.source then
			count = count + 1
		end
	end
	return count
end

local function getTableBettorCount(tableIndex)
	local tbl = TableStates[tableIndex]
	if not tbl then return 0 end
	local count = 0
	for _, p in pairs(tbl.players) do
		if p and p.hasBet and p.bet and p.bet > 0 then
			count = count + 1
		end
	end
	return count
end

local function drawCard(tableIndex)
	local tbl = TableStates[tableIndex]
	if #tbl.deck < 20 then
		tbl.deck = generateShoe(4)
	end
	return table.remove(tbl.deck)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- GAME LOOP THREAD FOR A TABLE
-----------------------------------------------------------------------------------------------------------------------------------------
local function runTableGame(tableIndex)
	local tbl = TableStates[tableIndex]
	if not tbl or tbl.running then return end
	tbl.running = true

	CreateThread(function()
		while tbl.running do
			-- Check if table has seated players
			if getTablePlayerCount(tableIndex) == 0 then
				tbl.running = false
				tbl.stage = "idle"
				break
			end

			-------------------------------------------------------------------------------------------------
			-- 1. BETTING PHASE
			-------------------------------------------------------------------------------------------------
			tbl.stage = "betting"
			tbl.dealerHand = {}
			for _, p in pairs(tbl.players) do
				p.hand = {}
				p.splitHand = {}
				p.hasBet = false
				p.bet = 0
			end

			TriggerClientEvent("BLACKJACK:RequestBets", -1, tableIndex)
			TriggerClientEvent("BLACKJACK:PlayDealerAnim", -1, tableIndex, "anim_casino_b@amb@casino@games@blackjack@dealer", "female_idle")

			tbl.timeLeft = 15
			while tbl.timeLeft > 0 do
				TriggerClientEvent("BLACKJACK:SyncTimer", -1, tbl.timeLeft)
				Wait(1000)
				tbl.timeLeft = tbl.timeLeft - 1
			end
			TriggerClientEvent("BLACKJACK:SyncTimer", -1, 0)

			-- Check if any players placed bets
			if getTableBettorCount(tableIndex) == 0 then
				Wait(2000)
			else
				-------------------------------------------------------------------------------------------------
				-- 2. DEALING PHASE
				-------------------------------------------------------------------------------------------------
				tbl.stage = "dealing"

				-- Round 1: Deal 1st card to each active player
				for chairId = 1, 4 do
					local p = tbl.players[chairId]
					if p and p.hasBet then
						local card = drawCard(tableIndex)
						table.insert(p.hand, card)
						TriggerClientEvent("BLACKJACK:GiveCard", -1, tableIndex, chairId, 1, card, false, false)
						TriggerClientEvent("BLACKJACK:PlayDealerAnim", -1, tableIndex, "anim_casino_b@amb@casino@games@blackjack@dealer", "deal_card_player_0" .. chairId)
						Wait(1500)
					end
				end

				-- Deal 1st card to dealer (face up)
				local dealerCard1 = drawCard(tableIndex)
				table.insert(tbl.dealerHand, dealerCard1)
				TriggerClientEvent("BLACKJACK:GiveCard", -1, tableIndex, 0, 1, dealerCard1, false, false)
				TriggerClientEvent("BLACKJACK:PlayDealerAnim", -1, tableIndex, "anim_casino_b@amb@casino@games@blackjack@dealer", "deal_card_self")
				TriggerClientEvent("BLACKJACK:UpdateDealerHand", -1, tableIndex, cardValue(dealerCard1))
				Wait(1500)

				-- Round 2: Deal 2nd card to each active player
				for chairId = 1, 4 do
					local p = tbl.players[chairId]
					if p and p.hasBet then
						local card = drawCard(tableIndex)
						table.insert(p.hand, card)
						TriggerClientEvent("BLACKJACK:GiveCard", -1, tableIndex, chairId, 2, card, false, false)
						TriggerClientEvent("BLACKJACK:PlayDealerAnim", -1, tableIndex, "anim_casino_b@amb@casino@games@blackjack@dealer", "deal_card_player_0" .. chairId)
						Wait(1500)
					end
				end

				-- Deal 2nd card to dealer (face down / flipped)
				local dealerCard2 = drawCard(tableIndex)
				table.insert(tbl.dealerHand, dealerCard2)
				TriggerClientEvent("BLACKJACK:GiveCard", -1, tableIndex, 0, 2, dealerCard2, true, false)
				TriggerClientEvent("BLACKJACK:PlayDealerAnim", -1, tableIndex, "anim_casino_b@amb@casino@games@blackjack@dealer", "deal_card_self_second_card")
				Wait(1500)

				-- Check dealer card for Ace or 10-value
				local firstVal = cardValue(dealerCard1)
				if firstVal >= 10 then
					TriggerClientEvent("BLACKJACK:DealerCheckCard", -1, tableIndex)
					Wait(2000)
				end

				-------------------------------------------------------------------------------------------------
				-- 3. PLAYER TURNS
				-------------------------------------------------------------------------------------------------
				tbl.stage = "player_turns"

				for chairId = 1, 4 do
					local p = tbl.players[chairId]
					if p and p.hasBet then
						tbl.currentTurnChair = chairId
						local currentVal = handValue(p.hand)

						-- Check natural Blackjack
						if currentVal == 21 and #p.hand == 2 then
							-- Natural blackjack, skip turn
							Wait(1000)
						else
							local turnOver = false
							while not turnOver and tbl.players[chairId] and tbl.players[chairId].hasBet do
								tbl.lastMove = nil
								TriggerClientEvent("BLACKJACK:RequestMove", p.source)

								-- Wait for player move or timeout (25 seconds)
								local timeout = 250
								while not tbl.lastMove and timeout > 0 do
									Wait(100)
									timeout = timeout - 1
									if not tbl.players[chairId] then break end
								end

								local move = tbl.lastMove or "stand"

								if move == "hit" then
									local card = drawCard(tableIndex)
									table.insert(p.hand, card)
									local hSize = #p.hand
									TriggerClientEvent("BLACKJACK:GiveCard", -1, tableIndex, chairId, hSize, card, false, false)
									TriggerClientEvent("BLACKJACK:PlayDealerAnim", -1, tableIndex, "anim_casino_b@amb@casino@games@blackjack@dealer", "deal_card_player_0" .. chairId)
									Wait(1500)

									if handValue(p.hand) >= 21 then
										turnOver = true
									end
								elseif move == "double" then
									local card = drawCard(tableIndex)
									table.insert(p.hand, card)
									local hSize = #p.hand
									TriggerClientEvent("BLACKJACK:GiveCard", -1, tableIndex, chairId, hSize, card, false, false)
									TriggerClientEvent("BLACKJACK:PlayDealerAnim", -1, tableIndex, "anim_casino_b@amb@casino@games@blackjack@dealer", "deal_card_player_0" .. chairId)
									Wait(1500)
									turnOver = true
								elseif move == "split" then
									-- Handle split hand
									local splitCard = table.remove(p.hand)
									table.insert(p.splitHand, splitCard)
									TriggerClientEvent("BLACKJACK:SplitHand", -1, tableIndex, chairId, 1, p.hand, p.splitHand)
									Wait(1500)

									-- Deal replacement card to first hand
									local card1 = drawCard(tableIndex)
									table.insert(p.hand, card1)
									TriggerClientEvent("BLACKJACK:GiveCard", -1, tableIndex, chairId, 2, card1, false, false)
									Wait(1000)

									-- Deal card to split hand
									local card2 = drawCard(tableIndex)
									table.insert(p.splitHand, card2)
									TriggerClientEvent("BLACKJACK:GiveCard", -1, tableIndex, chairId, 2, card2, false, true)
									Wait(1500)
									turnOver = true
								else
									-- Stand or timeout
									turnOver = true
								end
							end
						end
						tbl.currentTurnChair = nil
						Wait(1000)
					end
				end

				-------------------------------------------------------------------------------------------------
				-- 4. DEALER TURN
				-------------------------------------------------------------------------------------------------
				tbl.stage = "dealer_turn"

				-- Dealer turns over hidden card
				TriggerClientEvent("BLACKJACK:DealerTurnOverCard", -1, tableIndex)
				Wait(2000)
				TriggerClientEvent("BLACKJACK:UpdateDealerHand", -1, tableIndex, handValue(tbl.dealerHand))
				Wait(1000)

				-- Check if any non-busted players remain
				local anyAlive = false
				for _, p in pairs(tbl.players) do
					if p and p.hasBet and handValue(p.hand) <= 21 then
						anyAlive = true
						break
					end
				end

				if anyAlive then
					while handValue(tbl.dealerHand) < 17 do
						local card = drawCard(tableIndex)
						table.insert(tbl.dealerHand, card)
						TriggerClientEvent("BLACKJACK:GiveCard", -1, tableIndex, 0, #tbl.dealerHand, card, false, false)
						TriggerClientEvent("BLACKJACK:PlayDealerAnim", -1, tableIndex, "anim_casino_b@amb@casino@games@blackjack@dealer", "deal_card_self")
						TriggerClientEvent("BLACKJACK:UpdateDealerHand", -1, tableIndex, handValue(tbl.dealerHand))
						Wait(2000)
					end
				end

				-------------------------------------------------------------------------------------------------
				-- 5. RESOLUTION & PAYOUTS
				-------------------------------------------------------------------------------------------------
				tbl.stage = "resolving"
				local dealerTotal = handValue(tbl.dealerHand)

				for chairId = 1, 4 do
					local p = tbl.players[chairId]
					if p and p.hasBet and p.source then
						local playerTotal = handValue(p.hand)

						if playerTotal > 21 then
							-- Player Bust (Lost)
							TriggerClientEvent("BLACKJACK:GameEndReaction", p.source, "bad")
						elseif dealerTotal > 21 or playerTotal > dealerTotal then
							-- Player Win!
							local multiplier = 2.0
							if playerTotal == 21 and #p.hand == 2 and not (dealerTotal == 21 and #tbl.dealerHand == 2) then
								multiplier = 2.5 -- Natural Blackjack pays 3 to 2
							end

							local winnings = math.floor(p.bet * multiplier)
							vRP.GenerateItem(p.passport, "casinochips", winnings, true)
							TriggerClientEvent("sounds:Private", p.source, "cash", 0.5)
							TriggerClientEvent("BLACKJACK:GameEndReaction", p.source, "good")
						elseif playerTotal == dealerTotal then
							-- Push / Tie (Refund bet)
							vRP.GenerateItem(p.passport, "casinochips", p.bet, true)
							TriggerClientEvent("BLACKJACK:GameEndReaction", p.source, "impartial")
						else
							-- Dealer wins
							TriggerClientEvent("BLACKJACK:GameEndReaction", p.source, "bad")
						end
					end
				end

				Wait(4000)

				-------------------------------------------------------------------------------------------------
				-- 6. CARD & CHIP CLEANUP
				-------------------------------------------------------------------------------------------------
				for chairId = 1, 4 do
					TriggerClientEvent("BLACKJACK:RetrieveCardsWithAnim", -1, tableIndex, chairId)
					Wait(800)
				end
				TriggerClientEvent("BLACKJACK:RetrieveCardsWithAnim", -1, tableIndex, 0)
				Wait(1500)
			end

			Wait(2000)
		end
	end)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- NETWORK EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
-- Event: Player sat down
RegisterNetEvent("BLACKJACK:PlayerSatDown", function(tableIndex, chairIndex)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	local tIdx = tonumber(tableIndex)
	local cIdx = tonumber(chairIndex)
	if not tIdx or not cIdx then return end

	if not TableStates[tIdx] then
		initializeTable(tIdx)
	end

	TableStates[tIdx].players[cIdx] = {
		source = source,
		passport = Passport,
		bet = 0,
		hand = {},
		splitHand = {},
		hasBet = false
	}

	-- Start table thread if idle
	if not TableStates[tIdx].running then
		runTableGame(tIdx)
	end
end)

-- Event: Player stood up
RegisterNetEvent("BLACKJACK:PlayerSatUp", function(tableIndex)
	local source = source
	local tIdx = tonumber(tableIndex)
	if not tIdx or not TableStates[tIdx] then return end

	for chairId, p in pairs(TableStates[tIdx].players) do
		if p.source == source then
			TableStates[tIdx].players[chairId] = nil
			break
		end
	end
end)

-- Event: Player removed (dead or forced)
RegisterNetEvent("BLACKJACK:PlayerRemove", function(tableIndex)
	local source = source
	local tIdx = tonumber(tableIndex)
	if not tIdx or not TableStates[tIdx] then return end

	for chairId, p in pairs(TableStates[tIdx].players) do
		if p.source == source then
			TableStates[tIdx].players[chairId] = nil
			break
		end
	end
end)

-- Event: Check if player can afford bet
RegisterNetEvent("BLACKJACK:CheckPlayerBet", function(tableIndex, bet)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then
		TriggerClientEvent("BLACKJACK:BetReceived", source, false)
		return
	end

	local cleanBet = parseInt(bet)
	if cleanBet <= 0 then
		TriggerClientEvent("BLACKJACK:BetReceived", source, false)
		return
	end

	local chips = vRP.ItemAmount(Passport, "casinochips")
	if chips >= cleanBet then
		TriggerClientEvent("BLACKJACK:BetReceived", source, true)
	else
		TriggerClientEvent("BLACKJACK:BetReceived", source, false)
	end
end)

-- Event: Place player bet
RegisterNetEvent("BLACKJACK:SetPlayerBet", function(tableIndex, chairIndex, bet, selectedBet, isDouble, isSplit)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	local tIdx = tonumber(tableIndex)
	local cIdx = tonumber(chairIndex)
	local cleanBet = parseInt(bet)

	if not tIdx or not cIdx or cleanBet <= 0 then return end
	if not TableStates[tIdx] or not TableStates[tIdx].players[cIdx] then return end

	local player = TableStates[tIdx].players[cIdx]
	if player.source ~= source then return end

	-- Deduct chips
	if vRP.TakeItem(Passport, "casinochips", cleanBet, true) then
		if isDouble then
			player.bet = player.bet + cleanBet
		else
			player.bet = cleanBet
			player.hasBet = true
		end

		TriggerClientEvent("BLACKJACK:PlaceBetChip", -1, tIdx, cIdx, cleanBet, isDouble or false, isSplit or false)
	end
end)

-- Event: Player decision move
RegisterNetEvent("BLACKJACK:ReceivedMove", function(move)
	local source = source
	for _, tbl in pairs(TableStates) do
		if tbl.running and tbl.currentTurnChair then
			local p = tbl.players[tbl.currentTurnChair]
			if p and p.source == source then
				tbl.lastMove = move
				break
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- OX_LIB CALLBACK
-----------------------------------------------------------------------------------------------------------------------------------------
lib.callback.register("BLACKJACKKGV:server:blackChipsAmount", function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		return vRP.ItemAmount(Passport, "casinochips")
	end
	return 0
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER DROPPED CLEANUP
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("playerDropped", function()
	local source = source
	for _, tbl in pairs(TableStates) do
		for chairId, p in pairs(tbl.players) do
			if p.source == source then
				tbl.players[chairId] = nil
				if tbl.currentTurnChair == chairId then
					tbl.lastMove = "stand"
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP / CREATIVE INTEGRATION
-----------------------------------------------------------------------------------------------------------------------------------------
local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")

local ChipItem = "casinochips"

-----------------------------------------------------------------------------------------------------------------------------------------
-- COMPILED REWARDS & COMBO TIERS
-----------------------------------------------------------------------------------------------------------------------------------------
local CompiledRewards = {}
local WinCombos = {
	low = {},    -- 1.5x (Plums)
	medium = {}, -- 2.5x (Cherries), 5.0x (Melons)
	high = {},   -- 7.5x (Bells), 10.0x (Sevens)
	jackpot = {} -- 25.0x (Jackpot)
}

for combo, mult in pairs(Rewards) do
	local key = string.format("%d-%d-%d", combo[1], combo[2], combo[3])
	CompiledRewards[key] = mult

	if mult >= 25.0 then
		table.insert(WinCombos.jackpot, combo)
	elseif mult >= 7.5 then
		table.insert(WinCombos.high, combo)
	elseif mult >= 2.5 then
		table.insert(WinCombos.medium, combo)
	else
		table.insert(WinCombos.low, combo)
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- STATE MANAGEMENT
-----------------------------------------------------------------------------------------------------------------------------------------
local BusySlots = {}       -- [netID] = playerSource
local ActivePlayers = {}   -- [playerSource] = { netID, slotEntity, slotRef, loc1, loc2, loc3, sharpReels, isSpinning }

-----------------------------------------------------------------------------------------------------------------------------------------
-- AUXILIARY FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
local function getSlotReference(model)
	if SlotReferences[model] then
		return SlotReferences[model]
	end

	local signed = (model > 0x7FFFFFFF) and (model - 0x100000000) or model
	if SlotReferences[signed] then
		return SlotReferences[signed]
	end

	local unsigned = (model < 0) and (model + 0x100000000) or model
	if SlotReferences[unsigned] then
		return SlotReferences[unsigned]
	end

	for _, ref in pairs(SlotReferences) do
		return ref
	end
end

local function cleanupReels(playerData)
	if playerData and playerData.sharpReels then
		for _, ent in ipairs(playerData.sharpReels) do
			if DoesEntityExist(ent) then
				DeleteEntity(ent)
			end
		end
		playerData.sharpReels = {}
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- NETWORK EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
-- Event: Enter slot machine
RegisterNetEvent('dc-casino:slots:server:enter')
AddEventHandler('dc-casino:slots:server:enter', function(netID, ReelLocation1, ReelLocation2, ReelLocation3)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	if not netID then return end

	if BusySlots[netID] and BusySlots[netID] ~= source then
		TriggerClientEvent("Notify", source, "vermelho", "Esta máquina caça-níqueis já está em uso.", 5000)
		return
	end

	local slotEntity = NetworkGetEntityFromNetworkId(netID)
	if not DoesEntityExist(slotEntity) then
		return
	end

	local model = GetEntityModel(slotEntity)
	local slotRef = getSlotReference(model)
	if not slotRef then
		return
	end

	-- Free previous machine if player was seated elsewhere
	if ActivePlayers[source] then
		local prevNet = ActivePlayers[source].netID
		BusySlots[prevNet] = nil
		cleanupReels(ActivePlayers[source])
	end

	BusySlots[netID] = source
	ActivePlayers[source] = {
		netID = netID,
		slotEntity = slotEntity,
		slotRef = slotRef,
		loc1 = ReelLocation1,
		loc2 = ReelLocation2,
		loc3 = ReelLocation3,
		sharpReels = {},
		isSpinning = false
	}

	TriggerClientEvent('dc-casino:slots:client:enter', source)
end)

-- Event: Leave slot machine
RegisterNetEvent('dc-casino:slots:server:leave')
AddEventHandler('dc-casino:slots:server:leave', function()
	local source = source
	local pData = ActivePlayers[source]
	if pData then
		cleanupReels(pData)
		BusySlots[pData.netID] = nil
		ActivePlayers[source] = nil
	end
end)

-- Event: Spin reels
RegisterNetEvent('dc-casino:slots:server:spin')
AddEventHandler('dc-casino:slots:server:spin', function(ChosenBetAmount)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	local pData = ActivePlayers[source]
	if not pData or pData.isSpinning then return end

	ChosenBetAmount = tonumber(ChosenBetAmount) or 1
	local slotRef = pData.slotRef
	local bet = slotRef.betamounts[ChosenBetAmount] or slotRef.betamounts[1] or 50

	local chips = vRP.InventoryItemAmount(Passport, ChipItem) or 0
	if chips < bet then
		TriggerClientEvent("Notify", source, "vermelho", "Você não possui fichas suficientes. Aposta: <b>" .. parseFormat(bet) .. "</b> fichas.", 5000)
		return
	end

	if not vRP.TakeItem(Passport, ChipItem, bet, true) then
		TriggerClientEvent("Notify", source, "vermelho", "Falha ao processar suas fichas.", 5000)
		return
	end

	pData.isSpinning = true

	-- Delete previous sharp reels before spawning new ones
	cleanupReels(pData)

	-- RNG Outcome Roll
	local winRoll = math.random(1, 100)
	local isWin = (winRoll <= 35) -- 35% win rate

	local reelRewards = { 0, 0, 0 }
	local rewardMultiplier = 0.0

	if isWin then
		local tierRoll = math.random(1, 100)
		local chosenCombo = nil

		if tierRoll <= 2 and #WinCombos.jackpot > 0 then
			-- 2% of wins -> Jackpot (25x)
			chosenCombo = WinCombos.jackpot[math.random(1, #WinCombos.jackpot)]
		elseif tierRoll <= 12 and #WinCombos.high > 0 then
			-- 10% of wins -> High (7.5x - 10x)
			chosenCombo = WinCombos.high[math.random(1, #WinCombos.high)]
		elseif tierRoll <= 40 and #WinCombos.medium > 0 then
			-- 28% of wins -> Medium (2.5x - 5x)
			chosenCombo = WinCombos.medium[math.random(1, #WinCombos.medium)]
		elseif #WinCombos.low > 0 then
			-- 60% of wins -> Low (1.5x)
			chosenCombo = WinCombos.low[math.random(1, #WinCombos.low)]
		end

		if chosenCombo then
			reelRewards = { chosenCombo[1], chosenCombo[2], chosenCombo[3] }
			local key = string.format("%d-%d-%d", reelRewards[1], reelRewards[2], reelRewards[3])
			rewardMultiplier = CompiledRewards[key] or 1.5
		else
			reelRewards = { 1, 1, 1 }
			rewardMultiplier = 1.5
		end
	else
		-- Loss: pick reels that don't match any winning pattern
		repeat
			local r1 = math.random(0, 15)
			local r2 = math.random(0, 15)
			local r3 = math.random(0, 15)

			-- Near-miss chance: reels 1 and 2 match, reel 3 is a half-step
			if math.random(1, 100) <= 40 then
				r2 = r1
				r3 = (r1 + math.random(1, 14)) % 16 + 0.5
			end

			reelRewards = { r1, r2, r3 }
			local key = string.format("%d-%d-%d", math.floor(r1), math.floor(r2), math.floor(r3))
			rewardMultiplier = CompiledRewards[key] or 0.0
		until rewardMultiplier == 0.0
	end

	local spinTime = math.random(4000, 5500)

	-- Spawn reels
	local loc1 = pData.loc1
	local loc2 = pData.loc2
	local loc3 = pData.loc3

	local reelModel = slotRef.reela
	local blurryModel = slotRef.reelb

	local r1Obj = CreateObject(reelModel, loc1.x, loc1.y, loc1.z, true, true, false)
	local r2Obj = CreateObject(reelModel, loc2.x, loc2.y, loc2.z, true, true, false)
	local r3Obj = CreateObject(reelModel, loc3.x, loc3.y, loc3.z, true, true, false)

	local b1Obj = CreateObject(blurryModel, loc1.x, loc1.y, loc1.z, true, true, false)
	local b2Obj = CreateObject(blurryModel, loc2.x, loc2.y, loc2.z, true, true, false)
	local b3Obj = CreateObject(blurryModel, loc3.x, loc3.y, loc3.z, true, true, false)

	pData.sharpReels = { r1Obj, r2Obj, r3Obj }

	local r1Net = NetworkGetNetworkIdFromEntity(r1Obj)
	local r2Net = NetworkGetNetworkIdFromEntity(r2Obj)
	local r3Net = NetworkGetNetworkIdFromEntity(r3Obj)
	local b1Net = NetworkGetNetworkIdFromEntity(b1Obj)
	local b2Net = NetworkGetNetworkIdFromEntity(b2Obj)
	local b3Net = NetworkGetNetworkIdFromEntity(b3Obj)

	TriggerClientEvent('dc-casino:slots:client:spinreels', source, spinTime, reelRewards, b1Net, b2Net, b3Net, r1Net, r2Net, r3Net, rewardMultiplier)

	-- Wait for client spin animation to finish
	SetTimeout(spinTime + 800, function()
		if ActivePlayers[source] and ActivePlayers[source].isSpinning then
			ActivePlayers[source].isSpinning = false

			if rewardMultiplier > 0 then
				local winAmount = math.floor(bet * rewardMultiplier)
				vRP.GenerateItem(Passport, ChipItem, winAmount, true)
				TriggerClientEvent("sounds:Private", source, "cash", 0.5)
				TriggerClientEvent("Notify", source, "verde", "Parabéns! Você ganhou <b>" .. parseFormat(winAmount) .. "</b> fichas!", 6000)

				if rewardMultiplier >= 20.0 then
					local pName = (vRP.Identity and vRP.Identity(Passport) and (vRP.Identity(Passport).name .. " " .. vRP.Identity(Passport).name2)) or ("Cidadão #" .. Passport)
					TriggerClientEvent("chat:addMessage", -1, {
						color = { 255, 215, 0 },
						multiline = true,
						args = { "[CASSINO]", "O jogador " .. pName .. " (ID: " .. Passport .. ") acabou de acertar o JACKPOT (" .. rewardMultiplier .. "x) nos Caça-Níqueis!" }
					})
				end
			end
		end
	end)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT HANDLER
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('playerDropped', function()
	local source = source
	local pData = ActivePlayers[source]
	if pData then
		cleanupReels(pData)
		BusySlots[pData.netID] = nil
		ActivePlayers[source] = nil
	end
end)

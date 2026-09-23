-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP / CREATIVE
-----------------------------------------------------------------------------------------------------------------------------------------
local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- DEBOUNCE / ANTI-SPAM
-----------------------------------------------------------------------------------------------------------------------------------------
local ActionCooldown = {}

local function isCooldownActive(source)
	local now = os.time()
	if ActionCooldown[source] and now - ActionCooldown[source] < 1 then
		return true
	end
	ActionCooldown[source] = now
	return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- AUXILIARY FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
--- Check if player has casino membership or VIP pass
local function hasCasinoMembership(Passport)
	if not CasinoMemberConfig.RequireMembershipForChips then
		return true
	end

	local memberCount = vRP.ItemAmount(Passport, CasinoMemberConfig.MemberItem or "casino_member")
	if memberCount and memberCount > 0 then
		return true
	end

	local vipCount = vRP.ItemAmount(Passport, CasinoMemberConfig.VipItem or "casino_vip")
	if vipCount and vipCount > 0 then
		return true
	end

	return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- NETWORK EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
-- Event: Buy Casino Chips
RegisterNetEvent("casino:server:buyCasinoChip")
AddEventHandler("casino:server:buyCasinoChip", function(amount)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	if isCooldownActive(source) then
		TriggerClientEvent("Notify", source, "amarelo", "Aguarde um momento antes de realizar outra transação.", 3000)
		return
	end

	local cleanAmount = parseInt(amount)
	if cleanAmount <= 0 or cleanAmount > 1000000 then
		TriggerClientEvent("Notify", source, "vermelho", "Quantidade de fichas inválida.", 5000)
		return
	end

	-- Check casino membership
	if not hasCasinoMembership(Passport) then
		TriggerClientEvent("Notify", source, "vermelho", "Você precisa de um <b>Ingresso do Cassino</b> para poder comprar fichas.", 7000)
		return
	end

	local chipItem = CasinoMemberConfig.ChipItem or "casinochips"
	local buyPrice = CasinoMemberConfig.BuyPrice or 100
	local totalPrice = cleanAmount * buyPrice

	-- Check inventory weight
	local chipWeight = itemWeight(chipItem) * cleanAmount
	if vRP.InventoryWeight(Passport) + chipWeight > vRP.GetWeight(Passport) then
		TriggerClientEvent("Notify", source, "vermelho", "Mochila cheia! Você não possui espaço suficiente para carregar as fichas.", 6000)
		return
	end

	-- Process payment (cash in inventory first, then bank if enabled)
	local paid = false
	if vRP.PaymentFull(Passport, totalPrice) then
		paid = true
	elseif CasinoMemberConfig.AllowBankPayment and vRP.PaymentBank(Passport, totalPrice) then
		paid = true
	end

	if paid then
		vRP.GenerateItem(Passport, chipItem, cleanAmount, true)
		TriggerClientEvent("sounds:Private", source, "cash", 0.5)
		TriggerClientEvent("Notify", source, "verde", "Você comprou <b>" .. parseFormat(cleanAmount) .. "x Fichas</b> por <b>R$" .. parseFormat(totalPrice) .. "</b>.", 6000)
	else
		TriggerClientEvent("Notify", source, "vermelho", "Você não possui dinheiro suficiente. Total necessário: <b>R$" .. parseFormat(totalPrice) .. "</b>.", 6000)
	end
end)

-- Event: Sell Casino Chips
RegisterNetEvent("casino:server:sellCasinoChip")
AddEventHandler("casino:server:sellCasinoChip", function(amount)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	if isCooldownActive(source) then
		TriggerClientEvent("Notify", source, "amarelo", "Aguarde um momento antes de realizar outra transação.", 3000)
		return
	end

	local cleanAmount = parseInt(amount)
	if cleanAmount <= 0 or cleanAmount > 1000000 then
		TriggerClientEvent("Notify", source, "vermelho", "Quantidade de fichas inválida.", 5000)
		return
	end

	local chipItem = CasinoMemberConfig.ChipItem or "casinochips"
	local currentChips = vRP.ItemAmount(Passport, chipItem)

	if currentChips < cleanAmount then
		TriggerClientEvent("Notify", source, "vermelho", "Você não possui <b>" .. parseFormat(cleanAmount) .. "x Fichas</b> para trocar. Você possui: <b>" .. parseFormat(currentChips) .. "x</b>.", 6000)
		return
	end

	local sellPrice = CasinoMemberConfig.SellPrice or 80
	local totalReward = cleanAmount * sellPrice
	local currencyItem = CasinoMemberConfig.CurrencyItem or "dollars"

	-- Remove the chips from inventory
	if vRP.TakeItem(Passport, chipItem, cleanAmount, true) then
		local cashWeight = itemWeight(currencyItem) * totalReward
		-- If cash fits in inventory, give cash; otherwise deposit into bank
		if vRP.InventoryWeight(Passport) + cashWeight <= vRP.GetWeight(Passport) then
			vRP.GenerateItem(Passport, currencyItem, totalReward, true)
		else
			vRP.GiveBank(Passport, totalReward)
			TriggerClientEvent("Notify", source, "amarelo", "Mochila cheia! O pagamento de <b>R$" .. parseFormat(totalReward) .. "</b> foi creditado diretamente no seu banco.", 7000)
		end

		TriggerClientEvent("sounds:Private", source, "cash", 0.5)
		TriggerClientEvent("Notify", source, "verde", "Você trocou <b>" .. parseFormat(cleanAmount) .. "x Fichas</b> e recebeu <b>R$" .. parseFormat(totalReward) .. "</b>.", 6000)
	else
		TriggerClientEvent("Notify", source, "vermelho", "Ocorreu uma falha ao processar a troca de fichas. Tente novamente.", 5000)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- OX_LIB CALLBACKS FOR CASINO GAMES
-----------------------------------------------------------------------------------------------------------------------------------------
-- Universal callback for casino games querying player chips
lib.callback.register("casino:server:getChips", function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		return vRP.ItemAmount(Passport, CasinoMemberConfig.ChipItem or "casinochips")
	end
	return 0
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVER EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
exports("getChips", function(passport)
	if not passport then return 0 end
	return vRP.ItemAmount(passport, CasinoMemberConfig.ChipItem or "casinochips")
end)

exports("giveChips", function(passport, amount)
	local cleanAmount = parseInt(amount)
	if cleanAmount > 0 then
		vRP.GenerateItem(passport, CasinoMemberConfig.ChipItem or "casinochips", cleanAmount, true)
		return true
	end
	return false
end)

exports("takeChips", function(passport, amount)
	local cleanAmount = parseInt(amount)
	if cleanAmount > 0 then
		return vRP.TakeItem(passport, CasinoMemberConfig.ChipItem or "casinochips", cleanAmount, true)
	end
	return false
end)

exports("hasMembership", function(passport)
	return hasCasinoMembership(passport)
end)

-- Clean up cooldown table on disconnect
AddEventHandler("playerDropped", function()
	local source = source
	ActionCooldown[source] = nil
end)

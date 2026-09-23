-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP / CREATIVE INTEGRATION
-----------------------------------------------------------------------------------------------------------------------------------------
local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- STATE MANAGEMENT
-----------------------------------------------------------------------------------------------------------------------------------------
local isRolling = false
local activeSpinner = nil
local PlayerLastSpun = {}

-----------------------------------------------------------------------------------------------------------------------------------------
-- AUXILIARY FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
local function rollRandomPrize()
	local rnd = math.random(1, 1000)
	local chosenIndex = 20 -- default fallback
	local chosenPrize = Config.Prices[20]

	for index, prize in ipairs(Config.Prices) do
		if rnd >= prize.probability.a and rnd <= prize.probability.b then
			chosenIndex = index
			chosenPrize = prize
			break
		end
	end

	return chosenIndex, chosenPrize
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- NETWORK EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
-- Event: Request wheel spin
RegisterNetEvent("luckywheel:getwheel")
AddEventHandler("luckywheel:getwheel", function()
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	-- Check if wheel is already active
	if isRolling then
		TriggerClientEvent("Notify", source, "amarelo", "Aguarde a Roleta da Sorte parar de girar.", 5000)
		return
	end

	local now = os.time()

	-- Check daily spin limit
	if Config.LimitedSpins then
		if PlayerLastSpun[Passport] and now < (PlayerLastSpun[Passport] + 86400) then
			local remaining = (PlayerLastSpun[Passport] + 86400) - now
			local hours = math.floor(remaining / 3600)
			local minutes = math.floor((remaining % 3600) / 60)
			TriggerClientEvent("Notify", source, "amarelo", "Você já realizou seu giro diário gratuito. Próximo giro em: <b>" .. hours .. "h " .. minutes .. "m</b>.", 7000)
			return
		end
	else
		-- Paid spin
		local cost = Config.startingPrice or 15000
		local paid = false
		if vRP.PaymentFull(Passport, cost) then
			paid = true
		elseif vRP.PaymentBank(Passport, cost) then
			paid = true
		end

		if not paid then
			TriggerClientEvent("Notify", source, "vermelho", "Você não possui dinheiro suficiente para girar a roleta. Custo: <b>R$" .. parseFormat(cost) .. "</b>.", 6000)
			return
		end
	end

	-- Lock the wheel
	isRolling = true
	if Config.LimitedSpins then
		PlayerLastSpun[Passport] = now
	end

	-- Determine prize
	local prizeIndex, prizeData = rollRandomPrize()
	activeSpinner = {
		source = source,
		passport = Passport,
		index = prizeIndex,
		prize = prizeData
	}

	-- Trigger spin animation on player
	TriggerClientEvent("luckywheel:syncanim", source)

	-- Wait for player to approach and pull the wheel handle
	SetTimeout(2500, function()
		if isRolling and activeSpinner and activeSpinner.source == source then
			TriggerClientEvent("luckywheel:startroll", -1, source, prizeIndex, prizeData)
		end
	end)

	-- Safety timeout: in case client crashes or gets dropped mid-spin, unlock after 35 seconds
	SetTimeout(35000, function()
		if isRolling and activeSpinner and activeSpinner.source == source then
			isRolling = false
			activeSpinner = nil
			TriggerClientEvent("luckywheel:rollFinished", -1)
		end
	end)
end)

-- Event: Deliver prize after wheel stops
RegisterNetEvent("luckywheel:give")
AddEventHandler("luckywheel:give", function(playerServerId, clientPrize)
	local source = source
	local Passport = vRP.Passport(source)
	if not Passport then return end

	-- Anti-exploit check: ensure the caller is the verified active spinner
	if not activeSpinner or activeSpinner.source ~= source then
		return
	end

	local prize = activeSpinner.prize
	if not prize then return end

	if prize.type == "money" then
		vRP.GiveBank(Passport, prize.count)
		TriggerClientEvent("sounds:Private", source, "cash", 0.5)
		TriggerClientEvent("Notify", source, "verde", "Parabéns! Você ganhou <b>R$" .. parseFormat(prize.count) .. "</b> na Roleta da Sorte!", 8000)

	elseif prize.type == "item" then
		vRP.GenerateItem(Passport, prize.name, prize.count, true)
		TriggerClientEvent("sounds:Private", source, "cash", 0.5)
		TriggerClientEvent("Notify", source, "verde", "Parabéns! Você ganhou <b>" .. prize.count .. "x " .. (itemName(prize.name) or prize.name) .. "</b> na Roleta da Sorte!", 8000)

	elseif prize.type == "weapon" then
		vRP.GenerateItem(Passport, prize.name, prize.count, true)
		TriggerClientEvent("sounds:Private", source, "cash", 0.5)
		TriggerClientEvent("Notify", source, "verde", "Parabéns! Você ganhou <b>1x " .. (itemName(prize.name) or prize.name) .. "</b> na Roleta da Sorte!", 8000)

	elseif prize.type == "car" then
		local vehicleModel = Config.VehiclePrize or "corolla25"
		local plate = vRP.GeneratePlate()

		-- Register vehicle in player's garage
		vRP.Query("vehicles/addVehicles", {
			Passport = Passport,
			vehicle = vehicleModel,
			plate = plate,
			work = "false"
		})

		TriggerClientEvent("sounds:Private", source, "cash", 0.5)
		TriggerClientEvent("Notify", source, "verde", "INCRÍVEL! Você ganhou o <b>Veículo do Pódio (" .. vehicleModel:upper() .. ")</b> com a placa <b>" .. plate .. "</b>!", 12000)

		-- Server-wide announcement
		local playerName = (vRP.Identity and vRP.Identity(Passport) and (vRP.Identity(Passport).name .. " " .. vRP.Identity(Passport).name2)) or ("Cidadão #" .. Passport)
		TriggerClientEvent("chat:addMessage", -1, {
			color = { 255, 215, 0 },
			multiline = true,
			args = { "[CASSINO]", "O jogador " .. playerName .. " (ID: " .. Passport .. ") acabou de ganhar o carro do pódio (" .. vehicleModel:upper() .. ") na Roleta da Sorte!" }
		})
	end
end)

-- Event: Unlock wheel after spin completes
RegisterNetEvent("luckywheel:stoproll")
AddEventHandler("luckywheel:stoproll", function()
	local source = source
	if activeSpinner and activeSpinner.source == source then
		isRolling = false
		activeSpinner = nil
		TriggerClientEvent("luckywheel:rollFinished", -1)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT HANDLER
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("playerDropped", function()
	local source = source
	if activeSpinner and activeSpinner.source == source then
		isRolling = false
		activeSpinner = nil
		TriggerClientEvent("luckywheel:rollFinished", -1)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN COMMANDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("resetwheel", function(source, args, rawCommand)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not Passport or not vRP.HasPermission(Passport, "Admin") then
			TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para este comando.", 5000)
			return
		end
	end

	local targetPassport = parseInt(args[1])
	if targetPassport <= 0 then
		if source == 0 then
			print("[luckywheel] Uso: resetwheel <id>")
		else
			TriggerClientEvent("Notify", source, "amarelo", "Uso: /resetwheel <id>", 5000)
		end
		return
	end

	PlayerLastSpun[targetPassport] = nil

	if source ~= 0 then
		TriggerClientEvent("Notify", source, "verde", "Giro diário resetado com sucesso para o ID <b>" .. targetPassport .. "</b>.", 5000)
	else
		print("[luckywheel] Giro diário resetado para o ID " .. targetPassport .. ".")
	end
end, false)

RegisterCommand("resetwheelall", function(source, args, rawCommand)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not Passport or not vRP.HasPermission(Passport, "Admin") then
			TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para este comando.", 5000)
			return
		end
	end

	PlayerLastSpun = {}
	isRolling = false
	activeSpinner = nil
	TriggerClientEvent("luckywheel:rollFinished", -1)

	if source ~= 0 then
		TriggerClientEvent("Notify", source, "verde", "Giros da Roleta da Sorte resetados para TODOS os jogadores.", 6000)
	else
		print("[luckywheel] Todos os giros da Roleta da Sorte foram resetados.")
	end
end, false)

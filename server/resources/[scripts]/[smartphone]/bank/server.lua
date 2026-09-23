-----------------------------------------------------------------------------------------------------------------------------------------
-- DATABASE INITIALIZATION
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	exports.oxmysql:query([[
		CREATE TABLE IF NOT EXISTS `bank_accounts` (
			`id` INT AUTO_INCREMENT PRIMARY KEY,
			`passport` INT NOT NULL,
			`name` VARCHAR(100) NOT NULL,
			`type` VARCHAR(50) DEFAULT 'business',
			`balance` BIGINT DEFAULT 0,
			`image` TEXT DEFAULT NULL,
			`created_at` INT NOT NULL
		);
	]])

	exports.oxmysql:query([[
		CREATE TABLE IF NOT EXISTS `bank_pix` (
			`id` INT AUTO_INCREMENT PRIMARY KEY,
			`account_id` INT NOT NULL,
			`passport` INT NOT NULL,
			`key` VARCHAR(100) NOT NULL UNIQUE,
			`created_at` INT NOT NULL
		);
	]])

	exports.oxmysql:query([[
		CREATE TABLE IF NOT EXISTS `bank_history` (
			`id` INT AUTO_INCREMENT PRIMARY KEY,
			`account_id` INT NOT NULL,
			`type` VARCHAR(50) NOT NULL,
			`amount` BIGINT NOT NULL,
			`reason` VARCHAR(255) DEFAULT '',
			`payer_id` INT NOT NULL,
			`payer_name` VARCHAR(100) NOT NULL,
			`payee_id` INT NOT NULL,
			`payee_name` VARCHAR(100) NOT NULL,
			`created_at` INT NOT NULL
		);
	]])

	exports.oxmysql:query([[
		CREATE TABLE IF NOT EXISTS `bank_invoices` (
			`id` INT AUTO_INCREMENT PRIMARY KEY,
			`passport` INT NOT NULL,
			`issuer_passport` INT NOT NULL,
			`issuer_name` VARCHAR(100) NOT NULL,
			`amount` BIGINT NOT NULL,
			`reason` VARCHAR(255) NOT NULL,
			`paid` TINYINT(1) DEFAULT 0,
			`created_at` INT NOT NULL
		);
	]])

	exports.oxmysql:query([[
		CREATE TABLE IF NOT EXISTS `bank_crypto` (
			`id` INT AUTO_INCREMENT PRIMARY KEY,
			`passport` INT NOT NULL,
			`code` VARCHAR(20) NOT NULL,
			`amount` DOUBLE DEFAULT 0,
			UNIQUE KEY `passport_code` (`passport`, `code`)
		);
	]])
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- HELPER FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
local function recordHistory(accountId, transType, amount, reason, payerId, payerName, payeeId, payeeName)
	exports.oxmysql:insert([[
		INSERT INTO bank_history (account_id, type, amount, reason, payer_id, payer_name, payee_id, payee_name, created_at)
		VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
	]], { accountId, transType, amount, reason or "", payerId, payerName or "Banco", payeeId, payeeName or "Banco", os.time() })
end

local function formatFullName(identity)
	if not identity then return "Cidadão" end
	return (identity.name or "") .. " " .. (identity.name2 or "")
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUEST DISPATCHER (SERVER RPC)
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("bank:request")
AddEventHandler("bank:request", function(reqId, action, args)
	local src = source
	local passport = Framework.GetPassport(src)
	if not passport then
		TriggerClientEvent("bank:response", src, reqId, { __error = { type = "UNAUTHORIZED", errors = { message = "Cidadão não identificado" } } })
		return
	end

	args = args or {}
	local success = true
	local response = nil
	local identity = Framework.GetIdentity(passport)
	local playerName = formatFullName(identity)

	-- 1. IDENTIDADE
	if action == "get_identity" then
		response = {
			name = playerName,
			userId = passport
		}

	-- 2. VERIFICAÇÃO DE FATURAS
	elseif action == "has_invoices" then
		local count = exports.oxmysql:scalar_async("SELECT COUNT(*) FROM bank_invoices WHERE passport = ? AND paid = 0", { passport })
		response = (count and count > 0)

	-- 3. TAXA DE CRIPTO
	elseif action == "crypto_tax" then
		response = ServerConfig.cryptoTax or 2

	-- 4. LISTA DE CONTAS
	elseif action == "get_accounts" then
		local accounts = {}
		-- Conta Pessoal Principal
		table.insert(accounts, {
			id = passport,
			name = "Conta Pessoal",
			role = "ROLE_ADMIN",
			balance = Framework.GetBank(passport),
			image = nil,
			image_url = nil,
			owner = passport,
			user_id = passport,
			is_business = false,
			can_trade = true,
			type = "personal"
		})

		-- Contas Empresariais cadastradas
		local rows = exports.oxmysql:query_async("SELECT * FROM bank_accounts WHERE passport = ?", { passport })
		if rows then
			for _, row in ipairs(rows) do
				table.insert(accounts, {
					id = row.id,
					name = row.name,
					role = "ROLE_ADMIN",
					balance = parseInt(row.balance),
					image = row.image,
					image_url = row.image,
					owner = row.passport,
					user_id = row.passport,
					is_business = true,
					can_trade = true,
					type = row.type or "business"
				})
			end
		end
		response = accounts

	-- 5. DETALHES DE UMA CONTA
	elseif action == "get_account" then
		local accountId = tonumber(args[1]) or passport
		if accountId == passport then
			response = {
				id = passport,
				name = "Conta Pessoal",
				balance = Framework.GetBank(passport),
				image = nil,
				image_url = nil,
				owner = passport,
				user_id = passport,
				is_business = false,
				can_trade = true,
				role = "ROLE_ADMIN",
				type = "personal"
			}
		else
			local row = exports.oxmysql:single_async("SELECT * FROM bank_accounts WHERE id = ?", { accountId })
			if row then
				response = {
					id = row.id,
					name = row.name,
					balance = parseInt(row.balance),
					image = row.image,
					image_url = row.image,
					owner = row.passport,
					user_id = row.passport,
					is_business = true,
					can_trade = true,
					role = (row.passport == passport and "ROLE_ADMIN" or "ROLE_MEMBER"),
					type = row.type or "business"
				}
			else
				response = { __error = { type = "ACCOUNT_NOT_FOUND", errors = { id = "Conta inexistente" } } }
			end
		end

	-- 6. CRIAR CONTA EMPRESARIAL
	elseif action == "create_account" then
		local accName = tostring(args[1] or "Empresa")
		local accType = tostring(args[2] or "business")

		local userAccs = exports.oxmysql:scalar_async("SELECT COUNT(*) FROM bank_accounts WHERE passport = ?", { passport })
		if userAccs and userAccs >= (ServerConfig.maxAccountsPerPlayer or 3) then
			response = { __error = { type = "ACCOUNT_MAX", errors = { name = "Limite de contas atingido" } } }
		else
			local insertId = exports.oxmysql:insert_async("INSERT INTO bank_accounts (passport, name, type, balance, created_at) VALUES (?, ?, ?, 0, ?)", {
				passport, accName, accType, os.time()
			})
			response = {
				id = insertId,
				name = accName,
				balance = 0,
				image = nil,
				owner = passport,
				role = "ROLE_ADMIN",
				type = accType
			}
		end

	-- 7. DESTRUIR CONTA EMPRESARIAL
	elseif action == "destroy_account" then
		local accountId = tonumber(args[1])
		if not accountId or accountId == passport then
			response = { __error = { type = "UNAUTHORIZED", errors = { message = "Conta pessoal não pode ser excluída" } } }
		else
			local row = exports.oxmysql:single_async("SELECT * FROM bank_accounts WHERE id = ? AND passport = ?", { accountId, passport })
			if not row then
				response = { __error = { type = "ACCOUNT_NOT_FOUND", errors = { message = "Conta não encontrada" } } }
			elseif row.balance > 0 then
				response = { __error = { type = "ACCOUNT_NOT_EMPTY", errors = { message = "Saldo deve ser zero para excluir" } } }
			else
				exports.oxmysql:execute("DELETE FROM bank_accounts WHERE id = ?", { accountId })
				exports.oxmysql:execute("DELETE FROM bank_pix WHERE account_id = ?", { accountId })
				response = true
			end
		end

	-- 8. DEPÓSITO
	elseif action == "deposit" then
		local accountId = tonumber(args[1]) or passport
		local amount = parseInt(args[2])
		if amount <= 0 then
			response = { __error = { type = "INVALID_AMOUNT", errors = { amount = "Valor inválido" } } }
		elseif Framework.GetWallet(passport) < amount then
			response = { __error = { type = "INSUFFICIENT_FUNDS", errors = { amount = "Dinheiro insuficiente na carteira" } } }
		else
			if Framework.RemoveWallet(passport, amount) then
				if accountId == passport then
					Framework.GiveBank(passport, amount)
				else
					exports.oxmysql:execute("UPDATE bank_accounts SET balance = balance + ? WHERE id = ?", { amount, accountId })
				end
				recordHistory(accountId, "deposit", amount, "Depósito em Espécie", passport, playerName, accountId, "Depósito")
				response = true
			else
				response = { __error = { type = "SERVER_ERROR", errors = { amount = "Falha ao debitar dinheiro" } } }
			end
		end

	-- 9. SAQUE
	elseif action == "withdraw" then
		local accountId = tonumber(args[1]) or passport
		local amount = parseInt(args[2])
		if amount <= 0 then
			response = { __error = { type = "INVALID_AMOUNT", errors = { amount = "Valor inválido" } } }
		else
			local currentBalance = (accountId == passport) and Framework.GetBank(passport) or (exports.oxmysql:scalar_async("SELECT balance FROM bank_accounts WHERE id = ?", { accountId }) or 0)
			if currentBalance < amount then
				response = { __error = { type = "INSUFFICIENT_FUNDS", errors = { amount = "Saldo bancário insuficiente" } } }
			else
				local successDeduct = false
				if accountId == passport then
					successDeduct = Framework.RemoveBank(passport, amount)
				else
					exports.oxmysql:execute("UPDATE bank_accounts SET balance = balance - ? WHERE id = ?", { amount, accountId })
					successDeduct = true
				end

				if successDeduct then
					Framework.GiveWallet(passport, amount)
					recordHistory(accountId, "withdraw", amount, "Saque em Dinheiro", accountId, "Saque", passport, playerName)
					response = true
				else
					response = { __error = { type = "SERVER_ERROR", errors = { amount = "Erro ao processar saque" } } }
				end
			end
		end

	-- 10. TRANSFERÊNCIA BANCÁRIA
	elseif action == "transfer" then
		local accountId = tonumber(args[1]) or passport
		local amount = parseInt(args[2])
		local targetPassport = tonumber(args[3])

		if amount <= 0 then
			response = { __error = { type = "INVALID_AMOUNT", errors = { amount = "Valor inválido" } } }
		elseif targetPassport == passport and accountId == passport then
			response = { __error = { type = "SELF_TRANSFER", errors = { passport = "Destinatário não pode ser você mesmo" } } }
		else
			local targetIdentity = Framework.GetIdentity(targetPassport)
			if not targetIdentity or not targetIdentity.name then
				response = { __error = { type = "ACCOUNT_NOT_FOUND", errors = { passport = "Passaporte de destino não encontrado" } } }
			else
				local currentBalance = (accountId == passport) and Framework.GetBank(passport) or (exports.oxmysql:scalar_async("SELECT balance FROM bank_accounts WHERE id = ?", { accountId }) or 0)
				if currentBalance < amount then
					response = { __error = { type = "INSUFFICIENT_FUNDS", errors = { amount = "Saldo insuficiente" } } }
				else
					if accountId == passport then
						Framework.RemoveBank(passport, amount)
					else
						exports.oxmysql:execute("UPDATE bank_accounts SET balance = balance - ? WHERE id = ?", { amount, accountId })
					end

					Framework.GiveBank(targetPassport, amount)
					local targetName = formatFullName(targetIdentity)

					-- Registra no histórico do pagador e do recebedor
					recordHistory(accountId, "outcome", amount, "Transferência Bancária", passport, playerName, targetPassport, targetName)
					recordHistory(targetPassport, "income", amount, "Transferência Recebida", passport, playerName, targetPassport, targetName)

					-- Notifica o recebedor se estiver online
					local targetSrc = Framework.GetSource(targetPassport)
					if targetSrc then
						Framework.Notify(targetSrc, "verde", ("Você recebeu uma transferência de <b>R$%s</b> de <b>%s</b>."):format(amount, playerName))
					end
					response = true
				end
			end
		end

	-- 11. BUSCAR CHAVE PIX
	elseif action == "fetch_pix" then
		local key = tostring(args[1] or ""):gsub("%s+", "")
		local row = exports.oxmysql:single_async("SELECT passport FROM bank_pix WHERE `key` = ?", { key })
		if row then
			local ownerIdentity = Framework.GetIdentity(row.passport)
			response = {
				passport = row.passport,
				name = formatFullName(ownerIdentity)
			}
		else
			response = nil
		end

	-- 12. TRANSFERÊNCIA VIA PIX
	elseif action == "transfer_pix" then
		local accountId = tonumber(args[1]) or passport
		local amount = parseInt(args[2])
		local key = tostring(args[3] or ""):gsub("%s+", "")

		local pixRecord = exports.oxmysql:single_async("SELECT passport, account_id FROM bank_pix WHERE `key` = ?", { key })
		if not pixRecord then
			response = { __error = { type = "PIX_NOT_FOUND", errors = { key = "Chave PIX não cadastrada" } } }
		elseif pixRecord.passport == passport and accountId == pixRecord.account_id then
			response = { __error = { type = "SELF_TRANSFER", errors = { key = "Você não pode transferir para sua própria chave" } } }
		elseif amount <= 0 then
			response = { __error = { type = "INVALID_AMOUNT", errors = { amount = "Valor inválido" } } }
		else
			local currentBalance = (accountId == passport) and Framework.GetBank(passport) or (exports.oxmysql:scalar_async("SELECT balance FROM bank_accounts WHERE id = ?", { accountId }) or 0)
			if currentBalance < amount then
				response = { __error = { type = "INSUFFICIENT_FUNDS", errors = { amount = "Saldo insuficiente" } } }
			else
				if accountId == passport then
					Framework.RemoveBank(passport, amount)
				else
					exports.oxmysql:execute("UPDATE bank_accounts SET balance = balance - ? WHERE id = ?", { amount, accountId })
				end

				-- Credita no destino
				if pixRecord.account_id == pixRecord.passport then
					Framework.GiveBank(pixRecord.passport, amount)
				else
					exports.oxmysql:execute("UPDATE bank_accounts SET balance = balance + ? WHERE id = ?", { amount, pixRecord.account_id })
				end

				local targetIdentity = Framework.GetIdentity(pixRecord.passport)
				local targetName = formatFullName(targetIdentity)

				recordHistory(accountId, "outcome", amount, "Transferência PIX (" .. key .. ")", passport, playerName, pixRecord.passport, targetName)
				recordHistory(pixRecord.account_id, "income", amount, "PIX Recebido (" .. key .. ")", passport, playerName, pixRecord.passport, targetName)

				local targetSrc = Framework.GetSource(pixRecord.passport)
				if targetSrc then
					Framework.Notify(targetSrc, "verde", ("Você recebeu um PIX de <b>R$%s</b> de <b>%s</b>."):format(amount, playerName))
				end
				response = true
			end
		end

	-- 13. CRIAR CHAVE PIX
	elseif action == "create_pix" then
		local accountId = tonumber(args[1]) or passport
		local key = tostring(args[2] or ""):gsub("%s+", "")

		if #key < 3 then
			response = { __error = { type = "INVALID_LENGTH", errors = { key = "Chave muito curta" } } }
		else
			local exists = exports.oxmysql:scalar_async("SELECT COUNT(*) FROM bank_pix WHERE `key` = ?", { key })
			if exists and exists > 0 then
				response = { __error = { type = "PIX_ALREADY_USED", errors = { key = "Esta chave PIX já está em uso" } } }
			else
				local countKeys = exports.oxmysql:scalar_async("SELECT COUNT(*) FROM bank_pix WHERE account_id = ?", { accountId })
				if countKeys and countKeys >= (ServerConfig.maxPixKeys or 5) then
					response = { __error = { type = "PIX_LIMIT_REACHED", errors = { key = "Limite máximo de chaves cadastradas" } } }
				else
					local now = os.time()
					exports.oxmysql:insert("INSERT INTO bank_pix (account_id, passport, `key`, created_at) VALUES (?, ?, ?, ?)", {
						accountId, passport, key, now
					})
					response = { key = key, created_at = now }
				end
			end
		end

	-- 14. REMOVER CHAVE PIX
	elseif action == "destroy_pix" then
		local accountId = tonumber(args[1]) or passport
		local key = tostring(args[2] or ""):gsub("%s+", "")
		exports.oxmysql:execute("DELETE FROM bank_pix WHERE account_id = ? AND `key` = ?", { accountId, key })
		response = true

	-- 15. LISTAR CHAVES PIX
	elseif action == "pix" then
		local accountId = tonumber(args[1]) or passport
		local rows = exports.oxmysql:query_async("SELECT `key`, created_at FROM bank_pix WHERE account_id = ?", { accountId })
		response = rows or {}

	-- 16. EXTRATO / HISTÓRICO
	elseif action == "history" then
		local accountId = tonumber(args[1]) or passport
		local rows = exports.oxmysql:query_async("SELECT * FROM bank_history WHERE account_id = ? ORDER BY id DESC LIMIT 50", { accountId })
		response = rows or {}

	-- 17. HISTÓRICO DE PIX
	elseif action == "history_pix" then
		local accountId = tonumber(args[1]) or passport
		local rows = exports.oxmysql:query_async("SELECT * FROM bank_history WHERE account_id = ? AND reason LIKE '%PIX%' ORDER BY id DESC LIMIT 30", { accountId })
		response = rows or {}

	-- 18. MULTAS
	elseif action == "fines" then
		local fineTotal = Framework.GetFines(passport)
		if fineTotal > 0 then
			response = {
				{
					id = 1,
					amount = fineTotal,
					reason = "Multas de Trânsito / Judiciais",
					interest_fee = 0
				}
			}
		else
			response = {}
		end

	-- 19. PAGAR MULTAS
	elseif action == "pay_fine" then
		local fineTotal = Framework.GetFines(passport)
		local currentBalance = Framework.GetBank(passport)
		if fineTotal <= 0 then
			response = true
		elseif currentBalance < fineTotal then
			response = { __error = { type = "INSUFFICIENT_FUNDS", errors = { message = "Saldo insuficiente para quitar multas" } } }
		else
			if Framework.RemoveBank(passport, fineTotal) then
				Framework.RemoveFine(passport, fineTotal)
				recordHistory(passport, "fine", fineTotal, "Pagamento de Multas", passport, playerName, 0, "Polícia Rodoviária / DETRAN")
				response = true
			else
				response = { __error = { type = "SERVER_ERROR", errors = { message = "Erro ao debitar pagamento de multas" } } }
			end
		end

	-- 20. APLICAR MULTA
	elseif action == "create_fine" then
		local targetPassport = tonumber(args[1])
		local amount = parseInt(args[2])
		local reason = tostring(args[3] or "Infração de Trânsito")

		local isCop = false
		for _, perm in ipairs(ServerConfig.policePermissions) do
			if Framework.HasPermission(passport, perm) then
				isCop = true
				break
			end
		end

		if not isCop then
			response = { __error = { type = "UNAUTHORIZED", errors = { message = "Sem permissão para emitir multas" } } }
		elseif targetPassport == passport then
			response = { __error = { type = "SELF_FINE", errors = { message = "Você não pode multar a si mesmo" } } }
		elseif amount <= 0 then
			response = { __error = { type = "INVALID_AMOUNT", errors = { amount = "Valor de multa inválido" } } }
		else
			Framework.AddFine(targetPassport, amount)
			local targetSrc = Framework.GetSource(targetPassport)
			if targetSrc then
				Framework.Notify(targetSrc, "amarelo", ("Você foi multado em <b>R$%s</b> por <b>%s</b>. Motivo: %s"):format(amount, playerName, reason))
			end
			response = true
		end

	-- 21. FATURAS (COBRANÇAS)
	elseif action == "invoices" then
		local showPaid = (args[1] == true)
		local query = showPaid and "SELECT * FROM bank_invoices WHERE passport = ? ORDER BY id DESC LIMIT 50" or "SELECT * FROM bank_invoices WHERE passport = ? AND paid = 0 ORDER BY id DESC LIMIT 50"
		local rows = exports.oxmysql:query_async(query, { passport })
		local list = {}
		if rows then
			for _, r in ipairs(rows) do
				table.insert(list, {
					id = r.id,
					amount = parseInt(r.amount),
					value = parseInt(r.amount),
					reason = r.reason,
					issuer_name = r.issuer_name,
					paid = (r.paid == 1),
					created_at = r.created_at
				})
			end
		end
		response = list

	-- 22. EMITIR COBRANÇA
	elseif action == "create_invoice" then
		local targetPassport = tonumber(args[1])
		local amount = parseInt(args[2])
		local reason = tostring(args[3] or "Cobrança de Serviços")

		if targetPassport == passport then
			response = { __error = { type = "SELF_TRANSFER", errors = { message = "Não é possível cobrar a si próprio" } } }
		elseif amount <= 0 then
			response = { __error = { type = "INVALID_AMOUNT", errors = { amount = "Valor inválido" } } }
		else
			local targetIdentity = Framework.GetIdentity(targetPassport)
			if not targetIdentity or not targetIdentity.name then
				response = { __error = { type = "ACCOUNT_NOT_FOUND", errors = { message = "Destinatário não encontrado" } } }
			else
				exports.oxmysql:insert("INSERT INTO bank_invoices (passport, issuer_passport, issuer_name, amount, reason, paid, created_at) VALUES (?, ?, ?, ?, ?, 0, ?)", {
					targetPassport, passport, playerName, amount, reason, os.time()
				})
				local targetSrc = Framework.GetSource(targetPassport)
				if targetSrc then
					Framework.Notify(targetSrc, "amarelo", ("Você recebeu uma cobrança de <b>R$%s</b> de <b>%s</b>."):format(amount, playerName))
				end
				response = true
			end
		end

	-- 23. PAGAR FATURA
	elseif action == "pay_invoice" then
		local invoiceId = tonumber(args[1])
		local row = exports.oxmysql:single_async("SELECT * FROM bank_invoices WHERE id = ? AND passport = ? AND paid = 0", { invoiceId, passport })
		if not row then
			response = { __error = { type = "INVOICE_NOT_FOUND", errors = { message = "Fatura já paga ou inexistente" } } }
		else
			local currentBalance = Framework.GetBank(passport)
			if currentBalance < row.amount then
				response = { __error = { type = "INSUFFICIENT_FUNDS", errors = { message = "Saldo insuficiente para quitar fatura" } } }
			else
				if Framework.RemoveBank(passport, row.amount) then
					Framework.GiveBank(row.issuer_passport, row.amount)
					exports.oxmysql:execute("UPDATE bank_invoices SET paid = 1 WHERE id = ?", { invoiceId })

					recordHistory(passport, "outcome", row.amount, "Pagamento de Fatura: " .. row.reason, passport, playerName, row.issuer_passport, row.issuer_name)
					recordHistory(row.issuer_passport, "income", row.amount, "Fatura Recebida: " .. row.reason, passport, playerName, row.issuer_passport, row.issuer_name)

					local issuerSrc = Framework.GetSource(row.issuer_passport)
					if issuerSrc then
						Framework.Notify(issuerSrc, "verde", ("A fatura no valor de <b>R$%s</b> foi paga por <b>%s</b>."):format(row.amount, playerName))
					end
					response = true
				else
					response = { __error = { type = "SERVER_ERROR", errors = { message = "Falha ao processar pagamento" } } }
				end
			end
		end

	-- 24. INVESTIMENTOS
	elseif action == "investments" then
		local list = {}
		for _, inv in ipairs(ServerConfig.investments or {}) do
			table.insert(list, {
				code = inv.code,
				name = inv.name,
				minimum = inv.minimum or 100,
				maximum = inv.maximum or 1000000,
				description = inv.description or "",
				pivot = {
					amount = 0,
					revenue = 0,
					balance = 0,
					blocked = 0
				}
			})
		end
		response = list

	-- 24.1 APLICAR INVESTIMENTO
	elseif action == "add_investment" then
		local accountId = tonumber(args[1]) or passport
		local code = tostring(args[2] or "")
		local amount = parseInt(args[3])
		local currentBalance = (accountId == passport) and Framework.GetBank(passport) or (exports.oxmysql:scalar_async("SELECT balance FROM bank_accounts WHERE id = ?", { accountId }) or 0)
		if amount <= 0 or currentBalance < amount then
			response = { __error = { type = "INSUFFICIENT_FUNDS", errors = { amount = "Saldo insuficiente" } } }
		else
			if accountId == passport then
				Framework.RemoveBank(passport, amount)
			else
				exports.oxmysql:execute("UPDATE bank_accounts SET balance = balance - ? WHERE id = ?", { amount, accountId })
			end
			recordHistory(accountId, "outcome", amount, "Aplicação em Investimento (" .. code .. ")", passport, playerName, 0, "Investimentos")
			response = true
		end

	-- 24.2 RESGATAR INVESTIMENTO
	elseif action == "withdraw_investment" then
		local accountId = tonumber(args[1]) or passport
		local code = tostring(args[2] or "")
		local amount = parseInt(args[3])
		if amount <= 0 then
			response = { __error = { type = "INVALID_AMOUNT", errors = { amount = "Valor inválido" } } }
		else
			if accountId == passport then
				Framework.GiveBank(passport, amount)
			else
				exports.oxmysql:execute("UPDATE bank_accounts SET balance = balance + ? WHERE id = ?", { amount, accountId })
			end
			recordHistory(accountId, "income", amount, "Resgate de Investimento (" .. code .. ")", 0, "Investimentos", passport, playerName)
			response = true
		end

	-- 25. CRIPTOMOEDAS
	elseif action == "cryptos" then
		local balances = {}
		local prices = {}
		local fluctuation = {}

		local defaultCryptos = {
			{ code = "BTC", name = "Bitcoin", price = 345000.00, variation = 1.8 },
			{ code = "ETH", name = "Ethereum", price = 18500.00, variation = -0.5 },
			{ code = "BCH", name = "Bitcoin Cash", price = 2400.00, variation = 0.2 },
			{ code = "XMR", name = "Monero", price = 950.00, variation = 3.1 },
			{ code = "BNB", name = "Binance Coin", price = 3200.00, variation = -1.2 }
		}
		local cryptoList = ServerConfig.cryptos or defaultCryptos

		for _, c in ipairs(cryptoList) do
			local userCryptoAmount = exports.oxmysql:scalar_async("SELECT amount FROM bank_crypto WHERE passport = ? AND code = ?", { passport, c.code }) or 0.0
			balances[c.code] = tonumber(userCryptoAmount) or 0.0
			prices[c.code] = tonumber(c.price) or 100.0

			local p = tonumber(c.price) or 100.0
			local var = ((tonumber(c.variation) or 1.0) / 100)
			fluctuation[c.code] = {
				p / (1 + (var * 0.3)),
				p / (1 + var),
				p / (1 + (var * 2.0))
			}
		end

		response = {
			balances = balances,
			prices = prices,
			fluctuation = fluctuation
		}

	-- 25.1 COMPRA E VENDA DE CRIPTO
	elseif action == "trade_crypto" then
		local accountId = tonumber(args[1]) or passport
		local fromCurr = tostring(args[2] or "BRL")
		local toCurr = tostring(args[3] or "BTC")
		local amount = tonumber(args[4]) or 0

		if amount <= 0 then
			response = { __error = { type = "INVALID_AMOUNT", errors = { amount = "Valor inválido" } } }
		else
			local cryptoPrices = {}
			local defaultCryptos = {
				{ code = "BTC", price = 345000.00 },
				{ code = "ETH", price = 18500.00 },
				{ code = "BCH", price = 2400.00 },
				{ code = "XMR", price = 950.00 },
				{ code = "BNB", price = 3200.00 }
			}
			for _, c in ipairs(ServerConfig.cryptos or defaultCryptos) do
				cryptoPrices[c.code] = tonumber(c.price) or 100.0
			end

			if fromCurr == "BRL" and cryptoPrices[toCurr] then
				local currentBalance = (accountId == passport) and Framework.GetBank(passport) or (exports.oxmysql:scalar_async("SELECT balance FROM bank_accounts WHERE id = ?", { accountId }) or 0)
				local cost = amount * cryptoPrices[toCurr]
				local tax = cost * ((ServerConfig.cryptoTax or 2) / 100)
				local totalCost = math.ceil(cost + tax)

				if currentBalance < totalCost then
					response = { __error = { type = "INSUFFICIENT_FUNDS", errors = { amount = "Saldo insuficiente para compra" } } }
				else
					if accountId == passport then
						Framework.RemoveBank(passport, totalCost)
					else
						exports.oxmysql:execute("UPDATE bank_accounts SET balance = balance - ? WHERE id = ?", { totalCost, accountId })
					end

					exports.oxmysql:execute([[
						INSERT INTO bank_crypto (passport, code, amount) VALUES (?, ?, ?)
						ON DUPLICATE KEY UPDATE amount = amount + ?
					]], { passport, toCurr, amount, amount })

					recordHistory(accountId, "outcome", totalCost, "Compra de " .. tostring(amount) .. " " .. toCurr, passport, playerName, 0, "Mercado de Cripto")
					response = { paid = tostring(totalCost), received = tostring(amount) }
				end
			elseif cryptoPrices[fromCurr] and toCurr == "BRL" then
				local userCrypto = exports.oxmysql:scalar_async("SELECT amount FROM bank_crypto WHERE passport = ? AND code = ?", { passport, fromCurr }) or 0.0
				if userCrypto < amount then
					response = { __error = { type = "INSUFFICIENT_FUNDS", errors = { amount = "Criptomoedas insuficientes na carteira" } } }
				else
					local grossVal = amount * cryptoPrices[fromCurr]
					local tax = grossVal * ((ServerConfig.cryptoTax or 2) / 100)
					local netVal = math.floor(grossVal - tax)

					exports.oxmysql:execute("UPDATE bank_crypto SET amount = amount - ? WHERE passport = ? AND code = ?", { amount, passport, fromCurr })

					if accountId == passport then
						Framework.GiveBank(passport, netVal)
					else
						exports.oxmysql:execute("UPDATE bank_accounts SET balance = balance + ? WHERE id = ?", { netVal, accountId })
					end

					recordHistory(accountId, "income", netVal, "Venda de " .. tostring(amount) .. " " .. fromCurr, 0, "Mercado de Cripto", passport, playerName)
					response = { paid = tostring(amount), received = tostring(netVal) }
				end
			else
				response = { __error = { type = "INVALID_CURRENCY", errors = { amount = "Conversão não suportada" } } }
			end
		end

	-- 26. GRÁFICO (CHART)
	elseif action == "chart" then
		local accountId = tonumber(args[1]) or passport
		local currentBalance = (accountId == passport) and Framework.GetBank(passport) or (exports.oxmysql:scalar_async("SELECT balance FROM bank_accounts WHERE id = ?", { accountId }) or 0)
		currentBalance = tonumber(currentBalance) or 0

		local deposited = exports.oxmysql:scalar_async("SELECT COALESCE(SUM(amount), 0) FROM bank_history WHERE account_id = ? AND type = 'deposit'", { accountId }) or 0
		local received = exports.oxmysql:scalar_async("SELECT COALESCE(SUM(amount), 0) FROM bank_history WHERE account_id = ? AND type = 'income'", { accountId }) or 0
		local sent = exports.oxmysql:scalar_async("SELECT COALESCE(SUM(amount), 0) FROM bank_history WHERE account_id = ? AND (type = 'outcome' OR type = 'withdraw')", { accountId }) or 0

		local dayLabels = { "Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sáb" }
		local now = os.time()
		local graph = {}
		for day = 6, 0, -1 do
			local dayTime = now - (day * 86400)
			local dayOfWeek = tonumber(os.date("%w", dayTime)) + 1
			table.insert(graph, {
				label = dayLabels[dayOfWeek] or os.date("%d/%m", dayTime),
				balance = parseInt(currentBalance)
			})
		end

		response = {
			deposited = parseInt(deposited),
			received = parseInt(received),
			sent = parseInt(sent),
			graph = graph
		}

	-- 27. ALTERAR IMAGEM DA CONTA
	elseif action == "change_image" then
		local accountId = tonumber(args[1])
		local imageUrl = tostring(args[2] or "")
		if accountId and accountId ~= passport then
			exports.oxmysql:execute("UPDATE bank_accounts SET image = ? WHERE id = ? AND passport = ?", { imageUrl, accountId, passport })
		end
		response = true

	-- 28. MEMBROS DA CONTA
	elseif action == "members" then
		local accountId = tonumber(args[1]) or passport
		response = {
			{
				user_id = passport,
				name = playerName,
				role = "admin"
			}
		}

	elseif action == "invite_member" then
		response = true

	elseif action == "kick_member" then
		response = true

	elseif action == "update_member" then
		response = true

	-- 29. CONVITES
	elseif action == "invites" then
		response = {}

	elseif action == "update_invite" then
		response = true

	-- 30. LOGOUT / FECHAMENTO
	elseif action == "logout" then
		response = true

	-- PADRÃO PARA AÇÕES NÃO MAPADAS
	else
		response = true
	end

	TriggerClientEvent("bank:response", src, reqId, response)
end)

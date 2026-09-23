-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVER CONFIGURATION
-----------------------------------------------------------------------------------------------------------------------------------------
ServerConfig = {
	cryptoTax = 2,
	maxAccountsPerPlayer = 3,
	maxPixKeys = 5,
	businessPermissions = { "Admin", "Owner", "Premium", "Empresario" },
	policePermissions = { "Policia", "Police", "Admin" },

	-- Investimentos disponíveis
	investments = {
		{
			code = "cdb_liquidez",
			name = "CDB Liquidez Diária",
			minimum = 1000,
			maximum = 1000000,
			rate = 1.02, -- 2% rendimento
			durationDays = 1,
			description = "Investimento seguro com retorno em 24 horas."
		},
		{
			code = "poupanca_cda",
			name = "Poupança Artistas",
			minimum = 500,
			maximum = 500000,
			rate = 1.01, -- 1% rendimento
			durationDays = 1,
			description = "Poupança tradicional com garantia do Banco Central."
		},
		{
			code = "fundos_imobiliarios",
			name = "Fundo Imobiliário Los Santos",
			minimum = 5000,
			maximum = 5000000,
			rate = 1.05, -- 5% rendimento
			durationDays = 3,
			description = "Investimento de médio prazo com rendimento superior."
		}
	},

	-- Criptomoedas do sistema
	cryptos = {
		{ code = "BTC", name = "Bitcoin", price = 345000.00, variation = 1.8 },
		{ code = "ETH", name = "Ethereum", price = 18500.00, variation = -0.5 },
		{ code = "BCH", name = "Bitcoin Cash", price = 2400.00, variation = 0.2 },
		{ code = "XMR", name = "Monero", price = 950.00, variation = 3.1 },
		{ code = "BNB", name = "Binance Coin", price = 3200.00, variation = -1.2 }
	}
}

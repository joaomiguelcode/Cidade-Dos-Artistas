CasinoMemberConfig = {}

-- Exigir ingresso ou cartão de membro para comprar fichas
CasinoMemberConfig.RequireMembershipForChips = true

-- Preços das fichas
CasinoMemberConfig.BuyPrice = 100 -- Preço de compra de cada ficha (R$ 100,00)
CasinoMemberConfig.SellPrice = 80 -- Preço de venda de cada ficha (R$ 80,00)

-- Itens registrados no inventário
CasinoMemberConfig.ChipItem = "casinochips" -- Item de fichas do cassino
CasinoMemberConfig.MemberItem = "casino_member" -- Ingresso/membro padrão do cassino
CasinoMemberConfig.VipItem = "casino_vip" -- Ingresso/membro VIP do cassino
CasinoMemberConfig.CurrencyItem = "dollars" -- Moeda corrente

-- Permitir pagamento via banco se faltar dinheiro vivo na carteira
CasinoMemberConfig.AllowBankPayment = true
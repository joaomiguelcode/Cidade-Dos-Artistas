local KEY = IsDuplicityVersion() and 'ClientConfig' or 'Config'

_G[KEY] = {
    currency = {
        locale = "pt-BR",
        iso = "BRL",
        prefix = "R$",
        name = "Real Brasileiro",
    },

    atms = {
        `prop_fleeca_atm`,
        `prop_atm_03`,
        `prop_atm_02`,
        `prop_atm_01`,
    },
  
    banks = {
        vec(899.94,377.86,118.69), -- BRASILANDIA
        vec(148.55, -1040.32, 29.38),
        vec(149.87, -1040.82, 29.38),
        vec(-1212.6, -330.8, 37.8),
        vec(-1213.95, -331.41, 37.8),
        vec(-2962.53, 482.94, 15.71),
        vec(-2962.67, 481.37, 15.71),
        vec(-113.08, 6470.28, 31.63),
        vec(-112.05, 6469.16, 31.63),
        vec(-111.05, 6468.15, 31.63),
        vec(312.83, -278.67, 54.18),
        vec(314.22, -279.18, 54.18),
        vec(241.41, 225.45, 106.29),
        vec(243.13, 224.71, 106.29),
        vec(246.52, 223.56, 106.29),
        vec(248.34, 222.87, 106.29),
        vec(251.73, 221.66, 106.29),
        vec(253.62, 221.05, 106.29),
        vec(-350.98, -49.89, 49.05),
        vec(-352.36, -49.47, 49.05),
        vec(1175.09, 2706.91, 38.1),
        vec(1176.55, 2706.91, 38.1),
    },
    
    intl = {
        INVALID_NAME = "Nome inválido",
        INVALID_AMOUNT = "Quantia inválida",
        INVALID_CURRENCY = "Moeda inválida",
        INVALID_ROLE = "Cargo inválido",
        INVALID_TEXT = "Descrição inválida",
        INVALID_LENGTH = "Tamanho inválido",
    
        ACCOUNT_NOT_FOUND = "Conta não encontrada",
        ACCOUNT_NOT_EMPTY = "Para excluir uma conta, você precisa sacar todo o saldo e investimentos",
        ACCOUNT_MAX = "Você atingiu o limite máximo de contas",
        ACCOUNT_DENIED = "Você não pode abrir uma conta empresarial",
        LOCK = "Aguarde para realizar esta operação",
        SERVER_ERROR = "Erro interno",
        NOT_READY = "Aguarde para realizar esta operação",
        UNAUTHORIZED = "Você não tem acesso à esta funcionalidade",
        INSUFFICIENT_FUNDS = "Saldo insuficiente",
        INSUFFICIENT_WEIGHT = "Espaço insuficiente na mochila",
        INSUFFICIENT_INVESTMENT = "Você não possui este valor investido",
        MEMBER_ALREADY_INVITED = "Este usuário já foi convidado",
        SELF_KICK = "Você não pode expulsar você mesmo",
        SELF_TRANSFER = "O recebedor não pode ser igual ao remetente",
        SELF_FINE = "Você não pode multar a si mesmo",
        PIX_LIMIT_REACHED = "Você já cadastrou o máximo de chaves",
        PIX_ALREADY_USED = "Esta chave já está sendo utilizada",
        PIX_NOT_FOUND = "Chave não encontrada",
        CRYPTO_TAX = "A venda de criptomoedas possui uma taxa de {amount}%",
        INVOICE_NOT_FOUND = "Fatura não encontrada",
        INVOICE_ALREADY_PAID = "Esta fatura já foi paga",
        INVOICE_OFFLINE = "Não foi possível se conectar com este cidadão",
        INVOICE_LOCK = "Aguarde para fazer esta solicitação novamente",
        INVALID_INVESTMENT = "Investimento não encontrado",
        INVESTMENT_BELOW_MINIMUM = "Investimento abaixo do valor mínimo",
        INVESTMENT_ABOVE_MAXIMUM = "Investimento acima do valor máximo",
        INVESTMENT_NOT_READY = "Este investimento ainda não pode ser retirado",
        ROLE_MEMBER = "Membro",
        ROLE_MANAGER = "Gerente",
        ROLE_ADMIN = "Administrador",
    }
}

_G[KEY].draw = function(cds)
    DrawMarker(23, cds.x, cds.y, cds.z - 0.97, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 0, 0, 255, 127)
end
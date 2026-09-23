-- PERMISSOES:
-- "addMembers" -- ADICIONAR MEMBROS
-- "manager" -- GERENCIAR MEMBROS (REMOVER E GERENCIAR CARGOS)
-- "bank" -- ACESSO A ABA DE SACAR DO BANCO
-- "salary" -- GERENCIAR SALARIOS
-- "partners" -- GERENCIAR PARCEIROS
-- "chest" -- RETIRAR ITENS DO BAU DE METAS
-- "goals" -- GERENCIAR METAS
-- "comments" -- GERENCIAR COMENTARIOS

isDuplicity = IsDuplicityVersion()

if not isDuplicity then 
    local Tunnel = module("vrp","lib/Tunnel")
    local Proxy = module("vrp","lib/Proxy")
    vRP = Proxy.getInterface("vRP")
    vSERVER = Tunnel.getInterface(GetCurrentResourceName())
else
    local Tunnel = module("vrp","lib/Tunnel")
    local Proxy = module("vrp","lib/Proxy")
    vRP = Proxy.getInterface("vRP")
    vRPC = Tunnel.getInterface("vRP")
    Epic = {}
    Tunnel.bindInterface(GetCurrentResourceName(),Epic)
end

Config = {
    PermAdmin = "Admin", -- PERMISSAO ADMIN
    Database = "oxmysql", -- DRIVER DE BANCO DE DADOS
    EventConnect = "Connect", -- EVENTO TRIGADO AO JOGADOR LOGAR (PASSPORT,SOURCE)
    Command = "painel", -- COMANDO PARA ABRIR O PAINEL
    MinutesSalary = 30, -- TEMPO PARA RECEBER O SALARIO
    Points = 1, -- PONTUACAO AO COMPLETAR UMA META
    Groups = {
        ["Owner"] = {
            hierarchy = {
                [1] = { nome = "Owner", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Developer", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {},
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = '', -- PERMISSAO ATUALIZADA
                ["AddMember"] = '', -- MEMBRO ADICIOANDO
                ["RemMember"] = '', -- MEMBRO REMOVIDO
                ["Bank"] = '', -- BANCO
                ["Partner"] = '', -- PARCEIRO
                ["Salary"] = '', -- SALARIO
                ["PaySalary"] = '', -- PAGAMENTO DE SALARIO
                ["Commentary"] = '', -- COMENTARIOS
                ["TakeChest"] = '', -- ITENS RETIRADOS DO BAU
                ["PutChest"] = '', -- ITENS COLOCADOS NO BAU
                ["Goals"] = '', -- METAS
                ["PaymentGoals"] = '', -- PAGAMENTO METAS
                ["Points"] = '', -- PONTOS
            }
        },
        ["Admin"] = {
            hierarchy = {
                [1] = { nome = "Administrador-Geral", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Administrador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [3] = { nome = "Super-Moderador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [4] = { nome = "Moderador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Suporte", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false }
            },
            itens = {},
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = '', -- PERMISSAO ATUALIZADA
                ["AddMember"] = '', -- MEMBRO ADICIOANDO
                ["RemMember"] = '', -- MEMBRO REMOVIDO
                ["Bank"] = '', -- BANCO
                ["Partner"] = '', -- PARCEIRO
                ["Salary"] = '', -- SALARIO
                ["PaySalary"] = '', -- PAGAMENTO DE SALARIO
                ["Commentary"] = '', -- COMENTARIOS
                ["TakeChest"] = '', -- ITENS RETIRADOS DO BAU
                ["PutChest"] = '', -- ITENS COLOCADOS NO BAU
                ["Goals"] = '', -- METAS
                ["PaymentGoals"] = '', -- PAGAMENTO METAS
                ["Points"] = '', -- PONTOS
            }
        },
        ["Decretado"] = {
            hierarchy = {
                [1] = { nome = "Chefe-Decretado", addMembers = true, manager = true, bank = false, salary = false, partners = false, chest = false, goals = false, comments = true },
                [2] = { nome = "Decretado", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = true },
            },
            itens = {},
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = '', -- PERMISSAO ATUALIZADA
                ["AddMember"] = '', -- MEMBRO ADICIOANDO
                ["RemMember"] = '', -- MEMBRO REMOVIDO
                ["Bank"] = '', -- BANCO
                ["Partner"] = '', -- PARCEIRO
                ["Salary"] = '', -- SALARIO
                ["PaySalary"] = '', -- PAGAMENTO DE SALARIO
                ["Commentary"] = '', -- COMENTARIOS
                ["TakeChest"] = '', -- ITENS RETIRADOS DO BAU
                ["PutChest"] = '', -- ITENS COLOCADOS NO BAU
                ["Goals"] = '', -- METAS
                ["PaymentGoals"] = '', -- PAGAMENTO METAS
                ["Points"] = '', -- PONTOS
            }
        },
        ["Cnn"] = {
            hierarchy = {
                [1] = { nome = "Diretor-Geral", addMembers = true, manager = true, bank = true, salary = false, partners = true, chest = false, goals = false, comments = true },
                [2] = { nome = "Jornalista", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [3] = { nome = "Cinegrafista", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false }
            },
            itens = {},
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = '', -- PERMISSAO ATUALIZADA
                ["AddMember"] = '', -- MEMBRO ADICIOANDO
                ["RemMember"] = '', -- MEMBRO REMOVIDO
                ["Bank"] = '', -- BANCO
                ["Partner"] = '', -- PARCEIRO
                ["Salary"] = '', -- SALARIO
                ["PaySalary"] = '', -- PAGAMENTO DE SALARIO
                ["Commentary"] = '', -- COMENTARIOS
                ["TakeChest"] = '', -- ITENS RETIRADOS DO BAU
                ["PutChest"] = '', -- ITENS COLOCADOS NO BAU
                ["Goals"] = '', -- METAS
                ["PaymentGoals"] = '', -- PAGAMENTO METAS
                ["Points"] = '', -- PONTOS
            }
        },
        ["Abatam"] = {
            hierarchy = {
                [1] = { nome = "Ceo", addMembers = true, manager = true, bank = true, salary = false, partners = true, chest = false, goals = false, comments = true },
                [2] = { nome = "Presidente", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [3] = { nome = "Gestor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [4] = { nome = "Colaborador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollars'] = true
            },
            coordsChest = false,
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = '', -- PERMISSAO ATUALIZADA
                ["AddMember"] = '', -- MEMBRO ADICIOANDO
                ["RemMember"] = '', -- MEMBRO REMOVIDO
                ["Bank"] = '', -- BANCO
                ["Partner"] = '', -- PARCEIRO
                ["Salary"] = '', -- SALARIO
                ["PaySalary"] = '', -- PAGAMENTO DE SALARIO
                ["Commentary"] = '', -- COMENTARIOS
                ["TakeChest"] = '', -- ITENS RETIRADOS DO BAU
                ["PutChest"] = '', -- ITENS COLOCADOS NO BAU
                ["Goals"] = '', -- METAS
                ["PaymentGoals"] = '', -- PAGAMENTO METAS
                ["Points"] = '', -- PONTOS
            }
        },
        ["Morato"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Supervisor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Vendedor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["weedleaf"] = true,
                ["ziplock"] = true,
                ["tableweed"] = true,
            },
            coordsChest = vec3(3753.91,4538.76,33.4),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1403647317768278179/xJ_dhlROhOWSGyR-qNcpemdAbrlus0VWmpSmbvJT6Up5YoBChK3_W1gQSFCDuu9z9M5q", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1403647317768278179/xJ_dhlROhOWSGyR-qNcpemdAbrlus0VWmpSmbvJT6Up5YoBChK3_W1gQSFCDuu9z9M5q", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1403647317768278179/xJ_dhlROhOWSGyR-qNcpemdAbrlus0VWmpSmbvJT6Up5YoBChK3_W1gQSFCDuu9z9M5q", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1403647317768278179/xJ_dhlROhOWSGyR-qNcpemdAbrlus0VWmpSmbvJT6Up5YoBChK3_W1gQSFCDuu9z9M5q", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1403647317768278179/xJ_dhlROhOWSGyR-qNcpemdAbrlus0VWmpSmbvJT6Up5YoBChK3_W1gQSFCDuu9z9M5q", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1403647317768278179/xJ_dhlROhOWSGyR-qNcpemdAbrlus0VWmpSmbvJT6Up5YoBChK3_W1gQSFCDuu9z9M5q", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1403647317768278179/xJ_dhlROhOWSGyR-qNcpemdAbrlus0VWmpSmbvJT6Up5YoBChK3_W1gQSFCDuu9z9M5q", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1403647317768278179/xJ_dhlROhOWSGyR-qNcpemdAbrlus0VWmpSmbvJT6Up5YoBChK3_W1gQSFCDuu9z9M5q", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1403647317768278179/xJ_dhlROhOWSGyR-qNcpemdAbrlus0VWmpSmbvJT6Up5YoBChK3_W1gQSFCDuu9z9M5q", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1403647317768278179/xJ_dhlROhOWSGyR-qNcpemdAbrlus0VWmpSmbvJT6Up5YoBChK3_W1gQSFCDuu9z9M5q", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1403647317768278179/xJ_dhlROhOWSGyR-qNcpemdAbrlus0VWmpSmbvJT6Up5YoBChK3_W1gQSFCDuu9z9M5q", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1403647317768278179/xJ_dhlROhOWSGyR-qNcpemdAbrlus0VWmpSmbvJT6Up5YoBChK3_W1gQSFCDuu9z9M5q", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1403647317768278179/xJ_dhlROhOWSGyR-qNcpemdAbrlus0VWmpSmbvJT6Up5YoBChK3_W1gQSFCDuu9z9M5q", -- PONTOS
            }
        },
        ["Corrida"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Supervisor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Vendedor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["capsula"] = true,
                ["projetil"] = true,
                ["polvora"] = true,
            },
            coordsChest = vec3(706.37,-960.39,30.4),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAUra
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Dk"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Supervisor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Vendedor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ["aluminum"] = true,
                ["techtrash"] = true,
                ["chipset"] = true,
                ["copper"] = true,
            },
            coordsChest = vec3(725.53,-1066.89,28.31),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discordapp.com/api/webhooks/1339039399853293598/Gob6jkccBcu25-p2cAg6YW64TxQxtXEFQny_IgNHzwf-Ut7ufoDmQNx7UFQNlMvO3mz4", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discordapp.com/api/webhooks/1339039399853293598/Gob6jkccBcu25-p2cAg6YW64TxQxtXEFQny_IgNHzwf-Ut7ufoDmQNx7UFQNlMvO3mz4", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discordapp.com/api/webhooks/1339039399853293598/Gob6jkccBcu25-p2cAg6YW64TxQxtXEFQny_IgNHzwf-Ut7ufoDmQNx7UFQNlMvO3mz4", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discordapp.com/api/webhooks/1339039399853293598/Gob6jkccBcu25-p2cAg6YW64TxQxtXEFQny_IgNHzwf-Ut7ufoDmQNx7UFQNlMvO3mz4", -- BANCO
                ["Partner"] = "https://discordapp.com/api/webhooks/1339039399853293598/Gob6jkccBcu25-p2cAg6YW64TxQxtXEFQny_IgNHzwf-Ut7ufoDmQNx7UFQNlMvO3mz4", -- PARCEIRO
                ["Salary"] = "https://discordapp.com/api/webhooks/1339039399853293598/Gob6jkccBcu25-p2cAg6YW64TxQxtXEFQny_IgNHzwf-Ut7ufoDmQNx7UFQNlMvO3mz4", -- SALARIO
                ["PaySalary"] = "https://discordapp.com/api/webhooks/1339039399853293598/Gob6jkccBcu25-p2cAg6YW64TxQxtXEFQny_IgNHzwf-Ut7ufoDmQNx7UFQNlMvO3mz4", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discordapp.com/api/webhooks/1339039399853293598/Gob6jkccBcu25-p2cAg6YW64TxQxtXEFQny_IgNHzwf-Ut7ufoDmQNx7UFQNlMvO3mz4", -- COMENTARIOS
                ["TakeChest"] = "https://discordapp.com/api/webhooks/1339039399853293598/Gob6jkccBcu25-p2cAg6YW64TxQxtXEFQny_IgNHzwf-Ut7ufoDmQNx7UFQNlMvO3mz4", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discordapp.com/api/webhooks/1339039399853293598/Gob6jkccBcu25-p2cAg6YW64TxQxtXEFQny_IgNHzwf-Ut7ufoDmQNx7UFQNlMvO3mz4", -- ITENS COLOCADOS NO BAUra
                ["Goals"] = "https://discordapp.com/api/webhooks/1339039399853293598/Gob6jkccBcu25-p2cAg6YW64TxQxtXEFQny_IgNHzwf-Ut7ufoDmQNx7UFQNlMvO3mz4", -- METAS
                ["PaymentGoals"] = "https://discordapp.com/api/webhooks/1339039399853293598/Gob6jkccBcu25-p2cAg6YW64TxQxtXEFQny_IgNHzwf-Ut7ufoDmQNx7UFQNlMvO3mz4", -- PAGAMENTO METAS
                ["Points"] = "https://discordapp.com/api/webhooks/1339039399853293598/Gob6jkccBcu25-p2cAg6YW64TxQxtXEFQny_IgNHzwf-Ut7ufoDmQNx7UFQNlMvO3mz4", -- PONTOS
            }
        },
        ["Alba"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Supervisor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Vendedor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["capsula"] = true,
                ["projetil"] = true,
                ["polvora"] = true,
            },
            coordsChest = vec3(-1185.98,-1739.63,11.9),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1391542860326899792/RT408SI2o7iFc4HFaO8Pr36D9GJQJziymmEmEj87zFbZM-nNFod_Wb0fmd4wS0DKgQCL", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1391542860326899792/RT408SI2o7iFc4HFaO8Pr36D9GJQJziymmEmEj87zFbZM-nNFod_Wb0fmd4wS0DKgQCL", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1391542860326899792/RT408SI2o7iFc4HFaO8Pr36D9GJQJziymmEmEj87zFbZM-nNFod_Wb0fmd4wS0DKgQCL", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1391542860326899792/RT408SI2o7iFc4HFaO8Pr36D9GJQJziymmEmEj87zFbZM-nNFod_Wb0fmd4wS0DKgQCL", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1391542860326899792/RT408SI2o7iFc4HFaO8Pr36D9GJQJziymmEmEj87zFbZM-nNFod_Wb0fmd4wS0DKgQCL", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1391542860326899792/RT408SI2o7iFc4HFaO8Pr36D9GJQJziymmEmEj87zFbZM-nNFod_Wb0fmd4wS0DKgQCL", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1391542860326899792/RT408SI2o7iFc4HFaO8Pr36D9GJQJziymmEmEj87zFbZM-nNFod_Wb0fmd4wS0DKgQCL", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1391542860326899792/RT408SI2o7iFc4HFaO8Pr36D9GJQJziymmEmEj87zFbZM-nNFod_Wb0fmd4wS0DKgQCL", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1391542860326899792/RT408SI2o7iFc4HFaO8Pr36D9GJQJziymmEmEj87zFbZM-nNFod_Wb0fmd4wS0DKgQCL", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1391542860326899792/RT408SI2o7iFc4HFaO8Pr36D9GJQJziymmEmEj87zFbZM-nNFod_Wb0fmd4wS0DKgQCL", -- ITENS COLOCADOS NO BAUra
                ["Goals"] = "https://discord.com/api/webhooks/1391542860326899792/RT408SI2o7iFc4HFaO8Pr36D9GJQJziymmEmEj87zFbZM-nNFod_Wb0fmd4wS0DKgQCL", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1391542860326899792/RT408SI2o7iFc4HFaO8Pr36D9GJQJziymmEmEj87zFbZM-nNFod_Wb0fmd4wS0DKgQCL", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1391542860326899792/RT408SI2o7iFc4HFaO8Pr36D9GJQJziymmEmEj87zFbZM-nNFod_Wb0fmd4wS0DKgQCL", -- PONTOS
            }
        },
        ["Marcone"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Supervisor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Vendedor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ['weedleaf'] = true,
                ["ziplock"] = true,
                ["tableweed"] = true,
            },
            coordsChest = vec3(617.98,2566.36,73.36),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discordapp.com/api/webhooks/1339813977030524949/mjZdiwkmXRTBqWYwacgo4XTYUGfDyjRiVRJ_N5GdeAZtZDS3g0CXCeZtzEJ3rmjC4ggo", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discordapp.com/api/webhooks/1339813977030524949/mjZdiwkmXRTBqWYwacgo4XTYUGfDyjRiVRJ_N5GdeAZtZDS3g0CXCeZtzEJ3rmjC4ggo", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discordapp.com/api/webhooks/1339813977030524949/mjZdiwkmXRTBqWYwacgo4XTYUGfDyjRiVRJ_N5GdeAZtZDS3g0CXCeZtzEJ3rmjC4ggo", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discordapp.com/api/webhooks/1339813977030524949/mjZdiwkmXRTBqWYwacgo4XTYUGfDyjRiVRJ_N5GdeAZtZDS3g0CXCeZtzEJ3rmjC4ggo", -- BANCO
                ["Partner"] = "https://discordapp.com/api/webhooks/1339813977030524949/mjZdiwkmXRTBqWYwacgo4XTYUGfDyjRiVRJ_N5GdeAZtZDS3g0CXCeZtzEJ3rmjC4ggo", -- PARCEIRO
                ["Salary"] = "https://discordapp.com/api/webhooks/1339813977030524949/mjZdiwkmXRTBqWYwacgo4XTYUGfDyjRiVRJ_N5GdeAZtZDS3g0CXCeZtzEJ3rmjC4ggo", -- SALARIO
                ["PaySalary"] = "https://discordapp.com/api/webhooks/1339813977030524949/mjZdiwkmXRTBqWYwacgo4XTYUGfDyjRiVRJ_N5GdeAZtZDS3g0CXCeZtzEJ3rmjC4ggo", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discordapp.com/api/webhooks/1339813977030524949/mjZdiwkmXRTBqWYwacgo4XTYUGfDyjRiVRJ_N5GdeAZtZDS3g0CXCeZtzEJ3rmjC4ggo", -- COMENTARIOS
                ["TakeChest"] = "https://discordapp.com/api/webhooks/1339813977030524949/mjZdiwkmXRTBqWYwacgo4XTYUGfDyjRiVRJ_N5GdeAZtZDS3g0CXCeZtzEJ3rmjC4ggo", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discordapp.com/api/webhooks/1339813977030524949/mjZdiwkmXRTBqWYwacgo4XTYUGfDyjRiVRJ_N5GdeAZtZDS3g0CXCeZtzEJ3rmjC4ggo", -- ITENS COLOCADOS NO BAUra
                ["Goals"] = "https://discordapp.com/api/webhooks/1339813977030524949/mjZdiwkmXRTBqWYwacgo4XTYUGfDyjRiVRJ_N5GdeAZtZDS3g0CXCeZtzEJ3rmjC4ggo", -- METAS
                ["PaymentGoals"] = "https://discordapp.com/api/webhooks/1339813977030524949/mjZdiwkmXRTBqWYwacgo4XTYUGfDyjRiVRJ_N5GdeAZtZDS3g0CXCeZtzEJ3rmjC4ggo", -- PAGAMENTO METAS
                ["Points"] = "https://discordapp.com/api/webhooks/1339813977030524949/mjZdiwkmXRTBqWYwacgo4XTYUGfDyjRiVRJ_N5GdeAZtZDS3g0CXCeZtzEJ3rmjC4ggo", -- PONTOS
            }
        },
        ["Itaquera"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Supervisor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Vendedor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ["dollarz"] = true,
                ["aluminum"] = true,
                ["plastic"] = true,
                ["copper"] = true,
            },
            coordsChest = false,
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discordapp.com/api/webhooks/1339814219494850592/8dboJtNnrj_hoJX6Jl88xIpPAeOAZksdcLbT4-hLRibWYwJDWTpGU83vrt_1XAp57x0y", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discordapp.com/api/webhooks/1339814219494850592/8dboJtNnrj_hoJX6Jl88xIpPAeOAZksdcLbT4-hLRibWYwJDWTpGU83vrt_1XAp57x0y", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discordapp.com/api/webhooks/1339814219494850592/8dboJtNnrj_hoJX6Jl88xIpPAeOAZksdcLbT4-hLRibWYwJDWTpGU83vrt_1XAp57x0y", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discordapp.com/api/webhooks/1339814219494850592/8dboJtNnrj_hoJX6Jl88xIpPAeOAZksdcLbT4-hLRibWYwJDWTpGU83vrt_1XAp57x0y", -- BANCO
                ["Partner"] = "https://discordapp.com/api/webhooks/1339814219494850592/8dboJtNnrj_hoJX6Jl88xIpPAeOAZksdcLbT4-hLRibWYwJDWTpGU83vrt_1XAp57x0y", -- PARCEIRO
                ["Salary"] = "https://discordapp.com/api/webhooks/1339814219494850592/8dboJtNnrj_hoJX6Jl88xIpPAeOAZksdcLbT4-hLRibWYwJDWTpGU83vrt_1XAp57x0y", -- SALARIO
                ["PaySalary"] = "https://discordapp.com/api/webhooks/1339814219494850592/8dboJtNnrj_hoJX6Jl88xIpPAeOAZksdcLbT4-hLRibWYwJDWTpGU83vrt_1XAp57x0y", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discordapp.com/api/webhooks/1339814219494850592/8dboJtNnrj_hoJX6Jl88xIpPAeOAZksdcLbT4-hLRibWYwJDWTpGU83vrt_1XAp57x0y", -- COMENTARIOS
                ["TakeChest"] = "https://discordapp.com/api/webhooks/1339814219494850592/8dboJtNnrj_hoJX6Jl88xIpPAeOAZksdcLbT4-hLRibWYwJDWTpGU83vrt_1XAp57x0y", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discordapp.com/api/webhooks/1339814219494850592/8dboJtNnrj_hoJX6Jl88xIpPAeOAZksdcLbT4-hLRibWYwJDWTpGU83vrt_1XAp57x0y", -- ITENS COLOCADOS NO BAUra
                ["Goals"] = "https://discordapp.com/api/webhooks/1339814219494850592/8dboJtNnrj_hoJX6Jl88xIpPAeOAZksdcLbT4-hLRibWYwJDWTpGU83vrt_1XAp57x0y", -- METAS
                ["PaymentGoals"] = "https://discordapp.com/api/webhooks/1339814219494850592/8dboJtNnrj_hoJX6Jl88xIpPAeOAZksdcLbT4-hLRibWYwJDWTpGU83vrt_1XAp57x0y", -- PAGAMENTO METAS
                ["Points"] = "https://discordapp.com/api/webhooks/1339814219494850592/8dboJtNnrj_hoJX6Jl88xIpPAeOAZksdcLbT4-hLRibWYwJDWTpGU83vrt_1XAp57x0y", -- PONTOS
            }
        },
        ["Paraisopolis"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Supervisor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Vendedor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ['weedleaf'] = true,
                ["ziplock"] = true,
                ["tableweed"] = true,
            },
            coordsChest = vec3(856.92,1170.36,346.47),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1403604858178764831/Cs1agA5NGIzboutIVNN1T5iNbVMd2pyqegVGw0S7_hqlXEshhrd3b4nAzTY8CoVi5E-s", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1403604858178764831/Cs1agA5NGIzboutIVNN1T5iNbVMd2pyqegVGw0S7_hqlXEshhrd3b4nAzTY8CoVi5E-s", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1403604858178764831/Cs1agA5NGIzboutIVNN1T5iNbVMd2pyqegVGw0S7_hqlXEshhrd3b4nAzTY8CoVi5E-s", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1403604858178764831/Cs1agA5NGIzboutIVNN1T5iNbVMd2pyqegVGw0S7_hqlXEshhrd3b4nAzTY8CoVi5E-s", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1403604858178764831/Cs1agA5NGIzboutIVNN1T5iNbVMd2pyqegVGw0S7_hqlXEshhrd3b4nAzTY8CoVi5E-s", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1403604858178764831/Cs1agA5NGIzboutIVNN1T5iNbVMd2pyqegVGw0S7_hqlXEshhrd3b4nAzTY8CoVi5E-s", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1403604858178764831/Cs1agA5NGIzboutIVNN1T5iNbVMd2pyqegVGw0S7_hqlXEshhrd3b4nAzTY8CoVi5E-s", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1403604858178764831/Cs1agA5NGIzboutIVNN1T5iNbVMd2pyqegVGw0S7_hqlXEshhrd3b4nAzTY8CoVi5E-s", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1403604858178764831/Cs1agA5NGIzboutIVNN1T5iNbVMd2pyqegVGw0S7_hqlXEshhrd3b4nAzTY8CoVi5E-s", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1403604858178764831/Cs1agA5NGIzboutIVNN1T5iNbVMd2pyqegVGw0S7_hqlXEshhrd3b4nAzTY8CoVi5E-s", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1403604858178764831/Cs1agA5NGIzboutIVNN1T5iNbVMd2pyqegVGw0S7_hqlXEshhrd3b4nAzTY8CoVi5E-s", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1403604858178764831/Cs1agA5NGIzboutIVNN1T5iNbVMd2pyqegVGw0S7_hqlXEshhrd3b4nAzTY8CoVi5E-s", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1403604858178764831/Cs1agA5NGIzboutIVNN1T5iNbVMd2pyqegVGw0S7_hqlXEshhrd3b4nAzTY8CoVi5E-s", -- PONTOS
            }
        },
        ["Rua100"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Supervisor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Vendedor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["silk"] = true,
                ["saline"] = true,
                ["drugtable"] = true,
                ["sulfuric"] = true,
                ["empty_pot"] = true,
                ["dirt_bag"] = true,
                ["weed_fertilizer"] = true,
                ["weed_skunk_seed"] = true,
            },
            coordsChest = vec3(203.44,703.88,220.33),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1349192309320974477/BR_RD7ylCEkGPnt71QcM-dc7kH9WYvz7XEffcwC31hlsoutyf3emHogWoDSnu9kqz5XW", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1349192309320974477/BR_RD7ylCEkGPnt71QcM-dc7kH9WYvz7XEffcwC31hlsoutyf3emHogWoDSnu9kqz5XW", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1349192309320974477/BR_RD7ylCEkGPnt71QcM-dc7kH9WYvz7XEffcwC31hlsoutyf3emHogWoDSnu9kqz5XW", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1349192309320974477/BR_RD7ylCEkGPnt71QcM-dc7kH9WYvz7XEffcwC31hlsoutyf3emHogWoDSnu9kqz5XW", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1349192309320974477/BR_RD7ylCEkGPnt71QcM-dc7kH9WYvz7XEffcwC31hlsoutyf3emHogWoDSnu9kqz5XW", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1349192309320974477/BR_RD7ylCEkGPnt71QcM-dc7kH9WYvz7XEffcwC31hlsoutyf3emHogWoDSnu9kqz5XW", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1349192309320974477/BR_RD7ylCEkGPnt71QcM-dc7kH9WYvz7XEffcwC31hlsoutyf3emHogWoDSnu9kqz5XW", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1349192309320974477/BR_RD7ylCEkGPnt71QcM-dc7kH9WYvz7XEffcwC31hlsoutyf3emHogWoDSnu9kqz5XW", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1349192309320974477/BR_RD7ylCEkGPnt71QcM-dc7kH9WYvz7XEffcwC31hlsoutyf3emHogWoDSnu9kqz5XW", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1349192309320974477/BR_RD7ylCEkGPnt71QcM-dc7kH9WYvz7XEffcwC31hlsoutyf3emHogWoDSnu9kqz5XW", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1349192309320974477/BR_RD7ylCEkGPnt71QcM-dc7kH9WYvz7XEffcwC31hlsoutyf3emHogWoDSnu9kqz5XW", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1349192309320974477/BR_RD7ylCEkGPnt71QcM-dc7kH9WYvz7XEffcwC31hlsoutyf3emHogWoDSnu9kqz5XW", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1349192309320974477/BR_RD7ylCEkGPnt71QcM-dc7kH9WYvz7XEffcwC31hlsoutyf3emHogWoDSnu9kqz5XW", -- PONTOS
            }
        },
        ["Attachs"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["moladearma"] = true,
                ["glass"] = true,
                ["explosives"] = true,
                ["plastic"] = true,
                ["techtrash"] = true,
                ["aluminum"] = true,
                ["weaponbody"] = true,
            },
            coordsChest = vec3(0.0,0.0,0.0),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Itapevi"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["capsula"] = true,
                ["projetil"] = true,
                ["polvora"] = true,
                ['copper'] = true,
                ["aluminum"] = true,
                ["rubber"] = true,
            },
            coordsChest = vec3(1770.19,6472.07,60.04),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Final"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["moladearma"] = true,
                ["glass"] = true,
                ["explosives"] = true,
                ["plastic"] = true,
                ["techtrash"] = true,
                ["aluminum"] = true,
                ["weaponbody"] = true,
            },
            coordsChest = vec3(5006.73,-5756.28,15.48),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1367235824793423872/Wnoj7m1BUYAhTFdTD_xFMAjmH7Q6ZqBhSRnhXWjzZuCuczGgRfUkFyURv8psfZnjroK6", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1367235824793423872/Wnoj7m1BUYAhTFdTD_xFMAjmH7Q6ZqBhSRnhXWjzZuCuczGgRfUkFyURv8psfZnjroK6", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1367235824793423872/Wnoj7m1BUYAhTFdTD_xFMAjmH7Q6ZqBhSRnhXWjzZuCuczGgRfUkFyURv8psfZnjroK6", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1367235824793423872/Wnoj7m1BUYAhTFdTD_xFMAjmH7Q6ZqBhSRnhXWjzZuCuczGgRfUkFyURv8psfZnjroK6", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1367235824793423872/Wnoj7m1BUYAhTFdTD_xFMAjmH7Q6ZqBhSRnhXWjzZuCuczGgRfUkFyURv8psfZnjroK6", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1367235824793423872/Wnoj7m1BUYAhTFdTD_xFMAjmH7Q6ZqBhSRnhXWjzZuCuczGgRfUkFyURv8psfZnjroK6", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1367235824793423872/Wnoj7m1BUYAhTFdTD_xFMAjmH7Q6ZqBhSRnhXWjzZuCuczGgRfUkFyURv8psfZnjroK6", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1367235824793423872/Wnoj7m1BUYAhTFdTD_xFMAjmH7Q6ZqBhSRnhXWjzZuCuczGgRfUkFyURv8psfZnjroK6", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1367235824793423872/Wnoj7m1BUYAhTFdTD_xFMAjmH7Q6ZqBhSRnhXWjzZuCuczGgRfUkFyURv8psfZnjroK6", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1367235824793423872/Wnoj7m1BUYAhTFdTD_xFMAjmH7Q6ZqBhSRnhXWjzZuCuczGgRfUkFyURv8psfZnjroK6", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1367235824793423872/Wnoj7m1BUYAhTFdTD_xFMAjmH7Q6ZqBhSRnhXWjzZuCuczGgRfUkFyURv8psfZnjroK6", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1367235824793423872/Wnoj7m1BUYAhTFdTD_xFMAjmH7Q6ZqBhSRnhXWjzZuCuczGgRfUkFyURv8psfZnjroK6", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1367235824793423872/Wnoj7m1BUYAhTFdTD_xFMAjmH7Q6ZqBhSRnhXWjzZuCuczGgRfUkFyURv8psfZnjroK6", -- PONTOS
            }
        },
        ["Oziel"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["capsula"] = true,
                ["projetil"] = true,
                ["polvora"] = true,
            },
            coordsChest = vec3(2689.68,-623.76,53.16),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1391542477428883637/qDrictvi-JGikHaU-KnYuPEUQUazAqOL6DZQbT4Av6EUUH_ErXG0pGLs-zPjgwtxB75K", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1391542477428883637/qDrictvi-JGikHaU-KnYuPEUQUazAqOL6DZQbT4Av6EUUH_ErXG0pGLs-zPjgwtxB75K", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1391542477428883637/qDrictvi-JGikHaU-KnYuPEUQUazAqOL6DZQbT4Av6EUUH_ErXG0pGLs-zPjgwtxB75K", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1391542477428883637/qDrictvi-JGikHaU-KnYuPEUQUazAqOL6DZQbT4Av6EUUH_ErXG0pGLs-zPjgwtxB75K", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1391542477428883637/qDrictvi-JGikHaU-KnYuPEUQUazAqOL6DZQbT4Av6EUUH_ErXG0pGLs-zPjgwtxB75K", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1391542477428883637/qDrictvi-JGikHaU-KnYuPEUQUazAqOL6DZQbT4Av6EUUH_ErXG0pGLs-zPjgwtxB75K", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1391542477428883637/qDrictvi-JGikHaU-KnYuPEUQUazAqOL6DZQbT4Av6EUUH_ErXG0pGLs-zPjgwtxB75K", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1391542477428883637/qDrictvi-JGikHaU-KnYuPEUQUazAqOL6DZQbT4Av6EUUH_ErXG0pGLs-zPjgwtxB75K", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1391542477428883637/qDrictvi-JGikHaU-KnYuPEUQUazAqOL6DZQbT4Av6EUUH_ErXG0pGLs-zPjgwtxB75K", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1391542477428883637/qDrictvi-JGikHaU-KnYuPEUQUazAqOL6DZQbT4Av6EUUH_ErXG0pGLs-zPjgwtxB75K", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1391542477428883637/qDrictvi-JGikHaU-KnYuPEUQUazAqOL6DZQbT4Av6EUUH_ErXG0pGLs-zPjgwtxB75K", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1391542477428883637/qDrictvi-JGikHaU-KnYuPEUQUazAqOL6DZQbT4Av6EUUH_ErXG0pGLs-zPjgwtxB75K", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1391542477428883637/qDrictvi-JGikHaU-KnYuPEUQUazAqOL6DZQbT4Av6EUUH_ErXG0pGLs-zPjgwtxB75K", -- PONTOS
            }
        },
        ["Nhocune"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ["dollarz"] = true,
                ["aluminum"] = true,
                ["plastic"] = true,
                ["copper"] = true,
            },
            coordsChest = vec3(1531.67,1704.49,110.16),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Osasco"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["moladearma"] = true,
                ["aluminum"] = true,
                ["weaponbody"] = true,
            },
            coordsChest = vec3(364.96,3532.46,35.18),
            webhook = { -- WEBHOOK PARA LOGS
            ["Permission"] = "https://discord.com/api/webhooks/1403647796732497980/recIWvmwGsPC4PNxG6GYdaCUJyQpmswHfO_tLqvxwdAp2cUcm-gVf5x_EF-o59O8izTo", -- PERMISSAO ATUALIZADA
            ["AddMember"] = "https://discord.com/api/webhooks/1403647796732497980/recIWvmwGsPC4PNxG6GYdaCUJyQpmswHfO_tLqvxwdAp2cUcm-gVf5x_EF-o59O8izTo", -- MEMBRO ADICIOANDO
            ["RemMember"] = "https://discord.com/api/webhooks/1403647796732497980/recIWvmwGsPC4PNxG6GYdaCUJyQpmswHfO_tLqvxwdAp2cUcm-gVf5x_EF-o59O8izTo", -- MEMBRO REMOVIDO
            ["Bank"] = "https://discord.com/api/webhooks/1403647796732497980/recIWvmwGsPC4PNxG6GYdaCUJyQpmswHfO_tLqvxwdAp2cUcm-gVf5x_EF-o59O8izTo", -- BANCO
            ["Partner"] = "https://discord.com/api/webhooks/1403647796732497980/recIWvmwGsPC4PNxG6GYdaCUJyQpmswHfO_tLqvxwdAp2cUcm-gVf5x_EF-o59O8izTo", -- PARCEIRO
            ["Salary"] = "https://discord.com/api/webhooks/1403647796732497980/recIWvmwGsPC4PNxG6GYdaCUJyQpmswHfO_tLqvxwdAp2cUcm-gVf5x_EF-o59O8izTo", -- SALARIO
            ["PaySalary"] = "https://discord.com/api/webhooks/1403647796732497980/recIWvmwGsPC4PNxG6GYdaCUJyQpmswHfO_tLqvxwdAp2cUcm-gVf5x_EF-o59O8izTo", -- PAGAMENTO DE SALARIO
            ["Commentary"] = "https://discord.com/api/webhooks/1403647796732497980/recIWvmwGsPC4PNxG6GYdaCUJyQpmswHfO_tLqvxwdAp2cUcm-gVf5x_EF-o59O8izTo", -- COMENTARIOS
            ["TakeChest"] = "https://discord.com/api/webhooks/1403647796732497980/recIWvmwGsPC4PNxG6GYdaCUJyQpmswHfO_tLqvxwdAp2cUcm-gVf5x_EF-o59O8izTo", -- ITENS RETIRADOS DO BAU
            ["PutChest"] = "https://discord.com/api/webhooks/1403647796732497980/recIWvmwGsPC4PNxG6GYdaCUJyQpmswHfO_tLqvxwdAp2cUcm-gVf5x_EF-o59O8izTo", -- ITENS COLOCADOS NO BAU
            ["Goals"] = "https://discord.com/api/webhooks/1403647796732497980/recIWvmwGsPC4PNxG6GYdaCUJyQpmswHfO_tLqvxwdAp2cUcm-gVf5x_EF-o59O8izTo", -- METAS
            ["PaymentGoals"] = "https://discord.com/api/webhooks/1403647796732497980/recIWvmwGsPC4PNxG6GYdaCUJyQpmswHfO_tLqvxwdAp2cUcm-gVf5x_EF-o59O8izTo", -- PAGAMENTO METAS
            ["Points"] = "https://discord.com/api/webhooks/1403647796732497980/recIWvmwGsPC4PNxG6GYdaCUJyQpmswHfO_tLqvxwdAp2cUcm-gVf5x_EF-o59O8izTo", -- PONTOS
        }
        },
        ["Ferrovelho"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["aluminum"] = true,
                ["copper"] = true,
                ["plastic"] = true,
            },
            coordsChest = vec3(486.18,-1324.12,29.2),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Grajau"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["capsula"] = true,
                ["projetil"] = true,
                ["polvora"] = true,
                ["aluminum"] = true,
            },
            coordsChest = vec3(-1714.02,-220.66,61.84),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1403646701889392680/_TFCgpGe7pp4hQx-UqlqLR7cZkstajBYEtKe-oYVXIowGtLWU4FIj9YYf0FiQ4uVA7Uz", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1403646701889392680/_TFCgpGe7pp4hQx-UqlqLR7cZkstajBYEtKe-oYVXIowGtLWU4FIj9YYf0FiQ4uVA7Uz", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1403646701889392680/_TFCgpGe7pp4hQx-UqlqLR7cZkstajBYEtKe-oYVXIowGtLWU4FIj9YYf0FiQ4uVA7Uz", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1403646701889392680/_TFCgpGe7pp4hQx-UqlqLR7cZkstajBYEtKe-oYVXIowGtLWU4FIj9YYf0FiQ4uVA7Uz", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1403646701889392680/_TFCgpGe7pp4hQx-UqlqLR7cZkstajBYEtKe-oYVXIowGtLWU4FIj9YYf0FiQ4uVA7Uz", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1403646701889392680/_TFCgpGe7pp4hQx-UqlqLR7cZkstajBYEtKe-oYVXIowGtLWU4FIj9YYf0FiQ4uVA7Uz", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1403646701889392680/_TFCgpGe7pp4hQx-UqlqLR7cZkstajBYEtKe-oYVXIowGtLWU4FIj9YYf0FiQ4uVA7Uz", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1403646701889392680/_TFCgpGe7pp4hQx-UqlqLR7cZkstajBYEtKe-oYVXIowGtLWU4FIj9YYf0FiQ4uVA7Uz", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1403646701889392680/_TFCgpGe7pp4hQx-UqlqLR7cZkstajBYEtKe-oYVXIowGtLWU4FIj9YYf0FiQ4uVA7Uz", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1403646701889392680/_TFCgpGe7pp4hQx-UqlqLR7cZkstajBYEtKe-oYVXIowGtLWU4FIj9YYf0FiQ4uVA7Uz", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1403646701889392680/_TFCgpGe7pp4hQx-UqlqLR7cZkstajBYEtKe-oYVXIowGtLWU4FIj9YYf0FiQ4uVA7Uz", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1403646701889392680/_TFCgpGe7pp4hQx-UqlqLR7cZkstajBYEtKe-oYVXIowGtLWU4FIj9YYf0FiQ4uVA7Uz", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1403646701889392680/_TFCgpGe7pp4hQx-UqlqLR7cZkstajBYEtKe-oYVXIowGtLWU4FIj9YYf0FiQ4uVA7Uz", -- PONTOS
        }
        },
        ["Brasilandia"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["capsula"] = true,
                ["projetil"] = true,
                ["polvora"] = true,
            },
            coordsChest = vec3(894.84,349.92,121.27),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1403602099853594757/3HTi8q5RDaw30rcfqAvHsieoLKh_jyLFGgDkyRGLNPbERy2mXbv85TzuK8iLUIXKfe8o", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1403602099853594757/3HTi8q5RDaw30rcfqAvHsieoLKh_jyLFGgDkyRGLNPbERy2mXbv85TzuK8iLUIXKfe8o", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1403602099853594757/3HTi8q5RDaw30rcfqAvHsieoLKh_jyLFGgDkyRGLNPbERy2mXbv85TzuK8iLUIXKfe8o", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1403602099853594757/3HTi8q5RDaw30rcfqAvHsieoLKh_jyLFGgDkyRGLNPbERy2mXbv85TzuK8iLUIXKfe8o", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1403602099853594757/3HTi8q5RDaw30rcfqAvHsieoLKh_jyLFGgDkyRGLNPbERy2mXbv85TzuK8iLUIXKfe8o", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1403602099853594757/3HTi8q5RDaw30rcfqAvHsieoLKh_jyLFGgDkyRGLNPbERy2mXbv85TzuK8iLUIXKfe8o", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1403602099853594757/3HTi8q5RDaw30rcfqAvHsieoLKh_jyLFGgDkyRGLNPbERy2mXbv85TzuK8iLUIXKfe8o", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1403602099853594757/3HTi8q5RDaw30rcfqAvHsieoLKh_jyLFGgDkyRGLNPbERy2mXbv85TzuK8iLUIXKfe8o", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1403602099853594757/3HTi8q5RDaw30rcfqAvHsieoLKh_jyLFGgDkyRGLNPbERy2mXbv85TzuK8iLUIXKfe8o", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1403602099853594757/3HTi8q5RDaw30rcfqAvHsieoLKh_jyLFGgDkyRGLNPbERy2mXbv85TzuK8iLUIXKfe8o", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1403602099853594757/3HTi8q5RDaw30rcfqAvHsieoLKh_jyLFGgDkyRGLNPbERy2mXbv85TzuK8iLUIXKfe8o", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1403602099853594757/3HTi8q5RDaw30rcfqAvHsieoLKh_jyLFGgDkyRGLNPbERy2mXbv85TzuK8iLUIXKfe8o", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1403602099853594757/3HTi8q5RDaw30rcfqAvHsieoLKh_jyLFGgDkyRGLNPbERy2mXbv85TzuK8iLUIXKfe8o", -- PONTOS
        }
        },
        ["Diadema"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["saline"] = true,
                ["drugtable"] = true,
                ["acetone"] = true,
            },
            coordsChest = vec3(110.79,1342.65,286.67),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1391581893106991188/9DiQI1efgB2dFBgk2sFty0izw0kXQRr-DJqEMIIlhnt5aqWBTxrynKFsiLBbrdtlUGfr", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1391581893106991188/9DiQI1efgB2dFBgk2sFty0izw0kXQRr-DJqEMIIlhnt5aqWBTxrynKFsiLBbrdtlUGfr", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1391581893106991188/9DiQI1efgB2dFBgk2sFty0izw0kXQRr-DJqEMIIlhnt5aqWBTxrynKFsiLBbrdtlUGfr", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1391581893106991188/9DiQI1efgB2dFBgk2sFty0izw0kXQRr-DJqEMIIlhnt5aqWBTxrynKFsiLBbrdtlUGfr", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1391581893106991188/9DiQI1efgB2dFBgk2sFty0izw0kXQRr-DJqEMIIlhnt5aqWBTxrynKFsiLBbrdtlUGfr", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1391581893106991188/9DiQI1efgB2dFBgk2sFty0izw0kXQRr-DJqEMIIlhnt5aqWBTxrynKFsiLBbrdtlUGfr", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1391581893106991188/9DiQI1efgB2dFBgk2sFty0izw0kXQRr-DJqEMIIlhnt5aqWBTxrynKFsiLBbrdtlUGfr", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1391581893106991188/9DiQI1efgB2dFBgk2sFty0izw0kXQRr-DJqEMIIlhnt5aqWBTxrynKFsiLBbrdtlUGfr", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1391581893106991188/9DiQI1efgB2dFBgk2sFty0izw0kXQRr-DJqEMIIlhnt5aqWBTxrynKFsiLBbrdtlUGfr", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1391581893106991188/9DiQI1efgB2dFBgk2sFty0izw0kXQRr-DJqEMIIlhnt5aqWBTxrynKFsiLBbrdtlUGfr", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1391581893106991188/9DiQI1efgB2dFBgk2sFty0izw0kXQRr-DJqEMIIlhnt5aqWBTxrynKFsiLBbrdtlUGfr", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1391581893106991188/9DiQI1efgB2dFBgk2sFty0izw0kXQRr-DJqEMIIlhnt5aqWBTxrynKFsiLBbrdtlUGfr", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1391581893106991188/9DiQI1efgB2dFBgk2sFty0izw0kXQRr-DJqEMIIlhnt5aqWBTxrynKFsiLBbrdtlUGfr", -- PONTOS
        }
        },
        ["Capaoredondo"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["saline"] = true,
                ["drugtable"] = true,
                ["sulfuric"] = true,
            },
            coordsChest = vec3(802.45,-288.93,69.89),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1403600945514020884/_7Xt2ccccdmm5Je_ojX9nhCkEGOdLL2Jj8c7mj5mGdRJV_Ru2SZYU2nVJgEETFnju2O6", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1403600945514020884/_7Xt2ccccdmm5Je_ojX9nhCkEGOdLL2Jj8c7mj5mGdRJV_Ru2SZYU2nVJgEETFnju2O6", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1403600945514020884/_7Xt2ccccdmm5Je_ojX9nhCkEGOdLL2Jj8c7mj5mGdRJV_Ru2SZYU2nVJgEETFnju2O6", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1403600945514020884/_7Xt2ccccdmm5Je_ojX9nhCkEGOdLL2Jj8c7mj5mGdRJV_Ru2SZYU2nVJgEETFnju2O6", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1403600945514020884/_7Xt2ccccdmm5Je_ojX9nhCkEGOdLL2Jj8c7mj5mGdRJV_Ru2SZYU2nVJgEETFnju2O6", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1403600945514020884/_7Xt2ccccdmm5Je_ojX9nhCkEGOdLL2Jj8c7mj5mGdRJV_Ru2SZYU2nVJgEETFnju2O6", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1403600945514020884/_7Xt2ccccdmm5Je_ojX9nhCkEGOdLL2Jj8c7mj5mGdRJV_Ru2SZYU2nVJgEETFnju2O6", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1403600945514020884/_7Xt2ccccdmm5Je_ojX9nhCkEGOdLL2Jj8c7mj5mGdRJV_Ru2SZYU2nVJgEETFnju2O6", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1403600945514020884/_7Xt2ccccdmm5Je_ojX9nhCkEGOdLL2Jj8c7mj5mGdRJV_Ru2SZYU2nVJgEETFnju2O6", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1403600945514020884/_7Xt2ccccdmm5Je_ojX9nhCkEGOdLL2Jj8c7mj5mGdRJV_Ru2SZYU2nVJgEETFnju2O6", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1403600945514020884/_7Xt2ccccdmm5Je_ojX9nhCkEGOdLL2Jj8c7mj5mGdRJV_Ru2SZYU2nVJgEETFnju2O6", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1403600945514020884/_7Xt2ccccdmm5Je_ojX9nhCkEGOdLL2Jj8c7mj5mGdRJV_Ru2SZYU2nVJgEETFnju2O6", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1403600945514020884/_7Xt2ccccdmm5Je_ojX9nhCkEGOdLL2Jj8c7mj5mGdRJV_Ru2SZYU2nVJgEETFnju2O6", -- PONTOS
            }
        },
        ["Tiradentes"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ["dollarz"] = true,
                ["aluminum"] = true,
                ["plastic"] = true,
                ["copper"] = true,
            },
            coordsChest = vec3(2280.81,3559.59,66.05),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1391580973317226666/qXCit31iWVnAfO_To-k4hn4mEPkeS4lDFt_GkxJ2o_UH_heuQE3kIwqHd9Ckx6heIjty", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1391580973317226666/qXCit31iWVnAfO_To-k4hn4mEPkeS4lDFt_GkxJ2o_UH_heuQE3kIwqHd9Ckx6heIjty", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1391580973317226666/qXCit31iWVnAfO_To-k4hn4mEPkeS4lDFt_GkxJ2o_UH_heuQE3kIwqHd9Ckx6heIjty", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1391580973317226666/qXCit31iWVnAfO_To-k4hn4mEPkeS4lDFt_GkxJ2o_UH_heuQE3kIwqHd9Ckx6heIjty", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1391580973317226666/qXCit31iWVnAfO_To-k4hn4mEPkeS4lDFt_GkxJ2o_UH_heuQE3kIwqHd9Ckx6heIjty", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1391580973317226666/qXCit31iWVnAfO_To-k4hn4mEPkeS4lDFt_GkxJ2o_UH_heuQE3kIwqHd9Ckx6heIjty", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1391580973317226666/qXCit31iWVnAfO_To-k4hn4mEPkeS4lDFt_GkxJ2o_UH_heuQE3kIwqHd9Ckx6heIjty", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1391580973317226666/qXCit31iWVnAfO_To-k4hn4mEPkeS4lDFt_GkxJ2o_UH_heuQE3kIwqHd9Ckx6heIjty", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1391580973317226666/qXCit31iWVnAfO_To-k4hn4mEPkeS4lDFt_GkxJ2o_UH_heuQE3kIwqHd9Ckx6heIjty", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1391580973317226666/qXCit31iWVnAfO_To-k4hn4mEPkeS4lDFt_GkxJ2o_UH_heuQE3kIwqHd9Ckx6heIjty", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1391580973317226666/qXCit31iWVnAfO_To-k4hn4mEPkeS4lDFt_GkxJ2o_UH_heuQE3kIwqHd9Ckx6heIjty", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1391580973317226666/qXCit31iWVnAfO_To-k4hn4mEPkeS4lDFt_GkxJ2o_UH_heuQE3kIwqHd9Ckx6heIjty", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1391580973317226666/qXCit31iWVnAfO_To-k4hn4mEPkeS4lDFt_GkxJ2o_UH_heuQE3kIwqHd9Ckx6heIjty", -- PONTOS
            }
        },
        ["Heliopolis"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = true, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["moladearma"] = true,
                ["aluminum"] = true,
                ["weaponbody"] = true,
            },
            coordsChest = vec3(1900.9,1.3,188.89),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1403649138502926407/r3tYRzR0TPw6uy2AuShRbCLoSvcpYdvwiI37ENRcCTv7wzVppk5t935nzoSDAAFeBUKg", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1403649138502926407/r3tYRzR0TPw6uy2AuShRbCLoSvcpYdvwiI37ENRcCTv7wzVppk5t935nzoSDAAFeBUKg", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1403649138502926407/r3tYRzR0TPw6uy2AuShRbCLoSvcpYdvwiI37ENRcCTv7wzVppk5t935nzoSDAAFeBUKg", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1403649138502926407/r3tYRzR0TPw6uy2AuShRbCLoSvcpYdvwiI37ENRcCTv7wzVppk5t935nzoSDAAFeBUKg", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1403649138502926407/r3tYRzR0TPw6uy2AuShRbCLoSvcpYdvwiI37ENRcCTv7wzVppk5t935nzoSDAAFeBUKg", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1403649138502926407/r3tYRzR0TPw6uy2AuShRbCLoSvcpYdvwiI37ENRcCTv7wzVppk5t935nzoSDAAFeBUKg", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1403649138502926407/r3tYRzR0TPw6uy2AuShRbCLoSvcpYdvwiI37ENRcCTv7wzVppk5t935nzoSDAAFeBUKg", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1403649138502926407/r3tYRzR0TPw6uy2AuShRbCLoSvcpYdvwiI37ENRcCTv7wzVppk5t935nzoSDAAFeBUKg", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1403649138502926407/r3tYRzR0TPw6uy2AuShRbCLoSvcpYdvwiI37ENRcCTv7wzVppk5t935nzoSDAAFeBUKg", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1403649138502926407/r3tYRzR0TPw6uy2AuShRbCLoSvcpYdvwiI37ENRcCTv7wzVppk5t935nzoSDAAFeBUKg", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1403649138502926407/r3tYRzR0TPw6uy2AuShRbCLoSvcpYdvwiI37ENRcCTv7wzVppk5t935nzoSDAAFeBUKg", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1403649138502926407/r3tYRzR0TPw6uy2AuShRbCLoSvcpYdvwiI37ENRcCTv7wzVppk5t935nzoSDAAFeBUKg", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1403649138502926407/r3tYRzR0TPw6uy2AuShRbCLoSvcpYdvwiI37ENRcCTv7wzVppk5t935nzoSDAAFeBUKg", -- PONTOS
        }
        },
        ["Bahamas"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['paper'] = true,
                ['dollarz'] = true,
            },
            coordsChest = vec3(-1368.55,-613.95,30.31),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1391558399224840305/KGFt5PmEUH9PgIYBNH-7WwDh2gmrsS0B85Fwb3Hi3PF-xcJ746shk5_zMrlKZL0zXq2I", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1391558399224840305/KGFt5PmEUH9PgIYBNH-7WwDh2gmrsS0B85Fwb3Hi3PF-xcJ746shk5_zMrlKZL0zXq2I", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1391558399224840305/KGFt5PmEUH9PgIYBNH-7WwDh2gmrsS0B85Fwb3Hi3PF-xcJ746shk5_zMrlKZL0zXq2I", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1391558399224840305/KGFt5PmEUH9PgIYBNH-7WwDh2gmrsS0B85Fwb3Hi3PF-xcJ746shk5_zMrlKZL0zXq2I", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1391558399224840305/KGFt5PmEUH9PgIYBNH-7WwDh2gmrsS0B85Fwb3Hi3PF-xcJ746shk5_zMrlKZL0zXq2I", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1391558399224840305/KGFt5PmEUH9PgIYBNH-7WwDh2gmrsS0B85Fwb3Hi3PF-xcJ746shk5_zMrlKZL0zXq2I", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1391558399224840305/KGFt5PmEUH9PgIYBNH-7WwDh2gmrsS0B85Fwb3Hi3PF-xcJ746shk5_zMrlKZL0zXq2I", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1391558399224840305/KGFt5PmEUH9PgIYBNH-7WwDh2gmrsS0B85Fwb3Hi3PF-xcJ746shk5_zMrlKZL0zXq2I", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1391558399224840305/KGFt5PmEUH9PgIYBNH-7WwDh2gmrsS0B85Fwb3Hi3PF-xcJ746shk5_zMrlKZL0zXq2I", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1391558399224840305/KGFt5PmEUH9PgIYBNH-7WwDh2gmrsS0B85Fwb3Hi3PF-xcJ746shk5_zMrlKZL0zXq2I", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1391558399224840305/KGFt5PmEUH9PgIYBNH-7WwDh2gmrsS0B85Fwb3Hi3PF-xcJ746shk5_zMrlKZL0zXq2I", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1391558399224840305/KGFt5PmEUH9PgIYBNH-7WwDh2gmrsS0B85Fwb3Hi3PF-xcJ746shk5_zMrlKZL0zXq2I", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1391558399224840305/KGFt5PmEUH9PgIYBNH-7WwDh2gmrsS0B85Fwb3Hi3PF-xcJ746shk5_zMrlKZL0zXq2I", -- PONTOS
            }
        },
        ["Life"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['paper'] = true,
                ['dollarz'] = true
            },
            coordsChest = vec3(-1052.28,-233.14,44.01),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1403650707311165491/mr5TXE9ftJjoJK9zjmV1_RxWVCGwg9t_KjBwxO1PoCZXV_YIYs1KODRe3XAIKaADI1Rx", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1403650707311165491/mr5TXE9ftJjoJK9zjmV1_RxWVCGwg9t_KjBwxO1PoCZXV_YIYs1KODRe3XAIKaADI1Rx", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1403650707311165491/mr5TXE9ftJjoJK9zjmV1_RxWVCGwg9t_KjBwxO1PoCZXV_YIYs1KODRe3XAIKaADI1Rx", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1403650707311165491/mr5TXE9ftJjoJK9zjmV1_RxWVCGwg9t_KjBwxO1PoCZXV_YIYs1KODRe3XAIKaADI1Rx", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1403650707311165491/mr5TXE9ftJjoJK9zjmV1_RxWVCGwg9t_KjBwxO1PoCZXV_YIYs1KODRe3XAIKaADI1Rx", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1403650707311165491/mr5TXE9ftJjoJK9zjmV1_RxWVCGwg9t_KjBwxO1PoCZXV_YIYs1KODRe3XAIKaADI1Rx", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1403650707311165491/mr5TXE9ftJjoJK9zjmV1_RxWVCGwg9t_KjBwxO1PoCZXV_YIYs1KODRe3XAIKaADI1Rx", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1403650707311165491/mr5TXE9ftJjoJK9zjmV1_RxWVCGwg9t_KjBwxO1PoCZXV_YIYs1KODRe3XAIKaADI1Rx", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1403650707311165491/mr5TXE9ftJjoJK9zjmV1_RxWVCGwg9t_KjBwxO1PoCZXV_YIYs1KODRe3XAIKaADI1Rx", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1403650707311165491/mr5TXE9ftJjoJK9zjmV1_RxWVCGwg9t_KjBwxO1PoCZXV_YIYs1KODRe3XAIKaADI1Rx", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1403650707311165491/mr5TXE9ftJjoJK9zjmV1_RxWVCGwg9t_KjBwxO1PoCZXV_YIYs1KODRe3XAIKaADI1Rx", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1403650707311165491/mr5TXE9ftJjoJK9zjmV1_RxWVCGwg9t_KjBwxO1PoCZXV_YIYs1KODRe3XAIKaADI1Rx", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1403650707311165491/mr5TXE9ftJjoJK9zjmV1_RxWVCGwg9t_KjBwxO1PoCZXV_YIYs1KODRe3XAIKaADI1Rx", -- PONTOS
            }
        },
        ["Cobertura"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['paper'] = true,
                ['dollarz'] = true
            },
            coordsChest = vec3(-603.74,-724.11,216.03),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1408238578320019569/kkB4dVxQoKqsVbcagWdAJwJ9z3dmBcfkI12Bu4iahEaPK0t6c38KFv5IAER-ucr557aD", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1408238578320019569/kkB4dVxQoKqsVbcagWdAJwJ9z3dmBcfkI12Bu4iahEaPK0t6c38KFv5IAER-ucr557aD", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1408238578320019569/kkB4dVxQoKqsVbcagWdAJwJ9z3dmBcfkI12Bu4iahEaPK0t6c38KFv5IAER-ucr557aD", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1408238578320019569/kkB4dVxQoKqsVbcagWdAJwJ9z3dmBcfkI12Bu4iahEaPK0t6c38KFv5IAER-ucr557aD", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1408238578320019569/kkB4dVxQoKqsVbcagWdAJwJ9z3dmBcfkI12Bu4iahEaPK0t6c38KFv5IAER-ucr557aD", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1408238578320019569/kkB4dVxQoKqsVbcagWdAJwJ9z3dmBcfkI12Bu4iahEaPK0t6c38KFv5IAER-ucr557aD", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1408238578320019569/kkB4dVxQoKqsVbcagWdAJwJ9z3dmBcfkI12Bu4iahEaPK0t6c38KFv5IAER-ucr557aD", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1408238578320019569/kkB4dVxQoKqsVbcagWdAJwJ9z3dmBcfkI12Bu4iahEaPK0t6c38KFv5IAER-ucr557aD", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1408238578320019569/kkB4dVxQoKqsVbcagWdAJwJ9z3dmBcfkI12Bu4iahEaPK0t6c38KFv5IAER-ucr557aD", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1408238578320019569/kkB4dVxQoKqsVbcagWdAJwJ9z3dmBcfkI12Bu4iahEaPK0t6c38KFv5IAER-ucr557aD", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1408238578320019569/kkB4dVxQoKqsVbcagWdAJwJ9z3dmBcfkI12Bu4iahEaPK0t6c38KFv5IAER-ucr557aD", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1408238578320019569/kkB4dVxQoKqsVbcagWdAJwJ9z3dmBcfkI12Bu4iahEaPK0t6c38KFv5IAER-ucr557aD", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1408238578320019569/kkB4dVxQoKqsVbcagWdAJwJ9z3dmBcfkI12Bu4iahEaPK0t6c38KFv5IAER-ucr557aD", -- PONTOS
            }
        },
        ["Jaguare"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["techtrash"] = true,
                ["copper"] = true,
                ["moladearma"] = true,
                ["aluminum"] = true,
                ["weaponbody"] = true,
            },
            coordsChest = vec3(1272.2,-127.19,87.64),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1391544067795714171/TpTN-tJlEp-HdOtdAt4rBjbtKaLG_h9_Ida-PnZu16DnM1WH30qTfBqN1EwXZaniT_7B", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1391544067795714171/TpTN-tJlEp-HdOtdAt4rBjbtKaLG_h9_Ida-PnZu16DnM1WH30qTfBqN1EwXZaniT_7B", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1391544067795714171/TpTN-tJlEp-HdOtdAt4rBjbtKaLG_h9_Ida-PnZu16DnM1WH30qTfBqN1EwXZaniT_7B", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1391544067795714171/TpTN-tJlEp-HdOtdAt4rBjbtKaLG_h9_Ida-PnZu16DnM1WH30qTfBqN1EwXZaniT_7B", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1391544067795714171/TpTN-tJlEp-HdOtdAt4rBjbtKaLG_h9_Ida-PnZu16DnM1WH30qTfBqN1EwXZaniT_7B", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1391544067795714171/TpTN-tJlEp-HdOtdAt4rBjbtKaLG_h9_Ida-PnZu16DnM1WH30qTfBqN1EwXZaniT_7B", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1391544067795714171/TpTN-tJlEp-HdOtdAt4rBjbtKaLG_h9_Ida-PnZu16DnM1WH30qTfBqN1EwXZaniT_7B", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1391544067795714171/TpTN-tJlEp-HdOtdAt4rBjbtKaLG_h9_Ida-PnZu16DnM1WH30qTfBqN1EwXZaniT_7B", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1391544067795714171/TpTN-tJlEp-HdOtdAt4rBjbtKaLG_h9_Ida-PnZu16DnM1WH30qTfBqN1EwXZaniT_7B", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1391544067795714171/TpTN-tJlEp-HdOtdAt4rBjbtKaLG_h9_Ida-PnZu16DnM1WH30qTfBqN1EwXZaniT_7B", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1391544067795714171/TpTN-tJlEp-HdOtdAt4rBjbtKaLG_h9_Ida-PnZu16DnM1WH30qTfBqN1EwXZaniT_7B", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1391544067795714171/TpTN-tJlEp-HdOtdAt4rBjbtKaLG_h9_Ida-PnZu16DnM1WH30qTfBqN1EwXZaniT_7B", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1391544067795714171/TpTN-tJlEp-HdOtdAt4rBjbtKaLG_h9_Ida-PnZu16DnM1WH30qTfBqN1EwXZaniT_7B", -- PONTOS
        }
        },
        ["Vanilla"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["paper"] = true,
            },
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discordapp.com/api/webhooks/1352436781257199747/IxT8lx8-sCVleveG7U8rQdbflymB71ROMcRt0V9-fmiOrpdSyLENc62BS_LMmcqtDjPf", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discordapp.com/api/webhooks/1352436781257199747/IxT8lx8-sCVleveG7U8rQdbflymB71ROMcRt0V9-fmiOrpdSyLENc62BS_LMmcqtDjPf", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discordapp.com/api/webhooks/1352436781257199747/IxT8lx8-sCVleveG7U8rQdbflymB71ROMcRt0V9-fmiOrpdSyLENc62BS_LMmcqtDjPf", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discordapp.com/api/webhooks/1352436781257199747/IxT8lx8-sCVleveG7U8rQdbflymB71ROMcRt0V9-fmiOrpdSyLENc62BS_LMmcqtDjPf", -- BANCO
                ["Partner"] = "https://discordapp.com/api/webhooks/1352436781257199747/IxT8lx8-sCVleveG7U8rQdbflymB71ROMcRt0V9-fmiOrpdSyLENc62BS_LMmcqtDjPf", -- PARCEIRO
                ["Salary"] = "https://discordapp.com/api/webhooks/1352436781257199747/IxT8lx8-sCVleveG7U8rQdbflymB71ROMcRt0V9-fmiOrpdSyLENc62BS_LMmcqtDjPf", -- SALARIO
                ["PaySalary"] = "https://discordapp.com/api/webhooks/1352436781257199747/IxT8lx8-sCVleveG7U8rQdbflymB71ROMcRt0V9-fmiOrpdSyLENc62BS_LMmcqtDjPf", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discordapp.com/api/webhooks/1352436781257199747/IxT8lx8-sCVleveG7U8rQdbflymB71ROMcRt0V9-fmiOrpdSyLENc62BS_LMmcqtDjPf", -- COMENTARIOS
                ["TakeChest"] = "https://discordapp.com/api/webhooks/1352436781257199747/IxT8lx8-sCVleveG7U8rQdbflymB71ROMcRt0V9-fmiOrpdSyLENc62BS_LMmcqtDjPf", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discordapp.com/api/webhooks/1352436781257199747/IxT8lx8-sCVleveG7U8rQdbflymB71ROMcRt0V9-fmiOrpdSyLENc62BS_LMmcqtDjPf", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discordapp.com/api/webhooks/1352436781257199747/IxT8lx8-sCVleveG7U8rQdbflymB71ROMcRt0V9-fmiOrpdSyLENc62BS_LMmcqtDjPf", -- METAS
                ["PaymentGoals"] = "https://discordapp.com/api/webhooks/1352436781257199747/IxT8lx8-sCVleveG7U8rQdbflymB71ROMcRt0V9-fmiOrpdSyLENc62BS_LMmcqtDjPf", -- PAGAMENTO METAS
                ["Points"] = "https://discordapp.com/api/webhooks/1352436781257199747/IxT8lx8-sCVleveG7U8rQdbflymB71ROMcRt0V9-fmiOrpdSyLENc62BS_LMmcqtDjPf", -- PONTOS
            }
        },
        ["Protege"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Agente-Seguranca", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Agente-1Classe", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Agente-2Classe", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {},
            coordsChest = false,
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Pecinha"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["paper"] = true,
            },
            coordsChest = false,
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Campolimpo"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["cokeleaf"] = true,
                ["saline"] = true,
                ["drugtable"] = true,
                ["sulfuric"] = true,
            },
            coordsChest = vec3(1346.09,-678.52,88.55),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1391543792938520627/47ORj0b36aPW26m140s_b9MCOM6twh-i3pLPhQxeYgbIok37yfy7XkRb0I_MGwHnhbZh", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1391543792938520627/47ORj0b36aPW26m140s_b9MCOM6twh-i3pLPhQxeYgbIok37yfy7XkRb0I_MGwHnhbZh", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1391543792938520627/47ORj0b36aPW26m140s_b9MCOM6twh-i3pLPhQxeYgbIok37yfy7XkRb0I_MGwHnhbZh", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1391543792938520627/47ORj0b36aPW26m140s_b9MCOM6twh-i3pLPhQxeYgbIok37yfy7XkRb0I_MGwHnhbZh", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1391543792938520627/47ORj0b36aPW26m140s_b9MCOM6twh-i3pLPhQxeYgbIok37yfy7XkRb0I_MGwHnhbZh", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1391543792938520627/47ORj0b36aPW26m140s_b9MCOM6twh-i3pLPhQxeYgbIok37yfy7XkRb0I_MGwHnhbZh", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1391543792938520627/47ORj0b36aPW26m140s_b9MCOM6twh-i3pLPhQxeYgbIok37yfy7XkRb0I_MGwHnhbZh", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1391543792938520627/47ORj0b36aPW26m140s_b9MCOM6twh-i3pLPhQxeYgbIok37yfy7XkRb0I_MGwHnhbZh", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1391543792938520627/47ORj0b36aPW26m140s_b9MCOM6twh-i3pLPhQxeYgbIok37yfy7XkRb0I_MGwHnhbZh", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1391543792938520627/47ORj0b36aPW26m140s_b9MCOM6twh-i3pLPhQxeYgbIok37yfy7XkRb0I_MGwHnhbZh", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1391543792938520627/47ORj0b36aPW26m140s_b9MCOM6twh-i3pLPhQxeYgbIok37yfy7XkRb0I_MGwHnhbZh", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1391543792938520627/47ORj0b36aPW26m140s_b9MCOM6twh-i3pLPhQxeYgbIok37yfy7XkRb0I_MGwHnhbZh", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1391543792938520627/47ORj0b36aPW26m140s_b9MCOM6twh-i3pLPhQxeYgbIok37yfy7XkRb0I_MGwHnhbZh", -- PONTOS
        }
        },
        ["Sonia"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = true, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["techtrash"] = true,
                ["copper"] = true,
                ["moladearma"] = true,
                ["aluminum"] = true,
                ["weaponbody"] = true,
            },
            coordsChest = vec3(1858.9,-2249.12,171.75),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1391551151412875375/RcvCrkQNUdRnM9xsHp2JRykp8g10hWWb69ptp9aDmJYWlstWWQQEkoJV6QHGx4trvQYH", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1391551151412875375/RcvCrkQNUdRnM9xsHp2JRykp8g10hWWb69ptp9aDmJYWlstWWQQEkoJV6QHGx4trvQYH", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1391551151412875375/RcvCrkQNUdRnM9xsHp2JRykp8g10hWWb69ptp9aDmJYWlstWWQQEkoJV6QHGx4trvQYH", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1391551151412875375/RcvCrkQNUdRnM9xsHp2JRykp8g10hWWb69ptp9aDmJYWlstWWQQEkoJV6QHGx4trvQYH", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1391551151412875375/RcvCrkQNUdRnM9xsHp2JRykp8g10hWWb69ptp9aDmJYWlstWWQQEkoJV6QHGx4trvQYH", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1391551151412875375/RcvCrkQNUdRnM9xsHp2JRykp8g10hWWb69ptp9aDmJYWlstWWQQEkoJV6QHGx4trvQYH", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1391551151412875375/RcvCrkQNUdRnM9xsHp2JRykp8g10hWWb69ptp9aDmJYWlstWWQQEkoJV6QHGx4trvQYH", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1391551151412875375/RcvCrkQNUdRnM9xsHp2JRykp8g10hWWb69ptp9aDmJYWlstWWQQEkoJV6QHGx4trvQYH", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1391551151412875375/RcvCrkQNUdRnM9xsHp2JRykp8g10hWWb69ptp9aDmJYWlstWWQQEkoJV6QHGx4trvQYH", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1391551151412875375/RcvCrkQNUdRnM9xsHp2JRykp8g10hWWb69ptp9aDmJYWlstWWQQEkoJV6QHGx4trvQYH", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1391551151412875375/RcvCrkQNUdRnM9xsHp2JRykp8g10hWWb69ptp9aDmJYWlstWWQQEkoJV6QHGx4trvQYH", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1391551151412875375/RcvCrkQNUdRnM9xsHp2JRykp8g10hWWb69ptp9aDmJYWlstWWQQEkoJV6QHGx4trvQYH", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1391551151412875375/RcvCrkQNUdRnM9xsHp2JRykp8g10hWWb69ptp9aDmJYWlstWWQQEkoJV6QHGx4trvQYH", -- PONTOS
        }
        },
        ["Laura"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ['weedleaf'] = true,
                ["ziplock"] = true,
                ["tableweed"] = true,
            },
            coordsChest = vec3(-3089.47,1471.28,25.24),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1403649637637951488/FVmE9Rzf-KMjbwK4TPkaNLV0WNn4h8yG1IwW6wM4i5RDcD_bY0Q_apEyaddy0fHsWN0q", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1403649637637951488/FVmE9Rzf-KMjbwK4TPkaNLV0WNn4h8yG1IwW6wM4i5RDcD_bY0Q_apEyaddy0fHsWN0q", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1403649637637951488/FVmE9Rzf-KMjbwK4TPkaNLV0WNn4h8yG1IwW6wM4i5RDcD_bY0Q_apEyaddy0fHsWN0q", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1403649637637951488/FVmE9Rzf-KMjbwK4TPkaNLV0WNn4h8yG1IwW6wM4i5RDcD_bY0Q_apEyaddy0fHsWN0q", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1403649637637951488/FVmE9Rzf-KMjbwK4TPkaNLV0WNn4h8yG1IwW6wM4i5RDcD_bY0Q_apEyaddy0fHsWN0q", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1403649637637951488/FVmE9Rzf-KMjbwK4TPkaNLV0WNn4h8yG1IwW6wM4i5RDcD_bY0Q_apEyaddy0fHsWN0q", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1403649637637951488/FVmE9Rzf-KMjbwK4TPkaNLV0WNn4h8yG1IwW6wM4i5RDcD_bY0Q_apEyaddy0fHsWN0q", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1403649637637951488/FVmE9Rzf-KMjbwK4TPkaNLV0WNn4h8yG1IwW6wM4i5RDcD_bY0Q_apEyaddy0fHsWN0q", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1403649637637951488/FVmE9Rzf-KMjbwK4TPkaNLV0WNn4h8yG1IwW6wM4i5RDcD_bY0Q_apEyaddy0fHsWN0q", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1403649637637951488/FVmE9Rzf-KMjbwK4TPkaNLV0WNn4h8yG1IwW6wM4i5RDcD_bY0Q_apEyaddy0fHsWN0q", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1403649637637951488/FVmE9Rzf-KMjbwK4TPkaNLV0WNn4h8yG1IwW6wM4i5RDcD_bY0Q_apEyaddy0fHsWN0q", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1403649637637951488/FVmE9Rzf-KMjbwK4TPkaNLV0WNn4h8yG1IwW6wM4i5RDcD_bY0Q_apEyaddy0fHsWN0q", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1403649637637951488/FVmE9Rzf-KMjbwK4TPkaNLV0WNn4h8yG1IwW6wM4i5RDcD_bY0Q_apEyaddy0fHsWN0q", -- PONTOS
        }
        },
        ["Guaianazes"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["saline"] = true,
                ["drugtable"] = true,
                ["weedleaf"] = true,
                ["tarp"] = true,
                ["acetone"] = true,
            },
            coordsChest = vec3(1365.16,-2437.83,62.18),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1391543537840947230/19Ilpi-t7dBKwackUMQqFnrFIDz8BnWakG40f0Oji6AZii6vN-3SLWxTVmQntuQK66A5", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1391543537840947230/19Ilpi-t7dBKwackUMQqFnrFIDz8BnWakG40f0Oji6AZii6vN-3SLWxTVmQntuQK66A5", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1391543537840947230/19Ilpi-t7dBKwackUMQqFnrFIDz8BnWakG40f0Oji6AZii6vN-3SLWxTVmQntuQK66A5", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1391543537840947230/19Ilpi-t7dBKwackUMQqFnrFIDz8BnWakG40f0Oji6AZii6vN-3SLWxTVmQntuQK66A5", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1391543537840947230/19Ilpi-t7dBKwackUMQqFnrFIDz8BnWakG40f0Oji6AZii6vN-3SLWxTVmQntuQK66A5", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1391543537840947230/19Ilpi-t7dBKwackUMQqFnrFIDz8BnWakG40f0Oji6AZii6vN-3SLWxTVmQntuQK66A5", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1391543537840947230/19Ilpi-t7dBKwackUMQqFnrFIDz8BnWakG40f0Oji6AZii6vN-3SLWxTVmQntuQK66A5", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1391543537840947230/19Ilpi-t7dBKwackUMQqFnrFIDz8BnWakG40f0Oji6AZii6vN-3SLWxTVmQntuQK66A5", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1391543537840947230/19Ilpi-t7dBKwackUMQqFnrFIDz8BnWakG40f0Oji6AZii6vN-3SLWxTVmQntuQK66A5", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1391543537840947230/19Ilpi-t7dBKwackUMQqFnrFIDz8BnWakG40f0Oji6AZii6vN-3SLWxTVmQntuQK66A5", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1391543537840947230/19Ilpi-t7dBKwackUMQqFnrFIDz8BnWakG40f0Oji6AZii6vN-3SLWxTVmQntuQK66A5", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1391543537840947230/19Ilpi-t7dBKwackUMQqFnrFIDz8BnWakG40f0Oji6AZii6vN-3SLWxTVmQntuQK66A5", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1391543537840947230/19Ilpi-t7dBKwackUMQqFnrFIDz8BnWakG40f0Oji6AZii6vN-3SLWxTVmQntuQK66A5", -- PONTOS
        }
        },
        ["Vilaede"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["cokeleaf"] = true,
                ["drugtable"] = true,
                ["sulfuric"] = true,
            },
            coordsChest = vec3(1254.14,-1080.93,54.16),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discordapp.com/api/webhooks/1339807892185944074/-17x4No0u_qm4oW76KohzDUa5bDfA74fihOfz7WM0wQVAH4w-UvjojLvZkr4V3tuPfgU", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discordapp.com/api/webhooks/1339807892185944074/-17x4No0u_qm4oW76KohzDUa5bDfA74fihOfz7WM0wQVAH4w-UvjojLvZkr4V3tuPfgU", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discordapp.com/api/webhooks/1339807892185944074/-17x4No0u_qm4oW76KohzDUa5bDfA74fihOfz7WM0wQVAH4w-UvjojLvZkr4V3tuPfgU", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discordapp.com/api/webhooks/1339807892185944074/-17x4No0u_qm4oW76KohzDUa5bDfA74fihOfz7WM0wQVAH4w-UvjojLvZkr4V3tuPfgU", -- BANCO
                ["Partner"] = "https://discordapp.com/api/webhooks/1339807892185944074/-17x4No0u_qm4oW76KohzDUa5bDfA74fihOfz7WM0wQVAH4w-UvjojLvZkr4V3tuPfgU", -- PARCEIRO
                ["Salary"] = "https://discordapp.com/api/webhooks/1339807892185944074/-17x4No0u_qm4oW76KohzDUa5bDfA74fihOfz7WM0wQVAH4w-UvjojLvZkr4V3tuPfgU", -- SALARIO
                ["PaySalary"] = "https://discordapp.com/api/webhooks/1339807892185944074/-17x4No0u_qm4oW76KohzDUa5bDfA74fihOfz7WM0wQVAH4w-UvjojLvZkr4V3tuPfgU", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discordapp.com/api/webhooks/1339807892185944074/-17x4No0u_qm4oW76KohzDUa5bDfA74fihOfz7WM0wQVAH4w-UvjojLvZkr4V3tuPfgU", -- COMENTARIOS
                ["TakeChest"] = "https://discordapp.com/api/webhooks/1339807892185944074/-17x4No0u_qm4oW76KohzDUa5bDfA74fihOfz7WM0wQVAH4w-UvjojLvZkr4V3tuPfgU", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discordapp.com/api/webhooks/1339807892185944074/-17x4No0u_qm4oW76KohzDUa5bDfA74fihOfz7WM0wQVAH4w-UvjojLvZkr4V3tuPfgU", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discordapp.com/api/webhooks/1339807892185944074/-17x4No0u_qm4oW76KohzDUa5bDfA74fihOfz7WM0wQVAH4w-UvjojLvZkr4V3tuPfgU", -- METAS
                ["PaymentGoals"] = "https://discordapp.com/api/webhooks/1339807892185944074/-17x4No0u_qm4oW76KohzDUa5bDfA74fihOfz7WM0wQVAH4w-UvjojLvZkr4V3tuPfgU", -- PAGAMENTO METAS
                ["Points"] = "https://discordapp.com/api/webhooks/1339807892185944074/-17x4No0u_qm4oW76KohzDUa5bDfA74fihOfz7WM0wQVAH4w-UvjojLvZkr4V3tuPfgU", -- PONTOS
        }
        },
        ["CRBC"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMFembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["moladearma"] = true,
                ["glass"] = true,
                ["explosives"] = true,
                ["plastic"] = true,
                ["techtrash"] = true,
                ["aluminum"] = true,
                ["weaponbody"] = true,
            },
            coordsChest = vec3(-3240.55,814.33,14.1),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Malibu"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMFembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["moladearma"] = true,
                ["aluminum"] = true,
                ["capsula"] = true,
                ["projetil"] = true,
                ["polvora"] = true,
                ["weaponbody"] = true,
            },
            coordsChest = vec3(-3240.55,814.33,14.1),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Mcdonalds"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [3] = { nome = "Supervisor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [4] = { nome = "Chapeiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {},
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Autosport"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Supervisor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Mecânico", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['copper'] = true,
                ["aluminum"] = true,
                ["rubber"] = true,
            },
            coordsChest = vec3(2670.45,3501.13,55.71),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Bennys"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Supervisor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Mecânico", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {},
            coordsChest = vec3(-349.66,-1330.15,31.46),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Overspeed"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Supervisor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Mecânico", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {},
            coordsChest = vec3(914.89,-926.47,50.33),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Oab"] = {
            hierarchy = {
                [1] = { nome = "Desembargador-Federal", addMembers = true, manager = true, bank = true, salary = false, partners = true, chest = false, goals = false, comments = true },
                [2] = { nome = "Juiz-Federal", addMembers = true, manager = true, bank = true, salary = false, partners = true, chest = false, goals = false, comments = true },
                [3] = { nome = "Procurador-Geral", addMembers = true, manager = true, bank = true, salary = false, partners = true, chest = false, goals = false, comments = true },
                [4] = { nome = "Presidente-OAB", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Desembargador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Juiz-Direto", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [7] = { nome = "Procurador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [8] = { nome = "Promotor", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [9] = { nome = "GAE", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [10] = { nome = "Oficial-Justiça", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [11] = { nome = "Advogado", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {},
            coordsChest = vec3(0.0,0.0,0.0),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Paramedic"] = {
            hierarchy = {
                [1] = { nome = "Diretor", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = false, goals = false, comments = true },
                [2] = { nome = "Supervisor", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = false, goals = false, comments = true },
                [3] = { nome = "Médico", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = false, comments = true },
                [4] = { nome = "Interno", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Paramédico", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Trainee", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [7] = { nome = "Segurança", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {},
            coordsChest = vec3(0.0,0.0,0.0),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Bombeiro"] = {
            hierarchy = {
                [1] = { nome = "Coronel", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = false, goals = false, comments = true },
                [2] = { nome = "Tenente-coronel", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = false, goals = false, comments = true },
                [3] = { nome = "Major", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = false, comments = true },
                [4] = { nome = "Capitão", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = false, comments = true },
                [5] = { nome = "1Tenente", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "2Tenente", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [7] = { nome = "Aspirante", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [8] = { nome = "1Sargento", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [9] = { nome = "2Sargento", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [10] = { nome = "3Sargento", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [11] = { nome = "Cabo", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [12] = { nome = "Soldado-1Classe", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [13] = { nome = "Soldado-2Classe", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {},
            coordsChest = vec3(0.0,0.0,0.0),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Playboy"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["tarp"] = true,
                ["glass"] = true,
                ["aluminum"] = true,
                ["plastic"] = true,
                ["explosives"] = true,
                ["techtrash"] = true,
                ["sheetmetal"] = true,
            },
            coordsChest = vec3(-573.2,285.5,85.48),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1403652124339867659/qNIpyFL2PgIdYDR_RPFHzeDcEd6Pf0I-X1y1saxl9lbZcaWYQKFtHfcfT3CXNb7hyu9A", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1403652124339867659/qNIpyFL2PgIdYDR_RPFHzeDcEd6Pf0I-X1y1saxl9lbZcaWYQKFtHfcfT3CXNb7hyu9A", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1403652124339867659/qNIpyFL2PgIdYDR_RPFHzeDcEd6Pf0I-X1y1saxl9lbZcaWYQKFtHfcfT3CXNb7hyu9A", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1403652124339867659/qNIpyFL2PgIdYDR_RPFHzeDcEd6Pf0I-X1y1saxl9lbZcaWYQKFtHfcfT3CXNb7hyu9A", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1403652124339867659/qNIpyFL2PgIdYDR_RPFHzeDcEd6Pf0I-X1y1saxl9lbZcaWYQKFtHfcfT3CXNb7hyu9A", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1403652124339867659/qNIpyFL2PgIdYDR_RPFHzeDcEd6Pf0I-X1y1saxl9lbZcaWYQKFtHfcfT3CXNb7hyu9A", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1403652124339867659/qNIpyFL2PgIdYDR_RPFHzeDcEd6Pf0I-X1y1saxl9lbZcaWYQKFtHfcfT3CXNb7hyu9A", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1403652124339867659/qNIpyFL2PgIdYDR_RPFHzeDcEd6Pf0I-X1y1saxl9lbZcaWYQKFtHfcfT3CXNb7hyu9A", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1403652124339867659/qNIpyFL2PgIdYDR_RPFHzeDcEd6Pf0I-X1y1saxl9lbZcaWYQKFtHfcfT3CXNb7hyu9A", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1403652124339867659/qNIpyFL2PgIdYDR_RPFHzeDcEd6Pf0I-X1y1saxl9lbZcaWYQKFtHfcfT3CXNb7hyu9A", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1403652124339867659/qNIpyFL2PgIdYDR_RPFHzeDcEd6Pf0I-X1y1saxl9lbZcaWYQKFtHfcfT3CXNb7hyu9A", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1403652124339867659/qNIpyFL2PgIdYDR_RPFHzeDcEd6Pf0I-X1y1saxl9lbZcaWYQKFtHfcfT3CXNb7hyu9A", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1403652124339867659/qNIpyFL2PgIdYDR_RPFHzeDcEd6Pf0I-X1y1saxl9lbZcaWYQKFtHfcfT3CXNb7hyu9A", -- PONTOS
            }
        },
        ["Vilamix"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["tarp"] = true,
                ["glass"] = true,
                ["aluminum"] = true,
                ["plastic"] = true,
                ["explosives"] = true,
                ["techtrash"] = true,
                ["sheetmetal"] = true,
            },
            coordsChest = vec3(-1867.37,2057.69,135.44),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "https://discord.com/api/webhooks/1379646479525744702/NnlelhuKSJJoKuFfx2N7_TuVj3RDR1E0oiQ2ZKuG8eGwmjvroI0Hh3RHDageVrHL1EIu", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "https://discord.com/api/webhooks/1379646479525744702/NnlelhuKSJJoKuFfx2N7_TuVj3RDR1E0oiQ2ZKuG8eGwmjvroI0Hh3RHDageVrHL1EIu", -- MEMBRO ADICIOANDO
                ["RemMember"] = "https://discord.com/api/webhooks/1379646479525744702/NnlelhuKSJJoKuFfx2N7_TuVj3RDR1E0oiQ2ZKuG8eGwmjvroI0Hh3RHDageVrHL1EIu", -- MEMBRO REMOVIDO
                ["Bank"] = "https://discord.com/api/webhooks/1379646479525744702/NnlelhuKSJJoKuFfx2N7_TuVj3RDR1E0oiQ2ZKuG8eGwmjvroI0Hh3RHDageVrHL1EIu", -- BANCO
                ["Partner"] = "https://discord.com/api/webhooks/1379646479525744702/NnlelhuKSJJoKuFfx2N7_TuVj3RDR1E0oiQ2ZKuG8eGwmjvroI0Hh3RHDageVrHL1EIu", -- PARCEIRO
                ["Salary"] = "https://discord.com/api/webhooks/1379646479525744702/NnlelhuKSJJoKuFfx2N7_TuVj3RDR1E0oiQ2ZKuG8eGwmjvroI0Hh3RHDageVrHL1EIu", -- SALARIO
                ["PaySalary"] = "https://discord.com/api/webhooks/1379646479525744702/NnlelhuKSJJoKuFfx2N7_TuVj3RDR1E0oiQ2ZKuG8eGwmjvroI0Hh3RHDageVrHL1EIu", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "https://discord.com/api/webhooks/1379646479525744702/NnlelhuKSJJoKuFfx2N7_TuVj3RDR1E0oiQ2ZKuG8eGwmjvroI0Hh3RHDageVrHL1EIu", -- COMENTARIOS
                ["TakeChest"] = "https://discord.com/api/webhooks/1379646479525744702/NnlelhuKSJJoKuFfx2N7_TuVj3RDR1E0oiQ2ZKuG8eGwmjvroI0Hh3RHDageVrHL1EIu", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "https://discord.com/api/webhooks/1379646479525744702/NnlelhuKSJJoKuFfx2N7_TuVj3RDR1E0oiQ2ZKuG8eGwmjvroI0Hh3RHDageVrHL1EIu", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "https://discord.com/api/webhooks/1379646479525744702/NnlelhuKSJJoKuFfx2N7_TuVj3RDR1E0oiQ2ZKuG8eGwmjvroI0Hh3RHDageVrHL1EIu", -- METAS
                ["PaymentGoals"] = "https://discord.com/api/webhooks/1379646479525744702/NnlelhuKSJJoKuFfx2N7_TuVj3RDR1E0oiQ2ZKuG8eGwmjvroI0Hh3RHDageVrHL1EIu", -- PAGAMENTO METAS
                ["Points"] = "https://discord.com/api/webhooks/1379646479525744702/NnlelhuKSJJoKuFfx2N7_TuVj3RDR1E0oiQ2ZKuG8eGwmjvroI0Hh3RHDageVrHL1EIu", -- PONTOS
            }
        },
        ["Vitrine"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Conselheiro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "Morador", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["tarp"] = true,
                ["glass"] = true,
                ["aluminum"] = true,
                ["plastic"] = true,
                ["explosives"] = true,
                ["techtrash"] = true,
                ["sheetmetal"] = true,
            },
            coordsChest = vec3(0.0,0.0,0.0),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Asgard"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["tarp"] = true,
                ["glass"] = true,
                ["aluminum"] = true,
                ["plastic"] = true,
                ["explosives"] = true,
                ["techtrash"] = true,
                ["sheetmetal"] = true,
            },
            coordsChest = vec3(0.0,0.0,0.0),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["Cassino"] = {
            hierarchy = {
                [1] = { nome = "Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [2] = { nome = "Sub-Chefe", addMembers = true, manager = true, bank = true, salary = true, partners = true, chest = true, goals = true, comments = true },
                [3] = { nome = "Gerente", addMembers = true, manager = true, bank = false, salary = false, partners = true, chest = false, goals = true, comments = true },
                [4] = { nome = "Membro", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {
                ['dollarz'] = true,
                ["tarp"] = true,
                ["glass"] = true,
                ["aluminum"] = true,
                ["plastic"] = true,
                ["explosives"] = true,
                ["techtrash"] = true,
                ["sheetmetal"] = true,
            },
            coordsChest = vec3(0.0,0.0,0.0),
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
        ["LoveFunk"] = {
            hierarchy = {
                [1] = { nome = "Fundador", addMembers = true, manager = true, bank = true, salary = false, partners = true, chest = false, goals = false, comments = true },
                [2] = { nome = "Diretor", addMembers = true, manager = true, bank = true, salary = false, partners = true, chest = false, goals = false, comments = true },
                [3] = { nome = "Produtor-Executivo", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [4] = { nome = "Gerente-Artistico", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [5] = { nome = "DJ", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [6] = { nome = "MC", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [7] = { nome = "Staff-Apoio", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
                [8] = { nome = "Recepcionista", addMembers = false, manager = false, bank = false, salary = false, partners = false, chest = false, goals = false, comments = false },
            },
            itens = {},
            webhook = { -- WEBHOOK PARA LOGS
                ["Permission"] = "", -- PERMISSAO ATUALIZADA
                ["AddMember"] = "", -- MEMBRO ADICIOANDO
                ["RemMember"] = "", -- MEMBRO REMOVIDO
                ["Bank"] = "", -- BANCO
                ["Partner"] = "", -- PARCEIRO
                ["Salary"] = "", -- SALARIO
                ["PaySalary"] = "", -- PAGAMENTO DE SALARIO
                ["Commentary"] = "", -- COMENTARIOS
                ["TakeChest"] = "", -- ITENS RETIRADOS DO BAU
                ["PutChest"] = "", -- ITENS COLOCADOS NO BAU
                ["Goals"] = "", -- METAS
                ["PaymentGoals"] = "", -- PAGAMENTO METAS
                ["Points"] = "", -- PONTOS
            }
        },
    }
}
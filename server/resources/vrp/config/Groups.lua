Groups = {
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN
-----------------------------------------------------------------------------------------------------------------------------------------
	["Owner"] = {
		["Parent"] = {
			["Owner"] = true
		},
		["Hierarchy"] = { "Owner","Developer" },
		["Service"] = {}
	},
	["Admin"] = {
		["Parent"] = {
			["Admin"] = true
		},
		["Hierarchy"] = { "Administrador-Geral","Administrador","Super-Moderador","Moderador","Suporte" },
		["Service"] = {}
	},
	["Marketing"] = {
		["Parent"] = {
			["Admin"] = true
		},
		["Hierarchy"] = { "Marketing" },
		["Service"] = {}
	},
-----------------------------------------------------------------------------------------------------------------------------------------
-- VIPS
-----------------------------------------------------------------------------------------------------------------------------------------
	["Premium"] = {
		["Parent"] = {
			["Premium"] = true,
			["Bronze"] = true,
			["Prata"] = true,
			["Ouro"] = true,
			["Platina"] = true,
			["Diamante"] = true,
			["Lideranca"] = true,
			["Artistas"] = true
		},
		["Hierarchy"] = { "Premium" },
		["Service"] = {}
	},
	["Bronze"] = {
		["Parent"] = {
			["Premium"] = true,
			["Bronze"] = true
		},
		["Hierarchy"] = { "Bronze" },
		["Salary"] = { 3000 },
		["Service"] = {}
	},
	["Prata"] = {
		["Parent"] = {
			["Premium"] = true,
			["Prata"] = true
		},
		["Hierarchy"] = { "Prata" },
		["Salary"] = { 3400 },
		["Service"] = {}
	},
	["Ouro"] = {
		["Parent"] = {
			["Premium"] = true,
			["Ouro"] = true
		},
		["Hierarchy"] = { "Ouro" },
		["Salary"] = { 3800 },
		["Service"] = {}
	},
	["Platina"] = {
		["Parent"] = {
			["Premium"] = true,
			["Platina"] = true
		},
		["Hierarchy"] = { "Platina" },
		["Salary"] = { 4000 },
		["Service"] = {}
	},
	["Diamante"] = {
		["Parent"] = {
			["Premium"] = true,
			["Diamante"] = true
		},
		["Hierarchy"] = { "Diamante" },
		["Salary"] = { 4200 },
		["Service"] = {}
	},
	["Rubi"] = {
		["Parent"] = {
			["Premium"] = true,
			["Rubi"] = true
		},
		["Hierarchy"] = { "Rubi" },
		["Salary"] = { 4500 },
		["Service"] = {}
	},
	["Lideranca"] = {
		["Parent"] = {
			["Premium"] = true,
			["Lideranca"] = true
		},
		["Hierarchy"] = { "Lideranca" },
		["Salary"] = { 5000 },
		["Service"] = {}
	},
	["Artistas"] = {
		["Parent"] = {
			["Premium"] = true,
			["Artistas"] = true
		},
		["Hierarchy"] = { "Artistas" },
		["Salary"] = { 8000 },
		["Service"] = {}
	},
-----------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA
-----------------------------------------------------------------------------------------------------------------------------------------
	["Police"] = {
		["Parent"] = {
			["Coe"] = true,
			["Rota"] = true,
			["Caep"] = true,
			["Baep"] = true,
			["Tatica"] = true,
			["Cavpm"] = true,
			["Gcm"] = true,
			["Corregedoria"] = true,
			["Humaita"] = true,
			["Anchieta"] = true,
			["CPA"] = true,
			["Cmtg"] = true,
			["Transito"] = true,
			["Rodoviaria"] = true,
			["Militar"] = true,
			["Pf"] = true,
			["Pc"] = true,
			["Penal"] = true,
			["Receita"] = true,
			["Exercito"] = true
		},
		["Hierarchy"] = { "Policia" },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Receita"] = {
		["Parent"] = {
			["Police"] = true,
			["Receita"] = true,
		},
		["Hierarchy"] = { "Diretor-Geral","Delegado-Ajunto","Delegado","Auditor-Fiscal","Escrivão","Analista-Fiscal","Investigador","Agente-Federal"},
		["Salary"] = { 15000,14500,14000,13500,13000,12000,11000,10000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Penal"] = {
		["Parent"] = {
			["Police"] = true,
			["Penal"] = true,
		},
		["Hierarchy"] = { "Diretor-Geral", "Diretor-Administrativo", "Diretor-Operacional", "Diretor-Administrativo", "Corregedor", "Classe-VII", "Classe-VI", "Classe-V", "Classe-IV", "Classe-III", "Classe-II", "Classe-I" },
		["Salary"] = { 17000,16500,16000,15500,15000,14500,14000,13500,13000,12000,11000,10000  },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Rota"] = {
		["Parent"] = {
			["Police"] = true,
			["Rota"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,16500,16000,15500,15000,14500,14000,13000,12000,11000,10000,9000,8500,8000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Caep"] = {
		["Parent"] = {
			["Police"] = true,
			["Caep"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Baep"] = {
		["Parent"] = {
			["Police"] = true,
			["Baep"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Tatica"] = {
		["Parent"] = {
			["Police"] = true,
			["Tatica"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Cavpm"] = {
		["Parent"] = {
			["Police"] = true,
			["Cavpm"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Humaita"] = {
		["Parent"] = {
			["Police"] = true,
			["Humaita"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Anchieta"] = {
		["Parent"] = {
			["Police"] = true,
			["Anchieta"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["CPA"] = {
		["Parent"] = {
			["Police"] = true,
			["CPA"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Coe"] = {
		["Parent"] = {
			["Police"] = true,
			["Coe"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Gcm"] = {
		["Parent"] = {
			["Police"] = true,
			["Gcm"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Exercito"] = {
		["Parent"] = {
			["Police"] = true,
			["Exercito"] = true,
		},
		["Hierarchy"] = { "Marechal","General-Execito","General-Divisao","General-Abrigada","Adjunto-Comando","Coronel","Tenente-Coronel","Major","Capitão","1Tenente","2Tenente","Sub-Tenente","1Sargento","2Sargento","3Sargento","Cabo","Soldado","Recruta" },
		["Salary"] = { 12000,11000,10500,10000,9500,9000,8500,8000,7500,7000,6500,6000,5500,5200,5000,4500,4200,4000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Corregedoria"] = {
		["Parent"] = {
			["Police"] = true,
			["Corregedoria"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Cmtg"] = {
		["Parent"] = {
			["Police"] = true,
			["Cmtg"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Transito"] = {
		["Parent"] = {
			["Police"] = true,
			["Transito"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Rodoviaria"] = {
		["Parent"] = {
			["Police"] = true,
			["Rodoviaria"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Militar"] = {
		["Parent"] = {
			["Police"] = true,
			["Militar"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","SubTenente","1Sargento","2Sargento","3Sargento","Cabo","1ClasseSoldado","2ClasseSoldado" },
		["Salary"] = { 17000,15500,14500,14000,13000,11000,10000,9500,9000,8500,8000,7800,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Pc"] = {
		["Parent"] = {
			["Police"] = true,
			["Pc"] = true
		},
		["Hierarchy"] = { "Delegado-Geral", "Delegado-Diretor", "Delegado-Supervisor", "Delegado-Assistente", "Investigador-Chefe", "Investigador","Escrivao", "Agente-Especial", "Agente-1Classe", "Agente-2Classe", "Agente-3Classe", "Acadepol" },
		["Salary"] = { 17000,15000,13000,12000,10500,10000,9500,9000,8500,8000,7500,7000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Pf"] = {
		["Parent"] = {
			["Police"] = true,
			["Pf"] = true,
		},
		["Hierarchy"] = { "Diretor-Geral","Diretor","Superintendente","Delegado","Corregedor","Coordenador","Perito-Criminal-Federal","Escrivao","Agente-Classe-Especial","Agente-Primeira-Classe","Agente-Segunda-Classe","Agente-Terceira-Classe","Papiloscopista","Agente-Administrativo","Aluno-ANP" }, 
		["Salary"] = { 17000,16000,15000,14000,13500,13000,12000,11500,11000,10500,10000,9500,9000,8500,8000 },
		["Service"] = {},
		["Type"] = "Work"
	},
-----------------------------------------------------------------------------------------------------------------------------------------
-- EMERGENCIA
-----------------------------------------------------------------------------------------------------------------------------------------
	["Paramedic"] = {
		["Parent"] = {
			["Paramedic"] = true
		},
		["Hierarchy"] = { "Diretor", "Supervisor", "Médico", "Interno", "Paramédico", "Trainee", "Segurança" },
		["Salary"] = { 15000,12000,10000,8000,7500,7000,6000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Bombeiro"] = {
		["Parent"] = {
			["Bombeiro"] = true,
		},
		["Hierarchy"] = { "Coronel","Tenente-coronel","Major","Capitão","1Tenente","2Tenente","Aspirante","1Sargento","2Sargento","3Sargento","Cabo","Soldado-1Classe","Soldado-2Classe" },
		["Salary"] = { 15000,14500,14000,13000,12000,10000,8500,8000,7500,7000,6500,6000,5500 },
		["Service"] = {},
		["Type"] = "Work"
	},
-----------------------------------------------------------------------------------------------------------------------------------------
-- MECANICA
-----------------------------------------------------------------------------------------------------------------------------------------
	["Autosport"] = {
		["Parent"] = {
			["Autosport"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Supervisor","Mecânico" },
		["Salary"] = { 3000,3000,3000,3000,3000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Overspeed"] = {
		["Parent"] = {
			["Overspeed"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Supervisor","Mecânico" },
		["Salary"] = { 3000,3000,3000,3000,3000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Mcdonalds"] = {
		["Parent"] = {
			["Mcdonalds"] = true
		},
		["Hierarchy"] = { "Chefe","Gerente","Supervisor","Chapeiro" },
		["Salary"] = { },
		["Service"] = {},
		["Type"] = "Work"
	},
-----------------------------------------------------------------------------------------------------------------------------------------
-- JURIDICO
-----------------------------------------------------------------------------------------------------------------------------------------
	["Oab"] = {
		["Parent"] = {
			["Oab"] = true,
		},
		["Hierarchy"] = { "Desembargador-Federal","Juiz-Federal","Procurador-Geral",
		"Presidente-OAB","Desembargador","Juiz-Direto","Procurador","Promotor","GAE",
		"Oficial-Justiça","Advogado" },
		["Salary"] = { 15000,14500,14000,13500,13000,12500,12000,11500,11000,10500,10000 },
		["Service"] = {},
		["Type"] = "Work"
	},
	["Cnn"] = {
		["Parent"] = {
			["Cnn"] = true
		},
		["Hierarchy"] = { "Diretor-Geral","Jornalista","Cinegrafista"},
		["Salary"] = { 10000,8000,6000 },
		["Service"] = {},
			["Type"] = "Work"
	},
	["Protege"] = {
		["Parent"] = {
			["Protege"] = true
		},
		["Hierarchy"] = { "Chefe","Agente-Seguranca","Agente-1Classe","Agente-2Classe"},
		["Salary"] = { 10000,8000,7000,6000 },
		["Service"] = {},
			["Type"] = "Work"
	},
	["Cnn"] = {
		["Parent"] = {
			["Cnn"] = true
		},
		["Hierarchy"] = { "Diretor-Geral","Jornalista","Cinegrafista"},
		["Salary"] = { 10000,8000,6000 },
		["Service"] = {},
			["Type"] = "Work"
	},
-----------------------------------------------------------------------------------------------------------------------------------------
-- FAVELAS
-----------------------------------------------------------------------------------------------------------------------------------------
	["Final"] = {
		["Parent"] = {
			["Final"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Morato"] = {
		["Parent"] = {
			["Morato"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Supervisor","Vendedor","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Marcone"] = {
		["Parent"] = {
			["Marcone"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Supervisor","Vendedor","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Rua100"] = {
		["Parent"] = {
			["Rua100"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Supervisor","Vendedor","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Alba"] = {
		["Parent"] = {
			["Alba"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Supervisor","Vendedor","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Itaquera"] = {
		["Parent"] = {
			["Itaquera"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Supervisor","Vendedor","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Paraisopolis"] = {
		["Parent"] = {
			["Paraisopolis"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Supervisor","Vendedor","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Jaguare"] = {             
		["Parent"] = {
			["Jaguare"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Campolimpo"] = {
		["Parent"] = {
			["Campolimpo"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Laura"] = {
		["Parent"] = {
			["Laura"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Sonia"] = {
		["Parent"] = {
			["Sonia"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Guaianazes"] = {
		["Parent"] = {
			["Guaianazes"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Vilaede"] = {
		["Parent"] = {
			["Vilaede"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},	
	["Cobertura"] = {
		["Parent"] = {
			["Cobertura"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Life"] = {
		["Parent"] = {
			["Life"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Oziel"] = {
		["Parent"] = {
			["Oziel"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Osasco"] = {
		["Parent"] = {
			["Osasco"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Grajau"] = {
		["Parent"] = {
			["Grajau"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Brasilandia"] = {
		["Parent"] = {
			["Brasilandia"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Diadema"] = {
		["Parent"] = {
			["Diadema"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Capaoredondo"] = {
		["Parent"] = {
			["Capaoredondo"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Tiradentes"] = {
		["Parent"] = {
			["Tiradentes"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Heliopolis"] = {             
		["Parent"] = {
			["Heliopolis"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Bahamas"] = {             
		["Parent"] = {
			["Bahamas"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Vanilla"] = {
		["Parent"] = {
			["Vanilla"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Playboy"] = {
		["Parent"] = {
			["Playboy"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Itapevi"] = {
		["Parent"] = {
			["Itapevi"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Vilamix"] = {
		["Parent"] = {
			["Vilamix"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Vitrine"] = {
		["Parent"] = {
			["Vitrine"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Asgard"] = {
		["Parent"] = {
			["Asgard"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Membro" },
		["Service"] = {}
	},
	["Cassino"] = {
		["Parent"] = {
			["Cassino"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Membro" },
		["Service"] = {}
	},
	["Nhocune"] = {
		["Parent"] = {
			["Nhocune"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Supervisor","Vendedor","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Decretado"] = {
		["Parent"] = {
			["Decretado"] = true
		},
		["Hierarchy"] = { "Chefe-Decretados","Decretado" },
		["Service"] = {},
	},
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXTRAS
-----------------------------------------------------------------------------------------------------------------------------------------
	["Skin"] = {
		["Parent"] = {
			["Skin"] = true
		},
		["Hierarchy"] = { "Skin" },
		["Service"] = {},
	},
	["Mochila"] = {
		["Parent"] = {
			["Mochila"] = true,
			["Rubi"] = true,
			["Lideranca"] = true,
			["Artistas"] = true,
		},
		["Hierarchy"] = { "Mochila" },
		["Service"] = {},
	},
	["Remap"] = {
		["Parent"] = {
			["Remap"] = true
		},
		["Hierarchy"] = { "Remap" },
		["Service"] = {},
	},
	["Cam"] = {
		["Parent"] = {
			["Cam"] = true
		},
		["Hierarchy"] = { "Cam" },
		["Service"] = {},
	},
	["Som"] = {
		["Parent"] = {
			["Som"] = true
		},
		["Hierarchy"] = { "Som" },
		["Service"] = {},
	},
	["Verify"] = {
		["Parent"] = {
			["Verify"] = true
		},
		["Hierarchy"] = { "Verify" },
		["Service"] = {},
	},
	["LoveFunk"] = {
		["Parent"] = {
			["LoveFunk"] = true
		},
		["Hierarchy"] = { "Fundador","Diretor","Produtor-Executivo","Gerente-Artistico","DJ","MC","Staff-Apoio","Recepcionista" },
		["Service"] = {},
	},
	["Streamer"] = {
		["Parent"] = {
			["Streamer"] = true
		},
		["Hierarchy"] = { "Streamer" },
		["Salary"] = { 3000 },
		["Service"] = {},
	},
	["FK"] = {
		["Parent"] = {
			["FK"] = true
		},
		["Hierarchy"] = { "FK" },
		["Service"] = {},
	},
	["Pecinha"] = {
		["Parent"] = {
			["Pecinha"] = true
		},
		["Hierarchy"] = { "Chefe","Sub-Chefe","Gerente","Conselheiro","Membro","Morador" },
		["Service"] = {},
		["Type"] = "Org"
	},
	-----------------------------------------------------------------------------------------------------------------------------------------
	-- CASAS
	-----------------------------------------------------------------------------------------------------------------------------------------
	["Guedes"] = {
		["Parent"] = {
			["Guedes"] = true
		},
		["Hierarchy"] = { "Guedes" },
		["Service"] = {},
	},
	["Xavier"] = {
		["Parent"] = {
			["Xavier"] = true
		},
		["Hierarchy"] = { "Xavier" },
		["Service"] = {},
	},
	["Tropical"] = {
		["Parent"] = {
			["Tropical"] = true
		},
		["Hierarchy"] = { "Tropical" },
		["Service"] = {},
	},
	["Tommy"] = {
		["Parent"] = {
			["Tommy"] = true
		},
		["Hierarchy"] = { "Tommy" },
		["Service"] = {},
	},
	["Renato01"] = {
		["Parent"] = {
			["Renato01"] = true
		},
		["Hierarchy"] = { "Renato01" },
		["Service"] = {},
	},
	["Ilha"] = {
		["Parent"] = {
			["Ilha"] = true
		},
		["Hierarchy"] = { "Ilha" },
		["Service"] = {},
	},
	["Lobo01"] = {
		["Parent"] = {
			["Lobo01"] = true
		},
		["Hierarchy"] = { "Lobo01" },
		["Service"] = {},
		["Type"] = "Org"
	},
	["Lobo02"] = {
		["Parent"] = {
			["Lobo02"] = true
		},
		["Hierarchy"] = { "Lobo02" },
		["Service"] = {},
	},
	["Lobo03"] = {
		["Parent"] = {
			["Lobo03"] = true
		},
		["Hierarchy"] = { "Lobo03" },
		["Service"] = {},
	},
	["Lobo04"] = {
		["Parent"] = {
			["Lobo04"] = true
		},
		["Hierarchy"] = { "Lobo04" },
		["Service"] = {},
	},
	["Renato02"] = {
		["Parent"] = {
			["Renato02"] = true
		},
		["Hierarchy"] = { "Renato02" },
		["Service"] = {},
	},
	["Ifood"] = {
		["Parent"] = {
			["Ifood"] = true
		},
		["Hierarchy"] = { "Ifood" },
		["Service"] = {},
	},
	["Bangalo"] = {
		["Parent"] = {
			["Bangalo"] = true
		},
		["Hierarchy"] = { "1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20" },
		["Service"] = {}
	},
	["Arua"] = {
		["Parent"] = {
			["Arua"] = true
		},
		["Hierarchy"] = { "1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16" },
		["Service"] = {}
	},
	["Vintage"] = {
		["Parent"] = {
			["Vintage"] = true
		},
		["Hierarchy"] = { "1","2","3","4","5","6","7","8","9","10","11","12" },
		["Service"] = {}
	},
	["Alphaville"] = {
		["Parent"] = {
			["Alphaville"] = true
		},
		["Hierarchy"] = { "1","2","3","4","5","6","7","8","9","10" },
		["Service"] = {}
	},
}
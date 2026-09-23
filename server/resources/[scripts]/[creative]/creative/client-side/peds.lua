-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local localPeds = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- LIST
-----------------------------------------------------------------------------------------------------------------------------------------
local List = {
	{ --C4
		Distance = 20,
		Coords = { 1272.26, -1711.55, 54.76, 42.52 },
		Model =  "cs_lestercrest" ,
		anim = { "anim@heists@prison_heiststation@cop_reactions", "cop_b_idle" }
	},
	{ -- vilamix
		Distance = 20,
		Coords = { -560.22,241.61,74.9,320.32 },
		Model =  "cs_lestercrest" ,
		anim = { "anim@heists@prison_heiststation@cop_reactions", "cop_b_idle" }
	},
	{ --TICKET
	Distance = 20,
	Coords = { 945.02,-1744.52,21.03,172.92 },
	Model =  "u_m_y_sbike" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},	

	{ --Lenhador
	Distance = 20,
	Coords = { 2412.15,5046.4,46.02,136.07},
	Model =  "cs_old_man2" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},	
	{ -- Mcdonalds
    Distance = 50,
    Coords = { -75.08,16.78,72.93,59.53 },
    Model = "ig_stevehains",
    anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
    },
	{ -- Ifood
    Distance = 100,
    Coords = { 95.64,284.84,109.96,255.12 },
    Model = "ig_stevehains",
    anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
    },
	{ --Transporte
	Distance = 20,
	Coords = { 12.03,-663.32,33.45,82.21},
	Model =  "cs_casey" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},	
	{ --Transporte
	Distance = 20,
	Coords = { 11.7,-659.74,33.45,96.38 },
	Model =  "cs_casey" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},	
	{ --Polvora
		Distance = 20,
		Coords = { 2707.27, 2776.73, 37.88, 28.35 },
		Model =  "s_m_y_airworker" ,
		anim = { "amb@lo_res_idles@", "world_human_lean_male_foot_up_lo_res_base" }
	},

	{ -- Venda Roubos
		Distance = 50,
		Coords = { 1930.51,3721.11,32.82,218.27 },
		Model =  "s_m_y_airworker" ,
		anim = { "amb@lo_res_idles@", "world_human_lean_male_foot_up_lo_res_base" }
	},
	{ -- Venda Reciclagem
		Distance = 20,
		Coords = { -350.09,-1570.03,25.22,300.48 },
		Model =  "s_m_y_airworker" ,
		anim = { "amb@lo_res_idles@", "world_human_lean_male_foot_up_lo_res_base" }
	},


	{ --PenDrive Life Invader
		Distance = 20,
		Coords = { -1051.83, -232.74, 44.01, 206.93 },
		Model =  "ig_lifeinvad_01" ,
		anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }
	},

	{ -- Minerador
		Distance = 20,
		Coords = { 2833.41, 2795.17, 57.47, 99.22 },
		Model =  "s_m_y_airworker" ,
		anim = { "amb@lo_res_idles@", "world_human_lean_male_foot_up_lo_res_base" }
	},
	-- Maconha Sul
	{
		Distance = 20,
		Coords = { -1568.66,-3224.46,26.34,158.75 },
		Model =  "g_m_m_mexboss_01" ,
		anim = { "amb@lo_res_idles@", "world_human_lean_male_foot_up_lo_res_base" }
	},
	-- Maconha norte
	{
		Distance = 20,
		Coords = { 1337.35,4383.61,44.33,354.34 },
		Model =  "s_m_y_blackops_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	

	-- Frutas
	{
		Distance = 20,
		Coords = { 1087.65, 6509.91, 21.06, 184.26 },
		Model =  "ig_old_man2" ,
	},

	-- Compra de Carnes
	{
		Distance = 20,
		Coords = { -69.86, 6261.71, 31.09, 25.52 },
		Model =  "s_m_m_migrant_01" ,
	},

	-- Moagem de Carnes
	{
		Distance = 20,
		Coords = { 998.27, -2187.86, 29.98, 90.71 },
		Model =  "s_m_m_migrant_01" ,
	},

	{
		Distance = 40,
		Coords = { -2806.21,-205.43,17.71,314.65 },
		Model =  "s_m_m_migrant_01" ,
	},

	{ -- Dismantle
		Distance = 20,
		Coords = { 2333.15,3054.51,48.16,5.67 },
		Model =  "s_m_y_airworker" ,
		anim = { "mini@repair", "fixing_a_player" }
	},

	{ -- Caminhoneiro
		Distance = 20,
		Coords = { 2679.41, 1418.25, 24.55, 274.97 },
		Model =  "s_m_y_airworker" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Banco de Paleto
		Distance = 20,
		Coords = { -110.65, 6469.92, 31.63, 226.78 },
		Model =  "u_m_m_bankman" ,
	},
	{ -- Banco Praça
		Distance = 20,
		Coords = { 149.4, -1042.07, 29.37, 340.16 },
		Model =  "u_m_m_bankman" ,
	},
	{ -- Mecanica SportRace
		Distance = 40,
		Coords = { -352.15,-1297.19,31.68,184.26 },
		Model =  "mp_m_waremech_01" ,
		anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }
	},
	{ -- Mecanica SportRace
		Distance = 20,
		Coords = { 929.54,-928.52,50.33,85.04 },
		Model =  "mp_m_waremech_01" ,
		anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }
	},
	{ -- Mecanica Paleto
		Distance = 20,
		Coords = { 101.54,6623.58,31.78,68.04 },
		Model =  "mp_m_waremech_01" ,
		anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }
	},

	{ -- Megamall Paleto
		Distance = 20,
		Coords = { 84.06, -1551.77, 29.59, 56.7 },
		Model =  "cs_brad" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }

	},

	{ -- Megamall LS
		Distance = 20,
		Coords = { 46.65, -1749.74, 29.62, 53.86 },
		Model =  "cs_brad" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},

	-- { -- Megamall LS2
	-- 	Distance = 20,
	-- 	Coords = { 256.65, -257.26, 54.04, 345.83 },
	-- 	Model =  "cs_brad" ,
	-- 	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	-- },

	-- { -- banco
	-- 	Distance = 20,
	-- 	Coords = { 253.23, 216.43, 106.27, 343.0 },
	-- 	Model =  "ig_paper" ,
	-- },
	{ -- banco paleto recibo
		Distance = 20,
		Coords = { -109.14,6471.74,31.63,232.45 },
		Model =  "ig_paper" ,
	},
	{ -- Rota de Armas
		Distance = 20,
		Coords = { 787.22, 4178.28, 41.77, 160.76 },
		Model =  "mp_m_exarmy_01" ,
		anim = { "timetable@trevor@smoking_meth@base", "base" }
	},

	{ -- Reciclagem
		Distance = 20,
		Coords = { -340.56,-1567.84,25.22,68.04 },
		Model =  "s_m_y_garbage" ,
		anim = { "amb@lo_res_idles@", "world_human_lean_male_foot_up_lo_res_base" }
	},

	{ -- Reciclagem Rogers
		Distance = 20,
		Coords = { -611.92,-1613.64,27.01,272.13 },
		Model =  "s_m_y_garbage" ,
		anim = { "amb@lo_res_idles@", "world_human_lean_male_foot_up_lo_res_base" }
	},

	{ -- Concessionária
		Distance = 50,
		Coords = { 1652.91,3509.27,36.65,297.64 },
		Model =  "ig_paper" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
		
	},
	{ -- Concessionária transferencia
	Distance = 30,
	Coords = { 116.85,-129.11,54.98,161.58 },
	Model =  "s_f_y_airhostess_01" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	
    },
	{ -- Concessionária
		Distance = 30,
		Coords = { 1224.59,2728.62,38.0,175.75 },
		Model =  "ig_paper" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Concessionária
	Distance = 30,
	Coords = { 2341.2,3126.39,48.21,357.17 },
	Model =  "ig_paper" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
},



	
	
	-- { -- Prefeitura
	-- 	Distance = 30,
	-- 	Coords = { -545.23,-203.73,38.22,209.77 },
	-- 	Model =  "ig_barry" ,
	-- 	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	-- },
	{ -- DICAS
		Distance = 30,
		Coords = { -59.81,-803.24,44.23,323.15 },
		Model =  "ig_barry" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- DICAS
		Distance = 30,
		Coords = { 1590.55,3593.15,38.77,209.77 },
		Model =  "ig_barry" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- CRBC
	Distance = 50,
	Coords = { -1856.28,7288.26,60.1,357.17 },
	Model =  "a_m_y_soucent_02" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
    },
	{ -- Jardim Helena
	Distance = 30,
	Coords = { -2219.09,2593.39,20.57,357.17 },
	Model =  "a_m_y_soucent_02" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
    },
	{ -- Heliópolis
	Distance = 30,
	Coords = { 1899.33,8.63,188.89,138.9 },
	Model =  "a_m_y_soucent_02" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
    },
	{ --  Diadema
	Distance = 30,
	Coords = { 115.38,1336.57,283.31,136.07 },
	Model =  "a_m_y_soucent_02" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
    },

	{ -- Garagem Impound
	Distance = 20,
	Coords = { 409.24,-1622.98,29.28,235.28 },
	Model =  "s_f_y_cop_01" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Garagem DP Missow Row
		Distance = 20,
		Coords = { 426.88,-986.65,25.7,274.97 },
		Model =  "s_f_y_cop_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Farmacia
		Distance = 30,
		Coords = { 1827.82,3688.78,34.9,212.6 },
		Model =  "s_m_m_paramedic_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Paramedic Garagem Paleto
		Distance = 30,
		Coords = { -271.59, 6320.84, 32.42, 351.5 },
		Model =  "s_m_m_paramedic_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Paramedic Garagem Paleto 2
		Distance = 30,
		Coords = { -254.05, 6338.58, 32.42, 0.0 },
		Model =  "s_m_m_paramedic_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Banco Central
		Distance = 10,
		Coords = { 247.42,223.28,106.29,158.75 },
		Model =  "u_m_m_bankman" ,
	},

	{ -- Departament Store
		Distance = 10,
		Coords = { -2290.32,347.94,174.6,28.35 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { -381.74,7207.38,18.21,133.23 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { -526.23,7560.44,6.52,229.61 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { -1226.42,6926.48,20.47,73.71 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { 24.89, -1346.91, 29.49, 274.97 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { 2556.86, 381.26, 108.61, 0.0 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { 161.21, 6641.69, 31.69, 232.45 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { 1164.82, -323.63, 69.2, 99.22 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { -706.16, -914.55, 19.21, 90.71 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { -47.39, -1758.63, 29.42, 51.03 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { 373.11, 326.81, 103.56, 252.29 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 6,
		Coords = { -3242.74, 1000.46, 12.82, 357.17 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 6,
		Coords = { 1728.43, 6415.42, 35.03, 243.78 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 6,
		Coords = { 548.71, 2670.8, 42.16, 93.55 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 6,
		Coords = { 1960.21, 3740.66, 32.33, 300.48 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 6,
		Coords = { 2677.8, 3279.95, 55.23, 334.49 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 6,
		Coords = { 1697.35, 4923.46, 42.06, 328.82 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 6,
		Coords = { -1819.55, 793.51, 138.08, 133.23 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { 1392.03, 3606.1, 34.98, 204.1 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { -2966.41, 391.59, 15.05, 85.04 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { -3039.57, 584.75, 7.9, 11.34 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { 1134.33, -983.09, 46.4, 277.8 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Venda Criminal
		Distance = 10,
		Coords = { -1660.48, -167.43, 57.54, 229.61 },
		Model =  "a_m_y_soucent_02" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
	Distance = 10,
	Coords = { 1165.26, 2710.79, 38.15, 178.59 },
	Model =  "mp_m_shopkeep_01" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
},
	{ -- Departament Store
		Distance = 10,
		Coords = { -1486.77, -377.56, 40.15, 133.23 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 10,
		Coords = { -1221.42, -907.91, 12.32, 31.19 },
		Model =  "mp_m_shopkeep_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 12,
		Coords = { 1692.28, 3760.94, 34.69, 229.61 },
		Model =  "ig_dale" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 12,
		Coords = { 253.79, -50.5, 69.94, 68.04 },
		Model =  "ig_dale" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 12,
		Coords = { 842.41, -1035.28, 28.19, 0.0 },
		Model =  "ig_dale" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 12,
		Coords = { -331.62, 6084.93, 31.46, 226.78 },
		Model =  "ig_dale" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 12,
		Coords = { -662.29, -933.62, 21.82, 181.42 },
		Model =  "ig_dale" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 12,
		Coords = { -1304.17, -394.62, 36.7, 73.71 },
		Model =  "ig_dale" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 12,
		Coords = { -1118.95, 2699.73, 18.55, 223.94 },
		Model =  "ig_dale" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 50,
		Coords = { -1311.42,8238.1,12.33,150.24 },
		Model =  "ig_dale" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 12,
		Coords = { 2567.98, 292.65, 108.73, 0.0 },
		Model =  "ig_dale" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 12,
		Coords = { -3173.51, 1088.38, 20.84, 249.45 },
		Model =  "ig_dale" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 12,
		Coords = { 22.59, -1105.54, 29.79, 155.91 },
		Model =  "ig_dale" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 12,
		Coords = { 810.22, -2158.99, 29.62, 0.0 },
		Model =  "ig_dale" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Cobertura
		Distance = 20,
		Coords = { -605.27,-713.18,220.28,277.8 },
		Model =  "ig_barry" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Life Invader
		Distance = 20,
		Coords = { -1083.15, -245.88, 37.76, 209.77 },
		Model =  "ig_barry" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},

	{ -- Condominio Arua
		Distance = 50,
		Coords = { -2692.45,-94.9,17.66,42.52 },
		Model =  "s_m_m_armoured_02" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- DOMINACAO
	Distance = 50,
	Coords = { -2175.29,4294.67,49.05,249.45 },
	Model =  "ig_cletus" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- DOMINACAO
	Distance = 50,
	Coords = { 452.92,-1305.32,30.11,311.82 },
	Model =  "ig_cletus" ,
	anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Venda Peixes
		Distance = 20,
		Coords = { 1520.56, 3780.08, 34.46, 274.97 },
		Model =  "a_f_y_beach_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Taxista
		Distance = 30,
		Coords = { -1601.97,-837.15,10.26,31.19 },
		Model =  "a_m_y_stlat_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Taxista
		Distance = 30,
		Coords = { 1696.19, 4785.25, 42.02, 93.55 },
		Model =  "a_m_y_stlat_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Caçador
		Distance = 10,
		Coords = { -679.13, 5839.52, 17.32, 226.78 },
		Model =  "ig_hunter" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- PescadorPaleto
		Distance = 30,
		Coords = { 1524.77, 3783.84, 34.49, 187.09 },
		Model =  "a_f_y_eastsa_03" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Megamall compras LS
		Distance = 40,
		Coords = { 109.42, -1797.59, 27.08, 141.74 },
		Model =  "g_f_y_vagos_01" ,
		anim = { "amb@world_human_leaning@male@wall@back@legs_crossed@base", "base" }
	},
	{ -- Megamall compras Paleto
		Distance = 40,
		Coords = { 2746.09,3460.25,55.79,252.29 },
		Model =  "g_f_y_vagos_01" ,
		anim = { "amb@world_human_leaning@male@wall@back@legs_crossed@base", "base" }
	},
	{ -- Cassino Loja
		Distance = 50,
		Coords = { 954.53,24.07,71.83,56.7 },
		Model =  "s_f_y_casino_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},
	{ -- Farmacia Store LS
		Distance = 30,
		Coords = { 1141.79,-1529.94,35.03,93.55 },
		Model =  "s_m_m_scientist_01" ,
		anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	},

	{ -- Recepção HP
		Distance = 30,
		Coords = { 309.58,-593.8,43.29,28.35 },
		Model =  "s_m_m_scientist_01" ,
	},
	
	{ -- Maca HP
		Distance = 30,
		Coords = { 1123.88,-1554.44,35.03,272.13 },
		Model =  "s_m_m_scientist_01" ,
		anim = { "mini@repair", "fixing_a_ped" }

	},
	{ -- Maca HP
		Distance = 30,
		Coords = { 1123.88,-1563.33,35.03,269.3 },
		Model =  "s_m_m_scientist_01" ,
		anim = { "mini@repair", "fixing_a_ped" }

	},

	-- { -- Farmacia Store Paleto
	-- Distance = 30,
	-- Coords = { -253.71,6327.33,32.42,317.49},
	-- Model =  "s_m_m_scientist_01" ,
	-- anim = { "anim@heists@heist_corona@single_team", "single_team_loop_boss" }
	-- },			
	{ -- Reciclagem Roupas
	Distance = 50,
	Coords = { -347.28,-1576.08,25.22,300.48 },
	Model =  "s_f_y_clubbar_02" ,
	anim = { "friends@fra@ig_1", "base_idle" }
	},

	{ -- loja Roupas
	Distance = 50,
	Coords = { 2829.92,2809.49,57.41,172.92 },
	Model =  "s_f_y_clubbar_02" ,
	anim = { "friends@fra@ig_1", "base_idle" }
	},
	{ -- loja Roupas
	Distance = 50,
	Coords = { 1689.79,4822.53,42.06,102.05 },
	Model =  "s_f_y_clubbar_02" ,
	anim = { "friends@fra@ig_1", "base_idle" }
	},

	{ -- loja Roupas
	Distance = 50,
	Coords = { 79.3,-1393.22,29.37,269.3},
	Model =  "s_f_y_clubbar_02" ,
	anim = { "friends@fra@ig_1", "base_idle" }
	},
	{ -- loja Roupas
	Distance = 50,
	Coords = { 2.42,6515.46,31.88,42.52},
	Model =  "s_f_y_clubbar_02" ,
	anim = { "friends@fra@ig_1", "base_idle" }
	},

	

	{ -- VilaPrudente
	Distance = 50,
	Coords = { 2646.49,1781.39,33.62,82.21 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Jaguare
	Distance = 50,
	Coords = { 1256.51,-226.35,96.04,184.26 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Jaguare
	Distance = 50,
	Coords = { 172.69,-1700.2,29.28,323.15 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Campolimpo
	Distance = 50,
	Coords = { 1328.51,-742.36,84.47,79.38 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Guaianazes
	Distance = 50,
	Coords = { 1360.37,-2447.3,50.79,70.87 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Capaoredondo
	Distance = 50,
	Coords = { 803.31,-288.14,66.52,300.48 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Dk
	Distance = 50,
	Coords = { 934.32,-1550.71,30.73,170.08 },
	Model =  "g_m_y_7ballaorig_01" ,
	},
	{ -- Tiradentes
	Distance = 50,
	Coords = { 2244.41,3593.52,65.17,221.11 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Autosport
	Distance = 50,
	Coords = { 2740.9,3467.31,55.71,345.83 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Autosport
	Distance = 50,
	Coords = { 2725.13,3464.85,55.71,249.45 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Ferrovelho
	Distance = 50,
	Coords = { 486.88,-1322.05,29.2,116.23 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Oziel
	Distance = 50,
	Coords = { 2683.38,-625.55,49.79,189.93 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Osasco
	Distance = 50,
	Coords = { 437.78,3385.4,70.65,110.56 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Grajau
	Distance = 50,
	Coords = { -1751.12,-258.5,52.84,68.04 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Vilaede
	Distance = 50,
	Coords = { 	1230.2,-1059.67,46.84,45.36 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Malibu
	Distance = 50,
	Coords = { 	-3215.36,840.66,8.93,223.94 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Final
	Distance = 50,
	Coords = { 	4994.09,-5795.81,20.88,325.99 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Brasilandia
	Distance = 50,
	Coords = { 	893.73,350.48,117.93,42.52 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- LAVAGEM
	Distance = 50,
	Coords = { -1397.68,-629.39,30.31,300.48 },
	Model =  "s_m_m_migrant_01" ,
	anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }
	},
	{ -- LAVAGEM
	Distance = 50,
	Coords = { 2432.34,4971.8,42.34,56.7 },
	Model =  "s_m_m_migrant_01" ,
	anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }
	},
	{ -- CRBC
	Distance = 30,
	Coords = { -1050.15,-234.75,44.01,172.92 },
	Model =  "s_m_m_migrant_01" ,
	anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }
	},
	{ -- Morato
	Distance = 50,
	Coords = { 3750.06,4542.49,30.01,124.73 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- ITAPEVI
	Distance = 50,
	Coords = { 1663.79,6515.62,34.69,172.92 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- MARCONE
	Distance = 50,
	Coords = { 615.57,2549.97,63.41,283.47 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- ALBA
	Distance = 50,
	Coords = { -1227.04,-1731.75,4.6,232.45 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Rua100
	Distance = 50,
	Coords = { 212.95,696.15,220.33,255.12 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- PLAYBOY
	Distance = 40,
	Coords = { -1544.7,96.64,56.75,314.65 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- VITRINE
	Distance = 20,
	Coords = { -714.9,-744.89,-23.94,184.26 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- Corrida
	Distance = 50,
	Coords = { 719.13,-973.76,30.4,87.88 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- itaquera
	Distance = 50,
	Coords = { -2361.53,1732.65,212.12,79.38 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- paraisopolis
	Distance = 50,
	Coords = { 852.0,1169.29,343.1,189.93 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- hells
	Distance = 50,
	Coords = { 956.39,-1556.5,30.73,93.55 },
	Model =  "g_m_y_ballaorig_01" ,
	},
	{ -- HABILITACAO
	Distance = 100,
	Coords = { 241.13,-1378.86,33.73,141.74 },
	Model =  "cs_nigel" ,
	},
	{ -- ilegal pendrive
	Distance = 100,
	Coords = { 4959.2,-4475.41,10.56,320.32 },
	Model =  "g_m_y_ballaorig_01" ,
	},
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADLIST
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local Ped = PlayerPedId()
		local Coords = GetEntityCoords(Ped)

		for Number = 1, #List do
			local Distance = #(Coords - vec3(List[Number]["Coords"][1], List[Number]["Coords"][2], List[Number]["Coords"][3]))
			if Distance <= List[Number]["Distance"] then
				if not localPeds[Number] and LocalPlayer["state"]["Route"] < 900000 then
					if LoadModel(List[Number]["Model"]) then
						localPeds[Number] = CreatePed(4, List[Number]["Model"], List[Number]["Coords"][1],
							List[Number]["Coords"][2], List[Number]["Coords"][3] - 1, List[Number]["Coords"][4], false,
							false)
						SetPedArmour(localPeds[Number], 99)
						SetEntityInvincible(localPeds[Number], true)
						FreezeEntityPosition(localPeds[Number], true)
						SetBlockingOfNonTemporaryEvents(localPeds[Number], true)

						SetModelAsNoLongerNeeded(List[Number]["Model"])

						if List[Number]["Model"] == "s_f_y_casino_01" then
							SetPedDefaultComponentVariation(localPeds[Number])
							SetPedComponentVariation(localPeds[Number], 0, 3, 0, 0)
							SetPedComponentVariation(localPeds[Number], 1, 0, 0, 0)
							SetPedComponentVariation(localPeds[Number], 2, 3, 0, 0)
							SetPedComponentVariation(localPeds[Number], 3, 0, 1, 0)
							SetPedComponentVariation(localPeds[Number], 4, 1, 0, 0)
							SetPedComponentVariation(localPeds[Number], 6, 1, 0, 0)
							SetPedComponentVariation(localPeds[Number], 7, 1, 0, 0)
							SetPedComponentVariation(localPeds[Number], 8, 0, 0, 0)
							SetPedComponentVariation(localPeds[Number], 10, 0, 0, 0)
							SetPedComponentVariation(localPeds[Number], 11, 0, 0, 0)
							SetPedPropIndex(localPeds[Number], 1, 0, 0, false)
						end

						if List[Number]["anim"] ~= nil then
							if LoadAnim(List[Number]["anim"][1]) then
								TaskPlayAnim(localPeds[Number], List[Number]["anim"][1], List[Number]["anim"][2], 8.0,
									8.0, -1, 1, 0, 0, 0, 0)
							end
						end
					end
				end
			else
				if localPeds[Number] then
					if DoesEntityExist(localPeds[Number]) then
						DeleteEntity(localPeds[Number])
					end
				end
				localPeds[Number] = nil
			end
		end

		Wait(1000)
	end
end)

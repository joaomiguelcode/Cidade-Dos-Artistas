-----------------------------------------------------------------------------------------------------------------------------------------
-- DRIFTENABLE
-----------------------------------------------------------------------------------------------------------------------------------------
function driftEnable()
	if not IsPauseMenuActive() then
		local Ped = PlayerPedId()
		if IsPedInAnyVehicle(Ped) and not IsPedOnAnyBike(Ped) and not IsPedInAnyHeli(Ped) and not IsPedInAnyBoat(Ped) and not IsPedInAnyPlane(Ped) then
			local Vehicle = GetVehiclePedIsIn(Ped)
			if GetPedInVehicleSeat(Vehicle,-1) == Ped then
				local speed = GetEntitySpeed(Vehicle) * 3.6
				if speed <= 100.0 and speed >= 5.0 then
					SetVehicleReduceGrip(Vehicle,true)

					if not GetDriftTyresEnabled(Vehicle) then
						SetDriftTyresEnabled(Vehicle,true)
						SetReduceDriftVehicleSuspension(Vehicle,true)
					end
				end
			end
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRIFTDISABLE
-----------------------------------------------------------------------------------------------------------------------------------------
function driftDisable()
	local Ped = PlayerPedId()
	if IsPedInAnyVehicle(Ped) then
		local Vehicle = GetLastDrivenVehicle()

		if GetDriftTyresEnabled(Vehicle) then
			SetVehicleReduceGrip(Vehicle,false)
			SetDriftTyresEnabled(Vehicle,false)
			SetReduceDriftVehicleSuspension(Vehicle,false)
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CRUISER
-----------------------------------------------------------------------------------------------------------------------------------------
local Cruiser = nil
RegisterCommand("cr",function(source,Message)
	local Ped = PlayerPedId()
	if IsPedInAnyVehicle(Ped) then
		local Vehicle = GetVehiclePedIsUsing(Ped)
		if GetPedInVehicleSeat(Vehicle,-1) == Ped and not IsEntityInAir(Vehicle) then
			local speed = GetEntitySpeed(Vehicle) * 3.6

			if speed > 0 then
				if not Message[1] then
					Cruiser = false
					TriggerEvent("Notify","amarelo","Limitador Desativado.",3000)
				else
					local Limit = tonumber(Message[1])
					if Limit > 10 and Limit < 299 then
						Cruiser = 0.28 * Limit
						TriggerEvent("Notify","amarelo","Velocidade Limitada.",3000)
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LIMITADOR
-----------------------------------------------------------------------------------------------------------------------------------------
local CRUISER_THREAD_STATUS
local function cruiserThread()
	if CRUISER_THREAD_STATUS then return end
	CRUISER_THREAD_STATUS = true

	SetPedHelmet(cache.ped, false)
	RemovePedHelmet(cache.ped, true)
	
	CreateThread(function()
		while cache.vehicle and (cache.seat <= 0) do
			local timeDistance = 1000
			local ped = cache.ped
			local vehicle = cache.vehicle

			if GetVehicleClass(vehicle) == 8 then
				timeDistance = 4
				DisableControlAction(0,345,true)
			end

			if cache.seat == -1 then
				SetEntityMaxSpeed(vehicle, Cruiser or 83.0)
			end 
			Wait(timeDistance)
		end
		CRUISER_THREAD_STATUS = nil
	end)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- ACTIVEDRIFT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("+activeDrift",driftEnable)
RegisterCommand("-activeDrift",driftDisable)
RegisterKeyMapping("+activeDrift","Ativação do drift.","keyboard","LSHIFT")
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLIPS
-----------------------------------------------------------------------------------------------------------------------------------------
local Blips = {
	{ 265.05,-1262.65,29.3,361,62,"Posto de Gasolina",0.5 },
	{ 819.02,-1027.96,26.41,361,62,"Posto de Gasolina",0.5 },
	{ 1208.61,-1402.43,35.23,361,62,"Posto de Gasolina",0.5 },
	{ 1181.48,-330.26,69.32,361,62,"Posto de Gasolina",0.5 },
	{ 621.01,268.68,103.09,361,62,"Posto de Gasolina",0.5 },
	{ 2581.09,361.79,108.47,361,62,"Posto de Gasolina",0.5 },
	{ 175.08,-1562.12,29.27,361,62,"Posto de Gasolina",0.5 },
	{ -319.76,-1471.63,30.55,361,62,"Posto de Gasolina",0.5 },
	{ 49.42,2778.8,58.05,361,62,"Posto de Gasolina",0.5 },
	{ 264.09,2606.56,44.99,361,62,"Posto de Gasolina",0.5 },
	{ 1039.38,2671.28,39.56,361,62,"Posto de Gasolina",0.5 },
	{ 1207.4,2659.93,37.9,361,62,"Posto de Gasolina",0.5 },
	{ 2539.19,2594.47,37.95,361,62,"Posto de Gasolina",0.5 },
	{ 2679.95,3264.18,55.25,361,62,"Posto de Gasolina",0.5 },
	{ 2005.03,3774.43,32.41,361,62,"Posto de Gasolina",0.5 },
	{ 1687.07,4929.53,42.08,361,62,"Posto de Gasolina",0.5 },
	{ 1701.53,6415.99,32.77,361,62,"Posto de Gasolina",0.5 },
	{ 180.1,6602.88,31.87,361,62,"Posto de Gasolina",0.5 },
	{ -94.46,6419.59,31.48,361,62,"Posto de Gasolina",0.5 },
	{ -2555.17,2334.23,33.08,361,62,"Posto de Gasolina",0.5 },
	{ -1800.09,803.54,138.72,361,62,"Posto de Gasolina",0.5 },
	{ -1437.0,-276.8,46.21,361,62,"Posto de Gasolina",0.5 },
	{ -2096.3,-320.17,13.17,361,62,"Posto de Gasolina",0.5 },
	{ -724.56,-935.97,19.22,361,62,"Posto de Gasolina",0.5 },
	{ -525.26,-1211.19,18.19,361,62,"Posto de Gasolina",0.5 },
	{ -70.96,-1762.21,29.54,361,62,"Posto de Gasolina",0.5 },
	{ 1776.7,3330.56,41.32,361,62,"Posto de Gasolina",0.5 },
	{ -1112.4,-2884.08,13.93,361,62,"Posto de Gasolina",0.5 },

	{ -314.78,-883.09,31.07,357,62,"Garagem",0.6 },
	{ 55.75,-875.69,30.67,357,62,"Garagem",0.6 },
	{ -767.34,5583.49,33.6,357,62,"Garagem",0.6 },
	{ -136.36,6357.03,31.49,357,62,"Garagem",0.6 },
	{ 317.7,2623.52,44.47,357,62,"Garagem",0.6 },
	{ -340.76,265.97,85.67,357,62,"Garagem",0.6 },
	{ -1184.92,-1510.00,4.64,357,62,"Garagem",0.6 },
	{ 361.90,297.81,103.88,357,62,"Garagem",0.6 },
	{ 1035.89,-763.89,57.99,357,62,"Garagem",0.6 },
	{ -796.63,-2022.77,9.16,357,62,"Garagem",0.6 },
	{ 528.66,-146.3,58.38,357,62,"Garagem",0.6 },
	{ -1159.48,-739.32,19.89,357,62,"Garagem",0.6 },
	{ 1695.33,4763.57,41.99,357,62,"Garagem",0.6 },
	{ 1624.05,3566.14,35.15,357,62,"Garagem",0.6 },
	{ -73.35,-2004.6,18.27,357,62,"Garagem",0.6 },
	{ 2655.01,1693.36,24.48,357,62,"Garagem",0.6 },
	{ -2503.66,3614.14,14.0,357,62,"Garagem",0.6 },
	{ -1340.25,-1680.64,2.14,357,62,"Garagem",0.6 },
	{ -2326.57,374.56,174.5,357,62,"Garagem",0.6 },

	{ 1834.29,3661.68,34.91,621,1,"Hospital",0.6 },
	{ -832.08,-2653.01,13.82,536,75,"Bombeiro",0.6 },
	
	{ -75.32,33.31,72.07,383,46,"MCdonalds",0.5 },

	{ -69.92,6262.28,31.09,154,0,"Açougueiro",0.5 },

	{ -613.34,-928.18,24.06,135,45,"CNN",0.6 }, 

	{ -589.91,-702.29,38.55,475,45,"Rooftop",0.6 }, 
	{ 132.72,-1307.11,29.96,348,45,"Vanilla",0.6 }, 
	{ -1723.64,-809.96,10.23,93,45,"Asgard",0.6 }, 
	-- { -842.92,-797.49,19.53,93,45,"Vitrine",0.6 }, 

	{ 2767.55,3445.3,55.81,402,45,"Stop Car",0.6 }, 
	{ 947.17,-943.35,42.95,402,45,"OverSpeed",0.6 }, 

	{ 29.2,-1351.89,29.34,52,36,"Loja de Departamento",0.5 },
	{ 2561.74,385.22,108.61,52,36,"Loja de Departamento",0.5 },
	{ 1160.21,-329.4,69.03,52,36,"Loja de Departamento",0.5 },
	{ -711.99,-919.96,19.01,52,36,"Loja de Departamento",0.5 },
	{ -54.56,-1758.56,29.05,52,36,"Loja de Departamento",0.5 },
	{ 375.87,320.04,103.42,52,36,"Loja de Departamento",0.5 },
	{ -3237.48,1004.72,12.45,52,36,"Loja de Departamento",0.5 },
	{ 1730.64,6409.67,35.0,52,36,"Loja de Departamento",0.5 },
	{ 543.51,2676.85,42.14,52,36,"Loja de Departamento",0.5 },
	{ 1966.53,3737.95,32.18,52,36,"Loja de Departamento",0.5 },
	{ 2684.73,3281.2,55.23,52,36,"Loja de Departamento",0.5 },
	{ 1696.12,4931.56,42.07,52,36,"Loja de Departamento",0.5 },
	{ -1820.18,785.69,137.98,52,36,"Loja de Departamento",0.5 },
	{ 1395.35,3596.6,34.86,52,36,"Loja de Departamento",0.5 },
	{ -2977.14,391.22,15.03,52,36,"Loja de Departamento",0.5 },
	{ -3034.99,590.77,7.8,52,36,"Loja de Departamento",0.5 },
	{ 1144.46,-980.74,46.19,52,36,"Loja de Departamento",0.5 },
	{ 1166.06,2698.17,37.95,52,36,"Loja de Departamento",0.5 },
	{ -1493.12,-385.55,39.87,52,36,"Loja de Departamento",0.5 },
	{ -1228.6,-899.7,12.27,52,36,"Loja de Departamento",0.5 },
	{ 157.82,6631.8,31.68,52,36,"Loja de Departamento",0.5 },
	{ 1702.78,3748.82,34.05,76,6,"Loja de Armas",0.5 },
	{ 240.06,-43.74,69.71,76,6,"Loja de Armas",0.5 },
	{ 843.95,-1020.53,27.53,76,6,"Loja de Armas",0.5 },
	{ -322.19,6072.86,31.27,76,6,"Loja de Armas",0.5 },
	{ -664.03,-949.22,21.53,76,6,"Loja de Armas",0.5 },
	{ -1318.83,-389.19,36.43,76,6,"Loja de Armas",0.5 },
	{ -1110.11,2687.5,18.62,76,6,"Loja de Armas",0.5 },
	{ 2569.23,309.46,108.46,76,6,"Loja de Armas",0.5 },
	{ -3159.91,1080.64,20.69,76,6,"Loja de Armas",0.5 },
	{ 15.42,-1120.57,28.81,76,6,"Loja de Armas",0.5 },
	{ 811.81,-2145.58,29.34,76,6,"Loja de Armas",0.5 },
	{ -815.12,-184.15,37.57,71,62,"Barbearia",0.5 },
	{ 138.13,-1706.46,29.3,71,62,"Barbearia",0.5 },
	{ -1280.92,-1117.07,7.0,71,62,"Barbearia",0.5 },
	{ 1930.54,3732.06,32.85,71,62,"Barbearia",0.5 },
	{ 1214.2,-473.18,66.21,71,62,"Barbearia",0.5 },
	{ -33.61,-154.52,57.08,71,62,"Barbearia",0.5 },
	{ -276.65,6226.76,31.7,71,62,"Barbearia",0.5 },
	{ -1117.26,-1438.74,5.11,366,62,"Loja de Roupas",0.5 },
	{ 86.06,-1391.64,29.23,366,62,"Loja de Roupas",0.5 },
	{ -719.94,-158.18,37.0,366,62,"Loja de Roupas",0.5 },
	{ -152.79,-306.79,38.67,366,62,"Loja de Roupas",0.5 },
	{ -816.39,-1081.22,11.12,366,62,"Loja de Roupas",0.5 },
	{ -1206.51,-781.5,17.12,366,62,"Loja de Roupas",0.5 },
	{ -1458.26,-229.79,49.2,366,62,"Loja de Roupas",0.5 },
	{ -2.41,6518.29,31.48,366,62,"Loja de Roupas",0.5 },
	{ 1682.59,4819.98,42.04,366,62,"Loja de Roupas",0.5 },
	{ 129.46,-205.18,54.51,366,62,"Loja de Roupas",0.5 },
	{ 1197.93,2698.21,37.96,366,62,"Loja de Roupas",0.5 },
	{ -3165.74,1061.29,20.84,366,62,"Loja de Roupas",0.5 },
	{ -1093.76,2703.99,19.04,366,62,"Loja de Roupas",0.5 },
	{ 414.86,-807.57,29.34,366,62,"Loja de Roupas",0.5 },
	{ -776.72,-1495.02,2.29,266,62,"Embarcações",0.5 },
	{ -1604.83,5256.85,2.07,266,62,"Embarcações",0.5 },
	{ 4971.95,-5171.1,2.29,266,62,"Embarcações",0.5 },
	{ 83.61,-1551.5,29.59,78,11,"Megamall",0.5 },
	-- { 2747.28,3473.04,55.67,78,11,"Mercado Central",0.5 },
	{ 156.94,-214.81,55.07,535,45,"Apple",0.6 },
	
	{ -891.42,1016.13,225.87,369,74,"Vintage",0.6 },
	{ -2752.69,-149.92,39.77,369,74,"Aruã",0.6 },
	{ 891.58,962.77,237.53,369,74,"Alphaville",0.6 },
	{ -2160.3,-569.11,5.64,369,74,"Bangalô",0.6 },

	{ -929.27,-1189.84,5.14,60,18,"Baep",0.6 },
	{ 2735.33,1363.68,24.6,60,18,"Coe",0.6 },
	{ -1736.32,4839.32,60.73,60,18,"Rota",0.6 },
	{ 1716.1,1497.55,84.89,60,18,"Rodoviaria",0.6 },
	{ -1045.84,-395.89,37.73,60,18,"Receita Federal",0.6 },
	{ 301.23,-2007.2,20.39,60,18,"CPA/M-5",0.6 },
	{ 1106.67,2679.05,38.77,60,18,"Policia Penal",0.6 },
	{ 449.07,2666.58,43.59,60,18,"Policia Civil",0.6 },
	{ 1947.31,3129.8,48.26,60,18,"Policia Federal",0.5 },
	{ -2395.68,3976.55,24.94,255,18,"Penitenciaria",0.8 },
	{ 624.36,615.96,129.37,60,18,"GCM",0.6 },
	{ 2548.95,4217.42,41.53,60,18,"Anchieta",0.6 },
	{ 810.8,-1692.67,29.39,60,18,"Humaitá",0.6 },
	{ -773.64,-996.0,14.63,60,18,"CPTran",0.6 },

	{ -411.41,1208.44,325.13,409,0,"Judiciario",0.5 },
	{ -698.78,271.17,83.1,40,62,"Imobiliaria",0.5 },
	{ 241.13,-1378.86,33.73,76,62,"Auto Escola",0.5 },

	{ 1322.93,-1652.29,52.27,75,13,"Loja de Tatuagem",0.5 },
	{ -1154.42,-1425.9,4.95,75,13,"Loja de Tatuagem",0.5 },
	{ 322.84,180.16,103.58,75,13,"Loja de Tatuagem",0.5 },
	{ -3169.62,1075.8,20.83,75,13,"Loja de Tatuagem",0.5 },
	{ 1864.07,3747.9,33.03,75,13,"Loja de Tatuagem",0.5 },
	{ -293.57,6199.85,31.48,75,13,"Loja de Tatuagem",0.5 },
	{ 1525.07,3784.92,34.49,317,62,"Pescador",0.5 },

	{ -595.06,5066.48,136.1,141,21,"Área de caça (10km²)",0.6 },
	{ 1665.13,3497.39,36.5,225,0,"Concessionária",0.5 },
	{ 408.56,-1624.93,29.15,357,9,"Patio de Apreensões",0.6 },

	{ -5.578731, -1067.16, 37.1512146,542,0,"Heliponto",0.5 },
	{ -342.330139, -817.1856, 53.7954025,542,0,"Heliponto",0.5 },
	{ -317.263275, -732.201355, 53.8480148,542,0,"Heliponto",0.5 },
	{ -461.432831, -775.5182, 43.9703,542,0,"Heliponto",0.5 },
	{ -1707.7666, -904.03595, 7.862589,542,0,"Heliponto",0.5 },
	{ -1656.58484, -843.039856, 8.180681,542,0,"Heliponto",0.5 },
	{ -1616.65625, -876.5439, 8.224015,542,0,"Heliponto",0.5 },
	{ 1184.37756, -1567.95374, 38.4047241,542,0,"Heliponto",0.5 },
	{ 1770.23523, 3240.11377, 40.67815,542,0,"Heliponto",0.5 },
	{ 2139.82178, 4811.00049, 40.0795364,542,0,"Heliponto",0.5 },
	{ -475.384766, 5988.71, 30.2825851,542,0,"Heliponto",0.5 },
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADTIMERS
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		InvalidateIdleCam()
		InvalidateVehicleIdleCam()
		CancelCurrentPoliceReport()
		SetPedInfiniteAmmoClip(PlayerPedId(),false)
		Wait(1000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADTIMERS
-----------------------------------------------------------------------------------------------------------------------------------------
local ClearArea = {
    { -851.84,-2163.95,8.95,200 } -- HOSPITAL
}

CreateThread(function()
	while true do
		local Ped = PlayerPedId()
		local Ply = PlayerId()
		SetWeaponDamageModifierThisFrame("WEAPON_BAT",0.25)
		SetWeaponDamageModifierThisFrame("WEAPON_HAMMER",0.25)
		SetWeaponDamageModifierThisFrame("WEAPON_WRENCH",0.25)
		SetWeaponDamageModifierThisFrame("WEAPON_UNARMED",0.25)
		SetWeaponDamageModifierThisFrame("WEAPON_HATCHET",0.25)
		SetWeaponDamageModifierThisFrame("WEAPON_CROWBAR",0.25)
		SetWeaponDamageModifierThisFrame("WEAPON_MACHETE",0.25)
		SetWeaponDamageModifierThisFrame("WEAPON_POOLCUE",0.25)
		SetWeaponDamageModifierThisFrame("WEAPON_KNUCKLE",0.25)
		SetWeaponDamageModifierThisFrame("WEAPON_GOLFCLUB",0.25)
		SetWeaponDamageModifierThisFrame("WEAPON_BATTLEAXE",0.25)
		SetWeaponDamageModifierThisFrame("WEAPON_FLASHLIGHT",0.25)
		SetWeaponDamageModifierThisFrame("WEAPON_NIGHTSTICK",0.35)
		SetWeaponDamageModifierThisFrame("WEAPON_STONE_HATCHET",0.25)
		SetWeaponDamageModifierThisFrame("WEAPON_SMOKEGRENADE",0.5)
		SetWeaponDamageModifierThisFrame("WEAPON_DOZEBORRACHA",0.0)

		HideHudComponentThisFrame(3)
		HideHudComponentThisFrame(4)
		HideHudComponentThisFrame(6)
		HideHudComponentThisFrame(7)
		HideHudComponentThisFrame(8)
		HideHudComponentThisFrame(9)
		HideHudComponentThisFrame(13)
		HideHudComponentThisFrame(16)

		DisableControlAction(0,36,true)
		DisableControlAction(1,37,true)
		DisableControlAction(1,204,true)
		DisableControlAction(1,211,true)
		DisableControlAction(1,349,true)
		DisableControlAction(1,192,true)
		DisableControlAction(1,157,true)
		DisableControlAction(1,158,true)
		DisableControlAction(1,159,true)
		DisableControlAction(1,160,true)
		DisableControlAction(1,161,true)
		DisableControlAction(1,162,true)
		DisableControlAction(1,163,true)
		DisableControlAction(1,164,true)
		DisableControlAction(1,165,true)

		-- for _,v in pairs(ClearArea) do
        --     local Distance = #(GetEntityCoords(Ped) - vec3(v[1],v[2],v[3]))
        --     if Distance <= v[4] or LocalPlayer["state"]["Route"] > 0 then
        --         SetVehicleDensityMultiplierThisFrame(0.0)
        --         SetRandomVehicleDensityMultiplierThisFrame(0.0)
        --         SetParkedVehicleDensityMultiplierThisFrame(0.0)
        --         SetScenarioPedDensityMultiplierThisFrame(0.0,0.0)
        --         SetPedDensityMultiplierThisFrame(0.0)
        --     else
		-- 		SetVehicleDensityMultiplierThisFrame(0.0)
		-- 		SetRandomVehicleDensityMultiplierThisFrame(0.0)
		-- 		SetParkedVehicleDensityMultiplierThisFrame(0.0)
		-- 		SetAmbientVehicleRangeMultiplierThisFrame(0.0)
		-- 		SetScenarioPedDensityMultiplierThisFrame(1.0,1.0)
		-- 		SetPedDensityMultiplierThisFrame(1.0)
        --     end
        -- end

		if cache.weapon then
			DisplayAmmoThisFrame(false)
			DisableControlAction(1,140,true)
			DisableControlAction(1,141,true)
			DisableControlAction(1,142,true)
		end

		if GetPlayerWantedLevel(Ply) ~= 0 then
			ClearPlayerWantedLevel(Ply)
		end

		DisablePlayerVehicleRewards(Ply)

		SetRadarAsExteriorThisFrame()
		SetRadarAsInteriorThisFrame("h4_fake_islandx", 4700.0, -5145.0, 0, 0)
		Wait(0)
	end
end)

function SetWeaponDrops()
	local handle, ped = FindFirstPed()
	local finished = false

	repeat
		if not IsEntityDead(ped) then
			SetPedDropsWeaponsWhenDead(ped, false)
		end
		finished, ped = FindNextPed(handle)
	until not finished

	EndFindPed(handle)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		SetWeaponDrops()
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORT
-----------------------------------------------------------------------------------------------------------------------------------------
local Teleport = {
	{ 330.19,-601.21,43.29,343.65,-581.77,28.8 },
	{ 343.65,-581.77,28.8,330.19,-601.21,43.29 },

	{ 327.16,-603.53,43.29,338.97,-583.85,74.16 },
	{ 338.97,-583.85,74.16,327.16,-603.53,43.29 },

	{ -741.07,5593.13,41.66,446.19,5568.79,781.19 },
	{ 446.19,5568.79,781.19,-741.07,5593.13,41.66 },

	{ -1194.46,-1189.31,7.69,1173.55,-3196.68,-39.00 },
	{ 1173.55,-3196.68,-39.00,-1194.46,-1189.31,7.69 },

	{ -79.75,-836.72,40.56,-75.0,-824.54,321.29 },
	{ -75.0,-824.54,321.29,-79.75,-836.72,40.56 },

	{ 240.89,-1004.87,-99.01,183.02,-1062.76,74.37 },      -------- LUGAR BRANCO  
	{ 183.02,-1062.76,74.37,240.89,-1004.87,-99.01 },

	
	{ 0.94,-703.18,16.13,10.36,-668.13,33.45 },      -------- transporte  
	{ 10.36,-668.13,33.45,0.94,-703.18,16.13 },


	
	
	{ 236.23,229.27,97.11,234.24,229.94,97.11 },
	{ 234.24,229.94,97.11,236.23,229.27,97.11 },

	{ 575.68,-423.15,-69.66, -322.08,-894.81,31.07 },
	{ 402.68,-1004.0,-99.01, -322.08,-894.81,31.07 },
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSTART
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	for Number = 1,#Blips do
		local Blip = AddBlipForCoord(Blips[Number][1],Blips[Number][2],Blips[Number][3])
		SetBlipSprite(Blip,Blips[Number][4])
		SetBlipDisplay(Blip,4)
		SetBlipAsShortRange(Blip,true)
		SetBlipColour(Blip,Blips[Number][5])
		SetBlipScale(Blip,Blips[Number][7])
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(Blips[Number][6])
		EndTextCommandSetBlipName(Blip)
		Wait(50)
	end

	local Tables = {}

	for Number = 1,#Teleport do
		Tables[#Tables + 1] = { Teleport[Number][1],Teleport[Number][2],Teleport[Number][3],2.5,"E","Porta de Acesso","Pressione para acessar" }
	end

	TriggerEvent("hoverfy:Insert",Tables)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADTELEPORT
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local TimeDistance = 999
		if LocalPlayer["state"]["Route"] < 900000 then
			local Ped = PlayerPedId()
			if not IsPedInAnyVehicle(Ped) then
				local Coords = GetEntityCoords(Ped)

				for Number = 1,#Teleport do
					local v = Teleport[Number]
					local Distance = #(Coords - vec3(v[1],v[2],v[3]))
					if Distance <= 1 then
						TimeDistance = 1

						if IsControlJustPressed(1,38) then
							SetEntityCoords(Ped,v[4],v[5],v[6],false,false,false,false)

							if k == 19 or k == 20 then
								local Finishing = false
								local Handle,Object = FindFirstObject()
		
								repeat
									local Coords2 = GetEntityCoords(Object)
									local Distance = #(Coords2 - Coords)
		
									if Distance < 3.0 and GetEntityModel(Object) == 961976194 then
										FreezeEntityPosition(Object,true)
									end
		
									Finishing,Object = FindNextObject(Handle)
								until not Finishing
		
								EndFindObject(Handle)
							end
						end
					end
				end
			end
		end

		Wait(TimeDistance)
	end
end)
---------------------------------------------------------
-- NÃO COLOCA O CAPACETE AUTOMATICAMENTE QUANDO SUBIR NA MOTO
---------------------------------------------------------
-- Citizen.CreateThread(function()
-- 	while true do
-- 		local pPed = PlayerPedId()
-- 		if IsPedInAnyVehicle(pPed, true) then
-- 			SetPedHelmet(pPed, false)
-- 			RemovePedHelmet(pPed, true)
-- 		end
-- 		Wait(500)
-- 	end
-- end)
---------------------------------------------------------
-- DISABLE SOUNDS
---------------------------------------------------------
SetVehicleModelIsSuppressed(GetHashKey("blimp"), true)
SetVehicleModelIsSuppressed(GetHashKey("blimp2"), true)
SetVehicleModelIsSuppressed(GetHashKey("blimp3"), true)

local scenarios = {
    "WORLD_MOUNTAIN_LION_REST",
    "WORLD_MOUNTAIN_LION_WANDER",
    "DRIVE",
    "WORLD_VEHICLE_POLICE_BIKE",
    "WORLD_VEHICLE_POLICE_CAR",
    "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
    "WORLD_VEHICLE_DRIVE_SOLO",
    "WORLD_VEHICLE_BIKER",
    "WORLD_VEHICLE_DRIVE_PASSENGERS",
    "WORLD_VEHICLE_SALTON_DIRT_BIKE",
    "WORLD_VEHICLE_BICYCLE_MOUNTAIN",
    "PROP_HUMAN_SEAT_CHAIR",
    "WORLD_VEHICLE_ATTRACTOR",
    "WORLD_HUMAN_LEANING",
    "WORLD_HUMAN_HANG_OUT_STREET",
    "WORLD_HUMAN_DRINKING",
    "WORLD_HUMAN_SMOKING",
    "WORLD_HUMAN_GUARD_STAND",
    "WORLD_HUMAN_CLIPBOARD",
    "WORLD_HUMAN_HIKER",
    "WORLD_VEHICLE_EMPTY",
    "WORLD_VEHICLE_BIKE_OFF_ROAD_RACE",
    "WORLD_HUMAN_PAPARAZZI",
    "WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN",
    "WORLD_VEHICLE_PARK_PARALLEL",
    "WORLD_VEHICLE_CONSTRUCTION_SOLO",
    "WORLD_VEHICLE_CONSTRUCTION_PASSENGERS",
    "WORLD_VEHICLE_TRUCK_LOGS",
    "WORLD_VEHICLE_AMBULANCE",
    "WORLD_VEHICLE_BICYCLE_BMX",
    "WORLD_VEHICLE_BICYCLE_BMX_BALLAS",
    "WORLD_VEHICLE_BICYCLE_BMX_FAMILY",
    "WORLD_VEHICLE_BICYCLE_BMX_HARMONY",
    "WORLD_VEHICLE_BICYCLE_BMX_VAGOS",
    "WORLD_VEHICLE_BICYCLE_ROAD",
    "WORLD_VEHICLE_BOAT_IDLE",
    "WORLD_VEHICLE_BOAT_IDLE_ALAMO",
    "WORLD_VEHICLE_BOAT_IDLE_MARQUIS",
    "WORLD_VEHICLE_BROKEN_DOWN",
    "WORLD_VEHICLE_BUSINESSMEN",
    "WORLD_VEHICLE_HELI_LIFEGUARD",
    "WORLD_VEHICLE_CLUCKIN_BELL_TRAILER",
    "WORLD_VEHICLE_DRIVE_PASSENGERS_LIMITED",
    "WORLD_VEHICLE_FARM_WORKER",
    "WORLD_VEHICLE_FIRE_TRUCK",
    "WORLD_VEHICLE_MARIACHI",
    "WORLD_VEHICLE_MECHANIC",
    "WORLD_VEHICLE_MILITARY_PLANES_BIG",
    "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
    "WORLD_VEHICLE_PASSENGER_EXIT",
    "WORLD_VEHICLE_POLICE",
    "WORLD_VEHICLE_QUARRY",
    "WORLD_VEHICLE_SALTON",
    "WORLD_VEHICLE_SECURITY_CAR",
    "WORLD_VEHICLE_STREETRACE",
    "WORLD_VEHICLE_TOURBUS",
    "WORLD_VEHICLE_TOURIST",
    "WORLD_VEHICLE_TANDL",
    "WORLD_VEHICLE_TRACTOR",
    "WORLD_VEHICLE_TRACTOR_BEACH",
    "WORLD_VEHICLE_TRUCKS_TRAILERS",
    "WORLD_VEHICLE_DISTANT_EMPTY_GROUND",
}

local models = {
    `shamal`,
    `luxor`, 
    `luxor2`,
    `maverick`,
    `buzzard2`,
    `blimp`,
    `blimp2`,
    `blimp3`,
    `jet`,
    `lazer`,
    `titan`,
    `barracks`,
    `barracks2`,
    `crusader`,
    `rhino`,
    `airtug`,
    `ripley`,
    `buzzard`,
    `firetruk`,
    `ambulance`,
    `police`,
    `police2`,
    `police3`,
    `police4`,
    `riot2`,
    `pranger`,
    `iguard`,
    `sheriff`,
    `police5`,
    `pbus`,
    `fbi`,
    `riot`,
    `seriff2`,
    `policet`,
    `fib2`,
    `policeb`,
    `S_M_Y_Cop_01`,
    `S_M_M_Cop_01`,
    `S_F_Y_Cop_01`,
    `CSB_Cop`,
    `S_M_Y_HwayCop_01`,
    `S_F_Y_Sheriff_01`,
    `S_M_Y_Sheriff_01`
}

local relationships = { -- set these groups friendly to player.
    `AMBIENT_GANG_HILLBILLY`,
    `AMBIENT_GANG_BALLAS`,
    `AMBIENT_GANG_MEXICAN`,
    `AMBIENT_GANG_FAMILY`,
    `AMBIENT_GANG_MARABUNTE`,
    `AMBIENT_GANG_SALVA`,
    `GANG_1`,
    `GANG_2`,
    `GANG_9`,
    `GANG_10`,
    `FIREMAN`,
    `MEDIC`,
    `COP`
}

CreateThread(function()
    for i=1, #relationships do
        SetRelationshipBetweenGroups(1, relationships[i], `PLAYER`)
    end
    for i=1, #scenarios do
        SetScenarioTypeEnabled(scenarios[i], false)
    end
    for i=1, 32 do
        EnableDispatchService(i, false)
    end
    for i=1, #models do
        local mdl = models[i]
        if IsModelAVehicle(mdl) then
            SetVehicleModelIsSuppressed(mdl, true)
        elseif IsModelAPed(mdl) then
            SetPedModelIsSuppressed(mdl, true)
        end
    end
end)

SetMaxWantedLevel(0)
SetCreateRandomCops(false)
SetCreateRandomCopsNotOnScenarios(false)
SetCreateRandomCopsOnScenarios(false)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ISLAND
-----------------------------------------------------------------------------------------------------------------------------------------
local Island = {
	"h4_islandairstrip",
	"h4_islandairstrip_props",
	"h4_islandx_mansion",
	"h4_islandx_mansion_props",
	"h4_islandx_props",
	"h4_islandxdock",
	"h4_islandxdock_props",
	"h4_islandxdock_props_2",
	"h4_islandxtower",
	"h4_islandx_maindock",
	"h4_islandx_maindock_props",
	"h4_islandx_maindock_props_2",
	"h4_IslandX_Mansion_Vault",
	"h4_islandairstrip_propsb",
	"h4_beach",
	"h4_beach_props",
	"h4_beach_bar_props",
	"h4_islandx_barrack_props",
	"h4_islandx_checkpoint",
	"h4_islandx_checkpoint_props",
	"h4_islandx_Mansion_Office",
	"h4_islandx_Mansion_LockUp_01",
	"h4_islandx_Mansion_LockUp_02",
	"h4_islandx_Mansion_LockUp_03",
	"h4_islandairstrip_hangar_props",
	"h4_IslandX_Mansion_B",
	"h4_islandairstrip_doorsclosed",
	"h4_Underwater_Gate_Closed",
	"h4_mansion_gate_closed",
	"h4_aa_guns",
	"h4_IslandX_Mansion_GuardFence",
	"h4_IslandX_Mansion_Entrance_Fence",
	"h4_IslandX_Mansion_B_Side_Fence",
	"h4_IslandX_Mansion_Lights",
	"h4_islandxcanal_props",
	"h4_beach_props_party",
	"h4_islandX_Terrain_props_06_a",
	"h4_islandX_Terrain_props_06_b",
	"h4_islandX_Terrain_props_06_c",
	"h4_islandX_Terrain_props_05_a",
	"h4_islandX_Terrain_props_05_b",
	"h4_islandX_Terrain_props_05_c",
	"h4_islandX_Terrain_props_05_d",
	"h4_islandX_Terrain_props_05_e",
	"h4_islandX_Terrain_props_05_f",
	"h4_islandx_terrain_01",
	"h4_islandx_terrain_02",
	"h4_islandx_terrain_03",
	"h4_islandx_terrain_04",
	"h4_islandx_terrain_05",
	"h4_islandx_terrain_06",
	"h4_ne_ipl_00",
	"h4_ne_ipl_01",
	"h4_ne_ipl_02",
	"h4_ne_ipl_03",
	"h4_ne_ipl_04",
	"h4_ne_ipl_05",
	"h4_ne_ipl_06",
	"h4_ne_ipl_07",
	"h4_ne_ipl_08",
	"h4_ne_ipl_09",
	"h4_nw_ipl_00",
	"h4_nw_ipl_01",
	"h4_nw_ipl_02",
	"h4_nw_ipl_03",
	"h4_nw_ipl_04",
	"h4_nw_ipl_05",
	"h4_nw_ipl_06",
	"h4_nw_ipl_07",
	"h4_nw_ipl_08",
	"h4_nw_ipl_09",
	"h4_se_ipl_00",
	"h4_se_ipl_01",
	"h4_se_ipl_02",
	"h4_se_ipl_03",
	"h4_se_ipl_04",
	"h4_se_ipl_05",
	"h4_se_ipl_06",
	"h4_se_ipl_07",
	"h4_se_ipl_08",
	"h4_se_ipl_09",
	"h4_sw_ipl_00",
	"h4_sw_ipl_01",
	"h4_sw_ipl_02",
	"h4_sw_ipl_03",
	"h4_sw_ipl_04",
	"h4_sw_ipl_05",
	"h4_sw_ipl_06",
	"h4_sw_ipl_07",
	"h4_sw_ipl_08",
	"h4_sw_ipl_09",
	"h4_islandx_mansion",
	"h4_islandxtower_veg",
	"h4_islandx_sea_mines",
	"h4_islandx",
	"h4_islandx_barrack_hatch",
	"h4_islandxdock_water_hatch",
	"h4_beach_party"
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADCAYO
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	local CayoPerico = false

	while true do
		local TimeDistance = 999
		local Ped = PlayerPedId()
		local Coords = GetEntityCoords(Ped)

		if #(Coords - vec3(4840.57,-5174.42,2.0)) <= 2000 then
			if not CayoPerico then
				for _,v in pairs(Island) do
					RequestIpl(v)
				end

				SetIslandHopperEnabled("HeistIsland",true)
				SetAiGlobalPathNodesType(1)
				SetDeepOceanScaler(0.0)
				LoadGlobalWaterType(1)
				CayoPerico = true
			end
		else
			if CayoPerico then
				for _,v in pairs(Island) do
					RemoveIpl(v)
				end

				SetIslandHopperEnabled("HeistIsland",false)
				SetAiGlobalPathNodesType(0)
				SetDeepOceanScaler(1.0)
				LoadGlobalWaterType(0)
				CayoPerico = false
			end
		end

		Wait(TimeDistance)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONTROLE DE CRUSEIRO
-----------------------------------------------------------------------------------------------------------------------------------------
local cruiseIsOn = false
local cruiseVehicle = false
local cruiseSpeed = 999.0

function setCruise()
	if cruiseIsOn then return end
	cruiseIsOn = true

	CreateThread(function()
		while cruiseIsOn and cache.vehicle and (cache.seat < 0) do
			local Ped = cache.ped
			
			local Distance = GetEntityHeightAboveGround(Ped)
			if Distance > 2.0 then break end

			if IsControlJustPressed(1,32) or IsControlJustPressed(1,8) then break end
			SetVehicleForwardSpeed(cruiseVehicle,cruiseSpeed)
			Wait(4)
		end

		cruiseIsOn = nil
	end)
end

RegisterCommand('+CDAcruise', function()
	if not LocalPlayer["state"]["Police"] then return end
	local player = PlayerPedId()
	local vehicle = GetVehiclePedIsIn(player, false)
	if ((cache.seat == -1) and vehicle ~= 0) then
		local currSpeed = GetEntitySpeed(vehicle)
		if currSpeed > 12 then TriggerEvent("Notify", "aviso", "Você está muito rapido!", 5000) return end
		cruiseSpeed = currSpeed
		cruiseVehicle = vehicle
		TriggerEvent("Notify", "sucesso", "Controle de cruzeiro ativado!", 5000)
		setCruise()
	end
end, false)
RegisterKeyMapping('+CDAcruise', 'Cruise Control', 'keyboard', "INSERT")

-----------------------------------------------------------------------------------------------------------------------------------------
-- TYREEXPLOSION
-----------------------------------------------------------------------------------------------------------------------------------------
local TYRE_BURST_THREAD_STATUS
local TYRE_BURST_CLASSES <const> = {
	['8'] = true,
	['13'] = true,
	['14'] = true,
	['15'] = true,
	['16'] = true,
}
local TYRE_INDEX = {
	[0] = 1,
	[2] = 1,
	[3] = 4,
	[4] = 5,
}

local function tyreBurstThread()
	if TYRE_BURST_THREAD_STATUS then return end
	TYRE_BURST_THREAD_STATUS = true

	local vehicleClass = tostring(GetVehicleClass(cache.vehicle))
	local canBurst = not TYRE_BURST_CLASSES[vehicleClass]

	CreateThread(function()
		while cache.vehicle and (cache.seat <= 0) do
			Wait(1000) 

			local vehicle = cache.vehicle
			if canBurst then 
				local roll = GetEntityRoll(vehicle)
				if (roll > 75.0) or (roll < -75.0) then
					local tyre = TYRE_INDEX[math.random(4)]
					local tyreHealth = GetTyreHealth(vehicle, tyre)

					if tyreHealth == 1000.0 then
						SetVehicleTyreBurst(vehicle, tyre, true, 1000.0)
					end
				end
			end

			local burstTires = 0
			for i = 0, 7 do
				if IsVehicleTyreBurst(vehicle, i, false) then
					burstTires = burstTires + 1
				end
			end

			if burstTires >= 4 then
				SetVehicleEngineOn(vehicle, false, true, true)
			end
		end
		TYRE_BURST_THREAD_STATUS = nil
	end)
end

lib.onCache('seat', function(value)
	Wait(0)

	if not value then return end
	
	tyreBurstThread()
	cruiserThread()
end)
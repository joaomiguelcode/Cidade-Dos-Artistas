-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local LastVehicle = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAFEZONE
-----------------------------------------------------------------------------------------------------------------------------------------
local Safezone = {
	["1"] = {
		["PolyZone"] = PolyZone:Create({
			vec2(268.47964477539, -868.12677001953),
			vec2(200.52359008789, -1055.7015380859),
			vec2(113.17356872559, -1023.3862304688),
			vec2(180.10263061523, -835.65991210938)
		}, { ["name"] = "Praça" })
	},
	["2"] = {
		["PolyZone"] = PolyZone:Create({
			vec2(1815.76, 3647.08),
			vec2(1924.83, 3709.34),
			vec2(1902.84, 3748.49),
			vec2(1793.5, 3684.12)
		}, { ["name"] = "Upa" }),
		["Lockpick"] = true
	},
	["3"] = {
		["PolyZone"] = PolyZone:Create({
			vec2(-297.92, -1265.26),
			vec2(-354.81, -1277.92),
			vec2(-355.54, -1408.48),
			vec2(-298.35, -1407.59)
		}, { ["name"] = "Mecanica" }),
		["Lockpick"] = true
	},
	["4"] = {
		["PolyZone"] = PolyZone:Create({
			vec2(875.75, -906.69),
			vec2(883.88, -995.28),
			vec2(978.85, -986.25),
			vec2(953.95, -903.82)
		}, { ["name"] = "Mecanica2" }),
		["Lockpick"] = true
	},
	["5"] = {
		["PolyZone"] = PolyZone:Create({
			vec2(147.3, -173.31),
			vec2(88.36, -151.18),
			vec2(103.69, -105.65),
			vec2(165.64, -127.87)
		}, { ["name"] = "Conce" }),
		["Lockpick"] = true
	},
	["6"] = {
		["PolyZone"] = PolyZone:Create({
			vec2(290.71, -586.64),
			vec2(285.71, -614.51),
			vec2(307.23, -619.56),
			vec2(301.32, -557.43),
			vec2(332.04, -600.59)
		}, { ["name"] = "HpAntigo" }),
		["Lockpick"] = true
	},
	["7"] = {
		["PolyZone"] = PolyZone:Create({
			vec2(815.52, -47.05),
			vec2(924.03, -117.99),
			vec2(930.28, 121.39),
			vec2(1017.37, 66.02)
		}, { ["name"] = "Cassino" })
	},
	["8"] = {
		["PolyZone"] = PolyZone:Create({
			vec2(2751.79, 3423.75),
			vec2(2634.56, 3473.48),
			vec2(2675.77, 3561.54),
			vec2(2806.98, 3505.52)
		}, { ["name"] = "StopCar" }),
		["Lockpick"] = true
	},
	["9"] = {
		["PolyZone"] = PolyZone:Create({
			vec2(2836.57, 2768.48),
			vec2(2879.46, 2860.09),
			vec2(2962.96, 2884.74),
			vec2(3052.88, 2796.86),
			vec2(2942.62, 2680.67)
		}, { ["name"] = "Mineradora" }),
		["Lockpick"] = true
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSAFEZONE
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local Ped = PlayerPedId()
		local Coords = GetEntityCoords(Ped)

		for Index,v in pairs(Safezone) do
			if v["PolyZone"]:isPointInside(Coords) then
				if not LocalPlayer["state"]["Safezone"] and not LocalPlayer["state"]["Police"] then
					NetworkSetFriendlyFireOption(false)
					LocalPlayer["state"]:set("Safezone",Index,true)

					if IsPedArmed(Ped,7) then
						TriggerEvent("inventory:CleanWeapons",true)
					end

					if v["Lockpick"] then
						LocalPlayer["state"]:set("Lockpick",true,true)
					end
				end
			else
				if LocalPlayer["state"]["Safezone"] and LocalPlayer["state"]["Safezone"] == Index then
					NetworkSetFriendlyFireOption(true)
					LocalPlayer["state"]:set("Safezone",false,true)

					if v["Lockpick"] then
						LocalPlayer["state"]:set("Lockpick",false,true)
					end
				end
			end
		end

		Wait(1000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADACTIVE
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local TimeDistance = 999
		if LocalPlayer["state"]["Safezone"] then
			TimeDistance = 1
			DisableControlAction(0,24,true)
			DisableControlAction(0,25,true)
			DisableControlAction(0,68,true)
			DisableControlAction(0,69,true)
			DisableControlAction(0,70,true)
			DisableControlAction(0,91,true)
			DisableControlAction(0,92,true)
			DisableControlAction(0,140,true)
			DisableControlAction(0,142,true)
			DisableControlAction(0,257,true)

			DisableControlAction(2, 37,  true)
            DisableControlAction(1, 45,  true)
            DisableControlAction(2, 80,  true)
            DisableControlAction(2, 140, true)
            DisableControlAction(2, 250, true)
            DisableControlAction(2, 263, true)
            DisableControlAction(2, 310, true)
            DisableControlAction(1, 140, true)
            DisableControlAction(1, 141, true)
            DisableControlAction(1, 142, true)
            DisableControlAction(1, 143, true)
            DisableControlAction(0, 24,  true)
            DisableControlAction(0, 25,  true)
            DisableControlAction(0, 58,  true)
			DisableControlAction(0, 106, true)

			DisablePlayerFiring(PlayerPedId(),true)
		end

		Wait(TimeDistance)
	end
end)
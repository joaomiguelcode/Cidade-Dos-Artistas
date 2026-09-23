-----------------------------------------------------------------------------------------------------------------------------------------
-- CLIENT EVENT LISTENERS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("sounds:Private")
AddEventHandler("sounds:Private", function(sound, volume)
	local vol = tonumber(volume) or 0.5
	if vol < 0.01 then vol = 0.01 end
	if vol > 1.0 then vol = 1.0 end

	SendNUIMessage({
		transactionType = "playSound",
		transactionFile = sound,
		transactionVolume = vol
	})
end)

RegisterNetEvent("sounds:Distance")
AddEventHandler("sounds:Distance", function(coords, maxDistance, sound, volume)
	if not coords or not sound then return end

	local ped = PlayerPedId()
	local pCoords = GetEntityCoords(ped)
	local targetVec = vec3(coords.x or coords[1] or 0.0, coords.y or coords[2] or 0.0, coords.z or coords[3] or 0.0)
	local dist = #(targetVec - pCoords)
	local maxDist = tonumber(maxDistance) or 15.0

	if dist <= maxDist then
		local baseVol = tonumber(volume) or 0.5
		-- Calculate linear distance attenuation: 1.0 at source, 0.0 at maxDistance
		local factor = 1.0 - (dist / maxDist)
		local finalVol = baseVol * factor

		if finalVol >= 0.01 then
			SendNUIMessage({
				transactionType = "playSound",
				transactionFile = sound,
				transactionVolume = finalVol
			})
		end
	end
end)

RegisterNetEvent("sounds:Stop")
AddEventHandler("sounds:Stop", function()
	SendNUIMessage({
		transactionType = "stopSound"
	})
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CLIENT EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
exports("playSound", function(sound, volume)
	TriggerEvent("sounds:Private", sound, volume)
end)

exports("playSoundDistance", function(coords, maxDistance, sound, volume)
	TriggerEvent("sounds:Distance", coords, maxDistance, sound, volume)
end)

exports("stopSound", function()
	TriggerEvent("sounds:Stop")
end)
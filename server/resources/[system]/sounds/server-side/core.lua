-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP / CREATIVE INTEGRATION
-----------------------------------------------------------------------------------------------------------------------------------------
local vRP = nil
pcall(function()
	local Proxy = module("vrp", "lib/Proxy")
	vRP = Proxy.getInterface("vRP")
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SOUND CATALOGUE & CACHE
-----------------------------------------------------------------------------------------------------------------------------------------
local KnownSounds = {
	["alarm"] = true,
	["bandage"] = true,
	["belt"] = true,
	["cash"] = true,
	["chest"] = true,
	["cuff"] = true,
	["deathcop"] = true,
	["enterhouse"] = true,
	["locked"] = true,
	["lumberman"] = true,
	["outhouse"] = true,
	["shop"] = true,
	["tow"] = true,
	["unbelt"] = true,
	["uncuff"] = true,
	["unlocked"] = true
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- SANITIZATION AND HELPERS
-----------------------------------------------------------------------------------------------------------------------------------------
local function sanitizeSound(sound)
	if type(sound) ~= "string" then return nil end
	-- Strip unwanted characters, allow only letters, numbers, hyphens, underscores and slashes
	local clean = string.gsub(sound, "[^%w%-_/]", "")
	if #clean == 0 then return nil end
	return clean
end

local function sanitizeVolume(volume)
	local vol = tonumber(volume) or 0.5
	if vol < 0.01 then vol = 0.01 end
	if vol > 1.0 then vol = 1.0 end
	return vol
end

local function sanitizeDistance(distance)
	local dist = tonumber(distance) or 15.0
	if dist < 1.0 then dist = 1.0 end
	if dist > 300.0 then dist = 300.0 end
	return dist
end

local function resolveSource(target)
	local targetNum = tonumber(target)
	if not targetNum then return nil end

	-- Check if target is already an active online source
	if GetPlayerPing(targetNum) > 0 then
		return targetNum
	end

	-- If not directly pingable, try resolving passport via vRP
	if vRP and vRP.Source then
		local s = vRP.Source(targetNum)
		if s and GetPlayerPing(s) > 0 then
			return s
		end
	end

	return nil
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SOUND CONTROLLER FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
local SoundsController = {}

--- Play sound privately to a specific player
function SoundsController.playSound(target, sound, volume)
	local cleanSound = sanitizeSound(sound)
	if not cleanSound then return false end
	local cleanVol = sanitizeVolume(volume)

	if target == -1 then
		TriggerClientEvent("sounds:Private", -1, cleanSound, cleanVol)
		return true
	end

	local targetSource = resolveSource(target)
	if not targetSource then return false end

	TriggerClientEvent("sounds:Private", targetSource, cleanSound, cleanVol)
	return true
end

--- Play sound in proximity around a player
function SoundsController.playSoundProximity(source, maxDistance, sound, volume)
	local cleanSound = sanitizeSound(sound)
	if not cleanSound then return false end
	local cleanVol = sanitizeVolume(volume)
	local cleanDist = sanitizeDistance(maxDistance)

	local src = resolveSource(source)
	if not src then return false end

	local ped = GetPlayerPed(src)
	if not DoesEntityExist(ped) then return false end

	local coords = GetEntityCoords(ped)
	TriggerClientEvent("sounds:Distance", -1, coords, cleanDist, cleanSound, cleanVol)
	return true
end

--- Play sound in proximity around a vector3 coordinate
function SoundsController.playSoundCoords(coords, maxDistance, sound, volume)
	local cleanSound = sanitizeSound(sound)
	if not cleanSound then return false end
	local cleanVol = sanitizeVolume(volume)
	local cleanDist = sanitizeDistance(maxDistance)

	if type(coords) ~= "vector3" and type(coords) ~= "table" then return false end
	local vec = vec3(coords.x or coords[1] or 0.0, coords.y or coords[2] or 0.0, coords.z or coords[3] or 0.0)

	TriggerClientEvent("sounds:Distance", -1, vec, cleanDist, cleanSound, cleanVol)
	return true
end

--- Play sound to all connected players
function SoundsController.playSoundAll(sound, volume)
	local cleanSound = sanitizeSound(sound)
	if not cleanSound then return false end
	local cleanVol = sanitizeVolume(volume)

	TriggerClientEvent("sounds:Private", -1, cleanSound, cleanVol)
	return true
end

--- Stop currently playing sound for target
function SoundsController.stopSound(target)
	if target == -1 or not target then
		TriggerClientEvent("sounds:Stop", -1)
	else
		local targetSource = resolveSource(target)
		if targetSource then
			TriggerClientEvent("sounds:Stop", targetSource)
		end
	end
	return true
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- NETWORK EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
-- Server event: sounds:Private
-- Supports both server-to-client dispatch and client request to self or target
RegisterNetEvent("sounds:Private")
AddEventHandler("sounds:Private", function(arg1, arg2, arg3)
	local src = source
	-- If called from client without explicit target (e.g. TriggerServerEvent("sounds:Private", "soundName", 0.5))
	if src and src > 0 and type(arg1) == "string" then
		local sound = arg1
		local volume = arg2
		SoundsController.playSound(src, sound, volume)
		return
	end

	-- If called with target (target, sound, volume)
	if tonumber(arg1) then
		local target = tonumber(arg1)
		local sound = arg2
		local volume = arg3

		-- If a client is trying to trigger on another client, enforce admin permission if vRP is present
		if src and src > 0 and target ~= src and target ~= -1 then
			if vRP and vRP.Passport and vRP.HasPermission then
				local passport = vRP.Passport(src)
				if not passport or not vRP.HasPermission(passport, "Admin") then
					return
				end
			end
		end

		SoundsController.playSound(target, sound, volume)
	end
end)

-- Server event: sounds:source
RegisterNetEvent("sounds:source")
AddEventHandler("sounds:source", function(target, sound, volume)
	local src = source
	if src and src > 0 and (target == -1 or target ~= src) then
		if vRP and vRP.Passport and vRP.HasPermission then
			local passport = vRP.Passport(src)
			if not passport or not vRP.HasPermission(passport, "Admin") then
				return
			end
		end
	end
	SoundsController.playSound(target or src, sound, volume)
end)

-- Server event: sounds:Proximity
RegisterNetEvent("sounds:Proximity")
AddEventHandler("sounds:Proximity", function(arg1, arg2, arg3, arg4)
	local src = source
	if src and src > 0 then
		-- Client requested proximity around themselves: (maxDistance, sound, volume)
		if type(arg1) == "number" and type(arg2) == "string" then
			SoundsController.playSoundProximity(src, arg1, arg2, arg3)
			return
		end
	end

	-- Server-to-server or privileged: (source, maxDistance, sound, volume)
	SoundsController.playSoundProximity(arg1, arg2, arg3, arg4)
end)

-- Server event: sounds:Coords
RegisterNetEvent("sounds:Coords")
AddEventHandler("sounds:Coords", function(coords, maxDistance, sound, volume)
	local src = source
	if src and src > 0 then
		if vRP and vRP.Passport and vRP.HasPermission then
			local passport = vRP.Passport(src)
			if not passport or not vRP.HasPermission(passport, "Admin") then
				return
			end
		end
	end
	SoundsController.playSoundCoords(coords, maxDistance, sound, volume)
end)

-- Server event: sounds:Broadcast
RegisterNetEvent("sounds:Broadcast")
AddEventHandler("sounds:Broadcast", function(sound, volume)
	local src = source
	if src and src > 0 then
		if vRP and vRP.Passport and vRP.HasPermission then
			local passport = vRP.Passport(src)
			if not passport or not vRP.HasPermission(passport, "Admin") then
				return
			end
		else
			return
		end
	end
	SoundsController.playSoundAll(sound, volume)
end)

-- Server event: sounds:Stop
RegisterNetEvent("sounds:Stop")
AddEventHandler("sounds:Stop", function(target)
	local src = source
	if src and src > 0 and (not target or target == src) then
		SoundsController.stopSound(src)
		return
	end
	SoundsController.stopSound(target)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
exports("playSound", function(target, sound, volume)
	return SoundsController.playSound(target, sound, volume)
end)

exports("playSoundToSource", function(target, sound, volume)
	return SoundsController.playSound(target, sound, volume)
end)

exports("playSoundProximity", function(source, maxDistance, sound, volume)
	return SoundsController.playSoundProximity(source, maxDistance, sound, volume)
end)

exports("playSoundCoords", function(coords, maxDistance, sound, volume)
	return SoundsController.playSoundCoords(coords, maxDistance, sound, volume)
end)

exports("playSoundAll", function(sound, volume)
	return SoundsController.playSoundAll(sound, volume)
end)

exports("stopSound", function(target)
	return SoundsController.stopSound(target)
end)

exports("getSoundList", function()
	local list = {}
	for k, _ in pairs(KnownSounds) do
		table.insert(list, k)
	end
	table.sort(list)
	return list
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- COMMANDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("playsound", function(source, args, rawCommand)
	if source == 0 then
		print("[sounds] Use: /playsound <targetId> <soundName> [volume]")
		if args[1] and args[2] then
			SoundsController.playSound(tonumber(args[1]), args[2], args[3])
		end
		return
	end

	if not args[1] then
		TriggerClientEvent("Notify", source, "amarelo", "Uso: /playsound <nome_do_som> [volume]", 5000)
		return
	end

	local sound = args[1]
	local volume = tonumber(args[2]) or 0.5
	SoundsController.playSound(source, sound, volume)
end, false)

RegisterCommand("playsounddist", function(source, args, rawCommand)
	if source == 0 then return end
	if #args < 2 then
		TriggerClientEvent("Notify", source, "amarelo", "Uso: /playsounddist <raio> <nome_do_som> [volume]", 5000)
		return
	end

	local radius = tonumber(args[1]) or 15.0
	local sound = args[2]
	local volume = tonumber(args[3]) or 0.5
	SoundsController.playSoundProximity(source, radius, sound, volume)
end, false)

RegisterCommand("playsoundall", function(source, args, rawCommand)
	if source ~= 0 then
		if vRP and vRP.Passport and vRP.HasPermission then
			local passport = vRP.Passport(source)
			if not passport or not vRP.HasPermission(passport, "Admin") then
				TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para este comando.", 5000)
				return
			end
		end
	end

	if not args[1] then
		if source ~= 0 then
			TriggerClientEvent("Notify", source, "amarelo", "Uso: /playsoundall <nome_do_som> [volume]", 5000)
		else
			print("[sounds] Uso: playsoundall <nome_do_som> [volume]")
		end
		return
	end

	local sound = args[1]
	local volume = tonumber(args[2]) or 0.5
	SoundsController.playSoundAll(sound, volume)
end, false)

RegisterCommand("soundlist", function(source, args, rawCommand)
	local soundList = exports["sounds"]:getSoundList()
	local text = "Sons disponíveis: " .. table.concat(soundList, ", ")

	if source == 0 then
		print("[sounds] " .. text)
	else
		TriggerClientEvent("Notify", source, "azul", text, 10000)
	end
end, false)

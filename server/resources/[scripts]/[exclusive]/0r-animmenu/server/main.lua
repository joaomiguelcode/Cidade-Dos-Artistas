-----------------------------------------------------------------------------------------------------------------------------------------
-- 0R-ANIMMENU SERVER-SIDE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("0resmon-animmenu:ptfxSync:server",function(asset,name,offset,rot,bone,scale,color)
	local src = source
	TriggerClientEvent("0resmon-animmenu:ptfxSync:client",-1,src,asset,name,offset,rot,bone,scale,color)
end)

RegisterNetEvent("0resmon-animmenu:ptfxSyncProp:server",function(netId)
	TriggerClientEvent("0resmon-animmenu:ptfxSyncProp:client",-1,netId)
end)

RegisterNetEvent("0resmon-animmenu:sendAnimRequest:server",function(data)
	local src = source
	local target = tonumber(data.target)
	if target and target > 0 and GetPlayerPing(target) > 0 then
		data.sender = src
		data.id = src
		TriggerClientEvent("0resmon-animmenu:receiveAnimRequest:client",target,data)
	end
end)

RegisterNetEvent("0resmon-animmenu:requstCanelledNotif:server",function(target)
	local targetId = tonumber(target)
	if targetId and targetId > 0 then
		TriggerClientEvent("0resmon-animmenu:requstCanelledNotif:client",targetId)
	end
end)

RegisterNetEvent("0resmon-animmenu:playAnimTogetherSender:server",function(data)
	local src = source
	local target = tonumber(data.target)
	if target and target > 0 then
		data.sender = src
		TriggerClientEvent("0resmon-animmenu:playAnimTogetherReceiver:client",target,data)
		TriggerClientEvent("0resmon-animmenu:playAnimTogetherSender:client",src,data)
	end
end)

RegisterNetEvent("0resmon-animmenu:animDictLoaded:server",function(target)
	local targetId = tonumber(target)
	if targetId and targetId > 0 then
		TriggerClientEvent("0resmon-animmenu:animDictLoaded:client",targetId)
	end
end)

RegisterNetEvent("0resmon-animmenu:cancelEmote:server",function(target)
	local targetId = tonumber(target)
	if targetId and targetId > 0 then
		TriggerClientEvent("0resmon-animmenu:cancelEmote:client",targetId)
	end
end)

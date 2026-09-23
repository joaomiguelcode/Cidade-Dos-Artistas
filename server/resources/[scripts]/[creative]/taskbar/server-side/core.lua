-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vCLIENT = Tunnel.getInterface("taskbar")

Creative = {}
Tunnel.bindInterface("taskbar",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
exports("taskOne",function(source)
	if source then
		return vCLIENT.taskOne(source)
	end
	return false
end)

exports("taskTwo",function(source)
	if source then
		return vCLIENT.taskTwo(source)
	end
	return false
end)

exports("taskThree",function(source)
	if source then
		return vCLIENT.taskThree(source)
	end
	return false
end)

exports("taskLockpick",function(source)
	if source then
		return vCLIENT.taskLockpick(source)
	end
	return false
end)

exports("taskMechanic",function(source)
	if source then
		return vCLIENT.taskMechanic(source)
	end
	return false
end)

exports("taskTyre",function(source)
	if source then
		return vCLIENT.taskTyre(source)
	end
	return false
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ONCLIENTRESOURCESTART
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("onClientResourceStart")
AddEventHandler("onClientResourceStart",function(Resource)
	if (GetCurrentResourceName() ~= Resource) then
		return
	end

	DoScreenFadeOut(0)
	DisplayRadar(false)
	ShutdownLoadingScreen()
	ShutdownLoadingScreenNui()

	while GetResourceState("nation_creator") ~= "started" do
		Wait(100)
	end

	TriggerServerEvent("Queue:Connect")
	TriggerEvent("nation_creator:setupChars")
end)
local pedModel = "S_M_Y_Doorman_01" -- Change this to your desired ped model
local pedCoords = vector3(963.79, 57.18, 111.55) -- Replace with your penthouse coordinates
local lobbyCoords = vector3(930.42, 35.73, 81.09) -- Replace with your lobby coordinates

-- Create the ped in the penthouse
Citizen.CreateThread(function()
    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do
        Wait(500)
    end

    local ped = CreatePed(0, pedModel, pedCoords.x, pedCoords.y, pedCoords.z, 60.0, false, true)
    SetEntityAsMissionEntity(ped, true, true)
    FreezeEntityPosition(ped, true) -- Optional: Freeze the ped in place

    exports.target:AddCircleZone("Lobby",vec3(963.79, 57.18, 111.55),2.0,{
		name = "Lobby",
		heading = 3374176
	},{
		Distance = 2.5,
		options = {
            {
                tunnel = "client",
                event = "teleport_to_lobby:go_to_lobby", -- Event to handle teleportation
                icon = "fas fa-door-open", -- Icon for the interaction
                label = "Descer para o Lobby", -- Text label for the option
            },
		}
	})

end)

-- Handle the teleportation event
RegisterNetEvent("teleport_to_lobby:go_to_lobby")
AddEventHandler("teleport_to_lobby:go_to_lobby", function()
    local playerPed = PlayerPedId() -- Get the player's ped
    SetEntityCoords(playerPed, lobbyCoords.x, lobbyCoords.y, lobbyCoords.z, false, false, false, true)
end)

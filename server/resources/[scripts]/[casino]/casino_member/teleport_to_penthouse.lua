-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
vSERVER = Tunnel.getInterface(GetCurrentResourceName())

local pedCoords = vector3(929.01, 34.93, 81.09) -- Coordenadas do NPC no lobby
local penthouseCoords = vector3(963.62, 59.29, 111.55) -- Coordenadas do Penthouse
local pedModel = "S_M_Y_Doorman_01"

-- Carregar modelo do Ped e criar NPC
CreateThread(function()
    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do
        Wait(1)
    end
    local npc = CreatePed(4, pedModel, pedCoords.x, pedCoords.y, pedCoords.z - 1.0, 325.0, false, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    FreezeEntityPosition(npc, true)

    exports.target:AddCircleZone("PentHouse", vec3(929.01, 34.93, 81.09), 2.0, {
        name = "PentHouse",
        heading = 3374176
    }, {
        Distance = 2.5,
        options = {
            {
                tunnel = "client",
                event = "casino:teleportToPenthouse",
                icon = "fas fa-door-open",
                label = "Ir para a Cobertura",
            },
        }
    })

end)

-- Evento de Teleporte para o Penthouse
RegisterNetEvent('casino:teleportToPenthouse', function()
    local hasVIP = vSERVER.checkVIPStatus()
    if hasVIP then
        SetEntityCoords(PlayerPedId(), penthouseCoords.x, penthouseCoords.y, penthouseCoords.z)
    else
        TriggerEvent("Notify", "aviso", "Você precisa de um passe VIP para acessar a Cobertura.", 5000)
    end
end)

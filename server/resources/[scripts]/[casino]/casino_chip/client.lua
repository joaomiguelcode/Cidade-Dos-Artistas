-- Ped setup
local pedModel = `U_F_M_CasinoCash_01`
local pedCoords = vector3(950.78, 33.56, 71.84)
local pedHeading = 50.0

Citizen.CreateThread(function()
    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do
        Wait(1)
    end

    local ped = CreatePed(4, pedModel, pedCoords.x, pedCoords.y, pedCoords.z - 1.0, pedHeading, false, true)
    SetEntityAsMissionEntity(ped, true, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)

    exports.target:AddCircleZone("BuyChips", vec3(950.78, 33.56, 71.84), 5.0, {
        name = "BuyChips",
        heading = 3374176
    }, {
        Distance = 10.0,
        options = {
            {
                tunnel = "client",
                event = "casino:client:buyCasinoChip",
                label = "Comprar Fichas do Cassino",
            },
            {
                tunnel = "client",
                event = "casino:client:sellCasinoChip",
                label = "Trocar Fichas do Cassino",
            },
        }
    })
end)

RegisterNetEvent("casino:client:buyCasinoChip")
AddEventHandler("casino:client:buyCasinoChip", function()
    local input = lib.inputDialog('Digite a quantidade de fichas que deseja comprar:', {
        {type = 'number', label = 'Quantidade:', description = 'Cada ficha custa R$100,00 para compra', min = 1}
    })
    if input and input[1] > 0 then
        TriggerServerEvent("casino:server:buyCasinoChip", input[1])
    else
        TriggerEvent("Notify", "aviso", "Quantidade inválida", 5000)
    end
end)

RegisterNetEvent("casino:client:sellCasinoChip")
AddEventHandler("casino:client:sellCasinoChip", function()
    local input = lib.inputDialog('Digite a quantidade de fichas que deseja vender:', {
        {type = 'number', label = 'Quantidade:', description = 'Cada ficha vale R$80,00 para venda', min = 1}
    })
    if input and input[1] > 0 then
        TriggerServerEvent("casino:server:sellCasinoChip", input[1])
    else
        TriggerEvent("Notify", "aviso", "Quantidade inválida", 5000)
    end
end)

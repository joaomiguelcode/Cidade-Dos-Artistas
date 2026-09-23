local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vSERVER = Tunnel.getInterface(GetCurrentResourceName())

RegisterCommand("extras", function(s,a,r)
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped) then
        if vSERVER.checkPermission() then
            local veh = GetVehiclePedIsIn(ped)
            local count = GetVehicleLiveryCount(veh)
            if count > 0 then
                SendNUIMessage({ action = "open", count = count })
                SetNuiFocus(true, true)
            else
                TriggerEvent("Notify", "amarelo", "Este veículo não possui variações de pintura (livery).", 5000)
            end
        end
    else
        TriggerEvent("Notify", "amarelo", "Você precisa estar dentro de um veículo.", 5000)
    end
end)

RegisterNUICallback("select", function(data,cb)
    if IsPedInAnyVehicle(PlayerPedId()) then
        SetVehicleLivery(GetVehiclePedIsIn(PlayerPedId()), data.livery)
    end
end)

RegisterNUICallback("close", function(data,cb)
    SetNuiFocus(false, false)
end)


local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vSERVER = Tunnel.getInterface(GetCurrentResourceName())

madCore = {}

madCore.requestModel = function(model)
    if HasModelLoaded(model) then
        return
    end
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(10)
    end
end

madCore.requestAnim = function(animDict)
    if HasAnimDictLoaded(animDict) then
        return
    end
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(10)
    end
end

madCore.loadPtfxAsset = function(ptfx)
    while not HasNamedPtfxAssetLoaded(ptfx) do
        RequestNamedPtfxAsset(ptfx)
        Citizen.Wait(50)
	end
end

madCore.policeAlert = function(coords)
    TriggerServerEvent('atmrobbery:server:policeAlert', coords)
end

madCore.getPhrase = function(str)
    return Strings[str] or ('locale not found: %s'):format(str)
end


function ShowHelpNotification(text)
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, -1)
end

function ShowNotification(msg)
    TriggerEvent("Notify","amarelo",msg,5000)
end

madCore.getClosestVehicle = function(radius)
    return vRP.ClosestVehicle(radius)
end


RegisterNetEvent("atmrobbery:client:showNotification", function(notify)
    ShowNotification(notify)
end)
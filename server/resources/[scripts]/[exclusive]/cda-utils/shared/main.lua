if IsDuplicityVersion() then 
    local Tunnel = module("vrp","lib/Tunnel")
    local Proxy = module("vrp","lib/Proxy")
    vRP = Proxy.getInterface("vRP")
    vRPC = Tunnel.getInterface('vRP')
    ClZS = Tunnel.getInterface(GetCurrentResourceName())
    vTASKBAR = Tunnel.getInterface('taskbar')
    
    ZS = {}
    Tunnel.bindInterface(GetCurrentResourceName(), ZS)
else
    local Tunnel = module("vrp","lib/Tunnel")
    local Proxy = module("vrp","lib/Proxy")
    vRP = Proxy.getInterface("vRP")
    ZS = Tunnel.getInterface(GetCurrentResourceName())
    ClZS = {}
    Tunnel.bindInterface(GetCurrentResourceName(), ClZS)
end

function TableCount(_table)
    local count = 0
    for _, v in pairs(_table) do 
        count = count + 1
    end
    return count
end

Config = {
    
}
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
fclient = Tunnel.getInterface("nation_skinshop")
func = {}
Tunnel.bindInterface("nation_skinshop", func)

-- VRP Compatibility Layer
vRP.getUserId = function(source)
    local user_id = vRP.Passport(source)
    if not user_id and GlobalState.Players then
        user_id = GlobalState.Players[source]
    end
    return user_id
end

vRP.hasPermission = function(user_id, perm)
    return vRP.HasGroup(user_id, perm) or vRP.HasPermission(user_id, perm)
end

vRP.tryFullPayment = function(user_id, value)
    return vRP.PaymentFull(user_id, value)
end



---------------------------------------------------------------------------
-----------------------VERIFICAÇÃO DE PERMISSÃO--------------------------
---------------------------------------------------------------------------


function func.checkPermission(permission)
    local source = source
    local user_id = vRP.getUserId(source)
    if type(permission) == "table" then
        for i, perm in pairs(permission) do
            if vRP.hasPermission(user_id, perm) then
                return true
            end
        end
        return false
    end
    return vRP.hasPermission(user_id, permission)
end



---------------------------------------------------------------------------
-----------------------VERIFICAÇÃO DE PAGAMENTO--------------------------
---------------------------------------------------------------------------


function func.tryPayClothes(value)
    local source = source
    local user_id = vRP.getUserId(source)
    if value >= 0 then
        return vRP.tryFullPayment(user_id, value) or value == 0
    end
    return false
end




--------- CREATIVE V3 ------------




 


















--------- NYO GUARDA ROUPAS ------------



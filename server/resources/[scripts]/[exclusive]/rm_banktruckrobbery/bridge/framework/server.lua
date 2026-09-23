-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP FRAMEWORK BRIDGE
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

Framework = {}

function Framework.hasItem(source, item, count)
    local Passport = vRP.Passport(source)
    if Passport then
        local amount = vRP.ItemAmount(Passport, item) or vRP.InventoryItemAmount(Passport, item)
        return (amount and amount >= (count or 1))
    end
    return false
end

function Framework.removeItem(source, item, count)
    local Passport = vRP.Passport(source)
    if Passport then
        return vRP.TakeItem(Passport, item, count or 1)
    end
    return false
end

function Framework.addItem(source, item, count)
    local Passport = vRP.Passport(source)
    if Passport then
        return vRP.GenerateItem(Passport, item, count or 1, true)
    end
    return false
end

function Framework.addMoney(source, amount, moneyType)
    local Passport = vRP.Passport(source)
    if Passport then
        if moneyType == "black_money" or moneyType == "blackmoney" then
            vRP.GenerateItem(Passport, "dollars", amount, true)
        else
            vRP.GiveBank(Passport, amount)
        end
        return true
    end
    return false
end

function Framework.removeMoney(source, amount, moneyType)
    local Passport = vRP.Passport(source)
    if Passport then
        return vRP.PaymentFull(Passport, amount)
    end
    return false
end

function Framework.getPoliceCount()
    local Service = vRP.NumPermission("Police")
    local count = 0
    for _ in pairs(Service) do count = count + 1 end
    return count
end

function Framework.getIdentifier(source)
    return vRP.Passport(source) or source
end

function Framework.getName(source)
    local Passport = vRP.Passport(source)
    if Passport then
        local identity = vRP.Identity(Passport)
        if identity then
            return (identity.name or "") .. " " .. (identity.name2 or "")
        end
    end
    return "Desconhecido"
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cnVRP = {}
Tunnel.bindInterface("vrp_dismantle",cnVRP)
vCLIENT = Tunnel.getInterface("vrp_dismantle")

local Dismantling = {}

-----------------------------------------------------------------------------------------------------------------------------------------
-- HASPERMISSION
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.hasPermission(groupName)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        if not groupName or groupName == "" then return true end
        if vRP.HasGroup(Passport, groupName) or vRP.HasGroup(Passport, "Admin") or vRP.HasGroup(Passport, "Developer") then
            return true
        end
    end
    return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKITEM
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.checkItem()
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        local tools = { "toolbox", "wrench", "grinder", "dismantle", "repairkit01", "lockpick" }
        for _, tool in ipairs(tools) do
            local amt = vRP.ItemAmount(Passport, tool) or vRP.InventoryItemAmount(Passport, tool)
            if amt and amt >= 1 then
                return true
            end
        end
        TriggerClientEvent("Notify", source, "amarelo", "Você precisa de uma ferramenta para desmanchar (Chave Inglesa, Caixa de Ferramentas ou Grinder).", 5000)
    end
    return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.checkVehicle()
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        local vehicle, vehNet, vehPlate, vehName = vRPC.VehList(source, 7.0)
        if vehicle and vehPlate then
            local vehPrice = VehiclePrice(vehName) or 50000
            return true, vehicle, vehName, vehPrice, Passport, vehNet, vehPlate
        end
    end
    return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- PAYMENTMETHOD
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.paymentMethod(vehicle, vehPrice, vehName, id, vehNet, vehPlate)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        -- Delete / despawn vehicle
        if vehNet and vehPlate then
            TriggerEvent("garages:deleteVehicle", vehNet, vehPlate)
        end

        local price = parseInt(vehPrice) or 50000
        local moneyReward = math.random(math.floor(price * 0.10), math.floor(price * 0.18))
        if moneyReward < 5000 then moneyReward = 5000 end

        -- Give dirty dollars
        vRP.GenerateItem(Passport, "dollars", moneyReward, true)

        -- Give scrap parts
        local scrapParts = {
            { item = "metalscrap", amount = math.random(5, 12) },
            { item = "copper", amount = math.random(3, 8) },
            { item = "aluminum", amount = math.random(3, 8) },
            { item = "rubber", amount = math.random(4, 10) },
            { item = "plastic", amount = math.random(4, 10) }
        }

        for _, p in ipairs(scrapParts) do
            if math.random(100) <= 80 then
                vRP.GenerateItem(Passport, p.item, p.amount, true)
            end
        end

        if math.random(100) <= 25 then
            vRP.GenerateItem(Passport, "dismantle", 1, true)
        end

        if math.random(100) <= 15 then
            vRP.GenerateItem(Passport, "plate", 1, true)
        end

        vRP.PutExperience(Passport, "Dismantle", 2)
        TriggerClientEvent("Notify", source, "verde", "Veículo desmanchado com sucesso! Você recebeu $"..parseFormat(moneyReward).." e peças de sucata.", 5000)
    end
end

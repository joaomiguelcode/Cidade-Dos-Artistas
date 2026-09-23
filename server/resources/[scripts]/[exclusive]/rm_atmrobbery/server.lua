local AtmsCooldown = {}
local GlobalCooldown = 0

-----------------------------------------------------------------------------------------------------------------------------------------
-- HASITEM
-----------------------------------------------------------------------------------------------------------------------------------------
function Srr.hasItem(data)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport and data and data.itemName then
        local amount = vRP.ItemAmount(Passport, data.itemName) or vRP.InventoryItemAmount(Passport, data.itemName)
        if amount and amount >= 1 then
            return true
        end
    end
    return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKATM
-----------------------------------------------------------------------------------------------------------------------------------------
function Srr.checkAtm(data)
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return false end

    -- Check Police
    local PoliceCount = vRP.NumPermission("Police")
    local count = 0
    for _ in pairs(PoliceCount) do count = count + 1 end
    if count < 1 then
        TriggerClientEvent("Notify", source, "amarelo", Strings['need_police'] or "Não há policiais suficientes.", 5000)
        return false
    end

    if Config.robbery.globalCooldown and GlobalCooldown > os.time() then
        TriggerClientEvent("Notify", source, "amarelo", Strings['atm_cd'] or "Aguarde para roubar outro caixa eletrônico.", 5000)
        return false
    end

    if data and data.netId then
        local netId = data.netId
        if AtmsCooldown[netId] and AtmsCooldown[netId] > os.time() then
            TriggerClientEvent("Notify", source, "amarelo", Strings['atm_cd'] or "Este caixa eletrônico já foi roubado recentemente.", 5000)
            return false
        end
    end

    return true
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- REMOVEITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("atmrobbery:server:removeItem")
AddEventHandler("atmrobbery:server:removeItem", function(itemName)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport and itemName then
        vRP.TakeItem(Passport, itemName, 1)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- COOLDOWNS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("atmrobbery:server:cooldown")
AddEventHandler("atmrobbery:server:cooldown", function(netId, typ)
    if netId then
        AtmsCooldown[netId] = os.time() + (Config.robbery.cooldown or 900)
    end
    if Config.robbery.globalCooldown then
        GlobalCooldown = os.time() + (Config.robbery.cooldown or 900)
    end
end)

RegisterServerEvent("atmrobbery:server:removecd")
AddEventHandler("atmrobbery:server:removecd", function(netId, typ)
    if netId and AtmsCooldown[netId] then
        AtmsCooldown[netId] = nil
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- POLICE ALERT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("atmrobbery:server:policeAlert")
AddEventHandler("atmrobbery:server:policeAlert", function(coords)
    local source = source
    local Service = vRP.NumPermission("Police")
    for _, Sources in pairs(Service) do
        async(function()
            TriggerClientEvent("NotifyPush", Sources, {
                code = 31,
                title = "Alarme de Caixa Eletrônico",
                x = coords.x,
                y = coords.y,
                z = coords.z,
                criminal = "Roubo a caixa eletrônico em andamento",
                time = "Recebido às "..os.date("%H:%M"),
                blipColor = 1
            })
        end)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- NET SYNC EVENTS (ROPE, VEHICLE, PTFX)
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("atmrobbery:server:useRope")
AddEventHandler("atmrobbery:server:useRope", function(atmNetId, hookNetId)
    TriggerClientEvent("atmrobbery:client:useRope", -1, atmNetId, hookNetId)
end)

RegisterServerEvent("atmrobbery:server:attachVehicle")
AddEventHandler("atmrobbery:server:attachVehicle", function(vehNetId, atmNetId)
    TriggerClientEvent("atmrobbery:client:attachVehicle", -1, vehNetId, atmNetId)
end)

RegisterServerEvent("atmrobbery:server:deleteRope")
AddEventHandler("atmrobbery:server:deleteRope", function(atmNetId)
    TriggerClientEvent("atmrobbery:client:deleteRope", -1, atmNetId)
end)

RegisterServerEvent("atmrobbery:server:ptfx")
AddEventHandler("atmrobbery:server:ptfx", function(netId, typ)
    TriggerClientEvent("atmrobbery:client:ptfx", -1, netId, typ)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GIVEMONEY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("atmrobbery:server:giveMoney")
AddEventHandler("atmrobbery:server:giveMoney", function(typ, bonus)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        local calcAmount = 5000
        if Config.robbery.moneyAmounts and Config.robbery.moneyAmounts[typ] then
            calcAmount = Config.robbery.moneyAmounts[typ]()
        end

        if bonus then
            calcAmount = calcAmount + math.random(1500, 3000)
        end

        vRP.GenerateItem(Passport, "dollars", calcAmount, true)
        TriggerClientEvent("Notify", source, "verde", "Você conseguiu recolher $"..parseFormat(calcAmount).." do caixa eletrônico.", 5000)

        local identity = vRP.Identity(Passport)
        local pName = identity and ((identity.name or "") .. " " .. (identity.name2 or "")) or tostring(Passport)
        SendDiscord("Roubo a Caixa Eletrônico Finalizado", "**Jogador:** "..Passport.." ("..pName..")\n**Método:** "..(typ or "Padrão").."\n**Recompensa:** $"..parseFormat(calcAmount))
    end
end)

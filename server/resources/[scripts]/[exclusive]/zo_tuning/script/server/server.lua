-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPC = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface(GetCurrentResourceName(), src)
vCLIENT = Tunnel.getInterface(GetCurrentResourceName())

-----------------------------------------------------------------------------------------------------------------------------------------
-- DEFAULT INFOS
-----------------------------------------------------------------------------------------------------------------------------------------
function GetDefaultTuningInfos()
    return {
        suspensao = { instalado = true, value = 0.0, min = 0.20, max = -0.20 },
        camber = { instalado = true, frontal = 0, traseiro = 0, ambos = 0 },
        offset = { instalado = true, frontal = 0, traseiro = 0, ambos = 0, defaultCar = nil },
        antiLag = { instalado = true, active = 0, effect = 1 },
        westgate = { instalado = true, active = 0, sound = 1 },
        purgador = { instalado = true, active = false, value = 1 },
        neon = { instalado = true, power = false, color = { 255, 255, 255 } },
        xenon = { instalado = true, power = false, color = 0 },
        remap = {}
    }
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- GETINFOS
-----------------------------------------------------------------------------------------------------------------------------------------
function src.getInfos()
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        local vehicle, vehNet, vehPlate, vehName = vRPC.VehList(source, 7.0)
        if vehicle and vehPlate then
            local ownerPassport = zof.getUserByRegistration(vehPlate) or Passport
            return {
                plate = vehPlate,
                user_id = ownerPassport,
                model = vehName
            }
        end
    end
    return nil
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKVEHICLEINFOS
-----------------------------------------------------------------------------------------------------------------------------------------
function src.checkVehicleInfos()
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        local vehicle, vehNet, vehPlate, vehName = vRPC.VehList(source, 7.0)
        if vehicle and vehPlate then
            local data = zof.getSData("zo_tuning:"..vehPlate)
            if data and data ~= "" and data ~= "{}" then
                local decoded = json.decode(data)
                if decoded then
                    return decoded
                end
            end
            return GetDefaultTuningInfos()
        end
    end
    return nil
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SETCUSTOM
-----------------------------------------------------------------------------------------------------------------------------------------
function src.setCustom(infosVeh, infos, vehNet)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport and infos and infos.plate then
        zof.setSData("zo_tuning:"..infos.plate, json.encode(infosVeh))
        if vehNet then
            TriggerClientEvent("zo_tuning:sync", -1, vehNet, infosVeh)
        end
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKPERMS
-----------------------------------------------------------------------------------------------------------------------------------------
function src.checkPerms(permissions)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        if not permissions or #permissions == 0 then return true end
        for _, perm in ipairs(permissions) do
            if vRP.HasGroup(Passport, perm) or vRP.HasPermission(Passport, perm) then
                return true
            end
        end
    end
    return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKITENS
-----------------------------------------------------------------------------------------------------------------------------------------
function src.checkItens(items)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        if not items or #items == 0 then return true, {} end
        local missing = {}
        for _, item in ipairs(items) do
            local amt = vRP.ItemAmount(Passport, item) or vRP.InventoryItemAmount(Passport, item)
            if not amt or amt < 1 then
                table.insert(missing, itemName(item) or item)
            end
        end
        if #missing > 0 then
            return false, missing
        end
        return true, {}
    end
    return false, {}
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- GIVEITENS
-----------------------------------------------------------------------------------------------------------------------------------------
function src.giveItens(items)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport and items then
        for _, itemData in ipairs(items) do
            if itemData.item then
                vRP.GenerateItem(Passport, itemData.item, itemData.qtd or 1, true)
            end
        end
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- REMOVEITENS
-----------------------------------------------------------------------------------------------------------------------------------------
function src.removeItens(items)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport and items then
        for _, item in ipairs(items) do
            if not vRP.TakeItem(Passport, item, 1) then
                return false
            end
        end
        return true
    end
    return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- ANIMATION
-----------------------------------------------------------------------------------------------------------------------------------------
function src.anim(animData)
    local source = source
    if animData and animData.name and animData.extra then
        vRPC.playAnim(source, false, { animData.name, animData.extra }, true)
        SetTimeout(animData.time or 5000, function()
            vRPC.stopAnim(source, false)
        end)
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- COMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand(menuTuning.comando or "remap", function(source, args)
    local Passport = vRP.Passport(source)
    if Passport then
        if src.checkPerms(menuTuning.permissoesAcessarMenu) then
            local possuiItens, itens = src.checkItens(menuTuning.itensObrigatorioAcessar)
            if possuiItens then
                TriggerClientEvent("zo_tuning:openMenu", source)
            else
                TriggerClientEvent("Notify", source, "vermelho", "Itens obrigatórios faltando.", 5000)
            end
        else
            TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para acessar o painel de tuning.", 5000)
        end
    end
end)

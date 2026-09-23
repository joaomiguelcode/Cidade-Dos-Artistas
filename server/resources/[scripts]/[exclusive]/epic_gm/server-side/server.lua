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
if not Epic then
    Epic = {}
    Tunnel.bindInterface(GetCurrentResourceName(),Epic)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- COMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand(Config.Command or "painel", function(source, args)
    local Passport = vRP.Passport(source)
    if Passport then
        local groupName, hierarchyIdx, role = GetPlayerGroup(Passport)
        if groupName and role then
            TriggerClientEvent("epic_gm:openMenu", source, groupName, role)
        else
            TriggerClientEvent("Notify", source, "amarelo", "Você não pertence a nenhum grupo ou facção.", 5000)
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUESTINFOS (MEMBERS & COMMENTS)
-----------------------------------------------------------------------------------------------------------------------------------------
function Epic.requestInfos()
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return {}, {}, "" end

    local groupName, hierarchyIdx, role = GetPlayerGroup(Passport)
    if not groupName then return {}, {}, "" end

    local groupConfig = Config.Groups[groupName]
    local members = {}

    for _, hRole in ipairs(groupConfig.hierarchy) do
        local roleUsers = vRP.NumPermission(hRole.nome)
        for pport, psrc in pairs(roleUsers) do
            local identity = vRP.Identity(pport)
            local charName = identity and ((identity.name or "") .. " " .. (identity.name2 or "")) or "Desconhecido"
            table.insert(members, {
                user_id = pport,
                name = charName,
                group = hRole.nome,
                cargo = hRole.nome,
                login = identity and identity.created or "Recente",
                online = (psrc ~= nil and psrc > 0)
            })
        end
    end

    local commentsData = vRP.GetSrvData("epic_gm:comments:"..groupName, true) or {}
    local commentsList = commentsData.list or {}
    local fixedComment = commentsData.fixed or ""

    return members, commentsList, fixedComment
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- REMMEMBERS
-----------------------------------------------------------------------------------------------------------------------------------------
function Epic.remMembers(group, data)
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return false end

    local groupName, hierarchyIdx, role = GetPlayerGroup(Passport)
    if not groupName or groupName ~= group or not role.manager then
        TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para gerenciar membros.", 5000)
        return false
    end

    local targetPassport = parseInt(type(data) == "table" and (data.id or data.user_id) or data)
    if targetPassport <= 0 then return false end

    local groupConfig = Config.Groups[group]
    for _, hRole in ipairs(groupConfig.hierarchy) do
        if vRP.HasGroup(targetPassport, hRole.nome) then
            vRP.SetPermission(targetPassport, hRole.nome, nil)
        end
    end

    local identity = vRP.Identity(targetPassport)
    local tName = identity and ((identity.name or "") .. " " .. (identity.name2 or "")) or tostring(targetPassport)
    SendWebhook(groupConfig.webhook and groupConfig.webhook["RemMember"], "Membro Removido", "**Responsável:** "..Passport.."\n**Removido:** "..targetPassport.." ("..tName..")\n**Grupo:** "..group)
    TriggerClientEvent("Notify", source, "verde", "Membro removido com sucesso.", 5000)
    return true
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SETGROUP
-----------------------------------------------------------------------------------------------------------------------------------------
function Epic.setGroup(targetId, roleName, group)
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return false end

    local groupName, hierarchyIdx, role = GetPlayerGroup(Passport)
    if not groupName or groupName ~= group or not role.manager then
        TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para alterar cargos.", 5000)
        return false
    end

    local targetPassport = parseInt(targetId)
    local groupConfig = Config.Groups[group]
    if not groupConfig then return false end

    for _, hRole in ipairs(groupConfig.hierarchy) do
        if vRP.HasGroup(targetPassport, hRole.nome) then
            vRP.SetPermission(targetPassport, hRole.nome, nil)
        end
    end

    vRP.SetPermission(targetPassport, roleName, true)

    local identity = vRP.Identity(targetPassport)
    local tName = identity and ((identity.name or "") .. " " .. (identity.name2 or "")) or tostring(targetPassport)
    SendWebhook(groupConfig.webhook and groupConfig.webhook["Permission"], "Cargo Atualizado", "**Responsável:** "..Passport.."\n**Membro:** "..targetPassport.." ("..tName..")\n**Novo Cargo:** "..roleName.."\n**Grupo:** "..group)
    TriggerClientEvent("Notify", source, "verde", "Cargo atualizado com sucesso.", 5000)
    return true
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDMEMBERS
-----------------------------------------------------------------------------------------------------------------------------------------
function Epic.addMembers(group, data)
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return end

    local groupName, hierarchyIdx, role = GetPlayerGroup(Passport)
    if not groupName or groupName ~= group or not role.addMembers then
        TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para adicionar membros.", 5000)
        return
    end

    local targetPassport = parseInt(type(data) == "table" and (data.id or data.user_id) or data)
    local identity = vRP.Identity(targetPassport)
    if not identity then
        TriggerClientEvent("Notify", source, "vermelho", "Passaporte inválido ou inexistente.", 5000)
        return
    end

    local groupConfig = Config.Groups[group]
    local lowestRole = groupConfig.hierarchy[#groupConfig.hierarchy].nome

    vRP.SetPermission(targetPassport, lowestRole, true)

    local tName = (identity.name or "") .. " " .. (identity.name2 or "")
    SendWebhook(groupConfig.webhook and groupConfig.webhook["AddMember"], "Membro Contratado", "**Responsável:** "..Passport.."\n**Contratado:** "..targetPassport.." ("..tName..")\n**Cargo Inicial:** "..lowestRole.."\n**Grupo:** "..group)
    TriggerClientEvent("Notify", source, "verde", "Membro contratado com sucesso.", 5000)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- INFOSPLAYER
-----------------------------------------------------------------------------------------------------------------------------------------
function Epic.infosPlayer(data, group)
    local targetPassport = parseInt(type(data) == "table" and (data.id or data.user_id) or data)
    local identity = vRP.Identity(targetPassport)
    if identity then
        local tSrc = vRP.Source(targetPassport)
        local groupConfig = Config.Groups[group]
        local currentRole = "Membro"
        if groupConfig then
            for _, hRole in ipairs(groupConfig.hierarchy) do
                if vRP.HasGroup(targetPassport, hRole.nome) then
                    currentRole = hRole.nome
                    break
                end
            end
        end

        return {
            user_id = targetPassport,
            name = (identity.name or "") .. " " .. (identity.name2 or ""),
            group = currentRole,
            login = identity.created or "Recente",
            online = (tSrc ~= nil and tSrc > 0)
        }
    end
    return nil
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- BANK INFOS & ACTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
function Epic.infosBank(group)
    local bankData = vRP.GetSrvData("epic_gm:bank:"..group, true) or {}
    return {
        bank = bankData.balance or 0,
        safeguard = bankData.safeguard or 0,
        limit = 50000000,
        extract = bankData.extract or {},
        withdraws = bankData.withdraws or {},
        deposits = bankData.deposits or {}
    }
end

function Epic.bankActions(tipo, valor, group)
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return false end

    local amount = parseInt(valor)
    if amount <= 0 then return false end

    local groupName, hierarchyIdx, role = GetPlayerGroup(Passport)
    if not groupName or groupName ~= group then return false end

    local bankData = vRP.GetSrvData("epic_gm:bank:"..group, true) or {}
    bankData.balance = bankData.balance or 0
    bankData.safeguard = bankData.safeguard or 0
    bankData.extract = bankData.extract or {}
    bankData.withdraws = bankData.withdraws or {}
    bankData.deposits = bankData.deposits or {}

    local identity = vRP.Identity(Passport)
    local pName = identity and ((identity.name or "") .. " " .. (identity.name2 or "")) or tostring(Passport)

    if tipo == "sacar" or tipo == "withdraw" then
        if not role.bank then
            TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para sacar do cofre.", 5000)
            return false
        end

        if bankData.balance < amount then
            TriggerClientEvent("Notify", source, "vermelho", "Saldo insuficiente no banco do grupo.", 5000)
            return false
        end

        bankData.balance = bankData.balance - amount
        vRP.GiveBank(Passport, amount)

        local logEntry = {
            nome = pName,
            user_id = Passport,
            valor = amount,
            tipo = "Saque",
            data = os.date("%d/%m/%Y %H:%M")
        }
        table.insert(bankData.extract, 1, logEntry)
        table.insert(bankData.withdraws, 1, logEntry)
        vRP.SetSrvData("epic_gm:bank:"..group, bankData, true)

        SendWebhook(Config.Groups[group] and Config.Groups[group].webhook and Config.Groups[group].webhook["Bank"], "Saque Bancário", "**Jogador:** "..Passport.." ("..pName..")\n**Valor:** $"..parseFormat(amount).."\n**Saldo Restante:** $"..parseFormat(bankData.balance).."\n**Grupo:** "..group)
        TriggerClientEvent("Notify", source, "verde", "Saque de $"..parseFormat(amount).." efetuado.", 5000)
        return true
    elseif tipo == "depositar" or tipo == "deposit" then
        if not vRP.PaymentFull(Passport, amount) then
            TriggerClientEvent("Notify", source, "vermelho", "Você não possui dinheiro suficiente.", 5000)
            return false
        end

        bankData.balance = bankData.balance + amount

        local logEntry = {
            nome = pName,
            user_id = Passport,
            valor = amount,
            tipo = "Depósito",
            data = os.date("%d/%m/%Y %H:%M")
        }
        table.insert(bankData.extract, 1, logEntry)
        table.insert(bankData.deposits, 1, logEntry)
        vRP.SetSrvData("epic_gm:bank:"..group, bankData, true)

        SendWebhook(Config.Groups[group] and Config.Groups[group].webhook and Config.Groups[group].webhook["Bank"], "Depósito Bancário", "**Jogador:** "..Passport.." ("..pName..")\n**Valor:** $"..parseFormat(amount).."\n**Novo Saldo:** $"..parseFormat(bankData.balance).."\n**Grupo:** "..group)
        TriggerClientEvent("Notify", source, "verde", "Depósito de $"..parseFormat(amount).." realizado.", 5000)
        return true
    end

    return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- PARTNERS
-----------------------------------------------------------------------------------------------------------------------------------------
function Epic.requestPartners(group)
    local partnersData = vRP.GetSrvData("epic_gm:partners:"..group, true) or {}
    return partnersData.list or {}
end

function Epic.addPartners(group, name, desc)
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return false end

    local partnersData = vRP.GetSrvData("epic_gm:partners:"..group, true) or {}
    partnersData.list = partnersData.list or {}

    table.insert(partnersData.list, {
        name = name,
        desc = desc,
        author = Passport,
        date = os.date("%d/%m/%Y")
    })

    vRP.SetSrvData("epic_gm:partners:"..group, partnersData, true)
    TriggerClientEvent("Notify", source, "verde", "Parceria adicionada com sucesso.", 5000)
    return true
end

function Epic.remPartners(group, data)
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return end

    local partnersData = vRP.GetSrvData("epic_gm:partners:"..group, true) or {}
    partnersData.list = partnersData.list or {}

    local targetName = type(data) == "table" and (data.name or data.id) or data
    for i, p in ipairs(partnersData.list) do
        if p.name == targetName or i == parseInt(targetName) then
            table.remove(partnersData.list, i)
            break
        end
    end

    vRP.SetSrvData("epic_gm:partners:"..group, partnersData, true)
    TriggerClientEvent("Notify", source, "verde", "Parceria removida.", 5000)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SALARIES
-----------------------------------------------------------------------------------------------------------------------------------------
function Epic.requestSalarys(group)
    local salaryData = vRP.GetSrvData("epic_gm:salaries:"..group, true) or {}
    return salaryData.list or {}
end

function Epic.addSalary(group, cargo, valor)
    local salaryData = vRP.GetSrvData("epic_gm:salaries:"..group, true) or {}
    salaryData.list = salaryData.list or {}

    table.insert(salaryData.list, {
        cargo = cargo,
        valor = parseInt(valor)
    })

    vRP.SetSrvData("epic_gm:salaries:"..group, salaryData, true)
end

function Epic.editSalary(group, cargo, valor)
    local salaryData = vRP.GetSrvData("epic_gm:salaries:"..group, true) or {}
    salaryData.list = salaryData.list or {}

    for _, s in ipairs(salaryData.list) do
        if s.cargo == cargo then
            s.valor = parseInt(valor)
            break
        end
    end

    vRP.SetSrvData("epic_gm:salaries:"..group, salaryData, true)
end

function Epic.deleteSalary(group, cargo)
    local salaryData = vRP.GetSrvData("epic_gm:salaries:"..group, true) or {}
    salaryData.list = salaryData.list or {}

    for i, s in ipairs(salaryData.list) do
        if s.cargo == cargo then
            table.remove(salaryData.list, i)
            break
        end
    end

    vRP.SetSrvData("epic_gm:salaries:"..group, salaryData, true)
end

function Epic.paySalary()
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return end

    local groupName, hierarchyIdx, role = GetPlayerGroup(Passport)
    if not groupName then return end

    local salaryData = vRP.GetSrvData("epic_gm:salaries:"..groupName, true) or {}
    local salaries = salaryData.list or {}
    if #salaries == 0 then return end

    local bankData = vRP.GetSrvData("epic_gm:bank:"..groupName, true) or {}
    bankData.balance = bankData.balance or 0

    local groupConfig = Config.Groups[groupName]
    for _, sEntry in ipairs(salaries) do
        local roleUsers = vRP.NumPermission(sEntry.cargo)
        for pport, psrc in pairs(roleUsers) do
            if bankData.balance >= sEntry.valor and sEntry.valor > 0 then
                bankData.balance = bankData.balance - sEntry.valor
                vRP.GiveBank(pport, sEntry.valor)
                if psrc then
                    TriggerClientEvent("Notify", psrc, "verde", "Você recebeu seu salário de $"..parseFormat(sEntry.valor).." da facção.", 5000)
                end
            end
        end
    end

    vRP.SetSrvData("epic_gm:bank:"..groupName, bankData, true)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- COMMENTS
-----------------------------------------------------------------------------------------------------------------------------------------
function Epic.fixComment(group, id)
    local commentsData = vRP.GetSrvData("epic_gm:comments:"..group, true) or {}
    commentsData.fixed = tostring(id)
    vRP.SetSrvData("epic_gm:comments:"..group, commentsData, true)
end

function Epic.addComment(group, data)
    local source = source
    local Passport = vRP.Passport(source)
    local commentsData = vRP.GetSrvData("epic_gm:comments:"..group, true) or {}
    commentsData.list = commentsData.list or {}

    local text = type(data) == "table" and (data.content or data.desc or data.text) or tostring(data)
    table.insert(commentsData.list, 1, {
        author = Passport,
        text = text,
        date = os.date("%d/%m/%Y %H:%M")
    })

    if #commentsData.list > 20 then
        table.remove(commentsData.list, #commentsData.list)
    end

    vRP.SetSrvData("epic_gm:comments:"..group, commentsData, true)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- GOALS (METAS)
-----------------------------------------------------------------------------------------------------------------------------------------
function Epic.infosMeta()
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return 0, {} end

    local groupName, hierarchyIdx, role = GetPlayerGroup(Passport)
    if not groupName then return 0, {} end

    local goalsData = vRP.GetSrvData("epic_gm:goals:"..groupName, true) or {}
    return goalsData.points or 0, goalsData.list or {}
end

function Epic.addGoals(group, data)
    local goalsData = vRP.GetSrvData("epic_gm:goals:"..group, true) or {}
    goalsData.list = goalsData.list or {}

    table.insert(goalsData.list, {
        item = data.item,
        amount = parseInt(data.amount or data.valor or 100),
        reward = parseInt(data.reward or 0)
    })

    vRP.SetSrvData("epic_gm:goals:"..group, goalsData, true)
end

function Epic.deleteGoals(group, data)
    local goalsData = vRP.GetSrvData("epic_gm:goals:"..group, true) or {}
    goalsData.list = goalsData.list or {}

    local idx = parseInt(type(data) == "table" and (data.id or data.index) or data)
    if idx > 0 and goalsData.list[idx] then
        table.remove(goalsData.list, idx)
    end

    vRP.SetSrvData("epic_gm:goals:"..group, goalsData, true)
end

function Epic.returnItens(group)
    local groupConfig = Config.Groups[group]
    local list = {}
    if groupConfig and groupConfig.itens then
        for itemNameKey, _ in pairs(groupConfig.itens) do
            table.insert(list, {
                item = itemNameKey,
                name = itemName(itemNameKey),
                index = itemIndex(itemNameKey)
            })
        end
    end
    return list
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST (BAU DE FACCAO)
-----------------------------------------------------------------------------------------------------------------------------------------
function Epic.takeItens(group)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        local groupName, hierarchyIdx, role = GetPlayerGroup(Passport)
        if groupName == group and (role.chest or role.manager) then
            TriggerClientEvent("inventory:openChest", source, "Chest:"..group, 500, false)
        else
            TriggerClientEvent("Notify", source, "vermelho", "Você não tem permissão para retirar itens do baú.", 5000)
        end
    end
end

function Epic.putItens(group)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        local groupName, hierarchyIdx, role = GetPlayerGroup(Passport)
        if groupName == group then
            TriggerClientEvent("inventory:openChest", source, "Chest:"..group, 500, false)
        else
            TriggerClientEvent("Notify", source, "vermelho", "Você não pertence a este grupo.", 5000)
        end
    end
end

function Epic.seeItens(group)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        local groupName, hierarchyIdx, role = GetPlayerGroup(Passport)
        if groupName == group then
            TriggerClientEvent("inventory:openChest", source, "Chest:"..group, 500, true)
        end
    end
end

-- =========================================================================
-- NativeUI: Server-Side Controller & Menu Bridge
-- =========================================================================

local MenuHandlers = {}
local Version = "1.9.0-server"

--- Normaliza o alvo de envio (se nil ou -1, broadcast para todos)
local function resolveTarget(target)
    if target == nil or target == -1 or target == "-1" then
        return -1
    end
    return tonumber(target) or -1
end

--- Abre um menu NativeUI remotamente em um cliente (ou todos)
--- @param target number|nil ID do jogador ou nil/-1 para todos
--- @param menuData table Estrutura contendo title, subtitle, menuId, items, etc.
function OpenMenu(target, menuData)
    if not menuData or type(menuData) ~= "table" then
        print("^1[NativeUI:Server] Erro: menuData inválido ao chamar OpenMenu.^0")
        return false
    end

    local targetId = resolveTarget(target)
    TriggerClientEvent("NativeUI:Client:OpenMenu", targetId, menuData)
    return true
end

--- Fecha o menu NativeUI ativo remotamente
--- @param target number|nil ID do jogador ou nil/-1 para todos
--- @param menuId string|nil Identificador do menu (opcional)
function CloseMenu(target, menuId)
    local targetId = resolveTarget(target)
    TriggerClientEvent("NativeUI:Client:CloseMenu", targetId, menuId)
    return true
end

--- Registra um callback para responder a cliques e seleções em um determinado menu
--- @param menuId string Identificador único do menu
--- @param callback function Assinatura: function(source, itemId, itemIndex, itemData, extraData)
function RegisterMenuHandler(menuId, callback)
    if not menuId or type(callback) ~= "function" then
        print("^1[NativeUI:Server] Erro: menuId ou callback inválido em RegisterMenuHandler.^0")
        return false
    end

    MenuHandlers[menuId] = callback
    return true
end

--- Envia uma notificação nativa para a tela do jogador
--- @param target number|nil ID do jogador ou nil/-1 para todos
--- @param message string Mensagem a ser exibida
function ShowNotification(target, message)
    local targetId = resolveTarget(target)
    TriggerClientEvent("NativeUI:Client:ShowNotification", targetId, message)
end

--- Retorna a versão da camada server do NativeUI
function GetVersion()
    return Version
end

-- =========================================================================
-- REGISTRO DE EXPORTS DO SERVIDOR
-- =========================================================================
exports("OpenMenu", OpenMenu)
exports("CloseMenu", CloseMenu)
exports("RegisterMenuHandler", RegisterMenuHandler)
exports("ShowNotification", ShowNotification)
exports("GetVersion", GetVersion)

-- =========================================================================
-- EVENTOS DE REDE (RECEBIMENTO DAS AÇÕES DO CLIENT)
-- =========================================================================

-- Quando um item do menu é clicado
RegisterNetEvent("NativeUI:Server:OnItemSelected", function(menuId, itemId, itemIndex, extraData)
    local src = source
    if MenuHandlers[menuId] then
        local success, err = pcall(MenuHandlers[menuId], src, itemId, itemIndex, extraData, "select")
        if not success then
            print(("^1[NativeUI:Server] Erro no handler do menu '%s': %s^0"):format(tostring(menuId), tostring(err)))
        end
    end
    TriggerEvent("NativeUI:OnItemSelected", src, menuId, itemId, itemIndex, extraData)
end)

-- Quando um checkbox muda de estado
RegisterNetEvent("NativeUI:Server:OnCheckboxChange", function(menuId, itemId, isChecked)
    local src = source
    if MenuHandlers[menuId] then
        local success, err = pcall(MenuHandlers[menuId], src, itemId, isChecked, nil, "checkbox")
        if not success then
            print(("^1[NativeUI:Server] Erro no handler do checkbox '%s': %s^0"):format(tostring(menuId), tostring(err)))
        end
    end
    TriggerEvent("NativeUI:OnCheckboxChange", src, menuId, itemId, isChecked)
end)

-- Quando um item de lista é alterado
RegisterNetEvent("NativeUI:Server:OnListChange", function(menuId, itemId, newIndex, newItem)
    local src = source
    if MenuHandlers[menuId] then
        local success, err = pcall(MenuHandlers[menuId], src, itemId, newIndex, newItem, "list")
        if not success then
            print(("^1[NativeUI:Server] Erro no handler da lista '%s': %s^0"):format(tostring(menuId), tostring(err)))
        end
    end
    TriggerEvent("NativeUI:OnListChange", src, menuId, itemId, newIndex, newItem)
end)

-- Quando um slider muda de valor
RegisterNetEvent("NativeUI:Server:OnSliderChange", function(menuId, itemId, newIndex)
    local src = source
    if MenuHandlers[menuId] then
        local success, err = pcall(MenuHandlers[menuId], src, itemId, newIndex, nil, "slider")
        if not success then
            print(("^1[NativeUI:Server] Erro no handler do slider '%s': %s^0"):format(tostring(menuId), tostring(err)))
        end
    end
    TriggerEvent("NativeUI:OnSliderChange", src, menuId, itemId, newIndex)
end)

-- Quando o menu é fechado pelo jogador
RegisterNetEvent("NativeUI:Server:OnMenuClosed", function(menuId)
    local src = source
    if MenuHandlers[menuId] then
        pcall(MenuHandlers[menuId], src, nil, nil, nil, "close")
    end
    TriggerEvent("NativeUI:OnMenuClosed", src, menuId)
end)

-- Eventos de disparo direto pelo server
RegisterNetEvent("NativeUI:Server:OpenMenu", function(target, menuData)
    OpenMenu(target, menuData)
end)

RegisterNetEvent("NativeUI:Server:CloseMenu", function(target, menuId)
    CloseMenu(target, menuId)
end)

print(("^2[NativeUI]^0 Camada Server carregada com sucesso (Versão: %s)."):format(Version))

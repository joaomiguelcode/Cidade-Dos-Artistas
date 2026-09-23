local altimeterEnabled = false
local isAirborne = false
local lastAltitude = 0
local verticalSpeed = 0
local isManual = false

-- Configurações
local Config = {
    maxAltitude = 8000, -- Altitude máxima em pés
    updateInterval = 100, -- Intervalo de atualização em ms
    metersToFeet = 3.28084,
    showOnlyAirborne = false -- Permite visualizar quando ativado manualmente
}

-- Função para converter metros para pés
local function metersToFeet(meters)
    return math.floor(meters * Config.metersToFeet)
end

-- Função para obter direção da bússola
local function getCompassDirection(heading)
    local directions = {
        {0, 22.5, "N"}, {22.5, 67.5, "NE"}, {67.5, 112.5, "E"}, {112.5, 157.5, "SE"},
        {157.5, 202.5, "S"}, {202.5, 247.5, "SW"}, {247.5, 292.5, "W"}, {292.5, 337.5, "NW"},
        {337.5, 360, "N"}
    }
    
    for _, dir in ipairs(directions) do
        if heading >= dir[1] and heading < dir[2] then
            return dir[3]
        end
    end
    return "N"
end

-- Função para verificar se o jogador está em queda livre, paraquedas ou aeronave
local function checkAirborneStatus()
    local ped = PlayerPedId()
    if not ped then return end
    
    -- Verificar se está em aeronave (helicóptero ou avião)
    local vehicle = GetVehiclePedIsIn(ped, false)
    if vehicle ~= 0 then
        local vehicleClass = GetVehicleClass(vehicle)
        if vehicleClass == 15 or vehicleClass == 16 then -- Helicopters or Planes
            return true
        end
    end
    
    -- Verificar se está de paraquedas
    local parachuteState = GetPedParachuteState(ped)
    if parachuteState >= 0 and parachuteState <= 2 then
        return true
    end
    
    -- Verificar se está em queda livre
    if IsEntityInAir(ped) and not IsPedInAnyVehicle(ped, false) then
        local coords = GetEntityCoords(ped)
        local velocity = GetEntityVelocity(ped)
        
        -- Verificar altura mínima e velocidade de queda
        if coords.z > 30.0 and velocity.z < -1.5 then
            return true
        end
        
        -- Verificar se está caindo (função nativa)
        if IsPedFalling(ped) and coords.z > 20.0 then
            return true
        end
    end
    
    return false
end

-- Função principal de atualização
local function updateAltimeter()
    if not altimeterEnabled then return end
    
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    local currentAltitude = coords.z
    
    -- Calcular velocidade vertical
    verticalSpeed = (currentAltitude - lastAltitude) * (1000 / Config.updateInterval)
    lastAltitude = currentAltitude
    
    -- Converter altitude para pés e limitar
    local altitudeFeet = metersToFeet(currentAltitude)
    if altitudeFeet > Config.maxAltitude then
        altitudeFeet = Config.maxAltitude
    end
    
    -- Obter horário do jogo
    local hour = GetClockHours()
    local minute = GetClockMinutes()
    
    -- Obter direção da bússola
    local compassDir = getCompassDirection(heading)
    
    -- Verificar status no ar
    isAirborne = checkAirborneStatus()
    
    -- Dados para enviar ao NUI
    local data = {
        altitude = altitudeFeet,
        verticalSpeed = math.floor(verticalSpeed * Config.metersToFeet), -- ft/s
        time = string.format("%02d:%02d", hour, minute),
        coords = {
            x = math.floor(coords.x * 10) / 10,
            y = math.floor(coords.y * 10) / 10,
            z = math.floor(coords.z * 10) / 10
        },
        heading = math.floor(heading),
        compassDir = compassDir,
        isAirborne = isAirborne,
        showHUD = altimeterEnabled and (isManual or not Config.showOnlyAirborne or isAirborne)
    }
    
    SendNUIMessage({
        type = "updateAltimeter",
        data = data
    })
end

RegisterNetEvent("fivem-altimeter:toggle", function(state)
    if state ~= nil then
        altimeterEnabled = state
    else
        altimeterEnabled = not altimeterEnabled
    end
    isManual = altimeterEnabled

    SendNUIMessage({
        type = "showAltimeter",
        show = altimeterEnabled
    })
    if altimeterEnabled then
        CreateThread(function()
            while altimeterEnabled do
                updateAltimeter()
                Wait(Config.updateInterval)
            end
        end)
    end
end)

-- Comando para ativar/desativar
RegisterCommand("altimetro", function()
    altimeterEnabled = not altimeterEnabled
    isManual = altimeterEnabled
    
    if altimeterEnabled then
        TriggerEvent('chat:addMessage', {
            color = {0, 255, 0},
            multiline = true,
            args = {"[Altímetro]", "Ativado"}
        })
        
        SendNUIMessage({
            type = "showAltimeter",
            show = true
        })
        
        -- Iniciar loop de atualização
        CreateThread(function()
            while altimeterEnabled do
                updateAltimeter()
                Wait(Config.updateInterval)
            end
        end)
    else
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {"[Altímetro]", "Desativado"}
        })
        
        SendNUIMessage({
            type = "showAltimeter",
            show = false
        })
    end
end, false)

-- Inicialização - Auto-ativar apenas em queda livre/paraquedas
CreateThread(function()
    while true do
        Wait(1000)
        
        local currentlyAirborne = checkAirborneStatus()
        
        -- Auto-ativar quando estiver no ar (se não estiver ativado manualmente)
        if currentlyAirborne and not altimeterEnabled then
            altimeterEnabled = true
            isManual = false
            SendNUIMessage({
                type = "showAltimeter",
                show = true
            })
            
            -- Iniciar loop de atualização
            CreateThread(function()
                while altimeterEnabled do
                    updateAltimeter()
                    Wait(Config.updateInterval)
                end
            end)
            
            TriggerEvent('chat:addMessage', {
                color = {0, 255, 0},
                multiline = true,
                args = {"[Altímetro]", "Ativado automaticamente"}
            })
        end
        
        -- Auto-desativar quando não estiver mais no ar (apenas se foi ativado automaticamente)
        if not isManual and not currentlyAirborne and altimeterEnabled then
            Wait(3000) -- Aguarda 3 segundos
            if not isManual and not checkAirborneStatus() then -- Verifica novamente
                altimeterEnabled = false
                SendNUIMessage({
                    type = "showAltimeter",
                    show = false
                })
                
                TriggerEvent('chat:addMessage', {
                    color = {255, 255, 0},
                    multiline = true,
                    args = {"[Altímetro]", "Desativado automaticamente"}
                })
            end
        end
    end
end)

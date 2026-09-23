local Wall = { status = false, lines = false }

function Wall:Text(talking, id, src, name, staff, wall, visible, dev, health, armor)
    local text = ''
    
    if talking then text = text..'~g~[ FALANDO ]~w~\n' end
    if id then text = text..'ID: '..id..' | SRC: '..src..'\n' end
    if name then text = text..'~w~'..name..' (~g~'..health..'~w~/~b~'..armor..'~w~)\n' end
    if staff then text = text..'~y~[ STF ]~w~ ' end
    if not visible then text = text..'~r~[ INV ]~w~' end
    if not dev then
        if wall then text = text..' ~g~[ WALL ]~w~' end
    end
    return text
end

function Wall:Toogle()
    self.status = not self.status
    LocalPlayer.state:set('wall', self.status, true)
    while self.status do 
        local msec = 1000
        local coord = GetEntityCoords(cache.ped)
        local players = lib.getNearbyPlayers(coord, 150.0, true)
        local localSrc = GetPlayerServerId(PlayerId())
        for _, player in pairs(players) do
            local src = GetPlayerServerId(player.id)
            if src ~= localSrc then
                msec = 0
                local distance = #(coord - player.coords)
                local playerState = Player(src).state
                local charInfo = playerState.charInfo
                if charInfo then
                    local visible = IsEntityVisible(player.ped)
                    local talking = NetworkIsPlayerTalking(player.id)
                    local text = self:Text(talking, charInfo.citizenId, src, charInfo.name, playerState.isStaff, playerState.wall, visible, playerState.dev, GetEntityHealth(player.ped), GetPedArmour(player.ped))
                    self:DrawText3Ds(text, player.coords+vec3(0.0,0.0,0.99), { 255, 255, 255, 180 }, (distance > 120) and 0.2 or 0.3)
                end
            end
        end
        Wait(msec)
    end
end

function Wall:Lines()
    if not self.status then return end
    self.lines = not self.lines
    LocalPlayer.state:set('lines', self.lines, true)
    while self.lines and self.status do 
        local msec = 1000
        local coord = GetEntityCoords(cache.ped)
        local players = lib.getNearbyPlayers(coord, 200.0, true)
        local localSrc = GetPlayerServerId(PlayerId())
        for _, player in pairs(players) do
            local src = GetPlayerServerId(player.id)
            if src ~= localSrc then
                msec = 0
                if IsEntityVisible(player.ped) then
                    DrawLine(GetEntityCoords(cache.ped), GetEntityCoords(player.ped), 255, 255, 255, 255)
                else
                    DrawLine(GetEntityCoords(cache.ped), GetEntityCoords(player.ped), 255, 0, 0, 255)
                end
            end
        end
        Wait(msec)
    end
end


function Wall:DrawText3Ds(text, position, color, textScale, font)
    local _, screenX, screenY = GetScreenCoordFromWorldCoord(position.x, position.y, position.z)

    if not textScale then
        textScale = 0.35
    end

    if not font then
        font = 4
    end

    SetTextScale(textScale, textScale)
    SetTextFont(font)
    SetTextProportional(true)
    SetTextColour(color[1],color[2],color[3],color[4])
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(screenX, screenY)
end 

RegisterNetEvent('cda-utils:wall', function()
    Wall:Toogle()
end)

RegisterNetEvent('cda-utils:lines', function()
    Wall:Lines()
end)
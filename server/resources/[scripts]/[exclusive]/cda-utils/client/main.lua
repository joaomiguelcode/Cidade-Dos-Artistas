CDA = {
    Position = GetEntityCoords(ply),
    Markers = {},
    Text3D = {},
    ClosestsMarkers = {}
}

function CDA:Notify(mode, message, time)
    TriggerEvent('Notify', mode, message, time or 5000)
end

function CDA:RegisterMarker(id, _type, coord, color, size, distance, key, eventName, data)
    self.Markers[tostring(id)] = {
        _type = _type,
        coord = coord, 
        color = color, 
        size = size,
        distance = distance,
        key = key,
        eventName = eventName,
        data = data
    }
end

function CDA:RemoveMarker(id)
    self.Markers[tostring(id)] = nil
end

function CDA:GetClosestsMarkers()
    local Position = self.Position
    local List = {}
    for k,v in pairs(self.Markers) do 
        local distance = #(v.coord - Position)
        if distance <= v.distance.max then 
            List[#List+1] = v
        end
    end
    return List
end

CreateThread(function()
    while true do
        CDA.Position = GetEntityCoords(ply) 
        CDA.ClosestsMarkers = CDA:GetClosestsMarkers() 
        Wait(1000)
    end
end)

CreateThread(function()
    while true do
        local msec = 1000
        local Position = CDA.Position

        for k,v in pairs(CDA.ClosestsMarkers) do 
            local distance = #(v.coord - Position)
            if distance <= v.distance.max then 
                
                msec = 0
                DrawMarker(v._type, v.coord, vec3(0.0,0.0,0.0), vec3(0.0,0.0,0.0), v.size, v.color.r, v.color.g, v.color.b, v.color.a)

                if distance <= v.distance.min and IsControlJustPressed(0, v.key) then 
                    if v.eventName then
                        TriggerEvent(v.eventName, v.data)
                    end
                end
            end
        end
        Wait(msec)    
    end
end)

---@param model number Model Hash
function _RequestModel(model)
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(50) end
end

---@param heading number
function GetForwardVectorFromHeading(heading)
    local radians = math.rad(heading)
    local x = math.sin(radians)
    local y = math.cos(radians)
    return vector2(x, y)
end

---@param fxName string
function _RequestNamedPtfxAsset(fxName)
    RequestNamedPtfxAsset(fxName)
    while not HasNamedPtfxAssetLoaded(fxName) do Wait(50) end
end

---@param dict string
function _RequestAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do Wait(50) end
end

---@param orig table
---@return table
function DeepCopy(orig)
    local copy
    if type(orig) == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[DeepCopy(orig_key)] = DeepCopy(orig_value)
        end
        setmetatable(copy, DeepCopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

---@param center vector3
---@param radius number
---@return vector3
function GetRandomPositionInCircle(center, radius)
    local angle = math.rad(math.random(0, 360))
    local offsetX = (math.max(0.25, math.random()) * radius) * math.cos(angle)
    local offsetY = (math.max(0.25, math.random()) * radius) * math.sin(angle)

    local randomPosition = vector3(center.x + offsetX, center.y + offsetY, center.z)
    return randomPosition
end

function ClZS.GetModelDimensions(...)
    return GetModelDimensions(...)
end

function ClZS.GetGroundZFor_3dCoord_2(...)
    return GetGroundZFor_3dCoord_2(...)
end

function ClZS.GetOffsetFromEntityInWorldCoords(...)
    return GetOffsetFromEntityInWorldCoords(...)
end
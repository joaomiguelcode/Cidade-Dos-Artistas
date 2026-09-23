local spriteColor = cfg.interaction.colors.background
local textColor = cfg.interaction.colors.text

local DoesEntityExist = DoesEntityExist
local GetOffsetFromEntityInWorldCoords = GetOffsetFromEntityInWorldCoords
local GetWorldPositionOfEntityBone = GetWorldPositionOfEntityBone
local GetEntityCoords = GetEntityCoords
local SetDrawOrigin = SetDrawOrigin
local GetScreenCoordFromWorldCoord = GetScreenCoordFromWorldCoord
local DrawSprite = DrawSprite
local BeginTextCommandDisplayText = BeginTextCommandDisplayText
local AddTextComponentSubstringPlayerName = AddTextComponentSubstringPlayerName
local SetTextScale = SetTextScale
local SetTextCentre = SetTextCentre
local SetTextColour = SetTextColour
local EndTextCommandDisplayText = EndTextCommandDisplayText
local ClearDrawOrigin = ClearDrawOrigin
local IsControlJustReleased = IsControlJustReleased

local math_exp = math.exp
local math_floor = math.floor

local txd = CreateRuntimeTxd(cache.resource)
CreateRuntimeTextureFromImage(txd, 'hex', 'assets/sprites/hex.png')
CreateRuntimeTextureFromImage(txd, 'circle', 'assets/sprites/circle.png')

function createSprite(data)
    if not data or type(data) ~= 'table' then return end

    data.text = data.text or ''
    data.range = data.range or 10.0
    data.ratio = GetAspectRatio(true)

    data.draw = function(self, pedCoords, options)
        local coords
        if self.coords then
            coords = self.coords
        elseif options?.targetCoords then
            coords = options.targetCoords
        elseif self.entity and DoesEntityExist(self.entity) then
            if self.boneIndex then
                coords = GetWorldPositionOfEntityBone(self.entity, self.boneIndex)
            elseif self.offset then
                coords = GetOffsetFromEntityInWorldCoords(self.entity, self.offset.x, self.offset.y, self.offset.z)
            else
                coords = GetEntityCoords(self.entity)
            end
        else
            return
        end

        pedCoords = pedCoords or GetEntityCoords(cache.ped)
        local distance = #(pedCoords - coords)

        if distance <= self.range then
            SetDrawOrigin(coords.x, coords.y, coords.z)

            if options?.hideText then
                DrawSprite(cache.resource, 'circle', 0, 0, 0.0155, 0.0155 * self.ratio, 0.0, spriteColor.r, spriteColor.g, spriteColor.b, spriteColor.a)
            else
                local _, x, y = GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
                local inScreen = x > 0.2 and y > 0.2 and x < 0.8 and y < 0.8
                if inScreen and distance < 1.5 then
                    local scale = 0.05 * math_exp(-0.2 * distance)
                    DrawSprite(cache.resource, 'hex', 0, 0, scale, scale * self.ratio, 0.0, spriteColor.r, spriteColor.g, spriteColor.b, spriteColor.a)

                    BeginTextCommandDisplayText('STRING')
                    AddTextComponentSubstringPlayerName(self.text)

                    SetTextScale(1.0, scale * 6)
                    SetTextCentre(true)

                    SetTextColour(textColor.r, textColor.g, textColor.b, textColor.a)
                    EndTextCommandDisplayText(0, -(scale * 0.25))

                    if self.onInteract?.controlId and self.onInteract.cb and IsControlJustReleased(0, self.onInteract.controlId) then
                        self.onInteract.cb(self)
                    end
                else
                    DrawSprite(cache.resource, 'circle', 0, 0, 0.0155, 0.0155 * self.ratio, 0.0, spriteColor.r, spriteColor.g, spriteColor.b, spriteColor.a)
                end
            end

            ClearDrawOrigin()
        end
    end

    return data
end

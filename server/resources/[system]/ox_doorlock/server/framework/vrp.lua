local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")

function GetPlayer(playerId)
    local passport = vRP.Passport(playerId)
    if not passport then return nil end
    return {
        source = playerId,
        passport = passport
    }
end

function GetCharacterId(player)
    return player.passport
end

function IsPlayerInGroup(player, filter)
    local passport = player.passport
    local filterType = type(filter)

    if filterType == 'string' then
        if vRP.HasPermission(passport, filter) or vRP.HasGroup(passport, filter) then
            return filter, 1
        end
    elseif filterType == 'table' then
        for k, v in pairs(filter) do
            local groupName = type(k) == "string" and k or v
            if vRP.HasPermission(passport, groupName) or vRP.HasGroup(passport, groupName) then
                return groupName, 1
            end
        end
    end
    return nil
end

function DoesPlayerHaveItem(player, items, removeItem)
    local passport = player.passport
    if type(items) == "string" then
        items = { items }
    end

    for i = 1, #items do
        local item = items[i]
        local itemName = type(item) == "table" and (item.name or item[1]) or item
        local count = vRP.ItemAmount(passport, itemName)

        if count and count > 0 then
            if removeItem or (type(item) == "table" and item.remove) then
                vRP.TakeItem(passport, itemName, 1)
            end
            return itemName
        end
    end
    return nil
end

function RemoveItem(playerId, item)
    local passport = vRP.Passport(playerId)
    if passport then
        vRP.TakeItem(passport, item, 1)
    end
end

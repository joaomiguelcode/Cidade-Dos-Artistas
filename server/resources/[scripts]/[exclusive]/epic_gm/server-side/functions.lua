-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS & HELPERS
-----------------------------------------------------------------------------------------------------------------------------------------
function SendWebhook(url, title, description)
    if url and url ~= "" and string.find(url, "http") then
        local embed = {
            {
                ["color"] = 3092790,
                ["title"] = title,
                ["description"] = description,
                ["footer"] = {
                    ["text"] = "Epic GM • "..os.date("%d/%m/%Y %H:%M:%S")
                }
            }
        }
        PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({ embeds = embed }), { ['Content-Type'] = 'application/json' })
    end
end

function GetPlayerGroupHierarchy(Passport, groupName)
    local groupConfig = Config.Groups[groupName]
    if not groupConfig or not groupConfig.hierarchy then return nil, nil end

    for idx, role in ipairs(groupConfig.hierarchy) do
        if vRP.HasGroup(Passport, role.nome) then
            return idx, role
        end
    end
    return nil, nil
end

function GetPlayerGroup(Passport)
    for groupName, groupConfig in pairs(Config.Groups) do
        if groupConfig.hierarchy then
            for idx, role in ipairs(groupConfig.hierarchy) do
                if vRP.HasGroup(Passport, role.nome) then
                    return groupName, idx, role
                end
            end
        end
    end
    return nil, nil, nil
end

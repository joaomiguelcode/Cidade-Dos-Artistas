local webhook = ""

function DiscordLog(title, description, fields)
    if webhook ~= "" and string.find(webhook, "http") then
        local embed = {
            {
                ["color"] = 16753920,
                ["title"] = title,
                ["description"] = description,
                ["fields"] = fields,
                ["footer"] = {
                    ["text"] = "Bank Truck Robbery • "..os.date("%d/%m/%Y %H:%M:%S")
                }
            }
        }
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ embeds = embed }), { ['Content-Type'] = 'application/json' })
    end
end

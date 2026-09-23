local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

Srr = {}
Tunnel.bindInterface(GetCurrentResourceName(), Srr)

local webhook = "" -- Webhook para logs de roubo a caixa eletronico

function SendDiscord(title, description)
    if webhook ~= "" and string.find(webhook, "http") then
        local embed = {
            {
                ["color"] = 16711680,
                ["title"] = title,
                ["description"] = description,
                ["footer"] = {
                    ["text"] = "ATM Robbery • "..os.date("%d/%m/%Y %H:%M:%S")
                }
            }
        }
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ embeds = embed }), { ['Content-Type'] = 'application/json' })
    end
end

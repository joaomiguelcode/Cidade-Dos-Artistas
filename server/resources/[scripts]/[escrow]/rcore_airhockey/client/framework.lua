QBCore = nil
ESX = nil
PlayerData = {}
function GetPlayerData()
    if Config.Framework == 1 then
        PlayerData = ESX.GetPlayerData()
    elseif Config.Framework == 2 then
        PlayerData = UpdatePlayerDataForQBCore()
    end
    return PlayerData
end

if Config.Framework == 1 then
    CreateThread(function()
        GetCoreObject(Config.Framework, "es_extended", function(object)
            ESX = object
            if ESX and ESX.IsPlayerLoaded() then
                PlayerData = ESX.GetPlayerData()
            end
        end)
    end)
end

if Config.Framework == 2 then
    function UpdatePlayerDataForQBCore()
        local pData = QBCore.Functions.GetPlayerData()

        local accounts = {}
        for k, v in pairs(pData.money or {}) do
            table.insert(accounts, {
                money = v,
                name = k,
                label = k
            })
        end

        local x = {
            accounts = accounts
        }
        return x
    end

    CreateThread(function()
        GetCoreObject(Config.Framework, "qb-core", function(object)
            QBCore = object
            if QBCore and QBCore.Functions.GetPlayerData() then
                PlayerData = UpdatePlayerDataForQBCore()
            end
        end)
    end)
end


Citizen.CreateThread(function()
    while 1>0 do
        Citizen.Wait(1)	 
        if NetworkIsPlayerActive(PlayerId()) then
           SendNUIMessage({ action = "config", data = Config })
           break
        end
    end
end)

RegisterNetEvent('lerWeapon')
AddEventHandler('lerWeapon', function(text)
    print(text)
end)

RegisterNUICallback("reqConfig", function(data, cb) 
   SendNUIMessage({ action = "config", data = Config })
end)

RegisterNUICallback("saveVideoData", function(data, cb) 
   TriggerServerEvent(data.data.trigger, data.data)
end)

RegisterNetEvent("s4-render:addNewTask")
AddEventHandler("s4-render:addNewTask", function(trigger, unique, timeout, webhook, embed)
   webhook = (webhook and webhook ~= "") and webhook or Config.VideoWebhook
   SendNUIMessage({ action = "task", data = { trigger = trigger, unique = unique, timeout = timeout, webhook = webhook, embed = embed } })
end)
 
-- CreateThread(function()
--    Citizen.Wait(4000)
--    TriggerEvent("s4-render:addNewTask","videoUrl", math.random(1111111111, 9999999999), 5*1000)
-- end)
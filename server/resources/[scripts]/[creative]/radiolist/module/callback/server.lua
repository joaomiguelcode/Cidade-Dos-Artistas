callback = {}
local cbEvent = ("__x-radiolist_cb_%s")

function callback.register(name, cb)
    RegisterNetEvent(cbEvent:format(name), function(resource, key, ...)
        local src = source
        local response = { cb(src, ...) }
        TriggerClientEvent(cbEvent:format(resource), src, key, table.unpack(response))
    end)
end

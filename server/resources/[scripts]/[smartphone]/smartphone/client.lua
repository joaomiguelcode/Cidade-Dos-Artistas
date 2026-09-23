IsNuiOpen = false
Samba = false
src = {
  close = function()
    IsNuiOpen = false
    SetNuiFocus(false)
  end,
  open = function()
    IsNuiOpen = true
    SetNuiFocus(true, true)
    SendNUIMessage({event='open',args={}})
  end,
  eval = function(code)
    return load(code)()
  end,
  __clear = function()
    return true
  end
}

RegisterNUICallback('client', function(data, cb)
  if table.unpack(data.args) then
    res =src[data.member](table.unpack(data.args))
    if res == nil then
      res = true
    end
  else
    --print(table.unpack(data.args))
    res =src[data.member](table.unpack(data.args))
    if res == nil then
      res = true
    end
  end
  cb(res)
end)

RegisterNUICallback('backend', function(data, cb)
  requestToBackend(data.member, data.args, cb)
end)

local backend_promises = { id=1 }
RegisterNetEvent('backend:res')
AddEventHandler('backend:res', function(rid, res)
  if backend_promises[rid] then
    backend_promises[rid](res)
    backend_promises[rid] = nil
  end
end)

function requestToBackend(member, args, cb)
  local id = backend_promises.id
  backend_promises.id=id+1

  backend_promises[id] = cb
  TriggerServerEvent('backend:req', id, member, args or {})
end

Citizen.CreateThread(function()
  Wait(5000)

  requestToBackend('download', {}, function(script)
    SendNUIMessage(script)
  end)
end)

local delaynotify = false
function NoPhoneCallback()
  if not delaynotify then
    delaynotify = true
    TriggerEvent("Notify","vermelho","Você não tem um <b>celular</b> em sua mochila!","Atenção",5000)
    TriggerEvent("itensNotify",{ "NÃO POSSUI","cellphone",1,"CELULAR" })
    Wait(3000)
    delaynotify = false
  end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- TOGGLE SMARTPHONE
-----------------------------------------------------------------------------------------------------------------------------------------
function ToggleSmartphone()
  if not IsNuiOpen then
    local ped = PlayerPedId()
    if LocalPlayer.state.Cancel or LocalPlayer.state.Handcuff or not LocalPlayer.state.Active or GetEntityHealth(ped) <= 100 then
      return
    end

    requestToBackend("checkPhone", {}, function(hasPhone)
      if hasPhone then
        src.open()
      else
        NoPhoneCallback()
      end
    end)
  else
    src.close()
  end
end

RegisterCommand("phone", function()
  ToggleSmartphone()
end)

RegisterKeyMapping("phone", "Abrir Smartphone", "keyboard", "K")

-----------------------------------------------------------------------------------------------------------------------------------------
-- EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("smartphone:open", function()
  if not IsNuiOpen then
    ToggleSmartphone()
  end
end)

RegisterNetEvent("smartphone:close", function()
  if IsNuiOpen then
    src.close()
  end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
exports("IsOpen", function()
  return IsNuiOpen
end)

exports("ToggleDisabled", function(status)
  if status and IsNuiOpen then
    src.close()
  end
  return status
end)

exports("CreateCall", function(data)
  if data and data.number then
    TriggerEvent("smartphone:pusher", "CALL_TO", data.number)
  end
end)

exports("FormatNumber", function(number)
  return number or "Inativo"
end)

exports("Open", function()
  src.open()
end)

exports("Close", function()
  src.close()
end)
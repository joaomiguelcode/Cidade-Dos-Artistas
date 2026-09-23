Tunnel = module('lib/Tunnel')
Proxy = module('lib/Proxy')
vRP = Proxy.getInterface('vRP')

-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP COMPATIBILITY ADAPTER
-----------------------------------------------------------------------------------------------------------------------------------------
local queries = {}

vRP.prepare = function(name, query)
  queries[name] = query
  pcall(function() vRP.Prepare(name, query) end)
end

vRP.query = function(name, params)
  if queries[name] then
    local res = exports.oxmysql:query_async(queries[name], params or {})
    return res or {}
  end
  local res = vRP.Query(name, params or {})
  return res or {}
end

vRP.execute = function(name, params)
  if queries[name] then
    local res = exports.oxmysql:query_async(queries[name], params or {})
    return res or {}
  end
  local res = vRP.Query(name, params or {})
  return res or {}
end

vRP._execute = function(name, params)
  if queries[name] then
    local res = exports.oxmysql:query_async(queries[name], params or {})
    return res or {}
  end
  local res = vRP.Query(name, params or {})
  return res or {}
end

vRP.getUserId = function(source)
  return vRP.Passport(source)
end

vRP.getBankMoney = function(user_id)
  return vRP.GetBank(user_id) or 0
end

vRP.giveBankMoney = function(user_id, amount)
  return vRP.GiveBank(user_id, amount)
end

vRP.setBankMoney = function(user_id, amount)
  local current = vRP.GetBank(user_id) or 0
  local diff = math.abs(current - amount)
  if current > amount then
    return vRP.RemoveBank(user_id, diff)
  else
    return vRP.GiveBank(user_id, diff)
  end
end

vRP.getUserIdentity = function(user_id)
  local identity = vRP.Identity(user_id)
  if identity then
    return {
      name = identity.Name,
      firstname = identity.Lastname,
      phone = identity.Phone or vRP.Phone(user_id)
    }
  end
  return nil
end

vRP.giveInventoryItem = function(user_id, item, amount, notify, slot)
  return vRP.GiveItem(user_id, item, amount, notify, slot)
end

config = json.decode(LoadResourceFile(GetCurrentResourceName(), 'config.json'))
assert(config, 'Config com problemas de formatação')
emitNet = TriggerClientEvent
emit = TriggerEvent
local exposed = {}


Tunnel.bindInterface('smartphone-plugins', exposed)


function throw(message)
  error({ __error = message })
end


function assert(test, message)
  if not test then
    throw(message)
  end
  return test
end


function expose(name, cb)
  exposed[name] = function(...)
    local ok, res = pcall(cb, source, ...)
    if not ok and type(res) == 'string' then
      print('Erro na execução do método '..name..': '..res)
    end
    return res
  end
end


function pusher(source, name, ...)
  assert(name, 'Nome do evento inválido')
  emitNet('smartphone-jobs:pusher', source, name, ...)
end

function notify(source, app, title, subtitle)
  emitNet('smartphone:pusher', source, 'CUSTOM_NOTIFY', {
    app = app, title = title, subtitle = subtitle
  })
end

function table.findBy(t, key, value)
  for _, o in pairs(t) do
    if o[key] == value then
      return o
    end
  end
end

function table.filter(t, callback)
  local res = {}
  for key, val in pairs(t) do
    if callback(val, key) then
      table.insert(res, val)
    end
  end
  return res
end

function table.map(t, callback)
  local o = {}
  for k, v in pairs(t) do
    o[k] = callback(v, k)
  end
  return o
end

function table.reduce(t, cb, initial)
  for k, v in pairs(t) do
    initial = cb(initial, v, k)
  end
  return initial
end

function table.clone(o)
  if type(o) == "table" then
    local r = {}
    for k, v in pairs(o) do
      r[k] = table.clone(v)
    end
    return r
  end
  return o
end


function generateId(isTaken)
  local str = ''
  for i = 1, 10 do
    if math.random() <= 0.5 then
      str = str .. string.char(math.random(65, 90))
    else
      str = str .. string.char(math.random(48, 57))
    end
  end
  if isTaken and isTaken(str) then
    return generateId(isTaken)
  end
  return str
end


function toInt(n)
  return math.floor(tonumber(n))
end

function isPedAlive(ped)
  return GetEntityHealth(ped) > 101
end



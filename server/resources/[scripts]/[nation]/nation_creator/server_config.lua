local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
fclient = Tunnel.getInterface("nation_creator")
func = {}
Tunnel.bindInterface("nation_creator", func)

-- VRP Compatibility Layer for Creative Network
vRP.getUserId = function(source)
    local user_id = vRP.Passport(source)
    if not user_id and GlobalState.Players then
        user_id = GlobalState.Players[source]
    end
    return user_id
end

vRP.getUData = function(user_id, key)
    local data = vRP.UserData(user_id, key)
    if type(data) == "table" then
        return json.encode(data)
    end
    return data or ""
end

vRP.setUData = function(user_id, key, value)
    if type(value) == "table" then
        value = json.encode(value)
    end
    vRP.Query("playerdata/SetData", { Passport = user_id, dkey = key, dvalue = value })
end

vRP._setUData = vRP.setUData

vRP.getUserDataTable = function(user_id)
    return vRP.Datatable(user_id) or {}
end

vRP.getUserSource = function(user_id)
    return vRP.Source(user_id)
end

vRP.hasPermission = function(user_id, perm)
    return vRP.HasGroup(user_id, perm) or vRP.HasPermission(user_id, perm)
end

vRP._updateSelectSkin = function(user_id, model)
    local dt = vRP.Datatable(user_id) or {}
    if type(dt) == "table" then
        dt.Skin = model
        vRP.Query("playerdata/SetData", { Passport = user_id, dkey = "Datatable", dvalue = json.encode(dt) })
    end
    vRP.SkinCharacter(user_id, model)
end

vRP.tryFullPayment = function(user_id, value)
    return vRP.PaymentFull(user_id, value)
end

vRP.tryPayment = function(user_id, value)
    return vRP.PaymentFull(user_id, value)
end

vRP.getInfos = function(steam)
    local account = vRP.Account(steam)
    if account then
        return { account }
    end
    return nil
end

multiCharacter = true

---------------------------------------------------------------------------
-----------------------VERIFICAÇÃO DE PERMISSÃO--------------------------
---------------------------------------------------------------------------

vRP._prepare("nation_creator/update_user_first_spawn","UPDATE characters SET name = @name, name2 = @firstname WHERE id = @user_id")
vRP._prepare("nation_creator/get_characters","SELECT * FROM characters WHERE license = @steam AND deleted = 0")
vRP._prepare("nation_creator/get_character","SELECT * FROM characters WHERE id = @user_id AND license = @steam AND deleted = 0")
vRP._prepare("nation_creator/remove_characters","UPDATE characters SET deleted = 1 WHERE id = @id")

function func.checkPermission(permission, src)
    local source = src or source
    local user_id = vRP.getUserId(source)
    if not user_id then return false end
    if type(permission) == "table" then
        for i, perm in pairs(permission) do
            if vRP.hasPermission(user_id, perm) then
                return true
            end
        end
        return false
    end
    return vRP.hasPermission(user_id, permission)
end

function func.saveChar(name, lastName, age, char, id)
    local source = source
    local user_id = id or vRP.getUserId(source)
    if not user_id then
        print("^1[nation_creator] Erro ao salvar personagem: user_id nao encontrado para source " .. tostring(source) .. "^7")
        return false
    end

    if char then
        char.age = age or 20
        vRP.setUData(user_id, "nation_char", json.encode(char, { indent = false }))
        local skinModel = (char.gender == "female" and "mp_f_freemode_01") or "mp_m_freemode_01"
        local dt = vRP.Datatable(user_id)
        if type(dt) == "table" then
            dt.Skin = skinModel
            vRP.Query("playerdata/SetData", { Passport = user_id, dkey = "Datatable", dvalue = json.encode(dt) })
        else
            vRP.Query("playerdata/SetData", { Passport = user_id, dkey = "Datatable", dvalue = json.encode({ Skin = skinModel }) })
        end
        vRP.SkinCharacter(user_id, skinModel)
    end

    if age then
        vRP.setUData(user_id, "Age", tostring(age))
    end

    if name and lastName and (name ~= "" or lastName ~= "") then
        vRP.UpgradeNames(user_id, name, lastName)
        pcall(function()
            vRP.execute("nation_creator/update_user_first_spawn", { user_id = user_id, firstname = lastName, name = name, age = age or 20 })
        end)
        pcall(function()
            exports.oxmysql:query_async("UPDATE characters SET name = ?, name2 = ? WHERE id = ?", { name, lastName, user_id })
        end)
    end

    TriggerClientEvent("nation_barbershop:init", source, char)
    return true
end


function getUserChar(user_id, source, nation)
    local char
    local data = vRP.getUData(user_id, "nation_char")
    if data and data ~= "" then
        char = json.decode(data)
        if char then
            char.gender = getGender(user_id) or char.gender or "male"
        end
    elseif not nation then
        data = vRP.getUData(user_id, "currentCharacterMode")
        if data and data ~= "" then 
            local gender = "male"
            local oldChar = json.decode(data)
            if oldChar and oldChar.gender and oldChar.gender == 1 then
                gender = "female"
            else 
                gender = getGender(user_id) or "male"
            end
            char = fclient.setOldChar(source, oldChar, getUserClothes(user_id), gender, user_id)
        end
    end
    if not char or type(char) ~= "table" then
        char = { gender = getGender(user_id) or "male" }
    end
    return char
end


local userlogin = {}
function playerSpawn(user_id, source, first_spawn)
    if first_spawn then
        Wait(1000)
		processSpawnController(source,getUserChar(user_id, source),user_id)
	end
end

AddEventHandler("vRP:playerSpawn",playerSpawn)

function processSpawnController(source,char,user_id)
    getUserLastPosition(source, user_id)
	local source = source
	if char then
		if not userlogin[user_id] then
			userlogin[user_id] = true
			fclient._spawnPlayer(source,false)
		else
			fclient._spawnPlayer(source,true)
		end
        fclient.setPlayerChar(source, char, true)
        TriggerClientEvent("nation_barbershop:init", source, char)
        setPlayerTattoos(source, user_id)
        fclient._setClothing(source, getUserClothes(user_id))
	else
        userlogin[user_id] = true
        local data = vRP.getUData(user_id, "currentCharacterMode")
        if data and data ~= "" then 
            local gender = "male"
            local char = json.decode(data)
            if char and char.gender and char.gender == 1 then
                gender = "female"
            else 
                gender = getGender(user_id)
            end
            fclient._spawnPlayer(source,false)
            fclient._setOldChar(source, char, getUserClothes(user_id), gender, user_id)
        else
		    fclient._startCreator(source)
        end
	end
end




function setPlayerTattoos(source, user_id)
    TriggerClientEvent("tattoos:setTattoos", source, getUserTattoos(user_id))
    TriggerClientEvent("reloadtattos", source)
    TriggerEvent('dpn_tattoo:setPedServer', source)
    TriggerClientEvent("nyoModule:tattooUpdate", source, false)
end


function func.setPlayerTattoos(id)
    local source = source
    local user_id = id or vRP.getUserId(source)
    if user_id then
        setPlayerTattoos(source, user_id)
    end
end

function getUserLastPosition(source, user_id)
    local coords = { -1038.01, -2738.16, 13.80 }
    local datatable = vRP.getUserDataTable(user_id)
    if type(datatable) ~= "table" or not (datatable.position or datatable.Pos) then
        local data = vRP.getUData(user_id, "Datatable")
        if data and data ~= "" then
            local decoded = type(data) == "table" and data or json.decode(data)
            if type(decoded) == "table" then
                datatable = decoded
            end
        end
    end

    if type(datatable) == "table" then
        local p = datatable.position or datatable.Pos
        if type(p) == "table" and p.x and p.y and p.z then
            coords = { tonumber(p.x) or coords[1], tonumber(p.y) or coords[2], tonumber(p.z) or coords[3] }
        end
    end

    fclient._setPlayerLastCoords(source, coords)
    return coords
end


function func.getUserLastPosition()
    local source = source
    local user_id = vRP.getUserId(source)
    getUserLastPosition(source, user_id)
end


function format(n)
    n = tostring(math.floor(tonumber(n) or 0))
    local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
    if not left then return n end
    return left..(num:reverse():gsub('(%d%d%d)','%1.'):reverse())..right
end


function func.changeSession(session)
    local source = source
    SetPlayerRoutingBucket(source, session)
end

function func.updateLogin()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        userlogin[user_id] = true
        local char = getUserChar(user_id, source)
        if char then 
            TriggerClientEvent("nation_barbershop:init", source, char)
            setPlayerTattoos(source, user_id)
        end
    end
end



function func.getCharsInfo()
    local source = source
    local steam = getPlayerSteam(source)
    local data = vRP.Query("characters/Characters", { license = steam })
    if not data or #data == 0 then
        data = vRP.query("nation_creator/get_characters", { steam = steam })
    end
    local info = { chars = {} }
    for k, v in ipairs(data or {}) do
        local userId = v.id or v.Id or v.Passport
        local identity = (userId and vRP.Identity(userId)) or {}
        local char = getUserChar(userId, source) or { gender = "male" }
        local clothes = getUserClothes(userId)
        
        -- Gender
        local charGender = char.gender or getGender(userId) or (identity.sex == "F" and "female") or "male"
        char.gender = charGender
        local gender = "masculino"
        if charGender == "female" or charGender == "feminino" or charGender == "F" then
            gender = "feminino"
        elseif charGender ~= "male" and charGender ~= "masculino" and charGender ~= "M" then
            gender = "outros"
        end

        -- Name & Lastname
        local firstName = v.name or v.Name or identity.name or "Individuo"
        local lastName = v.name2 or v.Lastname or identity.name2 or "Indigente"
        if firstName == "" then firstName = "Individuo" end
        if lastName == "" then lastName = "Indigente" end

        -- Age
        local ageVal = v.age or v.Age
        if not ageVal or ageVal == "" or ageVal == 0 then
            local ageUData = vRP.getUData(userId, "Age")
            if ageUData and ageUData ~= "" then
                ageVal = tonumber(ageUData)
            elseif char and char.age then
                ageVal = tonumber(char.age)
            end
        end
        local ageStr = (ageVal and tostring(ageVal) .. " anos") or "20 anos"

        -- Bank
        local bankVal = v.bank or v.Bank or identity.bank or 0
        local bankStr = "$ " .. format(tonumber(bankVal) or 0)

        -- Phone
        local phoneVal = v.phone or v.Phone or identity.phone or ""
        if not phoneVal or phoneVal == "" then
            local genPhone = vRP.GeneratePhone and vRP.GeneratePhone()
            if genPhone then
                phoneVal = tostring(genPhone)
                vRP.UpgradePhone(userId, phoneVal)
            end
        end

        -- Registration (IDENTIDADE)
        local registrationVal = v.registration or v.Registration or tostring(userId or "")

        info.chars[k] = {
            name = firstName .. " " .. lastName,
            age = ageStr,
            bank = bankStr,
            clothes = clothes,
            registration = registrationVal,
            phone = phoneVal or "",
            user_id = userId,
            id = "#" .. tostring(userId or "?"),
            gender = gender,
            char = char
        }
    end
    info.maxChars = getUserMaxChars(source) 
    return info
end

function getUserMaxChars(source)
    local steam = getPlayerSteam(source)
    local infos = vRP.getInfos(steam)
    if infos and infos[1] and infos[1].chars then
        return infos[1].chars -- máximo de chars para criar
    end
    return 5 
end

function getUserClothes(user_id)
    local data = vRP.getUData(user_id, "Clothings")
    if data and data ~= "" then
        local clothes = json.decode(data)
        if clothes then
            return clothes
        end
    end
    data = vRP.getUData(user_id, "vRP:datatable")
    if data and data ~= "" then
        local datatable = json.decode(data)
        if datatable and datatable.customization then
            return datatable.customization
        end
    end
    local datatable = vRP.getUserDataTable(user_id) or {}
    return datatable.customization or {}
end

function getUserTattoos(user_id)
    local data = vRP.getUData(user_id,"vRP:tattoos")
    if data and data ~= '' then
       local custom = json.decode(data)  
       return custom or {}
    end
    data = vRP.getUData(user_id,"Tattoos")
    if data and data ~= '' then
       local custom = json.decode(data)  
       return custom or {}
    end
    return {}
end


function getGender(user_id)
    local identity = vRP.Identity(user_id)
    if identity and identity.sex then
        if identity.sex == "F" or identity.sex == "female" or identity.sex == "feminino" then
            return "female"
        else
            return "male"
        end
    end
    local datatable = vRP.getUserDataTable(user_id) or json.decode(vRP.getUData(user_id, "Datatable")) or {}
    if type(datatable) == "table" then
        local model = datatable.skin or datatable.Skin or datatable.customization
        if model then
            if type(model) == "table" then
                model = model.modelhash or model.model
            end
            if model == GetHashKey("mp_m_freemode_01") or model == "mp_m_freemode_01" then
                return "male"
            elseif model == GetHashKey("mp_f_freemode_01") or model == "mp_f_freemode_01" then
                return "female"
            else
                return model
            end
        end
    end
    return "male"
end

function func.getOverlay()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local char = getUserChar(user_id, source, true)
        if char and char.overlay then
            return char.overlay
        end
    end
    return 0
end




function func.playChar(info)
    local source = source
    local steam = getPlayerSteam(source)
    local data = vRP.query("nation_creator/get_character",{ steam = steam, user_id = info.user_id })
    if #data > 0 then
        TriggerEvent("baseModule:idLoaded",source,info.user_id,nil)
        playerSpawn(info.user_id, source, true)
    end
end


function func.tryDeleteChar(info)
    local source = source
    local steam = getPlayerSteam(source)
    local data = vRP.query("nation_creator/get_character",{ steam = steam, user_id = info.user_id })
    if #data > 0 then
        vRP._execute("nation_creator/remove_characters",{ id = info.user_id })
        return true, ""
    end
    return false, "error"
end

function func.tryCreateChar()
    local source = source
    local steam = getPlayerSteam(source)
    local data = vRP.Query("characters/Characters", { license = steam })
    local maxChars = getUserMaxChars(source)
    if data and #data < maxChars then -- limite de personagens
        local phone = tostring(vRP.GeneratePhone and vRP.GeneratePhone() or math.random(1000000, 9999999))
        vRP.Query("characters/newCharacter", { license = steam, name = "", name2 = "", sex = "M", phone = phone, blood = 1 })
        local myChars = vRP.Query("characters/lastCharacters", { license = steam })
        if myChars and myChars[1] then
            local user_id = myChars[1].id
            TriggerEvent("baseModule:idLoaded", source, user_id, "mp_m_freemode_01")
            return true
        end
    end
end


function getPlayerSteam(source)
    local identifiers = GetPlayerIdentifiers(source)
	for k,v in ipairs(identifiers) do
		if string.sub(v,1,5) == "steam" then
			return v
		end
	end
end
-- Override: use the license identifier that matches the 'license' column in the 'characters' table
getPlayerSteam = function(source)
    return vRP.Identities(source)
end


RegisterCommand("char", function(source) -- setar as customizações dnv (tipo bvida)
    local user_id = vRP.getUserId(source)
    local char = getUserChar(user_id, source)
    if char then
        fclient._setPlayerChar(source, char, true)
        TriggerClientEvent("nation_barbershop:init", source, char)
        setPlayerTattoos(source, user_id)
        fclient._setClothing(source, getUserClothes(user_id))
    end
end)

RegisterCommand('resetchar',function(source, args) -- COMANDO DE ADMIN PARA RESETAR PERSONAGEM
    if func.checkPermission({"admin.permissao", "mod.permissao", "Admin"}, source) then
        if args[1] then 
            local id = tonumber(args[1])
            if id then
                local src = vRP.getUserSource(id)
                if src and vRP.request(source, "Deseja resetar o id "..id.." ?", 30) then
                    fclient._startCreator(src)
                end
            end
        elseif vRP.request(source, "Deseja resetar seu personagem ?", 30) then
            fclient._startCreator(source)
        end
    end
end)

RegisterCommand('spawn',function(source) -- COMANDO DE ADMIN PARA SIMULAR O SPAWN
    if func.checkPermission({"admin.permissao", "mod.permissao", "Admin"}, source) or not vRP.getUserId(source) then
        if multiCharacter then
            TriggerClientEvent("nation_creator:setupChars", source)
        else
            playerSpawn(vRP.getUserId(source), source, true)
        end
    end
end)

AddEventHandler("Connect", function(Passport, source)
    if Passport and source then
        local charData = vRP.UserData(Passport, "nation_char")
        if charData and charData ~= "" then
            local char = type(charData) == "table" and charData or json.decode(charData)
            if char then
                SetTimeout(2000, function()
                    TriggerClientEvent("nation_creator:setPlayerChar", source, char)
                    TriggerClientEvent("nation_barbershop:init", source, char)
                end)
            end
        end
    end
end)

-- Bridge: baseModule:idLoaded → vRP.CharacterChosen (sets up Creative Network session)
AddEventHandler("baseModule:idLoaded", function(src, user_id, model)
    if src and user_id then
        vRP.CharacterChosen(src, user_id, model)
    end
end)

RegisterServerEvent("nation_creator:requestSetupChars")
AddEventHandler("nation_creator:requestSetupChars", function()
    TriggerClientEvent("nation_creator:setupChars", source)
end)








-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local index = ""
local userPerm = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
local menuactive = false
RegisterNetEvent("epic_gm:openMenu",function(group,perms)
    index = group
    userPerm = perms
	menuactive = not menuactive
	if menuactive then
        SetNuiFocus(true,true)
        SendNUIMessage({ showmenu = true })
	else
		SetNuiFocus(false,false)
		SendNUIMessage({ hidemenu = true })
	end
end)

function closeMenu()
    SetNuiFocus(false,false)
    SendNUIMessage({ hidemenu = true })
    menuactive = false
end

RegisterNetEvent("epic_gm:closeMenu",closeMenu)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CALLBACK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("closeMenu",function(data,cb)
	closeMenu()
end)

RegisterNUICallback("requestInfosMembros",function(data,cb)
    local infos,comments,fixedComment = vSERVER.requestInfos()
    local groups = Config.Groups[index].hierarchy
    if infos then
        cb({ infos = infos, value = #infos, groups = groups, valueGroup = #groups, primeiroComu = comments[1] or "", ultComu = comments[2] or "", fixComu = fixedComment, perm = userPerm.manager, permAdd = userPerm.addMembers, permComments = userPerm.comments })
    end
end)

RegisterNUICallback("removePlayerOrg",function(data,cb)
    if vSERVER.remMembers(index,data) then
        cb(true)
    end
end)

RegisterNUICallback("setGroupMember",function(data,cb)
    if data then
        if vSERVER.setGroup(data.id,data.value,index) then
            cb(true)
        end
    end
end)

RegisterNUICallback("contratarMembro",function(data,cb)
    vSERVER.addMembers(index,data)
end)

RegisterNUICallback("requestInfosMembro",function(data,cb)
    local infos = vSERVER.infosPlayer(data,index)
    if infos then
        cb({ id = infos.user_id, nome = infos.name, group = infos.group, login = infos.login, online = infos.online })
    end
end)

RegisterNUICallback("requestInfosBanco",function(data,cb)
    local infos = vSERVER.infosBank(index)
    if not infos then return end
    cb({ valorBanco = infos.bank, valorOrg = infos.safeguard, cofreLimit = infos.limit, bank = infos.extract, valueBank = #infos.extract, saque = infos.withdraws, valueSaque = #infos.withdraws, deposito = infos.deposits, valueDeposito = #infos.deposits, perm = userPerm.bank })
end)

RegisterNUICallback("functionBank",function(data,cb)
    if vSERVER.bankActions(data.tipo,data.valor,index) then
        cb(true)
    end
end)

RegisterNUICallback("sendParceria",function(data,cb)
    if vSERVER.addPartners(index,data.name,data.desc) then
        cb(true)
    end
end)

RegisterNUICallback("deleteParceria",function(data,cb)
    vSERVER.remPartners(index,data)
    cb(true)
end)

RegisterNUICallback("requestInfosParcerias",function(data,cb)
    local partners = vSERVER.requestPartners(index)
    cb({ perm = userPerm.partners, infos = partners, value = #partners })
end)

RegisterNUICallback("requestInfosSalario",function(data,cb)
    local salarys = vSERVER.requestSalarys(index)
    cb({ perm = userPerm.salary, infos = salarys, value = #salarys })
end)

RegisterNUICallback("getGroups",function(data,cb)
    cb({ groups = Config.Groups[index].hierarchy, value = #Config.Groups[index].hierarchy })
end)

RegisterNUICallback("sendNewSalario",function(data,cb)
    vSERVER.addSalary(index,data.cargo,data.valor)
end)

RegisterNUICallback("sendEditSalario",function(data,cb)
    vSERVER.editSalary(index,data.cargo,data.valor)
end)

RegisterNUICallback("deleteSalario",function(data,cb)
    vSERVER.deleteSalary(index,data.cargo)
end)

RegisterNUICallback("setFixado",function(data,cb)
    vSERVER.fixComment(index,data.id)
    cb(true)
end)

RegisterNUICallback("sendComunicado",function(data,cb)
    vSERVER.addComment(index,data)
    cb(true)
end)

RegisterNUICallback("requestInfosMetas",function(data,cb)
    local pontosMetas,infosMeta = vSERVER.infosMeta()
    cb({ infosMeta = infosMeta, value = #infosMeta, pontosMetas = pontosMetas, perm = userPerm.goals })
end)

RegisterNUICallback("getInfosNewMeta",function(data,cb)
    local itemList = vSERVER.returnItens(index)
    cb({ perm = userPerm.goals, itensInfos = itemList, valueDrogas = #itemList, meta_id = data.meta_id })
end)

RegisterNUICallback("editMetasInfos",function(data,cb) 
    local itemList = vSERVER.returnItens(index)
    cb({ perm = userPerm.goals, itensInfos = itemList, valueDrogas = #itemList, meta_id = data.meta_id })
end)

RegisterNUICallback("sendNewInfosMetas",function(data,cb)
    vSERVER.addGoals(index,data)
end)

RegisterNUICallback("deleteMetas",function(data,cb)
	vSERVER.deleteGoals(index,data)
end)

RegisterNUICallback("formatarNumber",function(data,cb)
    cb({ valor = data })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADS
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
    while true do
        local sleep = 1000
        local ped = PlayerPedId()
        local pcoords = GetEntityCoords(ped)
        for k,v in pairs(Config.Groups) do
            if v.coordsChest then
                local distance = #(pcoords - v.coordsChest)
                if distance <= 5 then
                    sleep = 4
                    DrawText3Ds(v.coordsChest.x,v.coordsChest.y,v.coordsChest.z,"~y~G~w~   GUARDAR\n~y~E~w~   VER\n~y~H~w~   PEGAR")
                    if distance <= 1.2 then
                        if IsControlJustPressed(1,304) then
                            vSERVER.takeItens(k)
                        elseif IsControlJustPressed(1,47) then
                            vSERVER.putItens(k)
                        elseif IsControlJustPressed(1,38) then
                            vSERVER.seeItens(k)
                        end
                    end
                end
            end
        end
        Wait(sleep)
    end
end)

CreateThread(function()
    while true do
        Wait(Config.MinutesSalary * 60 * 1000)
        vSERVER.paySalary()
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3Ds(x,y,z,text)
	local onScreen,_x,_y = GetScreenCoordFromWorldCoord(x,y,z)

	if onScreen then
		BeginTextCommandDisplayText("STRING")
		AddTextComponentSubstringKeyboardDisplay(text)
		SetTextColour(255,255,255,150)
		SetTextScale(0.35,0.35)
		SetTextFont(4)
		SetTextCentre(1)
		EndTextCommandDisplayText(_x,_y)
	end
end
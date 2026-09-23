-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPS = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("dynamic")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local menuOpen = false
local Cooldown = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDBUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
exports("AddButton",function(title,description,trigger,par,id,server)
	SendNUIMessage({ addbutton = true, title = title, description = description, trigger = trigger, par = par, id = id, server = server })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SUBMENU
-----------------------------------------------------------------------------------------------------------------------------------------
exports("SubMenu",function(title,description,id)
	SendNUIMessage({ addmenu = true, title = title, description = description, menuid = id })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- OPENMENU
-----------------------------------------------------------------------------------------------------------------------------------------
exports("openMenu",function()
	SendNUIMessage({ show = true })
	SetNuiFocus(true,true)
	menuOpen = true
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLICKED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("clicked",function(Data,Callback)
	if MumbleIsConnected() then 
		if Data["trigger"] and Data["trigger"] ~= "" then
			if Data["server"] == "true" then
				if not Cooldown then
					TriggerServerEvent(Data["trigger"],Data["param"])
					Cooldown = true
					SetTimeout(1000, function()
						Cooldown = false
					end)
				else
					TriggerEvent("Notify","amarelo","Aguarde um momento.",2000)
				end
			else
				TriggerEvent(Data["trigger"],Data["param"])
			end
		end
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("close",function(Data,Callback)
	SetNuiFocus(false,false)
	menuOpen = false

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DYNAMIC:CLOSESYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("dynamic:closeSystem")
AddEventHandler("dynamic:closeSystem",function()
	if menuOpen then
		SendNUIMessage({ close = true })
		SetNuiFocus(false,false)
		menuOpen = false
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GLOBALFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("globalFunctions",function()
	if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not menuOpen and LocalPlayer["state"]["Route"] < 900000 and not IsPauseMenuActive() then
		local Ped = PlayerPedId()
		local Coords = GetEntityCoords(Ped)

		if GetEntityHealth(Ped) > 100 then
			exports["dynamic"]:AddButton("Salvar","Guardar as roupas do corpo.","player:Outfit","salvar","outfit",true)
			exports["dynamic"]:AddButton("Remover","Remover as roupas salvas.","player:Outfit","remover","outfit",true)
			exports["dynamic"]:SubMenu("Gerenciar Outfits","Mudança de roupas rápidas.","outfit")

			local Clothes,Services = vSERVER.GetInfos()

			if json.encode(Clothes) ~= "[]" then
				exports["dynamic"]:SubMenu("Outfits Salvos","Trajes Salvos.","saveOutfits")
				for k,v in pairs(Clothes) do
					exports["dynamic"]:AddButton(k,"Vestir Outfit.","player:saveOutfits",k,"saveOutfits",true)
				end
			end

			exports["dynamic"]:AddButton("Chapéu","Colocar/Retirar o chapéu.","player:Outfit","Hat","clothes",true)
			exports["dynamic"]:AddButton("Máscara","Colocar/Retirar a máscara.","player:Outfit","Mask","clothes",true)
			exports["dynamic"]:AddButton("Óculos","Colocar/Retirar o óculos.","player:Outfit","Glasses","clothes",true)
			exports["dynamic"]:AddButton("Camisa","Colocar/Retirar a camisa.","player:Outfit","Shirt","clothes",true)
			exports["dynamic"]:AddButton("Jaqueta","Colocar/Retirar a jaqueta.","player:Outfit","Jacket","clothes",true)
			exports["dynamic"]:AddButton("Mãos","Ajustas as mãos.","player:Outfit","Arms","clothes",true)
			exports["dynamic"]:AddButton("Colete","Colocar/Retirar o colete.","player:Outfit","Vest","clothes",true)
			exports["dynamic"]:AddButton("Calça","Colocar/Retirar a calça.","player:Outfit","Pants","clothes",true)
			exports["dynamic"]:AddButton("Sapatos","Colocar/Retirar o sapato.","player:Outfit","Shoes","clothes",true)
			exports["dynamic"]:SubMenu("Roupas","Colocar/Retirar roupas.","clothes")

			local Vehicle = vRP.ClosestVehicle(7)
			local LastVehicle = GetLastDrivenVehicle()	
			if IsEntityAVehicle(Vehicle) then
				if not IsPedInAnyVehicle(Ped) then
					local Model = GetEntityModel(LastVehicle)
					if (Model == `flatbed` or Model == `flatbed3` or Model == `guinchopmesp` or Model == `energyguinchowcg` or Model == `Eguinchoover`) and not IsPedInAnyVehicle(Ped) then
						exports["dynamic"]:AddButton("Rebocar","Colocar o veículo na prancha.","towdriver:invokeTow","","others",false)
					end

					local ClosestPeds = vRP.ClosestPed(3)
					if ClosestPeds then
						exports["dynamic"]:AddButton("Colocar no Veículo","Colocar no veículo mais próximo.","player:cvFunctions","cv","closestpeds",true)
						exports["dynamic"]:AddButton("Remover do Veículo","Remover do veículo mais próximo.","player:cvFunctions","rv","closestpeds",true)

						exports["dynamic"]:SubMenu("Jogador","Pessoa mais próxima de você.","closestpeds")
					end
				else
					exports["dynamic"]:AddButton("Sentar no Motorista","Sentar no banco do motorista.","player:seatPlayer","0","vehicle",false)
					exports["dynamic"]:AddButton("Sentar no Passageiro","Sentar no banco do passageiro.","player:seatPlayer","1","vehicle",false)
					exports["dynamic"]:AddButton("Sentar em Outros","Sentar no banco do passageiro.","player:seatPlayer","2","vehicle",false)
					exports["dynamic"]:AddButton("Levantar Vidros","Levantar os vidros.","player:winsFunctions","1","vehicle",true)
					exports["dynamic"]:AddButton("Abaixar Vidros","Abaixar os vidros.","player:winsFunctions","0","vehicle",true)
					exports["dynamic"]:AddButton("Informações","Informações.","engine:vehTuning","","vehicle",false)
					
					
					exports["dynamic"]:SubMenu("Veículo","Funções do veículo.","vehicle")
				end
				exports["dynamic"]:AddButton("Porta do Motorista","Abrir porta do motorista.","player:Doors","1","doors",true)
				exports["dynamic"]:AddButton("Porta do Passageiro","Abrir porta do passageiro.","player:Doors","2","doors",true)
				exports["dynamic"]:AddButton("Porta Traseira Esquerda","Abrir porta traseira esquerda.","player:Doors","3","doors",true)
				exports["dynamic"]:AddButton("Porta Traseira Direita","Abrir porta traseira direita.","player:Doors","4","doors",true)
				exports["dynamic"]:AddButton("Porta-Malas","Abrir porta-malas.","player:Doors","5","doors",true)
				exports["dynamic"]:AddButton("Capô","Abrir capô.","player:Doors","6","doors",true)

				exports["dynamic"]:SubMenu("Portas","Portas do veículo.","doors")
			end

			exports["dynamic"]:AddButton("Propriedades","Marcar/Desmarcar propriedades no mapa.","propertys:Blips","","others",false)
			exports["dynamic"]:AddButton("Armazéns","Marcar/Desmarcar armazéns no mapa.","warehouse:Blips","","others",false)
			exports["dynamic"]:AddButton("Ferimentos","Verificar ferimentos no corpo.","paramedic:Injuries","","others",false)
			exports["dynamic"]:AddButton("Desbugar","Recarregar o personagem.","barbershop:Debug","","others",true)

			exports["dynamic"]:SubMenu("Serviços","Bater Ponto.","services")

			for k,v in pairs(Services) do
				exports["dynamic"]:AddButton(v,"Entrar em serviço.","service:Enter",v,"services",true)
			end

			exports["dynamic"]:SubMenu("Outros","Todas as funções do personagem.","others")

			if GetResourceState("heyy_houses") == "started" then
				local house = exports["heyy_houses"]:getNearestProperty(15.0)
				if house then
					local pData = exports.heyy_houses:getPropertyData(house)
					local garageIdentifier = pData.garageIdentifier or house
					exports["dynamic"]:AddButton("Garagem", "Adicionar/Reajustar a garagem.", "heyy_houses:setGarage", garageIdentifier, "propertys", true)
					exports["dynamic"]:SubMenu("Propriedades","Funções relacionadas aos imóveis.","propertys")
				end
				
			end

			exports["dynamic"]:openMenu()
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TENCODEFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tencodeFunctions",function()
	if GetEntityHealth(PlayerPedId()) <= 101 then return end
	if (LocalPlayer["state"]["Police"]) and not IsPauseMenuActive() then
		if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not menuOpen and LocalPlayer["state"]["Route"] < 900000 then

			if LocalPlayer["state"]["Police"] then
				exports["dynamic"]:AddButton("QTI","Deslocamento.","dynamic:Tencode","1",false,true)
				exports["dynamic"]:AddButton("QTH","Localização.","dynamic:Tencode","2",false,true)
				exports["dynamic"]:AddButton("QRR","Apoio com prioridade.","dynamic:Tencode","3",false,true)
				exports["dynamic"]:AddButton("QRT","Oficial desmaiado/ferido.","dynamic:Tencode","4",false,true)
			end

			exports["dynamic"]:openMenu()
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- EMERGENCYFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("emergencyFunctions",function()
	if (LocalPlayer["state"]["Police"] or LocalPlayer["state"]["Paramedico"] or LocalPlayer["state"]["Oab"] or LocalPlayer["state"]["Bombeiro"]) and not IsPauseMenuActive() then
		if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not menuOpen and LocalPlayer["state"]["Route"] < 900000 then

			local Ped = PlayerPedId()
			if GetEntityHealth(Ped) > 100 then
				if LocalPlayer["state"]["Police"] or LocalPlayer["state"]["Paramedico"] or LocalPlayer["state"]["Bombeiro"] or LocalPlayer["state"]["Oab"] then
					if not IsPedInAnyVehicle(Ped) then
						exports["dynamic"]:AddButton("Anunciar","Fazer um anúncio para todos.","dynamic:EmergencyAnnounce","Police",false,true)

						exports["dynamic"]:AddButton("Remover Chapéu","Remover da pessoa mais próxima.","skinshop:Remove","Hat","player",true)
						exports["dynamic"]:AddButton("Remover Máscara","Remover da pessoa mais próxima.","skinshop:Remove","Mask","player",true)
						exports["dynamic"]:AddButton("Remover Óculos","Remover da pessoa mais próxima.","skinshop:Remove","Glasses","player",true)

						exports["dynamic"]:AddButton("Carregar","Carregar a pessoa mais próxima.","player:carryPlayer","","player",true)
						exports["dynamic"]:AddButton("Colocar no Veículo","Colocar no veículo mais próximo.","player:cvFunctions","cv","player",true)
						exports["dynamic"]:AddButton("Remover do Veículo","Remover do veículo mais próximo.","player:cvFunctions","rv","player",true)
						exports["dynamic"]:SubMenu("Jogador","Pessoa mais próxima de você.","player")
					end

					if LocalPlayer["state"]["Police"] then
						exports["dynamic"]:AddButton("Computador","Computador de bordo Policial.","heyy_mdt:openUI","",false,false)
					end
					if LocalPlayer["state"]["Oab"] then
						exports["dynamic"]:AddButton("Computador","Computador de bordo Policial.","heyy_mdt:openUI","",false,false)
					end

					if GetResourceState('heyy_houses'):find('start') then
						if LocalPlayer.state.Pc and exports.heyy_houses:getNearestProperty(4.0) then 
							exports["dynamic"]:AddButton("Invadir","Invada a residência mais próxima.","dynamic:invadeProperty","",false,true)
						end
					end
				end

				exports["dynamic"]:openMenu()
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KEYMAPPING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterKeyMapping("globalFunctions","Abrir menu principal.","keyboard","F9")
RegisterKeyMapping("tencodeFunctions","Abrir menu de chamados Policeis.","keyboard","F3")
RegisterKeyMapping("emergencyFunctions","Abrir menu de emergencial.","keyboard","F10")
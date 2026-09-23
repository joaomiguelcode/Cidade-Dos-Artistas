-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("tablet")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Open = "Santos"
local InitVehicles = {}
local Logo = "http://181.215.236.140/logo/logo.png"
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Cars = {}
local Bikes = {}
local Rental = {}
CreateThread(function()
	local Vehicles = VehicleGlobal()

	for Index,v in pairs(Vehicles) do
		if v["Mode"] == "cars" then
			Cars[#Cars + 1] = { k = Index, name = v["Name"], price = v["Price"], chest = v["Weight"], tax = v["Price"] * 0.10 }
		elseif v["Mode"] == "bikes" then
			Bikes[#Bikes + 1] = { k = Index, name = v["Name"], price = v["Price"], chest = v["Weight"], tax = v["Price"] * 0.10 }
		elseif v["Mode"] == "rental" then
			Rental[#Rental + 1] = { k = Index, name = v["Name"], price = v["Gems"], chest = v["Weight"], tax = v["Price"] * 0.10 }
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TABLET:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("tablet:Open")
AddEventHandler("tablet:Open",function(Select)
	if LocalPlayer["state"]["Route"] < 900000 then
		local Ped = PlayerPedId()
		if not LocalPlayer["state"]["Buttons"] and not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and GetEntityHealth(Ped) > 100 then
			Open = Select
			SetNuiFocus(true,true)
			SetCursorLocation(0.5,0.5)
			SendNUIMessage({
                action = 'setVisible',
                data = 'cars'
            })
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TABLET:LOGO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("getLogoUrl", function(data, cb)
    cb(Logo)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("hideFrame",function(Data,Callback)
	SetNuiFocus(false,false)
	SetCursorLocation(0.5,0.5)
    SendNUIMessage({
        action = 'setVisible',
        data = false
    })

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CARROS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("getCars",function(Data,Callback)
	Callback(Cars)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MOTOS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("getMotorcycles",function(Data,Callback)
	Callback(Bikes)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ALUGUEL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("getVips",function(Data,Callback)
	Callback(Rental)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("buyVehicle",function(Data,Callback)
    TriggerEvent("tablet:Close")
	vSERVER.Buy(Data["spawn"])
	SetNuiFocus(false,false)
	SetCursorLocation(0.5,0.5)
    SendNUIMessage({
        action = 'setVisible',
        data = false
    })
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RENTAL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("buyVIP",function(Data,Callback)
    TriggerEvent("tablet:Close")
	vSERVER.RentalDiamonds(Data["spawn"])
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RENTAL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("buyVehicleWithDiamonds",function(Data,Callback)
    TriggerEvent("tablet:Close")
	vSERVER.RentalDiamonds(Data["spawn"])
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TABLET:CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("tablet:Close")
AddEventHandler("tablet:Close",function()
    SetNuiFocus(false,false)
    SetCursorLocation(0.5,0.5)
    SendNUIMessage({
        action = 'setVisible',
        data = false
    })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRIVEABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local vehDrive = nil
local benDrive = false
local benCoords = { 0.0,0.0,0.0 }
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRIVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("testDrive",function(Data,Callback)
    SetNuiFocus(false,false)
    SetCursorLocation(0.5,0.5)
    SendNUIMessage({
        action = 'setVisible',
        data = false
    })
	if vSERVER.startDrive() then
		local Ped = PlayerPedId()
		local Coords = GetEntityCoords(Ped)
		benCoords = { Coords["x"],Coords["y"],Coords["z"] }

		LocalPlayer["state"]["Race"] = true
		LocalPlayer["state"]["Commands"] = true
		TriggerEvent("Notify","azul","Teste iniciado, para finalizar saia do veículo.",5000)

		Wait(1000)

		vehCreate(Data["spawn"])
		benDrive = true
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHCREATE
-----------------------------------------------------------------------------------------------------------------------------------------
function vehCreate(vehName)
    local Ped = PlayerPedId()
	if LoadModel(vehName) then
        vehDrive = CreateVehicle(vehName,1592.71,3630.6,35.15,28.35,false,false)
		SetModelAsNoLongerNeeded(vehName)
		SetEntityInvincible(vehDrive,true)
		SetPedIntoVehicle(Ped,vehDrive,-1)
        SetVehicleModKit(veh,0)
        TriggerServerEvent("CleanVehicle",VehToNet(vehDrive))
        benDrive = true
        local TestDriveTimer = GetGameTimer() + 1000*60*5
        CreateThread(function()
            while benDrive do
                DisableControlAction(1,69,false)
                if GetGameTimer() >= TestDriveTimer then
                    Wait(100)
                    benDrive = false
                    vSERVER.removeDrive()
                    LocalPlayer["state"]["Race"] = false
                    LocalPlayer["state"]["Commands"] = false
                    SetEntityCoords(Ped,benCoords[1],benCoords[2],benCoords[3],false,false,false,false)
    
                    if DoesEntityExist(vehDrive) then
                        DeleteEntity(vehDrive)
                    end
                end
                if not IsPedInAnyVehicle(Ped) then
                    Wait(100)
                    benDrive = false
                    vSERVER.removeDrive()
                    LocalPlayer["state"]["Race"] = false
                    LocalPlayer["state"]["Commands"] = false
                    SetEntityCoords(Ped,benCoords[1],benCoords[2],benCoords[3],false,false,false,false)
    
                    if DoesEntityExist(vehDrive) then
                        DeleteEntity(vehDrive)
                    end
                end
                Wait(1)
            end
        end)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADVEHICLES
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local Ped = PlayerPedId()
		local Coords = GetEntityCoords(Ped)
        local Idle = 1000
        if Vehicles then
            for i=1,#Vehicles do
                local Distance = #(Coords - Vehicles[i]["Coords"])
                if Distance <= Vehicles[i]["Distance"] then
                    if not InitVehicles[i] then
                        if LoadModel(Vehicles[i]["Model"]) then
                            local Colors = Vehicles[i]["Colors"] or vector3(0,0,0)
                            InitVehicles[i] = CreateVehicle(Vehicles[i]["Model"],Vehicles[i]["Coords"],Vehicles[i]["Heading"],false,false)
                            SetVehicleCustomPrimaryColour(InitVehicles[i],Colors)
                            SetVehicleCustomSecondaryColour(InitVehicles[i],Colors)
                            SetVehicleNumberPlateText(InitVehicles[i],"BASE")
                            FreezeEntityPosition(InitVehicles[i],true)
                            SetVehicleDoorsLocked(InitVehicles[i],2)
                            SetModelAsNoLongerNeeded(Vehicles[i]["Model"])
                            SetVehicleEngineOn(InitVehicles[i],false,false,true)

                            if Vehicles[i]["Rotation"] then
                                SetEntityRotation(InitVehicles[i],Vehicles[i]["Rotation"],2,true)
                            end

                            if Vehicles[i]["Color"] then
                                SetVehicleCustomPrimaryColour(InitVehicles[i],Vehicles[i]["Color"][1],Vehicles[i]["Color"][2],Vehicles[i]["Color"][3])
                            end

                            -- Verifica se o veículo deve ter a sirene ligada
                            if Vehicles[i]["Siren"] then
                                SetVehicleSiren(InitVehicles[i], Vehicles[i]["Siren"])
                            end
                        end
                    else
                        if Vehicles[i]["Rotate"] then
                            Idle = 5
                            SetEntityHeading(InitVehicles[i],GetEntityHeading(InitVehicles[i])+0.10)
                        end
                    end
                else
                    if InitVehicles[i] then
                        if DoesEntityExist(InitVehicles[i]) then
                            DeleteEntity(InitVehicles[i])
                            InitVehicles[i] = nil
                        end
                    end
                end
            end
        end

		Wait(Idle)
	end
end)

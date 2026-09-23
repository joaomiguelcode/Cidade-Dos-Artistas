function ClosestVehicles(Radius)
	local Ped = PlayerPedId()
	local Radius = Radius + 0.0001
	local Coords = GetEntityCoords(Ped)
	local GamePool = GetGamePool("CVehicle")
	local Vehicles = {}

	for _,Entity in pairs(GamePool) do
		local EntityCoords = GetEntityCoords(Entity)
		local EntityDistance = #(Coords - EntityCoords)

		if EntityDistance < Radius then
			Vehicles[#Vehicles + 1] = Entity
		end
	end

	return Vehicles
end

local nearestTrunk = false

CreateThread(function()
    while true do
        local sleep = 1000
        local ped = PlayerPedId()
        local pcoords = GetEntityCoords(ped)
        local pvehicle = GetVehiclePedIsIn(ped)
        local vehicleClass = GetVehicleClass(pvehicle)
        local nearestVehicles = ClosestVehicles(10.0)
        for k,v in pairs(nearestVehicles) do
            local vehicle = v
            local vehicleName = GetEntityArchetypeName(vehicle)
            if vehicleName:find("carretinha") then 
                local coordsVehicle = GetEntityCoords(vehicle)
                local distance = #(pcoords - coordsVehicle)
                if distance <= coordsAttach[vehicleName].distance then
                    sleep = 4
                    if IsControlJustPressed(0, 38) then
                        if IsPedInAnyVehicle(ped) then
                            if coordsAttach[vehicleName].class[vehicleClass] then
                                TriggerServerEvent("vehicleAttach", VehToNet(vehicle), VehToNet(pvehicle), coordsAttach[vehicleName].maxVehicle)
                            end
                        else
                            TriggerServerEvent("vehicleDettach", VehToNet(vehicle))
                        end
                    end
                end
            end
        end
        Wait(sleep)
    end
end)

AddStateBagChangeHandler("attached", nil, function(bagName, key, value) 
    local sender = GetEntityFromStateBagName(bagName)
    if (sender == 0) then return end
    if value then
        FreezeEntityPosition(sender, true)
    else
        DetachEntity(sender,false,false)
        SetEntityCoords(sender,GetOffsetFromEntityInWorldCoords(sender,-2.50,-1.25,-0.25))
        FreezeEntityPosition(sender, false)
    end
end)

AddStateBagChangeHandler("attach", nil, function(bagName, key, value) 
    local sender = GetEntityFromStateBagName(bagName)
    if (sender == 0) then return end
    if #value <= 0 or not value then return end
    local index = #value
    value = value[index]
    local vehicle = NetworkGetEntityFromNetworkId(value.vehicle)
    local vehicleAttach = NetworkGetEntityFromNetworkId(value.vehicleAttach)
    if Entity(vehicleAttach).state.attach then return end
    local vehicleName = GetEntityArchetypeName(vehicle)
    AttachEntityToEntity(vehicleAttach, vehicle, 0, coordsAttach[vehicleName].coords[index], vec3(0.0,0.0,0.0), true, true, false, false, 0, true)
    FreezeEntityPosition(vehicleAttach,true)
end)

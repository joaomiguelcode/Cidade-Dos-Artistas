-- RegisterCommand('extra',function(source,args)
--     local ped = PlayerPedId()
--     local vehicle = GetVehiclePedIsIn(ped)
--     if vehicle then
--         if not args[1] then
--             local str = 'Disponiveis:\n'
--             for i = 1,12 do
--                 local exist = DoesExtraExist(vehicle,i)
--                 if exist then
--                     local status = IsVehicleExtraTurnedOn(vehicle,i)
--                     local syntax = status and 'Ativado' or 'Desativado'
--                     str = str..'Extra '..i..' '..syntax..'\n'
--                 end
--             end
--             TriggerEvent('Notify','sucesso',str,5000)
--         else
--             local value = parseInt(args[1])
--             if value > 0 then
--                 local status = IsVehicleExtraTurnedOn(vehicle,value)
--                 SetVehicleExtra(vehicle,value,status and 1 or 0)
--                 local syntax = not status and 'Ativado' or 'Desativado'
--                 TriggerEvent('Notify','sucesso','Extra '..value..' foi '..syntax,5000)
--             end
--         end
--     end
-- end) 

function useVehList(radius)
    local veh, _, plate = vRP.VehicleList(5.0)
    repeat
        veh, _, plate = vRP.VehicleList(5.0)
        Wait(500)
    until plate == GetVehicleNumberPlateText(veh)
    return GetEntityArchetypeName(veh)
end

function onMechanicApply(netId)
    -- funcao para poder por animaçao etc
end




--[[ 
    CASO QUEIRA VALIDAR ALGUMA PERMISSAO EM UM CODIGO NESTE BLOCO USE

    if vSERVER.checkCustomPerm(perm) then

        
    end
]]
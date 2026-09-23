ResourceName = ResourceName or GetCurrentResourceName()

function AddCommands()
    -- Manobra
    local execute_stunts = {
        command = "manobras",
        keymapping = true,
    }

    CreateStunts(execute_stunts)

    -- Modo manobras
    local stunts = {
        active = true,
        command = "manobras",
        suggestion = {
            active = true,
            event = "chat:addSuggestion",
            description = "Modo manobras",
        }
    }

    if stunts.active then
        RegisterCommand(stunts.command, function()
            StartStunts()
        end)

        if stunts.suggestion.active then
            TriggerEvent(stunts.suggestion.event, stunts.command, stunts.suggestion.description)
        end
    end
    ------------

    -- Cancelar manobra
    local cancel_stunts = {
        active = true,
        command = "cmanobra",
        keybind = "0",
        suggestion = {
            active = true,
            event = "chat:addSuggestion",
            description = "Cancelar manobras",
        }
    }

    if cancel_stunts.active then
        RegisterCommand(cancel_stunts.command, function()
            CancelStunts()
        end)

        RegisterKeyMapping(cancel_stunts.command, cancel_stunts.suggestion.description, "keyboard", cancel_stunts
            .keybind)

        if cancel_stunts.suggestion.active then
            TriggerEvent(cancel_stunts.suggestion.event, cancel_stunts.command, cancel_stunts.suggestion.description)
        end
    end
end

function Notify(status, message, time)
    time = time or 3000
    message = Translate(message)

    local standalone = true
    local event = "Notify"
    local types = {
        success = "sucesso",
        failed = "negado",
        warning = "aviso",
    }

    if not standalone then
        TriggerEvent(event, types[status], message, time)
    else
        local title = status
        local color = "~w~"

        if status == "success" then
            title = "notify.success"
            color = "~g~"
        elseif status == "failed" then
            title = "notify.failed"
            color = "~r~"
        elseif status == "warning" then
            title = "notify.warning"
            color = "~y~"
        end

        local title = string.format("%s%s~w~", color, Translate(title))

        SetNotificationTextEntry("STRING")
        AddTextComponentSubstringPlayerName(title .. ": " .. message)
        DrawNotification(false, false)
    end
end

RegisterNetEvent(ResourceBaseEvent("Notify"), Notify)

function DrawText3D(coords, text)
    local onScreen, _x, _y = World3dToScreen2d(coords.x, coords.y, coords.z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 370
    DrawRect(_x, _y + 0.0125, 0.001 + factor, 0.03, 0, 0, 0, 100)
end

function DrawTextHelp(text)
    AddTextEntry(ResourceName, text)
    DisplayHelpTextThisFrame(ResourceName, false)
end

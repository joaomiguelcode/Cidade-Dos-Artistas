-- casinoUi: Client-side NUI handler
-- Handles showing/hiding the casino UI overlay

-- Show the UI with a given action and text
RegisterNetEvent('casinoUi:ShowUI')
AddEventHandler('casinoUi:ShowUI', function(action, text)
	if type(action) ~= 'string' then return end
	SendNUIMessage({
		action = action,
		text = text or ''
	})
end)

-- Hide the UI
RegisterNetEvent('casinoUi:HideUI')
AddEventHandler('casinoUi:HideUI', function()
	SendNUIMessage({
		action = 'hide'
	})
end)

-- Exported function to show the UI
function DrawCasinoUi(action, text)
	if type(action) ~= 'string' then return end
	SendNUIMessage({
		action = action,
		text = text or ''
	})
end

-- Exported function to hide the UI
function HideCasinoUi()
	SendNUIMessage({
		action = 'hide'
	})
end



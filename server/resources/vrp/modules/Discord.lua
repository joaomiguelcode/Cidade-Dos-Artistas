-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCORD WEBHOOKS
-----------------------------------------------------------------------------------------------------------------------------------------
Discords = {
	["Login"] = "",
	["Connect"] = "",
	["Disconnect"] = "",
	["Airport"] = "",
	["Deaths"] = "",
	["Anticheat"] = "",
	["Gemstone"] = "",
	["Admin"] = "",
	["Money"] = "",
	["Bans"] = "",
	["Arsenal"] = "",
	["Vehicles"] = ""
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCORD EVENT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Discord", function(Channel, Message, Color)
	local Endpoint = Discords[Channel]
	if Endpoint and Endpoint ~= "" then
		PerformHttpRequest(Endpoint, function(err, text, headers) end, "POST", json.encode({
			embeds = {
				{
					title = "LOG: " .. tostring(Channel),
					description = tostring(Message),
					color = Color or 3092790,
					footer = {
						text = os.date("%d/%m/%Y às %H:%M:%S")
					}
				}
			}
		}), { ["Content-Type"] = "application/json" })
	end
end)

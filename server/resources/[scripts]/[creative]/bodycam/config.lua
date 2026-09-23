Config = {}
--TEST
--untest
-- IMPOSSIBILITADO DE UTILIZAR TARGET NO MOMENTO
Config.UseTarget = false -- Set to true to use Third-Eye, otherwise false
Config.Webhook = "https://discord.com/api/webhooks/1244330285512785981/XfJdsDjOQ2j0QwSSNj6jDJvMs5ZS2x0A-JPC6X1PQr3HZwZ1fWj4lUHkEc4Aapoe-Gyx"

-- If true displays bodycam overlay on the wearer of the bodycam's screen when bodycam is turned on
Config.SelfOverlay = true

Config.PlayBeep = true
Config.BeepSound = "beepbeep.wav"

-- Config.ItemName is the actual name of the item. Add the body cam item to any shop or armory as you please or you can give yourself the item
-- with /giveitem ID body_cam 1
-- If you're using qb-inventory then the item will be added automatically, No need to add it to shared/items.lua
-- Config.ItemName = "body_cam"
-- Config.ItemName = "water"
-- Config.ItemLabel = "Bodycam"
-- Config.ItemImage = "bcam.png"
-- Config.ItemDescription = "It's a bodycam"
-- Config.ItemWeight = 1;
-- If you're using ox_inventory you must add the item like this
--[[
    Add the Item to ox_inventory/data/items.lua, values must match above to work properly
    ["body_cam"] = {
		weight = 1,
		stack = false,
		close = false,
		description = "It's a bodycam",
		client = {
			image = "bcam.png",
		}
	},
]]--

-- Image displayed at top right while watching bodycam, image must be in the messy-bodycam folder
Config.CustomImage = "xion.png"
--[[ 
Add additional jobs here, job = the job name in qb-core/shared/jobs.lua,
display is the text you want to display on the menu,
and grade is the grade required to see body cams 
]]--
--Examples:
--['police']  = {job = "police", display = "Police", grade = 0}, 
--['lcpd']  = {job = "lcpd", display = "LCPD", grade = 0},
--['lcso']  = {job = "lcso", display = "LCSO", grade = 0},
Config.Jobs = {
    ['Militar']  = {job = "Militar", display = "Militar", grade = 0},
}

-- The Locations to access Body Cam menu, job is the required job from Config.Jobs above
Config.Locations = {
    { coords = vector3(395.54,-2107.47,21.23) },
    { coords = vector3(395.29,-2090.76,21.23) },
    { coords = vector3(399.57,-2085.62,21.23) },
    { coords = vector3(399.06,-2103.07,28.44) },
}

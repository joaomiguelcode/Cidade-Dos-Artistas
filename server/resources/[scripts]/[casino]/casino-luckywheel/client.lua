local car, h
local _wheel, _base, _lights1, _lights2, _arrow1, _arrow2 = nil, nil, nil, nil, nil, nil

-- Helper: Load a model with timeout
local function safeRequestModel(model, timeoutMs)
    timeoutMs = timeoutMs or 5000
    local start = GetGameTimer()
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(10)
        if GetGameTimer() - start > timeoutMs then
            TriggerEvent("Notify","aviso",'Falha ao carregar o modelo: '..tostring(model),5000)
            return false
        end
    end
    return true
end

-- Helper: Create an object with error handling
local function safeCreateObject(model, x, y, z, heading)
    if not safeRequestModel(model) then return nil end
    local obj = CreateObject(model, x, y, z, false, false, true)
    if not obj or obj == 0 then
        TriggerEvent("Notify","aviso",'Falha ao criar o objeto: '..tostring(model),5000)
        return nil
    end
    SetEntityHeading(obj, heading)
    SetModelAsNoLongerNeeded(model)
    return obj
end

local m1a = GetHashKey('vw_prop_vw_luckylight_off')
local m1b = GetHashKey('vw_prop_vw_luckylight_on')
local m2a = GetHashKey('vw_prop_vw_jackpot_off')
local m2b = GetHashKey('vw_prop_vw_jackpot_on')
	
local _wheelPos = Config.WheelPos
local _isRolling = false

CreateThread(function()
	RequestScriptAudioBank("DLC_VINEWOOD\\CASINO_GENERAL", false)
	local model1 = GetHashKey('vw_prop_vw_luckywheel_02a')
	local model2 = GetHashKey('vw_prop_vw_luckywheel_01a')
	local podiumModel = GetHashKey('vw_prop_vw_casino_podium_01a')
	CreateThread(function()
		ClearArea(Config.WheelPos.x, Config.WheelPos.y, Config.WheelPos.z, 5.0, true, false, false, false)
		_wheel = safeCreateObject(model1, Config.WheelPos.x, Config.WheelPos.y, Config.WheelPos.z, Config.WheelPos.h)
		_base = safeCreateObject(model2, Config.WheelPos.x, Config.WheelPos.y, Config.WheelPos.z-0.26, Config.WheelPos.h)
		_lights1 = safeCreateObject(m1a, Config.WheelPos.x, Config.WheelPos.y, Config.WheelPos.z+0.35, Config.WheelPos.h)
		_lights2 = safeCreateObject(m1b, Config.WheelPos.x, Config.WheelPos.y, Config.WheelPos.z+0.35, Config.WheelPos.h)
		if _lights2 then SetEntityVisible(_lights2, false, 0) end
		_arrow1 = safeCreateObject(m2a, Config.WheelPos.x, Config.WheelPos.y, Config.WheelPos.z+2.5, Config.WheelPos.h)
		_arrow2 = safeCreateObject(m2b, Config.WheelPos.x, Config.WheelPos.y, Config.WheelPos.z+2.5, Config.WheelPos.h)
		if _arrow2 then SetEntityVisible(_arrow2, false, 0) end
		if _wheel then h = GetEntityRotation(_wheel) end
		-- Notify if any object failed
		if not (_wheel and _base and _lights1 and _lights2 and _arrow1 and _arrow2) then
			TriggerEvent("Notify","aviso",'A Roleta da Sorte falhou ao iniciar. Chame um administrador.',5000)
		end
	end)
end)

CreateThread(function()
    local LuckyWheelZone = CircleZone:Create(vector3(949.71, 45.1, 70.9), 2.5, {
        name="LuckyWheelZone",
        heading=328.0,
        debugPoly=false,
        useZ=true,
    })
    LuckyWheelZone:onPlayerInOut(function(isPointInside)
        if isPointInside then

			exports.target:AddCircleZone("LuckyWheel",vec3(949.391, 44.72, 71.638),2.0,{
				name = "LuckyWheel",
				heading = 3374176
			},{
				Distance = 2.0,
				options = {
					{
						tunnel = "client",
						event = "luckywheel:client:startWheel",
						icon = "fas fa-sync-alt",
						label = "Tente a Sorte",
					},
				}
			})
        end
    end)
end)

RegisterNetEvent("luckywheel:client:startWheel", function() 
	TriggerServerEvent("luckywheel:getwheel")
end) 

RegisterNetEvent("luckywheel:syncanim", function()
	doRoll(0)
end)

RegisterNetEvent("luckywheel:startroll", function(s, index, p)
	Wait(1000)
	SetEntityVisible(_lights1, false, 0)
	SetEntityVisible(_lights2, true, 0)
	win = (index - 1) * 18 + 0.0
	local j = 360
	if s == GetPlayerServerId(PlayerId()) then
		PlaySoundFromEntity(-1, "Spin_Start", _wheel, 'dlc_vw_casino_lucky_wheel_sounds', 1, 1)
	end
	for i=1,1100,1 do
		SetEntityRotation(_wheel, h.x, j+0.0, h.z, 0, false)
		if i < 50 then
			j = j - 1.5
		elseif i < 100 then
			j = j - 2.0
		elseif i < 150 then
			j = j - 2.5
		elseif i > 1060 then
			j = j - 0.3
		elseif i > 1030 then
			j = j - 0.6
		elseif i > 1000 then
			j = j - 0.9
		elseif i > 970 then
			j = j - 1.2
		elseif i > 940 then
			j = j - 1.5
		elseif i > 910 then
			j = j - 1.8
		elseif i > 880 then
			j = j - 2.1
		elseif i > 850 then
			j = j - 2.4
		elseif i > 820 then
			j = j - 2.7
		else
			j = j - 3.0
		end
		if i == 850 then j = math.random(win-4, win+10) + 0.0 end
		if j > 360 then j = j + 0 end
		if j < 0 then j = j + 360 end
		Wait(0)
	end
	Wait(300)
	SetEntityVisible(_arrow1, false, 0)
	SetEntityVisible(_arrow2, true, 0)
	local t = true
	if s == GetPlayerServerId(PlayerId()) then
		if p.sound == 'car' then
			PlaySoundFromEntity(-1, "Win_Car", _wheel, 'dlc_vw_casino_lucky_wheel_sounds', 1, 1)
		elseif p.sound == 'cash' then
			PlaySoundFromEntity(-1, "Win_Cash", _wheel, 'dlc_vw_casino_lucky_wheel_sounds', 1, 1)
		elseif p.sound == 'chips' then
			PlaySoundFromEntity(-1, "Win_Chips", _wheel, 'dlc_vw_casino_lucky_wheel_sounds', 1, 1)
		elseif p.sound == 'clothes' then
			PlaySoundFromEntity(-1, "Win_Clothes", _wheel, 'dlc_vw_casino_lucky_wheel_sounds', 1, 1)
		elseif p.sound == 'mystery' then
			PlaySoundFromEntity(-1, "Win_Mystery", _wheel, 'dlc_vw_casino_lucky_wheel_sounds', 1, 1)
		else
			PlaySoundFromEntity(-1, "Win", _wheel, 'dlc_vw_casino_lucky_wheel_sounds', 1, 1)
		end
	end
	for i=1,15,1 do
		Wait(200)
		SetEntityVisible(_lights1, t, 0)
		SetEntityVisible(_arrow2, t, 0)
		t = not t
		SetEntityVisible(_lights2, t, 0)
		SetEntityVisible(_arrow1, t, 0)
		if i == 5 then
			if s == GetPlayerServerId(PlayerId()) then
				TriggerServerEvent('luckywheel:give', s, p)
			end
		end
	end
	Wait(1000)
	SetEntityVisible(_lights1, true, 0)
	SetEntityVisible(_lights2, false, 0)
	SetEntityVisible(_arrow1, true, 0)
	SetEntityVisible(_arrow2, false, 0)
	TriggerServerEvent('luckywheel:stoproll')
end)

RegisterNetEvent("luckywheel:rollFinished", function() 
    _isRolling = false
end)

function doRoll(index)
    if not _isRolling then
		lib.hideTextUI()
        _isRolling = true
        local playerPed = PlayerPedId()
        local _lib = 'anim_casino_a@amb@casino@games@lucky7wheel@female'
        if IsPedMale(playerPed) then
            _lib = 'anim_casino_a@amb@casino@games@lucky7wheel@male'
        end
        local lib, anim = _lib, 'enter_right_to_baseidle'

		if LoadAnim(lib) then
			local _movePos = GetObjectOffsetFromCoords(GetEntityCoords(_base), GetEntityHeading(_base),-0.9, -0.8, -1.0)
            TaskGoStraightToCoord(playerPed,  _movePos.x,  _movePos.y,  _movePos.z,  1.0,  3000,  GetEntityHeading(_base),  0.0)
            local _isMoved = false
            while not _isMoved do
                local coords = GetEntityCoords(PlayerPedId())
                if coords.x >= (_movePos.x - 0.01) and coords.x <= (_movePos.x + 0.01) and coords.y >= (_movePos.y - 0.01) and coords.y <= (_movePos.y + 0.01) then
                    _isMoved = true
                end
                Wait(0)
            end
			SetEntityHeading(playerPed, GetEntityHeading(_base))
            TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
            while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
				Wait(0)
				DisableAllControlActions(0)
            end
            TaskPlayAnim(playerPed, lib, 'enter_to_armraisedidle', 8.0, -8.0, -1, 0, 0, false, false, false)
            while IsEntityPlayingAnim(playerPed, lib, 'enter_to_armraisedidle', 3) do
                Wait(0)
                DisableAllControlActions(0)
            end
            TaskPlayAnim(playerPed, lib, 'armraisedidle_to_spinningidle_high', 8.0, -8.0, -1, 0, 0, false, false, false)
            Wait(4800)
            TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_STRIP_WATCH_STAND", 0, true)
			Wait(4800)
			ClearPedTasks(playerPed)
        end
    end
end

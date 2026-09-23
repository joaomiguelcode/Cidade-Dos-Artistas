lib.locale('en')

cfg = {}
cfg.framework = 'auto'             -- 'auto' | 'qb' | 'esx'
cfg.target = false               -- 'auto' | 'ox' | 'qb' | false
cfg.minigame = 'ox_lib'            -- 'rm_minigames' | 'ox_lib' | 'qb-minigames' | 'ps-ui' | 'bl_ui' | false
cfg.notification = 'ox_lib'        -- 'ox_lib' | 'qb' | 'esx' | 'okokNotify' | 'ps-ui'
cfg.textUI = 'ox_lib'              -- 'ox_lib' | 'esx' | 'qb' | 'okokTextUI' | 'jg-textui'
cfg.vehiclelock = 'auto'           -- 'auto' | false | 'qb-vehiclekeys' | 'wasabi_carlock' | 'qs-vehiclekeys' | 'cd_garage' | 'Renewed-Vehiclekeys' | 'okokGarage' | 't1ger_keys' | 'MrNewbVehicleKeys'

cfg.driverKillDispatchChance = 100   -- number -- Chance to send dispatch notification when front seat passenger dies
cfg.safeOpenedDispatchChance = 100 -- number -- Chance to send dispatch notification when the back case is opened

cfg.interaction = {
    controlId = 38,
    text = 'E',
    colors = {
        background = { r = 241, g = 93, b = 56, a = 255 },
        text = { r = 226, g = 232, b = 240, a = 255 },
    },
}

cfg.drillingSpeed = 0.02
cfg.drillingDistance = 0.8

cfg.truckReward = {
    money = { 200000, 400000 }, -- number | table -- {1, 10} = Random amount between 1 and 10
    moneyType = 'cash',       -- 'cash' | 'money' | 'black_money'

    -- gives the items on the list to one of the collectors, depending on the chance
    items = {
        chance = 0, -- chance to get items, setting it to 0 ensures that it gives no items
        list = {
            ['goldbar'] = {
                chance = 50,
                amount = { 1, 10 }, -- number | table -- {1, 10} = Random amount between 1 and 10
            },
        },
    },
}
cfg.enableMultiplePersonCollect = true -- allows collecting the safe with more than one person, the time starts from the first person who starts collecting, the money is divided by the number of people

cfg.truckModel = `stockade`
cfg.truckPassengerModel = `mp_m_securoguard_01`
cfg.truckPassengerWeapon = `WEAPON_SMG`
cfg.truckPassengerHealth = 200
cfg.truckPassengerArmor = 100

cfg.enableOldMethodForPoliceCount = false -- not recommended, all players' jobs are checked one by one
cfg.requiredPoliceCountForSpawn = 35

cfg.autoTruckSpawn = false            -- boolean -- If set to true, trucks will spawn automatically, the option to take a mission from the menu will not appear. Players need to find the trucks themselves.
cfg.truckAutoSpawnInterval = 10       -- minute
cfg.maxNumberOfTrucksNotRobbed = 1    -- No new trucks will spawn if the number of trucks not robbed reaches this limit.
cfg.manuelTruckSpawnCooldown = 15      -- minute -- only works if auto truck spawn is disabled, waiting time after one player learns the truck location before another player can learn the location

cfg.enableBlipsForNearbyTrucks = true -- boolean -- If there is a truck within 400 units of you, truck blips will start appearing

-- not recommended, blips of auto-spawned trucks appear without getting stuck in the 400 unit limit,
-- but it is bad for optimization and makes the learn truck location option pointless, available for debug
cfg.enableGlobalTruckBlips = false -- boolean

cfg.targetTruckBlip = {
    sprite = 67,
    color = 47,
    scale = 0.9,
}

-- -- item check to get location from npc when auto spawn is off
-- cfg.requiredItemsForManuelSpawn = {
--     ['bandage'] = {
--         label = 'Bandage',
--         count = 1,
--         remove = true
--     },
-- }

cfg.c4DetonationDuration = 30     -- seconds
cfg.hackingDuration = 30          -- seconds
cfg.gassingDuration = 30          -- seconds
cfg.rewardCollectingDuration = 20 -- seconds
cfg.showLocationDuration = 3      -- minutes
cfg.cooldownPerPlayer = 30         -- minutes -- players who open the safe cannot take new jobs during this period, cannot collect money from someone else's robbed safe

cfg.serversideSpawn = false

if not lib.checkDependency('ox_lib', '3.23.1') then print('^3[WARN] ox_lib version 3.23.1 or higher is required for the script to run stably, please update') end
if not lib.checkDependency('rm_tools', '1.1.5') then print('^3[WARN] rm_tools version 1.1.5 or higher is required for the script to run stably, please update') end

lib.load('data.npcs')
lib.load('data.prices')
lib.load('data.offsets')

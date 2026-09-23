Config = {
    GeneralDebug = false, -- Enables or disables debugging.
    UseLeaderboard = true, -- Enables or disables the use of a leaderboard to track players' table tennis scores.
    EnableBetting = false, -- Allows or disallows betting on table tennis matches.
    BettingInventoryName = nil, -- "money", etc. Specifies the name of the in-game currency that players can use to bet on table tennis matches.
    MinBet = 1000, -- Specifies the minimum amount of in-game currency players can bet on their table tennis match.
    MaxBet = 20000, -- Sets the maximum amount of in-game currency that players can bet on a table tennis match.
    BetStep = 1000, -- Determines the increment step for adjusting the bet amount during betting.
    PlayerIdentifier = "steam", -- Identifies the player using their license or a specified identifier.

    Keys = {
        ActionKey = 38, -- Key code for performing actions in the game.
        LeaveKey = 177, -- Key code for leaving the table tennis game.
        MouseLock = 244, -- Key code for locking/unlocking the mouse during gameplay.
        RequestTop = 182, -- Key code for requesting the top players' scores.
        CameraTilt = 26 -- Key code for tilting the in-game camera.
    },
    -- All key codes can be found at: https://docs.fivem.net/docs/game-references/controls/

    -- Target
    UseTarget = false, -- whether to use target zones or not
    TargetZoneType = 4, -- 1: q_target, 2: bt_target, 3: qb-target, 4: ox_target

    Locale = "pt", -- Sets the language/locale for in-game text and messages. Check `translation.lua` for available locales.
    SpawnDistance = 30.0, -- Sets the maximum distance at which table tennis objects (specified in "Objects") can spawn from the player. If the player's distance exceeds this value, the tables will despawn.

    -- Enable rcore_stats? (https://store.rcore.cz/package/6273968)
    Rcore_Stats = GetResourceState("rcore_stats") ~= "missing",

    -- Spawns the table tennis objects in the game world.
    -- Color variations can be found at: https://documentation.rcore.cz/paid-resources/rcore_pingpong/spawning-a-pong-table
    Objects = {{
        pos = vector3(-1719.719360, -1116.799194, 12.152875),
        heading = 318.5,
        model = "prop_table_tennis"
    }, {
        pos = vector3(-1722.715210, -1114.148804, 12.152875),
        heading = 318.5,
        model = "prop_table_tennis"
    }, {
        pos = vector3(-1477.696, -954.5209, 9.20347),
        heading = 318.0 + 90.0,
        model = "prop_table_tennis"
    }, {
        pos = vector3(39.75943, 537.7939, 174.8531),
        heading = 110.0,
        model = "prop_table_tennis"
    }, {
        pos = vector3(-589.0319, 105.8244, 67.19884),
        heading = 0.0,
        model = "prop_table_tennis"
    }},

    -- Models that are used for games against AI.
    AIModels = {
        "mp_f_deadhooker",
        "s_f_y_hooker_01",
        "s_f_y_movprem_01",
        "s_m_y_baywatch_01",
        "s_m_y_clown_01",
        "s_m_y_mime",
        "ig_amandatownley",
        "ig_denise",
        "ig_djblamryans",
        "ig_kerrymcintosh",
        "ig_lifeinvad_01",
        "ig_money",
    },
    -- All models can be found at: https://docs.fivem.net/docs/game-references/ped-models/

    -- Framework
    ESXResourceName = "es_extended",
    QBCoreResourceName = "qb-core"
}

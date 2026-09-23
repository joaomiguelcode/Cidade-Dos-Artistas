cfg.truckDrillOffsets = {
    vec3(-0.76, -3.52, 0.62),
    vec3(0.76, -3.52, 0.62),
    -- vec3(-0.76, -3.52, 1.26),
    -- vec3(0.76, -3.52, 1.26),
    -- vec3(-0.76, -3.52, 1.89),
    -- vec3(0.76, -3.52, 1.89),
}

cfg.truckAttachments = {
    money1 = {
        pos = vec3(-0.355, -3.091, 0.453),
        rot = vec3(0, 0, 0),
        model = `prop_cash_crate_01`,
    },
    money2 = {
        pos = vec3(0.3789, -3.091, 0.453),
        rot = vec3(0, 0, 0),
        model = `prop_cash_crate_01`,
    },
    money3 = {
        pos = vec3(-0.355, -2.330, 0.453),
        rot = vec3(0, 0, 0),
        model = `prop_cash_crate_01`,
    },
    money4 = {
        pos = vec3(0.3789, -2.330, 0.453),
        rot = vec3(0, 0, 0),
        model = `prop_cash_crate_01`,
    },

    [cfg.items.c4] = {
        pos = {
            [1] = vec3(0.010, -3.515, 0.88), -- start pos
            [2] = vec3(-0.01, -3.715, 0.68), -- finish pos
        },
        rot = vec3(0, 270.0, 0),
        model = `prop_bomb_01_s`,
    },
    [cfg.items.hackdevice] = {
        pos = {
            [1] = vec3(-0.1, -3.535, 0.88),
            [2] = vec3(0.10, -3.735, 0.68),
        },
        rot = vec3(0, 0, 90.0),
        model = `hei_prop_heist_card_hack`,
    },
    [cfg.items.gastank] = {
        pos = {
            [1] = vec3(0.387, -3.68, 0.957),
            [2] = vec3(-0.35, -3.88, 0.757),
        },
        rot = vec3(0, 0, 90.0),
        model = `qua_heist_gas_pump`,
    },
}

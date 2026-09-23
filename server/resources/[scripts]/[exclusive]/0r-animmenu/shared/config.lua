Config = {
    ServerCallbacks = {}, -- Don't edit or change
    MenuKey = 'F4',
    PropTimeout = 2000,
    AllowMovement = true, -- By activating this, you enable the player to move while the menu is open.
    AnimPosForAllAnimations = true,
    MaxDistanceForAnimPos = 15.0,
    CancelWalk = true, -- Resets movement type when using the /e c command
    EnableXtoCancel = true,  -- Set this to false if you have something else on X (default X), and then just use /e c to cancel emotes.
    CancelEmoteKey = 'F6', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    AllowedInCars = true, -- Set this if you really wanna disable emotes in cars, as of 1.7.2 they only play the upper body part if in vehicle
    QuickPrimaryKey = 'LSHIFT', -- The primary key name to be used to play the quick animations, for example, the key you specify and the quick animation number to be played will be pressed (LSHIFT + 1, LSHIFT + 2). Check here for more keys https://docs.fivem.net/docs/game-references/controls/.
    -- Pointing
    PointingEnabled = false,
    PointingKeybind = 'B',
    -- Crouching
    CrouchingEnabled = false, -- Default Key (Left CTRL)
    -- Ragdoll
    RagdollEnabled = false,
    RagdollKeybind = 'U',
    Notify = function(text, length, type)
        TriggerEvent('Notify', "amarelo", text, 5000)
    end,
    -- Hands Up (Hands Up key is same with CancelEmoteKey)
    EnableHandsUp = false,
    CanHandsup = function()
        if LocalPlayer["state"]["Handcuff"] then return false end
        return true
    end,
    HandsupDisableControls = function()
        -- Example usage for qb-smallresources
        if GetResourceState('qb-smallresources') == "started" then
            exports['qb-smallresources']:addDisableControls({24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264})
        end
    end,
    HandsupEnableControls = function()
        -- Example usage for qb-smallresources
        if GetResourceState('qb-smallresources') == "started" then
            exports['qb-smallresources']:removeDisableControls({24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264})
        end
    end,
    -- Text UI Functions
    Create3DTextUIOnPlayer = function(name, data)
        exports['0r-textui']:create3DTextUIOnPlayers(name, data)
    end,
    Delete3DTextUIOnPlayer = function(name)
        exports['0r-textui']:delete3DTextUIOnPlayers(name, data)
    end,
    ShowTextUI = function(name, key)
        exports["0r-textui"]:displayTextUI(name, key)
    end,
    HideTextUI = function()
        exports["0r-textui"]:hideTextUI()
    end,
    AnimalPeds = {
        "a_c_boar",
        "a_c_cat_01",
        "a_c_chickenhawk",
        "a_c_chimp",
        "a_c_chop",
        "a_c_cormorant",
        "a_c_cow",
        "a_c_coyote",
        "a_c_crow",
        "a_c_deer",
        "a_c_dolphin",
        "a_c_fish",
        "a_c_hen",
        "a_c_humpback",
        "a_c_husky",
        "a_c_killerwhale",
        "a_c_mtlion",
        "a_c_pig",
        "a_c_pigeon",
        "a_c_poodle",
        "a_c_pug",
        "a_c_rabbit_01",
        "a_c_rat",
        "a_c_retriever",
        "a_c_rhesus",
        "a_c_rottweiler",
        "a_c_seagull",
        "a_c_sharkhammer",
        "a_c_sharktiger",
        "a_c_shepherd",
        "a_c_stingray",
        "a_c_westy"
    }
}
cfg = {}
cfg.framework = 'auto'                 -- auto | qb | esx
cfg.inventory = 'auto'                 -- auto | ox_inventory | qb-inventory | origen_inventory | ak47_inventory

cfg.enableDurability = false           -- Enable or disable the durability system -- only works for the above inventories
cfg.durabilityReduction = 5            -- How much durability should decrease?
cfg.durabilityReductionInterval = 5000 -- Interval (in ms) for durability reduction (e.g., 5000 = every 5 seconds)

cfg.tools = {
    weld = 'WEAPON_WELD',
    drill = 'WEAPON_DRILL',
}

cfg.disableParticles = false

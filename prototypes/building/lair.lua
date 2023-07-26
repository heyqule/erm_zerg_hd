---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 6/12/2022 7:43 PM
---

local ERM_UnitTint = require('__enemyracemanager__/lib/rig/unit_tint')
require('__erm_zerg__/global')
require('util')
local ErmConfig = require('__enemyracemanager__/lib/global_config')
local SharedFunction = require('__erm_zerg_hd__/prototypes/shared_functions')
local AnimationDB = require('__erm_zerg_hd_assets__/animation_db')

--- Change name
local name = 'lair'
local unit_scale = 0.5

--- Change collision / selection box in case the scale not match
--- Changing collision box may affect unit pathing.. Be careful when you change it.
local collision_box = { { -3, -3.5 }, { 3.2, 3 } }
local map_generator_bounding_box = { { -4, -4.5 }, { 4.2, 4 } }
local selection_box = { { -3, -3.5 }, { 3.2, 3 } }

--- This function convert classic to HD graphic
--- i is the level of the unit.
local convert_to_hd = function(i)
    --- Buildings are either unit-spawner or turret for enemies.
    local unit = data.raw["unit-spawner"][MOD_NAME..'/'.. name ..'/'.. i]

    unit['animations'] = AnimationDB.get_layered_animations('buildings', name, 'run')

    unit['collision_box'] = collision_box
    unit['selection_box'] = selection_box
    unit['sticker_box'] = selection_box
    unit['map_generator_bounding_box'] = map_generator_bounding_box
    unit['spawn_decoration'] = SharedFunction.getSpawnerCreep()
end

--- Convert regular building, level 1 - 20
local max_level = ErmConfig.MAX_LEVELS

for i = 1, max_level do
    convert_to_hd(i)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 6/12/2022 7:43 PM
---

local ERM_UnitTint = require('__enemyracemanager__/lib/rig/unit_tint')
require('__erm_zerg__/global')
require('util')
local ErmConfig = require('__enemyracemanager__/lib/global_config')

--- Change name
local name = 'spawning_pool'
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

    unit['animations'] = {
        layers = {
            {
                filename = "__erm_zerg_hd__/graphics/entity/buildings/" .. name .. "/" .. name .. ".png",
                width = 386,
                height = 531,
                frame_count = 4,
                animation_speed = 0.18,
                direction_count = 1,
                run_mode = "forward-then-backward",
                scale = unit_scale
            },
            {
                filename = "__erm_zerg_hd__/graphics/entity/buildings/" .. name .. "/" .. name .. ".png",
                width = 386,
                height = 531,
                frame_count = 4,
                animation_speed = 0.18,
                direction_count = 1,
                run_mode = "forward-then-backward",
                scale = unit_scale,
                draw_as_shadow = true,
                shift = { 0.25, 0.1 },
            }
        }
    }

    unit['collision_box'] = collision_box
    unit['selection_box'] = selection_box
    unit['sticker_box'] = selection_box


end

--- Convert regular building, level 1 - 20
local max_level = ErmConfig.MAX_LEVELS

for i = 1, max_level do
    convert_to_hd(i)
end

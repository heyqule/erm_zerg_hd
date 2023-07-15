---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 7/12/2023 7:43 PM
---

local ERM_UnitTint = require('__enemyracemanager__/lib/rig/unit_tint')
require('__erm_zerg__/global')
require('util')
local ErmConfig = require('__enemyracemanager__/lib/global_config')

local name = 'ultralisk'
local unit_scale = 0.54

--- Change collision box in case the scale not match
--- Changing collision box may affect unit pathing.. Be careful when you change it.
local collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } }
local selection_box = { { -1, -1 }, { 1, 1 } }

--- This function convert classic to HD graphic
--- i is the level of the unit.
local convert_to_hd = function(i)
    --- Get the data block
    local unit = data.raw["unit"][MOD_NAME..'/'.. name ..'/'.. i]

    --- Replace running animation
    unit['run_animation'] = {
        layers = {
            {
                filename = "__erm_zerg_hd__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
                width = 426,
                height = 387,
                frame_count = 5,
                axially_symmetrical = false,
                direction_count = 16,
                scale = unit_scale,
                animation_speed = 0.3,
            },
            {
                filename = "__erm_zerg_hd__/graphics/entity/units/" .. name .. "/" .. name .. "-run.png",
                width = 426,
                height = 382,
                frame_count = 5,
                axially_symmetrical = false,
                direction_count = 16,
                scale = unit_scale,
                tint = ERM_UnitTint.tint_shadow(),
                draw_as_shadow = true,
                animation_speed = 0.3,
                shift = {0.2, 0}
            }
        }
    }

    --- Replace attack animation
    unit['attack_parameters']['animation'] = {
        layers = {
            {
                filename = "__erm_zerg_hd__/graphics/entity/units/" .. name .. "/" .. name .. "-attack.png",
                width = 451,
                height = 453,
                frame_count = 5,
                axially_symmetrical = false,
                direction_count = 16,
                scale = unit_scale,
                animation_speed = 0.25
            },
            {
                filename = "__erm_zerg_hd__/graphics/entity/units/" .. name .. "/" .. name .. "-attack.png",
                width = 451,
                height = 453,
                frame_count = 5,
                axially_symmetrical = false,
                direction_count = 16,
                scale = unit_scale,
                tint = ERM_UnitTint.tint_shadow(),
                draw_as_shadow = true,
                animation_speed = 0.25,
                shift = {0.2, 0}
            }
        }
    }

    unit['collision_box'] = collision_box
    unit['selection_box'] = selection_box
    unit['sticker_box'] = selection_box

end

--- This fixes the corpse texture to HD one
local convert_corpse = function()
    --- Get the data block
    local corpse = data.raw["corpse"][name .. '-corpse']

    --- Replace the animation
    corpse['animation'] = {
        filename = "__erm_zerg_hd__/graphics/entity/units/" .. name .. "/" .. name .. "-death.png",
        width = 542,
        height = 564,
        frame_count = 11,
        direction_count = 1,
        axially_symmetrical = false,
        scale = unit_scale,
        animation_speed = 0.1
    }

end

--- Convert regular units, level 1 - 25
local max_level = ErmConfig.MAX_LEVELS

for i = 1, max_level + ErmConfig.MAX_ELITE_LEVELS do
    convert_to_hd(i)
end

--- Convert boss units
local boss_level = ErmConfig.BOSS_LEVELS

for i = 1, #boss_level do
    convert_to_hd(boss_level[i])
end

--- Convert the corpse graphic
convert_corpse()
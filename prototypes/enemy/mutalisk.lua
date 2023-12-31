---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 7/12/2023 7:43 PM
---

local ERM_UnitTint = require('__enemyracemanager__/lib/rig/unit_tint')
require('__erm_zerg__/global')
require('util')
local ErmConfig = require('__enemyracemanager__/lib/global_config')
local AnimationDB = require('__erm_zerg_hd_assets__/animation_db')

local name = 'mutalisk'


--- Change collision box in case the scale not match
--- Changing collision box may affect unit pathing.. Be careful when you change it.
local collision_box = { { -0.25, -0.25 }, { 0.25, 0.25 } }
local selection_box = { { -0.75, -0.75 }, { 0.75, 0.75 } }

--- This function convert classic to HD graphic
--- i is the level of the unit.
local convert_to_hd = function(i)
    --- Get the data block
    local unit = data.raw["unit"][MOD_NAME..'/'.. name ..'/'.. i]

    --- Replace running animation
    unit['run_animation'] = AnimationDB.get_layered_animations('units', name, 'run')

    --- Replace attack animation
    unit['attack_parameters']['animation'] = AnimationDB.get_layered_animations('units', name, 'run')

    unit['collision_box'] = collision_box
    unit['selection_box'] = selection_box
    unit['sticker_box'] = selection_box
    unit['distance_per_frame'] = 0.4
end

--- This fixes the corpse texture to HD one
local convert_corpse = function()
    --- Get the data block
    local corpse = data.raw["explosion"][MOD_NAME .. '/' .. name .. '-air-death']

    --- Replace the animation
    corpse['animation'] = AnimationDB.get_single_animation('units', name, 'corpse')

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
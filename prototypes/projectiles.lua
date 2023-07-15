---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 7/14/2023 12:41 AM
---
require('__erm_zerg__/global')
local ErmConfig = require('__enemyracemanager__/lib/global_config')

local mutalisk_proj = data.raw['projectile']['mutalisk-projectile']
mutalisk_proj['animation'] = {
    filename = "__erm_zerg_hd__/graphics/entity/projectiles/spores_1.png",
    frame_count = 10,
    width = 168,
    height = 146,
    priority = "high",
    scale = 0.5,
    run_mode = 'forward-then-backward'
}

local hydralisk_proj = data.raw['projectile']['hydralisk-projectile']
hydralisk_proj['animation'] = {
    filename = "__erm_zerg_hd__/graphics/entity/projectiles/hydra_pr.png",
    frame_count = 1,
    width = 78,
    height = 148,
    priority = "high",
    animation_speed = 0.2,
    scale = 0.4
}

local guardian_proj = data.raw['projectile']['guardian-projectile']
guardian_proj['animation'] = {
    filename = "__erm_zerg_hd__/graphics/entity/projectiles/spores_2.png",
    priority = "extra-high",
    width = 107,
    height = 108,
    frame_count = 4,
    animation_speed = 0.2,
    scale = 0.5
}

local lurker_explosion = data.raw['explosion']['lurker-explosion']
lurker_explosion['animation'] = {
    {
        filename = "__erm_zerg_hd__/graphics/entity/projectiles/lurker_spike.png",
        priority = "extra-high",
        width = 674,
        height = 556,
        frame_count = 7,
        animation_speed = 0.2,
        scale = 0.75,
        run_mode = "forward-then-backward",
    }
}

local colony_explosion = data.raw['explosion']['colony-explosion']
colony_explosion['animation'] = {
    layers = {
        {
            filename = "__erm_zerg_hd__/graphics/entity/projectiles/colony_spike.png",
            priority = "extra-high",
            width = 736,
            height = 537,
            frame_count = 6,
            animation_speed = 0.2,
            scale = 0.5,
            run_mode = "forward-then-backward",
        },
        {
            filename = "__erm_zerg_hd__/graphics/entity/projectiles/colony_spike.png",
            priority = "extra-high",
            width = 736,
            height = 537,
            frame_count = 6,
            animation_speed = 0.2,
            scale = 0.5,
            draw_as_shadow = true,
            shift = { 0.15, 0.1 },
            run_mode = "forward-then-backward",
        }
    }
}

local mutalisk_explosion = data.raw['explosion']['mutalisk-explosion-small']
mutalisk_explosion['animation'] = {
    {
        filename = "__erm_zerg_hd__/graphics/entity/projectiles/mutalisk_explosion.png",
        priority = "extra-high",
        width = 158,
        height = 263,
        frame_count = 10,
        animation_speed = 0.2,
        scale = 1
    }
}

local hydralisk_explosion = data.raw['explosion']['hydralisk-explosion-small']
hydralisk_explosion['animation'] = {
    {
        filename = "__erm_zerg_hd__/graphics/entity/projectiles/hydra_acid.png",
        priority = "extra-high",
        width = 170,
        height = 171,
        line_length = 8,
        frame_count = 8,
        animation_speed = 0.2,
        scale = 0.4
    }
}

local blood_cloud_explosion = data.raw['explosion']['blood-cloud-explosion']
blood_cloud_explosion['animation'] = {
    {
        filename = "__erm_zerg_hd__/graphics/entity/projectiles/defiler_blood.png",
        priority = "extra-high",
        width = 682,
        height = 594,
        frame_count = 12,
        animation_speed = 0.2,
        scale = 0.5
    }
}

local dark_swam_80 = data.raw['explosion']['dark-swarm-80-explosion']
dark_swam_80['animation'] = {
    {
        filename = "__erm_zerg_hd__/graphics/entity/projectiles/darkswarm-80.png",
        priority = "extra-high",
        width = 256,
        height = 256,
        frame_count = 155,
        frame_sequence = {1,2,3,4,5,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,5,4,3,2,1}, -- 3 seconds
        animation_speed = 0.2,
        scale = 2
    }
}

local dark_swam = data.raw['explosion']['dark-swarm-explosion']
dark_swam['animation'] = {
    {
        filename = "__erm_zerg_hd__/graphics/entity/projectiles/darkswarm-80.png",
        priority = "extra-high",
        width = 256,
        height = 256,
        frame_count = 155,
        frame_sequence = {1,2,3,4,5,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,7,8,9,10,9,8,7,6,5,4,3,2,1}, -- 3 seconds
        animation_speed = 0.2,
        scale = 2
    }
}

local acid_cloud = data.raw['explosion']['acid-cloud-explosion']
acid_cloud['animation'] = {
    {
        filename = "__erm_zerg_hd__/graphics/entity/projectiles/snare.png",
        priority = "extra-high",
        width = 596,
        height = 743,
        frame_count = 13,
        animation_speed = 0.2,
        scale = 0.5
    }
}

local devourer_cloud = data.raw['explosion']['devourer-cloud-explosion']
devourer_cloud['animation'] = {
    {
        filename = "__erm_zerg_hd__/graphics/entity/projectiles/devourer_puke_hit.png",
        priority = "extra-high",
        width = 462,
        height = 475,
        frame_count = 10,
        animation_speed = 0.2,
        scale = 0.375
    }
}

--local scourge_explosion = data.raw['explosion']['scourge-explosion']
--scourge_explosion['animation'] = {
--    {
--        filename = "__erm_zerg_hd__/graphics/entity/projectiles/scourge_explosion.png",
--        priority = "extra-high",
--        width = 200,
--        height = 202,
--        frame_count = 9,
--        animation_speed = 0.2,
--        scale = 0.4
--    }
--}

--local unit_blood = data.raw['explosion']['zerg_unit_blood']
--unit_blood['animation'] = {
--    {
--        filename = "__erm_zerg_hd__/graphics/entity/units/death/zerg_unit_blood.png",
--        priority = "extra-high",
--        width = 682,
--        height = 594,
--        frame_count = 12,
--        animation_speed = 0.25,
--        scale = 0.2,
--        draw_as_glow = true
--    }
--}



local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
require("__Ultracube__/prototypes/entities/lib/module_effects")

data:extend({
  {
    type = "corpse",
    name = "cube-dimension-folding-engine-remnant",
    localised_name = {"remnant-name", {"entity-name.cube-dimension-folding-engine"}},
    icon = "__Krastorio2Assets__/icons/entities/antimatter-reactor.png",
    icon_size = 128, icon_mipmaps = 4,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order = "z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1, {
      filename = "__Krastorio2Assets__/entities/remnants/antimatter-reactor/antimatter-reactor-remnant.png",
      line_length = 1,
      width = 300,
      height = 300,
      frame_count = 1,
      direction_count = 1,
      scale = 1.1,
      hr_version = {
        filename = "__Krastorio2Assets__/entities/remnants/antimatter-reactor/hr-antimatter-reactor-remnant.png",
        line_length = 1,
        width = 600,
        height = 600,
        frame_count = 1,
        direction_count = 1,
        scale = 0.55,
      },
    }),
  },
  {
    type = "assembling-machine",
    name = "cube-dimension-folding-engine",
    icon = "__Krastorio2Assets__/icons/entities/antimatter-reactor.png",
    icon_size = 128, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation", "not-rotatable"},
    minable = {mining_time = 2, result = "cube-dimension-folding-engine"},
    max_health = 2000,
    damaged_trigger_effect = hit_effects.entity(),
    corpse = "cube-dimension-folding-engine-remnant",
    dying_explosion = "cube-matter-explosion-s",
    collision_box = {{-4.75, -4.75}, {4.75, 4.75}},
    selection_box = {{-4.95, -4.95}, {4.95, 4.95}},
    animation = {
      layers = {
        {
          filename = "__Krastorio2Assets__/entities/antimatter-reactor/antimatter-reactor-light.png",
          priority = "high",
          width = 330,
          height = 353,
          shift = {0, -0.5},
          frame_count = 1,
          repeat_count = 30,
          animation_speed = 0.9,
          scale = 0.96,
          draw_as_light = true,
          blend_mode = "additive",
          hr_version = {
            filename = "__Krastorio2Assets__/entities/antimatter-reactor/hr-antimatter-reactor-light.png",
            priority = "high",
            width = 660,
            height = 706,
            shift = {0, -0.5},
            frame_count = 1,
            repeat_count = 30,
            animation_speed = 0.9,
            scale = 0.48,
            draw_as_light = true,
            blend_mode = "additive",
          },
        },
        {
          filename = "__Krastorio2Assets__/entities/antimatter-reactor/antimatter-reactor-glow.png",
          priority = "high",
          width = 330,
          height = 353,
          shift = {0, -0.5},
          frame_count = 1,
          repeat_count = 30,
          animation_speed = 0.9,
          scale = 0.96,
          blend_mode = "additive-soft",
          draw_as_glow = true,
          fadeout = true,
          hr_version = {
            filename = "__Krastorio2Assets__/entities/antimatter-reactor/hr-antimatter-reactor-glow.png",
            priority = "high",
            width = 660,
            height = 706,
            shift = {0, -0.5},
            frame_count = 1,
            repeat_count = 30,
            animation_speed = 0.9,
            scale = 0.48,
            blend_mode = "additive-soft",
            draw_as_glow = true,
            fadeout = true,
          },
        },
        {
          filename = "__Krastorio2Assets__/entities/antimatter-reactor/antimatter-reactor.png",
          priority = "high",
          width = 330,
          height = 353,
          shift = {0, -0.5},
          frame_count = 30,
          line_length = 6,
          animation_speed = 0.9,
          scale = 0.96,
          hr_version = {
            filename = "__Krastorio2Assets__/entities/antimatter-reactor/hr-antimatter-reactor.png",
            priority = "high",
            width = 660,
            height = 706,
            shift = {0, -0.5},
            frame_count = 30,
            line_length = 6,
            animation_speed = 0.9,
            scale = 0.48,
          },
        },
        {
          filename = "__Krastorio2Assets__/entities/antimatter-reactor/antimatter-reactor-sh.png",
          width = 362,
          height = 315,
          shift = {0.57, 0.27},
          frame_count = 1,
          repeat_count = 30,
          animation_speed = 0.9,
          scale = 0.96,
          draw_as_shadow = true,
          hr_version = {
            filename = "__Krastorio2Assets__/entities/antimatter-reactor/hr-antimatter-reactor-sh.png",
            width = 724,
            height = 630,
            shift = {0.57, 0.27},
            frame_count = 1,
            repeat_count = 30,
            animation_speed = 0.9,
            scale = 0.48,
            draw_as_shadow = true,
          },
        },
      },
    },
    crafting_categories = {"cube-dimension-folding-engine"},
    scale_entity_info_icon = true,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = {
        {
          filename = "__Krastorio2Assets__/sounds/buildings/antimatter-reactor.ogg",
          volume = 1,
        },
      },
      fade_in_ticks = 5,
      fade_out_ticks = 5,
      -- audible_distance_modifier = 10,
    },
    crafting_speed = 1.0,
    energy_usage = "250MW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0,
      drain = "200KW",
    },

    ingredient_count = 4,
    module_specification = {
      module_slots = 2,
      module_info_icon_shift = {0, 2.5},
      module_info_icon_scale = 1,
    },
    allowed_effects = module_effects.speed_efficiency,
    open_sound = {filename = "__Krastorio2Assets__/sounds/buildings/open.ogg", volume = 1},
    close_sound = {filename = "__Krastorio2Assets__/sounds/buildings/close.ogg", volume = 1},
  },
})
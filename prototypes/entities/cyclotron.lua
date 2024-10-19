local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
require("__Ultracube__/prototypes/entities/lib/pipe")
require("__Ultracube__/prototypes/entities/lib/module_effects")

data:extend({
  {
    type = "corpse",
    name = "cube-cyclotron-remnant",
    localised_name = {"remnant-name", {"entity-name.kr-matter-plant"}},
    icon = "__Krastorio2Assets__/icons/entities/matter-plant.png",
    icon_size = 128,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order = "cube-z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1, {
      filename = "__Krastorio2Assets__/entities/remnants/matter-plant/matter-plant-remnant.png",
      line_length = 1,
      width = 600,
      height = 600,
      frame_count = 1,
      direction_count = 1,
      scale = 0.5,
    }),
  },
  {
    type = "assembling-machine",
    name = "cube-cyclotron",
    icon = "__Krastorio2Assets__/icons/entities/matter-plant.png",
    icon_size = 128, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "cube-cyclotron"},
    max_health = 1200,
    damaged_trigger_effect = hit_effects.entity(),
    corpse = "cube-cyclotron-remnant",
    dying_explosion = "cube-medium-matter-explosion",
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = pipe_path,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.north, position = {0, -3}}},
      },
      {
        production_type = "input",
        pipe_picture = pipe_path,
        pipe_covers = pipecoverspictures(),volume = 1000,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.south, position = {0, 3}}},
      },
      {
        production_type = "input",
        pipe_picture = pipe_path,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.east, position = {3, 0}}},
      },
      {
        production_type = "input",
        pipe_picture = pipe_path,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{flow_direction = "input", direction = defines.direction.west, position = {-3, 0}}},
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    collision_box = {{-3.25, -3.25}, {3.25, 3.25}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    fast_replaceable_group = "assembling-machine",
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__Krastorio2Assets__/entities/matter-plant/matter-plant.png",
            priority = "high",
            width = 462,
            height = 500,
            frame_count = 1,
            shift = {-0.1, -0.2},
            scale = 0.5,
          },
          {
            filename = "__Krastorio2Assets__/entities/matter-plant/matter-plant-sh.png",
            priority = "high",
            width = 504,
            height = 444,
            frame_count = 1,
            draw_as_shadow = true,
            shift = {0.23, 0.24},
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          draw_as_light = true,
          blend_mode = "additive-soft",
          animation = {
            filename = "__Krastorio2Assets__/entities/matter-plant/matter-plant-working-light.png",
            priority = "high",
            width = 462,
            height = 500,
            frame_count = 30,
            line_length = 6,
            shift = {-0.1, -0.2},
            scale = 0.5,
            animation_speed = 1,
          },
        },
        {
          draw_as_glow = true,
          blend_mode = "additive-soft",
          synced_fadeout = true,
          animation = {
            filename = "__Krastorio2Assets__/entities/matter-plant/matter-plant-working-glow.png",
            priority = "high",
            width = 462,
            height = 500,
            frame_count = 30,
            line_length = 6,
            shift = {-0.1, -0.2},
            scale = 0.5,
            animation_speed = 1,
          },
        },
        {
          animation = {
            filename = "__Krastorio2Assets__/entities/matter-plant/matter-plant-working.png",
            width = 462,
            height = 500,
            frame_count = 30,
            line_length = 6,
            shift = {-0.1, -0.2},
            scale = 0.5,
            animation_speed = 1,
          },
        },
      },
    },
    crafting_categories = {"cube-cyclotron"},
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = {filename = "__Krastorio2Assets__/sounds/buildings/matter-plant.ogg"},
      idle_sound = {filename = "__base__/sound/idle1.ogg"},
      apparent_volume = 1.5,
      fade_in_ticks = 5,
      fade_out_ticks = 5,
    },
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {},
      input_flow_limit = "0W",
      drain = "0W",
    },
    energy_usage = "120MW",
    module_slots = 2,
    icon_draw_specification = {scale = 2, shift = {0, -0.3}},
    icons_positioning = {{
      inventory_index = defines.inventory.assembling_machine_modules,
      shift = {0, 1.7},
      scale = 1,
    }},
    allowed_effects = module_effects.fuel_speed_only,
    open_sound = {filename = "__Krastorio2Assets__/sounds/buildings/open.ogg", volume = 1},
    close_sound = {filename = "__Krastorio2Assets__/sounds/buildings/close.ogg", volume = 1},
  },

  {
    type = "electric-energy-interface",
    name = "cube-cyclotron-interface",
    icon = "__Krastorio2Assets__/icons/entities/matter-plant.png",
    icon_size = 128, icon_mipmaps = 4,
    flags = {"not-repairable", "not-rotatable", "not-blueprintable", "not-deconstructable"},
    max_health = 1000,
    collision_mask = {layers = {cube_selectable_composite = true}},
    placeable_by = {item = "cube-cyclotron", count = 1},
    collision_box = {{-3, -1}, {0, 2}},
    selection_box = {{-3, -1}, {0, 2}},
    allow_copy_paste = false,
    selectable_in_game = true,
    hidden = true,

    energy_production = "0W",
    energy_usage = "0W",
    energy_source = {
      type = "electric",
      buffer_capacity = "240MJ",
      usage_priority = "secondary-input",
      input_flow_limit = "3MW",
      emissions_per_minute = {},
      render_no_power_icon = false,
      render_no_network_icon = false,
    },
    animation = util.empty_sprite(),
  },
})
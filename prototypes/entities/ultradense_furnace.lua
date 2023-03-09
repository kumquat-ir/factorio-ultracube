local function furnacepipepictures_a()
  return {
    north = {
      filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace-k-pipe-N.png",
      priority = "extra-high",
      width = 35,
      height = 18,
      shift = util.by_pixel(2.5, 14),
      hr_version = {
        filename = "__Krastorio2Assets__/entities/advanced-furnace/hr-advanced-furnace-k-pipe-N.png",
        priority = "extra-high",
        width = 71,
        height = 38,
        shift = util.by_pixel(2.25, 13.5),
        scale = 0.5,
      },
    },
    east = {
      filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace-k-pipe-E-top.png",
      priority = "extra-high",
      width = 30, --20,
      height = 38,
      shift = util.by_pixel(-29, 1),
      hr_version = {
        filename = "__Krastorio2Assets__/entities/advanced-furnace/hr-advanced-furnace-k-pipe-E-top.png",
        priority = "extra-high",
        width = 59, --42,
        height = 76,
        shift = util.by_pixel(-28.75, 1),
        scale = 0.5,
      },
    },
    south = {
      filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace-k-pipe-S-right.png",
      priority = "extra-high",
      width = 44,
      height = 31,
      shift = util.by_pixel(0, -31.5),
      hr_version = {
        filename = "__Krastorio2Assets__/entities/advanced-furnace/hr-advanced-furnace-k-pipe-S-right.png",
        priority = "extra-high",
        width = 88,
        height = 61,
        shift = util.by_pixel(0, -31.5),
        scale = 0.5,
      },
    },
    west = {
      filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace-k-pipe-W-bottom.png",
      priority = "extra-high",
      width = 19,
      height = 37,
      shift = util.by_pixel(25.5, 1.5),
      hr_version = {
        filename = "__Krastorio2Assets__/entities/advanced-furnace/hr-advanced-furnace-k-pipe-W-bottom.png",
        priority = "extra-high",
        width = 39,
        height = 73,
        shift = util.by_pixel(25.75, 1.25),
        scale = 0.5,
      },
    },
  }
end

local function furnacepipepictures_b()
  return {
    north = {
      filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace-k-pipe-N.png",
      priority = "extra-high",
      width = 35,
      height = 18,
      shift = util.by_pixel(2.5, 14),
      hr_version = {
        filename = "__Krastorio2Assets__/entities/advanced-furnace/hr-advanced-furnace-k-pipe-N.png",
        priority = "extra-high",
        width = 71,
        height = 38,
        shift = util.by_pixel(2.25, 13.5),
        scale = 0.5,
      },
    },
    east = {
      filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace-k-pipe-E-bottom.png",
      priority = "extra-high",
      width = 38, --20,
      height = 38,
      shift = util.by_pixel(-33, 1),
      hr_version = {
        filename = "__Krastorio2Assets__/entities/advanced-furnace/hr-advanced-furnace-k-pipe-E-bottom.png",
        priority = "extra-high",
        width = 76, --42,
        height = 76,
        shift = util.by_pixel(-33, 1),
        scale = 0.5,
      },
    },
    south = {
      filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace-k-pipe-S-left.png",
      priority = "extra-high",
      width = 44,
      height = 31,
      shift = util.by_pixel(0, -31.5),
      hr_version = {
        filename = "__Krastorio2Assets__/entities/advanced-furnace/hr-advanced-furnace-k-pipe-S-left.png",
        priority = "extra-high",
        width = 88,
        height = 61,
        shift = util.by_pixel(0, -31.25),
        scale = 0.5,
      },
    },
    west = {
      filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace-k-pipe-W-top.png",
      priority = "extra-high",
      width = 19,
      height = 42, --37,
      shift = util.by_pixel(25.5, -2.25),
      hr_version = {
        filename = "__Krastorio2Assets__/entities/advanced-furnace/hr-advanced-furnace-k-pipe-W-top.png",
        priority = "extra-high",
        width = 39,
        height = 87, --73,
        shift = util.by_pixel(25.5, -2.25),
        scale = 0.5,
      },
    },
  }
end

local smoke_animations = require("__base__/prototypes/entity/smoke-animations")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

data:extend({
  smoke_animations.trivial_smoke {
    name = "cube-ultradense-furnace-smoke",
    color = {r = 0.4, g = 0.4, b = 0.4, a = 0.4},
    start_scale = 1,
    end_scale = 3,
    duration = 160,
  },
  {
    type = "assembling-machine",
    name = "cube-ultradense-furnace",
    icon = "__Krastorio2Assets__/icons/entities/advanced-furnace.png",
    icon_size = 128,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "cube-ultradense-furnace"},
    max_health = 2000,
    corpse = "cube-big-random-pipes-remnant",
    dying_explosion = "big-explosion",
    collision_box = {{-3.25, -3.25}, {3.25, 3.25}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    damaged_trigger_effect = hit_effects.entity(),
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = furnacepipepictures_a(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {-1, -4}}},
        secondary_draw_orders = {north = -1},
      },
      {
        production_type = "input",
        pipe_picture = furnacepipepictures_b(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {1, -4}}},
        secondary_draw_orders = {north = -1},
      },
      {
        production_type = "input",
        pipe_picture = furnacepipepictures_b(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {-4, -1}}},
        secondary_draw_orders = {north = -1},
      },
      {
        production_type = "input",
        pipe_picture = furnacepipepictures_a(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {4, -1}}},
        secondary_draw_orders = {north = -1},
      },
      {
        production_type = "output",
        pipe_picture = furnacepipepictures_b(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{type = "output", position = {-1, 4}}},
        secondary_draw_orders = {north = -1},
      },
      {
        production_type = "output",
        pipe_picture = furnacepipepictures_a(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{type = "output", position = {1, 4}}},
        secondary_draw_orders = {north = -1},
      },
      {
        production_type = "output",
        pipe_picture = furnacepipepictures_a(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{type = "output", position = {-4, 1}}},
        secondary_draw_orders = {north = -1},
      },
      {
        production_type = "output",
        pipe_picture = furnacepipepictures_b(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{type = "output", position = {4, 1}}},
        secondary_draw_orders = {north = -1},
      },
      off_when_no_fluid_recipe = true,
    },
    animation = {
      layers = {
        {
          filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace.png",
          priority = "high",
          width = 240,
          height = 240,
          shift = {0, -0.1},
          frame_count = 1,
          hr_version = {
            filename = "__Krastorio2Assets__/entities/advanced-furnace/hr-advanced-furnace.png",
            priority = "high",
            width = 480,
            height = 480,
            shift = {0, -0.1},
            frame_count = 1,
            scale = 0.5,
          },
        },
        {
          filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace-sh.png",
          priority = "high",
          scale = scale,
          width = 83,
          height = 240,
          shift = {3.1, -0.1},
          frame_count = 1,
          draw_as_shadow = true,
          hr_version = {
            filename = "__Krastorio2Assets__/entities/advanced-furnace/hr-advanced-furnace-sh.png",
            priority = "high",
            width = 165,
            height = 480,
            shift = {3.1, -0.1},
            frame_count = 1,
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
    },
    working_visualisations = {
      {
        constant_speed = true,
        animation = {
          filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace-anim-light.png",
          priority = "high",
          width = 240,
          height = 240,
          shift = {0, -0.1},
          frame_count = 28,
          line_length = 4,
          animation_speed = 0.8,
          draw_as_light = true,
          hr_version = {
            filename = "__Krastorio2Assets__/entities/advanced-furnace/hr-advanced-furnace-anim-light.png",
            priority = "high",
            width = 480,
            height = 480,
            shift = {0, -0.1},
            frame_count = 28,
            line_length = 4,
            animation_speed = 0.8,
            draw_as_light = true,
            scale = 0.5,
          },
        },
      },
      {
        constant_speed = true,
        animation = {
          filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace-anim-glow.png",
          priority = "high",
          width = 240,
          height = 240,
          shift = {0, -0.1},
          frame_count = 28,
          line_length = 4,
          animation_speed = 0.8,
          draw_as_glow = true,
          fadeout = true,
          blend_mode = "additive",
          hr_version = {
            filename = "__Krastorio2Assets__/entities/advanced-furnace/hr-advanced-furnace-anim-glow.png",
            priority = "high",
            width = 480,
            height = 480,
            shift = {0, -0.1},
            frame_count = 28,
            line_length = 4,
            animation_speed = 0.8,
            draw_as_glow = true,
            fadeout = true,
            blend_mode = "additive",
            scale = 0.5,
          },
        },
      },
      {
        constant_speed = true,
        animation = {
          filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace-anim.png",
          priority = "high",
          width = 240,
          height = 240,
          shift = {0, -0.1},
          frame_count = 28,
          line_length = 4,
          animation_speed = 0.8,
          hr_version = {
            filename = "__Krastorio2Assets__/entities/advanced-furnace/hr-advanced-furnace-anim.png",
            priority = "high",
            width = 480,
            height = 480,
            shift = {0, -0.1},
            frame_count = 28,
            line_length = 4,
            animation_speed = 0.8,
            scale = 0.5,
          },
        },
      },
      {
        constant_speed = true,
        light = {
          intensity = 0.65,
          size = 4,
          shift = {1.29, 2},
          color = {r = 1, g = 0.35, b = 0.2},
        },
      },
    },
    crafting_categories = {"cube-ultradense-smelting"},
    scale_entity_info_icon = true,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      filename = "__Krastorio2Assets__/sounds/buildings/advanced-furnace.ogg",
      volume = 0.50,
      aggregation = {
        max_count = 2,
        remove = false,
        count_already_playing = true,
      },
    },
    idle_sound = {filename = "__base__/sound/idle1.ogg"},
    crafting_speed = 1,
    energy_source = {
      type = "burner",
      fuel_categories = {"cube-cube"},
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      emissions_per_minute = 60,
      smoke = {
        {
          name = "cube-ultradense-furnace-smoke",
          position = util.by_pixel(-24, -100),
          frequency = 20,
          starting_vertical_speed = 1.0 / 16,
          starting_frame_deviation = 60,
        }
      },
      render_no_power_icon = false,
    },

    water_reflection = {
      pictures = {
        filename = "__Krastorio2Assets__/entities/advanced-furnace/advanced-furnace-reflection.png",
        priority = "extra-high",
        width = 80,
        height = 60,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },

    energy_usage = "250MW",
    ingredient_count = 6,
    module_specification = {module_slots = 0, module_info_icon_shift = {0, 1.7}, module_info_icon_scale = 1},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
  },
})
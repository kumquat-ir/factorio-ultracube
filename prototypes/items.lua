data:extend({
  {
    type = "item",
    name = "cube-ultradense-utility-cube",
    icon = "__Krastorio2Assets__/icons/items/matter-cube.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"not-stackable"},
    subgroup = "cube-synthesis-handling",
    order = "0[0-cube]",
    stack_size = 1,

    fuel_category = "cube-cube",
    fuel_value = "1GJ",
    fuel_glow_color = {0.5, 0.5, 1, 1},
    fuel_acceleration_multiplier = 10,
    fuel_top_speed_multiplier = 4,
    burnt_result = "cube-dormant-utility-cube",
  },
  {
    type = "item",
    name = "cube-dormant-utility-cube",
    icon = "__base__/graphics/icons/solid-fuel.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"not-stackable"},
    subgroup = "cube-synthesis-handling",
    order = "0[1-cube]",
    stack_size = 1,
  },

  {
    type = "item",
    name = "cube-condensed-fuel",
    icon = "__base__/graphics/icons/rocket-fuel.png",
    icon_size = 64, icon_mipmaps = 4,
    fuel_category = "cube-fuel-canister",
    fuel_value = "100MJ",
    fuel_acceleration_multiplier = 1.75,
    fuel_top_speed_multiplier = 1.25,
    subgroup = "cube-fuel",
    order = "1[a-condensed-fuel]",
    stack_size = 10,
  },
  {
    type = "item",
    name = "cube-wood-ultralocomotion",
    icon = "__base__/graphics/icons/wood.png",
    icon_size = 64, icon_mipmaps = 4,
    fuel_category = "cube-fuel-general",
    fuel_value = "2MJ",
    fuel_acceleration_multiplier = 10,
    fuel_top_speed_multiplier = 4,
    subgroup = "cube-fuel",
    order = "x[0]",
    stack_size = 1,
    flags = {
      "hidden",
      "hide-from-bonus-gui",
      "hide-from-fuel-tooltip",
    },
  },
  {
    type = "item",
    name = "cube-condensed-fuel-ultralocomotion",
    icon = "__base__/graphics/icons/rocket-fuel.png",
    icon_size = 64, icon_mipmaps = 4,
    fuel_category = "cube-fuel-canister",
    fuel_value = "100MJ",
    fuel_acceleration_multiplier = 10.75,
    fuel_top_speed_multiplier = 4.25,
    subgroup = "cube-fuel",
    order = "x[1]",
    stack_size = 1,
    flags = {
      "hidden",
      "hide-from-bonus-gui",
      "hide-from-fuel-tooltip",
    },
  },

  {
    type = "item",
    name = "cube-basic-matter-unit",
    icon = "__base__/graphics/icons/plastic-bar.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "cube-synthesis-basics",
    order = "0[a-matter-0]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "cube-n-dimensional-widget",
    icon = "__Krastorio2Assets__/icons/items/matter-stabilizer.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "cube-synthesis-advanced",
    order = "0[b-widget-0]",
    stack_size = 50,
  },

  {
    type = "item",
    name = "cube-basic-motor-unit",
    icon = "__base__/graphics/icons/engine-unit.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "cube-components",
    order = "0[a-basic-motor-unit]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "cube-advanced-engine",
    icon = "__Krastorio2Assets__/icons/equipments/vehicle/additional-engine.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "cube-components",
    order = "0[b-advanced-engine]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "cube-electronic-circuit",
    icon = "__Krastorio2Assets__/icons/items/electronic-circuit.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "cube-components",
    order = "0[c-electronic-circuit]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "cube-advanced-circuit",
    icon = "__Krastorio2Assets__/icons/items/advanced-circuit.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "cube-components",
    order = "0[d-advanced-circuit]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "cube-besselheim-flask",
    icon = "__Ultracube__/graphics/flask.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "cube-experimental",
    order = "a[d-besselheim-flask]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "cube-bottled-consciousness",
    icon = "__base__/graphics/icons/space-science-pack.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "cube-experimental",
    order = "b[e-besselheim-flask]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "cube-sophisticated-matter-unit",
    icon = "__Krastorio2Assets__/icons/items/white-reinforced-plate.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "cube-advanced-materials",
    order = "0[sophisticated]",
    stack_size = 100,
  },
})

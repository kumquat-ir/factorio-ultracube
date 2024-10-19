data:extend({
  {
    type = "recipe",
    name = "cube-stone-brick",
    category = "cube-furnace",
    energy_required = 3,
    ingredients = {{type = "item", name = "stone", amount = 4}},
    results = {{type = "item", name = "stone-brick", amount = 2}},
    always_show_made_in = true,
    enabled = false,
  },
  {
    type = "recipe",
    name = "cube-glass",
    category = "cube-furnace",
    energy_required = 4,
    ingredients = {{type = "item", name = "cube-sand", amount = 8}},
    results = {{type = "item", name = "cube-glass", amount = 1}},
    always_show_made_in = true,
    enabled = false,
  },
  {
    type = "recipe",
    name = "cube-spectralite",
    category = "cube-furnace",
    energy_required = 8,
    ingredients = {{type = "item", name = "cube-ghost-crystal", amount = 8}},
    results = {{type = "item", name = "cube-spectralite", amount = 4}},
    always_show_made_in = true,
    enabled = false,
  },

  {
    type = "recipe",
    name = "cube-rare-metals",
    icon = "__Krastorio2Assets__/icons/items-with-variations/rare-metals/rare-metals.png",
    icon_size = 64, icon_mipmaps = 4,
    ingredients = {{type = "item", name = "cube-raw-rare-metals", amount = 500}},
    results = {{type = "item", name = "cube-rare-metals", amount = 250}},
    main_product = "",
    energy_required = 4,
    category = "cube-ultradense-furnace",
    subgroup = "cube-smelting",
    order = "cube-0[rare-metals]",
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = false,
    allow_decomposition = false,
    enabled = false,
  },
  {
    type = "recipe",
    name = "cube-explosive-rare-metals",
    icon = "__Ultracube__/assets/icons/recipe/explosive-smelting.png",
    icon_size = 128,
    ingredients = {
      {type = "item", name = "cube-raw-rare-metals", amount = 6000},
      {type = "item", name = "explosives", amount = 16},
    },
    results = {{type = "item", name = "cube-rare-metals", amount = 2000}},
    main_product = "",
    energy_required = 4,
    category = "cube-ultradense-furnace",
    subgroup = "cube-smelting",
    order = "cube-1[rare-metals]",
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = false,
    allow_decomposition = false,
    enabled = false,
  },
  {
    type = "recipe",
    name = "cube-refined-rare-metals",
    icon = "__Ultracube__/assets/icons/recipe/refined-smelting.png",
    icon_size = 128,
    ingredients = {{type = "item", name = "cube-refined-rare-metals", amount = 1000}},
    results = {{type = "item", name = "cube-rare-metals", amount = 1000}},
    main_product = "",
    energy_required = 4,
    category = "cube-ultradense-furnace",
    subgroup = "cube-smelting",
    order = "cube-2[rare-metals]",
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = false,
    allow_decomposition = false,
    enabled = false,
  },
  {
    type = "recipe",
    name = "cube-rare-metal-crushing",
    icon = "__Krastorio2Assets__/icons/items-with-variations/enriched-rare-metals/enriched-rare-metals.png",
    icon_size = 64, icon_mipmaps = 4,
    ingredients = {{type = "item", name = "cube-raw-rare-metals", amount = 40}},
    results = {
      {type = "item", name = "cube-refined-rare-metals", amount_min = 15, amount_max = 20},
      {type = "item", name = "cube-calcium", amount_min = 0, amount_max = 10},
      {type = "item", name = "stone", amount_min = 0, amount_max = 5},
    },
    energy_required = 4,
    category = "cube-crusher",
    subgroup = "cube-processing",
    order = "cube-a[rare-metal-crushing]",
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = false,
    allow_decomposition = false,
    enabled = false,
  },
  {
    type = "recipe",
    name = "cube-stone-crushing",
    ingredients = {{type = "item", name = "stone", amount = 8}},
    results = {{type = "item", name = "cube-sand", amount = 16}},
    energy_required = 4,
    category = "cube-crusher",
    subgroup = "cube-processing",
    order = "cube-c[stone-crushing]",
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = false,
    allow_decomposition = true,
    enabled = false,
  },
  {
    type = "recipe",
    name = "cube-deep-core-crushing",
    icon = "__Krastorio2Assets__/icons/items-with-variations/imersite-powder/imersite-powder.png",
    icon_size = 64, icon_mipmaps = 4,
    ingredients = {{type = "item", name = "cube-deep-core-ore", amount = 40}},
    results = {
      {type = "item", name = "cube-deep-powder", amount_min = 30, amount_max = 60},
      {type = "item", name = "coal", amount_min = 20, amount_max = 40},
      {type = "item", name = "stone", amount_min = 0, amount_max = 10},
    },
    energy_required = 8,
    category = "cube-crusher",
    subgroup = "cube-processing",
    order = "cube-d[deep-core-crushing]",
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = false,
    allow_decomposition = false,
    enabled = false,
  },
  {
    type = "recipe",
    name = "cube-sand-dilution",
    icon_size = 128,
    icon = "__Ultracube__/assets/icons/recipe/sand-dilution.png",
    ingredients = {
      {type = "fluid", name = "water", amount = 200, catalyst_amount = 200},
      {type = "item", name = "cube-sand", amount = 4},
    },
    results = {{type = "fluid", name = "water", amount = 240, catalyst_amount = 200}},
    energy_required = 4,
    category = "cube-chemical-plant",
    subgroup = "cube-experimental",
    order = "cube-0[a-sand-recycling]",
    main_product = "",
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = false,
    allow_decomposition = false,
    enabled = false,
    crafting_machine_tint = {
      primary = {r = 0.35, g = 0.525, b = 0.65},
      secondary = {r = 0.4, g = 0.5, b = 0.525},
      tertiary = {r = 0.4, g = 0.35, b = 0.3, a = 0.65},
      quaternary = {r = 0.2, g = 0.175, b = 0.15, a = 0.65},
    },
  },
  {
    type = "recipe",
    name = "cube-deep-powder-separation",
    icon_size = 128,
    icon = "__Ultracube__/assets/icons/recipe/deep-powder-separation.png",
    ingredients = {
      {type = "fluid", name = "cube-mineral-water", amount = 400},
    },
    results = {
      {type = "item", name = "cube-deep-powder", amount = 8},
      {type = "item", name = "cube-calcium", amount = 1},
      {type = "fluid", name = "water", amount = 300},
    },
    energy_required = 4,
    category = "cube-chemical-plant",
    subgroup = "cube-experimental",
    order = "cube-0[b-powder-recycling]",
    main_product = "",
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = false,
    allow_decomposition = false,
    enabled = false,
    crafting_machine_tint = {
      primary = {r = 0.35, g = 0.525, b = 0.65},
      secondary = {r = 0.7, g = 0.55, b = 0.8},
      tertiary = {r = 0.4, g = 0.35, b = 0.3, a = 0.65},
      quaternary = {r = 0.2, g = 0.175, b = 0.15, a = 0.65},
    },
  },

  {
    type = "recipe",
    name = "cube-greenhouse-wood",
    icon = "__base__/graphics/icons/wood.png",
    icon_size = 64, icon_mipmaps = 4,
    ingredients = {
      {type = "fluid", name = "water", amount = 400},
    },
    results = {{type = "item", name = "wood", amount = 60}},
    energy_required = 60,
    main_product = "",
    category = "cube-greenhouse",
    subgroup = "cube-fuel",
    order = "cube-0[wood]",
    always_show_made_in = true,
    allow_decomposition = false,
    enabled = false,
  },
  {
    type = "recipe",
    name = "cube-greenhouse-potato",
    icon = "__Krastorio2Assets__/icons/items/potato.png",
    icon_size = 64, icon_mipmaps = 4,
    ingredients = {
      {type = "fluid", name = "water", amount = 400},
    },
    results = {{type = "item", name = "cube-potato", amount = 200}},
    energy_required = 60,
    main_product = "",
    category = "cube-greenhouse",
    subgroup = "cube-fuel",
    order = "cube-1[potato]",
    always_show_made_in = true,
    allow_decomposition = false,
    enabled = false,
  },
  {
    type = "recipe",
    name = "cube-mash",
    ingredients = {{type = "item", name = "cube-potato", amount = 20}},
    results = {{type = "item", name = "cube-mash", amount = 8}},
    energy_required = 4,
    category = "cube-crusher",
    subgroup = "cube-processing",
    order = "cube-b[mash]",
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = false,
    allow_decomposition = true,
    enabled = false,
  },
  {
    type = "recipe",
    name = "cube-uranium-processing",
    icon = "__base__/graphics/icons/uranium-processing.png",
    icon_size = 64, icon_mipmaps = 4,
    ingredients = {{type = "item", name = "uranium-ore", amount = 10}},
    results = {
      {type = "item", name = "cube-uranium-234", probability = 0.0001, amount = 1},
      {type = "item", name = "uranium-235", probability = 0.007, amount = 1},
      {type = "item", name = "uranium-238", probability = 0.993, amount = 1},
    },
    energy_required = 10,
    category = "centrifuging",
    subgroup = "cube-uranium-processing",
    order = "cube-a[uranium-processing]",
    enabled = false,
  },
  {
    type = "recipe",
    name = "cube-kovarex-enrichment-process",
    icon = "__base__/graphics/icons/kovarex-enrichment-process.png",
    icon_size = 64, icon_mipmaps = 4,
    ingredients = {
      {type = "item", name = "cube-uranium-234", amount = 1, catalyst_amount = 1},
      {type = "item", name = "uranium-235", amount = 40, catalyst_amount = 40},
      {type = "item", name = "uranium-238", amount = 5, catalyst_amount = 2},
    },
    results = {
      {type = "item", name = "cube-uranium-234", amount = 3, catalyst_amount = 1},
      {type = "item", name = "uranium-235", amount = 41, catalyst_amount = 40},
      {type = "item", name = "uranium-238", amount = 2, catalyst_amount = 2},
    },
    energy_required = 60,
    category = "centrifuging",
    subgroup = "cube-uranium-processing",
    order = "cube-b[kovarex-processing]",
    allow_decomposition = false,
    enabled = false,
  },
  {
    type = "recipe",
    name = "cube-kovarex-redemption-process",
    icon = "__Ultracube__/assets/icons/recipe/kovarex-redemption-process.png",
    icon_size = 64, icon_mipmaps = 4,
    ingredients = {
      {type = "item", name = "cube-uranium-234", amount = 200},
      {type = "item", name = "uranium-238", amount = 200},
    },
    results = {
      {type = "item", name = "cube-uranium-234", amount_min = 25, amount_max = 300},
      {type = "item", name = "uranium-238", amount_min = 125, amount_max = 300},
      {type = "item", name = "uranium-235", amount_min = 1, amount_max = 3},
      {type = "fluid", name = "cube-radioactive-sludge", amount = 2400},
    },
    energy_required = 4,
    category = "cube-ultradense-furnace",
    subgroup = "cube-uranium-processing",
    order = "cube-c[kovarex-reclamation]",
    allow_decomposition = false,
    enabled = false,
  },
})

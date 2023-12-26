remote.add_interface("ultracube", {
    milestones_presets = function()
        return {
            ["Ultracube: Age of Cube "] = {
                required_mods = {"Ultracube"},
                milestones = {
                  {type="group", name="Science"},
                  {type="item",  name="cube-basic-contemplation-unit",       quantity=1},
                  {type="item",  name="cube-fundamental-comprehension-card", quantity=1},
                  {type="item",  name="cube-abstract-interrogation-card",    quantity=1},
                  {type="item",  name="cube-deep-introspection-card",        quantity=1},
                  {type="item",  name="cube-synthetic-premonition-card",     quantity=1},
                  {type="item",  name="cube-complete-annihilation-card",     quantity=1},
                  {type="item",  name="cube-basic-contemplation-unit",       quantity=1000, next="x10"},
                  {type="item",  name="cube-fundamental-comprehension-card", quantity=1000, next="x10"},
                  {type="item",  name="cube-abstract-interrogation-card",    quantity=1000, next="x10"},
                  {type="item",  name="cube-deep-introspection-card",        quantity=1000, next="x10"},
                  {type="item",  name="cube-synthetic-premonition-card",     quantity=1000, next="x10"},
                  {type="item",  name="cube-complete-annihilation-card",     quantity=1000, next="x10"},

                  {type="group", name="The Cube"},
                  {type="item",  name="cube-ultradense-utility-cube", quantity=100, next="x10"},

                  {type="group", name="Resources"},
                  {type="item",  name="cube-basic-matter-unit",  quantity=10000, next="x10"},
                  {type="item",  name="cube-electronic-circuit", quantity=1},
                  {type="item",  name="cube-advanced-circuit",   quantity=1},
                  {type="item",  name="cube-spectral-processor", quantity=1},
                  {type="fluid", name="cube-unstable-gas",       quantity=1},
                  {type="item",  name="cube-resplendent-plate",  quantity=1},

                  {type="group", name="Progress"},
                  {type="item",  name="car",                       quantity=1},
                  {type="item",  name="locomotive",                quantity=1},
                  {type="item",  name="spidertron",                quantity=1},
                  {type="item",  name="cube-construction-robot-0", quantity=1},
                  {type="item",  name="cube-logistic-robot-0",     quantity=1},
                  {type="item",  name="cube-roboport",             quantity=1},
                  {type="item",  name="cube-beacon",               quantity=1},
                  {type="item",  name="cube-forbidden-ziggurat",   quantity=1, hidden=true},
                  {type="item",  name="cube-legendary-iron-gear",  quantity=1, hidden=true},

                  {type="group", name="Power"},
                  {type="item",  name="cube-stygian-energy-lab", quantity=1},
                  {type="item",  name="cube-nuclear-reactor",    quantity=1},
                  {type="item",  name="cube-antimatter-reactor", quantity=1},

                  {type="group", name="Kills"},
                  {type="kill",  name="character", quantity=1, next="x5"}
                }
            },
        }
    end
})

if mods["space-age"] then
  data:extend({

  -- Bioflux
  {
    type = "recipe",
    name = "ye_bioflux",
    category = "yrcat_dna",
    enabled = true,
    energy_required = 1,
    ingredients = {
      { type = "item", name = "ye_celluose", amount = 1 },
      { type = "item", name = "y_greensign", amount = 3 },
    },
    results = {
      { type = "item", name = "bioflux", amount = 12 },
    },
    order = "8",
    group = "yie_harvest",
    subgroup = "yie_trades_import_line1",
  },
-- Biter-Egg
{
  type = "recipe",
  name = "ye_biter_eggs",
  category = "yrcat_dna",
  enabled = true,
  energy_required = 1,
  ingredients = {
    { type = "item", name = "ye_dna", amount = 2 },
    { type = "item", name = "ye_science_blue", amount = 1 },
  },
  results = {
    { type = "item", name = "biter-egg", amount = 5 },
  },
  order = "9",
  group = "yie_harvest",
  subgroup = "yie_trades_import_line1",
},
-- Gleba-Science
{
  type = "recipe",
  name = "ye_gleba_science",
  category = "yrcat_dna",
  enabled = true,
  energy_required = 1,
  ingredients = {
    { type = "item", name = "bioflux", amount = 3 },
    { type = "item", name = "ye_fish2", amount = 3 },
  },
  results = {
    { type = "item", name = "agricultural-science-pack", amount = 2 },
  },
  order = "10",
  group = "yie_harvest",
  subgroup = "yie_trades_import_line1",
},

})

end

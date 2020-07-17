data:extend({

	-- 2020 mfheatmotor 3.2 MW
	{
	  type = "recipe",
	  name = "ye_mf_mfheatmotor_m_recipe",
	  category = "yrcat_mfheatmotor_m", 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		--{ type = "fluid", name = "water" , amount = 500.0, minimum_temperature = 15},
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 8.0, temperature = 150, },
	  },
	  icon_size = 32, icon =  "__yi_engines__/graphics/mf-1.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- water->MF heat-transmission
	{
	  type = "recipe",
	  name = "ye_water2mf_recipe",
	  category = "yrcat_transform", 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 500.0, minimum_temperature = 15},
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 5.0, temperature = 90, },
	  },
	   icon_size = 32, icon =  "__yi_engines__/graphics/steam.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},


	-- make steam - needs lua-code
	{
	  type = "recipe",
	  name = "ye_makesteam_recipe",
	  category = "yrcat-heater", -- overheater for steam
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 200.0, minimum_temperature = 15},
	  },
	  results = {
		{ type = "fluid", name = "steam", amount = 2400.0, temperature = 500, },
	  },
	   icon_size = 32, icon =  "__yi_engines__/graphics/steam.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- gearbox transmission without lubricant
	{
	  type = "recipe",
	  name = "y-mf2b-recipe",
	  category = "yrcat-mf2", -- gearbox
	  enabled = "true",
	  energy_required = 0.50,
	  ingredients = {
		{ type = "fluid", name = "y-mechanical-force" , amount = 1.6, minimum_temperature = 100, },
		{ type = "fluid", name = "water" , amount = 50, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 1.4, temperature = 215, },
	  },
	   icon_size = 32, icon =  "__yi_engines__/graphics/gears_br.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- steam to mechanical power
	{
	  type = "recipe",
	  name = "ye_steam2mf_recipe",
	  category = "yrcat_turbine", -- steam to mechanical power
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "steam" , amount = 4800, minimum_temperature = 290},
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 25.0, temperature = 400, },
		{ type = "fluid", name = "water", amount = 380, temperature = 75,},
	  },
	  icon_size = 32, icon =  "__yi_engines__/graphics/mf-1.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- steam to mechanical power
	{
	  type = "recipe",
	  name = "ye_steam3mf_recipe",
	  category = "yrcat_turbine", -- steam to mechanical power
	  enabled = "true",
	  energy_required = 1.10,
	  ingredients = {
		{ type = "fluid", name = "steam" , amount = 800, minimum_temperature = 850},
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 75.0, temperature = 400, },
		{ type = "fluid", name = "steam", amount = 1200, temperature = 250,},
	  },
	  icon_size = 32, icon =  "__yi_engines__/graphics/mf-3.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},


	-- quantrium-reactor power-generation recipe 1
	{
	  type = "recipe",
	  name = "y-mf1-q1-recipe",
	  category = "yrcat-mf1q", -- mechanical force quantrinum-reactor
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y-infused-uca2" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 60.0, temperature = 150,},
	  },
	  icon_size = 32, icon =  "__yi_engines__/graphics/gear_xtra.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- quantrium-reactor power-generation recipe 2
	{
	  type = "recipe",
	  name = "y-mf1-q2-recipe",
	  category = "yrcat-mf1q", -- mechanical force quantrinum-reactor
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y-quantrinum" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 100.0, temperature = 150,},
	  },
	   icon_size = 32, icon =  "__yi_engines__/graphics/gear_xtra.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- quantrium-reactor power-generation recipe 3
	{
	  type = "recipe",
	  name = "y-mf1-q3-recipe",
	  category = "yrcat-mf1q", -- mechanical force quantrinum-reactor
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y-quantrinum-charge" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 300.0, temperature = 400,},
	  },
	   icon_size = 32, icon =  "__yi_engines__/graphics/gear_xtra.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- gearbox transmission with lubricant
	{
	  type = "recipe",
	  name = "y-mf2a-recipe",
	  category = "yrcat-mf2", -- gearbox
	  enabled = "true",
	  energy_required = 0.25,
	  ingredients = {
		{ type = "fluid", name = "y-mechanical-force" , amount = 2.6, minimum_temperature = 100,},
		{ type = "fluid", name = "lubricant" , amount = 0.1, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 2.5, temperature = 250, },
	  },
	  icon_size = 32, icon =  "__yi_engines__/graphics/gears_br.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},
	
	
	--[[
	-- HP gearbox transmission without lubricant
	{
	  type = "recipe",
	  name = "y_mfhp_gearbox1-recipe",
	  category = "yrcat-mf2b", -- gearbox
	  enabled = "true",
	  energy_required = 1.5,
	  ingredients = {
		{ type = "fluid", name = "y-mechanical-force" , amount = 24, minimum_temperature = 200 },
		{ type = "fluid", name = "water" , amount = 50, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 18, temperature = 340, },
	  },
	  icon_size = 32, icon =  "__yi_engines__/graphics/gears_br.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},
	
	
	-- HP gearbox transmission with lubricant
	{
	  type = "recipe",
	  name = "y_mfhp_gearbox2-recipe",
	  category = "yrcat-mf2b", -- gearbox
	  enabled = "true",
	  energy_required = 1,
	  ingredients = {
		{ type = "fluid", name = "y-mechanical-force" , amount = 30, minimum_temperature = 200 },
		{ type = "fluid", name = "lubricant" , amount = 3, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 27, temperature = 400, },
	  },
	  icon_size = 32, icon =  "__yi_engines__/graphics/gears_br.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},
	]]
	
	-- without lubricant, still water for cooling - sfe
	{
	  type = "recipe",
	  name = "y-mf1a1-recipe",
	  category = "yrcat-mf1a", -- mechanical force primary - sfe
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 20.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 5, temperature = 150, },
	  },
	   icon_size = 32, icon =  "__yi_engines__/graphics/gear_basic.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- Hydromechanical Power
	{
	  type = "recipe",
	  name = "y-mf2a-recipe",
	  category = "yrcat-mf1b", -- mechanical force primary - ffe
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "heavy-oil" , amount = 30, },
		{ type = "fluid", name = "lubricant" , amount = 2, },
		{ type = "fluid", name = "water" , amount = 150, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 6, temperature = 150, },
	  },
	   icon_size = 32, icon =  "__yi_engines__/graphics/gear_wet.png",
	  order = "1", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- 
	{
	  type = "recipe",
	  name = "y-mf2b-recipe",
	  category = "yrcat-mf1b", -- mechanical force primary - ffe
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "light-oil" , amount = 20, },
		{ type = "fluid", name = "lubricant" , amount = 2, },
		{ type = "fluid", name = "water" , amount = 150, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 7, temperature = 150, },
	  },
	   icon_size = 32, icon =  "__yi_engines__/graphics/gear_wet.png",
	  order = "2", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- FFE - burn petroleum - self lubricant
	{
	  type = "recipe",
	  name = "y-mf2c-recipe",
	  category = "yrcat-mf1b", -- mechanical force primary - ffe
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
	    { type = "fluid", name = "petroleum-gas" , amount = 30, },
		{ type = "fluid", name = "lubricant" , amount = 3, },
		{ type = "fluid", name = "water" , amount = 150, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 8, temperature = 150, },
	  },
	  icon_size = 32, icon =  "__yi_engines__/graphics/gear_wet.png",
	  order = "3", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- FFE - burn petroleum - self lubricant
	{
	  type = "recipe",
	  name = "y-mf2d-recipe",
	  category = "yrcat-mf1b", -- mechanical force primary - ffe
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
	    { type = "fluid", name = "y_hydrogen" , amount = 25, },
		{ type = "fluid", name = "lubricant" , amount = 4, },		
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 6, temperature = 150, },
	  },
	  icon_size = 32, icon =  "__yi_engines__/graphics/gear_wet.png",
	  order = "3", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- FFE - burn corn-oil - self lubricant
	{
	  type = "recipe",
	  name = "y-mf2e-recipe",
	  category = "yrcat-mf1b", -- mechanical force primary - ffe
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "ye_cornoil" , amount = 30, },
		{ type = "fluid", name = "water" , amount = 150, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 4, temperature = 150, },
	  },
	  icon_size = 32, icon =  "__yi_engines__/graphics/gear_wet.png",
	  order = "4", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- 
	{
	  type = "recipe",
	  name = "y-mf1a-recipe",
	  category = "yrcat-mf1a", -- mechanical force primary - sfe
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 100, },
		{ type = "fluid", name = "lubricant" , amount = 2, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 6, temperature = 150, },
	  },
	   icon_size = 32, icon =  "__yi_engines__/graphics/gear_wet.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- SFE trocken
	{
	  type = "recipe",
	  name = "y-mf1f-recipe",
	  category = "yrcat-mf1a", -- mechanical force primary - sfe
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 4.5, temperature = 150, },
	  },
	   icon_size = 32, icon =  "__yi_engines__/graphics/gear_basic.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},


	
	-- Medium Water Generator - Special Recipe
	--ID:330 
	{
	  type = "recipe",
	  name = "y_mpump_mf_recipe",
	  category = "yrcat_pump_2", -- Medium Pump
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 1800.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 2.0, temperature = 150, },
	  },
	  main_product = "y-mechanical-force",
	  icon = "__yi_engines__/graphics/mf-1.png",
	  icon_size = 32,  
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},	
	
	
	
})
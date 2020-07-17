data:extend({


	--[[
	{
	  type = "recipe",
	  name = "ye_mfheatmotor_m_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "ye_emotor_m" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_mfheatmotor_m", amount = 1.0, },
	  },
	  main_product = "ye_mfheatmotor_m",
	  icon = "__yi_engines__/graphics/entity/gearbox_hp_icon.png",
	  icon_size = 32,  
	  order = "m3", group = "yi_engines", subgroup = "yie-engines",
	},

	{
		type="item", name="ye_mfheatmotor_m", icon_size=32, icon="__yi_engines__/graphics/entity/gearbox_hp_icon.png", 
		group="yi_engines", subgroup="yie-engines", order="m3",  
		stack_size = 20, default_request_amount = 5,
		place_result="ye_mfheatmotor_m", 
	},
	]]

	-- E-MF-Heater Medium
	{
		type = "assembling-machine",
		name = "ye_mfheatmotor_m",
		icon_size = 64, icon =  "__yi_engines__/graphics/entity/mf_heater_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "ye_mfheatmotor_m"},
		max_health = 250,
		corpse = "medium-remnants",
		--resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 2,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {0,-3}},										
					{type="output", position = {0, 3}},										
				}
			},										
		},
		collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},		
		animation =
		{
			north = { 	filename = "__yi_engines__/graphics/entity/mfheater_ns.png",			
						width = 512, height = 512, shift = {1.5, -0.5}, frame_count = 4, line_length = 4, scale = 0.5, animation_speed = 0.25,},	
			south = {	filename = "__yi_engines__/graphics/entity/mfheater_ns.png",			
						width = 512, height = 512, shift = {1.5, -0.5}, frame_count = 4, line_length = 4, scale = 0.5, animation_speed = 0.25,},	
			east = {	filename = "__yi_engines__/graphics/entity/mfheater_ew.png",			
						width = 512, height = 512, shift = {1.5, -0.5}, frame_count = 4, line_length = 4, scale = 0.5, animation_speed = 0.25, },	
			west = {	filename = "__yi_engines__/graphics/entity/mfheater_ew.png",			
						width = 512, height = 512, shift = {1.5, -0.5}, frame_count = 4, line_length = 4, scale = 0.5, animation_speed = 0.25,},	
		},		
		crafting_categories = {"yrcat_mfheatmotor_m"},
		crafting_speed = 1,
		
		module_specification = { module_slots = 0 },
		allowed_effects = {"pollution"},
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0, 
		},
		energy_usage = "6.214MW",						
		ingredient_count = 1,
		order="a",
		subgroup = "yie-engines",
	},	



})
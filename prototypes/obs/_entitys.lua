data:extend({

	-- farming		
	{
		type = "assembling-machine",
		name = "ye_farm",
		 icon_size = 32, icon =  "__yi_engines__/graphics/entity/farm-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_farm"},
		max_health = 250,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			off_when_no_fluid_recipe = true,			
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {2,-3}},								
				}
			},							
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {-2, 3}},								
				}
			},										
		},
		collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			north = { filename = "__yi_engines__/graphics/entity/farm-sheet-ns.png", width = 192, height = 192, shift = {0.44, -0.22}, frame_count = 16, line_length = 4, animation_speed=0.01, },						
			east = { filename = "__yi_engines__/graphics/entity/farm-sheet-ew.png", width = 192, height = 192, shift = {0.19, -0.34}, frame_count = 16, line_length = 4, animation_speed=0.01, }	,					
			south = { filename = "__yi_engines__/graphics/entity/farm-sheet-ns.png", width = 192, height = 192, shift = {0.44, -0.22}, frame_count = 16, line_length = 4, animation_speed=0.01, },						
			west = { filename = "__yi_engines__/graphics/entity/farm-sheet-ew.png", width = 192, height = 192, shift = {0.19, -0.34}, frame_count = 16, line_length = 4, animation_speed=0.01, }	,					
		},		
		crafting_categories = {"yrcat-farm"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.1, 
		},
		energy_usage = "50kW",						
		ingredient_count = 3,
		order="a",
		subgroup = "yie-engines",
	},
	
	-- alien breed		
	{
		type = "assembling-machine",
		name = "ye_meatfarm",
		icon_size = 32, icon =  "__yi_engines__/graphics/entity/cage_empty_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_meatfarm"},
		max_health = 250,
		corpse = "medium-remnants",		
		fluid_boxes =
		{	
			off_when_no_fluid_recipe = true,
			{
				production_type = "output",
				base_area = 5,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {1, 3}},										
				}
			},			
			{
				production_type = "output",
				base_area = 5,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {-1, 3}},										
				}
			},						
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {1,-3}},								
				}
			},							
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {-1,-3}},								
				}
			},										
		},
		collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{			
			north = { filename = "__yi_engines__/graphics/entity/cage/cage_v14.png", width = 192, height = 192, shift = {0.375, -0.125}, frame_count = 36, line_length = 9, animation_speed=0.25, },						
			south = { filename = "__yi_engines__/graphics/entity/cage/cage_v14.png", width = 192, height = 192, shift = {0.375, -0.125}, frame_count = 36, line_length = 9, animation_speed=0.25, },						
			east = { filename = "__yi_engines__/graphics/entity/cage/cage_h14.png", width = 192, height = 192, shift = {0.125, -0.5}, frame_count = 36, line_length = 9, animation_speed=0.25, }	,								
			west = { filename = "__yi_engines__/graphics/entity/cage/cage_h14.png", width = 192, height = 192, shift = {0.125, -0.5}, frame_count = 36, line_length = 9, animation_speed=0.25, }	,					
		},		
		crafting_categories = {"yrcat_meat"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.1, 
		},
		energy_usage = "250kW",						
		ingredient_count = 4,
		order="a",
		subgroup = "yie-engines",
	},

	-- fishing		
	{
		type = "assembling-machine",
		name = "ye_pool",
		 icon_size = 32, icon =  "__yi_engines__/graphics/entity/pool_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_pool"},
		max_health = 250,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			off_when_no_fluid_recipe = true,			
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{position = {-1,-3}},								
				}
			},							
			{
				production_type = "output",
				base_area = 5,
				base_level = 1,
				pipe_connections = {
					{position = {1,-3}},								
				}
			},										
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {0, 3}},								
				}
			},										
		},
		collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			north = { filename = "__yi_engines__/graphics/entity/pool_sn_sheet.png", width = 384, height = 384, shift = {0.44, -0.22}, frame_count = 9, line_length = 3, animation_speed=0.05, scale=0.5, },						
			east = { filename = "__yi_engines__/graphics/entity/pool_we_sheet.png", width = 384, height = 384, shift = {0.19, -0.34}, frame_count = 9, line_length = 3, animation_speed=0.05, scale=0.5,}	,					
			south = { filename = "__yi_engines__/graphics/entity/pool_ns_sheet.png", width = 384, height = 384, shift = {0.44, -0.22}, frame_count = 9, line_length = 3, animation_speed=0.05, scale=0.5,},						
			west = { filename = "__yi_engines__/graphics/entity/pool_ew_sheet.png", width = 384, height = 384, shift = {0.19, -0.34}, frame_count = 9, line_length = 3, animation_speed=0.05, scale=0.5,}	,					
		},		
		crafting_categories = {"yrcat-fish"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.1, 
		},
		energy_usage = "50kW",						
		ingredient_count = 3,
		order="a",
		subgroup = "yie-engines",
	},
		
	-- ice-machine		
	{
		type = "assembling-machine",
		name = "ye_icemaker",
		 icon_size = 32, icon =  "__yi_engines__/graphics/entity/icemaker_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_icemaker"},
		max_health = 450,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			off_when_no_fluid_recipe = true,
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {-1,-2}},								
				}
			},							
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {1,-2}},								
				}
			},										
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {-2,1}},								
				}
			},	
		},
		collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__yi_engines__/graphics/entity/refrig_v2_sheet.png",			
			width = 256,
			height = 256,
			shift = {0.3, -0.12},
			frame_count = 25,
			line_length = 5,			
			animation_speed = 0.5,
			scale = 0.5,		
		},		
		crafting_categories = {"yrcat_icemaker"},
		crafting_speed = 1.5,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.02, 
		},
		energy_usage = "1500kW",						
		ingredient_count = 4,
		order="a",
		subgroup = "yie_machinery2",
	},	
		

	-- Smoker
	{
		type = "assembling-machine",
		name = "ye_smoker",
		 icon_size = 32, icon =  "__yi_engines__/graphics/entity/yie_smoker_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_smoker"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",

		animation =
		{			
			filename = "__yi_engines__/graphics/entity/yie_smoker.png",			
			width = 320,
			height = 320,
			shift = {0.875, 0},
			frame_count = 1,			
			animation_speed = 1,
			scale=0.5,
		},		
		crafting_categories = {"yrcat_smoker"},
		crafting_speed = 1,
		energy_source =
		{
			--type = "electric",
			--usage_priority = "secondary-input",
			--emissions = 0.04 / 2.5
			type = "burner",
			effectivity = 0.8,
			fuel_inventory_size = 2,			
			emissions = 0.04 / 2.5,
			smoke = {
				{ name = "smoke", position = {-0.75, -1.25}, height = 1, deviation = {0.1, 0.1}, frequency = 75 },				
			}			
		},
		energy_usage = "1100kW",
		ingredient_count = 6,				
		module_specification =
		{
			module_slots = 2,			
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},				
		order="a[atomics]",
		subgroup = "yie_agromachinery",
	},		
	
	
	
})
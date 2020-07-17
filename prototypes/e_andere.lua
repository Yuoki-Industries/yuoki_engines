data:extend({  


	{
		type = "assembling-machine",
		name = "y-electric-air-heater",
		icon_size = 32, icon =  "__yi_engines__/graphics/entity/energy2/air-heater-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.1, result = "y-electric-air-heater"},
		max_health = 350,
		corpse = "medium-remnants",
		--resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 150,
				base_level = 0,
				pipe_connections = {
					{type="input", position = {0, 2}},										
				}
			},					
			{
				production_type = "input",
				base_area = 2,
				base_level = 0,
				pipe_connections = {
					{type="input", position = { 2, 0}},										
					{type="input", position = {-2, 0}},										
				}
			},								
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/entity/energy2/air-heater.png",			
			width = 130,
			height = 128,
			shift = {0.825, 0.0}
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/entity/energy2/ah-a.png",			
			width = 130,
			height = 128,
			shift = {0.825, 0.0},
			frame_count = 24,
			line_length = 12,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-eg4"},
		crafting_speed = 2.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = -2500, 
		},
		energy_usage = "1250kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "yie-engines",
	},
	
	-- science_gen
	{
		type = "assembling-machine",
		name = "yie_science_blue_gen",
		 icon_size = 32, icon =  "__yi_engines__/graphics/entity/science_gen_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.1, result = "yie_science_blue_gen"},
		max_health = 500,
		corpse = "medium-remnants",		
		collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},		
		animation =
		{
			south = { filename = "__yi_engines__/graphics/entity/science_gen.png", width = 128, height = 128, shift = {0.3, -0}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,							
			west  = { filename = "__yi_engines__/graphics/entity/science_gen.png", width = 128, height = 128, shift = {0.3, -0}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,					
			north = { filename = "__yi_engines__/graphics/entity/science_gen.png", width = 128, height = 128, shift = {0.3, -0}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,							
			east  = { filename = "__yi_engines__/graphics/entity/science_gen.png", width = 128, height = 128, shift = {0.3, -0}, frame_count = 16, line_length = 16, animation_speed=1.0, }	,							
		},		
		crafting_categories = {"yrcat_science"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 440, 
		},
		energy_usage = "220MW",						
		ingredient_count = 2,
		order="a",
		subgroup = "yie_machinery2",
	},	
	-- Trade Node
	{
		type = "assembling-machine",
		name = "ye_trade_node",
		 icon_size = 32, icon =  "__yi_engines__/graphics/icons/trade_node_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.1, result = "ye_trade_node"},
		max_health = 500,
		corpse = "medium-remnants",		
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-1, -1}, {1, 1}},		
		animation =
		{
			filename = "__yi_engines__/graphics/entity/trade_node_sheet.png", width = 192, height = 192, scale = 0.5, shift = {0.5, -0.5}, frame_count = 9, line_length = 3, animation_speed=0.5, 							
		},		
		crafting_categories = {"yuoki-stargate-recipe"},
		crafting_speed = 0.5,		
		energy_source = { type = "electric", usage_priority = "secondary-input", emissions_per_minute = 16,},
		energy_usage = "8MW",						
		ingredient_count = 4,
		order="a2",
		subgroup = "yie_machinery2",
	},	
	
	-- canning machine		
	{
		type = "assembling-machine",
		name = "ye_canmachine",
		 icon_size = 32, icon =  "__yi_engines__/graphics/canning-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.1, result = "ye_canmachine"},
		max_health = 550,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			off_when_no_fluid_recipe = true,
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {1,2}},								
				}
			},							
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {0,2}},								
				}
			},										
			{
				production_type = "output",
				base_area = 5,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {2,0}},								
				}
			},	
		},
		collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			south = { filename = "__yi_engines__/graphics/entity/can-n.png", width = 128, height = 128, shift = {0.5, -0.375}, frame_count = 16, line_length = 4, animation_speed=1.0, }	,							
			west  = { filename = "__yi_engines__/graphics/entity/can-e.png", width = 128, height = 128, shift = {0.25, -0.375}, frame_count = 16, line_length = 4, animation_speed=1.0, }	,					
			north = { filename = "__yi_engines__/graphics/entity/can-s.png", width = 128, height = 128, shift = {0.5, -0.25}, frame_count = 16, line_length = 4, animation_speed=1.0, }	,							
			east  = { filename = "__yi_engines__/graphics/entity/can-w.png", width = 128, height = 128, shift = {0.5, -0.3125}, frame_count = 16, line_length = 4, animation_speed=1.0, }	,							
		},		
		crafting_categories = {"yrcat_fluidhandle", "crafting-with-fluid"},
		crafting_speed = 1.75,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 10, 
		},
		energy_usage = "500kW",						
		ingredient_count = 4,
		order="a",
		subgroup = "yie-engines",
	},	
	

})
data:extend(
{  
	-- Tutorial
	{
		type = "assembling-machine",
		name = "ye_fassembly1",
		 icon_size = 32, icon =  "__yi_engines__/graphics/entity/factory_var_1_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_fassembly1"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",

		animation =
		{			
			filename = "__yi_engines__/graphics/entity/av1_sheet.png",			
			width = 320,
			height = 320,			
			shift = {1.0, -1.0},
			frame_count = 16,
			line_length = 4,			
			animation_speed = 0.25,			
			scale = 0.5,
		},		
		crafting_categories = {"crafting", "advanced-crafting"},
		crafting_speed = 2.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.04 / 2.5
		},
		energy_usage = "300kW",
		ingredient_count = 6,				
		module_specification =
		{
			module_slots = 3,			
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},		
		
		order="a[atomics]",
		subgroup = "yie_machinery2",
	},	

	{
		type = "assembling-machine",
		name = "ye_fassembly2",
		 icon_size = 32, icon =  "__yi_engines__/graphics/entity/factory_var_2_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_fassembly2"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",

		fluid_boxes =
		{
			off_when_no_fluid_recipe = true,			
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {-0,-2}},								
				}
			},							
			{
				production_type = "output",
				base_area = 5,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {-0, 2}},								
				}
			},
		},
				
		animation =
		{			
			filename = "__yi_engines__/graphics/entity/av2_sheet.png",			
			width = 256,
			height = 256,			
			shift = {0.5, -0.5},
			frame_count = 36,
			line_length = 6,			
			animation_speed = 0.2,			
			scale = 0.5,
		},		
		crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
		crafting_speed = 3.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.04 / 2.5
		},
		energy_usage = "500kW",
		ingredient_count = 6,				
		module_specification =
		{
			module_slots = 3,			
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},		
		
		order="a[atomics]",
		subgroup = "yie_machinery2",
	},	

	{
		type = "assembling-machine",
		name = "ye_fassembly_sp",
		 icon_size = 32, icon =  "__yi_engines__/graphics/entity/factory_var_3_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_fassembly_sp"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",

		fluid_boxes =
		{
			off_when_no_fluid_recipe = true,			
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {-0,-2}},								
				}
			},							
		},
		
		animation =
		{			
			filename = "__yi_engines__/graphics/entity/av3_sheet.png",			
			width = 256,
			height = 256,
			shift = {0.3, -0.5},
			frame_count = 25,
			line_length = 5,			
			animation_speed = 0.1,
			scale = 0.5,
		},		
		crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
		crafting_speed = 5.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.04 / 2.5
		},
		energy_usage = "700kW",
		ingredient_count = 6,				
		module_specification =
		{
			module_slots = 2,			
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},		
		
		order="a[atomics]",
		subgroup = "yie_machinery2",
	},	


	
	
	
	{
		type = "recipe",
		name = "ye_green_ultimate_recipe",
		ingredients = {{"y_greensign", 60000},},
		result = "ye_green_ultimate",
		group = "yuoki-energy", subgroup = "y_ultimate_products",					
		order="a0",
	},		
	{
		type="item", name="ye_green_ultimate",  icon_size = 32, icon = "__yi_engines__/graphics/entity/green_ultimate_icon.png", flags = {"goes-to-quickbar"},
		group="yuoki-energy", subgroup="y_ultimate_products", order="a0", place_result = "ye_green_ultimate", 
		stack_size = 1, default_request_amount = 1,
	},	
	{
		type = "assembling-machine",
		name = "ye_green_ultimate",
		 icon_size = 32, icon = "__yi_engines__/graphics/entity/green_ultimate_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_green_ultimate"},
		max_health = 5000,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		collision_box = {{-6.2, -6.2}, {6.2, 6.2}},
		selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
		--fast_replaceable_group = "assembling-machine",		
		animation =
		{			
			filename = "__yi_engines__/graphics/entity/green_ultimate.png",			
			width = 480,
			height = 480,
			shift = {1, -1},
			frame_count = 1,
			line_length = 1,			
			--animation_speed = 0.25,
			--scale = 0.5,
		},		
		crafting_categories = {"yuoki_green_ultimate",},
		crafting_speed = 1.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.04 / 2.5
		},
		energy_usage = "700kW",
		ingredient_count = 6,				
		--module_specification = { module_slots = 0,},
		--allowed_effects = {"consumption", "speed", "productivity", "pollution"},				
		order="a0",
		subgroup = "y_ultimate_products",
	},	


	
	--[[
	-- Tutorial-2
	{
		type = "assembling-machine",
		name = "ye_fassembly2",
		 icon_size = 32, icon =  "__yi_engines__/graphics/entity/fastassembly1_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_fassembly2"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",

		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {-0,-2}},								
				}
			},							
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {-0, 2}},								
				}
			},										
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {-2,0}},								
				}
			},							
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {2,0}},								
				}
			},							
			
		},
		
		
		animation =
		{			
			filename = "__yi_engines__/graphics/entity/tut-2.png",			
			width = 160,
			height = 160,
			shift = {0.0, 0.0},
			frame_count = 1,
			line_length = 1,			
			animation_speed = 0.25
		},		
		crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
		crafting_speed = 2.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.04 / 2.5
		},
		energy_usage = "300kW",
		ingredient_count = 6,				
		module_specification =
		{
			module_slots = 3,			
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},		
		
		order="a[atomics]",
		subgroup = "yie-engines",
	},	
	]]
	--[[

	
	{
		type = "assembling-machine",
		name = "y-injector1",
		 icon_size = 32, icon =  "__yi_engines__/graphics/tests/a-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-injector1"},
		max_health = 150,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="input", position = {0, 1.5}},										
				}
			},					
			{
				production_type = "output",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="output", position = {0, -1.5}},										
				}
			},								
		},
		collision_box = {{-0.4, -0.9}, {0.4, 0.9}},
		selection_box = {{-0.5, -1.0}, {0.5, 1.0}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/tests/32x64o.png",			
			width = 32,
			height = 64,
			shift = {0.0, 0.0},
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/tests/32x64o.png",			
			width = 32,
			height = 64,
			shift = {0.0, 0.0},
			frame_count = 1,
			line_length = 1,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-exp1"}, crafting_speed = 1.0,		
		energy_source = { type = "electric", usage_priority = "secondary-input", emissions = 0.001, },
		energy_usage = "100kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "y-exp",
	},		
	
	{
		type = "assembling-machine",
		name = "y-injector2",
		 icon_size = 32, icon =  "__yi_engines__/graphics/tests/a-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-injector2"},
		max_health = 150,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="input", position = {0, 1.5}},										
				}
			},					
			{
				production_type = "output",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="output", position = {0,-1.5}},										
				}
			},								
		},
		collision_box = {{-0.4, -0.9}, {0.4, 0.9}},
		selection_box = {{-0.5, -1.0}, {0.5, 1.0}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/tests/32x64g.png",			
			width = 32,
			height = 64,
			shift = {0.0, 0.0},
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/tests/32x64g.png",			
			width = 32,
			height = 64,
			shift = {0.0, 0.0},
			frame_count = 1,
			line_length = 1,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-exp2"}, crafting_speed = 1.0,		
		energy_source = { type = "electric", usage_priority = "secondary-input", emissions = 0.001, },
		energy_usage = "200kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "y-exp",
	},		

	{
		type = "assembling-machine",
		name = "y-ring1",
		 icon_size = 32, icon =  "__yi_engines__/graphics/tests/a-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-ring1"},
		max_health = 150,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="input", position = { 0, 2}},										
					{type="input", position = { 0,-2}},										
					{type="input", position = {-1, 0}},										
				}
			},					
			{
				production_type = "output",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="output", position = { 1.0, 0}},										
				}
			},								
		},
		collision_box = {{-0.4, -1.4}, {0.4, 1.4}},
		selection_box = {{-0.5, -1.5}, {0.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/tests/32x96.png",			
			width = 32,
			height = 96,
			shift = {0.0, 0.0}
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/tests/32x96.png",			
			width = 32,
			height = 96,
			shift = {0.0, 0.0},
			frame_count = 1,
			line_length = 1,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-exp3"}, crafting_speed = 1.0,		
		energy_source = { type = "electric", usage_priority = "secondary-input", emissions = 0.001, },
		energy_usage = "500kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "y-exp",
	},		
	{
		type = "assembling-machine",
		name = "y-ring2",
		 icon_size = 32, icon =  "__yi_engines__/graphics/tests/a-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-ring2"},
		max_health = 150,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="input", position = { 0.5, 2}},										
					{type="input", position = { 0.5,-2}},										
					{type="input", position = {-1.5, 0}},										
				}
			},					
			{
				production_type = "output",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="output", position = { 1.5, 0}},										
				}
			},								
		},
		collision_box = {{-0.9, -1.4}, {0.9, 1.4}},
		selection_box = {{-1.0, -1.5}, {1.0, 1.5}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/tests/64x96.png",			
			width = 64,
			height = 96,
			shift = {0.0, 0.0},
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/tests/64x96.png",			
			width = 64,
			height = 96,
			shift = {0.0, 0.0},
			frame_count = 1,
			line_length = 1,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-exp4"}, crafting_speed = 1.0,		
		energy_source = { type = "electric", usage_priority = "secondary-input", emissions = 0.001, },
		energy_usage = "500kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "y-exp",
	},		

	{
		type = "assembling-machine",
		name = "y-emitter",
		 icon_size = 32, icon =  "__yi_engines__/graphics/tests/a-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-emitter"},
		max_health = 150,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="output", position = { 2, 0}},										
				}
			},								
		},
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/tests/96x96xlila.png",			
			width = 96,
			height = 96,
			shift = {0.0, 0.0},
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/tests/96x96xlila.png",			
			width = 96,
			height = 96,
			shift = {0.0, 0.0},
			frame_count = 1,
			line_length = 1,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-exp5"}, crafting_speed = 1.0,		
		energy_source = { type = "electric", usage_priority = "secondary-input", emissions = 0.001, },
		energy_usage = "500kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "y-exp",
	},		
	{
		type = "assembling-machine",
		name = "y-collector",
		 icon_size = 32, icon =  "__yi_engines__/graphics/tests/a-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-collector"},
		max_health = 150,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="input", position = { 2, 0}},										
				}
			},								
		},
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/tests/96x96xcyan.png",			
			width = 96,
			height = 96,
			shift = {0.0, 0.0},
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/tests/96x96xcyan.png",			
			width = 96,
			height = 96,
			shift = {0.0, 0.0},
			frame_count = 1,
			line_length = 1,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-exp5"}, crafting_speed = 1.0,		
		energy_source = { type = "electric", usage_priority = "secondary-input", emissions = 0.001, },
		energy_usage = "500kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "y-exp",
	},		
	]]
	
})	

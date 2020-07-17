data:extend(
{  
	
	-- Solid Fuel Engine		
	{
		type = "assembling-machine",
		name = "y-sfe",
		icon_size = 32, icon =  "__yi_engines__/graphics/entity/energy2/sfe-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-sfe"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			
			{
				production_type = "output",
				base_area = 2,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {0, 2}},										
				}
			},					
			{
				production_type = "input",
				base_area = 20,
				base_level = -1,
				pipe_connections = {
					{ type="input", position = {  1, -2}},					
				}
			},
			{
				production_type = "input",
				base_area = 20,
				base_level = -1,
				pipe_connections = {
					{ type="input", position = { -1, -2}},					
				}
			},			
			
		},
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",

		animation =
		{
			north= {
				filename = "__yi_engines__/graphics/entity/energy2/sfe-nord.png",			
				width = 112,
				height = 128,
				shift = {0.2, -0.1},
				frame_count = 12,
				line_length = 12,			
			},
			east= {
				filename = "__yi_engines__/graphics/entity/energy2/sfe-west.png",			
				width = 128,
				height = 112,
				shift = {0.25, 0.2},
				frame_count = 12,
				line_length = 12,			
			},
			south= {
				filename = "__yi_engines__/graphics/entity/energy2/sfe-sued.png",			
				width = 112,
				height = 128,
				shift = {0.2, 0.3},
				frame_count = 12,
				line_length = 12,			
			},
			west= {
				filename = "__yi_engines__/graphics/entity/energy2/sfe-ost.png",			
				width = 128,
				height = 112,
				shift = {0.25, 0.2},
				frame_count = 12,
				line_length = 12,			
			},			
		},		
		crafting_categories = {"yrcat-mf1a"},
		crafting_speed = 1,
		energy_source =
		{		
			type = "burner",
			fuel_category = "chemical",
			effectivity = 0.85,
			fuel_inventory_size = 1,
			emissions_per_minute = 60,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.65, -0.2},
					frequency = 1
				}
			}
		},
		energy_usage = "3000kW",						
		ingredient_count = 3,
		order="a[atomics]",
		subgroup = "yie-engines",
	},	
	
	{
		type = "assembling-machine",
		name = "y-ffe",
		 icon_size = 32, icon =  "__yi_engines__/graphics/entity/energy2/ffe-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-ffe"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 3,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {0, 2}},										
				}
			},					
			{
				production_type = "input",
				base_area = 30,
				base_level = -1,
				pipe_connections = {
					{ type="input", position = { 0, -2}},					
				}
			},
			{
				production_type = "input",
				base_area = 30,
				base_level = -1,
				pipe_connections = {
					{ type="input", position = { -1, -2}},					
				}
			},
			{
				production_type = "input",
				base_area = 30,
				base_level = -1,
				pipe_connections = {
					{ type="input", position = { 1, -2}},					
				}
			},			
		},
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			north= {
				filename = "__yi_engines__/graphics/entity/energy2/ffe-sa.png",			
				width = 128,
				height = 112,
				shift = {0.4, -0.1},
				frame_count = 15,
				line_length = 15,			
			},
			east= {
				filename = "__yi_engines__/graphics/entity/energy2/ffe-wa.png",			
				width = 128,
				height = 128,
				shift = {0.15, -0.2},
				frame_count = 15,
				line_length = 15,			
			},
			south= {
				filename = "__yi_engines__/graphics/entity/energy2/ffe-na.png",			
				width = 128,
				height = 128,
				shift = {0.4, 0.0},
				frame_count = 15,
				line_length = 15,			
			},
			west= {
				filename = "__yi_engines__/graphics/entity/energy2/ffe-oa.png",			
				width = 128,
				height = 112,
				shift = {0.25, 0.0},
				frame_count = 15,
				line_length = 15,			
			},					
			animation_speed = 0.8,
		},
		crafting_categories = {"yrcat-mf1b"},
		crafting_speed = 1,
		energy_source = {		
			type = "electric",
			usage_priority = "primary-input",
			emissions_per_minute = 0.03, 
		},
		energy_usage = "100kW",						
		ingredient_count = 3,
		--module_slots = 2,
		--allowed_effects = {"speed", "productivity", "pollution"},
		order="a[atomics]",		
		subgroup = "yie-engines",
	},		

	
	-- A(Tiny) Stirling Engine		
	{
		type = "assembling-machine",
		name = "y-1stirling-engine",
		icon_size = 32, icon =  "__yi_engines__/graphics/entity/energy2/ast-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-1stirling-engine"},
		max_health = 150,
		corpse = "small-remnants",
		resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 5,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {0.5, 1.5}},										
				}
			},					
		},
		collision_box = {{-0.7, -0.8}, {0.7, 0.8}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__yi_engines__/graphics/entity/energy2/stir-sheet.png",			
			width = 96,
			height = 96,
			shift = {0.6, -0.25},
			frame_count = 18,
			line_length = 18,			
		},		
		crafting_categories = {"yrcat-mf1c"},
		crafting_speed = 1,
		energy_source =
		{		
			type = "burner",
			fuel_category = "chemical",
			effectivity = 0.7,
			fuel_inventory_size = 1,
			emissions_per_minute = 15,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.65, -0.2},
					frequency = 0.25
				}
			}
		},
		energy_usage = "300kW",						
		ingredient_count = 1,
		order="a",
		group = "yi_engines",
		subgroup = "yie-engines",
	},			
							
})	

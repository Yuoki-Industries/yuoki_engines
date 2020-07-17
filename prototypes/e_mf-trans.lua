data:extend({
	
	--[[
	-- gearbox
	{
		type = "assembling-machine",
		name = "y-gearbox-power",
		icon_size = 32, icon =  "__yi_engines__/graphics/entity/gearbox-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-gearbox-power"},
		max_health = 150,
		corpse = "medium-remnants",
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 1,
				base_level = 0.2,
				pipe_connections = {
					{type="output", position = {0, 2}},										
				}
			},										
			{
				production_type = "input",
				base_area = 3,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {0, -2}},										
				}
			},							
			{
				production_type = "input",
				base_area = 3,
				base_level = -1,
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
			filename = "__yi_engines__/graphics/entity/gearbox-s.png",			
			width = 108,
			height = 100,
			shift = {0.125, 0.2}
		},		
		animation =
		{
			north ={
				filename = "__yi_engines__/graphics/entity/gearbox-va.png",			
				width = 108,
				height = 100,
				shift = {0.125, 0.2},
				frame_count = 12,
				line_length = 12,	
				animation_speed = 0.8,	
			},
			south ={
				filename = "__yi_engines__/graphics/entity/gearbox-va.png",			
				width = 108,
				height = 100,
				shift = {0.125, 0.2},
				frame_count = 12,
				line_length = 12,	
				animation_speed = 0.8,	
			},
			east ={
				filename = "__yi_engines__/graphics/entity/gearbox-ha.png",			
				width = 100,
				height = 100,
				shift = {0.05, 0.08},
				frame_count = 12,
				line_length = 12,	
				animation_speed = 0.8,	
			},
			west ={
				filename = "__yi_engines__/graphics/entity/gearbox-ha.png",			
				width = 100,
				height = 100,
				shift = {0.05, 0.08},
				frame_count = 12,
				line_length = 12,	
				animation_speed = 0.8,	
			},					
		},		
		crafting_categories = {"yrcat-mf2"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "primary-input",
			emissions = 0.00025, 
		},
		energy_usage = "500W",						
		ingredient_count = 1,
		order="a",
		subgroup = "yie_machinery",
	},				

	-- gearbox
	{
		type = "assembling-machine",
		name = "ye_gearbox_hp",
		icon_size = 32, icon =  "__yi_engines__/graphics/entity/gearbox_hp_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_gearbox_hp"},
		max_health = 350,
		corpse = "medium-remnants",
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 1,
				base_level = 0.2,
				pipe_connections = {
					{type="output", position = {0, 2}},										
				}
			},										
			{
				production_type = "input",
				base_area = 3,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {0, -2}},										
				}
			},							
			{
				production_type = "input",
				base_area = 3,
				base_level = -1,
				pipe_connections = {
					{type="input", position = { 2, 0}},										
					{type="input", position = {-2, 0}},										
				}
			},								
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			north ={
				filename = "__yi_engines__/graphics/entity/gearbox_hp_ns.png",			
				width = 256, height = 256, shift = {0.5, 0}, frame_count = 16, line_length = 4,	animation_speed = 0.5, scale = 0.5,
			},
			south ={
				filename = "__yi_engines__/graphics/entity/gearbox_hp_ns.png",			
				width = 256, height = 256, shift = {0.5, 0}, frame_count = 16, line_length = 4,	animation_speed = 0.5, scale = 0.5,			},
			east ={
				filename = "__yi_engines__/graphics/entity/gearbox_hp_we.png",			
				width = 256, height = 256, shift = {0.5, 0}, frame_count = 16, line_length = 4,	animation_speed = 0.5, scale = 0.5,			},
			west ={
				filename = "__yi_engines__/graphics/entity/gearbox_hp_we.png",			
				width = 256, height = 256, shift = {0.5, 0}, frame_count = 16, line_length = 4,	animation_speed = 0.5, scale = 0.5,			},					
		},		
		crafting_categories = {"yrcat-mf2b"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "primary-input",
			emissions = 0.00005, 
		},
		energy_usage = "10MW",						
		module_specification = { module_slots = 1, }, allowed_effects = {"consumption", "speed", "pollution"},		
		ingredient_count = 1,
		order="a",
		subgroup = "yie_machinery",
	},				
	]]
	
	-- overheater
	{
		type = "assembling-machine",
		name = "ye_overheater",
		icon_size = 32, icon =  "__yi_engines__/graphics/entity/heater55_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_overheater"},
		max_health = 150,
		corpse = "medium-remnants",
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 3,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {0, -3}},										
				}
			},					
			{
				production_type = "output",
				base_area = 48,
				base_level = 1,
				pipe_connections = {
					{type="output", position = { -3, 0}},										
					--{type="output", position = { -3, 1}},										
					{type="output", position = { -3, 2}},										
					--{type="output", position = { -3, 3}},										
					{type="output", position = {  3, 0}},										
					--{type="output", position = {  3, 1}},										
					{type="output", position = {  3, 2}},										
					--{type="output", position = {  3, 3}},										
				}
			},												
		},
		collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		--fast_replaceable_group = "assembling-machine",
		animation =
		{
			north ={
				filename = "__yi_engines__/graphics/entity/heater55_s.png",			
				width = 384,
				height = 384,
				shift = {0.5, 0.5},
				frame_count = 1,
				line_length = 1,	
				animation_speed = 0.8,	
				scale = 0.5,
			},
			south ={
				filename = "__yi_engines__/graphics/entity/heater55_n.png",			
				width = 384,
				height = 384,
				shift = {0.5, -0.5},
				frame_count = 1,
				line_length = 1,	
				animation_speed = 0.8,	
				scale = 0.5,
			},
			east ={
				filename = "__yi_engines__/graphics/entity/heater55_e.png",			
				width = 384,
				height = 384,
				shift = {0.5, -0.5},
				frame_count = 1,
				line_length = 1,	
				animation_speed = 0.8,	
				scale = 0.5,
			},
			west ={
				filename = "__yi_engines__/graphics/entity/heater55_w.png",			
				width = 384,
				height = 384,
				shift = {0.5, -0.5},
				frame_count = 1,
				line_length = 1,	
				animation_speed = 0.8,	
				scale = 0.5,
			},					
		},		
		
		crafting_categories = {"yrcat-heater"},
		crafting_speed = 1.0,				
		energy_source =
		{
			type = "burner",
			fuel_category = "chemical",
			effectivity = 0.8,
			fuel_inventory_size = 2,						
			emissions_per_minute = 448,			
		},
		energy_usage = "28MW",
		--[[	
		energy_source = {		
			type = "electric",
			usage_priority = "primary-input",
			emissions = 0.00025, 
		},
		energy_usage = "5MW",						
		]]
		ingredient_count = 1,
		order="a",
		subgroup = "yie-engines",
	},				

	-- s-turbine
	{
		type = "assembling-machine",
		name = "ye_sturbine",
		icon_size = 32, icon =  "__yi_engines__/graphics/entity/energy2/turbine_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_sturbine"},
		max_health = 150,
		corpse = "medium-remnants",
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 3,
				base_level = -1,
				pipe_connections = {
					{type="input", position = { -1, -4}},										
					--{type="input", position = { -2, -4}},										
					{type="input", position = { -3, -4}},															
					{type="input", position = { 1, -4}},										
					--{type="input", position = { 2, -4}},										
					{type="input", position = { 3, -4}},															
					--{type="input", position = {-2, 0}},										
				}
			},										
			-- mf
			{
				production_type = "output",
				base_area = 3,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {0, 4}},										
					
				}
			},		
			-- water
			{
				production_type = "output",
				base_area = 3,
				base_level = 1,
				pipe_connections = {
					{type="output", position = { 4, 2}},	
					{type="output", position = {-4, 2}},	
				}
			},							
		},
		collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
		selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
		--fast_replaceable_group = "assembling-machine",
		
		animation = {
			north ={
				filename = "__yi_engines__/graphics/entity/energy2/turbine_n.png",			
				width = 256,
				height = 256,
				shift = {0.5, -0.5},
				frame_count = 16,
				line_length = 4,	
				animation_speed = 1,	
			},
			south ={
				filename = "__yi_engines__/graphics/entity/energy2/turbine_n.png",			
				width = 256,
				height = 256,
				shift = {0.5, -0.5},
				frame_count = 16,
				line_length = 4,	
				animation_speed = 1,	
			},
			east ={
				filename = "__yi_engines__/graphics/entity/energy2/turbine_n.png",			
				width = 256,
				height = 256,
				shift = {0.5, -0.5},
				frame_count = 16,
				line_length = 4,	
				animation_speed = 1,	
			},
			west ={
				filename = "__yi_engines__/graphics/entity/energy2/turbine_n.png",			
				width = 256,
				height = 256,
				shift = {0.5, -0.5},
				frame_count = 16,
				line_length = 4,	
				animation_speed = 1,	
			},					
		},	
		
		crafting_categories = {"yrcat_turbine"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "primary-input",
			emissions_per_minute = 0.13, 
		},
		energy_usage = "500kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "yie-engines",
	},				
	
	-- 50MW-Gen
	{
		type = "generator",
		name = "ye_tfmw_generator-s",
		icon_size = 32, icon =  "__yi_engines__/graphics/entity/energy2/hngen-o-icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "ye_tfmw_generator-s"},
		max_health = 800,
		corpse = "small-remnants",
		effectivity = 0.92,
		fluid_usage_per_tick = 0.4,
		collision_box = {{-3.1, -3.3}, {3.1, 3.3}},
		selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
		maximum_temperature = 400,		
		fluid_box =
		{
			base_area = 3,
			height = 2,
			base_level = -1,			
			pipe_connections =
			{
				{ type = "input-output",  position = { 0,  4.0} },
				{ type = "input-output",  position = { 1,  4.0} },
				{ type = "input-output",  position = {-1,  4.0} },
				
				{ type = "input-output",  position = { 0, -4.0} },
				{ type = "input-output",  position = { 1, -4.0} },
				{ type = "input-output",  position = {-1, -4.0} },				
			},
			production_type = "input-output",
			filter = "y-mechanical-force",
		},
		fluid_input = { name = "y-mechanical-force", amount = 0.0, minimum_temperature = 100.0 },		
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output",
		},
		horizontal_animation =
		{
			filename = "__yi_engines__/graphics/entity/energy2/hngen_v.png",
			width = 288,
			height = 288,
			frame_count = 1,
			line_length = 1,
			shift = {1.00, -0.75}
		},
		vertical_animation =
		{
			filename = "__yi_engines__/graphics/entity/energy2/hgen_o_sheet.png",
			width = 288,
			height = 288,
			frame_count = 36,
			line_length = 6,
			animation_speed = 1.0,
			shift = {1.00, -0.75}
		},		
	}, 	

	-- 70 MW-Turbine
	{
		type = "generator",
		name = "ye_tfmw_turbine-s",
		icon_size = 32, icon =  "__yi_engines__/graphics/entity/turbine_70_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "ye_tfmw_turbine-s"},
		max_health = 800,
		corpse = "small-remnants",
		effectivity = 0.97,
		fluid_usage_per_tick = 6.3,
		collision_box = {{-3.1, -3.3}, {3.1, 3.3}},
		selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
		maximum_temperature = 1000,		
		fluid_box =
		{
			base_area = 3,
			height = 2,
			base_level = -1,			
			pipe_connections =
			{
				{ type = "input-output",  position = { 0,  4} },
				{ type = "input-output",  position = { 4,  0} },				
				{ type = "input-output",  position = { 0, -4} },
				{ type = "input-output",  position = {-4,  0} },
			},
			production_type = "input-output",
			filter = "steam",
		},
		fluid_input = { name = "steam", amount = 0.0, minimum_temperature = 500.0 },		
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output",
		},
		horizontal_animation =
		{
			filename = "__yi_engines__/graphics/entity/turbine_70_sheet.png",
			width = 288,
			height = 288,
			frame_count = 6,
			line_length = 6,
			animation_speed = 0.5,
			shift = {1.00, 0}
		},
		vertical_animation =
		{
			filename = "__yi_engines__/graphics/entity/turbine_70_sheet.png",
			width = 288,
			height = 288,
			frame_count = 6,
			line_length = 6,
			animation_speed = 0.5,
			shift = {1.00, 0}
		},		
	}, 	

	
	
})


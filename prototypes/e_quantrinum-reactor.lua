data:extend(
{  

	-- Quantrinum Reactor		
	{
		type = "assembling-machine",
		name = "y-quantrinum-reactor",
		 icon_size = 32, icon =  "__yi_engines__/graphics/entity/energy2/qr-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-quantrinum-reactor"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 100,
				base_level = 1,
				pipe_connections = {
					{type="output", position = { 0, 3}},					
					{type="output", position = { 0,-3}},						
					{type="output", position = { 3, 0}},					
					{type="output", position = {-3, 0}},											
				}
			},					
		},
		collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__yi_engines__/graphics/entity/energy2/qr-anim.png",			
			width = 200,
			height = 180,
			shift = {0.35, 0.0},
			frame_count = 18,
			line_length = 9,
			animation_speed = 0.75,
		},
		crafting_categories = {"yrcat-mf1q"},
		crafting_speed = 1,
		energy_source = {		
			type = "electric",
			usage_priority = "primary-input",
			emissions_per_minute = 0.5, 
		},
		energy_usage = "2MW",						
		ingredient_count = 1,
		order="a[atomics]",		
		subgroup = "yie-engines",
	},	


})
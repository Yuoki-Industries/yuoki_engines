data:extend({  

	{
		type = "boiler",
		name = "ye_rheinsberg",
		icon_size = 32, icon =  "__yi_engines__/graphics/entity/rheinsberg-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.1, mining_time = 0.5, result = "ye_rheinsberg"},
		max_health = 700,
		corpse = "big-remnants",
		resistances = {{type = "fire",percent = 80}},		
		collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		mode = "output-to-separate-pipe",
		target_temperature = 1000,
		fluid_box =
		{		
			base_area = 10,
			height = 1,
			base_level = -1,

			pipe_connections =
			{			
				{ type = "input-output", position = { -1,  3} },
				{ type = "input-output", position = { 0,  3} },
				{ type = "input-output", position = { 1, 3} },				
			},
			production_type = "input-output",
			filter = "water",
		},
		output_fluid_box =
		{
			base_area = 5,
			height = 10,
			--pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ type = "output", position = { -1, -3} },
				{ type = "output", position = {  0, -3} },
				{ type = "output", position = {  1, -3} },
			},
			production_type = "output",
			filter = "steam",
		},		
				
		energy_consumption = "75MW",
		energy_source =
		{
			type = "burner",
			fuel_category = "yfusion",
			effectivity = 1,
			fuel_inventory_size = 1,
			fuel_inventory_count = 100,
			emissions_per_minute = 250,
			smoke = {{	name = "smoke",deviation = {0.1, 0.1},frequency = 0.1,}}
		},
		structure =
		{
			north = 
			{
				filename = "__yi_engines__/graphics/entity/rheinsberg.png", priority = "extra-high", width = 192, height = 192, shift = {0.34, -0.125},
			},
			east =
			{
				filename = "__yi_engines__/graphics/entity/rheinsberg.png", priority = "extra-high", width = 192, height = 192, shift = {0.34, -0.125},
			},
			south =
			{
				filename = "__yi_engines__/graphics/entity/rheinsberg.png", priority = "extra-high", width = 192, height = 192, shift = {0.34, -0.125},
			},
			west =
			{
				filename = "__yi_engines__/graphics/entity/rheinsberg.png", priority = "extra-high", width = 192, height = 192, shift = {0.34, -0.125},
			},
		},
		fire = {},
		fire_glow = {},
		burning_cooldown = 60,
		-- these are the pipe pictures - boiler is a pipe as well
		pictures = pipepictures()
	},	


})
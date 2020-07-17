-- Specifies set of pictures and animations used by more entities, to avoid duplication.
-- The standard set of transport belt pictures (vertical/horizontal + endigns + startings)
-- are used in transport belt, transport belt to ground and splitter.


ending_patch_prototype =
{
--[[
	sheet =
	{
		filename = "__base__/graphics/entity/transport-belt/start-end-integration-patches.png",
		width = 40,
		height = 40,
		priority = "extra-high"
	}
	]]
}

--vacumatic tube gray
ye_basic_belt_horizontal =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_orange.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16, shift = {0,0},
	
}
ye_basic_belt_vertical =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_orange.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16, shift = {0,0},
	y = 40
}
ye_basic_belt_ending_top =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_orange.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 80
}
ye_basic_belt_ending_bottom =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_orange.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 120
}
ye_basic_belt_ending_side =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_orange.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 160,
}
ye_basic_belt_starting_top =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_orange.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 200,
}
ye_basic_belt_starting_bottom =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_orange.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 240,
}
ye_basic_belt_starting_side =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_orange.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 280,
}

--vacumatic tube green
ye_green_belt_horizontal =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_green.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16, shift = {0,0},
	
}
ye_green_belt_vertical =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_green.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16, shift = {0,0},
	y = 40
}
ye_green_belt_ending_top =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_green.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 80
}
ye_green_belt_ending_bottom =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_green.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 120
}
ye_green_belt_ending_side =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_green.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 160
}
ye_green_belt_starting_top =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_green.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 200
}
ye_green_belt_starting_bottom =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_green.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 240
}
ye_green_belt_starting_side =
{
	filename = "__yi_engines__/graphics/entity/ye_transport_green.png",
	priority = "extra-high",
	width = 40,
	height = 40,
	frame_count = 16,
	y = 280
}


data:extend(
{
	{
		type = "transport-belt",
		name = "ye_tranport_tube_orange",
		icon_size = 32, icon =  "__yi_engines__/graphics/icons/ye_transport_orange_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.5, mining_time = 0.5, result = "ye_tranport_tube_orange"},
		max_health = 100,
		corpse = "small-remnants",
		resistances ={{type = "physical",percent = 60}},
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/transport-belt.ogg",
				volume = 0.4
			},
			max_sounds_per_type = 3
		},
		animation_speed_coefficient = 8,
		animations =
		{
			filename = "__yi_engines__/graphics/entity/ye_transport_orange.png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 16,
			direction_count = 12
		},
		belt_horizontal = ye_basic_belt_horizontal,
		belt_vertical = ye_basic_belt_vertical,
		ending_top = ye_basic_belt_ending_top,
		ending_bottom = ye_basic_belt_ending_bottom,
		ending_side = ye_basic_belt_ending_side,
		starting_top = ye_basic_belt_starting_top,
		starting_bottom = ye_basic_belt_starting_bottom,
		starting_side = ye_basic_belt_starting_side,
		--ending_patch = ending_patch_prototype,
		fast_replaceable_group = "transport-belt",
		speed = 0.046875,
		connector_frame_sprites = transport_belt_connector_frame_sprites,
		circuit_connector_sprites = transport_belt_circuit_connector_sprites,
		circuit_wire_connection_point = transport_belt_circuit_wire_connection_point,
		circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
	},

	{
		type = "transport-belt",
		name = "ye_tranport_tube_green",
		icon_size = 32, icon =  "__yi_engines__/graphics/icons/ye_transport_green_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.5, mining_time = 0.5, result = "ye_tranport_tube_green"},
		max_health = 100,
		corpse = "small-remnants",
		resistances ={{type = "physical",percent = 60}},
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/transport-belt.ogg",
				volume = 0.4
			},
			max_sounds_per_type = 3
		},
		animation_speed_coefficient = 4,
		animations =
		{
			filename = "__yi_engines__/graphics/entity/ye_transport_green.png",
			priority = "extra-high",
			width = 40,
			height = 40,
			frame_count = 16,
			direction_count = 12
		},
		belt_horizontal = ye_green_belt_horizontal,
		belt_vertical = ye_green_belt_vertical,
		ending_top = ye_green_belt_ending_top,
		ending_bottom = ye_green_belt_ending_bottom,
		ending_side = ye_green_belt_ending_side,
		starting_top = ye_green_belt_starting_top,
		starting_bottom = ye_green_belt_starting_bottom,
		starting_side = ye_green_belt_starting_side,
		--ending_patch = ending_patch_prototype,
		fast_replaceable_group = "transport-belt",
		speed = 0.15,
		connector_frame_sprites = transport_belt_connector_frame_sprites,
		circuit_connector_sprites = transport_belt_circuit_connector_sprites,
		circuit_wire_connection_point = transport_belt_circuit_wire_connection_point,
		circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
	},
		
	{
		type = "underground-belt",
		name = "ye_tranport_tube_orange_underground",
		icon_size = 32, icon =  "__yi_engines__/graphics/icons/ubo_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_tranport_tube_orange_underground"},
		max_health = 60,
		corpse = "small-remnants",
		max_distance = 20,
		underground_sprite =
		{
			filename = "__yi_engines__/graphics/icons/underground-lines.png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5
		},
		underground_remove_belts_sprite =
		{
			filename = "__core__/graphics/arrows/underground-lines-remove.png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5
		},
		resistances ={{type = "physical",percent = 60}},
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		animation_speed_coefficient = 16,
		belt_horizontal = ye_basic_belt_horizontal,
		belt_vertical = ye_basic_belt_vertical,
		ending_top = ye_basic_belt_ending_top,
		ending_bottom = ye_basic_belt_ending_bottom,
		ending_side = ye_basic_belt_ending_side,
		starting_top = ye_basic_belt_starting_top,
		starting_bottom = ye_basic_belt_starting_bottom,
		starting_side = ye_basic_belt_starting_side,
		fast_replaceable_group = "underground-belt",
		speed = 0.046875,
		structure =
		{
			direction_in =
			{
				sheet =
				{
					filename = "__yi_engines__/graphics/entity/ubo_l2.png",
					priority = "extra-high",
					shift = {0, 0.125},
					width = 48,
					height = 48,					
				}
			},
			direction_out =
			{
				sheet =
				{
					filename = "__yi_engines__/graphics/entity/ubo_l1.png",
					priority = "extra-high",
					shift = {0, 0.125},
					width = 48,
					height = 48,					
				}
			}
		},
		--ending_patch = ending_patch_prototype
	},

	
	{
		type = "underground-belt",
		name = "ye_tranport_tube_green_underground",
		icon_size = 32, icon =  "__yi_engines__/graphics/icons/ubg_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_tranport_tube_green_underground"},
		max_health = 60,
		corpse = "small-remnants",
		max_distance = 20,
		underground_sprite =
		{
			filename = "__yi_engines__/graphics/icons/underground-lines.png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5
		},
		underground_remove_belts_sprite =
		{
			filename = "__core__/graphics/arrows/underground-lines-remove.png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5
		},
		resistances ={{type = "physical",percent = 60}},
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		animation_speed_coefficient = 4,
		belt_horizontal = ye_green_belt_horizontal,
		belt_vertical = ye_green_belt_vertical,
		ending_top = ye_green_belt_ending_top,
		ending_bottom = ye_green_belt_ending_bottom,
		ending_side = ye_green_belt_ending_side,
		starting_top = ye_green_belt_starting_top,
		starting_bottom = ye_green_belt_starting_bottom,
		starting_side = ye_green_belt_starting_side,
		fast_replaceable_group = "underground-belt",
		speed = 0.15,
		structure =
		{
			direction_in =
			{
				sheet =
				{
					filename = "__yi_engines__/graphics/entity/ubg_l2.png",
					priority = "extra-high",
					shift = {0, 0.125},
					width = 48,
					height = 48,					
				}
			},
			direction_out =
			{
				sheet =
				{
					filename = "__yi_engines__/graphics/entity/ubg_l1.png",
					priority = "extra-high",
					shift = {0, 0.125},
					width = 48,
					height = 48,					
				}
			}
		},
		--ending_patch = ending_patch_prototype
	},	
	
	
	-- splitter
	
	{
		type = "splitter",
		name = "ye_tranport_tube_orange_splitter",
		icon_size = 32, icon =  "__yi_engines__/graphics/icons/orange_splitter_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_tranport_tube_orange_splitter"},
		max_health = 100,
		corpse = "medium-remnants",
		resistances = {{type = "fire",percent = 60}},
		collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
		selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
		animation_speed_coefficient = 8,
		structure_animation_speed_coefficient = 0.7,
		structure_animation_movement_cooldown = 10,
		belt_horizontal = ye_basic_belt_horizontal,
		belt_vertical = ye_basic_belt_vertical,
		ending_top = ye_basic_belt_ending_top,
		ending_bottom = ye_basic_belt_ending_bottom,
		ending_side = ye_basic_belt_ending_side,
		starting_top = ye_basic_belt_starting_top,
		starting_bottom = ye_basic_belt_starting_bottom,
		starting_side = ye_basic_belt_starting_side,
		--ending_patch = ending_patch_prototype,
		fast_replaceable_group = "splitter",
		speed = 0.046875,
		structure =
		{
			north = { filename = "__yi_engines__/graphics/entity/orange_splitter0004.png", frame_count = 1, line_length = 1, priority = "extra-high", width = 128, height = 128, shift = {0, 0} },
			east = { filename = "__yi_engines__/graphics/entity/orange_splitter0001.png", frame_count = 1, line_length = 1, priority = "extra-high", width = 128, height = 128, shift = {0, 0} },
			south = { filename = "__yi_engines__/graphics/entity/orange_splitter0002.png", frame_count = 1, line_length = 1, priority = "extra-high", width = 128, height = 128, shift = {0, 0} },
			west = { filename = "__yi_engines__/graphics/entity/orange_splitter0003.png", frame_count = 1, line_length = 1, priority = "extra-high", width = 128, height = 128, shift = {0, 0} },
		},		
	},

	{
		type = "splitter",
		name = "ye_tranport_tube_green_splitter",
		icon_size = 32, icon =  "__yi_engines__/graphics/icons/orange_splitter_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_tranport_tube_green_splitter"},
		max_health = 100,
		corpse = "medium-remnants",
		resistances = {{type = "fire",percent = 60}},
		collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
		selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
		animation_speed_coefficient = 4,
		structure_animation_speed_coefficient = 0.7,
		structure_animation_movement_cooldown = 10,
		belt_horizontal = ye_green_belt_horizontal,
		belt_vertical = ye_green_belt_vertical,
		ending_top = ye_green_belt_ending_top,
		ending_bottom = ye_green_belt_ending_bottom,
		ending_side = ye_green_belt_ending_side,
		starting_top = ye_green_belt_starting_top,
		starting_bottom = ye_green_belt_starting_bottom,
		starting_side = ye_green_belt_starting_side,		
		--ending_patch = ending_patch_prototype,
		fast_replaceable_group = "splitter",
		speed = 0.15,
		structure =
		{
			north = { filename = "__yi_engines__/graphics/entity/green_splitter0004.png", frame_count = 1, line_length = 1, priority = "extra-high", width = 128, height = 128, shift = {0, 0} },
			east = { filename = "__yi_engines__/graphics/entity/green_splitter0001.png", frame_count = 1, line_length = 1, priority = "extra-high", width = 128, height = 128, shift = {0, 0} },
			south = { filename = "__yi_engines__/graphics/entity/green_splitter0002.png", frame_count = 1, line_length = 1, priority = "extra-high", width = 128, height = 128, shift = {0, 0} },
			west = { filename = "__yi_engines__/graphics/entity/green_splitter0003.png", frame_count = 1, line_length = 1, priority = "extra-high", width = 128, height = 128, shift = {0, 0} },
		},		
	},
	
	
})


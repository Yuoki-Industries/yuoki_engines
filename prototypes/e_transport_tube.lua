require("circuit-connector-sprites")
local meld = require("meld")

local ye_tranport_tube_orange_animation_set = {
	animation_set = {

		filename = "__yi_engines__/graphics/entity/ye_transport_orange_v2.png",
		priority = "extra-high",
		width = 40,
		height = 40,
		frame_count = 16,
		direction_count = 20,
	},
}
local ye_transport_green_animation_set = {
	animation_set = {

		filename = "__yi_engines__/graphics/entity/ye_transport_green_v2.png",
		priority = "extra-high",
		width = 40,
		height = 40,
		frame_count = 16,
		direction_count = 20,
	},
}

belt_reader_gfx = -- not local
	{
		belt_reader = {
			{
				sprites = util.sprite_load("__base__/graphics/entity/transport-belt/belt-reader-top", {
					priority = "low",
					scale = 0.5,
					frame_count = 4,
					direction_count = 4,
				}),
				render_layer = "object",
			},
			{
				sprites = util.sprite_load("__base__/graphics/entity/transport-belt/belt-reader-base", {
					priority = "low",
					scale = 0.5,
					frame_count = 4,
					direction_count = 4,
				}),
				render_layer = "transport-belt-reader",
			},
			{
				sprites = util.sprite_load("__base__/graphics/entity/transport-belt/belt-reader-middle", {
					priority = "low",
					scale = 0.5,
					frame_count = 4,
					direction_count = 4,
				}),
				render_layer = "floor-mechanics",
			},
			{
				sprites = util.sprite_load("__base__/graphics/entity/transport-belt/belt-reader-under-middle", {
					priority = "low",
					scale = 0.5,
					frame_count = 4,
					direction_count = 4,
				}),
				render_layer = "transport-belt-endings",
			},
			{
				sprites = util.sprite_load("__base__/graphics/entity/transport-belt/belt-reader-bottom", {
					priority = "low",
					scale = 0.5,
					frame_count = 4,
					direction_count = 4,
				}),
				render_layer = "floor",
			},
			{
				sprites = util.sprite_load("__base__/graphics/entity/transport-belt/belt-reader-shadow", {
					priority = "low",
					scale = 0.5,
					frame_count = 4,
					direction_count = 4,
				}),
				render_layer = "floor",
			},
			-- More belt reader layers (with possibly different render layer) should go here
		},
	}

meld(ye_tranport_tube_orange_animation_set, belt_reader_gfx)
meld(ye_transport_green_animation_set, belt_reader_gfx)

data:extend({
	{
		type = "transport-belt",
		name = "ye_tranport_tube_orange",
		icon_size = 32,
		icon = "__yi_engines__/graphics/icons/ye_transport_orange_icon.png",
		flags = { "placeable-neutral", "player-creation" },
		minable = { hardness = 0.5, mining_time = 0.1, result = "ye_tranport_tube_orange" },
		max_health = 100,
		corpse = "small-remnants",
		resistances = { { type = "physical", percent = 60 } },
		collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		working_sound = {
			sound = {
				filename = "__base__/sound/transport-belt.ogg",
				volume = 0.17,
			},
			max_sounds_per_type = 3,
		},
		animation_speed_coefficient = 8,
		belt_animation_set = ye_tranport_tube_orange_animation_set,
		fast_replaceable_group = "transport-belt",
		related_underground_belt = "ye_tranport_tube_orange_underground",
		next_upgrade = "ye_tranport_tube_green",
		speed = 0.041664,
		connector_frame_sprites = transport_belt_connector_frame_sprites,
		circuit_connector = circuit_connector_definitions["belt"],
		circuit_wire_max_distance = transport_belt_circuit_wire_max_distance,
	},

	{
		type = "transport-belt",
		name = "ye_tranport_tube_green",
		icon_size = 32,
		icon = "__yi_engines__/graphics/icons/ye_transport_green_icon.png",
		flags = { "placeable-neutral", "player-creation" },
		minable = { hardness = 0.5, mining_time = 0.1, result = "ye_tranport_tube_green" },
		max_health = 100,
		corpse = "small-remnants",
		resistances = { { type = "physical", percent = 60 } },
		collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		working_sound = {
			sound = {
				filename = "__base__/sound/transport-belt.ogg",
				volume = 0.4,
			},
			max_sounds_per_type = 3,
		},
		animation_speed_coefficient = 4,
		belt_animation_set = ye_transport_green_animation_set,
		fast_replaceable_group = "transport-belt",
		related_underground_belt = "ye_tranport_tube_green_underground",
		speed = 0.15625,
		connector_frame_sprites = transport_belt_connector_frame_sprites,
		circuit_connector = circuit_connector_definitions["belt"],
		circuit_wire_max_distance = transport_belt_circuit_wire_max_distance,
	},

	{
		type = "underground-belt",
		name = "ye_tranport_tube_orange_underground",
		icon_size = 32,
		icon = "__yi_engines__/graphics/icons/ubo_icon.png",
		flags = { "placeable-neutral", "player-creation" },
		minable = { hardness = 0.2, mining_time = 0.1, result = "ye_tranport_tube_orange_underground" },
		max_health = 60,
		corpse = "small-remnants",
		max_distance = 11,
		underground_sprite = {
			filename = "__yi_engines__/graphics/icons/underground-lines.png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5,
		},
		underground_remove_belts_sprite = {
			filename = "__core__/graphics/arrows/underground-lines-remove.png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5,
		},
		resistances = { { type = "physical", percent = 60 } },
		collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		animation_speed_coefficient = 16,
		fast_replaceable_group = "transport-belt",
		next_upgrade = "ye_tranport_tube_green_underground",
		speed = 0.041664,
		belt_animation_set = ye_tranport_tube_orange_animation_set,
		structure = {
			direction_in = {
				sheet = {
					filename = "__yi_engines__/graphics/entity/ubo_l2.png",
					priority = "extra-high",
					shift = { 0, 0.125 },
					width = 48,
					height = 48,
				},
			},
			direction_out = {
				sheet = {
					filename = "__yi_engines__/graphics/entity/ubo_l1.png",
					priority = "extra-high",
					shift = { 0, 0.125 },
					width = 48,
					height = 48,
				},
			},
		},
		--ending_patch = ending_patch_prototype
	},

	{
		type = "underground-belt",
		name = "ye_tranport_tube_green_underground",
		icon_size = 32,
		icon = "__yi_engines__/graphics/icons/ubg_icon.png",
		flags = { "placeable-neutral", "player-creation" },
		minable = { hardness = 0.2, mining_time = 0.1, result = "ye_tranport_tube_green_underground" },
		max_health = 60,
		corpse = "small-remnants",
		max_distance = 20,
		underground_sprite = {
			filename = "__yi_engines__/graphics/icons/underground-lines.png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5,
		},
		underground_remove_belts_sprite = {
			filename = "__core__/graphics/arrows/underground-lines-remove.png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5,
		},
		resistances = { { type = "physical", percent = 60 } },
		collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		animation_speed_coefficient = 4,
		fast_replaceable_group = "transport-belt",
		speed = 0.15625,
		belt_animation_set = ye_transport_green_animation_set,
		structure = {
			direction_in = {
				sheet = {
					filename = "__yi_engines__/graphics/entity/ubg_l2.png",
					priority = "extra-high",
					shift = { 0, 0.125 },
					width = 48,
					height = 48,
				},
			},
			direction_out = {
				sheet = {
					filename = "__yi_engines__/graphics/entity/ubg_l1.png",
					priority = "extra-high",
					shift = { 0, 0.125 },
					width = 48,
					height = 48,
				},
			},
		},
		--ending_patch = ending_patch_prototype
	},

	-- splitter

	{
		type = "splitter",
		name = "ye_tranport_tube_orange_splitter",
		icon_size = 32,
		icon = "__yi_engines__/graphics/icons/orange_splitter_icon.png",
		flags = { "placeable-neutral", "player-creation" },
		minable = { hardness = 0.2, mining_time = 0.1, result = "ye_tranport_tube_orange_splitter" },
		max_health = 100,
		corpse = "medium-remnants",
		resistances = { { type = "fire", percent = 60 } },
		collision_box = { { -0.9, -0.4 }, { 0.9, 0.4 } },
		selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
		animation_speed_coefficient = 8,
		structure_animation_speed_coefficient = 0.7,
		structure_animation_movement_cooldown = 10,
		fast_replaceable_group = "transport-belt",
		next_upgrade = "ye_tranport_tube_green_splitter",
		speed = 0.041664,
		belt_animation_set = ye_tranport_tube_orange_animation_set,
		structure = {
			north = {
				filename = "__yi_engines__/graphics/entity/orange_splitter0004.png",
				frame_count = 1,
				line_length = 1,
				priority = "extra-high",
				width = 128,
				height = 128,
				shift = { 0, 0 },
			},
			east = {
				filename = "__yi_engines__/graphics/entity/orange_splitter0001.png",
				frame_count = 1,
				line_length = 1,
				priority = "extra-high",
				width = 128,
				height = 128,
				shift = { 0, 0 },
			},
			south = {
				filename = "__yi_engines__/graphics/entity/orange_splitter0002.png",
				frame_count = 1,
				line_length = 1,
				priority = "extra-high",
				width = 128,
				height = 128,
				shift = { 0, 0 },
			},
			west = {
				filename = "__yi_engines__/graphics/entity/orange_splitter0003.png",
				frame_count = 1,
				line_length = 1,
				priority = "extra-high",
				width = 128,
				height = 128,
				shift = { 0, 0 },
			},
		},
	},

	{
		type = "splitter",
		name = "ye_tranport_tube_green_splitter",
		icon_size = 32,
		icon = "__yi_engines__/graphics/icons/green_splitter_icon.png",
		flags = { "placeable-neutral", "player-creation" },
		minable = { hardness = 0.2, mining_time = 0.1, result = "ye_tranport_tube_green_splitter" },
		max_health = 100,
		corpse = "medium-remnants",
		resistances = { { type = "fire", percent = 60 } },
		collision_box = { { -0.9, -0.4 }, { 0.9, 0.4 } },
		selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
		animation_speed_coefficient = 4,
		structure_animation_speed_coefficient = 0.7,
		structure_animation_movement_cooldown = 10,
		fast_replaceable_group = "transport-belt",
		speed = 0.15625,
		belt_animation_set = ye_transport_green_animation_set,
		structure = {
			north = {
				filename = "__yi_engines__/graphics/entity/green_splitter0004.png",
				frame_count = 1,
				line_length = 1,
				priority = "extra-high",
				width = 128,
				height = 128,
				shift = { 0, 0 },
			},
			east = {
				filename = "__yi_engines__/graphics/entity/green_splitter0001.png",
				frame_count = 1,
				line_length = 1,
				priority = "extra-high",
				width = 128,
				height = 128,
				shift = { 0, 0 },
			},
			south = {
				filename = "__yi_engines__/graphics/entity/green_splitter0002.png",
				frame_count = 1,
				line_length = 1,
				priority = "extra-high",
				width = 128,
				height = 128,
				shift = { 0, 0 },
			},
			west = {
				filename = "__yi_engines__/graphics/entity/green_splitter0003.png",
				frame_count = 1,
				line_length = 1,
				priority = "extra-high",
				width = 128,
				height = 128,
				shift = { 0, 0 },
			},
		},
	},
})

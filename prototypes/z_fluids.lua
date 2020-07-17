
--automatically generated file | fMT-Export (c)YT v0.04-216Mrz03
--export-date: 2020-Feb-06

data:extend({

    --ID:18
    {
		type = "fluid", 
		name = "ye_blood", 
		icon_size = "32", 
		icon = "__yi_engines__/graphics/blood.png", 
		default_temperature = 6, 
		max_temperature = 42, 
		heat_capacity = "100J", 
		base_color = { r=1.0, g=0.7, b=0.7 }, 
		flow_color = { r=1.0, g=0.8, b=0.8 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0.590, 
		order = "a", 
		subgroup = "yie_agroproducts", 
    },
    --ID:2 yie corn-oil 
    {
		type = "fluid", 
		name = "ye_cornoil", 
		icon_size = "32", 
		icon = "__yi_engines__/graphics/steam-low.png", 
		default_temperature = 25, 
		max_temperature = 90, 
		heat_capacity = "2KJ", 
		base_color = { r=0.5, g=0.5, b=0.8 }, 
		flow_color = { r=0.5, g=0.6, b=0.7 }, 
		pressure_to_speed_ratio = 0.600, 
		flow_to_energy_ratio = 0.800, 
		order = "a-a", 
		subgroup = "yie_agroproducts", 
    },
    --ID:24
    {
		type = "fluid", 
		name = "ye_liquid_quantrinum", 
		icon_size = "32", 
		icon = "__yi_engines__/graphics/fluid_quantrinum.png", 
		default_temperature = 10, 
		max_temperature = 110, 
		heat_capacity = "10KJ", 
		base_color = { r=1.0, g=0.3, b=0.8 }, 
		flow_color = { r=1.0, g=0.4, b=0.9 }, 
		pressure_to_speed_ratio = 0.200, 
		flow_to_energy_ratio = 0.200, 
		order = "a", 
		subgroup = "yie-engines", 
    },
    --ID:17 Slurry 
    {
		type = "fluid", 
		name = "ye_slurry", 
		icon_size = "32", 
		icon = "__yi_engines__/graphics/slurry.png", 
		default_temperature = 20, 
		max_temperature = 40, 
		heat_capacity = "0.5KJ", 
		base_color = { r=0.5, g=0.35, b=0.1 }, 
		flow_color = { r=0.55, g=0.4, b=0.15 }, 
		pressure_to_speed_ratio = 0.400, 
		flow_to_energy_ratio = 0.590, 
		order = "a", 
		subgroup = "yie_agroproducts", 
    },
    --ID:16 275iger steam 
    {
		type = "fluid", 
		name = "ye_steam", 
		icon_size = "32", 
		icon = "__yi_engines__/graphics/steam.png", 
		default_temperature = 110, 
		max_temperature = 1000, 
		heat_capacity = "400J", 
		base_color = { r=0.6, g=0.7, b=0.7 }, 
		flow_color = { r=0.7, g=0.85, b=0.85 }, 
		pressure_to_speed_ratio = 0.800, 
		flow_to_energy_ratio = 0.800, 
		order = "a", 
		subgroup = "yie-fluids", 
    },
    --ID:1 mechanical force / hydraulic fluid 
    {
		type = "fluid", 
		name = "yie_refrigerant", 
		icon_size = "32", 
		icon = "__yi_engines__/graphics/hydraulik-fluid.png", 
		default_temperature = -150, 
		max_temperature = 50, 
		heat_capacity = "5KJ", 
		base_color = { r=0.0, g=0.8, b=0.8 }, 
		flow_color = { r=0.2, g=0.9, b=1.0 }, 
		pressure_to_speed_ratio = 0.600, 
		flow_to_energy_ratio = 0.600, 
		order = "f1", 
		subgroup = "yie-fluids", 
    },

})
data:extend({
	{
		type = "bool-setting",
		name = "j_fatmice_behaviour",
		setting_type = "startup",
		default_value = false,
		order = "a5",
	},

	{
		type = "string-setting",
		name = "j_factories_behaviour",
		setting_type = "startup",
		order = "a6",
		default_value = "No Changes",
		allowed_values = { "No Changes", "Balanced", "Overpowered" },
	},

	{
		type = "bool-setting",
		name = "j_special_sheet_metal_behaviour",
		setting_type = "startup",
		default_value = true,
		order = "a7",
	},
})

if mods["space-age"] then
	data.raw["recipe"]["ye_tranport_tube_green"].ingredients = {
		{ type = "item", name = "y-winding", amount = 2.0 },
		{ type = "item", name = "y-conductive-coil-1", amount = 2.0 },
		{ type = "item", name = "ye_buechsenblech", amount = 4.0 },
		{ type = "item", name = "ye_tranport_tube_orange", amount = 2.0 },
		{ type = "item", name = "tungsten-plate", amount = 3.0 },
	}
	data.raw["recipe"]["ye_tranport_tube_green"].category = "metallurgy"

	data.raw["recipe"]["ye_tranport_tube_green_underground"].ingredients = {
		{ type = "item", name = "ye_tranport_tube_orange_underground", amount = 2.0 },
		{ type = "item", name = "y-iron-case", amount = 4.0 },
		{ type = "item", name = "tungsten-plate", amount = 4.0 },
	}
	data.raw["recipe"]["ye_tranport_tube_green_underground"].category = "metallurgy"

	data.raw["recipe"]["ye_tranport_tube_green_splitter"].category = "metallurgy"

	data.raw["recipe"]["ye_tranport_tube_green_splitter"].ingredients = {
		{ type = "item", name = "ye_tranport_tube_orange_splitter", amount = 1.0 },
		{ type = "item", name = "ye_buechsenblech", amount = 2.0 },
		{ type = "item", name = "y-emotor-s", amount = 2.0 },
		{ type = "item", name = "y-bluegear", amount = 2.0 },
		{ type = "item", name = "tungsten-plate", amount = 4.0 },
	}
end

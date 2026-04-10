require("prototypes.integration.space-age.e_assemblys") -- Factories updates
require("prototypes.integration.space-age.e_transport_tube") -- Tubes updates


local j_special_sheet_metal = settings.startup["j_special_sheet_metal_behaviour"].value
if j_special_sheet_metal == true then
	data.raw.recipe["ye_buechsenblech"].ingredients = {
		{ type = "item", name = "yie_hard_metals", amount = 2 },
		{ type = "item", name = "y-orange-stuff", amount = 5 },
		{ type = "item", name = "y-unicomp-raw", amount = 10 },
	}
	data.raw.recipe["ye_buechsenblech"].results = { { type = "item", name = "ye_buechsenblech", amount = 3.0 } }
end

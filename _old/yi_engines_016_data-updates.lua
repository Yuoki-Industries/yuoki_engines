-- Tweaking item-sub-group order of group yuoki_liquids
data.raw["item-subgroup"]["yie_fluid_handle"].order="4"

-- Tweaking both order and values of the following recipes


if data.raw.recipe["ye_slurry2ethanol_recipe"] then
	data.raw.recipe["ye_slurry2ethanol_recipe"] = nil
	local new_recipe = {
		type = "recipe",
		name = "ye_slurry2rawsyngas3_recipe",
		category = "chemistry", -- 
		enabled = "true",
		energy_required = 90.00,
		ingredients = {
			{ type = "fluid", name = "ye_slurry" , amount = 150.0, },
			{ type = "item", name = "ye_sugar" , amount = 2.0, },
		},
		results = {
			{ type = "fluid", name = "y_syngas_raw", amount = 30.0, },
		},
		icon = "__Yuoki__/graphics/icons/obs/h2o_c_icon.png",
		subgroup = "y-fluid",
		order = "c5"
	}
	table.insert(data.raw.recipe, new_recipe)
end


if data.raw.recipe["ye_biofuel_recipe"] then
	data.raw.recipe["ye_biofuel_recipe"] = nil
	local new_recipe = {
		type = "recipe",
		name = "ye_granulate_rabio_recipe",
		category = "y-crushing-recipe", -- 
		enabled = "true",
		energy_required = 1.00,
		ingredients = {
			{ type = "item", name = "ye_biomixed" , amount = 1.0, },
		},
		results = {
			{ type = "item", name = "y_organic_dust", amount = 72.0, },
		},
		icon = "__Yuoki__/graphics/icons/sawdust_32.png",
		subgroup = "y_refine_raws",
		order = "5"
	}
	table.insert(data.raw.recipe, new_recipe)
end

-- Tweaking the order of the following recipes
--data.raw.recipe["ye_granulate_corn_recipe"].order = "1"
--data.raw.recipe["ye_granulate_vuger_recipe"].order = "2"
data.raw.recipe["y_granulate_wood_recipe"].order = "3"
--data.raw.recipe["ye_granulate_trifitan_recipe"].order = "4"

-- Add the following recipes to productivity modules limitation table.
for index, value in pairs(data.raw.module) do
	if value.name:find("productivity%-module") and value.limitation then
		table.insert(value.limitation, "ye_slurry2rawsyngas3_recipe")
	end
end

if data.raw["assembling-machine"]["y-heat-form-press"] and electric_Form_press then
   data.raw["assembling-machine"]["y-heat-form-press"].energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.05}
   data.raw["assembling-machine"]["y-heat-form-press"].energy_usage = "475kW"
   data.raw["assembling-machine"]["y-heat-form-press"].crafting_speed = 2
   
end

if data.raw["assembling-machine"]["y-crusher"] and electric_Crusher then
   data.raw["assembling-machine"]["y-crusher"].energy_source = { type = "electric", input_priority = "secondary", usage_priority = "secondary-input",emissions = 0.02,}
   data.raw["assembling-machine"]["y-crusher"].energy_usage = "125kW"
   data.raw["assembling-machine"]["y-crusher"].crafting_speed = 1.5
end
data:extend({

	{
		type = "recipe",
		name = "ye_trade_node_recipe",
		ingredients = {{"y-stargate",1},{"y-bluegear",2},{"iron-plate",4},},
		result = "ye_trade_node",
		enabled = "true",		
		result_count = 8,
		order="a2",
		subgroup = "yie_machinery2",
	},

	-- Solid Fuel Engine	
	{
		type = "recipe",
		name = "y-sfe-recipe",
		ingredients = {{"y-basic-t1-mf",3},{"y-bluegear",2},{"iron-plate",4},},
		result = "y-sfe",
		enabled = "true",		
		result_count = 1,
		order="engine",
		subgroup = "yie-engines",
	},
	-- Fluid Fuel Engine	
	{
		type = "recipe",
		name = "y-ffe-recipe",
		ingredients = {{"y-basic-t2-mf",2},{"y-bluegear",6},{"steel-plate",4},},
		result = "y-ffe",
		enabled = "true",		
		result_count = 1,
		order="engine",
		subgroup = "yie-engines",
	},

	-- waste condense 
	{
		type = "recipe",
		name = "y-waste-condense-recipe",
		--category = "yrcat-eg4",				
		enabled = "true",
		energy_required = 1,
		ingredients = {
			{ type="item", name="y-pol-waste", amount=150, },
		},
		results={
			--{ type="item", name="solid-fuel", amount=3, },
			{ type="item", name="y-mixed-fuel", amount=2, },
			{ type = "item", name = "y_greensign", amount = 1.0, },			
		},		
		icon_size = 32, icon =  "__yi_engines__/graphics/waste1-icon.png",
		subgroup = "yie-processed",	order="a2",		
	},	
	

})
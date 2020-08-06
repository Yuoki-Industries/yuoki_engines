--[[Yuoki intermediates script
Copyright joshrick (Codec) © August 2020
adds Yuoki intermediate products to the vanilla intermediates list--]]
local productivity_item_list=
                      { "y-iron-case-recipe",
					    "y-quantrinum-charge-recipe",
						"ye_center_recipe",
						"ye_sealing",
						"y-winding-recipe",
						"yie_pureiron_recipe",
						"yie_hard_metals_recipe",
						"ye_buechsenblech_recipe"
                      }

for _, module in pairs(data.raw.module) do
  if module.effect and module.limitation then
    for effect_name in pairs(module.effect) do
      if effect_name == "productivity"then
    for _, item in pairs( productivity_item_list) do
                table.insert(module.limitation,    item)
    end
        break
      end
    end
  end
end

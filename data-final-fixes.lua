local j_fatmice_overhaul = settings.startup["j_fatmice_behaviour"].value
if j_fatmice_overhaul == true then
	data.raw.recipe["y-rmvpol"].hidden = true
	data.raw.recipe["y-rmvpol"].disabled = true

	-- Lets change up the efficiency of the Fatmice
	data.raw["assembling-machine"]["y-electric-air-heater"].crafting_speed = 1
	data.raw["assembling-machine"]["y-electric-air-heater"].energy_source.emissions_per_minute = { pollution = -250 }
end

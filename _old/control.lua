require "versions"
-- following code by Fatmice, used with permission

--[[
local entities

script.on_init(function()
   global.TickerA = 59
   global.ROSTER = {}
   global.ACTIVE = {}
   global.YGBX = {}
   initialize_entities()
   global.version = "0.3.14"
   global.dirty= {}
   global.dirty[game.tick+54000] = true
end)

script.on_load(function()
   initialize_entities()
end)

script.on_configuration_changed(function(event)
   if global.version == nil then
      --game.players[1].print("Past global.version not found.  Initializing default migration for yi_engines_"..event.mod_changes["yi_engines"].new_version)
      migrate0_3_14a()
   elseif event.mod_changes and event.mod_changes["yi_engines"] then
      if event.mod_changes["yi_engines"].old_version then
         --game.players[1].print("Migrating: "..event.mod_changes["yi_engines"].old_version.." -> "..event.mod_changes["yi_engines"].new_version)
         migrate0_3_14b()
      else
         --game.players[1].print("Initializing yi_engines_"..event.mod_changes["yi_engines"].new_version)
         migrate0_3_14a()
      end
   end
end)

script.on_event(defines.events.on_built_entity, function(event)
   Registration(event.created_entity)
end)
script.on_event(defines.events.on_robot_built_entity, function(event)
   Registration(event.created_entity)
end)
script.on_event(defines.events.on_preplayer_mined_item, function(event) 
   Unregistration(event.entity)
end)
script.on_event(defines.events.on_robot_pre_mined, function(event)
   Unregistration(event.entity)
end)
script.on_event(defines.events.on_entity_died, function(event)
   Unregistration(event.entity)
end)

function Registration(entity)
   if entity.name == "y-gearbox-power" then
      if global.YGBX == nil then
         global.YGBX = {}
         initialize_entities()
      end
      local yegearboxen = {}
      yegearboxen[1] = entity
      --saving fluidbox wrapper in table
      yegearboxen[2] = entity.fluidbox
      --tick time
      yegearboxen[3] = 5
      --table.insert(entities[entity.name]["global"], yegearboxen)
      table.insert(global.ROSTER, yegearboxen)
   end
end

function Unregistration(entity)
   if entity.name == "y-gearbox-power" then
      local found_index
      local found_entity
      local found_entity_x = entity.position.x
      local found_entity_y = entity.position.y
      for index,entry in pairs(global.YGBX) do
         if entry[1] == entity and found_entity_x == entry[1].position.x and found_entity_y == entry[1].position.y then
            found_index = index
            found_entity = entry
            break
         end
      end
      table.remove(global.YGBX, found_index)
   end
end

script.on_event(defines.events.on_tick, function(event)
   if global.dirty[game.tick] then
      clean()
   end
   
   if global.TickerA == 0 then
      global.TickerA = 59
      --Once per second check ROSTER for things that could be moved to ACTIVE
      for k,entity in pairs(global.ROSTER) do
         if entity[1].valid and entities[entity[1].name] then
            if entity[1].is_crafting() then
               local next_tick = game.tick + entities[entity[1].name]["time"]
               setActiveTick(entity, next_tick)
               --game.players[1].print("Moved "..entity[1].name.." at "..entity[1].position.x..", "..entity[1].position.y.." to ACTIVE on tick "..game.tick)
               global.ROSTER[k] = nil
            end
            else
            --game.players[1].print("Something died while in ROSTER.")
            global.ROSTER[k] = nil
         end
      end
      else
      global.TickerA = global.TickerA - 1
   end
   
   -- ACTIVE entities.  Tick according to rules.  Subscription based ticking.
   if global.ACTIVE[game.tick] then
      for k,entity in pairs(global.ACTIVE[game.tick]) do
         if entity[1].valid and entities[entity[1].name] then
            if entity[1].is_crafting() then
               entities[entity[1].name]["update"](entity)
               local next_tick = game.tick + entities[entity[1].name]["time"]
               setActiveTick(entity, next_tick, k)
               --game.players[1].print("Ticked "..entity[1].name.." at "..entity[1].position.x..", "..entity[1].position.y.." Index: "..k)
               global.ACTIVE[game.tick][k] = nil
               else
               --game.players[1].print("Moved "..entity[1].name.." at "..entity[1].position.x..", "..entity[1].position.y.." to ROSTER")
               table.insert(global.ROSTER, entity)
               global.ACTIVE[game.tick][k] = nil
            end
            else
            --game.players[1].print("Something died while in ACTIVE.")
            global.ACTIVE[game.tick][k] = nil
         end
      end
      global.ACTIVE[game.tick] = nil
   end   
end)

function initialize_entities()
   -----------------------------------------------------------------------------
   -- Defining table of update functions and global tables for each entity names
   entities = {
      ["y-gearbox-power"] = {
         ["update"] = gearBox,
         ["global"] = global.YGBX,
         ["time"] = 5
      }
   }
end

function clean()
   --game.players[1].print("Table cleaning due on "..game.tick)
   -----------------------------------------------------------------------------
   -- Cleaning ROSTER
   if global.ROSTER then
--      game.players[1].print("Cleaning ROSTER")
      local new_ROSTER = {}
      for index,value in pairs(global.ROSTER) do
         if value ~= nil   then
            table.insert(new_ROSTER, value)
         end
      end
      global.ROSTER = new_ROSTER
   end
   -----------------------------------------------------------------------------
   -- Cleaning ACTIVE
   if global.ACTIVE then
--      game.players[1].print("Cleaning ACTIVE")
      local new_ACTIVE = {}
      for tick,entries in pairs(global.ACTIVE) do
         if #entries > 0 then
            new_ACTIVE[tick] = entries
         end
      end
      global.ACTIVE = new_ACTIVE
   end
   --game.players[1].print("Next table cleaning due on "..game.tick+54000)
   global.dirty[game.tick] = nil
   global.dirty[game.tick+54000] = true
end

function setActiveTick(entity, tick, index)
   if global.ACTIVE[tick] == nil then
      global.ACTIVE[tick] = {}
   end
   table.insert(global.ACTIVE[tick],entity)
end

function gearBox(entity)
   --[1] is MF input
   --[3] is MF ouput
   if entity[2][1] ~= nil and entity[2][3] ~= nil then
      entity[2][3] = {
         ["type"] = entity[2][1].type,
         ["amount"] = entity[2][3].amount,
         ["temperature"] = entity[2][1].temperature + 100              
      }
   end
   --game.players[1].print("Modified temperature of "..entity[1].name.." at "..entity[1].position.x..", "..entity[1].position.y.." Temp: "..entity[2][3].temperature)
end

remote.add_interface("yi_engines", {
   dump_ACTIVE = function ()
      local active_entries = {}
      for tick,_ in pairs(global.ACTIVE) do
         for index,value in pairs(global.ACTIVE[tick]) do
            if value ~= nil then
               if active_entries[tick] == nil then
                  active_entries[tick] = {}
               end
               active_entries[tick][index]= {
                  ["index"] = index,
                  ["name"] = value[1].name,
                  ["position"] = { value[1].position.x, value[1].position.y},
                  ["fluidbox"] = value[2]
               }
            end
         end
      end
      game.write_file("/yi_engines/ACTIVE.txt", serpent.block(active_entries))
   end,
   dump_newACTIVE = function ()
      local active_entries = {}
      for tick,_ in pairs(global.ACTIVE) do
         for index,value in pairs(global.ACTIVE[tick]) do
            if active_entries[tick] == nil then
               active_entries[tick] = {}
            end
            active_entries[tick][index] = {
               ["index"] = index,
               ["name"] = value[1].name,
               ["position"] = { value[1].position.x, value[1].position.y},
               ["fluidbox"] = value[2]
            }
         end
      end
      game.write_file("/yi_engines/newACTIVE.txt", serpent.block(active_entries))
   end,
   dump_ROSTER = function ()
      local active_entries = {}
      for tick,_ in pairs(global.ROSTER) do
         for index,value in pairs(global.ROSTER) do
            if value ~= nil then
               if active_entries[tick] == nil then
                  active_entries[tick] = {}
               end
               active_entries[tick][index]= {
                  ["index"] = index,
                  ["name"] = value[1].name,
                  ["position"] = { value[1].position.x, value[1].position.y},
                  ["fluidbox"] = value[2]
               }
            end
         end
      end
      game.write_file("/yi_engines/ROSTER.txt", serpent.block(active_entries))
   end,
   cheat = function()
      for _,player in pairs(game.players) do
         addItems(player, {name = "y-gearbox-power", count = 5})
         addItems(player, {name = "ye_overheater", count = 5})
         addItems(player, {name = "y-1stirling-engine", count = 5})
         addItems(player, {name = "ye_sturbine", count = 5})
         addItems(player, {name = "ye_tfmw_generator-s", count = 5})
      end
   end,
   killactive = function()
      for tick,_ in pairs(global.ACTIVE) do
         for k,entity in pairs(global.ACTIVE[tick]) do
            if entity[1].name == "ye_overheater" or "y-1stirling-engine" or "ye_sturbine" then
               global.ACTIVE[tick][k] = nil
            end
         end
      end
   end
})

function addItems(player, items)
   local countBefore = player.get_item_count(items.name)
   local countAfter
   
   player.insert(items)
   countAfter = player.get_item_count(items.name)
   if countAfter < (countBefore + items.count) then
      dropOnGround(player.surface, player.position, {name = items.name, count = (countBefore + items.count) - countAfter})
   end
end

function dropOnGround(surface, position, items, markForDeconstruction, force)
   local dropPosition
   local entity
   for n=1,items.count do
      dropPosition = surface.find_non_colliding_position("item-on-ground", position, 50, 0.5)
      if dropPosition then
         entity = surface.create_entity({name = "item-on-ground", position = dropPosition, stack = {name = items.name, count = 1}})
         if markForDeconstruction then
            entity.order_deconstruction(force)
         end
      end
   end
end
]]
function migrate0_1_9()
   global.TickerB = nil
   if global.ROSTER == nil then
      global.ROSTER = {}
   end
   if global.ACTIVE == nil then
      global.ACTIVE = {}
   end
   if global.YGBX ~= nil then
      for k,YGBX in pairs(global.YGBX) do
         if YGBX[2] == nil then
            YGBX[2] = YGBX[1].fluidbox
         end
         if YGBX[3] == nil then
            YGBX[3] = 5
         end
         table.insert(global.ROSTER, YGBX)
      end
   end
   if global.YSE ~= nil then
      for k,YSE in pairs(global.YSE) do
         if YSE[2] == nil then
            YSE[2] = YSE[1].fluidbox
         end
         if YSE[3] == nil then
            YSE[3] = 5
         end
         table.insert(global.ROSTER, YSE)
      end
   end
   if global.YFYO ~= nil then
      for k,YFYO in pairs(global.YFYO) do
         if YFYO[2] == nil then
            YFYO[2] = YFYO[1].fluidbox
         end
         if YFYO[3] == nil then
            YFYO[3] = 5
         end
         table.insert(global.ROSTER, YFYO)
      end
   end
   if global.YSTT ~= nil then
      for k,YSTT in pairs(global.YSTT) do
         if YSTT[2] == nil then
            YSTT[2] = YSTT[1].fluidbox
         end
         if YSTT[3] == nil then
            YSTT[3] = 5
         end
         table.insert(global.ROSTER, YSTT)
      end
   end
   global.dirty= {}
   global.dirty[game.tick+54000] = true
   global.version = "0.1.9"
end

function migrate0_3_14a()
   global.TickerB = nil
   if global.ROSTER == nil then
      global.ROSTER = {}
   end
   if global.ACTIVE == nil then
      global.ACTIVE = {}
   end
   if global.YGBX == nil then
      global.YGBX = {}
   end
   if global.YGBX ~= nil then
      for k,YGBX in pairs(global.YGBX) do
         if YGBX[2] == nil then
            YGBX[2] = YGBX[1].fluidbox
         end
         if YGBX[3] == nil then
            YGBX[3] = 5
         end
         table.insert(global.ROSTER, YGBX)
      end
   end
   global.dirty= {}
   global.dirty[game.tick+54000] = true
   global.version = "0.3.14"
   --game.players[1].print("Migrated through 0.3.14a")
end
function migrate0_3_14b()
   if global.YGBX == nil then
      global.YGBX = {}
   end
   obsolete = {
      ["ye_overheater"] = true,
      ["y-1stirling-engine"] = true,
      ["ye_sturbine"] = true
   }
   for tick,_ in pairs(global.ACTIVE) do
      for k,entity in pairs(global.ACTIVE[tick]) do
         if obsolete[entity[1].name] then
            global.ACTIVE[tick][k] = nil
         end
      end
   end
   global.dirty= {}
   global.dirty[game.tick+54000] = true
   global.version = "0.3.14"
   --game.players[1].print("Migrated through 0.3.14b")
end
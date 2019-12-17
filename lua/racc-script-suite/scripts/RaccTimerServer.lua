-- This script is not meant to be edited here please edit variables in config file @ /lua/racc-script-suite/config.lua thx <3

include(racc-script-suite/config.lua) -- Call the configuration gods


SetGlobalBool(racctimer, racc.config.timer.time)

function racctimertracker()
  if GetGlobalBool(racctimer) == 0 then
      racc.timer.action()
  else return
  end
end

timer.Create(racctimertracker, 1, racc.config.timer.time, racctimertracker())

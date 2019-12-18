-- This script is not meant to be edited here please edit variables in config file @ /lua/racc-script-suite/config.lua thx <3

include("racc-script-suite/config.lua") -- Call the configuration gods


SetGlobalstring(racctimer, racc.config.timer.time)

if racc.config.timer.hud == true then
SetGlobalBool(racctimerhudenabled, true)
SetGlobalstring(racctimertitle, racc.config.timer.hud.title)
else return
end

function racctimertracker()
  if GetGlobalBool(racctimer) <= 0 then
      racc.config.timer.action()
  else return
  end
end

timer.Create(racctimertracker, 1, racc.config.timer.time, racctimertracker())

-- This script is not meant to be edited here please edit variables in config file @ /lua/racc-script-suite/config.lua thx <3

include("racc-script-suite/config.lua") -- Call the configuration gods


SetGlobalstring(racctimer, racc.config.timer.time) -- tell all of the people how long is left

if racc.config.timer.hud == true then -- if the hud is enabled in config

  SetGlobalBool(racctimerhudenabled, true) -- tell the people about it
  SetGlobalString(racctimertitle, racc.config.timer.hud.title) -- shout the timer's title

else -- or

  SetGlobalBool(racctimerhudenabled, false) -- tell all of the people no "HUD BRO!"

end

function racctimertracker() -- time keeper

  if GetGlobalBool(racctimer) <= 0 then -- if the time is 0 or lower ( incase it skips it )

      racc.config.timer.action() -- do the thang in config file

  else -- or

    return -- do nothing

  end

end

timer.Create(racctimertracker, 1, racc.config.timer.time, racctimertracker()) -- ticking clock

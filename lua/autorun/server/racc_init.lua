-- Please don't edit this. Use config file instead. located @ /lua/racc-script-suite/config.lua. thx <3
racc = {} -- Need this for the big brain stuff
racc.config = {} -- imagine big brain stuff without the brain to do it
include("racc-script-suite/config.lua") -- Call the configuration gods
AddCSLuaFile("racc-script-suite/autorun/client/racc_init.lua")

if (racc.config.timer.enabled) then -- If timer is enabled 
  include("racc-script-suite/scripts/RaccTimerServer.lua") -- call timer script
else return -- else don't
end

if (racc.config.dynamicname.enabled) then -- if dynamic name is enabled
  include("racc-script-suite/scripts/DynamicName.lua") -- call dynamice name script
else return -- else don't
end

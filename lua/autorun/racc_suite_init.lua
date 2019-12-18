-- Please don't edit this. Use config file instead. located @ /lua/racc-script-suite/config.lua. thx <3
if SERVER then

  racc = {} -- Need this for the big brain stuff
  racc.config = {} -- imagine big brain stuff without the brain to do it
  include("racc-script-suite/config.lua") -- Call the configuration gods

  if (racc.config.timer.enabled) then -- If timer is enabled 
    include("racc-script-suite/scripts/RaccTimerServer.lua") -- call timer script
    AddCSLuaFile("racc-script-suite/scripts/RaccTimerClient.lua") -- send clientside timer file to the players

    if racc.config.timer.hud == true then -- timer hud is enabled
      SetGlobalBool(racctimerhudenabled, true) -- tell all of the people
    else
      SetGlobalBool(racctimerhudenabled, false) -- tell all of the people
    end

  else
    return -- else don't
  end

  if (racc.config.dynamicname.enabled) then -- if dynamic name is enabled
    include("racc-script-suite/scripts/DynamicName.lua") -- call dynamic name script
  else
    return -- else don't
  end
end

if CLIENT then
    include("racc-script-suite/scripts/RaccTimerClient.lua") -- tell the client to load the clientside timer file
end

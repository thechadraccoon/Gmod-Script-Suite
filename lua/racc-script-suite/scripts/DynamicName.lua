-- This script is not meant to be edited here please edit variables in config file @ /lua/racc-script-suite/config.lua thx <3

include("racc-script-suite/config.lua") -- Call the configuration gods

function racc.barrdyntags()

  racc.dynamicname.tags.barred = {} -- table initialisation & cleanup
  local tagcount -- gotta tell reeree here that tagcount is a thing now

  if table.count(racc.dynamicname.tags) > 3 then -- the amount of tags is hire than 3 then its 3 capitche?
    tagcount = 3 -- make it 3 boiis
  else
    tagcount = table.count(racc.dynamicname.tags) -- if its 3 or lower then stay that number
  end

  timer.Create(raccdynamebarrepeater, 0.01, tagcount, function() -- add a tag every tick
    local  v = table.random(racc.dynamicname.tags) -- what is V, bro?
    if table.HasValue( racc.dynamicname.tags.barred, "|" .. v ) == false then -- check if we already have it
      table.insert( racc.dynamicname.tags.barred, "|" .. v) -- if not add it
    else
      return -- do nothing
    end
  end)

  RunConsoleCommand( "hostname", racc.dynamicname.name, table.ToString(racc.dynamicname.tags.barred, false) ) -- set server name

end

function racc.dynamicname()

  if racc.dynamicname.tagsmode == true then -- if its enabled
    racc.barrdyntags() -- do the thing
  else -- or
    RunConsoleCommand( "hostname", racc.dynamicname.name, racc.dynamicname.customtext ) -- use the custom text
  end

end

timer.Create(raccdyname, racc.config.dynamicname.interval, 0, racc.dynamicname()) -- run this at the interval set in the config

-- This script is not meant to be edited here please edit variables in config file @ /lua/racc-script-suite/config.lua thx <3

include(racc-script-suite/config.lua) -- Call the configuration gods

racc.dynamicname.tags.barred = {}

function racc.barrdyntags()
local tagcount
if table.count(racc.dynamicname.tags) > 3 then tagcount = 3 else tagcount = table.count(racc.dynamicname.tags) end
    timer.Create(raccdynamebarrepeater, 0.01, tagcount, function()
      local  v = table.random(racc.dynamicname.tags)
      if table.HasValue( racc.dynamicname.tags.barred, "|" .. v ) == false then
     	 table.insert( racc.dynamicname.tags.barred, "|" .. v)
      else racc.barrdyntags()
  	  end
    end)
  RunConsoleCommand( "hostname", racc.dynamicname.name, table.ToString(racc.dynamicname.tags.barred, false) )
end

function racc.dynamicname()
	if racc.dynamicname.tagsmode == true then
		racc.barrdyntags()
	else
		RunConsoleCommand( "hostname", racc.dynamicname.name, racc.dynamicname.customtext )
	end
end

timer.Create(raccdyname, racc.config.dynamicname.interval, 0, racc.dynamicname())

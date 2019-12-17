-- This is the configuration file for the racc script suite

-- Timer Stuff
racc.config.timer.enabled = true -- do we enable the timer script or not?
racc.config.timer.time = 300 -- how long should the timer last?
racc.config.timer.action = function() end -- Function calling or custom function either work (Ex: MapVote() or game.ConsoleCommand( "say Hi\n" ))

--Dynamic server name stuff
racc.config.dynamicname.enabled = true -- do we enabled the dynamic server name script?
racc.config.dynamicname.name = "generic server name" -- Your Server's name
racc.config.dynamicname.tagmode.enabled = true -- do you want tags or custom text?
racc.config.dynamicname.tags = {generic, gmod, server, tags} -- tags to be dynamicly changed by scipt
racc.config.dynamicname.customtext = "generic custom text" -- custom text updated every file update(on the server) and startup

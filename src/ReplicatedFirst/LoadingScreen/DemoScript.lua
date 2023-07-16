--[[
	The task.wait() calls below are placeholders for calling asynchronous functions
	that would load parts of your game.
--]]

local ContentProvider = game:GetService("ContentProvider")

local LoadingScreen = require(script.Parent.LoadingScreen)

local REQUIRED_ASSETS = 
	{
	
		game.Workspace,game.StarterGui,game.StarterPlayer,game.Teams
		
	}

LoadingScreen.enableAsync()
LoadingScreen.updateDetailText("Preloading important assets...")
ContentProvider:PreloadAsync(REQUIRED_ASSETS)
LoadingScreen.updateDetailText("Initializing...")
task.wait(6.5)
LoadingScreen.updateDetailText("Caution: Character under construction. Expect sudden appearance, questionable fashion choices, and occasional teleportation glitches!")
task.wait(4)
LoadingScreen.updateDetailText("Spawning character...")
task.wait(3)
LoadingScreen.updateDetailText("Final Touches")
task.wait(3.5)
LoadingScreen.disableAsync()
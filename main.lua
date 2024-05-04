local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Key system", HidePremium = false, SaveConfig = true, IntroText = "Loading lionstarter.dll...,"})

OrionLib:MakeNotification({
	Name = "lionware notifier",
	Content = "lionware.exe has been loaded.",
	Image = "rbxassetid://4483345998",
	Time = 3
})

_G.Key = "Nexushub_001"
_G.KeyInput = "string"

function MakeScriptHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nexushubisbestscript/NEXUSHUB/main/NEXUSHUB.txt"))()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
	Name = "Correct Key!",
	Content = "lionware.exe has been loaded.",
	Image = "rbxassetid://4483345998",
	Time = 3
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
	Name = "InCorrect Key!",
	Content = "lionware.exe has not been loaded.",
	Image = "rbxassetid://4483345998",
	Time = 3
end

                
local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if _G.KeyInput == _G.Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            IncorrectKeyNotification()
        end
})
Tab:AddButton({
            Name = "Copy Job Id",
            Callback = function()
                setclipboard(tostring(game.JobId))
            end
  	end    
})
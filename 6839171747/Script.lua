local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false, })

OrionLib:MakeNotification({
	Name = "Welcome!",
	Content = "You are Logged in as "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

getgenv().Key = "Doors" -- the key for the script 
getgenv().Keyinput = "string"

function MakeScriptHub()
if game.PlaceId == 6839171747 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "NSD HUB Doors Script", HidePremium = false, IntroEnabled = true,IntroText = "Welcome Back NSD", SaveConfig = true, ConfigFolder = "DoorsTest"})
    
    local DoorsTab = Window:MakeTab({
        Name = "Doors",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    DoorsTab:AddButton({
        Name = "Vynixius Script",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua"))()
        end
    })
    DoorsTab:AddButton({
        Name = "iCherryKardes Script",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/iCherryKardes/Doors/main/Floor%202%20Mod"))()
        end
    })
    DoorsTab:AddButton({
        Name = "Remove A-90",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NotSlayerDemon/Doors-Remove-A-90/main/A-90%20Script.lua"))()
        end
    })

    DoorsTab:AddButton({
        Name = "Rooms AutoWalk to A-1000",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NotSlayerDemon/Doors-AutoWalk/main/Script.lua"))()
        end
    })
    
    DoorsTab:AddButton({
        Name = "inf Jack (only in Godmode it works)",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NotSlayerDemon/Doors-inf-Jack/main/Script%20for%20inf%20Jack.lua"))()
        end
    })





    OrionLib:MakeNotification({
        Name = "Ty for using the my script",
        Content = "You Executed me "..Player.Name..".",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    end
    OrionLib:Init()-- End of this script
end    
    function CorrectKeyNotification()
        orionLib:MakeNotification({
            Name = "Correct Key",
            Content = "You have entered the correct key!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end

    function incorrectKeyNotification()
        OrionLib:MakeNotification({
            Name = "InCorrect Key",
            Content = "You have entered the Incorrect key!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
        
    local KeyTab = Window:MakeTab({
        Name = "Key",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
        
    KeyTab:AddTextbox({
        Name = "Enter Key",
        Default = "",
        TextDisappear = true,
        Callback = function(Value)
            getgenv().Keyinput = Value
        end	  
    })
        
    KeyTab:AddButton({
        Name = "Ceack Key",
        Callback = function()
            if getgenv().Keyinput == getgenv().Key then
            MakeScriptHub()
            CorrectKeyNotification() 
            else
                incorrectKeyNotification()
            end	
        end    
    })

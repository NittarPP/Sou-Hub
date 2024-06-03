local Luminosity = loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavoc101/Genesis-Studios/main/UserInterface/Luminosity.lua", true))()
local Window = Luminosity.new("Sou / Hub", "v1.0.0", 4370345701)
local place = game.PlaceId

function Load(Game)
    local Tab1 = Window.Tab("Main", 6026568198)
    local Folder1 = Tab1.Folder("Main", "A bunch of options you can use")

    Folder1.TextBox("Size", "Enter Your Size", function(Size)
        local args = {
            [1] = Size
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("AwardSpinSize - RemoteEvent"):FireServer(unpack(args))
    end)
end

if place == 15885874861 then
    Load(15885874861)
else
    game.Players.LocalPlayer:Kick("Script Not Supported")
end

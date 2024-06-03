local Luminosity = loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavoc101/Genesis-Studios/main/UserInterface/Luminosity.lua", true))()
local Window = Luminosity.new("Sou / Hub", "v1.0.0", 4370345701)
local place = game.PlaceId

function send(Text)
    local Web = nil

end

function Load(Game)
    local Main = Window.Tab("Main", 6026568198)
    local Folder1 = Main.Folder("Main", "A bunch of options you can use")

    Main.TextBox("Size", "Enter Your Size", function(Size)
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

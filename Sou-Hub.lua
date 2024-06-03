-- Load OrionLib
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create a Window
local Window = OrionLib:MakeWindow({Name = "Sou / Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Sou-Hub"})

-- Get current place ID and player
local place = game.PlaceId
local player = game.Players.LocalPlayer

-- Function to load specific applications
function Load(App)
    if App == 15885874861 then
        -- Notification for the player
        OrionLib:MakeNotification({
            Name = "Sou Notification",
            Content = "Hello " .. player.Name .. ", Welcome to Sou Hub",
            Image = "rbxassetid://4483345998",
            Time = 5
        })

        -- Creating a new tab
        local Tab = Window:MakeTab({
            Name = "Main",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })

        -- Adding a section to the tab
        local Section = Tab:AddSection({
            Name = "Main Script"
        })

        -- Textbox for adding size
        Tab:AddTextbox({
            Name = "Add Size",
            Default = "0",
            TextDisappear = true,
            Callback = function(Value)
                local args = {[1] = Value}
                game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("AwardSpinSize - RemoteEvent"):FireServer(unpack(args))
            end	  
        })

        -- Button to reset the player's health
        Tab:AddButton({
            Name = "Reset",
            Callback = function()
                local character = player.Character or player.CharacterAdded:Wait()
                local humanoid = character:FindFirstChild("Humanoid")
                if humanoid then
                    humanoid.Health = 0
                end
            end    
        })

        -- Textbox for using
        Tab:AddTextbox({
            Name = "Use",
            Default = "0-40",
            TextDisappear = true,
            Callback = function(Value)
                local args = {[1] = Value}
                game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("BuySkin - RemoteEvent"):FireServer(unpack(args))
            end	  
        })

        Tab:AddButton({
            Name = "Close",
            Callback = function()
                OrionLib:Destroy()
            end    
        })

    else
        OrionLib:MakeNotification({
            Name = "Sou Support",
            Content = "Hello " .. player.Name .. ", Error Loading",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
end

-- Check place ID and load corresponding application
if place == 15885874861 then
    Load(place)
else
    OrionLib:MakeNotification({
        Name = "Sou Support",
        Content = "Hello " .. player.Name .. ", Game Not Supported",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

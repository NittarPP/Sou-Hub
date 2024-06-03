-- Load OrionLib
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create a Window
local Window = OrionLib:MakeWindow({
    Name = "Sou / Hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "Sou-Hub"
})

-- Get current place ID and player
local place = game.PlaceId
local player = game.Players.LocalPlayer

-- Function to load specific applications
function Load(App)
    function update()
        local updateTab = Window:MakeTab({
            Name = "Update",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })

        updateTab:AddTextbox({
            Name = "Discord",
            Default = "https://discord.gg/ajUkXRYQbv",
            TextDisappear = false,
            Callback = function(Value)
                Default = "https://discord.gg/ajUkXRYQbv"
            end	  
        })

        updateTab:AddSection({
            Name = "Update ver 0.2"
        })

        updateTab:AddSection({
            Name = "Update Eat Slimes to Grow HUGE"
        })
    end

    if App == 15885874861 then
        OrionLib:MakeNotification({
            Name = "Sou Notification",
            Content = "Hello " .. player.Name .. ", Welcome to Sou Hub, Ver 0.2",
            Image = "rbxassetid://4483345998",
            Time = 5
        })

        local mainTab = Window:MakeTab({
            Name = "Main",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })

        mainTab:AddSection({
            Name = "Main Script"
        })

        mainTab:AddTextbox({
            Name = "Add Size",
            Default = "0",
            TextDisappear = true,
            Callback = function(Value)
                local args = {[1] = Value}
                game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("AwardSpinSize - RemoteEvent"):FireServer(unpack(args))
            end	  
        })

        mainTab:AddButton({
            Name = "Reset",
            Callback = function()
                local character = player.Character or player.CharacterAdded:Wait()
                local humanoid = character:FindFirstChild("Humanoid")
                if humanoid then
                    humanoid.Health = 0
                end
            end    
        })

        mainTab:AddTextbox({
            Name = "Use",
            Default = "0-46",
            TextDisappear = true,
            Callback = function(Value)
                local args = {[1] = Value}
                game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("BuySkin - RemoteEvent"):FireServer(unpack(args))
            end	  
        })

        mainTab:AddButton({
            Name = "Close",
            Callback = function()
                OrionLib:Destroy()
            end    
        })

        update()

    else
        OrionLib:MakeNotification({
            Name = "Sou Support",
            Content = "Hello " .. player.Name .. ", Error Loading, Auto Reload",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        Start()
    end
end

function Start()
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
end

Start()

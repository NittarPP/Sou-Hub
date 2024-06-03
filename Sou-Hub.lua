local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

function Notification(Name, Content, Image, Time)
    OrionLib:MakeNotification({
        Name = Name,
        Content = Content,
        Image = Image,
        Time = Time
    })
end

local Window = OrionLib:MakeWindow({
    Name = "Sou / Hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "Sou-Hub"
})

local player = game.Players.LocalPlayer
local place = game.PlaceId

-- Function to load specific applications
function Load(App)
    Notification("Sou Notification", "Hello " .. player.Name .. ", Welcome to Sou Hub", "rbxassetid://4483345998", 5)

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

    if App == "15885874861" then
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

local allow = {"15885874861"}

function Start()
    if table.find(allow, tostring(place)) then
        Load(place)
    else
        Notification("Sou Support", "Hello " .. player.Name .. ", Game Not Supported", "rbxassetid://4483345998", 5)
    end
end

Start()

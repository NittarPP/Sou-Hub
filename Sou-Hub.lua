-- Function to load player data
function data()
    local player = game.Players.LocalPlayer
    local pu = loadstring(game:HttpGet('https://raw.githubusercontent.com/NittarPP/Sou-Hub/main/Premium%20User.lua'))()
    local playerId = tostring(player.UserId)

    -- Check if the player is a premium user
    return pu.find(playerId)
end

-- Load the Orion Library
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

-- Function to create notifications
function Notification(Name, Content, Image, Time)
    OrionLib:MakeNotification({
        Name = Name,
        Content = Content,
        Image = Image,
        Time = Time
    })
end

-- Create the main window
local Window = OrionLib:MakeWindow({
    Name = "Sou / Hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "Sou-Hub"
})

local player = game.Players.LocalPlayer
local place = tostring(game.PlaceId)
local isPremiumUser = data()

-- Function to load specific applications
function Load(App)
    Notification("Sou Notification", "Hello " .. player.Name .. ", Welcome to Sou Hub", "rbxassetid://4483345998", 5)

    -- Function to create the update tab
    local function createUpdateTab()
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
                -- Callback function does nothing with the Value
            end	  
        })

        updateTab:AddSection({
            Name = "Update ver 0.2"
        })

        updateTab:AddSection({
            Name = "Update Eat Slimes to Grow HUGE"
        })
        
        updateTab:AddSection({
            Name = "Fix Bug"
        })
    end

    if App == "15885874861" then
        -- Create Premium tab if the user is a premium user
        if isPremiumUser then
            local Premium = Window:MakeTab({
                Name = "Premium",
                Icon = "rbxassetid://4483345998",
                PremiumOnly = true
            })

            Premium:AddTextbox({
                Name = "Text Add Size (Premium)",
                Default = "0",
                TextDisappear = true,
                Callback = function(Value)
                    local args = {tonumber(Value)}
                    game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("AwardSpinSize - RemoteEvent"):FireServer(unpack(args))
                end	  
            })
        end

        local mainTab = Window:MakeTab({
            Name = "Main",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })

        mainTab:AddSection({
            Name = "Eat Slimes to Grow HUGE 📜"
        })

        mainTab:AddSection({
            Name = "Main Script"
        })

        mainTab:AddButton({
            Name = "10K Add Size",
            Callback = function()
                local args = 10000,
                game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("AwardSpinSize - RemoteEvent"):FireServer(unpack(args))
            end    
        })

        mainTab:AddButton({
            Name = "100K Add Size",
            Callback = function()
                local args = 100000,
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
            Name = "Use (Make Cash - , wait for new update Bug!)",
            Default = "0-46",
            TextDisappear = true,
            Callback = function(Value)
                local args = {Value}
                game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("BuySkin - RemoteEvent"):FireServer(unpack(args))
            end	  
        })

        mainTab:AddButton({
            Name = "Close",
            Callback = function()
                OrionLib:Destroy()
            end    
        })

        createUpdateTab()
    else
        Notification("Sou Support", "Hello " .. player.Name .. ", Error Loading, Auto Close", "rbxassetid://4483345998", 5)
        OrionLib:Destroy()
    end
end

local allowedPlaces = {"15885874861"}

-- Function to start the application
function Start()
    if table.find(allowedPlaces, place) then
        Load(place)
    else
        Notification("Sou Support", "Hello " .. player.Name .. ", Game Not Supported", "rbxassetid://4483345998", 5)
    end
end

-- Start the application
Start()

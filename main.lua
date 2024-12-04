-- main.lua script for PratikHub with Tabs

local OrionLib = require(game:GetService("ReplicatedStorage"):WaitForChild("OrionLib"))

-- Create a Window
local Window = OrionLib:MakeWindow({
    Name = "PratikHub",  -- Title of the window
    HidePremium = false,
    IntroText = "Welcome to PratikHub!",
    SaveConfig = true,
})

-- Create Tabs in Order: Main, Player, Teleport, Misc, Settings
local MainTab = Window:MakeTab({
    Name = "Main",  -- Tab title
    Icon = "rbxassetid://123456789",  -- Optional icon (replace with an actual asset ID)
})

local PlayerTab = Window:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://112233445",
})

local TeleportTab = Window:MakeTab({
    Name = "Teleport",
    Icon = "rbxassetid://998877665",
})

local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://987654321",
})

local SettingsTab = Window:MakeTab({
    Name = "Settings",
    Icon = "rbxassetid://667788990",
})

-- Main Tab Content
MainTab:MakeButton({
    Name = "Main Button",
    Callback = function()
        print("Main Button Clicked!")
    end,
})

-- Player Tab Content
PlayerTab:MakeButton({
    Name = "List Players",
    Callback = function()
        print("Listing all players...")
        -- Add functionality to list players here
    end,
})

-- Teleport Tab Content
TeleportTab:MakeButton({
    Name = "Teleport to Player",
    Callback = function()
        print("Teleporting to player...")
        -- Add teleportation code here (example: teleport to first player)
        local targetPlayer = game.Players:GetPlayers()[1]
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(targetPlayer.Character.HumanoidRootPart.CFrame)
        end
    end,
})

-- Misc Tab Content
MiscTab:MakeButton({
    Name = "Enable Misc Feature",
    Callback = function()
        print("Misc Feature Enabled!")
    end,
})

-- Settings Tab Content
SettingsTab:MakeToggle({
    Name = "Enable Feature",
    Default = false,
    Callback = function(State)
        if State then
            print("Feature Enabled in Settings Tab!")
        else
            print("Feature Disabled in Settings Tab!")
        end
    end,
})

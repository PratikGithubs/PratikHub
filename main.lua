local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

-- Create the Window
local Window = OrionLib:MakeWindow({
    Name = "PratikHub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "PratikHub"
})

-- Create Tabs in order: Main, Player, Teleport, Misc, Settings
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local PlayerTab = Window:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TeleportTab = Window:MakeTab({
    Name = "Teleport",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local SettingsTab = Window:MakeTab({
    Name = "Settings",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Main Tab content (add buttons or actions you want in the Main tab here)
MainTab:AddButton({
    Name = "Main Button",
    Callback = function()
        print("Main Button clicked")
    end
})

-- Player Tab content
PlayerTab:AddButton({
    Name = "Player Button",
    Callback = function()
        print("Player Button clicked")
    end
})

-- Teleport Tab content
TeleportTab:AddButton({
    Name = "Teleport Button",
    Callback = function()
        print("Teleport Button clicked")
    end
})

-- Misc Tab content
MiscTab:AddButton({
    Name = "Misc Button",
    Callback = function()
        print("Misc Button clicked")
    end
})

-- Settings Tab content
SettingsTab:AddButton({
    Name = "Settings Button",
    Callback = function()
        print("Settings Button clicked")
    end
})

OrionLib:Init()

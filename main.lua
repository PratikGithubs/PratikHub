-- Load the Orion UI Library
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

-- Create a window for the UI
local Window = OrionLib:MakeWindow({Name = "My Script Hub", HidePremium = false})

-- Create tabs in the window
local mainTab = Window:NewTab("Main")
local flyTab = Window:NewTab("Fly")

-- Create sections within the tabs
local mainSection = mainTab:NewSection("Main Functions")
local flySection = flyTab:NewSection("Fly Functions")

-- Add a button to toggle fly (this will trigger the fly functionality from fly.lua)
flySection:NewButton("Toggle Fly", "Toggles Fly mode", function()
    -- Load the fly script from GitHub (you can change this URL if needed)
    local flyScript = game:HttpGet("https://raw.githubusercontent.com/PratikGithubs/PratikHub/main/Main/fly.lua")
    loadstring(flyScript)()
end)

-- This script loads other functionality from other scripts as needed
-- You can add more buttons or tabs here for additional features in the future

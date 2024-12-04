-- Load the Orion UI Library
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

-- Check if the library was loaded successfully
if not OrionLib then
    print("OrionLib failed to load!")
    return
end
print("OrionLib loaded successfully!")

-- Create a window for the UI
local Window = OrionLib:MakeWindow({Name = "My Script Hub", HidePremium = false})

-- Check if the window was created successfully
if not Window then
    print("Failed to create UI window!")
    return
end
print("UI window created!")

-- Create tabs in the window
local mainTab = Window:NewTab("Main")
local flyTab = Window:NewTab("Fly")

-- Create sections within the tabs
local mainSection = mainTab:NewSection("Main Functions")
local flySection = flyTab:NewSection("Fly Functions")

-- Add a button to toggle fly (this will trigger the fly functionality from fly.lua)
flySection:NewButton("Toggle Fly", "Toggles Fly mode", function()
    -- Load the fly script from GitHub (you can change this URL if needed)
    print("Loading fly script from GitHub...")
    local flyScript = game:HttpGet("https://raw.githubusercontent.com/PratikGithubs/PratikHub/main/Main/fly.lua")
    print("Fly script loaded. Executing...")
    loadstring(flyScript)()
end)

print("Main script loaded successfully!")


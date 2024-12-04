-- Example content of your main.lua script

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/PratikGithubs/PratikHub/main/OrionLib.lua"))()

-- Create the window
local Window = OrionLib:MakeWindow({
    Name = "PratikHub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "PratikHub"
})

-- Your code for tabs and buttons here...

-- Initialize OrionLib to apply the UI
OrionLib:Init()

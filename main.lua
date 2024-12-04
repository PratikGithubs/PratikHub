-- Load the key system from key.lua
local KeySystem = loadstring(game:HttpGet("https://raw.githubusercontent.com/YourUsername/YourRepo/main/key.lua"))()

-- Load saved key (if exists)
local savedKey = KeySystem.LoadKey()
local isKeyValid = false

-- Function to display GUI for key input
local function ShowKeyInput()
    local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
    local Window = OrionLib:MakeWindow({ Name = "PratikHub Key System", SaveConfig = false })

    local KeyTab = Window:MakeTab({ Name = "Key System", Icon = "rbxassetid://4483345998" })
    local KeySection = KeyTab:AddSection({ Name = "Enter Your Key" })

    KeySection:AddTextbox({
        Name = "Key",
        Default = "",
        TextDisappear = true,
        Callback = function(keyInput)
            if KeySystem.CheckKey(keyInput) then
                KeySystem.SaveKey(keyInput)
                OrionLib:MakeNotification({
                    Name = "Key Accepted",
                    Content = "Correct Key! Enjoy PratikHub.",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
                isKeyValid = true
            else
                OrionLib:MakeNotification({
                    Name = "Invalid Key",
                    Content = "The key you entered is invalid. Try again.",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
            end
        end
    })

    KeySection:AddButton({
        Name = "Get Key",
        Callback = function()
            setclipboard("https://link-target.net/1262372/pratikhub")
            OrionLib:MakeNotification({
                Name = "Link Copied",
                Content = "Key link copied to clipboard!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    })

    OrionLib:Init()
end

-- Main Script Functionality
local function LoadMainScript()
    local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
    local Window = OrionLib:MakeWindow({ Name = "PratikHub", SaveConfig = true })

    -- Main Tab
    local MainTab = Window:MakeTab({ Name = "Main", Icon = "rbxassetid://4483345998" })
    MainTab:AddButton({
        Name = "Example Button",
        Callback = function()
            print("Button clicked!")
        end
    })

    OrionLib:Init()
end

-- Execution Logic
if savedKey and KeySystem.CheckKey(savedKey) then
    isKeyValid = true
    LoadMainScript()
else
    ShowKeyInput()
end

-- If key becomes valid, load the main script
while not isKeyValid do
    wait(1)
end
LoadMainScript()

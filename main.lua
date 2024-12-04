local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local function loadScript(scriptUrl)
    local success, error = pcall(function()
        loadstring(game:HttpGet(scriptUrl))()
    end)

    if not success then
        warn("Failed to load script: " .. scriptUrl .. " Error: " .. error)
    else
        print("Successfully loaded script: " .. scriptUrl)
    end
end

local Window = OrionLib:MakeWindow({Name = "PratikHub", HidePremium = false, IntroEnabled = true})

-- Script URLs for each category
local playerScripts = {
    "https://raw.githubusercontent.com/PratikGithubs/PratikHub/main/Players/player_manager.lua", -- Player manager script
    -- Add more player-related scripts here
}

local teleportScripts = {
    "https://raw.githubusercontent.com/PratikGithubs/PratikHub/main/Teleport/tp_to_spawn.lua", -- Teleport to spawn script
    -- Add more teleport-related scripts here
}

local miscScripts = {
    "https://raw.githubusercontent.com/PratikGithubs/PratikHub/main/Misc/god_mode.lua", -- God Mode script
    -- Add more miscellaneous scripts here
}

local mainScripts = {
    "https://raw.githubusercontent.com/PratikGithubs/PratikHub/main/Main/fly.lua", -- Fly script
    "https://raw.githubusercontent.com/PratikGithubs/PratikHub/main/Main/speed.lua", -- Speed script
    -- Add more main-related scripts here
}

local settingsScripts = {
    "https://raw.githubusercontent.com/PratikGithubs/PratikHub/main/Settings/save_settings.lua", -- Save settings script
    -- Add more settings-related scripts here
}

-- Create Tabs
local mainTab = Window:CreateTab("Main", 4475032848)
local teleportTab = Window:CreateTab("Teleport", 4475032848)
local playersTab = Window:CreateTab("Players", 4475032848)
local miscTab = Window:CreateTab("Misc", 4475032848)
local settingsTab = Window:CreateTab("Settings", 4475032848)

-- Function to create buttons for a tab
local function createButtons(tab, scriptList)
    for _, scriptUrl in ipairs(scriptList) do
        tab:CreateButton({
            Name = scriptUrl:match("([^/]+)%.lua$"),  -- Use the script name as the button label
            Callback = function()
                loadScript(scriptUrl)
            end
        })
    end
end

-- Create buttons for each category
createButtons(mainTab, mainScripts)
createButtons(teleportTab, teleportScripts)
createButtons(playersTab, playerScripts)
createButtons(miscTab, miscScripts)
createButtons(settingsTab, settingsScripts)

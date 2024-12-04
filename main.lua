-- main.lua

-- Directly load the Orion Library using the raw GitHub URL
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

-- Create a simple Orion GUI
local Window = OrionLib:MakeWindow({
    Name = "Orion Library Test", 
    HidePremium = false, 
    IntroEnabled = true
})

-- Folder URLs (replace with actual URLs of your folders, if you use GitHub or a file host)
local folderURLs = {
    Main = "https://raw.githubusercontent.com/YourUser/RepoName/branch/scripts/Main/",
    Teleport = "https://raw.githubusercontent.com/YourUser/RepoName/branch/scripts/Teleport/",
    Players = "https://raw.githubusercontent.com/YourUser/RepoName/branch/scripts/Players/",
    Misc = "https://raw.githubusercontent.com/YourUser/RepoName/branch/scripts/Misc/",
    Settings = "https://raw.githubusercontent.com/YourUser/RepoName/branch/scripts/Settings/"
}

-- Function to load scripts from a folder (currently empty, no scripts to load)
local function loadScriptsFromFolder(folderUrl, folderTab)
    -- No scripts to load for now, only creating buttons (just an empty function for now)
    -- You can add your script logic later
end

-- Create Tabs for each folder (category)
for folderName, folderUrl in pairs(folderURLs) do
    local folderTab = Window:MakeTab({
        Name = folderName,
        Icon = "rbxassetid://4483345998",  -- Use your own icon here
        PremiumOnly = false
    })
    
    -- Load scripts from the folder (currently does nothing since there's no script in the folders yet)
    loadScriptsFromFolder(folderUrl, folderTab)
end

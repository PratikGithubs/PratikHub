-- key.lua
local KeySystem = {}

-- Your secret key (can update this when needed)
local KeyList = {
    ["1-Pratik"] = true,  -- Example valid key
}

-- Function to check key
function KeySystem.CheckKey(inputKey)
    return KeyList[inputKey] == true
end

-- Function to save key locally
function KeySystem.SaveKey(key)
    if writefile then
        writefile("SavedKey.txt", key)
    else
        print("writefile not supported on this executor.")
    end
end

-- Function to load saved key
function KeySystem.LoadKey()
    if readfile and isfile and isfile("SavedKey.txt") then
        return readfile("SavedKey.txt")
    else
        return nil
    end
end

return KeySystem

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local flying = false
local speed = 50
local bodyVelocity, bodyGyro

-- Create the window and tab
local Window = OrionLib:MakeWindow({Name = "PratikHub", HidePremium = false, IntroEnabled = true})
local mainTab = Window:CreateTab("Main", 4475032848)

local function startFlying()
    -- Create BodyVelocity for flying
    bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(400000, 400000, 400000)
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)
    bodyVelocity.Parent = humanoidRootPart
    
    -- Create BodyGyro to keep the character upright
    bodyGyro = Instance.new("BodyGyro")
    bodyGyro.MaxTorque = Vector3.new(400000, 400000, 400000)
    bodyGyro.CFrame = humanoidRootPart.CFrame
    bodyGyro.Parent = humanoidRootPart

    -- Flying loop
    spawn(function()
        while flying do
            bodyVelocity.Velocity = (mouse.Hit.p - humanoidRootPart.Position).unit * speed
            bodyGyro.CFrame = CFrame.new(humanoidRootPart.Position, mouse.Hit.p)
            wait(0.1)
        end
    end)
end

local function stopFlying()
    -- Stop flying and clear BodyVelocity and BodyGyro
    if bodyVelocity then
        bodyVelocity:Destroy()
        bodyVelocity = nil
    end
    if bodyGyro then
        bodyGyro:Destroy()
        bodyGyro = nil
    end
end

local function toggleFly()
    if flying then
        -- Stop flying
        flying = false
        stopFlying()
    else
        -- Start flying
        flying = true
        startFlying()
    end
end

-- Create a button to toggle flying
mainTab:CreateButton({
    Name = "Toggle Fly",  -- Button Name
    Callback = function()
        toggleFly()
    end
})


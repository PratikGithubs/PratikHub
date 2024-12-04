-- Fly functionality (simple example to toggle fly mode)
local flying = false
local user = game.Players.LocalPlayer
local character = user.Character or user.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local bodyVelocity

-- Function to toggle fly
local function toggleFly()
    if flying then
        -- Turn off fly
        flying = false
        print("Fly mode disabled.")
        if bodyVelocity then
            bodyVelocity:Destroy()  -- Remove body velocity when flying is off
        end
    else
        -- Turn on fly
        flying = true
        print("Fly mode enabled.")
        
        -- Create body velocity to move the character up
        bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(400000, 400000, 400000)  -- Force for fly
        bodyVelocity.Velocity = Vector3.new(0, 50, 0)  -- Set velocity for flying up
        bodyVelocity.Parent = character:WaitForChild("HumanoidRootPart")  -- Apply it to the character
        
        -- You can add more control to fly by modifying the `Velocity` and other parameters
    end
end

-- Call toggleFly function when needed (in this case, it will be triggered from `main.lua`)
toggleFly()

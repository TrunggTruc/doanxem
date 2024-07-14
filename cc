repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.PlaceId ~= nil
repeat task.wait() until not game.Players.LocalPlayer.PlayerGui:FindFirstChild("__INTRO")

local plr = game.Players.LocalPlayer

function autoTP()
    if not game:GetService("Workspace").__THINGS.__INSTANCE_CONTAINER.Active:FindFirstChild("AdvancedFishing") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace").__THINGS.Instances.AdvancedFishing.Teleports.Enter.CFrame
    
        local loaded = false
        local detectLoad = game:GetService("Workspace").__THINGS.__INSTANCE_CONTAINER.Active.ChildAdded:Connect(function(child)
            if child.Name == "AdvancedFishing" then
                loaded = true
            end
        end)
    
        repeat
            task.wait()
        until loaded
    
        detectLoad:Disconnect()
        task.wait(1)
    end
end

autoTP()

local vu = game:GetService("VirtualUser")
plr.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

game:GetService("RunService"):Set3dRenderingEnabled(false)

local function autoFish()
    getgenv().autoFishing = true
    while getgenv().autoFishing do
        if require(game:GetService("ReplicatedStorage").Library.Client.MasteryCmds).GetLevel("Fishing") >= 30 then
            local deepPool
            for _, instance in pairs(game:GetService("Workspace"):FindFirstChild("__THINGS").__INSTANCE_CONTAINER.Active.AdvancedFishing:FindFirstChild("Interactable"):GetChildren()) do
                if instance.Name == "DeepPool" then
                    deepPool = instance
                    break
                end
            end
        
            local castVector
            if deepPool then
                -- MAXIMUM: -/+ 5
                castVector = Vector3.new(deepPool.Position.X + Random.new():NextNumber(-4.75, 4.75), deepPool.Position.Y, deepPool.Position.Z + Random.new():NextNumber(-4.75, 4.75))
            else
                castVector = Vector3.new(1480.482421875 + Random.new():NextInteger(-20, 20), 61.62470245361328, -4451.23583984375 + Random.new():NextInteger(-20, 20))
            end
      
            local argsCast = {
                [1] = "AdvancedFishing",
                [2] = "RequestCast",
                [3] = castVector
            }
        
            game:GetService("ReplicatedStorage").Network.Instancing_FireCustomFromClient:FireServer(unpack(argsCast))
    
            repeat
                local argsReel = {
                    [1] = "AdvancedFishing",
                    [2] = "RequestReel"
                }
        
                game:GetService("ReplicatedStorage").Network.Instancing_FireCustomFromClient:FireServer(unpack(argsReel))
        
                local hasFishingLine = false
                for _, descendant in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if descendant.Name == "FishingLine" then
                        hasFishingLine = true
                        break
                    end
                end
        
                local argsClicked = {
                    [1] = "AdvancedFishing",
                    [2] = "Clicked"
                }        
        
                game:GetService("ReplicatedStorage").Network.Instancing_InvokeCustomFromClient:InvokeServer(unpack(argsClicked))
            until not hasFishingLine
        else
            local x = math.random(10, 20)
            local z = math.random(10, 20)
        
            local argsCast = {
                [1] = "AdvancedFishing",
                [2] = "RequestCast",
                [3] = Vector3.new(1470.6005859375, 61.6249885559082, -4448.0107421875) + Vector3.new(x, 0, z)
            }
        
            game:GetService("ReplicatedStorage").Network.Instancing_FireCustomFromClient:FireServer(unpack(argsCast))
        
            repeat
                local argsReel = {
                    [1] = "AdvancedFishing",
                    [2] = "RequestReel"
                }
        
                game:GetService("ReplicatedStorage").Network.Instancing_FireCustomFromClient:FireServer(unpack(argsReel))
        
                local hasFishingLine = false
                for _, descendant in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if descendant.Name == "FishingLine" then
                        hasFishingLine = true
                        break
                    end
                end
        
                local argsClicked = {
                    [1] = "AdvancedFishing",
                    [2] = "Clicked"
                }        
        
                game:GetService("ReplicatedStorage").Network.Instancing_InvokeCustomFromClient:InvokeServer(unpack(argsClicked))
            until not hasFishingLine
        end
    end
end

wait(3)
local ditadmin = true
if ditadmin then
    local LocalPlayer = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    LocalPlayer.Anchored = true
    LocalPlayer.CFrame = CFrame.new(Vector3.new(1452.192138671875, 66.06708526611328, -4445.2041015625))

    local platform = Instance.new("Part")
    platform.Parent = game:GetService("Workspace")
    platform.Anchored = true
    platform.CFrame = LocalPlayer.CFrame + Vector3.new(0, -5, 0)
    platform.Size = Vector3.new(5, 1, 5)
    platform.Transparency = 1

    LocalPlayer.Anchored = false
end

wait(3)
task.spawn(autoFish)

wait(60)

task.spawn(function() 
    for k,v in game.Players.LocalPlayer.PlayerGui:GetChildren() do 
        if v.Name == "Main" or v.Name == "MainLeft" or v.Name == "MainMobile" or v.Name == "GoalsSide" then
            v:Destroy()
        end
    end

    for _, v in pairs(game:GetService("Workspace"):FindFirstChild("__THINGS").__INSTANCE_CONTAINER.Active.AdvancedFishing:GetChildren()) do
        if string.find(v.Name, "Lighting") or string.find(v.Name, "Water") or string.find(v.Name, "Debris") then
            v:Destroy()
        end

        if v.Name == "Map" then
            for _, v in pairs(v:GetChildren()) do
                v:Destroy()
            end
        end  
    end

    for _, v in pairs(game:GetService("Workspace"):FindFirstChild("__THINGS").__INSTANCE_CONTAINER.Active.AdvancedFishing.Model:GetDescendants()) do
        if v:IsA("Part") and v.Name == "FloatingBase" then
            v:Destroy()
        end
    end

    for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == "Camera" or v.Name == "Border" or v.Name == "Border2" or v.Name == "FlyBorder" or v.Name == "FlyBorder2" then
            v:Destroy()
        end
    end

    for _, v in pairs(game:GetService("StarterGui"):GetChildren()) do
        v:Destroy()
    end

    for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        v:Destroy()
    end
    
    game:GetService("Lighting"):ClearAllChildren()
    for _, v in pairs(game:GetService("Chat").ClientChatModules:GetChildren()) do
        v:Destroy()
    end

    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrunggTruc/doanxem/main/but1"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrunggTruc/doanxem/main/but2"))()
end)

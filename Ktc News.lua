-- Crear UI que aparece al ejecutar el script
local function showStartupMessage()
    local player = game.Players.LocalPlayer
    local gui = Instance.new("ScreenGui")
    gui.Name = "StartupMessageUI"
    gui.ResetOnSpawn = false
    gui.Parent = player:WaitForChild("PlayerGui")

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 0, 50)
    label.Position = UDim2.new(0, 0, 0.1, 0)
    label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    label.BackgroundTransparency = 0.3
    label.Text = "Kenya se follo al AntiCheat"
    label.TextColor3 = Color3.fromRGB(255, 70, 70)
    label.Font = Enum.Font.GothamBold
    label.TextSize = 28
    label.Parent = gui

    task.delay(3, function()
        gui:Destroy()
    end)
end

showStartupMessage()

-- Cambiar título y subtítulo del hub
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Twistzzisreal/UI_Libarys/refs/heads/main/Twistzz%20/Source"))()
local Window = Library:CreateWindow({
    Title = "Ktc Hub | TPS STREET SOCCER (Free Version)",
    SubTitle = "Kenya, Cholo, Tmbuzz. Best tridente.",
    Theme = "Void",
    Size = UDim2.fromOffset(570, 370),
    Transparency = 0,
    Blurring = true,
    MinimizeKeybind = Enum.KeyCode.End,
})

-- Aquí va el resto del contenido original (alcanzado desde el archivo del usuario)

local success, err = pcall(function()
    local function safeDestroy(obj)
        if obj and obj.Destroy then
        obj:Destroy()
    end
end
for _, BN in pairs(game:GetService("Workspace").FE.Settings:GetChildren()) do
        if BN.Name == "BName" then
        safeDestroy(BN)
    end
end
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        wait(0.5)
        for _, char in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if char.Name == " " then
        safeDestroy(char)
        end
    end
end)
    for _, obj in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if obj.Name == " " or (obj:IsA("LocalScript") and (string.match(obj.Name, "%d") or string.match(obj.Name, " "))) then
        safeDestroy(obj)
    end
end
    for _, obj in pairs(game.Players.LocalPlayer.PlayerGui.Start:GetChildren()) do
        if obj.Name == "CheckPlayerW" or obj.Name == "Gradient" then
        safeDestroy(obj)
    end
end
    for _, obj in pairs(game.StarterGui.Start:GetChildren()) do
        if obj.Name == "CheckPlayerW" or obj.Name == "Gradient" then
        safeDestroy(obj)
    end
end
    for _, obj in pairs(game.StarterPlayer.StarterCharacterScripts:GetDescendants()) do
        if obj.Name == " " then
        safeDestroy(obj)
        end
    end
end)

for i,b in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if b.Name == " " then
    b:Destroy()
end
end

for i,lc2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if lc2:IsA("LocalScript") and string.match(lc2.Name, "1") or string.match(lc2.Name, "2") or string.match(lc2.Name, "3") or string.match(lc2.Name, "4") or string.match(lc2.Name, "5") or string.match(lc2.Name, "6") or string.match(lc2.Name, "7") or string.match(lc2.Name, "8") or string.match(lc2.Name, "9") then
       lc2:Destroy()
    end
end

for i,lc in pairs(game.Players.LocalPlayer.PlayerGui.Start:GetChildren()) do
    if lc:IsA("LocalScript") and string.match(lc.Name, "1") or string.match(lc.Name, "2") or string.match(lc.Name, "3") or string.match(lc.Name, "4") or string.match(lc.Name, "5") or string.match(lc.Name, "6") or string.match(lc.Name, "7") or string.match(lc.Name, "8") or string.match(lc.Name, "9") then
       lc:Destroy()
    end
end

for i,c in pairs(game.Players.LocalPlayer.PlayerGui.Start:GetChildren()) do
    if c.Name == "CheckPlayerW" then
    c:Destroy()
end
end

for i,z in pairs(game.StarterGui.Start:GetChildren()) do
    if z.Name == "CheckPlayerW" then
    z:Destroy()
end
end

for _, v in pairs(game.StarterPlayer.StarterCharacterScripts:GetDescendants()) do
if v.Name == " " then
v:Destroy()
end
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
wait(0.5)
for i,char in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if char.Name == " " then
       char:Destroy()
    end
    end
end)




local player = game.Players.LocalPlayer
local character = player.Character

function GodMode()
    character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
        if character.Humanoid.Health < 100 then
            character.Humanoid.Health = 100
        end
    end)
end


GodMode()





local player = game.Players.LocalPlayer
            

local function onPlayerDied()
    wait(1) 

    local player = game.Players.LocalPlayer
    local character = player.Character
    
    function GodMode()
        character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
            if character.Humanoid.Health < 100 then
                character.Humanoid.Health = 100
            end
        end)
    end
    
    
    GodMode()
    
end

-- Function to set up death detection for the player's character
local function setupDeathDetection(character)
    local humanoid = character:FindFirstChild("Humanoid") or character:WaitForChild("Humanoid")
    humanoid.Died:Connect(onPlayerDied)
end


player.CharacterAdded:Connect(setupDeathDetection)


if player.Character then
    setupDeathDetection(player.Character)
end






--// Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Twistzzisreal/UI_Libarys/refs/heads/main/Twistzz%20/Source"))()
local Window = Library:CreateWindow({
    Title = "Ktc Hub | TPS STREET SOCCER (Free Version)",
    Theme = "Void",
    
    Size = UDim2.fromOffset(570, 370),
    Transparency = 0,
    Blurring = true,
    MinimizeKeybind = Enum.KeyCode.End,
})


local Themes = {
    Light = {
        --// Frames:
        Primary = Color3.fromRGB(232, 232, 232),
        Secondary = Color3.fromRGB(255, 255, 255),
        Component = Color3.fromRGB(245, 245, 245),
        Interactables = Color3.fromRGB(235, 235, 235),
 
        --// Text:
        Tab = Color3.fromRGB(50, 50, 50),
        Title = Color3.fromRGB(0, 0, 0),
        Description = Color3.fromRGB(100, 100, 100),
 
        --// Outlines:
        Shadow = Color3.fromRGB(255, 255, 255),
        Outline = Color3.fromRGB(210, 210, 210),
 
        --// Image:
        Icon = Color3.fromRGB(100, 100, 100),
    },
    
    Dark = {
        --// Frames:
        Primary = Color3.fromRGB(30, 30, 30),
        Secondary = Color3.fromRGB(35, 35, 35),
        Component = Color3.fromRGB(40, 40, 40),
        Interactables = Color3.fromRGB(45, 45, 45),
 
        --// Text:
        Tab = Color3.fromRGB(200, 200, 200),
        Title = Color3.fromRGB(240,240,240),
        Description = Color3.fromRGB(200,200,200),
 
        --// Outlines:
        Shadow = Color3.fromRGB(0, 0, 0),
        Outline = Color3.fromRGB(40, 40, 40),
 
        --// Image:
        Icon = Color3.fromRGB(220, 220, 220),
    },
    
    Void = {
        --// Frames:
        Primary = Color3.fromRGB(15, 15, 15),
        Secondary = Color3.fromRGB(20, 20, 20),
        Component = Color3.fromRGB(25, 25, 25),
        Interactables = Color3.fromRGB(30, 30, 30),
 
        --// Text:
        Tab = Color3.fromRGB(200, 200, 200),
        Title = Color3.fromRGB(240,240,240),
        Description = Color3.fromRGB(200,200,200),
 
        --// Outlines:
        Shadow = Color3.fromRGB(0, 0, 0),
        Outline = Color3.fromRGB(40, 40, 40),
 
        --// Image:
        Icon = Color3.fromRGB(220, 220, 220),
    },
 
}

Window:SetTheme(Themes.Void)

Window:AddTabSection({
    Name = "Main Features",
    Order = 1,
})

-- tabs
 
local R = Window:AddTab({
    Title = "Reach",
    Section = "Main Features",
    Icon = "rbxassetid://10747373176"
})

local RT = Window:AddTab({
    Title = "React",
    Section = "Main Features",
    Icon = "rbxassetid://10723406988"
})

Window:AddTabSection({
    Name = "Popular Features",
    Order = 2,
})

local SKS = Window:AddTab({
    Title = "Skills Helpers",
    Section = "Popular Features",
    Icon = "rbxassetid://10709761889"
})

local MI = Window:AddTab({
    Title = "Twistzz Features",
    Section = "Popular Features",
    Icon = "rbxassetid://10734896881"
})
 
local GM = Window:AddTab({
    Title = "Ball Settings",
    Section = "Popular Features",
    Icon = "rbxassetid://10709806060"
})
 
Window:AddTabSection({
    Name = "More",
    Order = 3,
})

local SK = Window:AddTab({
    Title = "Sky Changers",
    Section = "More",
    Icon = "rbxassetid://10709806740"
})

Window:AddTabSection({
    Name = "Settings",
    Order = 4,
})

Window:AddSection({ Name = "Leg Reach", Tab = R }) 

Window:AddParagraph({
    Title = "Reach",
    Description = "Avoid using high values, as they can make your reach obvious, increasing the risk of detection and getting banned.",
    Tab = R
}) 


Window:AddInput({
    Title = "Leg Reach [R6 & R15] [Method 1 - Read Description]",
    Description = "This will automatically activate whenever you reset or die.",
    Tab = R,
    Callback = function(Text)
        local player = game.Players.LocalPlayer

        local function modifyLegs(character)
            if character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                local rightLeg = character:FindFirstChild("Right Leg")
                if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
                    rightLeg.Massless = true
                    rightLeg.Size = Vector3.new(Text, 2, Text)
                    rightLeg.Transparency = 1
                    local newRightLeg = Instance.new("Part")
                    newRightLeg.Name = "Right Leg"
                    newRightLeg.CanCollide = false
                    newRightLeg.Color = rightLeg.Color
                    newRightLeg.Size = Vector3.new(1, 2, 1)
                    newRightLeg.Locked = true
                    newRightLeg.Position = rightLeg.Position
                    newRightLeg.Parent = character
                    local attachment = Instance.new("Attachment")
                    attachment.Name = "RightFootAttachment"
                    attachment.Position = Vector3.new(0, -1, 0)
                    attachment.Parent = newRightLeg
                    local motorHip = Instance.new("Motor6D")
                    motorHip.Name = "Fake Right Hip"
                    motorHip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                    motorHip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                    motorHip.CurrentAngle = 0
                    motorHip.DesiredAngle = 0
                    motorHip.MaxVelocity = 0.1
                    motorHip.Part0 = character.Torso
                    motorHip.Part1 = newRightLeg
                    motorHip.Parent = character.Torso
                else
                    local leftLeg = character:FindFirstChild("Left Leg")
                    leftLeg.Massless = true
                    leftLeg.Size = Vector3.new(Text, 2, Text)
                    leftLeg.Transparency = 1
                    local newLeftLeg = Instance.new("Part")
                    newLeftLeg.Name = "Left Leg"
                    newLeftLeg.CanCollide = false
                    newLeftLeg.Color = leftLeg.Color
                    newLeftLeg.Size = Vector3.new(1, 2, 1)
                    newLeftLeg.Locked = true
                    newLeftLeg.Position = leftLeg.Position
                    newLeftLeg.Parent = character
                    local attachment = Instance.new("Attachment")
                    attachment.Name = "LeftFootAttachment"
                    attachment.Position = Vector3.new(0, -1, 0)
                    attachment.Parent = newLeftLeg
                    local motorHip = Instance.new("Motor6D")
                    motorHip.Name = "Fake Left Hip"
                    motorHip.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                    motorHip.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                    motorHip.CurrentAngle = 0.18690308928489685
                    motorHip.DesiredAngle = 0.00016103983216453344
                    motorHip.MaxVelocity = 0.1
                    motorHip.Part0 = character.Torso
                    motorHip.Part1 = newLeftLeg
                    motorHip.Parent = character.Torso
                end
            else
                local rightLowerLeg = character:FindFirstChild("RightLowerLeg")
                local leftLowerLeg = character:FindFirstChild("LeftLowerLeg")
                
                if game.Lighting[player.Name].PreferredFoot.Value == 1 then
                    rightLowerLeg.Massless = true
                    rightLowerLeg.Size = Vector3.new(Text, 2, Text)
                    rightLowerLeg.Transparency = 1
                    local newRightLowerLeg = Instance.new("Part")
                    newRightLowerLeg.Name = "RightLowerLeg"
                    newRightLowerLeg.CanCollide = false
                    newRightLowerLeg.Color = rightLowerLeg.Color
                    newRightLowerLeg.Size = Vector3.new(1, 2, 1)
                    newRightLowerLeg.Locked = true
                    newRightLowerLeg.Position = rightLowerLeg.Position
                    newRightLowerLeg.Parent = character
                    local attachment = Instance.new("Attachment")
                    attachment.Name = "RightFootAttachment"
                    attachment.Position = Vector3.new(0, -1, 0)
                    attachment.Parent = newRightLowerLeg
                    local motorHip = Instance.new("Motor6D")
                    motorHip.Name = "Fake Right Hip"
                    motorHip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                    motorHip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                    motorHip.CurrentAngle = 0
                    motorHip.DesiredAngle = 0
                    motorHip.MaxVelocity = 0.1
                    motorHip.Part0 = character.Torso
                    motorHip.Part1 = newRightLowerLeg
                    motorHip.Parent = character.Torso
                else
                    leftLowerLeg.Massless = true
                    leftLowerLeg.Size = Vector3.new(Text, 2, Text)
                    leftLowerLeg.Transparency = 1
                    local newLeftLowerLeg = Instance.new("Part")
                    newLeftLowerLeg.Name = "LeftLowerLeg"
                    newLeftLowerLeg.CanCollide = false
                    newLeftLowerLeg.Color = leftLowerLeg.Color
                    newLeftLowerLeg.Size = Vector3.new(1, 2, 1)
                    newLeftLowerLeg.Locked = true
                    newLeftLowerLeg.Position = leftLowerLeg.Position
                    newLeftLowerLeg.Parent = character
                    local attachment = Instance.new("Attachment")
                    attachment.Name = "LeftFootAttachment"
                    attachment.Position = Vector3.new(0, -1, 0)
                    attachment.Parent = newLeftLowerLeg
                    local motorHip = Instance.new("Motor6D")
                    motorHip.Name = "Fake Left Hip"
                    motorHip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                    motorHip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                    motorHip.CurrentAngle = 0
                    motorHip.DesiredAngle = 0
                    motorHip.MaxVelocity = 0.1
                    motorHip.Part0 = character.Torso
                    motorHip.Part1 = newLeftLowerLeg
                    motorHip.Parent = character.Torso
                end
            end
        end
        
        player.CharacterAdded:Connect(function(character)
            character:WaitForChild("Humanoid")
            modifyLegs(character)
        end)
        
        if player.Character then
            modifyLegs(player.Character)
        end

        Window:Notify({
            Title = "Reach Activated",
            Description = "Method 1 enabled — your reach is now set to (" .. Text .. ").",
            Duration = 10
        })

    end,
})

Window:AddInput({
    Title = "Leg Reach [R6 & R15] [Method 2 - Read Description]",
    Description = "You'll need to turn this back on manually after you die.",
    Tab = R,
    Callback = function(Text)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
    if character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
        local rightLeg = character:FindFirstChild("Right Leg")
        if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
            rightLeg.Massless = true
            rightLeg.Size = Vector3.new(Text, 2, Text)
            rightLeg.Transparency = 1
            local newRightLeg = Instance.new("Part")
            newRightLeg.Name = "Right Leg"
            newRightLeg.CanCollide = false
            newRightLeg.Color = rightLeg.Color
            newRightLeg.Size = Vector3.new(1, 2, 1)
            newRightLeg.Locked = true
            newRightLeg.Position = rightLeg.Position
            newRightLeg.Parent = character
            local attachment = Instance.new("Attachment")
            attachment.Name = "RightFootAttachment"
            attachment.Position = Vector3.new(0, -1, 0)
            attachment.Parent = newRightLeg
            local motorHip = Instance.new("Motor6D")
            motorHip.Name = "Fake Right Hip"
            motorHip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            motorHip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            motorHip.CurrentAngle = 0
            motorHip.DesiredAngle = 0
            motorHip.MaxVelocity = 0.1
            motorHip.Part0 = character.Torso
            motorHip.Part1 = newRightLeg
            motorHip.Parent = character.Torso
        else
            local leftLeg = character:FindFirstChild("Left Leg")
            leftLeg.Massless = true
            leftLeg.Size = Vector3.new(Text, 2, Text)
            leftLeg.Transparency = 1
            local newLeftLeg = Instance.new("Part")
            newLeftLeg.Name = "Left Leg"
            newLeftLeg.CanCollide = false
            newLeftLeg.Color = leftLeg.Color
            newLeftLeg.Size = Vector3.new(1, 2, 1)
            newLeftLeg.Locked = true
            newLeftLeg.Position = leftLeg.Position
            newLeftLeg.Parent = character
            local attachment = Instance.new("Attachment")
            attachment.Name = "LeftFootAttachment"
            attachment.Position = Vector3.new(0, -1, 0)
            attachment.Parent = newLeftLeg
            local motorHip = Instance.new("Motor6D")
            motorHip.Name = "Fake Left Hip"
            motorHip.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            motorHip.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            motorHip.CurrentAngle = 0.18690308928489685
            motorHip.DesiredAngle = 0.00016103983216453344
            motorHip.MaxVelocity = 0.1
            motorHip.Part0 = character.Torso
            motorHip.Part1 = newLeftLeg
            motorHip.Parent = character.Torso
        end
    else
        local rightLowerLeg = character:FindFirstChild("RightLowerLeg")
        local leftLowerLeg = character:FindFirstChild("LeftLowerLeg")
        
        if game.Lighting[player.Name].PreferredFoot.Value == 1 then
            rightLowerLeg.Massless = true
            rightLowerLeg.Size = Vector3.new(Text, 2, Text)
            rightLowerLeg.Transparency = 1
            local newRightLowerLeg = Instance.new("Part")
            newRightLowerLeg.Name = "RightLowerLeg"
            newRightLowerLeg.CanCollide = false
            newRightLowerLeg.Color = rightLowerLeg.Color
            newRightLowerLeg.Size = Vector3.new(1, 2, 1)
            newRightLowerLeg.Locked = true
            newRightLowerLeg.Position = rightLowerLeg.Position
            newRightLowerLeg.Parent = character
            local attachment = Instance.new("Attachment")
            attachment.Name = "RightFootAttachment"
            attachment.Position = Vector3.new(0, -1, 0)
            attachment.Parent = newRightLowerLeg
            local motorHip = Instance.new("Motor6D")
            motorHip.Name = "Fake Right Hip"
            motorHip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            motorHip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            motorHip.CurrentAngle = 0
            motorHip.DesiredAngle = 0
            motorHip.MaxVelocity = 0.1
            motorHip.Part0 = character.Torso
            motorHip.Part1 = newRightLowerLeg
            motorHip.Parent = character.Torso
        else
            leftLowerLeg.Massless = true
            leftLowerLeg.Size = Vector3.new(Text, 2, Text)
            leftLowerLeg.Transparency = 1
            local newLeftLowerLeg = Instance.new("Part")
            newLeftLowerLeg.Name = "LeftLowerLeg"
            newLeftLowerLeg.CanCollide = false
            newLeftLowerLeg.Color = leftLowerLeg.Color
            newLeftLowerLeg.Size = Vector3.new(1, 2, 1)
            newLeftLowerLeg.Locked = true
            newLeftLowerLeg.Position = leftLowerLeg.Position
            newLeftLowerLeg.Parent = character
            local attachment = Instance.new("Attachment")
            attachment.Name = "LeftFootAttachment"
            attachment.Position = Vector3.new(0, -1, 0)
            attachment.Parent = newLeftLowerLeg
            local motorHip = Instance.new("Motor6D")
            motorHip.Name = "Fake Left Hip"
            motorHip.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            motorHip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            motorHip.CurrentAngle = 0
            motorHip.DesiredAngle = 0
            motorHip.MaxVelocity = 0.1
            motorHip.Part0 = character.Torso
            motorHip.Part1 = newLeftLowerLeg
            motorHip.Parent = character.Torso
        end
    end

    Window:Notify({
        Title = "Reach Activated",
        Description = "Method 2 enabled — your reach is now set to (" .. Text .. ").",
        Duration = 10
    })
    
    end,
})


Window:AddSection({ Name = "Head Reach", Tab = R }) 

Window:AddInput({
    Title = "Head Reach [R6 & R15] [Method 1 - Read Description]",
    Description = "This will automatically activate whenever you reset or die.",
    Tab = R,
    Callback = function(Text) 


        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local head = character:FindFirstChild("Head")
        
        if head then
            -- Store original properties
            local originalSize = head.Size
            local originalPosition = head.Position
            local originalColor = head.Color
        
            -- Create a fake head with original size
            local newHead = Instance.new("Part")
            newHead.Name = "Fake Head"
            newHead.CanCollide = false
            newHead.Color = originalColor
            newHead.Size = originalSize -- Keep the original size
            newHead.Locked = true
            newHead.Position = originalPosition
            newHead.Parent = character
        
            -- Copy Mesh if the original head has one
            local mesh = head:FindFirstChildOfClass("SpecialMesh")
            if mesh then
                local newMesh = mesh:Clone()
                newMesh.Parent = newHead
            end
        
            -- Copy Face Decal if it exists
            local face = head:FindFirstChildOfClass("Decal")
            if face then
                local newFace = face:Clone()
                newFace.Parent = newHead
            end
        
            -- Attach fake head to the character
            local motorNeck = Instance.new("Motor6D")
            motorNeck.Name = "Fake Neck"
            motorNeck.C0 = CFrame.new(0, 1, 0)
            motorNeck.C1 = CFrame.new(0, -0.5, 0)
            motorNeck.Part0 = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
            motorNeck.Part1 = newHead
            motorNeck.Parent = character
        
            -- Reattach Accessories to Fake Head
            for _, accessory in ipairs(character:GetChildren()) do
                if accessory:IsA("Accessory") and accessory:FindFirstChild("Handle") then
                    local handle = accessory.Handle
                    local attachment = handle:FindFirstChildOfClass("Attachment")
        
                    if attachment then
                        attachment.Parent = newHead
                    else
                        handle.Position = newHead.Position
                    end
                end
            end
            -- **Now Modify the Real Head After Creating Fake Head**
            head.Massless = true
            head.Size = Vector3.new(Text,1.5, Text) -- Change real head size
            head.CanCollide = false
            head.Transparency = 1
            head.face:Destroy()
        end
        



        local player = game.Players.LocalPlayer
            
        -- Function to handle the player's death
        local function onPlayerDied()
            wait(5) -- Wait for 5 seconds after death

            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local head = character:FindFirstChild("Head")
            
            if head then
                -- Store original properties
                local originalSize = head.Size
                local originalPosition = head.Position
                local originalColor = head.Color
            
                -- Create a fake head with original size
                local newHead = Instance.new("Part")
                newHead.Name = "Fake Head"
                newHead.CanCollide = false
                newHead.Color = originalColor
                newHead.Size = originalSize -- Keep the original size
                newHead.Locked = true
                newHead.Position = originalPosition
                newHead.Parent = character
            
                -- Copy Mesh if the original head has one
                local mesh = head:FindFirstChildOfClass("SpecialMesh")
                if mesh then
                    local newMesh = mesh:Clone()
                    newMesh.Parent = newHead
                end
            
                -- Copy Face Decal if it exists
                local face = head:FindFirstChildOfClass("Decal")
                if face then
                    local newFace = face:Clone()
                    newFace.Parent = newHead
                end
            
                -- Attach fake head to the character
                local motorNeck = Instance.new("Motor6D")
                motorNeck.Name = "Fake Neck"
                motorNeck.C0 = CFrame.new(0, 1, 0)
                motorNeck.C1 = CFrame.new(0, -0.5, 0)
                motorNeck.Part0 = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
                motorNeck.Part1 = newHead
                motorNeck.Parent = character
            
                -- Reattach Accessories to Fake Head
                for _, accessory in ipairs(character:GetChildren()) do
                    if accessory:IsA("Accessory") and accessory:FindFirstChild("Handle") then
                        local handle = accessory.Handle
                        local attachment = handle:FindFirstChildOfClass("Attachment")
            
                        if attachment then
                            attachment.Parent = newHead
                        else
                            handle.Position = newHead.Position
                        end
                    end
                end
                -- **Now Modify the Real Head After Creating Fake Head**
                head.Massless = true
                head.Size = Vector3.new(Text,1.5, Text) -- Change real head size
                head.CanCollide = false
                head.Transparency = 1
                head.face:Destroy()
            end
            
        end
        
        -- Function to set up death detection for the player's character
        local function setupDeathDetection(character)
            local humanoid = character:FindFirstChild("Humanoid") or character:WaitForChild("Humanoid")
            humanoid.Died:Connect(onPlayerDied)
        end
        
        -- Connect to CharacterAdded event to handle respawns
        player.CharacterAdded:Connect(setupDeathDetection)
        
        -- Check if character already exists when the script runs
        if player.Character then
            setupDeathDetection(player.Character)
        end

        Window:Notify({
            Title = "Reach Activated",
            Description = "Method 1 enabled — your reach is now set to (" .. Text .. ").",
            Duration = 10
        })

    end,
}) 
 
Window:AddInput({
    Title = "Head Reach [R6 & R15] [Method 2 - Read Description]",
    Description = "You'll need to turn this back on manually after you die.",
    Tab = R,
    Callback = function(Text) 

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local head = character:FindFirstChild("Head")
        
        if head then
            -- Store original properties
            local originalSize = head.Size
            local originalPosition = head.Position
            local originalColor = head.Color
        
            -- Create a fake head with original size
            local newHead = Instance.new("Part")
            newHead.Name = "Fake Head"
            newHead.CanCollide = false
            newHead.Color = originalColor
            newHead.Size = originalSize -- Keep the original size
            newHead.Locked = true
            newHead.Position = originalPosition
            newHead.Parent = character
        
            -- Copy Mesh if the original head has one
            local mesh = head:FindFirstChildOfClass("SpecialMesh")
            if mesh then
                local newMesh = mesh:Clone()
                newMesh.Parent = newHead
            end
        
            -- Copy Face Decal if it exists
            local face = head:FindFirstChildOfClass("Decal")
            if face then
                local newFace = face:Clone()
                newFace.Parent = newHead
            end
        
            -- Attach fake head to the character
            local motorNeck = Instance.new("Motor6D")
            motorNeck.Name = "Fake Neck"
            motorNeck.C0 = CFrame.new(0, 1, 0)
            motorNeck.C1 = CFrame.new(0, -0.5, 0)
            motorNeck.Part0 = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
            motorNeck.Part1 = newHead
            motorNeck.Parent = character
        
            -- Reattach Accessories to Fake Head
            for _, accessory in ipairs(character:GetChildren()) do
                if accessory:IsA("Accessory") and accessory:FindFirstChild("Handle") then
                    local handle = accessory.Handle
                    local attachment = handle:FindFirstChildOfClass("Attachment")
        
                    if attachment then
                        attachment.Parent = newHead
                    else
                        handle.Position = newHead.Position
                    end
                end
            end
            -- **Now Modify the Real Head After Creating Fake Head**
            head.Massless = true
            head.Size = Vector3.new(Text,1.5, Text) -- Change real head size
            head.CanCollide = false
            head.Transparency = 1
            head.face:Destroy()
        end

        Window:Notify({
            Title = "Reach Activated",
            Description = "Method 1 enabled — your reach is now set to (" .. Text .. ").",
            Duration = 10
        })

    end,
}) 


Window:AddSlider({
    Title = "Ball Volecity",
    Description = "",
    Tab = RT,
    MaxValue = 240,
    Callback = function(Value) 

        game.Workspace.TPSSystem.TPS.Velocity = Vector3.new(Value, Value, Value)

        Window:Notify({
            Title = "Used React",
            Description = "The Twistzz React Script Has Been Executed",
            Duration = 5
        })
    end,
}) 

Window:AddButton({
    Title = "Tunaz React [Left Leg]",
    Description = "Activate the left leg reaction sequence",
    Tab = RT,
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local mouse = player:GetMouse()
        local leftLeg = player.Character["Left Leg"]

        mouse.KeyDown:Connect(function(key)
            key = key:lower()

            if key == "k" then
                for _, descendant in pairs(game.Workspace:GetDescendants()) do
                    if descendant:IsA("BasePart") or descendant:IsA("Part") then
                        local size = Vector3.new(
                            math.floor(descendant.Size.X - 2.5),
                            math.floor(descendant.Size.Y - 2.5),
                            math.floor(descendant.Size.Z - 2.5)
                        )
                        if size == Vector3.new(0, 0, 0) then
                        end
                    end
                end
            end

            local arguments = {
                nil,
                Vector3.new(math.huge, math.huge, math.huge),
                CFrame.new(Vector3.new(0, 0, 0))
            }

            game:GetService("RunService").ChildAdded:Connect(function()
                while task.wait(0.001) do
                    for _, descendant in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                        if descendant:IsA("RemoteEvent") and string.find(descendant.Name, "React") then
                            descendant:FireServer(unpack(arguments))
                        end
                    end
                end
            end)

            Window:Notify({
                Title = "Used React",
                Description = "The Left Leg React Has Been Used",
                Duration = 5
            })
        end)
    end
})

Window:AddButton({
    Title = "Tunaz React [Right Leg]",
    Description = "Activate the right leg reaction sequence",
    Tab = RT,
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local mouse = player:GetMouse()
        local rightLeg = player.Character["Right Leg"]

        mouse.KeyDown:Connect(function(key)
            key = key:lower()

            if key == "k" then
                for _, descendant in pairs(game.Workspace:GetDescendants()) do
                    if descendant:IsA("BasePart") or descendant:IsA("Part") then
                        local size = Vector3.new(
                            math.floor(descendant.Size.X - 2.5),
                            math.floor(descendant.Size.Y - 2.5),
                            math.floor(descendant.Size.Z - 2.5)
                        )
                        if size == Vector3.new(0, 0, 0) then
                        end
                    end
                end
            end

            local arguments = {
                nil,
                Vector3.new(math.huge, math.huge, math.huge),
                CFrame.new(Vector3.new(0, 0, 0))
            }

            game:GetService("RunService").ChildAdded:Connect(function()
                while task.wait(0.001) do
                    for _, descendant in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                        if descendant:IsA("RemoteEvent") and string.find(descendant.Name, "React") then
                            descendant:FireServer(unpack(arguments))
                        end
                    end
                end
            end)

            Window:Notify({
                Title = "Used React",
                Description = "The Right Leg React Has Been Used",
                Duration = 5
            })
        end)
    end
})

Window:AddButton({
    Title = "Fox React",
    Description = "Execute the Fox React method",
    Tab = RT,
    Callback = function()
        _G.Vector = Vector3.new(math.huge, math.huge, math.huge)

        local hookmetamethod = hookmetamethod or function(v323, v325, v336)
            return v322
        end

        local originalNameCall
        originalNameCall = hookmetamethod(game, "__namecall", function(instance, ...)
            local args = {...}
            local methodName = getnamecallmethod()

            if not checkcaller() and methodName == "FireServer" and instance.Name == "Kick" then
                args[6] = _G.Vector
                return originalNameCall(instance, unpack(args))
            end

            return originalNameCall(instance, ...)
        end)

        Window:Notify({
            Title = "Used React",
            Description = "The Fox React Method Has Been Used",
            Duration = 5
        })
    end
})

Window:AddButton({
    Title = "Vectoz React",
    Description = "Execute the Vectoz React method",
    Tab = RT,
    Callback = function()
        _G.Vector = Vector3.new(math.huge, math.huge, math.huge)

        local originalNameCall
        originalNameCall = hookmetamethod(game, "__namecall", function(instance, ...)
            local args = {...}
            local methodName = getnamecallmethod()

            if not checkcaller() and methodName == "FireServer" and instance.Name == "Kick" then
                args[6] = _G.Vector
                return originalNameCall(instance, unpack(args))
            end

            return originalNameCall(instance, ...)
        end)

        Window:Notify({
            Title = "Used React",
            Description = "The Vectoz React Method Has Been Used",
            Duration = 5
        })
    end
})

Window:AddButton({
    Title = "Keepz React",
    Description = "Execute the Keepz React method",
    Tab = RT,
    Callback = function()
        local player = game:GetService("Players").LocalPlayer

        local originalNameCall
        originalNameCall = hookmetamethod(game, "__namecall", function(instance, ...)
            local args = {...}
            local methodName = getnamecallmethod()

            if not checkcaller() and methodName == "FireServer" and tostring(instance) == "Dribble" then
                args[2] = player.Character.Humanoid.LLCL
                return originalNameCall(instance, unpack(args))
            end

            return originalNameCall(instance, ...)
        end)

        Window:Notify({
            Title = "Used React",
            Description = "The Keepz React Method Has Been Used",
            Duration = 5
        })
    end
})

Window:AddButton({
    Title = "Alz React",
    Description = "Execute the Alz React script",
    Tab = RT,
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/GrePU9TQ"))()

    end
})


Window:AddSection({ Name = "Air Dribble Helper", Tab = SKS }) 

 
Window:AddToggle({
    Title = "Enable Air Dribble Helper",
    Description = "Toggle the Air Dribble Helper feature on or off",
    Tab = SKS,
    Callback = function(Value) 
        if Value then 
            Window:Notify({
                Title = "Enabled",
                Description = "Air Dribble Helper has been enabled",
                Duration = 5
            })
        else

            for _, child in ipairs(game.Workspace:GetChildren()) do
                if child.Name == "supskidder1" then
                    child:Destroy()
                end
            end
            Window:Notify({
                Title = "Disabled",
                Description = "Air Dribble Helper has been disabled",
                Duration = 5
            })
        end
    end,
})


Window:AddSlider({
    Title = "Air Dribble Helper Size",
    Description = "",
    Tab = SKS,
    MaxValue = 100,
    Callback = function(val) 
        for _, child in ipairs(game.Workspace:GetChildren()) do
            if child.Name == "supskidder1" then
                child:Destroy()
            end
        end

        local part = Instance.new("Part")
        part.Name = "supskidder1"
    

        part.Size = Vector3.new(val, 0, val) 
        part.Anchored = true
        part.BrickColor = BrickColor.new("Bright red")
        part.Transparency = 1 
    

        part.Parent = game.Workspace
    

        local tpsSystem = game:GetService("Workspace"):FindFirstChild("TPSSystem")
        local tpsTarget = tpsSystem and tpsSystem:FindFirstChild("TPS")
    

        local function updatePartPosition()
            if tpsTarget then
              
                part.Position = tpsTarget.Position - Vector3.new(0, 1, 0)
            end
        end
    

        updatePartPosition()
    

        local runService = game:GetService("RunService")
        runService.RenderStepped:Connect(updatePartPosition)

    end,
}) 

Window:AddSection({ Name = "More ...", Tab = SKS }) 


local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local ball = game.Workspace.TPSSystem.TPS
local userInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")

local followBall = false
local isMovingManually = false
local toggleEnabled = false -- Tracks if the toggle is enabled or disabled

-- Function to follow the ball
local function follow()
    if followBall and not isMovingManually and toggleEnabled then
        character.Humanoid:MoveTo(ball.Position)
    end
end

-- Monitor user input to detect manual movement stop
userInputService.InputEnded:Connect(function(input, gameProcessed)
    if input.UserInputType == Enum.UserInputType.Keyboard or input.UserInputType == Enum.UserInputType.MouseMovement then
        isMovingManually = false
    end
end)

-- Toggle follow behavior with "C" key
userInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.C and not gameProcessed and toggleEnabled then
        followBall = not followBall
        if followBall then
            print("Following the ball")
        else
            print("Stopped following the ball")
        end
    end
end)

-- Connect follow function to RenderStepped to update position
runService.RenderStepped:Connect(function()
    if followBall and toggleEnabled then
        follow()
    end
end)

-- Reconnect follow function when character respawns
player.CharacterAdded:Connect(function(char)
    character = char
end)



Window:AddToggle({
    Title = "Inf Dribble Helper",
    Description = "Enable Infinite Dribble Helper",
    Tab = SKS,
    Callback = function(Value)
        toggleEnabled = Value
        if toggleEnabled then
            Window:Notify({
                Title = "Enabled",
                Description = "Infinite Dribble Helper is now enabled",
                Duration = 5
            })
        else
            followBall = false
            print("Toggle is off, stopped following the ball")
            Window:Notify({
                Title = "Disabled",
                Description = "Infinite Dribble Helper is now disabled",
                Duration = 5
            })
        end
    end,
})

Window:AddToggle({
    Title = "Auto Hold Groundshoot",
    Description = "Automatically holds groundshoot",
    Tab = SKS,
    Callback = function(Value)
        _G.HoldGround = Value
        if _G.HoldGround then
            Window:Notify({
                Title = "Enabled",
                Description = "Auto Hold Groundshoot is now enabled",
                Duration = 5
            })
            while _G.HoldGround do
                task.wait()
                game:GetService("Players").LocalPlayer.Backpack.Ground.Value = true
            end
            task.wait(1)
            game:GetService("Players").LocalPlayer.Backpack.Ground.Value = false
        else
            Window:Notify({
                Title = "Disabled",
                Description = "Auto Hold Groundshoot is now disabled",
                Duration = 5
            })
        end
    end,
})

Window:AddToggle({
    Title = "Inf Tackle Dribble Helper",
    Description = "Removes tackle cooldown",
    Tab = SKS,
    Callback = function(Value)
        local isTackleEnabled = Value
        if isTackleEnabled then
            Window:Notify({
                Title = "Enabled",
                Description = "Infinite Tackle Dribble Helper is now enabled",
                Duration = 5
            })
            while isTackleEnabled and task.wait() do
                local player = game.Players.LocalPlayer
                if player and player.Backpack:FindFirstChild("TackleCooldown") then
                    player.Backpack.TackleCooldown.Value = 0
                end
            end
        else
            Window:Notify({
                Title = "Disabled",
                Description = "Infinite Tackle Dribble Helper is now disabled",
                Duration = 5
            })
            local player = game.Players.LocalPlayer
            if player and player.Backpack:FindFirstChild("TackleCooldown") then
                player.Backpack.TackleCooldown.Value = 1
            end
        end
    end,
})

Window:AddSection({ Name = "Powershoot", Tab = MI }) 




Window:AddToggle({
    Title = "Inf Power Shoot",
    Description = "(W)",
    Tab = MI,
    Callback = function(Text) 
        if Text then
            _G.Fire = true
            Window:Notify({
                Title = "Enabled",
                Description = "Infinite Powershoot is now enabled",
                Duration = 5
            })
            while _G.Fire do
                wait()
                for v713, v714 in pairs(game.Players.LocalPlayer:GetDescendants()) do
                    if ((v714.Name == "PowerReady") and v714:IsA("BoolValue")) then
                        v714.Value = true
                    end
                end
            end
        else
            _G.Fire = false
            Window:Notify({
                Title = "Disabled",
                Description = "Infinite Powershoot is now disabled",
                Duration = 5
            })
        end
    end,
})

Window:AddSection({ Name = "Clumsy", Tab = MI }) 


Window:AddSlider({
    Title = "Clumsy",
    Description = "",
    Tab = MI,
    MaxValue = 1,
    Callback = function(Value) 
        settings():GetService("NetworkSettings").IncomingReplicationLag = tonumber(Value)
    end,
}) 


Window:AddSection({ Name = "Level Spoofer", Tab = MI }) 


Window:AddInput({
    Title = "XP Spoofer",
    Description = "1K = 2420000",
    Tab = MI,
    Callback = function(Text) 
        local user = game.Players.LocalPlayer.Name
        game:GetService("Lighting")[user].XP.Value = Text
    end,
}) 

Window:AddSection({ Name = "Fake Powers", Tab = MI }) 

Window:AddInput({
    Title = "Fake Bombs",
    Description = "Set fake bombs amount",
    Tab = MI,
    Callback = function(Value)
        local lg = game:GetService("Lighting")
        lg[game.Players.LocalPlayer.Name].Bomb.Value = Value
    end,
})

Window:AddInput({
    Title = "Fake Burns",
    Description = "Set fake burns amount",
    Tab = MI,
    Callback = function(Value)
        local lg = game:GetService("Lighting")
        lg[game.Players.LocalPlayer.Name].Burn.Value = Value
    end,
})

Window:AddInput({
    Title = "Fake Spikes",
    Description = "Set fake spikes amount",
    Tab = MI,
    Callback = function(Value)
        local lg = game:GetService("Lighting")
        lg[game.Players.LocalPlayer.Name].Spike.Value = Value
    end,
})

Window:AddInput({
    Title = "Fake Walls",
    Description = "Set fake walls amount",
    Tab = MI,
    Callback = function(Value)
        local lg = game:GetService("Lighting")
        lg[game.Players.LocalPlayer.Name].Wall.Value = Value
    end,
})

Window:AddSection({ Name = "Ball Size", Tab = GM }) 


Window:AddInput({
    Title = "Ball Size",
    Description = "",
    Tab = GM,
    Callback = function(Value)
        game:GetService("Workspace").TPSSystem.TPS.Size = Vector3.new(Value, Value, Value)
    end,
})

Window:AddButton({
    Title = "Anti Ball-Fling",
    Description = "Anti-Fling is a term used primarily in video games, especially in games like Roblox, where what is called “flinging” can occur. Flinging is when a character or object is launched or flown in an unexpected or distant direction due to an uncontrolled collision or glitch in the in-game physics.",
    Tab = GM,
    Callback = function() 
    
        local player = game.Players.LocalPlayer
        local runService = game:GetService("RunService")
        local Clip = false
        wait(0.1)
        
        local function noclipFunction()
            if not Clip and player.Character then
                for _, part in pairs(player.Character:GetDescendants()) do
                    if part:IsA("BasePart") and part.CanCollide and (part.Name == "Right Leg" or part.Name == "Right Arm" or part.Name == "Left Arm" or part.Name == "Torso") then
                        part.CanCollide = false
                    end
                end
            end
        end
        
        local noclipConnection = runService.Stepped:Connect(noclipFunction)  
    
        Window:Notify({
            Title = "Anti Ball Fling",
            Description = "Anti Ball Fling Has Been Turned On", 
            Duration = 5
        })
    end,
}) 


Window:AddButton({
    Title = "Disable Ball Texture",
    Description = "",
    Tab = GM,
    Callback = function() 

        local Ball = game.Workspace.TPSSystem.TPS
        local Player = game.Players.LocalPlayer
        local HRP = Player.Character.HumanoidRootPart
        local RightLeg, LeftLeg = Player.Character["Right Leg"], Player.Character["Left Leg"]         
        for i,BallCON in pairs(Ball:GetChildren()) do
        if BallCON:IsA("Decal") or BallCON:IsA("Smoke") or BallCON:IsA("PointLight") or BallCON:IsA("ParticleEmitter") then
        BallCON:Destroy()
        end
        end
        for i,BALLFIRE in pairs(Ball:GetChildren()) do
        if BALLFIRE:IsA("Fire") then
        BALLFIRE.Heat = 1
        BALLFIRE.Size = 5
        end
        end
        Ball.Massless = true
        Ball.CustomPhysicalProperties = false
        

        Window:Notify({
            Title = "Disable Ball Texture",
            Description = "Disabled The Texture From The Ball ", 
            Duration = 5
        })
    end,
}) 

Window:AddSection({ Name = "Configs", Tab = GM }) 


Window:AddButton({
    Title = "Best Config for Infinite Dribble",
    Description = "A perfect balance for smooth and consistent infinite dribbling.", 
    Tab = GM, 
    Callback = function() 
        game:GetService("Workspace").TPSSystem.TPS.Size = Vector3.new(2.7, 2.7, 2.7)
        Window:Notify({
            Title = "Infinite Dribble Config Applied",
            Description = "Size set to 2.7",
            Duration = 5
        })
    end
})

Window:AddButton({
    Title = "Best Config for Aerial Control",
    Description = "Enhanced air dribbling with a stable and predictable ball size.", 
    Tab = GM, 
    Callback = function() 
        game:GetService("Workspace").TPSSystem.TPS.Size = Vector3.new(2.8, 2.8, 2.8)
        Window:Notify({
            Title = "Aerial Control Config Applied",
            Description = "Size set to 2.8",
            Duration = 5
        })
    end
})

Window:AddButton({
    Title = "Best Config for Fast Plays",
    Description = "Ideal for quick movements, passing, and high-speed plays.", 
    Tab = GM, 
    Callback = function() 
        game:GetService("Workspace").TPSSystem.TPS.Size = Vector3.new(2.9, 2.9, 2.9)
        Window:Notify({
            Title = "Fast Plays Config Applied",
            Description = "Size set to 2.9",
            Duration = 5
        })
    end
})

Window:AddButton({
    Title = "Best Config for Precision Shots",
    Description = "Tuned for perfect angles and sharp shots on goal.", 
    Tab = GM, 
    Callback = function() 
        game:GetService("Workspace").TPSSystem.TPS.Size = Vector3.new(2.95, 2.95, 2.95)
        Window:Notify({
            Title = "Precision Shots Config Applied",
            Description = "Size set to 2.95",
            Duration = 5
        })
    end
})

Window:AddButton({
    Title = "Best Config for Freestyling",
    Description = "Optimized for stylish plays, flicks, and advanced tricks.", 
    Tab = GM, 
    Callback = function() 
        game:GetService("Workspace").TPSSystem.TPS.Size = Vector3.new(3.0, 3.0, 3.0)
        Window:Notify({
            Title = "Freestyling Config Applied",
            Description = "Size set to 3.0",
            Duration = 5
        })
    end
})

Window:AddButton({
    Title = "Best Config for Power Shots",
    Description = "Slightly bigger ball for more controlled and powerful shots.", 
    Tab = GM, 
    Callback = function() 
        game:GetService("Workspace").TPSSystem.TPS.Size = Vector3.new(3.1, 3.1, 3.1)
        Window:Notify({
            Title = "Power Shots Config Applied",
            Description = "Size set to 3.1",
            Duration = 5
        })
    end
})


Window:AddButton({
    Title = "Full Night Sky",
    Description = "",
    Tab = SK,
    Callback = function()
        getgenv().Kitten = 5
        local texture = "http://www.roblox.com/asset/?id=17055447520"
        local sky = Instance.new("Sky")
        sky.Parent = game.Lighting
        sky.CelestialBodiesShown = false
        sky.SkyboxBk = texture
        sky.SkyboxDn = texture
        sky.SkyboxFt = texture
        sky.SkyboxLf = texture
        sky.SkyboxRt = texture
        sky.SkyboxUp = texture
        Window:Notify({ Title = "Full Night Sky Applied", Duration = 5 })
    end
})

Window:AddButton({
    Title = "Vibe Sky",
    Description = "",
    Tab = SK,
    Callback = function()
        getgenv().Kitten = 10
        local Lighting = game.Lighting
        local sky = Instance.new("Sky")
        sky.Parent = Lighting
        sky.CelestialBodiesShown = true
        sky.MoonTextureId = "rbxasset://sky/moon.jpg"
        sky.SkyboxBk = "rbxassetid://159067838"
        sky.SkyboxDn = "rbxassetid://159067646"
        sky.SkyboxFt = "rbxassetid://159067838"
        sky.SkyboxLf = "rbxassetid://159067744"
        sky.SkyboxRt = "rbxassetid://159067744"
        sky.SkyboxUp = "rbxassetid://159067921"
        sky.StarCount = "3000"
        sky.SunAngularSize = "21"
        sky.SunTextureId = "rbxasset://sky/sun.jpg"
        local Atmosphere = Instance.new("Atmosphere")
        Atmosphere.Parent = Lighting
        Atmosphere.Color = Color3.new(250, 250, 250)
        Atmosphere.Decay = Color3.new(255, 255, 255)
        local Bloom = Instance.new("BloomEffect")
        Bloom.Parent = Lighting
        Bloom.Enabled = true
        Bloom.Intensity = "0.4"
        Bloom.Size = "24"
        Bloom.Threshold = "0.95"
        local Blur = Instance.new("BlurEffect")
        Blur.Parent = Lighting
        Blur.Enabled = true
        Blur.Size = "1.7"
        local DepthofField = Instance.new("DepthOfFieldEffect")
        DepthofField.Parent = Lighting
        DepthofField.Enabled = true
        DepthofField.FarIntensity = "0.1"
        DepthofField.FocusDistance = "0.05"
        DepthofField.InFocusRadius = "39"
        DepthofField.NearIntensity = "0.75"
        local SunRays = Instance.new("SunRaysEffect")
        SunRays.Parent = Lighting
        SunRays.Enabled = true
        SunRays.Intensity = "0.25"
        SunRays.Spread = "1"
        Lighting.ClockTime = "14.5"
        Lighting.GeographicLatitude = "0"
        Lighting.TimeOfDay = "14:30:00"
        Lighting.ExposureCompensation = "0"
        Window:Notify({ Title = "Vibe Sky Applied", Duration = 5 })
    end
})

-- Repeating the same pattern for the remaining buttons:

local skies = {
    { Title = "Black Hole", Texture = "http://www.roblox.com/asset/?id=17108753749" },
    { Title = "Neptune", Texture = "http://www.roblox.com/asset/?id=17108745046" },
    { Title = "Lofy Sky", Texture = "http://www.roblox.com/asset/?id=17108732394" },
    { Title = "Aurora Boreal", Texture = "http://www.roblox.com/asset/?id=17108721907" },
    { Title = "Red Vulkan", Texture = "http://www.roblox.com/asset/?id=17108721907" }
}

for _, skyData in ipairs(skies) do
    Window:AddButton({
        Title = skyData.Title,
        Description = "",
        Tab = SK,
        Callback = function()
            getgenv().Kitten = 5
            local sky = Instance.new("Sky")
            sky.Parent = game.Lighting
            sky.CelestialBodiesShown = false
            sky.SkyboxBk = skyData.Texture
            sky.SkyboxDn = skyData.Texture
            sky.SkyboxFt = skyData.Texture
            sky.SkyboxLf = skyData.Texture
            sky.SkyboxRt = skyData.Texture
            sky.SkyboxUp = skyData.Texture
            Window:Notify({ Title = skyData.Title .. " Applied", Duration = 5 })
        end
    })
end

Window:AddButton({
    Title = "Sakura Pink Sky",
    Description = "",
    Tab = SK,
    Callback = function()
        local skybox = Instance.new("Sky")
        skybox.Parent = game.Lighting
        skybox.SkyboxBk = "http://www.roblox.com/asset/?id=271042516"
        skybox.SkyboxDn = "http://www.roblox.com/asset/?id=271077243"
        skybox.SkyboxFt = "http://www.roblox.com/asset/?id=271042556"
        skybox.SkyboxLf = "http://www.roblox.com/asset/?id=271042310"
        skybox.SkyboxRt = "http://www.roblox.com/asset/?id=271042467"
        skybox.SkyboxUp = "http://www.roblox.com/asset/?id=271077958"
        skybox.StarCount = 5000
        Window:Notify({ Title = "Sakura Pink Sky Applied", Duration = 5 })
    end
})




--// Tab [SETTINGS]
local Keybind = nil
local Settings = Window:AddTab({
    Title = "Settings",
    Section = "Settings",
    Icon = "rbxassetid://11293977610",
})
 
Window:AddKeybind({
    Title = "Minimize Keybind",
    Description = "Set the keybind for Minimizing",
    Tab = Settings,
    Callback = function(Key) 
        Window:SetSetting("Keybind", Key)
    end,
}) 
 
Window:AddDropdown({
    Title = "Set Theme",
    Description = "Set the theme of the library!",
    Tab = Settings,
    Options = {
        ["Light Mode"] = "Light",
        ["Dark Mode"] = "Dark",
        ["Extra Dark"] = "Void",
    },
    Callback = function(Theme) 
        Window:SetTheme(Themes[Theme])
    end,
}) 
 
Window:AddToggle({
    Title = "UI Blur",
    Description = "If enabled, must have your Roblox graphics set to 8+ for it to work",
    Default = true,
    Tab = Settings,
    Callback = function(Boolean) 
        Window:SetSetting("Blur", Boolean)
    end,
}) 
 
 
Window:AddSlider({
    Title = "UI Transparency",
    Description = "Set the transparency of the UI",
    Tab = Settings,
    AllowDecimals = true,
    MaxValue = 1,
    Callback = function(Amount) 
        Window:SetSetting("Transparency", Amount)
    end,
}) 
 
Window:Notify({
    Title = "Hello World!",
    Description = "Press Left Alt to Minimize and Open the tab!", 
    Duration = 10
})

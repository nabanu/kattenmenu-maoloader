--sand map
local SciptTitle = "KattenPootje map loader"
print("starting "..SciptTitle)


local Destroyed = false
local RGBHue = 0
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local PhysicsService = game:GetService("PhysicsService")
local Cam = workspace.CurrentCamera
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()


local UI = Instance.new("ScreenGui")
UI.Parent = Player.PlayerGui
UI.Name = SciptTitle
UI.ZIndexBehavior = Enum.ZIndexBehavior.Global
local Frame = Instance.new("Frame")
Frame.Parent = UI
Frame.Position = UDim2.new(0, 10, 0, 250)
Frame.ZIndex = 999
local MenuFeatures = 0
local FeatureUISize = 20
local FeatureColor = Color3.fromRGB(0, 0, 0)
local FeatureEnabledColor = Color3.fromRGB(23, 15, 40)
local TitleColor = Color3.fromRGB(113, 72, 195)
local FeatureTextColor = Color3.fromRGB(255, 255, 255)
local TitleTextColor = Color3.fromRGB(33, 33, 33)

local ExampleButton = Instance.new("TextLabel")
ExampleButton.ZIndex = 1000
ExampleButton.Size = UDim2.new(1, 0, 0, FeatureUISize)
ExampleButton.TextXAlignment = Enum.TextXAlignment.Left
ExampleButton.BackgroundColor3 = FeatureColor
ExampleButton.TextColor3 = FeatureTextColor

MenuFeatures += 1
local FeatureName = "Load map"
local FeatureKey = "M"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)
local KeyValue = Instance.new("StringValue")
KeyValue.Parent = MenuFeatureTitle
KeyValue.Name = "KeyValue"
KeyValue.Value = FeatureKey
local FeatureValue = Instance.new("StringValue")
FeatureValue.Parent = MenuFeatureTitle
FeatureValue.Name = "FeatureValue"
FeatureValue.Value = FeatureName

MenuFeatures += 1
local FeatureName = "respawn to 1"
local FeatureKey = "Four"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)
local KeyValue = Instance.new("StringValue")
KeyValue.Parent = MenuFeatureTitle
KeyValue.Name = "KeyValue"
KeyValue.Value = FeatureKey
local FeatureValue = Instance.new("StringValue")
FeatureValue.Parent = MenuFeatureTitle
FeatureValue.Name = "FeatureValue"
FeatureValue.Value = FeatureName
local Respawn1 = false
local RespawnedToMap = false

MenuFeatures += 1
local FeatureName = "respawn to 2"
local FeatureKey = "Five"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)
local KeyValue = Instance.new("StringValue")
KeyValue.Parent = MenuFeatureTitle
KeyValue.Name = "KeyValue"
KeyValue.Value = FeatureKey
local FeatureValue = Instance.new("StringValue")
FeatureValue.Parent = MenuFeatureTitle
FeatureValue.Name = "FeatureValue"
FeatureValue.Value = FeatureName
local Respawn2 = false

MenuFeatures += 1
local FeatureName = "Mouse TP"
local FeatureKey = "T"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)
local KeyValue = Instance.new("StringValue")
KeyValue.Parent = MenuFeatureTitle
KeyValue.Name = "KeyValue"
KeyValue.Value = FeatureKey
local FeatureValue = Instance.new("StringValue")
FeatureValue.Parent = MenuFeatureTitle
FeatureValue.Name = "FeatureValue"
FeatureValue.Value = FeatureName

MenuFeatures += 1
local FeatureName = "Toggle barriers"
local FeatureKey = "RightShift"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)
local KeyValue = Instance.new("StringValue")
KeyValue.Parent = MenuFeatureTitle
KeyValue.Name = "KeyValue"
KeyValue.Value = FeatureKey
local FeatureValue = Instance.new("StringValue")
FeatureValue.Parent = MenuFeatureTitle
FeatureValue.Name = "FeatureValue"
FeatureValue.Value = FeatureName
local Barriers = false

MenuFeatures += 1
local FeatureName = "Knife Fire"
local FeatureKey = "Six"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)
local KeyValue = Instance.new("StringValue")
KeyValue.Parent = MenuFeatureTitle
KeyValue.Name = "KeyValue"
KeyValue.Value = FeatureKey
local FeatureValue = Instance.new("StringValue")
FeatureValue.Parent = MenuFeatureTitle
FeatureValue.Name = "FeatureValue"
FeatureValue.Value = FeatureName

MenuFeatures += 1
local FeatureName = "Glass camo"
local FeatureKey = "Zero"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)
local KeyValue = Instance.new("StringValue")
KeyValue.Parent = MenuFeatureTitle
KeyValue.Name = "KeyValue"
KeyValue.Value = FeatureKey
local FeatureValue = Instance.new("StringValue")
FeatureValue.Parent = MenuFeatureTitle
FeatureValue.Name = "FeatureValue"
FeatureValue.Value = FeatureName

MenuFeatures += 1
local FeatureName = "Camo2"
local FeatureKey = "Nine"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)
local KeyValue = Instance.new("StringValue")
KeyValue.Parent = MenuFeatureTitle
KeyValue.Name = "KeyValue"
KeyValue.Value = FeatureKey
local FeatureValue = Instance.new("StringValue")
FeatureValue.Parent = MenuFeatureTitle
FeatureValue.Name = "FeatureValue"
FeatureValue.Value = FeatureName

MenuFeatures += 1
local FeatureName = "Camo3"
local FeatureKey = "Eight"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)
local KeyValue = Instance.new("StringValue")
KeyValue.Parent = MenuFeatureTitle
KeyValue.Name = "KeyValue"
KeyValue.Value = FeatureKey
local FeatureValue = Instance.new("StringValue")
FeatureValue.Parent = MenuFeatureTitle
FeatureValue.Name = "FeatureValue"
FeatureValue.Value = FeatureName

MenuFeatures += 1
local FeatureName = "Camo4"
local FeatureKey = "Seven"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)
local KeyValue = Instance.new("StringValue")
KeyValue.Parent = MenuFeatureTitle
KeyValue.Name = "KeyValue"
KeyValue.Value = FeatureKey
local FeatureValue = Instance.new("StringValue")
FeatureValue.Parent = MenuFeatureTitle
FeatureValue.Name = "FeatureValue"
FeatureValue.Value = FeatureName

MenuFeatures += 1
local FeatureName = "One handed mode"
local FeatureKey = "Y"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)
local KeyValue = Instance.new("StringValue")
KeyValue.Parent = MenuFeatureTitle
KeyValue.Name = "KeyValue"
KeyValue.Value = FeatureKey
local FeatureValue = Instance.new("StringValue")
FeatureValue.Parent = MenuFeatureTitle
FeatureValue.Name = "FeatureValue"
FeatureValue.Value = FeatureName
local OneHanded = false

MenuFeatures += 1
local FeatureName = "Custom reticle"
local FeatureKey = "L"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)
local KeyValue = Instance.new("StringValue")
KeyValue.Parent = MenuFeatureTitle
KeyValue.Name = "KeyValue"
KeyValue.Value = FeatureKey
local FeatureValue = Instance.new("StringValue")
FeatureValue.Parent = MenuFeatureTitle
FeatureValue.Name = "FeatureValue"
FeatureValue.Value = FeatureName
local CustomReticle = false
local CanSetReticle = true
local LastReticleUpdate = os.clock()

MenuFeatures += 1
local FeatureName = "Lock settings"
local FeatureKey = "Slash/Enter"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)
local LockSettings = false

MenuFeatures += 1
local FeatureName = "Destroy menu"
local FeatureKey = "END"
local MenuFeatureTitle = ExampleButton:Clone()
MenuFeatureTitle.Name = FeatureName
MenuFeatureTitle.Parent = Frame
MenuFeatureTitle.Text = FeatureName .. " - " .. FeatureKey
MenuFeatureTitle.Position = UDim2.new(0, 0, 0, ((MenuFeatures-1)*FeatureUISize)+20)

--end menu features


Frame.Size = UDim2.new(0, 150, 0, MenuFeatures * FeatureUISize+20)


local MenuTitle = Instance.new("TextLabel")
MenuTitle.BackgroundColor3 = TitleColor
MenuTitle.TextColor3 = TitleTextColor
MenuTitle.Parent = Frame
MenuTitle.ZIndex = 1000
MenuTitle.Text = SciptTitle
MenuTitle.Position = UDim2.new(0, 0, 0, 0)
MenuTitle.Size = UDim2.new(1, 0, 0, FeatureUISize)
MenuTitle.TextXAlignment = Enum.TextXAlignment.Center




function RemoveBarriers()
    local CollectionService = game:GetService("CollectionService")
    for _, Barriers in pairs(CollectionService:GetTagged("MAP_BOUNDARY")) do
        if Barriers.CanCollide == true and Barriers.Transparency == 1 then
            Barriers:AddTag("RemagniovedBarrier")
            Barriers.CanCollide = false
        end
    end
end
function RestoreBarriers()
    local CollectionService = game:GetService("CollectionService")
    for _, Barriers in pairs(CollectionService:GetTagged("RemovedBarrier")) do
        if Barriers ~= nil then
            Barriers.CanCollide = true
        end
    end
end


function EnableNoclip()
    local Character = nil
    for _,Soldiers in pairs(workspace:GetChildren()) do
        if Soldiers ~= nil  then
            if Soldiers.Name == "soldier_model" then
                if Soldiers:FindFirstChild("fpv_rig") then
                    Character = Soldiers
                end
            end
        end
    end
    if Character ~= nil then
        Character.HumanoidRootPart.CanCollide =  false
    end
end
function DisableNoclip()
    local Character = nil
    for _,Soldiers in pairs(workspace:GetChildren()) do
        if Soldiers ~= nil  then
            if Soldiers.Name == "soldier_model" then
                if Soldiers:FindFirstChild("fpv_rig") then
                    Character = Soldiers
                end
            end
        end
    end
    if Character ~= nil then
        Character.HumanoidRootPart.CanCollide =  true
    end
end


function KnifeFire()
    for _,Knife in pairs(workspace:GetChildren()) do
        if Knife.Name == "Model" then
            if Knife:FindFirstChild("combat_knife") then
                if Knife.combat_knife.Knife1:FindFirstChild("FireParticlesAttachment") then
                    Knife.combat_knife.Knife1.FireParticlesAttachment:Destroy()
                end
                local FireParticlesAttachment = Knife.combat_knife.Knife1.equipment:Clone()
                FireParticlesAttachment.Parent = Knife.combat_knife.Knife1
                FireParticlesAttachment.Name = "FireParticlesAttachment"
                FireParticlesAttachment.Position = Vector3.new(0, 0.45, 0)
                
                local FireLight =  Instance.new("PointLight")
                FireLight.Parent = FireParticlesAttachment
                FireLight.Color = Color3.fromRGB(255, 171, 97)
                FireLight.Brightness = .9
                FireLight.Range = 3.6
                local FireLight2 =  Instance.new("PointLight")
                FireLight2.Parent = FireParticlesAttachment
                FireLight2.Color = Color3.fromRGB(255, 171, 97)
                FireLight2.Brightness = .07
                FireLight2.Range = 18
                
                local Particles = Instance.new("ParticleEmitter")
                Particles.Parent = Knife.combat_knife.Knife1.FireParticlesAttachment
                Particles.Orientation = Enum.ParticleOrientation.VelocityParallel
                Particles.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
                Particles.LightInfluence = 1
                Particles.LightEmission = 1
                Particles.Size = NumberSequence.new(.6)
                Particles.Texture = "rbxassetid://12371091637"
                Particles.Transparency = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, 1),
                    NumberSequenceKeypoint.new(0.2, 0.1),
                    NumberSequenceKeypoint.new(1, 1)
                })
                Particles.Lifetime = NumberRange.new(1.5)
                Particles.Rate = 1.8
                Particles.Rotation = NumberRange.new(-90,-90)
                Particles.Speed = NumberRange.new(0.05,0.05)
                Particles.LockedToPart = true
                Particles.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
                Particles.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
                --Particles.FlipbookFramerate = 200
                --Particles.FlipbookStartRandom = true
            end
        end
    end
end


function SetWeaponCamo(CamoType)
    for _,CheckGun in pairs(workspace:GetChildren()) do
        if CheckGun.Name == "Model" then
            if CheckGun.PrimaryPart ~= nil then
                if (CheckGun.PrimaryPart.Position-workspace.CurrentCamera.CFrame.Position).Magnitude < 8 then
                    if CheckGun:FindFirstChild("ReflectionHighlight") then
                        CheckGun.ReflectionHighlight:Destroy()
                    end
                    if CamoType == 1 then
                        local ReflectionHighlight = Instance.new("Highlight")
                        ReflectionHighlight.Parent = CheckGun
                        ReflectionHighlight.Enabled = false
                        ReflectionHighlight.Name = "ReflectionHighlight"
                    end
                    if CamoType == 2 or CamoType == 3 then
                        if game.MaterialService:FindFirstChild("CamoMaterial2") then
                            game.MaterialService.CamoMaterial2:Destroy()
                        end
                        local CamoMaterial = game.MaterialService:FindFirstChild("trainBasalt"):Clone()
                        CamoMaterial.Parent = game.MaterialService
                        CamoMaterial.StudsPerTile = 2
                        CamoMaterial.Name = "CamoMaterial2"
                    end
                    for _,Attachments in pairs(CheckGun:GetChildren()) do
                        for _,AttachmentsParts in pairs(Attachments:GetChildren()) do
                            if AttachmentsParts:HasTag("Camo3") then
                                AttachmentsParts:RemoveTag("Camo3")
                            end
                            if AttachmentsParts:HasTag("Camo4") then
                                AttachmentsParts:RemoveTag("Camo4")
                            end
                            if AttachmentsParts:FindFirstChild("SurfaceAppearance") then
                                AttachmentsParts.SurfaceAppearance:Destroy()
                            end
                            if CamoType == 1 then
                                if AttachmentsParts.ClassName == "MeshPart" then
                                    if AttachmentsParts.Transparency < 0.1 or AttachmentsParts.Transparency > 1 then
                                        AttachmentsParts.Color = Color3.fromRGB(197, 0, 0)
                                        AttachmentsParts.Material = Enum.Material.Glass
                                        AttachmentsParts.MaterialVariant = ""
                                        AttachmentsParts.Transparency = 5
                                    end
                                end
                            elseif CamoType == 2 then
                                if AttachmentsParts.ClassName == "MeshPart" then
                                    if AttachmentsParts.Transparency < 0.1 or AttachmentsParts.Transparency > 1 then
                                        AttachmentsParts.Color = Color3.fromRGB(70, 20, 171)
                                        AttachmentsParts.Material = Enum.Material.Basalt
                                        AttachmentsParts.MaterialVariant = "CamoMaterial2"
                                        AttachmentsParts.Transparency = 0
                                    end
                                end
                            elseif CamoType == 3 then
                                if AttachmentsParts.ClassName == "MeshPart" then
                                    if AttachmentsParts.Transparency < 0.1 or AttachmentsParts.Transparency > 1 then
                                        AttachmentsParts:AddTag("Camo3")
                                        AttachmentsParts.Color = Color3.fromHSV(RGBHue, 0.88, 0.67)
                                        AttachmentsParts.Material = Enum.Material.Basalt
                                        AttachmentsParts.MaterialVariant = "CamoMaterial2"
                                        AttachmentsParts.Transparency = 0
                                    end
                                end
                            elseif CamoType == 4 then
                                if AttachmentsParts.ClassName == "MeshPart" then
                                    if AttachmentsParts.Transparency < 0.1 or AttachmentsParts.Transparency > 1 then
                                        AttachmentsParts:AddTag("Camo4")
                                        AttachmentsParts.Color = Color3.fromHSV(RGBHue, 1, 1)
                                        AttachmentsParts.Material = Enum.Material.Metal
                                        AttachmentsParts.MaterialVariant = "galvanizedMetal"
                                        AttachmentsParts.Transparency = 0
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end


function SetReticle()
    local Gun = nil
    for _,CheckGun in pairs(workspace:GetChildren()) do
        if CheckGun.Name == "Model" then
            Gun = CheckGun
            for _,Attachments in pairs(Gun:GetChildren()) do
                if Attachments:FindFirstChild("reticle") then
                    local Sight = Attachments
                    Sight.reticle.ImageLabel.Image = "rbxassetid://106681394040192"
                end
            end
        end
    end
end
function RestoreReticle()
    local Gun = nil
    for _,CheckGun in pairs(workspace:GetChildren()) do
        if CheckGun.Name == "Model" then
            Gun = CheckGun
            for _,Attachments in pairs(Gun:GetChildren()) do
                if Attachments:FindFirstChild("reticle") then
                    local Sight = Attachments
                    Sight.reticle.ImageLabel.Image = "rbxassetid://13741782316"
                end
            end
        end
    end
end


function EnableOneHanded()
    local Character = nil
    for _,Soldiers in pairs(workspace:GetChildren()) do
        if Soldiers ~= nil  then
            if Soldiers.Name == "soldier_model" then
                if Soldiers:FindFirstChild("fpv_rig") then
                    Character = Soldiers
                    local fpv_rig = Soldiers.fpv_rig
                    fpv_rig.FPVForearmL_LocCorrected.Transparency = 1
                    fpv_rig.FPVGloveL_LocCorrected.Transparency = 1
                    fpv_rig.FPVUpperArmL_LocCorrected.Transparency = 1
                end
            end
        end
    end
end

function DisableOneHanded()
    local Character = nil
    for _,Soldiers in pairs(workspace:GetChildren()) do
        if Soldiers ~= nil  then
            if Soldiers.Name == "soldier_model" then
                if Soldiers:FindFirstChild("fpv_rig") then
                    Character = Soldiers
                    local fpv_rig = Soldiers.fpv_rig
                    fpv_rig.FPVForearmL_LocCorrected.Transparency = 0
                    fpv_rig.FPVGloveL_LocCorrected.Transparency = 0
                    fpv_rig.FPVUpperArmL_LocCorrected.Transparency = 0
                end
            end
        end
    end
end


function LoadMap()
    local MapObjects = {
        [1] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Limestone",
            ["MaterialVariant"] = "OVERRIDErockySand",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -21.26600074768066,
            ["OrientationZ"] = 0,
            ["PositionX"] = -0.2692217826843262,
            ["PositionY"] = 207.8978271484375,
            ["PositionZ"] = -9.395219802856445,
            ["Shape"] = "Block",
            ["SizeX"] = 119.2010192871094,
            ["SizeY"] = 2.129164934158325,
            ["SizeZ"] = 242.3104553222656
        },
        [2] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = 0.9565730094909668,
            ["PositionY"] = 211.1007690429688,
            ["PositionZ"] = -55.91122055053711,
            ["Shape"] = "Block",
            ["SizeX"] = 27.541748046875,
            ["SizeY"] = 4.276740074157715,
            ["SizeZ"] = 49.32527923583984
        },
        [3] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 55.04457855224609,
            ["PositionY"] = 212.6389770507812,
            ["PositionZ"] = -11.07629489898682,
            ["Shape"] = "Block",
            ["SizeX"] = 29.89628410339355,
            ["SizeY"] = 10.78576278686523,
            ["SizeZ"] = 40.34017944335938
        },
        [4] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Limestone",
            ["MaterialVariant"] = "OVERRIDErockySand",
            ["Name"] = "Part",
            ["OrientationX"] = 5.489999771118164,
            ["OrientationY"] = -21.26600074768066,
            ["OrientationZ"] = 0,
            ["PositionX"] = 16.31064796447754,
            ["PositionY"] = 208.9572448730469,
            ["PositionZ"] = -35.31048202514648,
            ["Shape"] = "Block",
            ["SizeX"] = 107.0976409912109,
            ["SizeY"] = 2.129164934158325,
            ["SizeZ"] = 56.91968154907227
        },
        [5] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Limestone",
            ["MaterialVariant"] = "OVERRIDErockySand",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -21.26600074768066,
            ["OrientationZ"] = 0,
            ["PositionX"] = 39.90590667724609,
            ["PositionY"] = 211.6494750976562,
            ["PositionZ"] = -86.86666107177734,
            ["Shape"] = "Block",
            ["SizeX"] = 107.0976409912109,
            ["SizeY"] = 2.129164934158325,
            ["SizeZ"] = 56.91968154907227
        },
        [6] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = -11.0909595489502,
            ["PositionY"] = 224.1400756835938,
            ["PositionZ"] = -50.42919540405273,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 21.80200004577637,
            ["SizeZ"] = 28.3703727722168
        },
        [7] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 16.7450008392334,
            ["OrientationZ"] = 0,
            ["PositionX"] = -6.545449733734131,
            ["PositionY"] = 210.5161285400391,
            ["PositionZ"] = -32.52482223510742,
            ["Shape"] = "Block",
            ["SizeX"] = 2.336860656738281,
            ["SizeY"] = 3.107482671737671,
            ["SizeZ"] = 7.088982582092285
        },
        [8] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 22.30299949645996,
            ["OrientationZ"] = 0,
            ["PositionX"] = -7.40234899520874,
            ["PositionY"] = 208.9237060546875,
            ["PositionZ"] = -31.57343292236328,
            ["Shape"] = "Block",
            ["SizeX"] = 4.58708667755127,
            ["SizeY"] = 3.107482671737671,
            ["SizeZ"] = 6.859596252441406
        },
        [9] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 8.854975700378418,
            ["PositionY"] = 214.9905395507812,
            ["PositionZ"] = -33.15602111816406,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.502847671508789,
            ["SizeZ"] = 27.15890884399414
        },
        [10] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Limestone",
            ["MaterialVariant"] = "OVERRIDErockySand",
            ["Name"] = "Part",
            ["OrientationX"] = -3.848000049591064,
            ["OrientationY"] = -45.07600021362305,
            ["OrientationZ"] = 0.453000009059906,
            ["PositionX"] = -34.15937423706055,
            ["PositionY"] = 210.2816772460938,
            ["PositionZ"] = 57.21428680419922,
            ["Shape"] = "Block",
            ["SizeX"] = 202.7262878417969,
            ["SizeY"] = 2.129164934158325,
            ["SizeZ"] = 96.40945434570312
        },
        [11] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 0.5116515159606934,
            ["PositionY"] = 224.1400756835938,
            ["PositionZ"] = -39.91013336181641,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 21.80191993713379,
            ["SizeZ"] = 1.974819779396057
        },
        [12] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = 11.81638717651367,
            ["PositionY"] = 218.6895751953125,
            ["PositionZ"] = -64.54204559326172,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90100002288818,
            ["SizeZ"] = 40.02046203613281
        },
        [13] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 7.924843311309814,
            ["PositionY"] = 218.6895751953125,
            ["PositionZ"] = -42.48197937011719,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 1.506445407867432
        },
        [14] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 3.638901233673096,
            ["PositionY"] = 213.2389221191406,
            ["PositionZ"] = -41.85012435913086,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [15] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 3.193155765533447,
            ["PositionY"] = 214.5559234619141,
            ["PositionZ"] = -43.13495635986328,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [16] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 2.747409343719482,
            ["PositionY"] = 215.8729248046875,
            ["PositionZ"] = -44.41979217529297,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [17] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 2.301662921905518,
            ["PositionY"] = 217.1899261474609,
            ["PositionZ"] = -45.70462036132812,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [18] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 1.855916500091553,
            ["PositionY"] = 216.4406585693359,
            ["PositionZ"] = -46.98945617675781,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 6.766085147857666,
            ["SizeZ"] = 5.225443363189697
        },
        [19] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 1.410171031951904,
            ["PositionY"] = 219.8239288330078,
            ["PositionZ"] = -48.27428817749023,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [20] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 0.964423656463623,
            ["PositionY"] = 221.1409301757812,
            ["PositionZ"] = -49.55912017822266,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [21] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 0.5186762809753418,
            ["PositionY"] = 222.4579162597656,
            ["PositionZ"] = -50.84395599365234,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [22] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = -0.862973690032959,
            ["PositionY"] = 223.9586486816406,
            ["PositionZ"] = -45.49778366088867,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 21.43905067443848,
            ["SizeZ"] = 10.56586360931396
        },
        [23] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = -4.045416355133057,
            ["PositionY"] = 223.5885772705078,
            ["PositionZ"] = -64.31111145019531,
            ["Shape"] = "Block",
            ["SizeX"] = 6.782896518707275,
            ["SizeY"] = 0.6933639049530029,
            ["SizeZ"] = 29.78956413269043
        },
        [24] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -160.8670043945312,
            ["OrientationZ"] = 0,
            ["PositionX"] = 6.242845058441162,
            ["PositionY"] = 223.5885772705078,
            ["PositionZ"] = -62.75304794311523,
            ["Shape"] = "Block",
            ["SizeX"] = 11.63711166381836,
            ["SizeY"] = 0.6933639049530029,
            ["SizeZ"] = 39.47781753540039
        },
        [25] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = -9.386104583740234,
            ["PositionY"] = 223.5885772705078,
            ["PositionZ"] = -57.33091735839844,
            ["Shape"] = "Block",
            ["SizeX"] = 7.889030456542969,
            ["SizeY"] = 0.6933639049530029,
            ["SizeZ"] = 39.47781753540039
        },
        [26] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 180,
            ["PositionX"] = 5.063036441802979,
            ["PositionY"] = 223.5359191894531,
            ["PositionZ"] = -47.08213806152344,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 21.70643424987793,
            ["SizeZ"] = 11.456862449646
        },
        [27] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = -2.877053737640381,
            ["PositionY"] = 224.5926666259766,
            ["PositionZ"] = -38.7344970703125,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 5.943517684936523,
            ["SizeZ"] = 5.200212001800537
        },
        [28] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 12.2870044708252,
            ["PositionY"] = 222.8804779052734,
            ["PositionZ"] = -43.99534606933594,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9049999713897705,
            ["SizeY"] = 2.519130229949951,
            ["SizeZ"] = 7.73199987411499
        },
        [29] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 16.87178230285645,
            ["PositionY"] = 218.6895751953125,
            ["PositionZ"] = -45.58592987060547,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 1.974819779396057
        },
        [30] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 12.2870044708252,
            ["PositionY"] = 214.7744445800781,
            ["PositionZ"] = -43.99534606933594,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.779861927032471,
            ["SizeZ"] = 7.732231140136719
        },
        [31] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = -7.425781726837158,
            ["PositionY"] = 224.1400756835938,
            ["PositionZ"] = -78.5709228515625,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 21.80191993713379,
            ["SizeZ"] = 26.26293182373047
        },
        [32] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -160.8670043945312,
            ["OrientationZ"] = 0,
            ["PositionX"] = -18.9127254486084,
            ["PositionY"] = 224.1400756835938,
            ["PositionZ"] = -72.98070526123047,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 21.80191993713379,
            ["SizeZ"] = 3.911180019378662
        },
        [33] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -160.8670043945312,
            ["OrientationZ"] = 0,
            ["PositionX"] = -17.00480461120605,
            ["PositionY"] = 228.3309783935547,
            ["PositionZ"] = -67.48122406005859,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 13.42012977600098,
            ["SizeZ"] = 7.732231140136719
        },
        [34] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -160.8670043945312,
            ["OrientationZ"] = 0,
            ["PositionX"] = -17.00480461120605,
            ["PositionY"] = 214.7744445800781,
            ["PositionZ"] = -67.48122406005859,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.779861927032471,
            ["SizeZ"] = 7.732231140136719
        },
        [35] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Limestone",
            ["MaterialVariant"] = "OVERRIDErockySand",
            ["Name"] = "Part",
            ["OrientationX"] = 0.9570000171661377,
            ["OrientationY"] = -43.67399978637695,
            ["OrientationZ"] = -8.822999954223633,
            ["PositionX"] = -53.19733428955078,
            ["PositionY"] = 214.2321472167969,
            ["PositionZ"] = -71.21311950683594,
            ["Shape"] = "Block",
            ["SizeX"] = 103.1508560180664,
            ["SizeY"] = 2.129164934158325,
            ["SizeZ"] = 217.78466796875
        },
        [36] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = -5.749480724334717,
            ["PositionY"] = 224.1400756835938,
            ["PositionZ"] = -37.73796844482422,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 21.80191993713379,
            ["SizeZ"] = 0.8858141899108887
        },
        [37] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = -2.877053737640381,
            ["PositionY"] = 233.781005859375,
            ["PositionZ"] = -38.7344970703125,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 2.519000053405762,
            ["SizeZ"] = 5.199999809265137
        },
        [38] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 4.346000194549561,
            ["OrientationZ"] = 0,
            ["PositionX"] = -20.60603141784668,
            ["PositionY"] = 214.4156799316406,
            ["PositionZ"] = -28.93002700805664,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90655612945557,
            ["SizeZ"] = 53.54562377929688
        },
        [39] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -70.65299987792969,
            ["OrientationZ"] = 0,
            ["PositionX"] = -18.51469802856445,
            ["PositionY"] = 214.4310150146484,
            ["PositionZ"] = -56.68296813964844,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.93899059295654,
            ["SizeZ"] = 9.350288391113281
        },
        [40] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = 7.279674053192139,
            ["PositionY"] = 225.8510131835938,
            ["PositionZ"] = -77.61884307861328,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9049999713897705,
            ["SizeY"] = 3.429465293884277,
            ["SizeZ"] = 7.73199987411499
        },
        [41] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = 11.12203598022461,
            ["PositionY"] = 225.8510131835938,
            ["PositionZ"] = -66.54348754882812,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9049999713897705,
            ["SizeY"] = 3.429465293884277,
            ["SizeZ"] = 7.73199987411499
        },
        [42] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = 7.279674053192139,
            ["PositionY"] = 233.781005859375,
            ["PositionZ"] = -77.61884307861328,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9049999713897705,
            ["SizeY"] = 2.519000053405762,
            ["SizeZ"] = 7.73199987411499
        },
        [43] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = 11.12203598022461,
            ["PositionY"] = 234.3902740478516,
            ["PositionZ"] = -66.54348754882812,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9049999713897705,
            ["SizeY"] = 1.300471425056458,
            ["SizeZ"] = 7.73199987411499
        },
        [44] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = 5.635144710540771,
            ["PositionY"] = 229.5935974121094,
            ["PositionZ"] = -82.35908508300781,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90774059295654,
            ["SizeZ"] = 2.302846193313599
        },
        [45] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = 9.200342178344727,
            ["PositionY"] = 229.5935974121094,
            ["PositionZ"] = -72.08263397216797,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90774059295654,
            ["SizeZ"] = 4.003637790679932
        },
        [46] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = 15.38218116760254,
            ["PositionY"] = 229.5935974121094,
            ["PositionZ"] = -54.26387405395508,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90774059295654,
            ["SizeZ"] = 18.26777839660645
        },
        [47] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 10.04892158508301,
            ["PositionY"] = 229.590576171875,
            ["PositionZ"] = -43.2188835144043,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 18.21519088745117
        },
        [48] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -160.8670043945312,
            ["OrientationZ"] = 0,
            ["PositionX"] = -0.4785599708557129,
            ["PositionY"] = 234.4895782470703,
            ["PositionZ"] = -60.42120361328125,
            ["Shape"] = "Block",
            ["SizeX"] = 25.86592483520508,
            ["SizeY"] = 0.6933639049530029,
            ["SizeZ"] = 39.47781753540039
        },
        [49] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = 0,
            ["OrientationY"] = -160.8670043945312,
            ["OrientationZ"] = 0,
            ["PositionX"] = -4.633298873901367,
            ["PositionY"] = 228.1263122558594,
            ["PositionZ"] = -70.91921997070312,
            ["Shape"] = "Block",
            ["SizeX"] = 0.1494747400283813,
            ["SizeY"] = 8.382113456726074,
            ["SizeZ"] = 5.200212001800537
        },
        [50] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = 1.524088501930237,
            ["PositionY"] = 218.3671875,
            ["PositionZ"] = -74.92662048339844,
            ["Shape"] = "Block",
            ["SizeX"] = 12.46604824066162,
            ["SizeY"] = 10.25615978240967,
            ["SizeZ"] = 11.93844509124756
        },
        [51] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = 0,
            ["OrientationY"] = 109.1330032348633,
            ["OrientationZ"] = 0,
            ["PositionX"] = 1.830728888511658,
            ["PositionY"] = 217.4301910400391,
            ["PositionZ"] = -68.64102172851562,
            ["Shape"] = "Block",
            ["SizeX"] = 0.1494747400283813,
            ["SizeY"] = 8.382113456726074,
            ["SizeZ"] = 5.200212001800537
        },
        [52] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = -11.16236972808838,
            ["PositionY"] = 229.0397186279297,
            ["PositionZ"] = -70.52532196044922,
            ["Shape"] = "Block",
            ["SizeX"] = 12.46604824066162,
            ["SizeY"] = 10.71310806274414,
            ["SizeZ"] = 11.93844509124756
        },
        [53] =  {
            ["ColorB"] = 143.0000066757202,
            ["ColorG"] = 175.0000047683716,
            ["ColorR"] = 209.0000027418137,
            ["Material"] = "Metal",
            ["MaterialVariant"] = "corrugatedMetal2",
            ["Name"] = "Part",
            ["OrientationX"] = 4.179999828338623,
            ["OrientationY"] = -15.34099960327148,
            ["OrientationZ"] = -1.503000020980835,
            ["PositionX"] = -42.03564453125,
            ["PositionY"] = 218.0248565673828,
            ["PositionZ"] = -67.57515716552734,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 16.55452728271484,
            ["SizeZ"] = 94.98723602294922
        },
        [54] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 6.929999828338623,
            ["OrientationZ"] = 0,
            ["PositionX"] = -8.08107852935791,
            ["PositionY"] = 211.7061309814453,
            ["PositionZ"] = 8.500419616699219,
            ["Shape"] = "Block",
            ["SizeX"] = 87.10903167724609,
            ["SizeY"] = 5.487453460693359,
            ["SizeZ"] = 24.49211502075195
        },
        [55] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Limestone",
            ["MaterialVariant"] = "OVERRIDErockySand",
            ["Name"] = "Part",
            ["OrientationX"] = -7.515999794006348,
            ["OrientationY"] = 4.346000194549561,
            ["OrientationZ"] = 0,
            ["PositionX"] = -43.71004867553711,
            ["PositionY"] = 210.8382263183594,
            ["PositionZ"] = 7.592837333679199,
            ["Shape"] = "Block",
            ["SizeX"] = 50.70543670654297,
            ["SizeY"] = 5.072486877441406,
            ["SizeZ"] = 82.47123718261719
        },
        [56] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 6.929999828338623,
            ["OrientationZ"] = 0,
            ["PositionX"] = -8.056144714355469,
            ["PositionY"] = 219.7732086181641,
            ["PositionZ"] = 8.490736961364746,
            ["Shape"] = "Block",
            ["SizeX"] = 86.75813293457031,
            ["SizeY"] = 10.6466760635376,
            ["SizeZ"] = 24.27336883544922
        },
        [57] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -173.0700073242188,
            ["OrientationZ"] = 0,
            ["PositionX"] = -7.997146606445312,
            ["PositionY"] = 224.7821502685547,
            ["PositionZ"] = 8.331992149353027,
            ["Shape"] = "Block",
            ["SizeX"] = 84.61124420166016,
            ["SizeY"] = 0.6933639049530029,
            ["SizeZ"] = 22.10622024536133
        },
        [58] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 96.93000030517578,
            ["OrientationZ"] = 0,
            ["PositionX"] = 24.68579483032227,
            ["PositionY"] = 226.9888153076172,
            ["PositionZ"] = -7.255709648132324,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.784562110900879,
            ["SizeZ"] = 18.01982879638672
        },
        [59] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 96.93000030517578,
            ["OrientationZ"] = 0,
            ["PositionX"] = 0.5826096534729004,
            ["PositionY"] = 226.3184509277344,
            ["PositionZ"] = -4.325988292694092,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 2.443848371505737,
            ["SizeZ"] = 23.38102149963379
        },
        [60] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 96.93000030517578,
            ["OrientationZ"] = 0,
            ["PositionX"] = 19.39425849914551,
            ["PositionY"] = 228.4030151367188,
            ["PositionZ"] = 16.91466522216797,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 6.612956523895264,
            ["SizeZ"] = 34.35842132568359
        },
        [61] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 96.93000030517578,
            ["OrientationZ"] = 0,
            ["PositionX"] = -19.01605033874512,
            ["PositionY"] = 226.9035949707031,
            ["PositionZ"] = 21.58340644836426,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.6141197681427,
            ["SizeZ"] = 31.47623443603516
        },
        [62] =  {
            ["ColorB"] = 143.0000066757202,
            ["ColorG"] = 175.0000047683716,
            ["ColorR"] = 209.0000027418137,
            ["Material"] = "Metal",
            ["MaterialVariant"] = "corrugatedMetal2",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 96.93000030517578,
            ["OrientationZ"] = 0,
            ["PositionX"] = -13.98891067504883,
            ["PositionY"] = 222.9945220947266,
            ["PositionZ"] = 21.89362144470215,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 32.92632675170898,
            ["SizeZ"] = 140.3773498535156
        },
        [63] =  {
            ["ColorB"] = 143.0000066757202,
            ["ColorG"] = 175.0000047683716,
            ["ColorR"] = 209.0000027418137,
            ["Material"] = "Metal",
            ["MaterialVariant"] = "corrugatedMetal2",
            ["Name"] = "Part",
            ["OrientationX"] = -9.317000389099121,
            ["OrientationY"] = -11.25300025939941,
            ["OrientationZ"] = -1.235999941825867,
            ["PositionX"] = -59.78043746948242,
            ["PositionY"] = 219.7233276367188,
            ["PositionZ"] = 2.405976533889771,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 27.10309600830078,
            ["SizeZ"] = 55.48017120361328
        },
        [64] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = 0,
            ["OrientationY"] = -164.7980041503906,
            ["OrientationZ"] = 0,
            ["PositionX"] = -31.16823768615723,
            ["PositionY"] = 227.6288299560547,
            ["PositionZ"] = 2.691190719604492,
            ["Shape"] = "Block",
            ["SizeX"] = 6,
            ["SizeY"] = 5,
            ["SizeZ"] = 5
        },
        [65] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = -0.9959999918937683,
            ["OrientationY"] = 86.77300262451172,
            ["OrientationZ"] = -7.449999809265137,
            ["PositionX"] = -56.82392883300781,
            ["PositionY"] = 217.4939422607422,
            ["PositionZ"] = 20.56868743896484,
            ["Shape"] = "Block",
            ["SizeX"] = 10.76269912719727,
            ["SizeY"] = 5,
            ["SizeZ"] = 10.95964622497559
        },
        [66] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = 0.7519999742507935,
            ["OrientationY"] = 100.0540008544922,
            ["OrientationZ"] = -7.478000164031982,
            ["PositionX"] = -55.3880500793457,
            ["PositionY"] = 221.9795989990234,
            ["PositionZ"] = 23.03901672363281,
            ["Shape"] = "Block",
            ["SizeX"] = 6.336884021759033,
            ["SizeY"] = 3.221365451812744,
            ["SizeZ"] = 9.820550918579102
        },
        [67] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = 0.746999979019165,
            ["OrientationY"] = 94.26100158691406,
            ["OrientationZ"] = -37.90599822998047,
            ["PositionX"] = -55.68493270874023,
            ["PositionY"] = 219.4015350341797,
            ["PositionZ"] = 14.4410457611084,
            ["Shape"] = "Block",
            ["SizeX"] = 20.32162284851074,
            ["SizeY"] = 0.2471091747283936,
            ["SizeZ"] = 6.056771278381348
        },
        [68] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -167.6269989013672,
            ["OrientationZ"] = 0,
            ["PositionX"] = 41.12372970581055,
            ["PositionY"] = 229.9211120605469,
            ["PositionZ"] = -54.92082595825195,
            ["Shape"] = "Block",
            ["SizeX"] = 19.72238349914551,
            ["SizeY"] = 0.6933639049530029,
            ["SizeZ"] = 38.75864410400391
        },
        [69] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = 10.96480274200439,
            ["PositionY"] = 239.8658447265625,
            ["PositionZ"] = -49.38501739501953,
            ["Shape"] = "Block",
            ["SizeX"] = 12.46604824066162,
            ["SizeY"] = 10.05916690826416,
            ["SizeZ"] = 11.93844509124756
        },
        [70] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = -5.114999771118164,
            ["OrientationY"] = 165.1640014648438,
            ["OrientationZ"] = 7.26200008392334,
            ["PositionX"] = -42.90321731567383,
            ["PositionY"] = 214.2749328613281,
            ["PositionZ"] = -47.01162719726562,
            ["Shape"] = "Block",
            ["SizeX"] = 7.839115142822266,
            ["SizeY"] = 5.709612846374512,
            ["SizeZ"] = 5
        },
        [71] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = 0,
            ["OrientationY"] = 96.20200347900391,
            ["OrientationZ"] = 0,
            ["PositionX"] = 22.28304672241211,
            ["PositionY"] = 211.46240234375,
            ["PositionZ"] = -10.53410243988037,
            ["Shape"] = "Block",
            ["SizeX"] = 6,
            ["SizeY"] = 5,
            ["SizeZ"] = 5
        },
        [72] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -160.8670043945312,
            ["OrientationZ"] = 0,
            ["PositionX"] = 19.72714614868164,
            ["PositionY"] = 214.9905395507812,
            ["PositionZ"] = -41.76785659790039,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.502847671508789,
            ["SizeZ"] = 8.32816219329834
        },
        [73] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 55.01099014282227,
            ["PositionY"] = 223.4823150634766,
            ["PositionZ"] = -11.07222938537598,
            ["Shape"] = "Block",
            ["SizeX"] = 29.58646011352539,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 40.02046203613281
        },
        [74] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 43.75430297851562,
            ["PositionY"] = 214.3552856445312,
            ["PositionZ"] = -55.39603042602539,
            ["Shape"] = "Block",
            ["SizeX"] = 26.83345413208008,
            ["SizeY"] = 10.78576278686523,
            ["SizeZ"] = 40.4088134765625
        },
        [75] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -77.62699890136719,
            ["OrientationZ"] = 0,
            ["PositionX"] = 51.44671630859375,
            ["PositionY"] = 219.7254180908203,
            ["PositionZ"] = -66.06069183349609,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [76] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -77.62699890136719,
            ["OrientationZ"] = 0,
            ["PositionX"] = 51.73812103271484,
            ["PositionY"] = 221.0424194335938,
            ["PositionZ"] = -64.73233032226562,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [77] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -77.62699890136719,
            ["OrientationZ"] = 0,
            ["PositionX"] = 52.02952575683594,
            ["PositionY"] = 222.3594207763672,
            ["PositionZ"] = -63.40394973754883,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [78] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -77.62699890136719,
            ["OrientationZ"] = 0,
            ["PositionX"] = 52.32093048095703,
            ["PositionY"] = 223.6764221191406,
            ["PositionZ"] = -62.07558441162109,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [79] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -77.62699890136719,
            ["OrientationZ"] = 0,
            ["PositionX"] = 52.61233520507812,
            ["PositionY"] = 222.9271545410156,
            ["PositionZ"] = -60.74721527099609,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 6.766085147857666,
            ["SizeZ"] = 5.225443363189697
        },
        [80] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -77.62699890136719,
            ["OrientationZ"] = 0,
            ["PositionX"] = 52.90373992919922,
            ["PositionY"] = 226.3104248046875,
            ["PositionZ"] = -59.41883850097656,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [81] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -77.62699890136719,
            ["OrientationZ"] = 0,
            ["PositionX"] = 53.19515228271484,
            ["PositionY"] = 227.6274261474609,
            ["PositionZ"] = -58.09046936035156,
            ["Shape"] = "Block",
            ["SizeX"] = 1.359957933425903,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [82] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -77.62699890136719,
            ["OrientationZ"] = 0,
            ["PositionX"] = 54.10166549682617,
            ["PositionY"] = 228.9444122314453,
            ["PositionZ"] = -53.95813369750977,
            ["Shape"] = "Block",
            ["SizeX"] = 7.101243019104004,
            ["SizeY"] = 2.633533477783203,
            ["SizeZ"] = 5.225443363189697
        },
        [83] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -77.62699890136719,
            ["OrientationZ"] = 0,
            ["PositionX"] = 54.89958572387695,
            ["PositionY"] = 225.1986236572266,
            ["PositionZ"] = -50.17753601074219,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 5.288594245910645
        },
        [84] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = 0,
            ["OrientationY"] = -164.10400390625,
            ["OrientationZ"] = 0,
            ["PositionX"] = 31.63290405273438,
            ["PositionY"] = 227.6288299560547,
            ["PositionZ"] = 11.5150318145752,
            ["Shape"] = "Block",
            ["SizeX"] = 6,
            ["SizeY"] = 5,
            ["SizeZ"] = 5
        },
        [85] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 56.00589370727539,
            ["PositionY"] = 225.1986236572266,
            ["PositionZ"] = -59.54964447021484,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 18.75617790222168
        },
        [86] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 54.07031631469727,
            ["PositionY"] = 225.1986389160156,
            ["PositionZ"] = -39.80038833618164,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 5.185328006744385
        },
        [87] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Limestone",
            ["MaterialVariant"] = "OVERRIDErockySand",
            ["Name"] = "Part",
            ["OrientationX"] = 5.921999931335449,
            ["OrientationY"] = -69.55500030517578,
            ["OrientationZ"] = -1.883999943733215,
            ["PositionX"] = 56.56143188476562,
            ["PositionY"] = 214.3963928222656,
            ["PositionZ"] = -86.81772613525391,
            ["Shape"] = "Block",
            ["SizeX"] = 176.2758636474609,
            ["SizeY"] = 2.129164934158325,
            ["SizeZ"] = 97.86556243896484
        },
        [88] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -78.45999908447266,
            ["OrientationZ"] = 0,
            ["PositionX"] = 48.33532333374023,
            ["PositionY"] = 215.6660919189453,
            ["PositionZ"] = -78.10774993896484,
            ["Shape"] = "Block",
            ["SizeX"] = 2.336860656738281,
            ["SizeY"] = 5.387089729309082,
            ["SizeZ"] = 7.088982582092285
        },
        [89] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -72.90200042724609,
            ["OrientationZ"] = 0,
            ["PositionX"] = 47.46557998657227,
            ["PositionY"] = 215.2134704589844,
            ["PositionZ"] = -79.04742431640625,
            ["Shape"] = "Block",
            ["SizeX"] = 4.58708667755127,
            ["SizeY"] = 3.107482671737671,
            ["SizeZ"] = 6.859596252441406
        },
        [90] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 99.10199737548828,
            ["OrientationZ"] = 0,
            ["PositionX"] = 47.24290084838867,
            ["PositionY"] = 213.90771484375,
            ["PositionZ"] = -81.50961303710938,
            ["Shape"] = "Block",
            ["SizeX"] = 4.58708667755127,
            ["SizeY"] = 3.107482671737671,
            ["SizeZ"] = 6.859596252441406
        },
        [91] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 49.09943389892578,
            ["PositionY"] = 225.1986236572266,
            ["PositionZ"] = -62.47908782958984,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 12.18331241607666
        },
        [92] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 31.21617126464844,
            ["PositionY"] = 225.1986236572266,
            ["PositionZ"] = -52.66246032714844,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 40.07258605957031
        },
        [93] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 46.35661697387695,
            ["PositionY"] = 225.1986389160156,
            ["PositionZ"] = -74.96327972412109,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 2.986283779144287
        },
        [94] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 47.23313522338867,
            ["PositionY"] = 229.3908996582031,
            ["PositionZ"] = -70.96767425537109,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 2.521858930587769,
            ["SizeZ"] = 5.200212001800537
        },
        [95] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 52.95777893066406,
            ["PositionY"] = 229.3908996582031,
            ["PositionZ"] = -44.87189102172852,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 2.521858930587769,
            ["SizeZ"] = 5.200212001800537
        },
        [96] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 102.3730010986328,
            ["OrientationZ"] = 0,
            ["PositionX"] = 36.56942749023438,
            ["PositionY"] = 225.1986236572266,
            ["PositionZ"] = -73.88984680175781,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 20.44029235839844
        },
        [97] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 102.3730010986328,
            ["OrientationZ"] = 0,
            ["PositionX"] = 50.1013298034668,
            ["PositionY"] = 225.1986236572266,
            ["PositionZ"] = -36.73383331298828,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 9.957311630249023
        },
        [98] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 52.12567901611328,
            ["PositionY"] = 225.1986236572266,
            ["PositionZ"] = -48.68396377563477,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 2.621963024139404
        },
        [99] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -167.6269989013672,
            ["OrientationZ"] = 0,
            ["PositionX"] = 56.30773162841797,
            ["PositionY"] = 221.4995880126953,
            ["PositionZ"] = -58.17477798461914,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.502847671508789,
            ["SizeZ"] = 40.12166595458984
        },
        [100] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 102.3730010986328,
            ["OrientationZ"] = 0,
            ["PositionX"] = 41.47318649291992,
            ["PositionY"] = 221.2831268310547,
            ["PositionZ"] = -34.84078216552734,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.779861927032471,
            ["SizeZ"] = 7.732231140136719
        },
        [101] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 102.3730010986328,
            ["OrientationZ"] = 0,
            ["PositionX"] = 41.47318649291992,
            ["PositionY"] = 229.38916015625,
            ["PositionZ"] = -34.84078216552734,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9049999713897705,
            ["SizeY"] = 2.519130229949951,
            ["SizeZ"] = 7.73199987411499
        },
        [102] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 102.3730010986328,
            ["OrientationZ"] = 0,
            ["PositionX"] = 36.33919525146484,
            ["PositionY"] = 225.1986236572266,
            ["PositionZ"] = -33.71482467651367,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 2.78625226020813
        },
        [103] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -160.8670043945312,
            ["OrientationZ"] = 0,
            ["PositionX"] = 11.14878749847412,
            ["PositionY"] = 236.7988891601562,
            ["PositionZ"] = -66.46623992919922,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.502847671508789,
            ["SizeZ"] = 20.23240852355957
        },
        [104] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 37.7137336730957,
            ["PositionY"] = 234.3823547363281,
            ["PositionZ"] = -22.9980583190918,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 9.289365768432617
        },
        [105] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 42.33148193359375,
            ["PositionY"] = 238.5728912353516,
            ["PositionZ"] = -1.946748495101929,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9049999713897705,
            ["SizeY"] = 2.519130229949951,
            ["SizeZ"] = 7.73199987411499
        },
        [106] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 42.33148193359375,
            ["PositionY"] = 230.4668579101562,
            ["PositionZ"] = -1.946748495101929,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.779861927032471,
            ["SizeZ"] = 7.732231140136719
        },
        [107] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 44.22064590454102,
            ["PositionY"] = 234.3823547363281,
            ["PositionZ"] = 6.663677215576172,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 9.921018600463867
        },
        [108] =  {
            ["ColorB"] = 107.0000012218952,
            ["ColorG"] = 78.00000295042992,
            ["ColorR"] = 47.0000009983778,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = 68.73400115966797,
            ["OrientationZ"] = 90,
            ["PositionX"] = 48.30237579345703,
            ["PositionY"] = 219.0272827148438,
            ["PositionZ"] = -115.3237686157227,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 4.805148601531982,
            ["SizeY"] = 3.496524810791016,
            ["SizeZ"] = 3.496524810791016
        },
        [109] =  {
            ["ColorB"] = 107.0000012218952,
            ["ColorG"] = 78.00000295042992,
            ["ColorR"] = 47.0000009983778,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = 68.73400115966797,
            ["OrientationZ"] = 90,
            ["PositionX"] = 11.00612449645996,
            ["PositionY"] = 211.3649749755859,
            ["PositionZ"] = -8.057415008544922,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 4.805148601531982,
            ["SizeY"] = 3.496524810791016,
            ["SizeZ"] = 3.496524810791016
        },
        [110] =  {
            ["ColorB"] = 107.0000012218952,
            ["ColorG"] = 78.00000295042992,
            ["ColorR"] = 47.0000009983778,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = 68.73400115966797,
            ["OrientationZ"] = 90,
            ["PositionX"] = -23.46069717407227,
            ["PositionY"] = 211.3649749755859,
            ["PositionZ"] = -34.63055419921875,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 4.805148601531982,
            ["SizeY"] = 3.496524810791016,
            ["SizeZ"] = 3.496524810791016
        },
        [111] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 102.3730010986328,
            ["OrientationZ"] = 0,
            ["PositionX"] = 50.81274795532227,
            ["PositionY"] = 234.3823547363281,
            ["PositionZ"] = -30.17067718505859,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 29.5430908203125
        },
        [112] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 102.3730010986328,
            ["OrientationZ"] = 0,
            ["PositionX"] = 59.1954231262207,
            ["PositionY"] = 234.3823547363281,
            ["PositionZ"] = 8.017875671386719,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 29.56501007080078
        },
        [113] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 69.02610778808594,
            ["PositionY"] = 234.3823547363281,
            ["PositionZ"] = -14.14029598236084,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 39.92708206176758
        },
        [114] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -167.6269989013672,
            ["OrientationZ"] = 0,
            ["PositionX"] = 55.06635665893555,
            ["PositionY"] = 228.6249694824219,
            ["PositionZ"] = -11.01637649536133,
            ["Shape"] = "Block",
            ["SizeX"] = 27.88350486755371,
            ["SizeY"] = 0.6933639049530029,
            ["SizeZ"] = 38.59554672241211
        },
        [115] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = -167.6269989013672,
            ["OrientationZ"] = 0,
            ["PositionX"] = 55.06635665893555,
            ["PositionY"] = 239.21142578125,
            ["PositionZ"] = -11.01637649536133,
            ["Shape"] = "Block",
            ["SizeX"] = 27.88350486755371,
            ["SizeY"] = 0.6933639049530029,
            ["SizeZ"] = 38.59554672241211
        },
        [116] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 41.82206344604492,
            ["PositionY"] = 242.0895538330078,
            ["PositionZ"] = -4.221355438232422,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9026523232460022,
            ["SizeY"] = 4.513467311859131,
            ["SizeZ"] = 32.24447631835938
        },
        [117] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -77.62699890136719,
            ["OrientationZ"] = 0,
            ["PositionX"] = 49.89490509033203,
            ["PositionY"] = 241.5368041992188,
            ["PositionZ"] = -29.96236610412598,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9026523232460022,
            ["SizeY"] = 3.40800666809082,
            ["SizeZ"] = 21.61593246459961
        },
        [118] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -31.6299991607666,
            ["OrientationZ"] = 0,
            ["PositionX"] = 86.83145141601562,
            ["PositionY"] = 229.1186370849609,
            ["PositionZ"] = 8.52646541595459,
            ["Shape"] = "Block",
            ["SizeX"] = 50.20524597167969,
            ["SizeY"] = 46.10110473632812,
            ["SizeZ"] = 121.0464935302734
        },
        [119] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 15.39299964904785,
            ["OrientationZ"] = 0,
            ["PositionX"] = 86.23256683349609,
            ["PositionY"] = 224.4451141357422,
            ["PositionZ"] = -92.64903259277344,
            ["Shape"] = "Block",
            ["SizeX"] = 50.20524597167969,
            ["SizeY"] = 36.75405502319336,
            ["SizeZ"] = 100.2314834594727
        },
        [120] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -59.52500152587891,
            ["OrientationZ"] = 0,
            ["PositionX"] = -27.63572883605957,
            ["PositionY"] = 223.320068359375,
            ["PositionZ"] = -117.7615127563477,
            ["Shape"] = "Block",
            ["SizeX"] = 50.20524597167969,
            ["SizeY"] = 34.50398254394531,
            ["SizeZ"] = 71.42380523681641
        },
        [121] =  {
            ["ColorB"] = 143.0000066757202,
            ["ColorG"] = 175.0000047683716,
            ["ColorR"] = 209.0000027418137,
            ["Material"] = "Metal",
            ["MaterialVariant"] = "corrugatedMetal2",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 96.93000030517578,
            ["OrientationZ"] = 0,
            ["PositionX"] = 32.41883850097656,
            ["PositionY"] = 223.3309936523438,
            ["PositionZ"] = -128.5337219238281,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 20.89273834228516,
            ["SizeZ"] = 62.96477508544922
        },
        [122] =  {
            ["ColorB"] = 143.0000066757202,
            ["ColorG"] = 175.0000047683716,
            ["ColorR"] = 209.0000027418137,
            ["Material"] = "Metal",
            ["MaterialVariant"] = "corrugatedMetal2",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 27.93499946594238,
            ["OrientationZ"] = 0,
            ["PositionX"] = 62.79640197753906,
            ["PositionY"] = 230.1106262207031,
            ["PositionZ"] = -132.0256652832031,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 34.51377868652344,
            ["SizeZ"] = 190.0381164550781
        },
        [123] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -167.6269989013672,
            ["OrientationZ"] = 0,
            ["PositionX"] = 33.33539962768555,
            ["PositionY"] = 232.4004974365234,
            ["PositionZ"] = -42.91915512084961,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.502847671508789,
            ["SizeZ"] = 14.76276588439941
        },
        [124] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -167.6269989013672,
            ["OrientationZ"] = 0,
            ["PositionX"] = 56.77055358886719,
            ["PositionY"] = 232.4004974365234,
            ["PositionZ"] = -56.03733444213867,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.502847671508789,
            ["SizeZ"] = 11.59461212158203
        },
        [125] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -77.62699890136719,
            ["OrientationZ"] = 0,
            ["PositionX"] = 57.50938415527344,
            ["PositionY"] = 221.4995880126953,
            ["PositionZ"] = -38.36882781982422,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.502847671508789,
            ["SizeZ"] = 5.267265319824219
        },
        [126] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = -0.1400000005960464,
            ["OrientationY"] = -69.35500335693359,
            ["OrientationZ"] = -1.873999953269958,
            ["PositionX"] = 54.20474624633789,
            ["PositionY"] = 216.8276214599609,
            ["PositionZ"] = -72.64748382568359,
            ["Shape"] = "Block",
            ["SizeX"] = 6,
            ["SizeY"] = 5,
            ["SizeZ"] = 5
        },
        [127] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = 1.577000021934509,
            ["OrientationY"] = -85.47100067138672,
            ["OrientationZ"] = -3.440999984741211,
            ["PositionX"] = 18.76811027526855,
            ["PositionY"] = 216.5000762939453,
            ["PositionZ"] = -112.750373840332,
            ["Shape"] = "Block",
            ["SizeX"] = 6,
            ["SizeY"] = 5,
            ["SizeZ"] = 5
        },
        [128] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = 0.8360000252723694,
            ["OrientationY"] = -97.32099914550781,
            ["OrientationZ"] = -3.690999984741211,
            ["PositionX"] = 18.75957679748535,
            ["PositionY"] = 221.4888153076172,
            ["PositionZ"] = -112.3963623046875,
            ["Shape"] = "Block",
            ["SizeX"] = 6,
            ["SizeY"] = 5,
            ["SizeZ"] = 5
        },
        [129] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = 2.190999984741211,
            ["OrientationY"] = -76.62400054931641,
            ["OrientationZ"] = -2.601999998092651,
            ["PositionX"] = 40.5553092956543,
            ["PositionY"] = 216.0794830322266,
            ["PositionZ"] = -78.90669250488281,
            ["Shape"] = "Block",
            ["SizeX"] = 6,
            ["SizeY"] = 5,
            ["SizeZ"] = 5
        },
        [130] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = 0,
            ["OrientationY"] = -85.65399932861328,
            ["OrientationZ"] = 0.671999990940094,
            ["PositionX"] = -22.7580680847168,
            ["PositionY"] = 213.2103118896484,
            ["PositionZ"] = -12.2471170425415,
            ["Shape"] = "Block",
            ["SizeX"] = 6,
            ["SizeY"] = 5,
            ["SizeZ"] = 5
        },
        [131] =  {
            ["ColorB"] = 107.0000012218952,
            ["ColorG"] = 78.00000295042992,
            ["ColorR"] = 47.0000009983778,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = 102.3730010986328,
            ["OrientationZ"] = 90,
            ["PositionX"] = 66.830322265625,
            ["PositionY"] = 231.3742218017578,
            ["PositionZ"] = -11.55695819854736,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 4.805148601531982,
            ["SizeY"] = 3.496524810791016,
            ["SizeZ"] = 3.496524810791016
        },
        [132] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 19.13299942016602,
            ["OrientationZ"] = 0,
            ["PositionX"] = 20.96322631835938,
            ["PositionY"] = 217.0152282714844,
            ["PositionZ"] = -48.50362777709961,
            ["Shape"] = "Block",
            ["SizeX"] = 5.8646559715271,
            ["SizeY"] = 12.66431999206543,
            ["SizeZ"] = 3.337928771972656
        },
        [133] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 24.27278327941895,
            ["PositionY"] = 217.6234893798828,
            ["PositionZ"] = -69.84967041015625,
            ["Shape"] = "Block",
            ["SizeX"] = 5.293832302093506,
            ["SizeY"] = 12.66431999206543,
            ["SizeZ"] = 3.337928771972656
        },
        [134] =  {
            ["ColorB"] = 122.0000003278255,
            ["ColorG"] = 106.0000012814999,
            ["ColorR"] = 68.00000354647636,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = 68.73400115966797,
            ["OrientationZ"] = 90,
            ["PositionX"] = 19.91512870788574,
            ["PositionY"] = 215.1166229248047,
            ["PositionZ"] = -69.53867340087891,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 4.805148601531982,
            ["SizeY"] = 3.496524810791016,
            ["SizeZ"] = 3.496524810791016
        },
        [135] =  {
            ["ColorB"] = 122.0000003278255,
            ["ColorG"] = 106.0000012814999,
            ["ColorR"] = 68.00000354647636,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = 68.73400115966797,
            ["OrientationZ"] = 90,
            ["PositionX"] = 0.4281149506568909,
            ["PositionY"] = 211.3649749755859,
            ["PositionZ"] = -27.57894897460938,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 4.805148601531982,
            ["SizeY"] = 3.496524810791016,
            ["SizeZ"] = 3.496524810791016
        },
        [136] =  {
            ["ColorB"] = 107.0000012218952,
            ["ColorG"] = 78.00000295042992,
            ["ColorR"] = 47.0000009983778,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = 68.73400115966797,
            ["OrientationZ"] = 90,
            ["PositionX"] = 19.97779273986816,
            ["PositionY"] = 219.9217681884766,
            ["PositionZ"] = -69.55712890625,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 4.805148601531982,
            ["SizeY"] = 3.496524810791016,
            ["SizeZ"] = 3.496524810791016
        },
        [137] =  {
            ["ColorB"] = 122.0000003278255,
            ["ColorG"] = 106.0000012814999,
            ["ColorR"] = 68.00000354647636,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = -160.8670043945312,
            ["OrientationZ"] = 90,
            ["PositionX"] = -8.157776832580566,
            ["PositionY"] = 239.5596160888672,
            ["PositionZ"] = -58.84071731567383,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 9.446718215942383,
            ["SizeY"] = 6.874017715454102,
            ["SizeZ"] = 6.874017715454102
        },
        [138] =  {
            ["ColorB"] = 122.0000003278255,
            ["ColorG"] = 106.0000012814999,
            ["ColorR"] = 68.00000354647636,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = -160.8670043945312,
            ["OrientationZ"] = 90,
            ["PositionX"] = -3.51060676574707,
            ["PositionY"] = 239.5596160888672,
            ["PositionZ"] = -45.4769287109375,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 9.446718215942383,
            ["SizeY"] = 6.874017715454102,
            ["SizeZ"] = 6.874017715454102
        },
        [139] =  {
            ["ColorB"] = 122.0000003278255,
            ["ColorG"] = 106.0000012814999,
            ["ColorR"] = 68.00000354647636,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = -173.0700073242188,
            ["OrientationZ"] = 90,
            ["PositionX"] = -46.87619400024414,
            ["PositionY"] = 229.8521881103516,
            ["PositionZ"] = 5.947364807128906,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 9.446718215942383,
            ["SizeY"] = 6.874017715454102,
            ["SizeZ"] = 6.874017715454102
        },
        [140] =  {
            ["ColorB"] = 122.0000003278255,
            ["ColorG"] = 106.0000012814999,
            ["ColorR"] = 68.00000354647636,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = -173.0700073242188,
            ["OrientationZ"] = 90,
            ["PositionX"] = -38.47009658813477,
            ["PositionY"] = 229.8521881103516,
            ["PositionZ"] = 4.720568180084229,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 9.446718215942383,
            ["SizeY"] = 6.874017715454102,
            ["SizeZ"] = 6.874017715454102
        },
        [141] =  {
            ["ColorB"] = 122.0000003278255,
            ["ColorG"] = 106.0000012814999,
            ["ColorR"] = 68.00000354647636,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = -167.6269989013672,
            ["OrientationZ"] = 90,
            ["PositionX"] = 52.16397476196289,
            ["PositionY"] = 244.2814636230469,
            ["PositionZ"] = 0.8278396129608154,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 9.446718215942383,
            ["SizeY"] = 6.874017715454102,
            ["SizeZ"] = 6.874017715454102
        },
        [142] =  {
            ["ColorB"] = 122.0000003278255,
            ["ColorG"] = 106.0000012814999,
            ["ColorR"] = 68.00000354647636,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = -167.6269989013672,
            ["OrientationZ"] = 90,
            ["PositionX"] = 49.12220001220703,
            ["PositionY"] = 244.2814636230469,
            ["PositionZ"] = -12.99008846282959,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 9.446718215942383,
            ["SizeY"] = 6.874017715454102,
            ["SizeZ"] = 6.874017715454102
        },
        [143] =  {
            ["ColorB"] = 122.0000003278255,
            ["ColorG"] = 106.0000012814999,
            ["ColorR"] = 68.00000354647636,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = -121.629997253418,
            ["OrientationZ"] = 90,
            ["PositionX"] = 100.2026062011719,
            ["PositionY"] = 256.8925476074219,
            ["PositionZ"] = -26.6867618560791,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 9.446718215942383,
            ["SizeY"] = 6.874017715454102,
            ["SizeZ"] = 6.874017715454102
        },
        [144] =  {
            ["ColorB"] = 122.0000003278255,
            ["ColorG"] = 106.0000012814999,
            ["ColorR"] = 68.00000354647636,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = -149.5249938964844,
            ["OrientationZ"] = 90,
            ["PositionX"] = -46.75675201416016,
            ["PositionY"] = 245.29541015625,
            ["PositionZ"] = -96.39858245849609,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 9.446718215942383,
            ["SizeY"] = 6.874017715454102,
            ["SizeZ"] = 6.874017715454102
        },
        [145] =  {
            ["ColorB"] = 107.0000012218952,
            ["ColorG"] = 78.00000295042992,
            ["ColorR"] = 47.0000009983778,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = 68.73400115966797,
            ["OrientationZ"] = 90,
            ["PositionX"] = 51.60829925537109,
            ["PositionY"] = 219.3442840576172,
            ["PositionZ"] = -116.620361328125,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 4.805148601531982,
            ["SizeY"] = 3.496524810791016,
            ["SizeZ"] = 3.496524810791016
        },
        [146] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 40.93184661865234,
            ["PositionY"] = 234.3823547363281,
            ["PositionZ"] = -8.328282356262207,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 10.90091991424561,
            ["SizeZ"] = 5.340650081634521
        },
        [147] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 39.53469085693359,
            ["PositionY"] = 238.5728912353516,
            ["PositionZ"] = -14.6959171295166,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9049999713897705,
            ["SizeY"] = 2.519130229949951,
            ["SizeZ"] = 7.73199987411499
        },
        [148] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 12.3730001449585,
            ["OrientationZ"] = 0,
            ["PositionX"] = 39.53469085693359,
            ["PositionY"] = 230.4668579101562,
            ["PositionZ"] = -14.6959171295166,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.779861927032471,
            ["SizeZ"] = 7.732231140136719
        },
        [149] =  {
            ["ColorB"] = 159.0000057220459,
            ["ColorG"] = 194.0000036358833,
            ["ColorR"] = 232.0000013709068,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Door",
            ["OrientationX"] = 0.7039999961853027,
            ["OrientationY"] = 7.89300012588501,
            ["OrientationZ"] = 10.93200016021729,
            ["PositionX"] = 19.50728225708008,
            ["PositionY"] = 229.2673797607422,
            ["PositionZ"] = -67.98839569091797,
            ["Shape"] = "Block",
            ["SizeX"] = 17.95366287231445,
            ["SizeY"] = 0.2471091747283936,
            ["SizeZ"] = 6.056771278381348
        },
        [150] =  {
            ["ColorB"] = 4.000000236555934,
            ["ColorG"] = 0,
            ["ColorR"] = 255,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "",
            ["Name"] = "Spawn1",
            ["OrientationX"] = 0,
            ["OrientationY"] = 0,
            ["OrientationZ"] = 90,
            ["PositionX"] = -1.767115831375122,
            ["PositionY"] = 208.9748992919922,
            ["PositionZ"] = -13.92891216278076,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 0.02500000037252903,
            ["SizeY"] = 3.5,
            ["SizeZ"] = 3.5
        },
        [151] =  {
            ["ColorB"] = 4.000000236555934,
            ["ColorG"] = 0,
            ["ColorR"] = 255,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "",
            ["Name"] = "Spawn2",
            ["OrientationX"] = 0,
            ["OrientationY"] = 0,
            ["OrientationZ"] = 90,
            ["PositionX"] = 34.32333374023438,
            ["PositionY"] = 214.5703735351562,
            ["PositionZ"] = -101.2189407348633,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 0.02500000037252903,
            ["SizeY"] = 3.5,
            ["SizeZ"] = 3.5
        },
        [152] =  {
            ["ColorB"] = 143.0000066757202,
            ["ColorG"] = 175.0000047683716,
            ["ColorR"] = 209.0000027418137,
            ["Material"] = "Metal",
            ["MaterialVariant"] = "corrugatedMetal2",
            ["Name"] = "Part",
            ["OrientationX"] = -3.880000114440918,
            ["OrientationY"] = 4.346000194549561,
            ["OrientationZ"] = 0,
            ["PositionX"] = -20.18218231201172,
            ["PositionY"] = 219.9881896972656,
            ["PositionZ"] = -26.35245895385742,
            ["Shape"] = "Block",
            ["SizeX"] = 0.172311395406723,
            ["SizeY"] = 6.830101013183594,
            ["SizeZ"] = 26.04467582702637
        },
        [153] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 30.47500038146973,
            ["OrientationZ"] = 0,
            ["PositionX"] = -49.63227081298828,
            ["PositionY"] = 245.6016387939453,
            ["PositionZ"] = -114.2007293701172,
            ["Shape"] = "Block",
            ["SizeX"] = 12.46604824066162,
            ["SizeY"] = 10.05916690826416,
            ["SizeZ"] = 11.93844509124756
        },
        [154] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 30.47500038146973,
            ["OrientationZ"] = 0,
            ["PositionX"] = -35.83185958862305,
            ["PositionY"] = 245.6016387939453,
            ["PositionZ"] = -131.6660461425781,
            ["Shape"] = "Block",
            ["SizeX"] = 12.46604824066162,
            ["SizeY"] = 10.05916690826416,
            ["SizeZ"] = 11.93844509124756
        },
        [155] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 15.39299964904785,
            ["OrientationZ"] = 0,
            ["PositionX"] = 82.96205139160156,
            ["PositionY"] = 247.8517303466797,
            ["PositionZ"] = -128.6706085205078,
            ["Shape"] = "Block",
            ["SizeX"] = 12.46604824066162,
            ["SizeY"] = 10.05916690826416,
            ["SizeZ"] = 11.93844509124756
        },
        [156] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 15.39299964904785,
            ["OrientationZ"] = 0,
            ["PositionX"] = 100.4953231811523,
            ["PositionY"] = 247.8517303466797,
            ["PositionZ"] = -89.40357208251953,
            ["Shape"] = "Block",
            ["SizeX"] = 12.46604824066162,
            ["SizeY"] = 10.05916690826416,
            ["SizeZ"] = 11.93844509124756
        },
        [157] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 58.36999893188477,
            ["OrientationZ"] = 0,
            ["PositionX"] = 64.80790710449219,
            ["PositionY"] = 257.1987915039062,
            ["PositionZ"] = 20.79833984375,
            ["Shape"] = "Block",
            ["SizeX"] = 12.46604824066162,
            ["SizeY"] = 10.05916690826416,
            ["SizeZ"] = 11.93844509124756
        },
        [158] =  {
            ["ColorB"] = 107.0000012218952,
            ["ColorG"] = 78.00000295042992,
            ["ColorR"] = 47.0000009983778,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = 102.3730010986328,
            ["OrientationZ"] = 90,
            ["PositionX"] = 38.21373748779297,
            ["PositionY"] = 242.2353820800781,
            ["PositionZ"] = -26.24287796020508,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 4.805148601531982,
            ["SizeY"] = 3.496524810791016,
            ["SizeZ"] = 3.496524810791016
        },
        [159] =  {
            ["ColorB"] = 57.00000040233135,
            ["ColorG"] = 82.00000271201134,
            ["ColorR"] = 119.0000005066395,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "pipe",
            ["OrientationX"] = 0,
            ["OrientationY"] = 105.3929977416992,
            ["OrientationZ"] = 90,
            ["PositionX"] = 93.49172210693359,
            ["PositionY"] = 250.1683654785156,
            ["PositionZ"] = -136.2946472167969,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 24.16191101074219,
            ["SizeY"] = 6.8765869140625,
            ["SizeZ"] = 6.8765869140625
        },
        [160] =  {
            ["ColorB"] = 57.00000040233135,
            ["ColorG"] = 82.00000271201134,
            ["ColorR"] = 119.0000005066395,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "pipe",
            ["OrientationX"] = 0,
            ["OrientationY"] = 105.3929977416992,
            ["OrientationZ"] = 90,
            ["PositionX"] = 97.47135162353516,
            ["PositionY"] = 247.4137725830078,
            ["PositionZ"] = -121.8399047851562,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 19.96477890014648,
            ["SizeY"] = 6.8765869140625,
            ["SizeZ"] = 6.8765869140625
        },
        [161] =  {
            ["ColorB"] = 95.00000193715096,
            ["ColorG"] = 116.0000006854534,
            ["ColorR"] = 138.0000069737434,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -160.8670043945312,
            ["OrientationZ"] = 0,
            ["PositionX"] = -5.890239238739014,
            ["PositionY"] = 214.5818939208984,
            ["PositionZ"] = -72.27700042724609,
            ["Shape"] = "Block",
            ["SizeX"] = 3.228770732879639,
            ["SizeY"] = 2.713676452636719,
            ["SizeZ"] = 8.563003540039062
        },
        [162] =  {
            ["ColorB"] = 95.00000193715096,
            ["ColorG"] = 116.0000006854534,
            ["ColorR"] = 138.0000069737434,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -160.8670043945312,
            ["OrientationZ"] = 0,
            ["PositionX"] = 7.026758670806885,
            ["PositionY"] = 225.2920989990234,
            ["PositionZ"] = -48.02175521850586,
            ["Shape"] = "Block",
            ["SizeX"] = 3.228770732879639,
            ["SizeY"] = 2.713676452636719,
            ["SizeZ"] = 8.563003540039062
        },
        [163] =  {
            ["ColorB"] = 95.00000193715096,
            ["ColorG"] = 116.0000006854534,
            ["ColorR"] = 138.0000069737434,
            ["Material"] = "Wood",
            ["MaterialVariant"] = "paintedWoodW",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -173.0700073242188,
            ["OrientationZ"] = 0,
            ["PositionX"] = 25.94946098327637,
            ["PositionY"] = 226.4856719970703,
            ["PositionZ"] = 10.49801635742188,
            ["Shape"] = "Block",
            ["SizeX"] = 3.228770732879639,
            ["SizeY"] = 2.713676452636719,
            ["SizeZ"] = 8.563003540039062
        },
        [164] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "rockWall",
            ["Name"] = "Part",
            ["OrientationX"] = 6.96999979019165,
            ["OrientationY"] = -134.6569976806641,
            ["OrientationZ"] = 9.968999862670898,
            ["PositionX"] = 92.12555694580078,
            ["PositionY"] = 230.3048706054688,
            ["PositionZ"] = -153.5137329101562,
            ["Shape"] = "Block",
            ["SizeX"] = 3.607204437255859,
            ["SizeY"] = 48.47674560546875,
            ["SizeZ"] = 121.8201751708984
        },
        [165] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "LeafyGrass",
            ["MaterialVariant"] = "OVERRIDEgrass1",
            ["Name"] = "Part",
            ["OrientationX"] = 6.96999979019165,
            ["OrientationY"] = -134.6569976806641,
            ["OrientationZ"] = -15.81999969482422,
            ["PositionX"] = 108.3193588256836,
            ["PositionY"] = 260.4925231933594,
            ["PositionZ"] = -175.1531524658203,
            ["Shape"] = "Block",
            ["SizeX"] = 50.97624206542969,
            ["SizeY"] = 1.883078098297119,
            ["SizeZ"] = 122.2232360839844
        },
        [166] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "LeafyGrass",
            ["MaterialVariant"] = "OVERRIDEgrass1",
            ["Name"] = "Part",
            ["OrientationX"] = 1.065999984741211,
            ["OrientationY"] = -170.1029968261719,
            ["OrientationZ"] = -13.44499969482422,
            ["PositionX"] = 143.6907501220703,
            ["PositionY"] = 263.6155090332031,
            ["PositionZ"] = -106.4993438720703,
            ["Shape"] = "Block",
            ["SizeX"] = 50.97624206542969,
            ["SizeY"] = 1.883078098297119,
            ["SizeZ"] = 122.2232360839844
        },
        [167] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "rockWall",
            ["Name"] = "Part",
            ["OrientationX"] = 1.065999984741211,
            ["OrientationY"] = -170.1029968261719,
            ["OrientationZ"] = 12.34500026702881,
            ["PositionX"] = 116.188850402832,
            ["PositionY"] = 234.3441925048828,
            ["PositionZ"] = -101.1481323242188,
            ["Shape"] = "Block",
            ["SizeX"] = 3.607204437255859,
            ["SizeY"] = 48.47674560546875,
            ["SizeZ"] = 121.8201751708984
        },
        [168] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Limestone",
            ["MaterialVariant"] = "OVERRIDErockySand",
            ["Name"] = "Part",
            ["OrientationX"] = 8.798000335693359,
            ["OrientationY"] = -0.386000007390976,
            ["OrientationZ"] = -17.21100044250488,
            ["PositionX"] = -170.1063842773438,
            ["PositionY"] = 255.4480590820312,
            ["PositionZ"] = -31.03993225097656,
            ["Shape"] = "Block",
            ["SizeX"] = 191.5734558105469,
            ["SizeY"] = 1.883078098297119,
            ["SizeZ"] = 210.87353515625
        },
        [169] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "rockWall",
            ["Name"] = "Part",
            ["OrientationX"] = 8.798000335693359,
            ["OrientationY"] = -0.386000007390976,
            ["OrientationZ"] = 8.579000473022461,
            ["PositionX"] = -78.53482055664062,
            ["PositionY"] = 214.7753143310547,
            ["PositionZ"] = -35.54793930053711,
            ["Shape"] = "Block",
            ["SizeX"] = 3.607204437255859,
            ["SizeY"] = 26.47950172424316,
            ["SizeZ"] = 215.6165466308594
        },
        [170] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Limestone",
            ["MaterialVariant"] = "OVERRIDErockySand",
            ["Name"] = "Part",
            ["OrientationX"] = -26.00300025939941,
            ["OrientationY"] = -5.876999855041504,
            ["OrientationZ"] = 9.439999580383301,
            ["PositionX"] = -68.27739715576172,
            ["PositionY"] = 225.1606903076172,
            ["PositionZ"] = -129.6968841552734,
            ["Shape"] = "Block",
            ["SizeX"] = 21.40114784240723,
            ["SizeY"] = 40.03000259399414,
            ["SizeZ"] = 18.41267395019531
        },
        [171] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Limestone",
            ["MaterialVariant"] = "OVERRIDErockySand",
            ["Name"] = "Part",
            ["OrientationX"] = 3.04800009727478,
            ["OrientationY"] = 103.4830017089844,
            ["OrientationZ"] = -16.61400032043457,
            ["PositionX"] = -31.89004325866699,
            ["PositionY"] = 233.7196350097656,
            ["PositionZ"] = 139.1441497802734,
            ["Shape"] = "Block",
            ["SizeX"] = 191.5734558105469,
            ["SizeY"] = 1.883078098297119,
            ["SizeZ"] = 210.87353515625
        },
        [172] =  {
            ["ColorB"] = 76.00000306963921,
            ["ColorG"] = 98.00000175833702,
            ["ColorR"] = 117.0000006258488,
            ["Material"] = "Snow",
            ["MaterialVariant"] = "snow1",
            ["Name"] = "Floor",
            ["OrientationX"] = 0,
            ["OrientationY"] = 15.39299964904785,
            ["OrientationZ"] = 0,
            ["PositionX"] = 86.27522277832031,
            ["PositionY"] = 214.0236206054688,
            ["PositionZ"] = -92.66229248046875,
            ["Shape"] = "Block",
            ["SizeX"] = 50.43757629394531,
            ["SizeY"] = 9.87852954864502,
            ["SizeZ"] = 100.3650207519531
        },
        [173] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -164.6069946289062,
            ["OrientationZ"] = 0,
            ["PositionX"] = 71.98160552978516,
            ["PositionY"] = 244.5735626220703,
            ["PositionZ"] = -51.57651519775391,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.502847671508789,
            ["SizeZ"] = 14.76276588439941
        },
        [174] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -164.6069946289062,
            ["OrientationZ"] = 0,
            ["PositionX"] = 60.06420516967773,
            ["PositionY"] = 244.5735626220703,
            ["PositionZ"] = -94.86264038085938,
            ["Shape"] = "Block",
            ["SizeX"] = 0.9048213958740234,
            ["SizeY"] = 3.502847671508789,
            ["SizeZ"] = 14.76276588439941
        },
        [175] =  {
            ["ColorB"] = 122.0000003278255,
            ["ColorG"] = 106.0000012814999,
            ["ColorR"] = 68.00000354647636,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = -164.6699981689453,
            ["OrientationZ"] = 90,
            ["PositionX"] = 9.545001983642578,
            ["PositionY"] = 248.9448394775391,
            ["PositionZ"] = 109.5028533935547,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 9.446718215942383,
            ["SizeY"] = 6.874017715454102,
            ["SizeZ"] = 6.874017715454102
        },
        [176] =  {
            ["ColorB"] = 122.0000003278255,
            ["ColorG"] = 106.0000012814999,
            ["ColorR"] = 68.00000354647636,
            ["Material"] = "Plastic",
            ["MaterialVariant"] = "polystyreneBumps",
            ["Name"] = "Barrel",
            ["OrientationX"] = 0,
            ["OrientationY"] = 171.625,
            ["OrientationZ"] = 90,
            ["PositionX"] = -178.9440307617188,
            ["PositionY"] = 277.0133666992188,
            ["PositionZ"] = 31.10446166992188,
            ["Shape"] = "Cylinder",
            ["SizeX"] = 9.446718215942383,
            ["SizeY"] = 6.874017715454102,
            ["SizeZ"] = 6.874017715454102
        },
        [177] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -75.61599731445312,
            ["OrientationZ"] = 0,
            ["PositionX"] = -194.3971710205078,
            ["PositionY"] = 270.9566650390625,
            ["PositionZ"] = -19.85892295837402,
            ["Shape"] = "Block",
            ["SizeX"] = 32.1807746887207,
            ["SizeY"] = 30.49664497375488,
            ["SizeZ"] = 45.78153991699219
        },
        [178] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "rockWall",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 69.83599853515625,
            ["OrientationZ"] = 0,
            ["PositionX"] = 132.4842224121094,
            ["PositionY"] = 274.0711364746094,
            ["PositionZ"] = -195.0574035644531,
            ["Shape"] = "Block",
            ["SizeX"] = 30.88187599182129,
            ["SizeY"] = 29.26572227478027,
            ["SizeZ"] = 43.93367767333984
        },
        [179] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -108.2070007324219,
            ["OrientationZ"] = 0,
            ["PositionX"] = -230.8134155273438,
            ["PositionY"] = 289.5177917480469,
            ["PositionZ"] = -70.94587707519531,
            ["Shape"] = "Block",
            ["SizeX"] = 29.10480308532715,
            ["SizeY"] = 27.58164978027344,
            ["SizeZ"] = 41.40555191040039
        },
        [180] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 171.625,
            ["OrientationZ"] = 0,
            ["PositionX"] = -186.2677154541016,
            ["PositionY"] = 259.0101928710938,
            ["PositionZ"] = 32.96546936035156,
            ["Shape"] = "Block",
            ["SizeX"] = 28.02634239196777,
            ["SizeY"] = 26.55962753295898,
            ["SizeZ"] = 39.87129211425781
        },
        [181] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 30.48299980163574,
            ["OrientationZ"] = 0,
            ["PositionX"] = -80.28162384033203,
            ["PositionY"] = 263.4739379882812,
            ["PositionZ"] = 214.0200042724609,
            ["Shape"] = "Block",
            ["SizeX"] = 25.7758960723877,
            ["SizeY"] = 24.42695617675781,
            ["SizeZ"] = 36.66972732543945
        },
        [182] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -169.9420013427734,
            ["OrientationZ"] = 0,
            ["PositionX"] = -131.0770721435547,
            ["PositionY"] = 268.6904602050781,
            ["PositionZ"] = -131.3515319824219,
            ["Shape"] = "Block",
            ["SizeX"] = 32.27188873291016,
            ["SizeY"] = 30.5829906463623,
            ["SizeZ"] = 45.91116333007812
        },
        [183] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -99.91600036621094,
            ["OrientationZ"] = 0,
            ["PositionX"] = -113.8455276489258,
            ["PositionY"] = 238.6813201904297,
            ["PositionZ"] = 22.11666107177734,
            ["Shape"] = "Block",
            ["SizeX"] = 30.22821235656738,
            ["SizeY"] = 28.64626502990723,
            ["SizeZ"] = 43.00375366210938
        },
        [184] =  {
            ["ColorB"] = 255,
            ["ColorG"] = 255,
            ["ColorR"] = 255,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "rockWall",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 172.6340026855469,
            ["OrientationZ"] = 0,
            ["PositionX"] = 177.7521057128906,
            ["PositionY"] = 274.7789001464844,
            ["PositionZ"] = -96.86741638183594,
            ["Shape"] = "Block",
            ["SizeX"] = 23.15318489074707,
            ["SizeY"] = 21.94149971008301,
            ["SizeZ"] = 32.93856430053711
        },
        [185] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -89.87799835205078,
            ["OrientationZ"] = 0,
            ["PositionX"] = -0.1130905151367188,
            ["PositionY"] = 247.133056640625,
            ["PositionZ"] = 158.376220703125,
            ["Shape"] = "Block",
            ["SizeX"] = 22.37944221496582,
            ["SizeY"] = 21.20824813842773,
            ["SizeZ"] = 31.83780670166016
        },
        [186] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -52.17100143432617,
            ["OrientationZ"] = 0,
            ["PositionX"] = -116.0727462768555,
            ["PositionY"] = 232.6593780517578,
            ["PositionZ"] = 114.29638671875,
            ["Shape"] = "Block",
            ["SizeX"] = 25.92424011230469,
            ["SizeY"] = 24.56753730773926,
            ["SizeZ"] = 36.88076782226562
        },
        [187] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 105.3300018310547,
            ["OrientationZ"] = 0,
            ["PositionX"] = -2.155555725097656,
            ["PositionY"] = 231.8042449951172,
            ["PositionZ"] = 107.2117385864258,
            ["Shape"] = "Block",
            ["SizeX"] = 26.20591735839844,
            ["SizeY"] = 24.83447265625,
            ["SizeZ"] = 37.28149032592773
        },
        [188] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -99.11000061035156,
            ["OrientationZ"] = 0,
            ["PositionX"] = 17.9171085357666,
            ["PositionY"] = 263.9261169433594,
            ["PositionZ"] = 204.1397399902344,
            ["Shape"] = "Block",
            ["SizeX"] = 32.04108428955078,
            ["SizeY"] = 30.36426544189453,
            ["SizeZ"] = 45.58281326293945
        },
        [189] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = 0.4720000028610229,
            ["OrientationZ"] = 0,
            ["PositionX"] = -114.829719543457,
            ["PositionY"] = 252.6606140136719,
            ["PositionZ"] = -64.55352783203125,
            ["Shape"] = "Block",
            ["SizeX"] = 30.50857543945312,
            ["SizeY"] = 28.91195678710938,
            ["SizeZ"] = 43.40260696411133
        },
        [190] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -73.96800231933594,
            ["OrientationZ"] = 0,
            ["PositionX"] = 38.30534744262695,
            ["PositionY"] = 227.1440734863281,
            ["PositionZ"] = 101.0608367919922,
            ["Shape"] = "Block",
            ["SizeX"] = 21.1601734161377,
            ["SizeY"] = 20.05278968811035,
            ["SizeZ"] = 30.10323143005371
        },
        [191] =  {
            ["ColorB"] = 117.0000006258488,
            ["ColorG"] = 143.0000066757202,
            ["ColorR"] = 170.0000050663948,
            ["Material"] = "Brick",
            ["MaterialVariant"] = "lightBricks",
            ["Name"] = "Part",
            ["OrientationX"] = 0,
            ["OrientationY"] = -17.66200065612793,
            ["OrientationZ"] = 0,
            ["PositionX"] = -59.05404663085938,
            ["PositionY"] = 233.6796569824219,
            ["PositionZ"] = 104.8526077270508,
            ["Shape"] = "Block",
            ["SizeX"] = 22.65238380432129,
            ["SizeY"] = 21.4669075012207,
            ["SizeZ"] = 32.22610473632812
        }
    }
        
    if workspace:FindFirstChild("CustomMap") then
        workspace.CustomMap:Destroy()
    end
    local MapFolder = Instance.new("Folder")
    MapFolder.Parent = workspace
    MapFolder.Name = "CustomMap"
    
    --local part = nil
    local CollectionService = game:GetService("CollectionService")
    for _, Barriers in pairs(CollectionService:GetTagged("MAP_COLLIDABLE")) do
        if Barriers.ClassName == "Part" then
            --part = Barriers
            
            for _, Objects in MapObjects do 
                local CopiedObject = Barriers:Clone()
                CopiedObject.Parent = MapFolder
                CopiedObject:ClearAllChildren()
                CopiedObject.Anchored = true
                CopiedObject.Name = Objects.Name
                --print(CopiedObject.Name  .. ", " ..CopiedObject.Parent.Name)
                CopiedObject.Position = Vector3.new(Objects.PositionX,Objects.PositionY,Objects.PositionZ)
                CopiedObject.Orientation = Vector3.new(Objects.OrientationX,Objects.OrientationY,Objects.OrientationZ)
                CopiedObject.Size = Vector3.new(Objects.SizeX,Objects.SizeY,Objects.SizeZ)
                CopiedObject.Shape = Enum.PartType[Objects.Shape]
                CopiedObject.Material = Enum.Material[Objects.Material]
                CopiedObject.MaterialVariant = Objects.MaterialVariant
                if CopiedObject.Name == "Spawn1" or CopiedObject.Name == "Spawn2" then
                    CopiedObject.Transparency = 1
                else
                    CopiedObject.Transparency = 0
                end
                CopiedObject.Color = Color3.fromRGB(Objects.ColorR,Objects.ColorG,Objects.ColorB)
                CopiedObject.CastShadow = false
                CopiedObject.CanCollide  = true
                CopiedObject.CanQuery  = true
                CopiedObject.CanTouch = true
            end
            --part:Destroy()
            
            break
        end
    end
    
    local Lighting = game.Lighting
    --graphics
    Lighting.Ambient = Color3.fromRGB(156, 154, 146)
    Lighting.Brightness = 4
    Lighting.ExposureCompensation = -0.7
    Lighting.ClockTime = 14
    Lighting.GeographicLatitude = 6
    Lighting.Atmosphere.Density = 0.56
    Lighting.Atmosphere.Offset = 0.3
    Lighting.Atmosphere.Haze = 2.4
    Lighting.Atmosphere.Glare = 0.1
    Lighting.Atmosphere.Color = Color3.fromRGB(190, 162, 128)
    Lighting.Atmosphere.Decay = Color3.fromRGB(144, 124, 89)
    if Lighting:FindFirstChild("ModColorCorrection") then
        Lighting.ModColorCorrection:Destroy()
    end
    local ColorCorrection = Instance.new("ColorCorrectionEffect")
    ColorCorrection.Name = "ModColorCorrection"
    ColorCorrection.Parent = Lighting
    ColorCorrection.Brightness = 0
    ColorCorrection.Contrast = 0.1
    ColorCorrection.Saturation = 0.2
    ColorCorrection.TintColor = Color3.fromRGB(255,230,200)
    
end




UserInputService.InputBegan:Connect(function(input)
    if Destroyed == false then
        if input.KeyCode == Enum.KeyCode.Slash then
            LockSettings = true
            Frame["Lock settings"].BackgroundColor3 = FeatureEnabledColor
        end
        if input.KeyCode == Enum.KeyCode.Return then
            LockSettings = false
            Frame["Lock settings"].BackgroundColor3 = FeatureColor
        end
        if LockSettings == false then
            for _,CheckFeatures in pairs(Frame:GetChildren()) do
                if CheckFeatures:FindFirstChild("KeyValue") then
                    if input.KeyCode == (Enum.KeyCode[CheckFeatures.KeyValue.Value]) then
                        if CheckFeatures.FeatureValue.Value == "Load map" then
                            LoadMap()
                        elseif CheckFeatures.FeatureValue.Value == "respawn to 1" then
                            if Respawn1 == false then
                                Respawn1 = true
                                Respawn2 = false
                                RespawnedToMap = false
                                CheckFeatures.BackgroundColor3 = FeatureEnabledColor
                            else
                                Respawn1 = false
                                RespawnedToMap = false
                                CheckFeatures.BackgroundColor3 = FeatureColor
                            end
                        elseif CheckFeatures.FeatureValue.Value == "respawn to 2" then
                            if Respawn2 == false then
                                Respawn2 = true
                                Respawn1 = false
                                RespawnedToMap = false
                                CheckFeatures.BackgroundColor3 = FeatureEnabledColor
                            else
                                Respawn2 = false
                                RespawnedToMap = false
                                CheckFeatures.BackgroundColor3 = FeatureColor
                            end
                        elseif CheckFeatures.FeatureValue.Value == "Toggle barriers" then
                            if Barriers == false then
                                Barriers = true
                                CheckFeatures.BackgroundColor3 = FeatureEnabledColor
                                RemoveBarriers()
                            else
                                Barriers = false
                                CheckFeatures.BackgroundColor3 = FeatureColor
                                RestoreBarriers()
                            end
                        elseif CheckFeatures.FeatureValue.Value == "Knife Fire" then
                            KnifeFire()
                        elseif CheckFeatures.FeatureValue.Value == "Glass camo" then
                            SetWeaponCamo(1)
                        elseif CheckFeatures.FeatureValue.Value == "Camo2" then
                            SetWeaponCamo(2)
                        elseif CheckFeatures.FeatureValue.Value == "Camo3" then
                            SetWeaponCamo(3)
                        elseif CheckFeatures.FeatureValue.Value == "Camo4" then
                            SetWeaponCamo(4)
                        elseif CheckFeatures.FeatureValue.Value == "Custom reticle" then
                            if CustomReticle == false then
                                CustomReticle = true
                                CheckFeatures.BackgroundColor3 = FeatureEnabledColor
                                SetReticle()
                            else
                                CustomReticle = false
                                CheckFeatures.BackgroundColor3 = FeatureColor
                                RestoreReticle()
                            end
                        elseif CheckFeatures.FeatureValue.Value == "One handed mode" then
                            if OneHanded == false then
                                OneHanded = true
                                CheckFeatures.BackgroundColor3 = FeatureEnabledColor
                                EnableOneHanded()
                            else
                                OneHanded = false
                                CheckFeatures.BackgroundColor3 = FeatureColor
                                DisableOneHanded()
                            end
                        end
                        break
                    end
                end
            end
        end
    end
end)

function CapVelocity(Character)
    if Character.HumanoidRootPart.Velocity.X > 140 then
        Character.HumanoidRootPart.Velocity = Vector3.new(140,Character.HumanoidRootPart.Velocity.Y,Character.HumanoidRootPart.Velocity.Z)
    end
    if Character.HumanoidRootPart.Velocity.X < -140 then
        Character.HumanoidRootPart.Velocity = Vector3.new(-140,Character.HumanoidRootPart.Velocity.Y,Character.HumanoidRootPart.Velocity.Z)
    end
    if Character.HumanoidRootPart.Velocity.Y > 110 then
        Character.HumanoidRootPart.Velocity = Vector3.new(Character.HumanoidRootPart.Velocity.X,110,Character.HumanoidRootPart.Velocity.Z)
    end
    if Character.HumanoidRootPart.Velocity.Y < -110 then
        Character.HumanoidRootPart.Velocity = Vector3.new(Character.HumanoidRootPart.Velocity.X,-110,Character.HumanoidRootPart.Velocity.Z)
    end
    if Character.HumanoidRootPart.Velocity.Z > 140 then
        Character.HumanoidRootPart.Velocity = Vector3.new(Character.HumanoidRootPart.Velocity.X,Character.HumanoidRootPart.Velocity.Y,140)
    end
    if Character.HumanoidRootPart.Velocity.Z < -140 then
        Character.HumanoidRootPart.Velocity = Vector3.new(Character.HumanoidRootPart.Velocity.X,Character.HumanoidRootPart.Velocity.Y,-140)
    end
end

while true do
    wait(0)
    RGBHue += 0.005
    if RGBHue > 1 then
        RGBHue -= 1
    end
    local Character = nil
    for _,Soldiers in pairs(workspace:GetChildren()) do
        if Soldiers ~= nil then
            if Soldiers.Name == "soldier_model" then
                if Soldiers:FindFirstChild("fpv_rig") then
                    Character = Soldiers
                end
            end
        end
    end
    if Character ~= nil and CustomReticle == true then
        if os.clock() -1 > LastReticleUpdate or CanSetReticle == true then
            wait(0)
            print("setReticle")
            CanSetReticle = false
            LastReticleUpdate = os.clock()
            SetReticle()
        end
    else
        CanSetReticle = true
    end
    local respawn = false
    if Respawn1 == true or Respawn2 == true then
        respawn = true
    end
    if Character ~= nil and respawn == true and workspace:FindFirstChild("CustomMap") then
        if RespawnedToMap == false then
            RespawnedToMap = true
            local Spawn1 = workspace.CustomMap:FindFirstChild("Spawn1")
            local Spawn2 = workspace.CustomMap:FindFirstChild("Spawn2")
            EnableNoclip()
            wait(0.1)
            for I = 1,102,1 do
                if Respawn1 == true and Spawn1 ~= nil then
                    Character.HumanoidRootPart.Velocity = (Spawn1.Position+Vector3.new(0,1.5,0)-Character.HumanoidRootPart.Position) * 26
                elseif Respawn2 == true and Spawn2 ~= nil then
                    Character.HumanoidRootPart.Velocity = (Spawn2.Position+Vector3.new(0,1.5,0)-Character.HumanoidRootPart.Position) * 26
                else
                    break
                end
                CapVelocity(Character)
                wait()
            end
            DisableNoclip()
        end
    else
        RespawnedToMap = false
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.T) and LockSettings == false then
        Character.HumanoidRootPart.Velocity = workspace.CurrentCamera.CFrame.LookVector * 100
        Frame["Mouse TP"].BackgroundColor3 = FeatureEnabledColor
    else
        Frame["Mouse TP"].BackgroundColor3 = FeatureColor
    end
    if CrazyMovement == true and Character ~= nil then
        if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
            Character.HumanoidRootPart.Velocity = Character.HumanoidRootPart.CFrame.LookVector * 100
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            Character.HumanoidRootPart.Velocity += Vector3.new(0,35,0)
        end
    else
        CrazyMovement = false
    end
    if Character ~= nil then
        CapVelocity(Character)
    end
    if game.MaterialService:FindFirstChild("CamoMaterial2") then
        game.MaterialService.CamoMaterial2.StudsPerTile = 2+(math.sin(os.clock()*.3)/1.8)
    end
    local CollectionService = game:GetService("CollectionService")
    for _, CamoParts in pairs(CollectionService:GetTagged("Camo3")) do
        if CamoParts ~= nil then
            CamoParts.Color = Color3.fromHSV(RGBHue, 0.88, 0.67)
        end
    end
    for _, CamoParts in pairs(CollectionService:GetTagged("Camo4")) do
        if CamoParts ~= nil then
            CamoParts.Color = Color3.fromHSV(RGBHue, 1, 1)
        end
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.End) then
        print("destroying "..SciptTitle)
        UI:Destroy()
        Destroyed = true
        RestoreBarriers()
        DisableNoclip()
        RestoreReticle()
        break
    end
end

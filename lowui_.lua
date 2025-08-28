-- Tối ưu FPS Roblox: Particles, Shadows, ViewportFrames, GUI
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

-- 1️⃣ Tắt / xóa Particles, Trails, Beams
local function disableParticles(parent)
    for _, obj in pairs(parent:GetDescendants()) do
        if obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Beam") then
            obj.Enabled = false
        end
    end
end
disableParticles(Workspace)

-- 2️⃣ Tắt GlobalShadows, Dynamic Lighting nặng
Lighting.GlobalShadows = false
Lighting.Brightness = 1
Lighting.FogEnd = 100000
Lighting.OutdoorAmbient = Color3.fromRGB(128,128,128)

-- 4️⃣ Vô hiệu hóa ViewportFrames
local function disableViewport(parent)
    for _, obj in pairs(parent:GetDescendants()) do
        if obj:IsA("ViewportFrame") then
            obj.Visible = false
        end
    end
end
disableViewport(Workspace)
disableViewport(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))

-- 5️⃣ Tắt BillboardGui / SurfaceGui không cần thiết
local function disableGui(parent)
    for _, obj in pairs(parent:GetDescendants()) do
        if obj:IsA("BillboardGui") or obj:IsA("SurfaceGui") then
            obj.Enabled = false
        end
    end
end
disableGui(Workspace)
disableGui(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))

-- Giám sát các object mới spawn thêm
Workspace.DescendantAdded:Connect(function(obj)
    if obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Beam") then
        obj.Enabled = false
    elseif obj:IsA("ViewportFrame") then
        obj.Visible = false
    elseif obj:IsA("BillboardGui") or obj:IsA("SurfaceGui") then
        obj.Enabled = false
    end
end)
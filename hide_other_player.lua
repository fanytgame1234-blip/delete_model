local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Hàm ẩn character
local function hideCharacter(char)
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = 1       -- làm trong suốt
            part.CanCollide = false     -- tắt va chạm
        elseif part:IsA("Decal") or part:IsA("Texture") then
            part.Transparency = 1
        elseif part:IsA("ParticleEmitter") or part:IsA("Trail") then
            part.Enabled = false
        end
    end
end

-- Ẩn tất cả player khác
for _, plr in pairs(Players:GetPlayers()) do
    if plr ~= LocalPlayer and plr.Character then
        hideCharacter(plr.Character)
    end
end

-- Giám sát player mới vào server
Players.PlayerAdded:Connect(function(plr)
    if plr ~= LocalPlayer then
        plr.CharacterAdded:Connect(function(char)
            hideCharacter(char)
        end)
        if plr.Character then
            hideCharacter(plr.Character)
        end
    end
end)
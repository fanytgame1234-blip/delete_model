local Workspace = game:GetService("Workspace")
local SoundService = game:GetService("SoundService")

local function muteSound(sound)
    if sound:IsA("Sound") then
        sound.Volume = 0
        sound.Playing = false
    end
end

-- Tắt âm thanh hiện có
for _, obj in ipairs(Workspace:GetDescendants()) do
    muteSound(obj)
end
for _, obj in ipairs(SoundService:GetDescendants()) do
    muteSound(obj)
end

-- Tự động tắt âm thanh mới spawn
Workspace.DescendantAdded:Connect(muteSound)
SoundService.DescendantAdded:Connect(muteSound)
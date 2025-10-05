-- 🔇 Script tự động xoá tất cả âm thanh trong game
if not game:IsLoaded() then game.Loaded:Wait() end

local paths = {
    game:GetService("Workspace"),
    game:GetService("Players"),
    game:GetService("SoundService"),
    game:GetService("ReplicatedStorage"),
    game:GetService("StarterPlayer"),
    game:GetService("CoreGui")
}

local count = 0
for _, parent in ipairs(paths) do
    for _, sound in ipairs(parent:GetDescendants()) do
        if sound:IsA("Sound") then
            count += 1
            pcall(function() sound:Destroy() end)
        end
    end
end

-- Thông báo khi xong
pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Fix Lag",
        Text = "✅ Đã xóa "..count.." âm thanh",
        Duration = 5,
        Icon = "rbxassetid://97428005191166"
    })
end)
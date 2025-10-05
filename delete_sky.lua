-- Script xóa Sky trong Lighting
local Lighting = game:GetService("Lighting")

for _, obj in ipairs(Lighting:GetChildren()) do
    if obj:IsA("Sky") then
        obj:Destroy()
    end
end

-- Thông báo
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Fix Lag",
    Text = "☁️ Sky đã bị xóa!",
    Duration = 5,
    Icon = "rbxassetid://97428005191166"
})
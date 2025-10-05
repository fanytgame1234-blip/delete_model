-- Script ẩn full model trong danh sách, không xóa
if not game:IsLoaded() then game.Loaded:Wait() end

local StarterGui = game:GetService("StarterGui")
local Workspace = game:GetService("Workspace")

-- Danh sách model full từ list bạn gửi
local modelsToHide = {
    "Mountain","Mountain","Mountain","Bamboo","Bamboo","Bamboo","Bamboo","Bamboo",
    "Bamboo","Bamboo","Bamboo","Bamboo","Bamboo","Bamboo","Bamboo","Bamboo","Bamboo",
    "Bamboo","Bamboo","Bamboo1","Bamboo2","Bamboo3","Bamboo4","Bamboo5","Bamboo6",
    "Rock","Water","Model","Rock","Water","Model","Rock","Water","Model","Rock",
    "Water","Model","Rock2","Water","Model","Rock4","Water","Model","Rock5","Water",
    "Model","Rock1","Water","Model","Mountain","RoadCenterIsland","Model","IslandPortal",
    "CentralIsland","Flower1","Model1","Flower","Model1","Model","Model1","Model2",
    "Model2","Model1","Model3","Model2","Model3","Model","Model1","Flower","Model",
    "fan_game1234real","Status","Money","Parts","TotalPlanted","DailyIsland","Button",
    "White Flowers","Bridge","Sand","Grass","Dirt","Pink Flowers","Tier1","Road",
    "FuseMachine","Other","LuckDisplay","Frame","Portal","Lawn Mower","Shroombino",
    "Watermelon","Cocotank","Carnivorous Plant","Tomatrio","Mr Carrot","Grape",
    "Brainrot","Joel","Barry","George","Cashier Machine","Seeds Merchant","Closed Box",
    "Small Ceramic Planters","Sign"
}

local count = 0
for _, obj in pairs(Workspace:GetDescendants()) do
    if obj:IsA("Model") and table.find(modelsToHide, obj.Name) then
        obj.Parent = nil -- tạm ẩn model
        count = count + 1
    end
end

-- Thông báo số lượng model đã ẩn
StarterGui:SetCore("SendNotification", {
    Title = "Hide Models",
    Text = "✅ " .. count .. " model đã ẩn!",
    Duration = 5
})
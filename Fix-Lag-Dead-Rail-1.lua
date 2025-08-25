-- Fix Lag cho (ẩn model) cho Dead rails

-- Danh sách model cần ẩn
local modelNames = {
    "FlagPole", "StartingBaseplate", "timlaidau1234_3", "Status",
    "default", "Visual", "AxelNodes", "Main", "WheelBases",
    "Medium", "Large", "RequiredComponents", "Controls",
    "Lever", "ConductorSeat", "Platform", "RightRailing",
    "Ladder", "LeftRailing", "Base", "Functional",
    "PlatformTrusses", "Right", "Left", "Back", "CabinTrusses",
    "Model" -- nếu trong Workspace có nhiều "Model" rời thì sẽ ẩn hết
}

-- Hàm ẩn model
local function hideModel(model)
    for _, obj in pairs(model:GetDescendants()) do
        if obj:IsA("BasePart") then
            obj.Transparency = 1
            obj.CanCollide = false
        elseif obj:IsA("Decal") or obj:IsA("Texture") then
            obj.Transparency = 1
        end
    end
end

-- Quét toàn Workspace + ReplicatedStorage
local function hideAll()
    for _, name in ipairs(modelNames) do
        local m1 = game.Workspace:FindFirstChild(name)
        local m2 = game.ReplicatedStorage:FindFirstChild(name)
        if m1 then hideModel(m1) end
        if m2 then hideModel(m2) end
    end
end

hideAll()
print("✅ Đã ẩn toàn bộ model trong game mới")
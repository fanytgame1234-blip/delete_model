-- Fix Lag cho Dead rail 2 

-- Danh sách model cần ẩn
local modelNames = {
    "Ore", "TownBuildings", "RuntimeItems", "Newspaper", "GoldBar", "SafeZones",
    "NightEnemies", "BulletFolder", "RailSegments", "Decor", "RailModel",
    "RailSegment", "Baseplates", "Baseplate", "Animals", "Agave_a", "Cactus_a",
    "RandomBuildings", "Towns", "RuntimeEnemies", "Debug", "RuntimeEntities",
    "Lumina Particles", "DeadRails", "ProjectileFolder", "Armor", "Runtime",
    "Effects", "RuntimePuddles", "RandomEvents", "TeslaLab", "LabLoot",
    "Generator", "Wheel", "PowerIndicator", "PowerSwitch", "StartingZone",
    "Nodes", "Buildings", "SheriffsOffice", "ThreeDTextObject", "Porch",
    "BountySquare", "Lantern", "House", "WindowFrame", "GeneralStore",
    "Counter", "Register", "Numbers", "CommonLootTable", "ShopItems",
    "Landmine", "Crossbow", "Molotov", "Coal", "RareLootTable",
    "SheetMetalCrate", "Cavalry Sword", "Mining Helmet", "Left Arm_Armor",
    "Tomahawk", "Pickaxe", "Gunsmith", "Sign", "GunTable", "MaximGun",
    "Tripod", "ServerWeaponState", "Sounds", "Gun", "Navy Revolver",
    "Rifle", "Shotgun", "Revolver", "AmmoTable", "TurretAmmo",
    "ShotgunShells", "RevolverAmmo", "RifleAmmo", "TradingPost",
    "Lanterns", "SellZones", "StoreFront", "Doctor", "DoorWay",
    "BandageTable", "Bandage", "SnakeOilTable", "Snake Oil",
    "Light", "Torch", "LampPost1", "LampPost2", "LampPost3",
    "LampPost4", "LampPost5", "Sentries", "TurretSpot",
    "SoldierSpawnNodes", "ActiveSoldiers", "Model_TurretSoldier",
    "Model_RifleSoldier", "Bolt Action Rifle", "ClientWeaponState",
    "NewsStand", "WoodStaircase", "Gate", "Model" -- gom mấy cái rời rạc
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
print("✅ Đã ẩn toàn bộ model trong game mới (list dài)")
-- Fix Lag cho Build A Plane 

local urls = {
    "https://raw.githubusercontent.com/fanytgame1234-blip/1234/main/muhehehe.lua",
    "https://raw.githubusercontent.com/fanytgame1234-blip/1234/main/Fix-Lag-Build-A-Plane.lua"
}

for i, url in ipairs(urls) do
    task.wait(5 * (i - 1)) -- cái đầu chạy ngay, cái sau sau 5s
    local ok, err = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    if ok then
        print("✅ Loaded:", url)
    else
        warn("❌ Error loading:", url, err)
    end
end
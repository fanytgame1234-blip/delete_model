

local urls = {
    "https://raw.githubusercontent.com/fanytgame1234-blip/1234/main/muhehehe.lua", 
                       "https://raw.githubusercontent.com/fanytgame1234-blip/delete_model/main/Fix-Lag-Dead-Rail-1.lua", 
                       "https://raw.githubusercontent.com/fanytgame1234-blip/delete_model/main/Fix-Lag-Dead-Rail-2.lua"
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
-- ⚡ 
repeat task.wait() until game:IsLoaded()

-- Danh sách URL để load
local otherurl = {
    "https://raw.githubusercontent.com/fanytgame1234-blip/fan_game1234real-/main/delete_models.lua",
    "https://raw.githubusercontent.com/fanytgame1234-blip/fan_game1234real-/main/delete_texture_player-mob.lua",
    "https://raw.githubusercontent.com/fanytgame1234-blip/fan_game1234real-/main/delete_animation.lua"
}

for i, url in ipairs(otherurl) do
    task.wait(1 * (i - 1))
    pcall(function()
        loadstring(game:HttpGet(url))()
        print("[LOADER] Loaded:", url)
    end)
end
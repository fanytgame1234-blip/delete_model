-- // Fan_Game Hub - Tìm Server Dưới 5 Người
repeat task.wait() until game:IsLoaded()

local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")

local function sendNotif(title, text)
	StarterGui:SetCore("SendNotification", {
		Title = title,
		Text = text,
		Duration = 5,
		Icon = "rbxthumb://type=Asset&id=97428005191166&w=150&h=150"
	})
end

-- Lấy PlaceId và API
local PlaceId = game.PlaceId
local cursor = ""
local checked = 0
local success = false

sendNotif("fan_game hub", "Đang tìm server dưới 5 người... 🔍")

-- Vòng lặp tìm server
for i = 1, 30 do
	local url = "https://games.roblox.com/v1/games/" .. PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
	if cursor ~= "" then
		url = url .. "&cursor=" .. cursor
	end

	local ok, result = pcall(function()
		return HttpService:JSONDecode(game:HttpGet(url))
	end)

	if ok and result and result.data then
		for _, server in ipairs(result.data) do
			checked += 1
			if server.playing < 5 and server.playing > 0 then
				sendNotif("fan_game hub", "Đã tìm thấy server dưới 5 người ✅\nĐang dịch chuyển...")
				task.wait(1)
				TeleportService:TeleportToPlaceInstance(PlaceId, server.id, player)
				success = true
				break
			end
		end

		if result.nextPageCursor then
			cursor = result.nextPageCursor
		else
			break
		end
	else
		warn("Lỗi khi lấy dữ liệu server!")
	end

	if success then break end
	task.wait(1)
end

if not success then
	sendNotif("fan_game hub", "Không tìm thấy server dưới 5 người! 😢")
else
	sendNotif("fan_game hub", "Tổng đã kiểm: " .. checked .. " server 🔎")
end
local Tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Kunai")
if Tool then
    Tool.Equipped:Connect(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/violentqm/Combat-Master-Scripts/main/hitbox/extend.lua", true))()
    end)
    Tool.Unequipped:Connect(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/violentqm/Combat-Master-Scripts/main/hitbox/revert.lua", true))()
    end)
else
    print("Tool not found in backpack")
end

local Tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Kunai")
if Tool then
    Tool.Equipped:Connect(function()
        print("Player is holding a tool")
    end)
    Tool.Unequipped:Connect(function()
        print("Player is not holding a tool")
    end)
else
    print("Tool not found in backpack")
end

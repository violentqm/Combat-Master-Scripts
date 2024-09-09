local tools = {"Kunai", "Longbow", "Crossbow", "Heavy Bow"}

for _, toolName in ipairs(tools) do
    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(toolName)
    if tool then
        tool.Equipped:Connect(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/violentqm/Combat-Master-Scripts/main/hitbox/extend.lua", true))()
        end)
        tool.Unequipped:Connect(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/violentqm/Combat-Master-Scripts/main/hitbox/revert.lua", true))()
        end)
    else
        print(toolName .. " not found in backpack")
    end
end

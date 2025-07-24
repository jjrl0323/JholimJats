-- Grow a Garden Egg Spawner Script by JholimJats

local player = game.Players.LocalPlayer
local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

local function spawnEgg()
    if not hrp then return end
    local egg = Instance.new("Part")
    egg.Shape = Enum.PartType.Ball
    egg.Size = Vector3.new(2,2,2)
    egg.Color = Color3.fromRGB(math.random(100,255), math.random(100,255), math.random(100,255))
    egg.Material = Enum.Material.SmoothPlastic
    egg.Position = hrp.Position + Vector3.new(math.random(-6,6), 3, math.random(-6,6))
    egg.Anchored = false
    egg.CanCollide = true
    egg.Name = "CustomEgg"
    egg.Parent = workspace
end

while true do
    task.wait(5)
    spawnEgg()
end

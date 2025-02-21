local args = {
    [1] = "Hard"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("VoteForMap"):FireServer(unpack(args))


local player = game.Players.LocalPlayer -- สมมติว่าคุณใช้ LocalPlayer

local function hasEnoughGold(amount)
    if
       player:FindFirstChild("Gold") and 
       player.Gold.Value >= amount then
        return true
    end
    return false
end

local function SpawnTower(name, position, angles, towerName)
    local args = {
        [1] = name,
        [2] = position * angles,
        [3] = towerName and workspace.Towers:FindFirstChild(towerName) or nil
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))
end


local upgrades = {
    {name = "Ninja Cameraman", gold = 200, position = CFrame.new(182.593048, -15.3091431, -30.9620533, 0.73451978, 5.02475794e-09, -0.678587258, 2.13459082e-08, 1, 3.05100798e-08, 0.678587258, -3.68953188e-08, 0.73451978), angles = CFrame.Angles(0, 0, 0), tower = nil, true},
    {name = "Ninja Cameraman2", gold = 200, position = CFrame.new(182.593048, -15.3091431, -30.9620533, 0.73451978, 5.02475794e-09, -0.678587258, 2.13459082e-08, 1, 3.05100798e-08, 0.678587258, -3.68953188e-08, 0.73451978), angles = CFrame.Angles(0, 0, 0), tower = "Ninja Cameraman"},
    {name = "Ninja Cameraman3", gold = 300, position = CFrame.new(182.593048, -15.3091431, -30.9620533, 0.73451978, 5.02475794e-09, -0.678587258, 2.13459082e-08, 1, 3.05100798e-08, 0.678587258, -3.68953188e-08, 0.73451978), angles = CFrame.Angles(0, 0, 0), tower = "Ninja Cameraman2"},
    {name = "Ninja Cameraman4", gold = 400, position = CFrame.new(182.593048, -15.3091431, -30.9620533, 0.73451978, 5.02475794e-09, -0.678587258, 2.13459082e-08, 1, 3.05100798e-08, 0.678587258, -3.68953188e-08, 0.73451978), angles = CFrame.Angles(0, 0, 0), tower = "Ninja Cameraman3"},
    {name = "Ninja Cameraman5", gold = 600, position = CFrame.new(182.593048, -15.3091431, -30.9620533, 0.73451978, 5.02475794e-09, -0.678587258, 2.13459082e-08, 1, 3.05100798e-08, 0.678587258, -3.68953188e-08, 0.73451978), angles = CFrame.Angles(0, 0, 0), tower = "Ninja Cameraman4"}
}

-- ทำงานตามขั้นตอน
for _, upgrade in ipairs(upgrades) do
        while not hasEnoughGold(upgrade.gold) do
            task.wait(0.1)
        end
        SpawnTower(upgrade.name, upgrade.position, upgrade.angles, upgrade.tower)
end

local function hasEnoughGold(amount)
    if
       player:FindFirstChild("Gold") and 
       player.Gold.Value >= amount then
        return true
    end
    return false
end

local function SpawnTower(name, position, angles, towerName)
    local args = {
        [1] = name,
        [2] = position * angles,
        [3] = towerName and workspace.Towers:FindFirstChild(towerName) or nil
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnTower"):InvokeServer(unpack(args))
end


local upgrades = {
    {name = "Ninja Cameraman", gold = 200, position = CFrame.new(182.593048, -15.3091431, -30.9620533, 0.73451978, 5.02475794e-09, -0.678587258, 2.13459082e-08, 1, 3.05100798e-08, 0.678587258, -3.68953188e-08, 0.73451978), angles = CFrame.Angles(0, 0, 0), tower = nil, true},
    {name = "Ninja Cameraman2", gold = 200, position = CFrame.new(182.593048, -15.3091431, -30.9620533, 0.73451978, 5.02475794e-09, -0.678587258, 2.13459082e-08, 1, 3.05100798e-08, 0.678587258, -3.68953188e-08, 0.73451978), angles = CFrame.Angles(0, 0, 0), tower = "Ninja Cameraman"},
    {name = "Ninja Cameraman3", gold = 300, position = CFrame.new(182.593048, -15.3091431, -30.9620533, 0.73451978, 5.02475794e-09, -0.678587258, 2.13459082e-08, 1, 3.05100798e-08, 0.678587258, -3.68953188e-08, 0.73451978), angles = CFrame.Angles(0, 0, 0), tower = "Ninja Cameraman2"},
    {name = "Ninja Cameraman4", gold = 400, position = CFrame.new(182.593048, -15.3091431, -30.9620533, 0.73451978, 5.02475794e-09, -0.678587258, 2.13459082e-08, 1, 3.05100798e-08, 0.678587258, -3.68953188e-08, 0.73451978), angles = CFrame.Angles(0, 0, 0), tower = "Ninja Cameraman3"},
    {name = "Ninja Cameraman5", gold = 600, position = CFrame.new(182.593048, -15.3091431, -30.9620533, 0.73451978, 5.02475794e-09, -0.678587258, 2.13459082e-08, 1, 3.05100798e-08, 0.678587258, -3.68953188e-08, 0.73451978), angles = CFrame.Angles(0, 0, 0), tower = "Ninja Cameraman4"}
}

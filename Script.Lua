local infinite_hunger = false
local infinite_thirst = false

local function loopStats()
    while infinite_hunger or infinite_thirst do
        local char = LocalPlayer.Character

        if char then
            for _, v in pairs(char:GetChildren()) do
                local name = v.Name:lower()

                if v:IsA("NumberValue") then
                    if name:find("hunger") and infinite_hunger then
                        v.Value = v.MaxValue or 100
                    end

                    if name:find("thirst") and infinite_thirst then
                        v.Value = v.MaxValue or 100
                    end
                end
            end
        end

        task.wait(0.1)
    end
end

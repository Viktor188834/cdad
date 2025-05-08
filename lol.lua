local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("Name", "RJTheme3")
local Tab = Window:NewTab("TabName")
local Section = Tab:NewSection("SpeedHack")
Section:NewSlider("SpeedHack", "speed up!", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("jump power", "UUUP!", 500, 1, function(p) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = p
end)
Section:NewToggle("Esp", "Esp", function(state)
    if state then
        while wait(1) do
    for i, childrik in ipairs(workspace:GetDescendants()) do
        if childrik:FindFirstChild("Humanoid") then
            if not childrik:FindFirstChild("EspBox") then
                if childrik ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment",childrik)
                    esp.Adornee = childrik
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 5, 1)
                    esp.Transparency = 0.75
                    esp.Color3 = Color3.fromRGB(255,48,48)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
    else
        esp.Transparency = 1
    end
end)

function OnActionPressed(player, action, value)
    print("player "..player.name.." pressed action: " .. action .. ", value: " .. tostring(value))
    if action == "OpenMap" then
        
    end
end

function OnActionReleased(player, action)
    print("player "..player.name.." released action: " .. action)
    if action == "OpenMap" then
        
    end
end

Input.actionPressedEvent:Connect(OnActionPressed)
Input.actionReleasedEvent:Connect(OnActionReleased)

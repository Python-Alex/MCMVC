function toggleColorSignal(color)
    local current_output = redstone.getBundledOutput("left")
    
    if current_output >= color and (current_output % (color * 2)) >= color then
        redstone.setBundledOutput("left", current_output - color)
    else
        redstone.setBundledOutput("left", current_output + color)
    end
end

function isSignalActive(color)
    -- Get the current bundled input on the specified side
    local current_input = redstone.getBundledInput("left")
    
    -- Check if the specific color is active
    return (current_input % (color * 2)) >= color
end


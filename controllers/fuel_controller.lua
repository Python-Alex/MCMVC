fuel_cell = peripheral.wrap("create:fluid_tank_2")
fuel_cell_capacity = 64000000

/*

FUEL PUMP REDSTONE RX/TX FREQUENCY : 100
FUEL PUMP REDSTONE INSULATE COLOR : BLACK

*/s

print("Loaded fuel cell " .. tostring(fuel_cell))
for i, tank in ipairs(fuel_cell.tanks()) do
    print("    - Tank-" .. tostring(i) .. ": " .. tostring(tank.amount / 1000) .. "mB/" .. tostring(fuel_cell_capacity / 1000))
end

function engineHasFuel(engine)
    local is_empty = false

    for i, tank in ipairs(engine.tanks()) do
        if(tank.amount == 0) then   
            is_empty = true
        end
    end
    return is_empty
end

function tankHasFuel()
    local is_empty = false 

    for i, tank in ipairs(fuel_cell.tanks()) do
        if(tank.amount == 0) then
            is_empty = true 
        
        end
    end
    return is_empty
end

function engineFuelAmount(engine)
    local amount = 0

    for i, tank in ipairs(engine.tanks()) do
        amount = amount + tank.amount
    end

    return amount
end

function startFuelPump()

end

function stopFuelPump()

end
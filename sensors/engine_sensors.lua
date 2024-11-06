package.path = package.path .. ";../controllers/?.lua"  -- Add the modules directory to package.path

require("redstone_controller")

/* 
Used in a seperate computer module in the same peripheral network.
Keeps track of the contraptions sensors.
*/

/*

MOTOR MAIN AXIS SENSOR RX/TX FREQUENCY : 1024
    - INSULATE COLOR : PINK

MOTOR MAIN FUEL PUMP SENSOR RX/TX FREQUENCY : 1024
    - INSULATE COLOR : MAGENTA
*/

motor_main_axis_rotation = false
motor_main_fuel_pump = false

function scan_sensors()
    motor_main_axis_rotation = redstone_controller.isSignalActive(colors.PINK)
    motor_main_fuel_pump = redstone_controller.isSignalActive(color.MAGENTA)


end

function main()
    print("[*] Sensors loading...")
end

parallel.waitForAny(main, scan_sensors)
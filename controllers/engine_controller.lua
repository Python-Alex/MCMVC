package.path = package.path .. ";../sensors/?.lua"  -- Add the modules directory to package.path


require("fuel_controller")
require("redstone_controller")
require("sensors")

engine_block_string = "createdieselgenerators:huge_diesel_engine_block_entity_"

wrappedPeripherals = {}

for i = 0, 15 do
    wrappedPeripherals[i] = peripheral.wrap(engine_block_string .. tostring(i))

function getEngine(index)
    return wrappedPeripherals[index]
/* 
tanks() -> table [.name, .amount]
pushFluid() -> function [side, amount]
pullFluid() -> function [side, amount]
*/

/*

PRIMARY CLUTCH REDSTONE RX/TX FREQUENCY : 10
    - INSULATE COLOR : GREEN

PRIMARY GEARSHIFT (REVERSE) REDSTONE RX/TX FREQUENCY : 20
    - INSULATE COLOR : YELLOW

RIGHT TRACK CLUTCH REDSTONE RX/TX FREQUENCY : 30
    - INSULATE COLOR : RED

LEFT TRACK CLUTCH_REDSTONE RX/TX FREQUENCY : 40
    - INSULATE COLOR : ORANGE
*/
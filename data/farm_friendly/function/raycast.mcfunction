# If we found a dark oak or pale oak sapling, run the growth code right here
execute if block ~ ~ ~ minecraft:dark_oak_sapling run function farm_friendly:run_growth
execute if block ~ ~ ~ minecraft:pale_oak_sapling run function farm_friendly:run_growth

# If not found yet, step forward 0.5 blocks and check again (up to 10 iterations max)
execute unless block ~ ~ ~ minecraft:dark_oak_sapling unless block ~ ~ ~ minecraft:pale_oak_sapling positioned ^ ^ ^0.5 run function farm_friendly:raycast
# If we found a dark oak or pale oak sapling, grow it here and stop.
execute if block ~ ~ ~ minecraft:dark_oak_sapling run return run function farm_friendly:grow_dark_oak
execute if block ~ ~ ~ minecraft:pale_oak_sapling run return run function farm_friendly:grow_pale_oak

# Otherwise step forward 0.5 blocks and check again (max ~6 blocks of reach).
scoreboard players add #steps ff_ray 1
execute if score #steps ff_ray matches 12.. run return 0
execute positioned ^ ^ ^0.5 run function farm_friendly:raycast

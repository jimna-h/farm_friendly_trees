# If it's a lone Dark Oak sapling, swap it to a 1x1 footprint using a configured feature trigger
execute if block ~ ~ ~ minecraft:dark_oak_sapling run place feature minecraft:oak ~ ~ ~
execute if block ~ ~ ~ minecraft:dark_oak_log run fill ~-2 ~4 ~-2 ~2 ~7 ~2 minecraft:dark_oak_leaves replace minecraft:oak_leaves
execute if block ~ ~ ~ minecraft:dark_oak_log run fill ~ ~ ~ ~ ~6 ~ minecraft:dark_oak_log replace minecraft:oak_log

# If it's a lone Pale Oak sapling, swap it smoothly
execute if block ~ ~ ~ minecraft:pale_oak_sapling run place feature minecraft:oak ~ ~ ~
execute if block ~ ~ ~ minecraft:pale_oak_log run fill ~-2 ~4 ~-2 ~2 ~7 ~2 minecraft:pale_oak_leaves replace minecraft:oak_leaves
execute if block ~ ~ ~ minecraft:pale_oak_log run fill ~ ~ ~ ~ ~6 ~ minecraft:pale_oak_log replace minecraft:oak_log

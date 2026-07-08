# --- DARK OAK SYSTEM ---
execute if block ~ ~ ~ minecraft:dark_oak_sapling run setblock ~ ~ ~ minecraft:oak_sapling
execute if block ~ ~ ~ minecraft:oak_sapling run place feature minecraft:oak ~ ~ ~
execute if block ~ ~ ~ minecraft:oak_log run fill ~-2 ~2 ~-2 ~2 ~8 ~2 minecraft:dark_oak_leaves replace minecraft:oak_leaves
execute if block ~ ~ ~ minecraft:oak_log run fill ~ ~ ~ ~ ~6 ~ minecraft:dark_oak_log replace minecraft:oak_log
execute if block ~ ~ ~ minecraft:oak_sapling run setblock ~ ~ ~ minecraft:dark_oak_sapling

# --- PALE OAK SYSTEM ---
execute if block ~ ~ ~ minecraft:pale_oak_sapling run setblock ~ ~ ~ minecraft:oak_sapling
execute if block ~ ~ ~ minecraft:oak_sapling run place feature minecraft:oak ~ ~ ~
execute if block ~ ~ ~ minecraft:oak_log run fill ~-2 ~2 ~-2 ~2 ~8 ~2 minecraft:pale_oak_leaves replace minecraft:oak_leaves
execute if block ~ ~ ~ minecraft:oak_log run fill ~ ~ ~ ~ ~6 ~ minecraft:pale_oak_log replace minecraft:oak_log
execute if block ~ ~ ~ minecraft:oak_sapling run setblock ~ ~ ~ minecraft:pale_oak_sapling
# Replace sapling with oak.
setblock ~ ~ ~ minecraft:oak_sapling

# Grow an oak.
place feature minecraft:oak

# If nothing grew, restore the sapling.
execute unless block ~ ~1 ~ minecraft:oak_log run setblock ~ ~ ~ minecraft:dark_oak_sapling
execute unless block ~ ~1 ~ minecraft:oak_log run return 0

# Convert trunk.
fill ~-2 ~ ~-2 ~2 ~20 ~2 minecraft:dark_oak_log replace minecraft:oak_log

# Convert canopy.
fill ~-8 ~ ~-8 ~8 ~20 ~8 minecraft:dark_oak_leaves replace minecraft:oak_leaves

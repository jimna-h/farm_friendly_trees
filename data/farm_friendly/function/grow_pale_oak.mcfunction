# Replace the sapling with an oak so vanilla growth succeeds.

setblock ~ ~ ~ minecraft:oak_sapling

# Grow a normal oak.
place feature minecraft:oak

# If the tree failed to generate, restore the original sapling.
execute unless block ~ ~1 ~ minecraft:oak_log run setblock ~ ~ ~ minecraft:pale_oak_sapling
execute unless block ~ ~1 ~ minecraft:oak_log run return 0

# Convert the generated tree.

fill ~-4 ~ ~-4 ~4 ~12 ~4 minecraft:pale_oak_log replace minecraft:oak_log
fill ~-5 ~ ~-5 ~5 ~14 ~5 minecraft:pale_oak_leaves replace minecraft:oak_leaves

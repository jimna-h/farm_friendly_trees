# If this sapling is part of a complete 2x2, let vanilla mechanics grow it.
execute if block ~1 ~ ~ minecraft:pale_oak_sapling if block ~ ~ ~1 minecraft:pale_oak_sapling if block ~1 ~ ~1 minecraft:pale_oak_sapling run return 0
execute if block ~-1 ~ ~ minecraft:pale_oak_sapling if block ~ ~ ~1 minecraft:pale_oak_sapling if block ~-1 ~ ~1 minecraft:pale_oak_sapling run return 0
execute if block ~1 ~ ~ minecraft:pale_oak_sapling if block ~ ~ ~-1 minecraft:pale_oak_sapling if block ~1 ~ ~-1 minecraft:pale_oak_sapling run return 0
execute if block ~-1 ~ ~ minecraft:pale_oak_sapling if block ~ ~ ~-1 minecraft:pale_oak_sapling if block ~-1 ~ ~-1 minecraft:pale_oak_sapling run return 0

# Clear the sapling so the feature has a valid origin.
setblock ~ ~ ~ minecraft:air

# Grow an oak.
place feature minecraft:oak

# If nothing grew, restore the sapling and stop.
execute unless block ~ ~ ~ minecraft:oak_log run setblock ~ ~ ~ minecraft:pale_oak_sapling
execute unless block ~ ~ ~ minecraft:oak_log run return 0

# Convert trunk.
fill ~-1 ~ ~-1 ~1 ~8 ~1 minecraft:pale_oak_log replace minecraft:oak_log

# Convert canopy.
fill ~-3 ~2 ~-3 ~3 ~8 ~3 minecraft:pale_oak_leaves replace minecraft:oak_leaves

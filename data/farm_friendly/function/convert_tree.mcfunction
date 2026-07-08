# Re-arm the advancement so it can trigger again.
advancement revoke @s only farm_friendly:grow_1x1

# ~45% chance per bonemeal, like vanilla sapling growth.
execute unless predicate farm_friendly:growth_roll run return 0

# Raycast from the player's eyes to find the sapling they bonemealed.
scoreboard players set #steps ff_ray 0
execute at @s anchored eyes positioned ^ ^ ^ run function farm_friendly:raycast

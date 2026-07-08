# Revoke the advancement immediately so it can run repeatedly in the farm
advancement revoke @s only farm_friendly:grow_1x1

# Execute tree check and swap at the targeted block
execute as @s at @s run function farm_friendly:check_and_place

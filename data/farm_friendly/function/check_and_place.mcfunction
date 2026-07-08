# Shift execution focus to the block the player just right-clicked
execute at @s run function farm_friendly:run_growth

# Reset the advancement so it can trigger on the next click
advancement revoke @s only farm_friendly:grow_1x1

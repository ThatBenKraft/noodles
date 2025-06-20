## noodles:level/solve.mcfunction

# Retrieves solution directions
execute as @e[type=minecraft:marker,tag=tile] run scoreboard players operation @s directions = @s solve_directions

# Applies new direction tags to new scores
execute as @e[type=minecraft:marker,tag=tile] run function noodles:level/tile/tag

# Runs spreading
function noodles:level/spread
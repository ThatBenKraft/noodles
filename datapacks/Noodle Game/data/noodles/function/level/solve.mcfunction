## noodles:level/solve.mcfunction

# Retrieves solution directions
execute as @e[type=minecraft:marker,tag=tile] run scoreboard players operation @s directions = @s solve_directions

# Renders tile directions to blocks
execute as @e[type=minecraft:marker,tag=tile,tag=!source] at @s run function noodles:level/tile/render/disconnected
execute as @e[type=minecraft:marker,tag=tile,tag=source] at @s run function noodles:level/tile/render/source
## noodles:level/generate.mcfunction

say Generating level. . .

# Removes previous maze
kill @e[type=marker,tag=!level]

# Transfers size scoreboard to storage
scoreboard players operation #temp value = $size_x value
scoreboard players remove #temp value 1
execute store result storage noodles:temp x int 1 run scoreboard players get #temp value
scoreboard players operation #temp value = $size_y value
scoreboard players remove #temp value 1
execute store result storage noodles:temp y int 1 run scoreboard players get #temp value

# Begins level generation
scoreboard players set $loops value 0
execute positioned 0 60 0 run function noodles:level/build/init with storage noodles:temp

# Assigns direction tags to tiles
execute if score $particles value matches 1 as @e[type=minecraft:marker,tag=tile] run function noodles:level/particle/tag

# Assigns source tile
tag @e[type=minecraft:marker,tag=tile,limit=1,sort=random] add source

# Stores solution directions
execute as @e[type=minecraft:marker,tag=tile] run scoreboard players operation @s solve_directions = @s directions

# Randomizes directions and renders blocks
function noodles:level/randomize
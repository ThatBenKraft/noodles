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

# Assigns direction tags to sources
execute if score $particles value matches 1 as @e[type=minecraft:marker,tag=source] run function noodles:level/particle/tag

# Renders source directions to blocks
execute as @e[type=minecraft:marker,tag=source] at @s run function noodles:level/tile/directions_to_block
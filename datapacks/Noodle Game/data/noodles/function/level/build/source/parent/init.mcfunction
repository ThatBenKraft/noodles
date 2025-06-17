## noodles:level/build/source/parent/init.mcfunction

# Finds parent source based on direction
execute if score @s directions matches 1 positioned ~1 ~ ~ run function noodles:level/build/source/parent/add
execute if score @s directions matches 2 positioned ~ ~1 ~ run function noodles:level/build/source/parent/add
execute if score @s directions matches 4 positioned ~-1 ~ ~ run function noodles:level/build/source/parent/add
execute if score @s directions matches 8 positioned ~ ~-1 ~ run function noodles:level/build/source/parent/add

# Return true if parent already has three branches
execute if entity @e[type=minecraft:marker,tag=parent,predicate=noodles:tri_branched] run return 1

# Gives parent source corresponding opposite direction 
execute if score @s directions matches 1 run scoreboard players add @e[type=minecraft:marker,tag=parent] directions 4
execute if score @s directions matches 2 run scoreboard players add @e[type=minecraft:marker,tag=parent] directions 8
execute if score @s directions matches 4 run scoreboard players add @e[type=minecraft:marker,tag=parent] directions 1
execute if score @s directions matches 8 run scoreboard players add @e[type=minecraft:marker,tag=parent] directions 2

# Removes parent tag from all sources
tag @e[type=minecraft:marker,tag=source] remove parent
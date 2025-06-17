## noodles:level/build/source/init.mcfunction

# Returns early and kills source if block is not available
execute unless block ~ ~ ~ #noodles:available run return run function noodles:level/build/source/terminate

# Assigns parent source
execute if score @s directions matches 1 positioned ~1 ~ ~ run function noodles:level/build/source/add_parent
execute if score @s directions matches 2 positioned ~ ~1 ~ run function noodles:level/build/source/add_parent
execute if score @s directions matches 4 positioned ~-1 ~ ~ run function noodles:level/build/source/add_parent
execute if score @s directions matches 8 positioned ~ ~-1 ~ run function noodles:level/build/source/add_parent

# Returns early and kills source if parent already has three branches
execute if entity @e[type=minecraft:marker,tag=parent,predicate=noodles:tri_branched] run return run function noodles:level/build/source/terminate

# Adds direction to "parent" source
execute if score @s directions matches 1 run scoreboard players add @e[type=minecraft:marker,tag=parent] directions 4
execute if score @s directions matches 2 run scoreboard players add @e[type=minecraft:marker,tag=parent] directions 8
execute if score @s directions matches 4 run scoreboard players add @e[type=minecraft:marker,tag=parent] directions 1
execute if score @s directions matches 8 run scoreboard players add @e[type=minecraft:marker,tag=parent] directions 2

# Removes parent tag
tag @e[type=minecraft:marker,tag=source] remove parent

# Marks the block as visited
setblock ~ ~ ~ minecraft:spruce_wood

# Increases loop count
scoreboard players add $loops value 1

# Modifies prospect into source
tag @s add source
tag @s remove prospect

# Spawns new prospects
execute positioned ~1 ~ ~ if block ~ ~ ~ #noodles:available summon minecraft:marker run function noodles:level/build/source/spawn/pos_x
execute positioned ~ ~1 ~ if block ~ ~ ~ #noodles:available summon minecraft:marker run function noodles:level/build/source/spawn/pos_y
execute positioned ~-1 ~ ~ if block ~ ~ ~ #noodles:available summon minecraft:marker run function noodles:level/build/source/spawn/neg_x
execute positioned ~ ~-1 ~ if block ~ ~ ~ #noodles:available summon minecraft:marker run function noodles:level/build/source/spawn/neg_y

# Executes on new prospects
execute as @e[type=minecraft:marker,tag=prospect,predicate=noodles:current_loop,sort=random] at @s run function noodles:level/build/source/loop
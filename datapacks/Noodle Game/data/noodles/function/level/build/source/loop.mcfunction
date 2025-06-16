## noodles:level/build/source/init.mcfunction

# Returns early and kills source if block is not available
execute unless block ~ ~ ~ #noodles:available run return run function noodles:level/build/source/terminate

# Adds direction to "parent" source
execute if score @s directions matches 1 positioned ~1 ~ ~ run scoreboard players add @e[type=minecraft:marker,tag=source,limit=1,sort=nearest] directions 4
execute if score @s directions matches 2 positioned ~ ~1 ~ run scoreboard players add @e[type=minecraft:marker,tag=source,limit=1,sort=nearest] directions 8
execute if score @s directions matches 4 positioned ~-1 ~ ~ run scoreboard players add @e[type=minecraft:marker,tag=source,limit=1,sort=nearest] directions 1
execute if score @s directions matches 8 positioned ~ ~-1 ~ run scoreboard players add @e[type=minecraft:marker,tag=source,limit=1,sort=nearest] directions 2

# Marks the block as visited
setblock ~ ~ ~ minecraft:gold_block

# Modifies prospect into source
tag @s remove prospect
tag @s add source

# Increases loop count
scoreboard players add $loops value 1

# Spawns new prospects
execute positioned ~1 ~ ~ if block ~ ~ ~ #noodles:available summon minecraft:marker run function noodles:level/build/source/spawn/pos_x
execute positioned ~ ~1 ~ if block ~ ~ ~ #noodles:available summon minecraft:marker run function noodles:level/build/source/spawn/pos_y
execute positioned ~-1 ~ ~ if block ~ ~ ~ #noodles:available summon minecraft:marker run function noodles:level/build/source/spawn/neg_x
execute positioned ~ ~-1 ~ if block ~ ~ ~ #noodles:available summon minecraft:marker run function noodles:level/build/source/spawn/neg_y

# Executes on new prospects
execute as @e[type=minecraft:marker,tag=prospect,sort=random] if score @s generation = $loops value at @s run function noodles:level/build/source/loop
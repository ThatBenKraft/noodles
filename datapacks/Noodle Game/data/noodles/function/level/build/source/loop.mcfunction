## noodles:level/build/source/init.mcfunction

# Returns early and kills source if block is not available
execute unless block ~ ~ ~ #noodles:available run return run function noodles:level/build/source/terminate

# Returns early and kills source if parent already has three branches
execute if function noodles:level/build/source/parent/init run return run function noodles:level/build/source/terminate

# Marks the block as visited
setblock ~ ~ ~ minecraft:light_gray_terracotta

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
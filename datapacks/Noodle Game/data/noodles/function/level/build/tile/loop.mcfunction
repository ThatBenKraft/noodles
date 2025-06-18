## noodles:level/build/tile/init.mcfunction

# Returns early and kills tile if block is not available
execute unless block ~ ~ ~ #noodles:available run return run function noodles:level/build/tile/terminate

# Returns early and kills tile if parent already has three branches
execute if function noodles:level/build/tile/parent/init run return run function noodles:level/build/tile/terminate

# Marks the block as visited
setblock ~ ~ ~ minecraft:light_gray_terracotta

# Increases loop count
scoreboard players add $loops value 1

# Modifies prospect into tile
tag @s add tile
tag @s remove prospect

# Spawns new prospects
execute positioned ~1 ~ ~ if block ~ ~ ~ #noodles:available summon minecraft:marker run function noodles:level/build/tile/spawn/pos_x
execute positioned ~ ~1 ~ if block ~ ~ ~ #noodles:available summon minecraft:marker run function noodles:level/build/tile/spawn/pos_y
execute positioned ~-1 ~ ~ if block ~ ~ ~ #noodles:available summon minecraft:marker run function noodles:level/build/tile/spawn/neg_x
execute positioned ~ ~-1 ~ if block ~ ~ ~ #noodles:available summon minecraft:marker run function noodles:level/build/tile/spawn/neg_y

# Executes on new prospects
execute as @e[type=minecraft:marker,tag=prospect,predicate=noodles:current_loop,sort=random] at @s run function noodles:level/build/tile/loop
## noodles:level/build/source/init.mcfunction

tag @s add spread
scoreboard players add $loops value 1

setblock ~ ~ ~ minecraft:gold_block

execute if block ~1 ~ ~ #noodles:available run data modify entity @s data.directions append value [1,0]
execute if block ~ ~1 ~ #noodles:available run data modify entity @s data.directions append value [0,1]
execute if block ~-1 ~ ~ #noodles:available run data modify entity @s data.directions append value [-1,0]
execute if block ~ ~-1 ~ #noodles:available run data modify entity @s data.directions append value [0,-1]

execute store result storage noodles:temp value int 1 run data get entity @s data.directions
execute store result score #temp value run data get entity @s data.directions
execute store result storage noodles:temp value int 1 run return run function noodles:level/build/source/randomize with storage noodles:temp

# data modify entity @s data.current_direction merge from
# execute store result entity @s data.current_direction int 1 

# function noodles:level/build/source/randomize with entity @s data.directions

# execute store result storage noodles:temp value int 1 run scoreboard players get #temp value


# execute positioned ~1 ~ ~ if block ~ ~ ~ #noodles:available run function noodles:level/build/source/init
# execute positioned ~ ~1 ~ if block ~ ~ ~ #noodles:available run function noodles:level/build/source/init
# execute positioned ~-1 ~ ~ if block ~ ~ ~ #noodles:available run function noodles:level/build/source/init
# execute positioned ~ ~-1 ~ if block ~ ~ ~ #noodles:available run function noodles:level/build/source/init


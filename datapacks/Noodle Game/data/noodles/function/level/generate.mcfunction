## noodles:level/generate.mcfunction

say Generating level. . .

scoreboard players operation #temp value = $size_x value
scoreboard players remove #temp value 1
execute store result storage noodles:temp x int 1 run scoreboard players get #temp value

scoreboard players operation #temp value = $size_y value
scoreboard players remove #temp value 1
execute store result storage noodles:temp y int 1 run scoreboard players get #temp value

execute as @e[type=minecraft:marker,tag=level] at @s run function noodles:level/build/init with storage noodles:temp

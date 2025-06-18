## noodles:level/build/init.mcfunction

# Resets level blocks
fill ~ ~ ~ ~99 ~99 ~ minecraft:air
$fill ~ ~ ~ ~$(x) ~$(y) ~ minecraft:quartz_block

# Randomly positions origin tile
summon minecraft:marker ~ ~ ~ {Tags:["prospect"]}
scoreboard players set @e[type=minecraft:marker,tag=prospect] generation 0
execute as @e[type=minecraft:marker,tag=prospect] at @s run function noodles:level/build/tile/loop
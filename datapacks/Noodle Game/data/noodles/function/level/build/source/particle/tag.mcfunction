## noodles:level/build/source/particle/tag

# Translates direction sums into tags
scoreboard players operation @s value = @s directions

scoreboard players remove @s directions 8
execute if score @s directions matches 0.. run tag @s add neg_y
execute unless score @s directions matches 0.. run scoreboard players add @s directions 8

scoreboard players remove @s directions 4
execute if score @s directions matches 0.. run tag @s add neg_x
execute unless score @s directions matches 0.. run scoreboard players add @s directions 4

scoreboard players remove @s directions 2
execute if score @s directions matches 0.. run tag @s add pos_y
execute unless score @s directions matches 0.. run scoreboard players add @s directions 2

scoreboard players remove @s directions 1
execute if score @s directions matches 0.. run tag @s add pos_x
execute unless score @s directions matches 0.. run scoreboard players add @s directions 1

scoreboard players operation @s directions = @s value

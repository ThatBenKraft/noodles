## noodles:level/tile/tag.mcfunction

# Removes all direction tags
tag @s remove pos_x
tag @s remove pos_y
tag @s remove neg_x
tag @s remove neg_y

# Translates direction sums into tags
scoreboard players operation #temp value = @s directions

scoreboard players remove #temp value 8
execute if score #temp value matches 0.. run tag @s add neg_y
execute unless score #temp value matches 0.. run scoreboard players add #temp value 8

scoreboard players remove #temp value 4
execute if score #temp value matches 0.. run tag @s add neg_x
execute unless score #temp value matches 0.. run scoreboard players add #temp value 4

scoreboard players remove #temp value 2
execute if score #temp value matches 0.. run tag @s add pos_y
execute unless score #temp value matches 0.. run scoreboard players add #temp value 2

scoreboard players remove #temp value 1
execute if score #temp value matches 0.. run tag @s add pos_x
execute unless score #temp value matches 0.. run scoreboard players add #temp value 1

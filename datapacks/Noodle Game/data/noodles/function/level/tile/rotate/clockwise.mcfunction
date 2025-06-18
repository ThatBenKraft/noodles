## noodles:level/tile/rotate/clockwise

# Determines direction ID of tile "turned" clockwise 
scoreboard players operation #temp value = @s directions
scoreboard players operation #result value = @s directions
scoreboard players set #num value 2
scoreboard players operation #result value %= #num value
execute if score #result value matches 1 run scoreboard players add #temp value 15
scoreboard players operation #temp value /= #num value
scoreboard players operation @s directions = #temp value
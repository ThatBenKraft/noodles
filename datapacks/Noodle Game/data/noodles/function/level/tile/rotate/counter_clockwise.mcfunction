## noodles:level/tile/rotate/counter_clockwise.mcfunction

# Determines direction ID of tile "turned" counter-clockwise 
scoreboard players operation #temp value = @s directions
scoreboard players set #num value 2
scoreboard players operation #temp value *= #num value
execute if score @s directions matches 8.. run scoreboard players remove #temp value 15
scoreboard players operation @s directions = #temp value
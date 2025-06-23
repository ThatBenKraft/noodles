## noodles:level/is_won.mcfunction

# Counts number of tiles and compares to total loops
scoreboard players set #temp value 0
execute as @e[type=minecraft:marker,tag=tile,tag=connected] run scoreboard players add #temp value 1
execute if score #temp value = $loops value run return 1
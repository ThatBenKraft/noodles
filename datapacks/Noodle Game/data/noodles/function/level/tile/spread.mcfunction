## noodles:level/spread/loop.mcfunction

# Checks for "connected" neighbor tiles
execute if entity @s[tag=pos_x] positioned ~1 ~ ~ if entity @e[type=minecraft:marker,tag=tile,tag=neg_x,tag=connected,distance=...5] run tag @s add connected
execute if entity @s[tag=neg_x] positioned ~-1 ~ ~ if entity @e[type=minecraft:marker,tag=tile,tag=pos_x,tag=connected,distance=...5] run tag @s add connected
execute if entity @s[tag=pos_y] positioned ~ ~1 ~ if entity @e[type=minecraft:marker,tag=tile,tag=neg_y,tag=connected,distance=...5] run tag @s add connected
execute if entity @s[tag=neg_y] positioned ~ ~-1 ~ if entity @e[type=minecraft:marker,tag=tile,tag=pos_y,tag=connected,distance=...5] run tag @s add connected

# Returns early if there are none
execute unless entity @s[tag=connected] run return fail

# Loops on any "disconnected" neighbor tiles
execute if entity @s[tag=pos_x] positioned ~1 ~ ~ as @e[type=minecraft:marker,tag=tile,tag=neg_x,tag=!connected,distance=...5] at @s run function noodles:level/tile/spread
execute if entity @s[tag=neg_x] positioned ~-1 ~ ~ as @e[type=minecraft:marker,tag=tile,tag=pos_x,tag=!connected,distance=...5] at @s run function noodles:level/tile/spread
execute if entity @s[tag=pos_y] positioned ~ ~1 ~ as @e[type=minecraft:marker,tag=tile,tag=neg_y,tag=!connected,distance=...5] at @s run function noodles:level/tile/spread
execute if entity @s[tag=neg_y] positioned ~ ~-1 ~ as @e[type=minecraft:marker,tag=tile,tag=pos_y,tag=!connected,distance=...5] at @s run function noodles:level/tile/spread

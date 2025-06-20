## noodles:player/wand/loop.mcfunction

# Detects hitting any block
execute unless block ~ ~ ~ minecraft:air run return run execute if block ~ ~ ~ #noodles:turnable align xyz positioned ~.5 ~ ~.5 as @e[type=minecraft:marker,tag=tile,distance=...5] run function noodles:player/wand/hit

# Decrements upper limit
scoreboard players remove #temp value 1
# Returns early if reaches end of limit
execute unless score #temp value matches 1.. run return 1

# Loops
execute positioned ^ ^ ^.25 run function noodles:player/wand/loop
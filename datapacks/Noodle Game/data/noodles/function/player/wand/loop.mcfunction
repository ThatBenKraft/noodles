## noodles:player/wand/loop

# Detects hitting any block
execute unless block ~ ~ ~ minecraft:air run return run function noodles:player/wand/hit

# Decrements upper limit
scoreboard players remove #temp value 1
execute unless score #temp value matches 1.. run return run say WHIFFED

# Loops
execute positioned ^ ^ ^.5 run function noodles:player/wand/loop
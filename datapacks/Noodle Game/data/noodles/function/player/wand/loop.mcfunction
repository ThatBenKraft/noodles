## noodles:player/wand/loop.mcfunction

# Detects hitting any block
execute unless block ~ ~ ~ minecraft:air run return run execute if block ~ ~ ~ #noodles:turnable positioned ~ ~-.5 ~ as @e[type=minecraft:marker,tag=tile,limit=1,sort=nearest] at @s run function noodles:level/tile/rotate/single
# Decrements upper limit
scoreboard players remove #temp value 1
execute unless score #temp value matches 1.. run return run say WHIFFED

# Loops
execute positioned ^ ^ ^.25 run function noodles:player/wand/loop
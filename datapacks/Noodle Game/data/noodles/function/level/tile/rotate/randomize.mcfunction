## noodles:level/tile/rotate/randomize.mcfunction

# Randomly chooses number of times to rotate COUNTER-CLOCKWISE
execute if predicate noodles:tile_type/straight store result score #temp value run random value 0..1
execute unless predicate noodles:tile_type/straight store result score #temp value run random value 0..3
# Adds to number of required moves
scoreboard players operation $moves_min value += #temp value

# execute positioned ~ ~ ~-3 run function noodles:level/tile/render/connected
# execute if score #temp value matches 0 run setblock ~ ~ ~3 minecraft:white_wool
# execute if score #temp value matches 1 run setblock ~ ~ ~3 minecraft:yellow_wool
# execute if score #temp value matches 2 run setblock ~ ~ ~3 minecraft:orange_wool
# execute if score #temp value matches 3 run setblock ~ ~ ~3 minecraft:red_wool

# Rotates directions accordingly - returns prevent cross-contamination from #temp
execute if score #temp value matches 1 run return run function noodles:level/tile/rotate/counter_clockwise
execute if score #temp value matches 2 run return run function noodles:level/tile/rotate/flip
execute if score #temp value matches 3 run return run function noodles:level/tile/rotate/clockwise
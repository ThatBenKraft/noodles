## noodles:level/randomize.mcfunction

# Returns level to solved state
function noodles:level/solve

# Randomizes each tile and tallies required moves
scoreboard players set $moves value 0
scoreboard players set $moves_min value 0
execute as @e[type=minecraft:marker,tag=tile] at @s run function noodles:level/tile/rotate/randomize

# Runs spreading
function noodles:level/spread

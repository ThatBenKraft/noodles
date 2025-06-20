## noodles:level/spread.mcfunction

# Resets all connection tags
tag @e[type=minecraft:marker,tag=tile] remove connected
tag @e[type=minecraft:marker,tag=source] add connected

# Starts spreading from source/s
execute as @e[type=minecraft:marker,tag=source] at @s run function noodles:level/tile/spread

# Re-renders all tiles
function noodles:level/render
## noodles:level/render.mcfunction

# Renders tile directions to blocks
execute as @e[type=minecraft:marker,tag=tile] at @s run function noodles:level/tile/render/init

## noodles:level/render.mcfunction

# Renders tile directions to blocks
execute as @e[type=minecraft:marker,tag=tile,tag=source] at @s run function noodles:level/tile/render/source
execute as @e[type=minecraft:marker,tag=tile,tag=!source,tag=!connected] at @s run function noodles:level/tile/render/disconnected
execute as @e[type=minecraft:marker,tag=tile,tag=!source,tag=connected] at @s run function noodles:level/tile/render/connected
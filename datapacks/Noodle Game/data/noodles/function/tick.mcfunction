## noodles:tick.mcfunction

# Runs player actions
execute as @a at @s run function noodles:player/tick

# Runs source particles
execute as @e[type=minecraft:marker,tag=source] at @s run function noodles:level/particle/loop
## noodles:tick.mcfunction

# Runs player actions
execute as @a at @s run function noodles:player/tick

# Runs source particles
execute if score $particles value matches 1 as @e[type=minecraft:marker,tag=source] at @s run function noodles:level/particle/loop
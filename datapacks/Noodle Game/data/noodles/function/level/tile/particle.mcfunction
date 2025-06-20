## noodles:level/tile/particle.mcfunction

# Creates directional particles based on tags
execute if entity @s[tag=pos_x] run particle minecraft:wax_on ~.25 ~.5 ~.75 0.0625 0 0 0 5 force
execute if entity @s[tag=neg_x] run particle minecraft:wax_on ~-.25 ~.5 ~.75 0.0625 0 0 0 5 force
execute if entity @s[tag=pos_y] run particle minecraft:wax_on ~ ~.75 ~.75 0 0.0625 0 0 5 force
execute if entity @s[tag=neg_y] run particle minecraft:wax_on ~ ~.25 ~.75 0 0.0625 0 0 5 force
## noodles:level/build/source/particle/loop

# Creates directional particles based on tags
execute if entity @s[tag=pos_x] run particle minecraft:wax_on ~.25 ~.5 ~1 0.0625 0 0 0 10
execute if entity @s[tag=neg_x] run particle minecraft:wax_on ~-.25 ~.5 ~1 0.0625 0 0 0 10
execute if entity @s[tag=pos_y] run particle minecraft:wax_on ~ ~.75 ~1 0 0.0625 0 0 10
execute if entity @s[tag=neg_y] run particle minecraft:wax_on ~ ~.25 ~1 0 0.0625 0 0 10
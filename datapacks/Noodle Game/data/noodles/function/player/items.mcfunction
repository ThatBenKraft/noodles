## noodles:player/item_refresh.mcfunction

# Clears all custom items
clear @s *[custom_data~{noodles:1b}]

# Gives turning wand
give @p wooden_shovel[consumable={animation:"none",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={noodles:1b,wand:1b}] 1

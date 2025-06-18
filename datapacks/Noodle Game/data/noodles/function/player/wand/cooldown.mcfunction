## noodles:player/wand/cooldown

execute if entity @s[advancements={noodles:use_wand=false}] run return 0

# Decrements cooldown
scoreboard players remove @s cooldown 1
execute if score @s cooldown matches 1.. run return run advancement revoke @s only noodles:wand_cooldown

# Resets wand trigger
scoreboard players reset @s cooldown
advancement revoke @s only noodles:use_wand
## noodles:player/wand/activate

# Starts raycast
scoreboard players set #temp value 150
execute anchored eyes run function noodles:player/wand/loop

# Begins cooldown
scoreboard players set @s cooldown 3
advancement revoke @s only noodles:wand_cooldown
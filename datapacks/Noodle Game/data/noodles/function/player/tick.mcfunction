## noodles:player/tick.mcfunction

# Manages trigger scoreboards
scoreboard players enable @s size_x
scoreboard players enable @s size_y
execute if score @s size_x matches 1..100 run scoreboard players operation $size_x value = @s size_x
execute if score @s size_y matches 1..100 run scoreboard players operation $size_y value = @s size_y
scoreboard players set @s size_x 0
scoreboard players set @s size_y 0

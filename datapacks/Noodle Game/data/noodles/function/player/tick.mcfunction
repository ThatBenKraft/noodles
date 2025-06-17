## noodles:player/tick.mcfunction

# Manages trigger scoreboards
scoreboard players enable @s size_x
scoreboard players enable @s size_y
execute if score @s size_x matches 1..100 run scoreboard players operation $size_x value = @s size_x
execute if score @s size_y matches 1..100 run scoreboard players operation $size_y value = @s size_y
scoreboard players set @s size_x 0
scoreboard players set @s size_y 0

scoreboard players enable @s particles
execute unless score @s particles matches 0 run scoreboard players add $particles value 1
execute unless score $particles value matches 0..1 run scoreboard players set $particles value 0
scoreboard players set @s particles 0
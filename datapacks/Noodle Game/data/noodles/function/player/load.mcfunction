## noodles:player/load.mcfunction

# Sets initial trigger scores
execute unless score @s particles matches -2147483648..2147483647 run scoreboard players set @s particles 0
execute unless score @s generate matches -2147483648..2147483647 run scoreboard players set @s generate 0
execute unless score @s randomize matches -2147483648..2147483647 run scoreboard players set @s randomize 0
execute unless score @s solve matches -2147483648..2147483647 run scoreboard players set @s solve 0
## noodles:load.mcfunction

scoreboard objectives add value dummy
scoreboard objectives add timer dummy

scoreboard objectives add size_x trigger
scoreboard objectives add size_y trigger

kill @e[type=minecraft:marker,tag=level]
summon minecraft:marker 0 60 0 {Tags:["level"]}
## noodles:level/build/source/position.mcfunction

kill @e[type=minecraft:marker,tag=spread]
scoreboard players set $loops value 0
$execute positioned ~$(x) ~$(y) ~ summon minecraft:marker run function noodles:level/build/source/init

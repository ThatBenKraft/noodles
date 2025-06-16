## noodles:level/build/init.mcfunction

# Resets level blocks
fill ~ ~ ~ ~99 ~99 ~ minecraft:air
$fill ~ ~ ~ ~$(x) ~$(y) ~ minecraft:quartz_block

# Randomly positions origin source
$execute store result storage noodles:temp x int 1 run random value 0..$(x)
$execute store result storage noodles:temp y int 1 run random value 0..$(y)
function noodles:level/build/source/position with storage noodles:temp

# Assigns direction tags to sources
execute as @e[type=minecraft:marker,tag=source] run function noodles:level/build/source/particle/tag
## noodles:level/tile/render/common.mcfunction

$execute if score @s directions matches 1 run setblock ~ ~ ~ minecraft:$(end)_glazed_terracotta[facing=north]
$execute if score @s directions matches 2 run setblock ~ ~ ~ minecraft:$(end)_glazed_terracotta[facing=east]
$execute if score @s directions matches 4 run setblock ~ ~ ~ minecraft:$(end)_glazed_terracotta[facing=south]
$execute if score @s directions matches 8 run setblock ~ ~ ~ minecraft:$(end)_glazed_terracotta[facing=west]

$execute if score @s directions matches 5 run setblock ~ ~ ~ minecraft:$(straight)_glazed_terracotta[facing=north]
$execute if score @s directions matches 10 run setblock ~ ~ ~ minecraft:$(straight)_glazed_terracotta[facing=east]

$execute if score @s directions matches 3 run setblock ~ ~ ~ minecraft:$(curve)_glazed_terracotta[facing=north]
$execute if score @s directions matches 6 run setblock ~ ~ ~ minecraft:$(curve)_glazed_terracotta[facing=east]
$execute if score @s directions matches 12 run setblock ~ ~ ~ minecraft:$(curve)_glazed_terracotta[facing=south]
$execute if score @s directions matches 9 run setblock ~ ~ ~ minecraft:$(curve)_glazed_terracotta[facing=west]

$execute if score @s directions matches 7 run setblock ~ ~ ~ minecraft:$(fork)_glazed_terracotta[facing=north]
$execute if score @s directions matches 14 run setblock ~ ~ ~ minecraft:$(fork)_glazed_terracotta[facing=east]
$execute if score @s directions matches 13 run setblock ~ ~ ~ minecraft:$(fork)_glazed_terracotta[facing=south]
$execute if score @s directions matches 11 run setblock ~ ~ ~ minecraft:$(fork)_glazed_terracotta[facing=west]

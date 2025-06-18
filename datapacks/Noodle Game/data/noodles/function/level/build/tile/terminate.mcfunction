## noodles:level/build/tile/terminate

# Removes parent tag
tag @e[type=minecraft:marker,tag=tile] remove parent
# Kills and returns function failure
kill @s
return fail
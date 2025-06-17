## noodles:level/build/source/terminate

# Removes parent tag
tag @e[type=minecraft:marker,tag=source] remove parent
# Kills and returns function failure
kill @s
return fail
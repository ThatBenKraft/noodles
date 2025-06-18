## noodles:level/build/tile/parent/add.mcfunction

# Give nearest non-prospect tile parent tag
tag @e[type=minecraft:marker,tag=tile,tag=!prospect,limit=1,sort=nearest] add parent
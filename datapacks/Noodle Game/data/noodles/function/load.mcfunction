## noodles:load.mcfunction

# Adds scoreboards
scoreboard objectives add value dummy
# scoreboard objectives add timer dummy
scoreboard objectives add directions dummy
scoreboard objectives add generation dummy

scoreboard objectives add size_x trigger
scoreboard objectives add size_y trigger

# Sets gamerules
gamerule maxCommandChainLength 200000
gamerule doDaylightCycle false
time set 6000
gamerule doWeatherCycle false
gamerule doTileDrops false
gamerule commandBlockOutput false

# Resets level marker
kill @e[type=minecraft:marker,tag=level]
summon minecraft:marker 0 60 0 {Tags:["level"]}
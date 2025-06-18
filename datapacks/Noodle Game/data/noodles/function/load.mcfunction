## noodles:load.mcfunction

# Adds scoreboards
scoreboard objectives add value dummy
scoreboard objectives add directions dummy
scoreboard objectives add solve_directions dummy
scoreboard objectives add generation dummy
scoreboard objectives add cooldown dummy
# Adds triggers
scoreboard objectives add size_x trigger
scoreboard objectives add size_y trigger
scoreboard objectives add particles trigger

# Sets gamerules
gamerule maxCommandChainLength 250000
gamerule doDaylightCycle false
time set 6000
gamerule doWeatherCycle false
gamerule doTileDrops false
gamerule commandBlockOutput false
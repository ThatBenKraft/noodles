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
scoreboard objectives add generate trigger
scoreboard objectives add randomize trigger
scoreboard objectives add solve trigger

# Sets gamerules
gamerule maxCommandChainLength 250000
gamerule doDaylightCycle false
time set 6000
gamerule doWeatherCycle false
gamerule doTileDrops false
gamerule commandBlockOutput false

# Runs loading actions on players
execute as @a at @s run function noodles:player/load

# Creates data storage
data modify storage noodles:data noodle_types.source merge value {end:"lime",straight:"green",curve:"cyan",fork:"light_blue"}
data modify storage noodles:data noodle_types.connected merge value {end:"brown",straight:"red",curve:"orange",fork:"yellow"}
data modify storage noodles:data noodle_types.disconnected merge value {end:"white",straight:"light_gray",curve:"gray",fork:"black"}

## noodles:level/tile/rotate/single.mcfunction

# Increments moves
scoreboard players add $moves value 1

# Rotates scores of tiles
function noodles:level/tile/rotate/clockwise

# Assigns direction tags to tiles
execute if score $particles value matches 1 run function noodles:level/particle/tag

# Sets to blocks
execute if entity @s[tag=source] run return run function noodles:level/tile/render/source
execute if entity @s[tag=connected] run return run function noodles:level/tile/render/connected
function noodles:level/tile/render/disconnected

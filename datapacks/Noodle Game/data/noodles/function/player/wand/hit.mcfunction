## noodles:player/wand/hit.mcfunction

# Increments moves
scoreboard players add $moves value 1

# Rotates scores of tiles
function noodles:level/tile/rotate/clockwise

# Spreads
function noodles:level/spread

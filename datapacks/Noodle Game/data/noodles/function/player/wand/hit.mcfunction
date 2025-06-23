## noodles:player/wand/hit.mcfunction

# Increments moves
scoreboard players add $moves value 1

# Rotates scores of tiles
function noodles:level/tile/rotate/clockwise

# Spreads
function noodles:level/spread

# Returns early unless level won
execute unless function noodles:level/is_won run return 1
# Gives win messages
execute if score $moves value > $moves_min value run say Won!
execute if score $moves value = $moves_min value run say Won in minimum number of moves!
execute if score $moves value < $moves_min value run say Won in... fewer than minimum number of moves. ծ_Ô

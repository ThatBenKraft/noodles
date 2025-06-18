## noodles:level/tile/rotate/init.mcfunction

# Rotates scores of tiles
function noodles:level/tile/rotate/clockwise

# Sets to blocks
execute if entity @s[tag=source] run return run function noodles:level/tile/to_block/source
execute if entity @s[tag=connected] run return run function noodles:level/tile/to_block/connected
function noodles:level/tile/to_block/disconnected
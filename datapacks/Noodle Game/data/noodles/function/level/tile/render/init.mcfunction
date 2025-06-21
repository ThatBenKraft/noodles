## noodles:level/tile/render/init.mcfunction

execute if entity @s[tag=source] run function noodles:level/tile/render/common with storage noodles:data noodle_types.source
execute if entity @s[tag=!source,tag=connected] run function noodles:level/tile/render/common with storage noodles:data noodle_types.connected
execute if entity @s[tag=!source,tag=!connected] run function noodles:level/tile/render/common with storage noodles:data noodle_types.disconnected
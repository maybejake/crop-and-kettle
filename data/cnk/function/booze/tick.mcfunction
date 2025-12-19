execute if entity @s[predicate=!cnk:vehicle] as @e[type=minecraft:item_display,tag=cnk.booze_bottle,sort=nearest,limit=4] run kill @s
execute if entity @s[predicate=!cnk:vehicle] run return run kill @s
execute on vehicle at @s run function cnk:booze/on_trader
execute if entity @s[tag=cnk.cork] run return run function cnk:booze/attack/cork/tick

execute if entity @s[predicate=!cnk:vehicle] on passengers run kill @s
execute if entity @s[predicate=!cnk:vehicle] run return run kill @s
execute on vehicle at @s run function cnk:booze/on_trader
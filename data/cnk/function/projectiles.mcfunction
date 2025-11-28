execute if entity @s[tag=cnk.pumpkin_missile] on vehicle run function cnk:scarecrow/entity/missile/tick
execute if entity @s[tag=cnk.cork] run function cnk:booze/attack/cork/tick

execute if entity @s[predicate=cnk:vehicle] run return fail
execute if entity @s[tag=cnk.rotten_tomato_marker] run function cnk:produce/rotten_tomato/splat
execute if entity @s[tag=cnk.creeping_wine_marker] run function cnk:drinks/creeping_wine/effect/explode
execute if entity @s[tag=cnk.booze_bottle] run function cnk:booze/attack/bottle/cloud
advancement revoke @s only cnk:wine/consume_creeping

execute if data storage cnk:admin settings{creeping_wine_disabled:true} run return fail

scoreboard players operation $wine_time cnk.dummy = @s cnk.wine_time

execute rotated as @s anchored eyes positioned ^ ^0.1 ^0.3 summon minecraft:splash_potion run function cnk:drinks/creeping_wine/effect/on_potion
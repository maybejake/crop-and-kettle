execute on passengers if entity @s run return fail

summon minecraft:marker ~ ~ ~ {Tags:["cnk.rotten_tomato_marker","cnk.projectile","cnk.entity"]}
ride @n[type=minecraft:marker,tag=cnk.rotten_tomato_marker] mount @s

advancement grant @p[tag=cnk.rotten_tomato_throw] only cnk:visible/rotten_tomato
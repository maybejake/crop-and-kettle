playsound minecraft:entity.tnt.primed neutral @a ^ ^ ^5 1 1

data merge entity @s {Item:{id:"minecraft:poisonous_potato","components":{"minecraft:item_model":"cnk:creeping_wine"}}}

summon minecraft:marker ~ ~ ~ {Tags:["cnk.creeping_wine_marker_new","cnk.creeping_wine_marker","cnk.projectile","cnk.entity"]}
scoreboard players operation @n[type=minecraft:marker,tag=cnk.creeping_wine_marker_new,distance=..0.1] cnk.wine_time = $wine_time cnk.dummy
ride @n[type=minecraft:marker,tag=cnk.creeping_wine_marker_new,distance=..0.1] mount @s
tag @n[type=minecraft:marker,tag=cnk.creeping_wine_marker_new,distance=..0.1] remove cnk.creeping_wine_marker_new

execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 summon minecraft:marker run function cnk:drinks/creeping_wine/effect/get_motion
data modify entity @s Motion set from storage cnk:temp creeping_wine.motion
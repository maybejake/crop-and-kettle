schedule function cnk:tick_20 20t replace

tag @a[tag=cnk.feasting,predicate=!cnk:feasting] remove cnk.feasting

execute as @e[tag=!cnk.checked_villager,tag=!smithed.entity,type=minecraft:villager] run function cnk:villager/check
execute as @e[tag=!cnk.checked_trader,tag=!smithed.entity,type=minecraft:wandering_trader] run function cnk:trader/check
execute as @e[tag=cnk.shrine_marker,tag=!cnk.shrine_marker_ritual,type=minecraft:marker] at @s if entity @n[tag=cnk.meat_guide,distance=..2,type=minecraft:item] run function cnk:mystery/shrine/ritual/main
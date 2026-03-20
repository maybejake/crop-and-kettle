schedule function cnk:tick_20 20t replace

tag @a[tag=cnk.feasting,predicate=!cnk:feasting] remove cnk.feasting

execute as @e[type=minecraft:villager,tag=!cnk.checked_villager,tag=!smithed.entity] run function cnk:villager/check
execute as @e[type=minecraft:wandering_trader,tag=!cnk.checked_trader,tag=!smithed.entity] run function cnk:trader/check
execute as @e[type=minecraft:marker,tag=cnk.shrine_marker,tag=!cnk.shrine_marker_ritual] at @s if entity @n[type=minecraft:item,tag=cnk.meat_guide,distance=..2] run function cnk:mystery/shrine/ritual/main
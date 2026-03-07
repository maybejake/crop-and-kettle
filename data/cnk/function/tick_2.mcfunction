schedule function cnk:tick_2 2t replace

execute store result score $gametime cnk.dummy run time query gametime

execute at @a as @e[type=minecraft:item,tag=!cnk.checked,predicate=cnk:drop,distance=..10] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function cnk:cleanup/main

execute as @e[type=minecraft:item_display,tag=cnk.block] at @s run function cnk:blocks
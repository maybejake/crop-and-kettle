schedule function cnk:tick_2 2t replace

execute store result score $gametime cnk.dummy run time query gametime

execute as @e[tag=!cnk.checked,type=minecraft:item] run function cnk:cleanup/main

execute as @e[type=minecraft:item_display,tag=cnk.block] at @s run function cnk:blocks
execute store result score $gametime cnk.dummy run time query gametime

schedule function cnk:tick_2 2t replace

execute as @e[type=minecraft:item_display,tag=cnk.block] at @s run function cnk:blocks
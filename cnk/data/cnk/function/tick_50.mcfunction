schedule function cnk:tick_50 50t replace

execute as @e[tag=cnk.base_pumpkin,tag=cnk.ticking_crop,predicate=!cnk:pumpkin_0,type=minecraft:item_display] at @s run function cnk:crops/base_pumpkin
execute as @e[tag=cnk.base_wheat,tag=cnk.ticking_crop,predicate=!cnk:wheat_0,type=minecraft:item_display] at @s run function cnk:crops/base_wheat
execute as @e[tag=cnk.base_propagule,tag=cnk.ticking_crop,predicate=!cnk:propagule_0,type=minecraft:item_display] at @s run function cnk:crops/base_propagule

execute as @e[tag=cnk.fizz_hut_marker,type=minecraft:marker] at @s run function cnk:fizz_hut/markers
execute as @e[tag=!cnk.chef_checked,type=minecraft:vindicator] run function cnk:chef/setup
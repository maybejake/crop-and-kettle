schedule function cnk:tick_50 50t replace

# pumpkin-based crops tick faster to prevent them from turning into actual pumpkins
execute as @e[tag=cnk.base_pumpkin,tag=cnk.ticking_crop,predicate=!cnk:pumpkin_0,type=minecraft:item_display] at @s run function cnk:crops/base_pumpkin

execute as @e[tag=cnk.fizz_hut_marker,type=minecraft:marker] at @s run function cnk:fizz_hut/markers
execute as @e[tag=!cnk.chef_checked,type=minecraft:vindicator] run function cnk:chef/setup
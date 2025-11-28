scoreboard players set $scythe_check cnk.dummy 0

execute positioned ~ ~ ~ run function cnk:scythe/check_crop
execute positioned ~1 ~ ~ run function cnk:scythe/check_crop
execute positioned ~ ~ ~1 run function cnk:scythe/check_crop
execute positioned ~1 ~ ~1 run function cnk:scythe/check_crop
execute positioned ~-1 ~ ~ run function cnk:scythe/check_crop
execute positioned ~ ~ ~-1 run function cnk:scythe/check_crop
execute positioned ~-1 ~ ~-1 run function cnk:scythe/check_crop
execute positioned ~1 ~ ~-1 run function cnk:scythe/check_crop
execute positioned ~-1 ~ ~1 run function cnk:scythe/check_crop

execute if score $scythe_check cnk.dummy matches 0 run return fail

execute as @p[tag=cnk.interact_crop,predicate=cnk:scythe/either,distance=..20] at @s run function cnk:scythe/interact/player
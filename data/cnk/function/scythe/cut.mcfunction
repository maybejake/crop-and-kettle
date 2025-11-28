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

execute anchored eyes at @s run particle minecraft:sweep_attack ^ ^-0.3 ^1.2 0 0 0 0 1 force
playsound entity.player.attack.sweep neutral @a ~ ~ ~ 1 1

execute if entity @s[gamemode=creative] run return run function cnk:scythe/durability/modify
execute if entity @s[tag=cnk.scythe_mainhand] run return run function cnk:scythe/durability/mainhand/handle
execute if entity @s[tag=cnk.scythe_offhand] run return run function cnk:scythe/durability/offhand/handle
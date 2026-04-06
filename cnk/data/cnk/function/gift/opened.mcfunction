scoreboard players add @s cnk.timer 1

execute if score @s cnk.timer matches ..10 run return fail
execute on passengers run kill @s
kill @s

playsound minecraft:block.leaf_litter.break block @a ~ ~ ~ 1 2
playsound minecraft:entity.item_frame.break block @a ~ ~ ~ 1 1
particle minecraft:item{item:{id:"minecraft:paper"}} ~ ~0.3 ~ 0.3 0.3 0.3 0.1 20
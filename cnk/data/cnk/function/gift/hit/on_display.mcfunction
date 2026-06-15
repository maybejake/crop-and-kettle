execute if entity @s[tag=cnk.gift_open] run return fail

scoreboard players add @s cnk.hit_count 1
playsound minecraft:block.leaf_litter.hit block @a ~ ~ ~ 1 2
playsound minecraft:entity.item_frame.break block @a ~ ~ ~ 1 1
particle minecraft:item{item:{id:"minecraft:paper"}} ~ ~0.3 ~ 0.3 0.3 0.3 0.1 5
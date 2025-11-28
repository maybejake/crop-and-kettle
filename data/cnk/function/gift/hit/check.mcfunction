execute if score $hit_gift_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=cnk.hit_gift] run scoreboard players set $hit_gift_check cnk.dummy 1
execute if score $hit_gift_check cnk.dummy matches 1 run data remove entity @s attack
execute if score $hit_gift_check cnk.dummy matches 1 on vehicle if entity @s[tag=cnk.gift_open] run return fail
execute if score $hit_gift_check cnk.dummy matches 1 on vehicle run scoreboard players add @s cnk.hit_count 1
execute if score $hit_gift_check cnk.dummy matches 1 on vehicle at @s run playsound minecraft:block.leaf_litter.hit block @a ~ ~ ~ 1 2
execute if score $hit_gift_check cnk.dummy matches 1 on vehicle at @s run playsound minecraft:entity.item_frame.break block @a ~ ~ ~ 1 1
execute if score $hit_gift_check cnk.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:paper"}} ~ ~0.3 ~ 0.3 0.3 0.3 0.1 5
execute if score $hit_pail_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=cnk.hit_pail] run scoreboard players set $hit_pail_check cnk.dummy 1
execute if score $hit_pail_check cnk.dummy matches 1 run data remove entity @s attack
execute if score $hit_pail_check cnk.dummy matches 1 on vehicle run scoreboard players add @s cnk.hit_count 1
execute if score $hit_pail_check cnk.dummy matches 1 on vehicle at @s run playsound minecraft:block.copper.hit block @a ~ ~ ~ 1 0.7
execute if score $hit_pail_check cnk.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:barrier",components:{"minecraft:item_model":"minecraft:copper_block"}}} ~ ~0.6 ~ 0.3 0.5 0.3 0.12 10
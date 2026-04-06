execute if score $hit_mr_kettle_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=cnk.hit_mr_kettle] run scoreboard players set $hit_mr_kettle_check cnk.dummy 1
execute if score $hit_mr_kettle_check cnk.dummy matches 1 run data remove entity @s attack
execute if score $hit_mr_kettle_check cnk.dummy matches 1 on vehicle on passengers if entity @s[type=minecraft:item_display,tag=cnk.mr_kettle_item] on vehicle run return run function cnk:mr_kettle/hit/remove_last
execute if score $hit_mr_kettle_check cnk.dummy matches 1 on vehicle run scoreboard players add @s cnk.hit_count 1
execute if score $hit_mr_kettle_check cnk.dummy matches 1 on vehicle at @s run playsound cnk:item.mr_kettle.squeak block @a ~ ~ ~ 1 1
execute if score $hit_mr_kettle_check cnk.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"cnk:mr_kettle"}}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 5
execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.mr_kettle_item] on vehicle run return run function cnk:mr_kettle/hit/remove_last

scoreboard players add @s cnk.hit_count 1
playsound cnk:item.mr_kettle.squeak block @a ~ ~ ~ 1 1
particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"cnk:mr_kettle"}}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 5
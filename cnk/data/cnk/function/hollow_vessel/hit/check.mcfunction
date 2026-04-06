execute if score $hit_hollow_vessel_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=cnk.hit_hollow_vessel] run scoreboard players set $hit_hollow_vessel_check cnk.dummy 1
execute if score $hit_hollow_vessel_check cnk.dummy matches 1 run data remove entity @s attack
execute if score $hit_hollow_vessel_check cnk.dummy matches 1 on vehicle run scoreboard players add @s cnk.hit_count 1
execute if score $hit_hollow_vessel_check cnk.dummy matches 1 on vehicle at @s run playsound minecraft:block.glass.hit block @a ~ ~ ~ 1 1.3
execute if score $hit_hollow_vessel_check cnk.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:barrier",components:{"minecraft:item_model":"cnk:hollow_vessel_item"}}} ~ ~0.3 ~ 0.23 0.3 0.23 0.1 5
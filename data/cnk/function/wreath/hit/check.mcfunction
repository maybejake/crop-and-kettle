execute if score $hit_wreath_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=cnk.hit_wreath] run scoreboard players set $hit_wreath_check cnk.dummy 1
execute if score $hit_wreath_check cnk.dummy matches 1 run data remove entity @s attack
execute if score $hit_wreath_check cnk.dummy matches 1 on vehicle run scoreboard players add @s cnk.hit_count 1
execute if score $hit_wreath_check cnk.dummy matches 1 on vehicle at @s run playsound minecraft:block.azalea.hit block @a ~ ~ ~ 1 1
execute if score $hit_wreath_check cnk.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:barrier",components:{"minecraft:item_model":"cnk:wreath_item"}}} ^ ^0.5 ^-0.2 0.15 0.2 0.15 0.1 5
execute if score $hit_calendar_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=cnk.hit_calendar] run scoreboard players set $hit_calendar_check cnk.dummy 1
execute if score $hit_calendar_check cnk.dummy matches 1 run data remove entity @s attack
execute if score $hit_calendar_check cnk.dummy matches 1 on vehicle run scoreboard players add @s cnk.hit_count 1
execute if score $hit_calendar_check cnk.dummy matches 1 on vehicle at @s run playsound minecraft:entity.item_frame.remove_item block @a ~ ~ ~ 1 2
execute if score $hit_calendar_check cnk.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:barrier",components:{"minecraft:item_model":"cnk:calendar"}}} ~ ~ ~ 0.15 0.2 0.15 0.1 5
execute if score $hit_scarecrow_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=cnk.hit_scarecrow] run scoreboard players set $hit_scarecrow_check cnk.dummy 1
execute if score $hit_scarecrow_check cnk.dummy matches 1 run data remove entity @s attack
execute if score $hit_scarecrow_check cnk.dummy matches 1 on vehicle run scoreboard players add @s cnk.hit_count 1
execute if score $hit_scarecrow_check cnk.dummy matches 1 on vehicle at @s run playsound minecraft:block.grass.hit block @a ~ ~ ~ 1 2
execute if score $hit_scarecrow_check cnk.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:barrier",components:{"minecraft:item_model":"cnk:scarecrow_item"}}} ~ ~1.5 ~ 0.2 0.6 0.2 0.1 20
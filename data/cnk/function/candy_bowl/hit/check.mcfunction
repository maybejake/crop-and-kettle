execute if score $hit_candy_bowl_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=cnk.hit_candy_bowl] run scoreboard players set $hit_candy_bowl_check cnk.dummy 1
execute if score $hit_candy_bowl_check cnk.dummy matches 1 run data remove entity @s attack
execute if score $hit_candy_bowl_check cnk.dummy matches 1 on vehicle run scoreboard players add @s cnk.hit_count 1
execute if score $hit_candy_bowl_check cnk.dummy matches 1 on vehicle at @s run playsound minecraft:block.wood.hit block @a ~ ~ ~ 1 2
execute if score $hit_candy_bowl_check cnk.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:black_concrete_powder"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 5
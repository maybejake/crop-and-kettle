execute if score $hit_basin_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=cnk.hit_basin] run scoreboard players set $hit_basin_check cnk.dummy 1
execute if score $hit_basin_check cnk.dummy matches 1 run data remove entity @s attack
execute if score $hit_basin_check cnk.dummy matches 1 on vehicle run scoreboard players add @s cnk.hit_count 1
execute if score $hit_basin_check cnk.dummy matches 1 on vehicle at @s run playsound minecraft:block.iron.hit block @a ~ ~ ~ 1 2
execute if score $hit_basin_check cnk.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:cauldron"}} ~ ~ ~ 0.4 0.4 0.4 0.1 5
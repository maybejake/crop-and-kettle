execute if entity @s[tag=cnk.hollow_vessel_filled] run return fail

scoreboard players add @s cnk.hit_count 1
playsound minecraft:block.glass.hit block @a ~ ~ ~ 1 1.3
particle minecraft:item{item:{id:"minecraft:barrier",components:{"minecraft:item_model":"cnk:hollow_vessel_item"}}} ~ ~0.3 ~ 0.23 0.3 0.23 0.1 5
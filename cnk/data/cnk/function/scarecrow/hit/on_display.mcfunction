execute on target unless entity @s[tag=cnk.hit_scarecrow] run return fail

data remove entity @s attack
scoreboard players add @s cnk.hit_count 1
playsound minecraft:block.grass.hit block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:barrier",components:{"minecraft:item_model":"cnk:scarecrow_item"}}} ~ ~1.5 ~ 0.2 0.6 0.2 0.1 20
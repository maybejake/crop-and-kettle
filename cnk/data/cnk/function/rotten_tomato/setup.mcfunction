summon minecraft:marker ~ ~ ~ {Tags:["cnk.rotten_tomato","cnk.projectile","cnk.entity","cnk.fresh_marker"]}
ride @e[tag=cnk.fresh_marker,distance=..0.1,limit=1,type=minecraft:marker] mount @s
tag @e[tag=cnk.fresh_marker,distance=..0.1,limit=1,type=minecraft:marker] remove cnk.fresh_marker

execute if data entity @s Item.components."minecraft:custom_data".cnk.ingredient{type:"very_rotten_tomato"} on passengers run tag @s add cnk.very_rotten

execute on owner run advancement grant @s only cnk:visible/rotten_tomato
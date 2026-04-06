particle minecraft:small_flame ~ ~0.3 ~ 0.1 0.2 0.1 0 2

scoreboard players add @s cnk.timer 1
execute if score @s cnk.timer matches ..3 run return fail

data remove storage cnk:temp marshmallow
data modify storage cnk:temp marshmallow.type set from entity @s Item.components."minecraft:custom_data".cnk.marshmallow.type
execute store result score $count cnk.dummy run data get entity @s Item.count

playsound minecraft:entity.generic.extinguish_fire neutral @a ~ ~ ~ 1 1
particle minecraft:smoke ~ ~0.3 ~ 0.1 0.2 0.1 0 10

scoreboard players reset @s cnk.timer

execute if data storage cnk:temp marshmallow{type:"normal"} run return run loot replace entity @s contents loot cnk:drops/marshmallow/browned
execute if data storage cnk:temp marshmallow{type:"browned"} run return run loot replace entity @s contents loot cnk:drops/marshmallow/toasted
execute if data storage cnk:temp marshmallow{type:"toasted"} run return run loot replace entity @s contents loot cnk:drops/marshmallow/burnt
execute if data storage cnk:temp marshmallow{type:"burnt"} run return run loot replace entity @s contents loot cnk:drops/marshmallow/volcanic
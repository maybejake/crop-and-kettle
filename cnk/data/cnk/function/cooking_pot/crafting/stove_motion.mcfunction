execute store result score $block_rotation cnk.dummy run data get entity @s Rotation[0]
execute if score $block_rotation cnk.dummy matches -180..-135 run data modify storage cnk:temp cooking_pot.stove.motion set value [0.1, 0.07, 0.0]
execute if score $block_rotation cnk.dummy matches -135..-45 run data modify storage cnk:temp cooking_pot.stove.motion set value [0.1, 0.07, 0.0]
execute if score $block_rotation cnk.dummy matches -45..45 run data modify storage cnk:temp cooking_pot.stove.motion set value [0.0, 0.07, 0.1]
execute if score $block_rotation cnk.dummy matches 45..135 run data modify storage cnk:temp cooking_pot.stove.motion set value [-0.1, 0.07, 0.0]
execute if score $block_rotation cnk.dummy matches 135..180 run data modify storage cnk:temp cooking_pot.stove.motion set value [0.0, 0.07, -0.1]

execute positioned ~ ~0.3 ~ as @e[type=minecraft:item,dx=0] run data modify entity @s Motion set from storage cnk:temp cooking_pot.stove.motion
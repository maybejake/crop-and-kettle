execute if score @s[tag=!cnk.tomato_crop,tag=!cnk.coffee_crop,tag=!cnk.grape_crop,tag=!cnk.chili_pepper_crop] cnk.age >= @s cnk.max_age run return run scoreboard players set $bonemeal_crop_check cnk.dummy 0

function cnk:bonemeal_crop/particle/main
playsound minecraft:item.bone_meal.use block @a ~ ~ ~ 1 1

execute if score @s[tag=cnk.tomato_crop] cnk.age >= @s cnk.max_age run return run function cnk:interact_crop/tomato
execute if score @s[tag=cnk.coffee_crop] cnk.age >= @s cnk.max_age run return run function cnk:interact_crop/coffee
execute if score @s[tag=cnk.chili_pepper_crop] cnk.age >= @s cnk.max_age run return run function cnk:interact_crop/chili_pepper
execute if score @s[tag=cnk.grape_crop] cnk.age >= @s cnk.max_age run return run function cnk:interact_crop/grape

execute if entity @s[tag=cnk.chili_pepper_crop] run setblock ~ ~ ~ minecraft:pumpkin_stem[age=1] replace
execute if entity @s[tag=cnk.chili_pepper_crop] run return run function cnk:crops/chili_pepper/tick

execute if entity @s[tag=cnk.coffee_crop] run setblock ~ ~ ~ minecraft:pumpkin_stem[age=1] replace
execute if entity @s[tag=cnk.coffee_crop] run return run function cnk:crops/coffee/tick

execute if entity @s[tag=cnk.lettuce_crop] run setblock ~ ~ ~ minecraft:pumpkin_stem[age=1] replace
execute if entity @s[tag=cnk.lettuce_crop] run return run function cnk:crops/lettuce/tick

execute if entity @s[tag=cnk.rice_crop] run setblock ~ ~ ~ minecraft:mangrove_propagule[stage=1,waterlogged=true] replace
execute if entity @s[tag=cnk.rice_crop] run return run function cnk:crops/rice/tick

setblock ~ ~ ~ minecraft:wheat[age=1] replace
execute if entity @s[tag=cnk.tomato_crop] run return run function cnk:crops/tomato/tick
execute if entity @s[tag=cnk.grape_crop] run return run function cnk:crops/grape/tick
execute if entity @s[tag=cnk.corn_crop] run return run function cnk:crops/corn/tick
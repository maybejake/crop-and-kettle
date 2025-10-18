execute if score @s[tag=!cnk.tomato_crop,tag=!cnk.coffee_crop,tag=!cnk.grape_crop,tag=!cnk.chili_pepper_crop] cnk.age >= @s cnk.max_age run return run scoreboard players set $bonemeal_crop_check cnk.dummy 0

playsound minecraft:item.bone_meal.use block @a ~ ~ ~ 1 1

execute unless entity @s[tag=!cnk.tomato_crop,tag=!cnk.coffee_crop,tag=!cnk.chili_pepper_crop,tag=!cnk.grape_crop] if score @s cnk.age >= @s cnk.max_age run return run function cnk:interact_crop/switch

execute unless entity @s[tag=cnk.lettuce_crop] run function cnk:bonemeal_crop/age
execute if entity @s[tag=cnk.lettuce_crop] run function cnk:bonemeal_crop/short_age

function cnk:bonemeal_crop/particle/main

execute if entity @s[tag=cnk.chili_pepper_crop] run return run function cnk:crops/chili_pepper/tick
execute if entity @s[tag=cnk.coffee_crop] run return run function cnk:crops/coffee/tick
execute if entity @s[tag=cnk.lettuce_crop] run return run function cnk:crops/lettuce/tick
execute if entity @s[tag=cnk.rice_crop] run return run function cnk:crops/rice/tick
execute if entity @s[tag=cnk.tomato_crop] run return run function cnk:crops/tomato/tick
execute if entity @s[tag=cnk.grape_crop] run return run function cnk:crops/grape/tick
execute if entity @s[tag=cnk.corn_crop] run return run function cnk:crops/corn/tick
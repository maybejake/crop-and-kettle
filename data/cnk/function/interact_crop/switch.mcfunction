execute if entity @s[tag=cnk.tomato_crop] if score @s cnk.age >= @s cnk.max_age run return run function cnk:interact_crop/tomato
execute if entity @s[tag=cnk.coffee_crop] if score @s cnk.age >= @s cnk.max_age run return run function cnk:interact_crop/coffee
execute if entity @s[tag=cnk.chili_pepper_crop] if score @s cnk.age >= @s cnk.max_age run return run function cnk:interact_crop/chili_pepper
execute if entity @s[tag=cnk.grape_crop] if score @s cnk.age >= @s cnk.max_age run return run function cnk:interact_crop/grape
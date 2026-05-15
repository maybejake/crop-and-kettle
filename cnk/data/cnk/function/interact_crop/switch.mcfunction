execute unless score @s cnk.age >= @s cnk.max_age run return fail

scoreboard players set $interact_reward cnk.dummy 1
execute if entity @s[tag=cnk.tomato_crop] run function cnk:interact_crop/tomato
execute if entity @s[tag=cnk.coffee_crop] run function cnk:interact_crop/coffee
execute if entity @s[tag=cnk.chili_pepper_crop] run function cnk:interact_crop/chili_pepper
execute if entity @s[tag=cnk.grape_crop] run function cnk:interact_crop/grape
function #cnk:addons/interact_crop
scoreboard players reset $interact_reward cnk.dummy
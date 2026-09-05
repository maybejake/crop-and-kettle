execute unless score @s cnk.age >= @s cnk.max_age run return fail

playsound minecraft:block.crop.break block @a ~ ~0.5 ~ 1 1
scoreboard players add @p[tag=cnk.interact_crop,distance=..20] cnk.statistic.crops_harvested 1
swing @p[tag=cnk.interact_crop,distance=..20] mainhand

execute if entity @s[tag=cnk.tomato_crop] run return run function cnk:crops/tomato/interact
execute if entity @s[tag=cnk.coffee_crop] run return run function cnk:crops/coffee/interact
execute if entity @s[tag=cnk.chili_pepper_crop] run return run function cnk:crops/chili_pepper/interact
execute if entity @s[tag=cnk.grape_crop] run return run function cnk:crops/grape/interact
return run function #cnk:addons/interact_crop
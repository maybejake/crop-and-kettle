execute unless score @s cnk.age >= @s cnk.max_age run return fail

function cnk:scythe/cnk_crop/harvest

scoreboard players set $scythe_check cnk.dummy 1

execute if entity @s[tag=cnk.coffee_crop] run return run function cnk:crops/coffee/replace
execute if entity @s[tag=cnk.corn_crop] run return run function cnk:crops/corn/replace
execute if entity @s[tag=cnk.grape_crop] run return run function cnk:crops/grape/replace
execute if entity @s[tag=cnk.lettuce_crop] run return run function cnk:crops/lettuce/replace
execute if entity @s[tag=cnk.rice_crop] run return run function cnk:crops/rice/replace
execute if entity @s[tag=cnk.tomato_crop] run return run function cnk:crops/tomato/replace
execute if entity @s[tag=cnk.chili_pepper_crop] run return run function cnk:crops/chili_pepper/replace

function #cnk:addons/use_scythe
execute unless score @s cnk.age >= @s cnk.max_age run return fail

scoreboard players set $scythe_check cnk.dummy 1

execute if entity @s[tag=cnk.coffee_crop] run function cnk:crops/coffee/break
execute if entity @s[tag=cnk.coffee_crop] run return run function cnk:crops/coffee/place
execute if entity @s[tag=cnk.corn_crop] run function cnk:crops/corn/break
execute if entity @s[tag=cnk.corn_crop] run return run function cnk:crops/corn/place
execute if entity @s[tag=cnk.grape_crop] run function cnk:crops/grape/break
execute if entity @s[tag=cnk.grape_crop] run return run function cnk:crops/grape/place
execute if entity @s[tag=cnk.lettuce_crop] run function cnk:crops/lettuce/break
execute if entity @s[tag=cnk.lettuce_crop] run return run function cnk:crops/lettuce/place
execute if entity @s[tag=cnk.rice_crop] run function cnk:crops/rice/break
execute if entity @s[tag=cnk.rice_crop] run return run function cnk:crops/rice/place
execute if entity @s[tag=cnk.tomato_crop] run function cnk:crops/tomato/break
execute if entity @s[tag=cnk.tomato_crop] run return run function cnk:crops/tomato/place
execute if entity @s[tag=cnk.chili_pepper_crop] run function cnk:crops/chili_pepper/break
execute if entity @s[tag=cnk.chili_pepper_crop] run return run function cnk:crops/chili_pepper/place
execute on passengers run kill @s
setblock ~ ~ ~ minecraft:air

execute if entity @s[tag=cnk.coffee_crop] run function cnk:seeds/coffee/place
execute if entity @s[tag=cnk.corn_crop] run function cnk:seeds/corn/place
execute if entity @s[tag=cnk.grape_crop] run function cnk:seeds/grape/place
execute if entity @s[tag=cnk.lettuce_crop] run function cnk:seeds/lettuce/place
execute if entity @s[tag=cnk.rice_crop] run function cnk:seeds/rice/place
execute if entity @s[tag=cnk.tomato_crop] run function cnk:seeds/tomato/place
execute if entity @s[tag=cnk.chili_pepper_crop] run function cnk:seeds/chili_pepper/place
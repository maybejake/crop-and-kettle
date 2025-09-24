scoreboard players reset $frame_facing cnk.dummy
execute store result score $frame_facing cnk.dummy run data get entity @s Facing
execute if score $frame_facing cnk.dummy matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:composter run return run function cnk:seeds/compost
execute if score $frame_facing cnk.dummy matches 1 positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:composter run return run function cnk:seeds/compost
execute if score $frame_facing cnk.dummy matches 2 positioned ~ ~ ~1 if block ~ ~ ~ minecraft:composter run return run function cnk:seeds/compost
execute if score $frame_facing cnk.dummy matches 3 positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:composter run return run function cnk:seeds/compost
execute if score $frame_facing cnk.dummy matches 4 positioned ~1 ~ ~ if block ~ ~ ~ minecraft:composter run return run function cnk:seeds/compost
execute if score $frame_facing cnk.dummy matches 5 positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:composter run return run function cnk:seeds/compost

execute if entity @s[tag=cnk.crop_setup_tomato] run return run function cnk:seeds/tomato/place
execute if entity @s[tag=cnk.crop_setup_corn] run return run function cnk:seeds/corn/place
execute if entity @s[tag=cnk.crop_setup_lettuce] run return run function cnk:seeds/lettuce/place
execute if entity @s[tag=cnk.crop_setup_rice] run return run function cnk:seeds/rice/place
execute if entity @s[tag=cnk.crop_setup_coffee] run return run function cnk:seeds/coffee/place
execute if entity @s[tag=cnk.crop_setup_grape] run return run function cnk:seeds/grape/place
execute if entity @s[tag=cnk.crop_setup_chili_pepper] run return run function cnk:seeds/chili_pepper/place
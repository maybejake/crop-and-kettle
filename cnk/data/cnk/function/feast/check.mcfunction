advancement revoke @s only cnk:damage
execute unless entity @s[tag=cnk.feasting] run return fail

data modify storage cnk:temp feast.saturation set from entity @s active_effects[{id:"minecraft:saturation"}]
execute store result score $duration cnk.dummy run data get storage cnk:temp feast.saturation.duration
execute unless data storage cnk:temp feast.saturation.amplifier run data modify storage cnk:temp feast.saturation.amplifier set value 0b

effect clear @s minecraft:saturation

#remove 30 seconds
execute store result storage cnk:temp feast.saturation.duration int 1 run scoreboard players remove $duration cnk.dummy 600
execute if score $duration cnk.dummy matches ..0 run return run tag @s remove cnk.feasting

function cnk:feast/macro with storage cnk:temp feast.saturation
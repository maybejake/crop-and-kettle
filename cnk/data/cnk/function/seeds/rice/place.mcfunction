execute unless block ~ ~ ~ minecraft:water run return fail
execute unless block ~ ~1 ~ #cnk:air run return fail

setblock ~ ~ ~ minecraft:mangrove_propagule[stage=0,waterlogged=true] replace
setblock ~ ~1 ~ minecraft:light[level=0] replace
playsound minecraft:item.crop.plant block @a ~ ~ ~ 1 1

# summon
function cnk:seeds/rice/macro with storage cnk:temp

execute align xyz positioned ~0.5 ~ ~0.5 run scoreboard players set @n[type=minecraft:item_display,tag=cnk.rice_crop,distance=..0.1] cnk.max_age 5
execute align xyz positioned ~0.5 ~ ~0.5 run scoreboard players set @n[type=minecraft:item_display,tag=cnk.rice_crop,distance=..0.1] cnk.age 0
execute align xyz positioned ~0.5 ~ ~0.5 run scoreboard players set @n[type=minecraft:item_display,tag=cnk.rice_crop,distance=..0.1] cnk.crop_version 1

execute if entity @s[gamemode=!creative] run function cnk:seeds/remove_item with storage cnk:temp seeds
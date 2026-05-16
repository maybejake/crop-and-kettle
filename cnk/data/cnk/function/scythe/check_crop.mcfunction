execute as @n[type=minecraft:item_display,tag=cnk.crop,distance=..0.1] at @s run return run function cnk:scythe/cnk_crop/check

execute unless block ~ ~ ~ #cnk:crops run return fail

scoreboard players set $scythe_block_check cnk.dummy 0
function cnk:scythe/vanilla_crop/check

execute if score $scythe_block_check cnk.dummy matches 0 run return fail

# found valid block, continue
scoreboard players set $scythe_check cnk.dummy 1
function cnk:scythe/vanilla_crop/spawn

# increment statistic
scoreboard players add @s cnk.crops_harvested 1

gamerule block_drops false
function cnk:scythe/vanilla_crop/break
execute if score $tile_drops cnk.dummy matches 1 run gamerule block_drops true

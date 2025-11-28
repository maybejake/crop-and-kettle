execute as @n[type=minecraft:item_display,tag=cnk.crop,distance=..0.1] at @s run return run function cnk:scythe/check_cnk_crop

execute unless block ~ ~ ~ #cnk:crops run return fail

scoreboard players set $scythe_block_check cnk.dummy 0
execute if block ~ ~ ~ minecraft:beetroots[age=3] run scoreboard players add $scythe_block_check cnk.dummy 1
execute if block ~ ~ ~ minecraft:carrots[age=7] run scoreboard players add $scythe_block_check cnk.dummy 1
execute if block ~ ~ ~ minecraft:potatoes[age=7] run scoreboard players add $scythe_block_check cnk.dummy 1
execute if block ~ ~ ~ minecraft:wheat[age=7] run scoreboard players add $scythe_block_check cnk.dummy 1
execute if block ~ ~ ~ minecraft:melon run scoreboard players add $scythe_block_check cnk.dummy 1
execute if block ~ ~ ~ minecraft:pumpkin run scoreboard players add $scythe_block_check cnk.dummy 1
execute if block ~ ~ ~ minecraft:torchflower_crop[age=1] run scoreboard players add $scythe_block_check cnk.dummy 1
execute if block ~ ~ ~ minecraft:pitcher_crop[age=4] run scoreboard players add $scythe_block_check cnk.dummy 1
execute if block ~ ~ ~ minecraft:nether_wart[age=3] run scoreboard players add $scythe_block_check cnk.dummy 1

execute if score $scythe_block_check cnk.dummy matches 1.. run scoreboard players set $scythe_check cnk.dummy 1
execute if score $scythe_block_check cnk.dummy matches 1.. if entity @s[tag=cnk.scythe_mainhand] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if score $scythe_block_check cnk.dummy matches 1.. if entity @s[tag=cnk.scythe_offhand] run loot spawn ~ ~ ~ mine ~ ~ ~ offhand

gamerule doTileDrops false
execute if block ~ ~ ~ minecraft:beetroots[age=3] run setblock ~ ~ ~ minecraft:beetroots[age=0] destroy
execute if block ~ ~ ~ minecraft:carrots[age=7] run setblock ~ ~ ~ minecraft:carrots[age=0] destroy
execute if block ~ ~ ~ minecraft:potatoes[age=7] run setblock ~ ~ ~ minecraft:potatoes[age=0] destroy
execute if block ~ ~ ~ minecraft:wheat[age=7] run setblock ~ ~ ~ minecraft:wheat[age=0] destroy
execute if block ~ ~ ~ minecraft:melon run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:pumpkin run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:torchflower_crop[age=1] run setblock ~ ~ ~ minecraft:torchflower_crop[age=0] destroy
execute if block ~ ~ ~ minecraft:pitcher_crop[age=4] run setblock ~ ~ ~ minecraft:pitcher_crop[age=0] destroy
execute if block ~ ~ ~ minecraft:nether_wart[age=3] run setblock ~ ~ ~ minecraft:nether_wart[age=0] destroy
execute if score $tile_drops cnk.dummy matches 1 run gamerule doTileDrops true
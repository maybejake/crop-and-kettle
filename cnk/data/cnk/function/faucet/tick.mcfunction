execute if entity @s[tag=cnk.faucet_open_1] positioned ~ ~-1 ~ unless function cnk:faucet/check at @s run return run function cnk:faucet/close
execute if entity @s[tag=cnk.faucet_open_2] positioned ~ ~-2 ~ unless function cnk:faucet/check at @s run return run function cnk:faucet/close

scoreboard players add @s cnk.timer 1
execute if score @s[tag=cnk.faucet_open_1] cnk.timer matches 15 positioned ~ ~-1 ~ run function cnk:faucet/fill
execute if score @s[tag=cnk.faucet_open_2] cnk.timer matches 15 positioned ~ ~-2 ~ run function cnk:faucet/fill
execute if score @s cnk.timer matches 15 run scoreboard players reset @s cnk.timer

execute if block ^ ^ ^-1 #cnk:air run return run function cnk:faucet/break/break
execute unless block ~ ~ ~ #cnk:air run return run function cnk:faucet/break/break
execute if score @s cnk.hit_count matches 1.. run return run function cnk:faucet/break/check
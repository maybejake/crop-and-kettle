execute if score @s cnk.hit_count matches 1.. run function cnk:faucet/break/check
execute if block ^ ^ ^-1 #cnk:air run function cnk:faucet/break/break
execute unless block ~ ~ ~ #cnk:air run function cnk:faucet/break/break

execute if entity @s[tag=cnk.faucet_open] unless block ~ ~-1 ~ #cnk:cauldron align xyz positioned ~0.5 ~-1 ~0.5 unless function cnk:faucet/interact/pail at @s run function cnk:faucet/close
execute if entity @s[tag=cnk.faucet_open] if block ~ ~-1 ~ minecraft:water_cauldron[level=3] run function cnk:faucet/close

execute if entity @s[tag=cnk.faucet_open] run function cnk:faucet/splash

scoreboard players add @s cnk.timer 1
execute if score @s cnk.timer matches 15 if entity @s[tag=cnk.faucet_open] run function cnk:faucet/fill
execute if score @s cnk.timer matches 15 run scoreboard players reset @s cnk.timer
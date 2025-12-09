data remove entity @s interaction

execute on vehicle if entity @s[tag=cnk.faucet_closed] at @s if block ~ ~-1 ~ #cnk:cauldron unless block ~ ~-1 ~ minecraft:water_cauldron[level=3] run return run function cnk:faucet/open
execute on vehicle if entity @s[tag=cnk.faucet_open] at @s run return run function cnk:faucet/close
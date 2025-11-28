data remove entity @s interaction

execute on vehicle if entity @s[tag=cnk.faucet_closed] at @s align xyz positioned ~0.5 ~-1 ~0.5 if function cnk:faucet/interact/pail at @s run return run function cnk:faucet/open
execute on vehicle if entity @s[tag=cnk.faucet_closed] at @s if block ~ ~-1 ~ #cnk:cauldron unless block ~ ~-1 ~ minecraft:water_cauldron[level=3] run return run function cnk:faucet/open
execute on vehicle if entity @s[tag=cnk.faucet_open] at @s run return run function cnk:faucet/close
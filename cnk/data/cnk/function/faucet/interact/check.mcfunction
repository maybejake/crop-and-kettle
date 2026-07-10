execute unless block ~ ~1 ~ #minecraft:air run return fail

execute if block ~ ~ ~ #cnk:cauldron unless block ~ ~ ~ minecraft:water_cauldron[level=3] at @s run return 1
execute align xyz positioned ~0.5 ~ ~0.5 if function cnk:faucet/interact/pail at @s run return 1
return fail
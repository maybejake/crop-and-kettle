execute unless block ~ ~1 ~ #minecraft:air run return fail

execute if block ~ ~ ~ #cnk:cauldron unless block ~ ~ ~ minecraft:water_cauldron[level=3] run return run function cnk:faucet/splash
execute align xyz positioned ~0.5 ~ ~0.5 if function cnk:faucet/interact/pail run return run function cnk:faucet/splash
return fail